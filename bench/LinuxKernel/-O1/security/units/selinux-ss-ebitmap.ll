; ModuleID = 'security/selinux/ss/ebitmap.c'
source_filename = "security/selinux/ss/ebitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebitmap = type { ptr, i32 }
%struct.ebitmap_node = type { ptr, [6 x i64], i32 }
%struct.netlbl_lsm_catmap = type { i32, [4 x i64], ptr }
%struct.policy_file = type { ptr, i64 }
%struct.__una_u32 = type { i32 }

@ebitmap_node_cachep = internal global ptr null, section ".data..ro_after_init", align 8, !dbg !0
@.str = private unnamed_addr constant [78 x i8] c"\013SELinux: ebitmap: map size %u does not match my size %zd (high bit was %d)\0A\00", align 1, !dbg !29
@.str.1 = private unnamed_addr constant [35 x i8] c"\013SELinux: ebitmap: truncated map\0A\00", align 1, !dbg !35
@.str.2 = private unnamed_addr constant [79 x i8] c"\013SELinux: ebitmap start bit (%d) is not a multiple of the map unit size (%u)\0A\00", align 1, !dbg !40
@.str.3 = private unnamed_addr constant [72 x i8] c"\013SELinux: ebitmap start bit (%d) is beyond the end of the bitmap (%u)\0A\00", align 1, !dbg !45
@.str.4 = private unnamed_addr constant [35 x i8] c"\013SELinux: ebitmap: out of memory\0A\00", align 1, !dbg !50
@.str.5 = private unnamed_addr constant [59 x i8] c"\013SELinux: ebitmap: start bit %d comes after start bit %d\0A\00", align 1, !dbg !52
@.str.6 = private unnamed_addr constant [13 x i8] c"ebitmap_node\00", align 1, !dbg !57
@.str.7 = private unnamed_addr constant [30 x i8] c"security/selinux/ss/ebitmap.h\00", align 1, !dbg !62

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ebitmap_cmp(ptr noundef %e1, ptr noundef %e2) #0 align 16 !dbg !80 {
entry:
  %retval = alloca i32, align 4
  %e1.addr = alloca ptr, align 8
  %e2.addr = alloca ptr, align 8
  %n1 = alloca ptr, align 8
  %n2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %e1, ptr %e1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e1.addr, metadata !99, metadata !DIExpression()), !dbg !105
  store ptr %e2, ptr %e2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e2.addr, metadata !100, metadata !DIExpression()), !dbg !106
  call void @llvm.lifetime.start.p0(i64 8, ptr %n1) #12, !dbg !107
  call void @llvm.dbg.declare(metadata ptr %n1, metadata !101, metadata !DIExpression()), !dbg !108
  call void @llvm.lifetime.start.p0(i64 8, ptr %n2) #12, !dbg !107
  call void @llvm.dbg.declare(metadata ptr %n2, metadata !104, metadata !DIExpression()), !dbg !109
  %0 = load ptr, ptr %e1.addr, align 8, !dbg !110
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %0, i32 0, i32 1, !dbg !112
  %1 = load i32, ptr %highbit, align 8, !dbg !112
  %2 = load ptr, ptr %e2.addr, align 8, !dbg !113
  %highbit1 = getelementptr inbounds %struct.ebitmap, ptr %2, i32 0, i32 1, !dbg !114
  %3 = load i32, ptr %highbit1, align 8, !dbg !114
  %cmp = icmp ne i32 %1, %3, !dbg !115
  br i1 %cmp, label %if.then, label %if.end, !dbg !116

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !117
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !117

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %e1.addr, align 8, !dbg !118
  %node = getelementptr inbounds %struct.ebitmap, ptr %4, i32 0, i32 0, !dbg !119
  %5 = load ptr, ptr %node, align 8, !dbg !119
  store ptr %5, ptr %n1, align 8, !dbg !120
  %6 = load ptr, ptr %e2.addr, align 8, !dbg !121
  %node2 = getelementptr inbounds %struct.ebitmap, ptr %6, i32 0, i32 0, !dbg !122
  %7 = load ptr, ptr %node2, align 8, !dbg !122
  store ptr %7, ptr %n2, align 8, !dbg !123
  br label %while.cond, !dbg !124

while.cond:                                       ; preds = %while.body, %if.end
  %8 = load ptr, ptr %n1, align 8, !dbg !125
  %tobool = icmp ne ptr %8, null, !dbg !125
  br i1 %tobool, label %land.lhs.true, label %land.end, !dbg !126

land.lhs.true:                                    ; preds = %while.cond
  %9 = load ptr, ptr %n2, align 8, !dbg !127
  %tobool3 = icmp ne ptr %9, null, !dbg !127
  br i1 %tobool3, label %land.lhs.true4, label %land.end, !dbg !128

land.lhs.true4:                                   ; preds = %land.lhs.true
  %10 = load ptr, ptr %n1, align 8, !dbg !129
  %startbit = getelementptr inbounds %struct.ebitmap_node, ptr %10, i32 0, i32 2, !dbg !130
  %11 = load i32, ptr %startbit, align 8, !dbg !130
  %12 = load ptr, ptr %n2, align 8, !dbg !131
  %startbit5 = getelementptr inbounds %struct.ebitmap_node, ptr %12, i32 0, i32 2, !dbg !132
  %13 = load i32, ptr %startbit5, align 8, !dbg !132
  %cmp6 = icmp eq i32 %11, %13, !dbg !133
  br i1 %cmp6, label %land.rhs, label %land.end, !dbg !134

land.rhs:                                         ; preds = %land.lhs.true4
  %14 = load ptr, ptr %n1, align 8, !dbg !135
  %maps = getelementptr inbounds %struct.ebitmap_node, ptr %14, i32 0, i32 1, !dbg !136
  %arraydecay = getelementptr inbounds [6 x i64], ptr %maps, i64 0, i64 0, !dbg !135
  %15 = load ptr, ptr %n2, align 8, !dbg !137
  %maps7 = getelementptr inbounds %struct.ebitmap_node, ptr %15, i32 0, i32 1, !dbg !138
  %arraydecay8 = getelementptr inbounds [6 x i64], ptr %maps7, i64 0, i64 0, !dbg !137
  %call = call i32 @memcmp(ptr noundef %arraydecay, ptr noundef %arraydecay8, i64 noundef 48) #13, !dbg !139
  %tobool9 = icmp ne i32 %call, 0, !dbg !140
  %lnot = xor i1 %tobool9, true, !dbg !140
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true4, %land.lhs.true, %while.cond
  %16 = phi i1 [ false, %land.lhs.true4 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %land.rhs ], !dbg !141
  br i1 %16, label %while.body, label %while.end, !dbg !124

while.body:                                       ; preds = %land.end
  %17 = load ptr, ptr %n1, align 8, !dbg !142
  %next = getelementptr inbounds %struct.ebitmap_node, ptr %17, i32 0, i32 0, !dbg !144
  %18 = load ptr, ptr %next, align 8, !dbg !144
  store ptr %18, ptr %n1, align 8, !dbg !145
  %19 = load ptr, ptr %n2, align 8, !dbg !146
  %next10 = getelementptr inbounds %struct.ebitmap_node, ptr %19, i32 0, i32 0, !dbg !147
  %20 = load ptr, ptr %next10, align 8, !dbg !147
  store ptr %20, ptr %n2, align 8, !dbg !148
  br label %while.cond, !dbg !124, !llvm.loop !149

while.end:                                        ; preds = %land.end
  %21 = load ptr, ptr %n1, align 8, !dbg !153
  %tobool11 = icmp ne ptr %21, null, !dbg !153
  br i1 %tobool11, label %if.then13, label %lor.lhs.false, !dbg !155

lor.lhs.false:                                    ; preds = %while.end
  %22 = load ptr, ptr %n2, align 8, !dbg !156
  %tobool12 = icmp ne ptr %22, null, !dbg !156
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !157

if.then13:                                        ; preds = %lor.lhs.false, %while.end
  store i32 0, ptr %retval, align 4, !dbg !158
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !158

if.end14:                                         ; preds = %lor.lhs.false
  store i32 1, ptr %retval, align 4, !dbg !159
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !159

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n2) #12, !dbg !160
  call void @llvm.lifetime.end.p0(i64 8, ptr %n1) #12, !dbg !160
  %23 = load i32, ptr %retval, align 4, !dbg !160
  ret i32 %23, !dbg !160
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !161 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ebitmap_cpy(ptr noundef %dst, ptr noundef %src) #0 align 16 !dbg !170 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %n = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !175, metadata !DIExpression()), !dbg !180
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !176, metadata !DIExpression()), !dbg !181
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #12, !dbg !182
  call void @llvm.dbg.declare(metadata ptr %new, metadata !177, metadata !DIExpression()), !dbg !183
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #12, !dbg !182
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !178, metadata !DIExpression()), !dbg !184
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #12, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %n, metadata !179, metadata !DIExpression()), !dbg !186
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !187
  call void @ebitmap_init(ptr noundef %0) #13, !dbg !188
  %1 = load ptr, ptr %src.addr, align 8, !dbg !189
  %node = getelementptr inbounds %struct.ebitmap, ptr %1, i32 0, i32 0, !dbg !190
  %2 = load ptr, ptr %node, align 8, !dbg !190
  store ptr %2, ptr %n, align 8, !dbg !191
  store ptr null, ptr %prev, align 8, !dbg !192
  br label %while.cond, !dbg !193

while.cond:                                       ; preds = %if.end9, %entry
  %3 = load ptr, ptr %n, align 8, !dbg !194
  %tobool = icmp ne ptr %3, null, !dbg !193
  br i1 %tobool, label %while.body, label %while.end, !dbg !193

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr @ebitmap_node_cachep, align 8, !dbg !195
  %call = call ptr @kmem_cache_zalloc(ptr noundef %4, i32 noundef 2080) #13, !dbg !197
  store ptr %call, ptr %new, align 8, !dbg !198
  %5 = load ptr, ptr %new, align 8, !dbg !199
  %tobool1 = icmp ne ptr %5, null, !dbg !199
  br i1 %tobool1, label %if.end, label %if.then, !dbg !201

if.then:                                          ; preds = %while.body
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !202
  call void @ebitmap_destroy(ptr noundef %6) #13, !dbg !204
  store i32 -12, ptr %retval, align 4, !dbg !205
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !205

if.end:                                           ; preds = %while.body
  %7 = load ptr, ptr %n, align 8, !dbg !206
  %startbit = getelementptr inbounds %struct.ebitmap_node, ptr %7, i32 0, i32 2, !dbg !207
  %8 = load i32, ptr %startbit, align 8, !dbg !207
  %9 = load ptr, ptr %new, align 8, !dbg !208
  %startbit2 = getelementptr inbounds %struct.ebitmap_node, ptr %9, i32 0, i32 2, !dbg !209
  store i32 %8, ptr %startbit2, align 8, !dbg !210
  %10 = load ptr, ptr %new, align 8, !dbg !211
  %maps = getelementptr inbounds %struct.ebitmap_node, ptr %10, i32 0, i32 1, !dbg !212
  %arraydecay = getelementptr inbounds [6 x i64], ptr %maps, i64 0, i64 0, !dbg !213
  %11 = load ptr, ptr %n, align 8, !dbg !214
  %maps3 = getelementptr inbounds %struct.ebitmap_node, ptr %11, i32 0, i32 1, !dbg !215
  %arraydecay4 = getelementptr inbounds [6 x i64], ptr %maps3, i64 0, i64 0, !dbg !213
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay, ptr align 8 %arraydecay4, i64 48, i1 false), !dbg !213
  %12 = load ptr, ptr %new, align 8, !dbg !216
  %next = getelementptr inbounds %struct.ebitmap_node, ptr %12, i32 0, i32 0, !dbg !217
  store ptr null, ptr %next, align 8, !dbg !218
  %13 = load ptr, ptr %prev, align 8, !dbg !219
  %tobool5 = icmp ne ptr %13, null, !dbg !219
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !221

if.then6:                                         ; preds = %if.end
  %14 = load ptr, ptr %new, align 8, !dbg !222
  %15 = load ptr, ptr %prev, align 8, !dbg !223
  %next7 = getelementptr inbounds %struct.ebitmap_node, ptr %15, i32 0, i32 0, !dbg !224
  store ptr %14, ptr %next7, align 8, !dbg !225
  br label %if.end9, !dbg !223

if.else:                                          ; preds = %if.end
  %16 = load ptr, ptr %new, align 8, !dbg !226
  %17 = load ptr, ptr %dst.addr, align 8, !dbg !227
  %node8 = getelementptr inbounds %struct.ebitmap, ptr %17, i32 0, i32 0, !dbg !228
  store ptr %16, ptr %node8, align 8, !dbg !229
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %18 = load ptr, ptr %new, align 8, !dbg !230
  store ptr %18, ptr %prev, align 8, !dbg !231
  %19 = load ptr, ptr %n, align 8, !dbg !232
  %next10 = getelementptr inbounds %struct.ebitmap_node, ptr %19, i32 0, i32 0, !dbg !233
  %20 = load ptr, ptr %next10, align 8, !dbg !233
  store ptr %20, ptr %n, align 8, !dbg !234
  br label %while.cond, !dbg !193, !llvm.loop !235

while.end:                                        ; preds = %while.cond
  %21 = load ptr, ptr %src.addr, align 8, !dbg !237
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %21, i32 0, i32 1, !dbg !238
  %22 = load i32, ptr %highbit, align 8, !dbg !238
  %23 = load ptr, ptr %dst.addr, align 8, !dbg !239
  %highbit11 = getelementptr inbounds %struct.ebitmap, ptr %23, i32 0, i32 1, !dbg !240
  store i32 %22, ptr %highbit11, align 8, !dbg !241
  store i32 0, ptr %retval, align 4, !dbg !242
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !242

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #12, !dbg !243
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #12, !dbg !243
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #12, !dbg !243
  %24 = load i32, ptr %retval, align 4, !dbg !243
  ret i32 %24, !dbg !243
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ebitmap_init(ptr noundef %e) #4 align 16 !dbg !244 {
entry:
  %e.addr = alloca ptr, align 8
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !248, metadata !DIExpression()), !dbg !249
  %0 = load ptr, ptr %e.addr, align 8, !dbg !250
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 16, i1 false), !dbg !251
  ret void, !dbg !252
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmem_cache_zalloc(ptr noundef %k, i32 noundef %flags) #4 align 16 !dbg !253 {
entry:
  %k.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !258, metadata !DIExpression()), !dbg !260
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !259, metadata !DIExpression()), !dbg !261
  %0 = load ptr, ptr %k.addr, align 8, !dbg !262
  %1 = load i32, ptr %flags.addr, align 4, !dbg !263
  %or = or i32 %1, 256, !dbg !264
  %call = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef %or) #13, !dbg !265
  ret ptr %call, !dbg !266
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ebitmap_destroy(ptr noundef %e) #0 align 16 !dbg !267 {
entry:
  %e.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  %temp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !269, metadata !DIExpression()), !dbg !272
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #12, !dbg !273
  call void @llvm.dbg.declare(metadata ptr %n, metadata !270, metadata !DIExpression()), !dbg !274
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #12, !dbg !273
  call void @llvm.dbg.declare(metadata ptr %temp, metadata !271, metadata !DIExpression()), !dbg !275
  %0 = load ptr, ptr %e.addr, align 8, !dbg !276
  %tobool = icmp ne ptr %0, null, !dbg !276
  br i1 %tobool, label %if.end, label %if.then, !dbg !278

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !279

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %e.addr, align 8, !dbg !280
  %node = getelementptr inbounds %struct.ebitmap, ptr %1, i32 0, i32 0, !dbg !281
  %2 = load ptr, ptr %node, align 8, !dbg !281
  store ptr %2, ptr %n, align 8, !dbg !282
  br label %while.cond, !dbg !283

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load ptr, ptr %n, align 8, !dbg !284
  %tobool1 = icmp ne ptr %3, null, !dbg !283
  br i1 %tobool1, label %while.body, label %while.end, !dbg !283

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %n, align 8, !dbg !285
  store ptr %4, ptr %temp, align 8, !dbg !287
  %5 = load ptr, ptr %n, align 8, !dbg !288
  %next = getelementptr inbounds %struct.ebitmap_node, ptr %5, i32 0, i32 0, !dbg !289
  %6 = load ptr, ptr %next, align 8, !dbg !289
  store ptr %6, ptr %n, align 8, !dbg !290
  %7 = load ptr, ptr @ebitmap_node_cachep, align 8, !dbg !291
  %8 = load ptr, ptr %temp, align 8, !dbg !292
  call void @kmem_cache_free(ptr noundef %7, ptr noundef %8) #13, !dbg !293
  br label %while.cond, !dbg !283, !llvm.loop !294

while.end:                                        ; preds = %while.cond
  %9 = load ptr, ptr %e.addr, align 8, !dbg !296
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %9, i32 0, i32 1, !dbg !297
  store i32 0, ptr %highbit, align 8, !dbg !298
  %10 = load ptr, ptr %e.addr, align 8, !dbg !299
  %node2 = getelementptr inbounds %struct.ebitmap, ptr %10, i32 0, i32 0, !dbg !300
  store ptr null, ptr %node2, align 8, !dbg !301
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !302
  br label %cleanup, !dbg !302

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #12, !dbg !302
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #12, !dbg !302
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !302

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ebitmap_and(ptr noundef %dst, ptr noundef %e1, ptr noundef %e2) #0 align 16 !dbg !303 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca ptr, align 8
  %e1.addr = alloca ptr, align 8
  %e2.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  %bit = alloca i32, align 4
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !307, metadata !DIExpression()), !dbg !313
  store ptr %e1, ptr %e1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e1.addr, metadata !308, metadata !DIExpression()), !dbg !314
  store ptr %e2, ptr %e2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e2.addr, metadata !309, metadata !DIExpression()), !dbg !315
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #12, !dbg !316
  call void @llvm.dbg.declare(metadata ptr %n, metadata !310, metadata !DIExpression()), !dbg !317
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit) #12, !dbg !318
  call void @llvm.dbg.declare(metadata ptr %bit, metadata !311, metadata !DIExpression()), !dbg !319
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #12, !dbg !318
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !312, metadata !DIExpression()), !dbg !320
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !321
  call void @ebitmap_init(ptr noundef %0) #13, !dbg !322
  %1 = load ptr, ptr %e1.addr, align 8, !dbg !323
  %call = call i32 @ebitmap_start_positive(ptr noundef %1, ptr noundef %n) #13, !dbg !323
  store i32 %call, ptr %bit, align 4, !dbg !323
  br label %for.cond, !dbg !323

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %bit, align 4, !dbg !325
  %3 = load ptr, ptr %e1.addr, align 8, !dbg !325
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %3, i32 0, i32 1, !dbg !325
  %4 = load i32, ptr %highbit, align 8, !dbg !325
  %cmp = icmp ult i32 %2, %4, !dbg !325
  br i1 %cmp, label %for.body, label %for.end, !dbg !323

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %e2.addr, align 8, !dbg !327
  %6 = load i32, ptr %bit, align 4, !dbg !330
  %conv = sext i32 %6 to i64, !dbg !330
  %call1 = call i32 @ebitmap_get_bit(ptr noundef %5, i64 noundef %conv) #13, !dbg !331
  %tobool = icmp ne i32 %call1, 0, !dbg !331
  br i1 %tobool, label %if.then, label %if.end7, !dbg !332

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %dst.addr, align 8, !dbg !333
  %8 = load i32, ptr %bit, align 4, !dbg !335
  %conv2 = sext i32 %8 to i64, !dbg !335
  %call3 = call i32 @ebitmap_set_bit(ptr noundef %7, i64 noundef %conv2, i32 noundef 1) #13, !dbg !336
  store i32 %call3, ptr %rc, align 4, !dbg !337
  %9 = load i32, ptr %rc, align 4, !dbg !338
  %cmp4 = icmp slt i32 %9, 0, !dbg !340
  br i1 %cmp4, label %if.then6, label %if.end, !dbg !341

if.then6:                                         ; preds = %if.then
  %10 = load i32, ptr %rc, align 4, !dbg !342
  store i32 %10, ptr %retval, align 4, !dbg !343
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !343

if.end:                                           ; preds = %if.then
  br label %if.end7, !dbg !344

if.end7:                                          ; preds = %if.end, %for.body
  br label %for.inc, !dbg !345

for.inc:                                          ; preds = %if.end7
  %11 = load ptr, ptr %e1.addr, align 8, !dbg !325
  %12 = load i32, ptr %bit, align 4, !dbg !325
  %call8 = call i32 @ebitmap_next_positive(ptr noundef %11, ptr noundef %n, i32 noundef %12) #13, !dbg !325
  store i32 %call8, ptr %bit, align 4, !dbg !325
  br label %for.cond, !dbg !325, !llvm.loop !346

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !348
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !348

cleanup:                                          ; preds = %for.end, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #12, !dbg !349
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit) #12, !dbg !349
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #12, !dbg !349
  %13 = load i32, ptr %retval, align 4, !dbg !349
  ret i32 %13, !dbg !349
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ebitmap_start_positive(ptr noundef %e, ptr noundef %n) #4 align 16 !dbg !350 {
entry:
  %retval = alloca i32, align 4
  %e.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %ofs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !355, metadata !DIExpression()), !dbg !358
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !356, metadata !DIExpression()), !dbg !359
  call void @llvm.lifetime.start.p0(i64 4, ptr %ofs) #12, !dbg !360
  call void @llvm.dbg.declare(metadata ptr %ofs, metadata !357, metadata !DIExpression()), !dbg !361
  %0 = load ptr, ptr %e.addr, align 8, !dbg !362
  %node = getelementptr inbounds %struct.ebitmap, ptr %0, i32 0, i32 0, !dbg !364
  %1 = load ptr, ptr %node, align 8, !dbg !364
  %2 = load ptr, ptr %n.addr, align 8, !dbg !365
  store ptr %1, ptr %2, align 8, !dbg !366
  br label %for.cond, !dbg !367

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %n.addr, align 8, !dbg !368
  %4 = load ptr, ptr %3, align 8, !dbg !370
  %tobool = icmp ne ptr %4, null, !dbg !371
  br i1 %tobool, label %for.body, label %for.end, !dbg !371

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %n.addr, align 8, !dbg !372
  %6 = load ptr, ptr %5, align 8, !dbg !374
  %maps = getelementptr inbounds %struct.ebitmap_node, ptr %6, i32 0, i32 1, !dbg !375
  %arraydecay = getelementptr inbounds [6 x i64], ptr %maps, i64 0, i64 0, !dbg !376
  %call = call i64 @find_first_bit(ptr noundef %arraydecay, i64 noundef 384) #13, !dbg !377
  %conv = trunc i64 %call to i32, !dbg !377
  store i32 %conv, ptr %ofs, align 4, !dbg !378
  %7 = load i32, ptr %ofs, align 4, !dbg !379
  %conv1 = zext i32 %7 to i64, !dbg !379
  %cmp = icmp ult i64 %conv1, 384, !dbg !381
  br i1 %cmp, label %if.then, label %if.end, !dbg !382

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %n.addr, align 8, !dbg !383
  %9 = load ptr, ptr %8, align 8, !dbg !384
  %startbit = getelementptr inbounds %struct.ebitmap_node, ptr %9, i32 0, i32 2, !dbg !385
  %10 = load i32, ptr %startbit, align 8, !dbg !385
  %11 = load i32, ptr %ofs, align 4, !dbg !386
  %add = add i32 %10, %11, !dbg !387
  store i32 %add, ptr %retval, align 4, !dbg !388
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !388

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !389

for.inc:                                          ; preds = %if.end
  %12 = load ptr, ptr %n.addr, align 8, !dbg !390
  %13 = load ptr, ptr %12, align 8, !dbg !391
  %next = getelementptr inbounds %struct.ebitmap_node, ptr %13, i32 0, i32 0, !dbg !392
  %14 = load ptr, ptr %next, align 8, !dbg !392
  %15 = load ptr, ptr %n.addr, align 8, !dbg !393
  store ptr %14, ptr %15, align 8, !dbg !394
  br label %for.cond, !dbg !395, !llvm.loop !396

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %e.addr, align 8, !dbg !398
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %16, i32 0, i32 1, !dbg !398
  %17 = load i32, ptr %highbit, align 8, !dbg !398
  store i32 %17, ptr %retval, align 4, !dbg !399
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !399

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ofs) #12, !dbg !400
  %18 = load i32, ptr %retval, align 4, !dbg !400
  ret i32 %18, !dbg !400
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ebitmap_get_bit(ptr noundef %e, i64 noundef %bit) #0 align 16 !dbg !401 {
entry:
  %retval = alloca i32, align 4
  %e.addr = alloca ptr, align 8
  %bit.addr = alloca i64, align 8
  %n = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !405, metadata !DIExpression()), !dbg !408
  store i64 %bit, ptr %bit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !406, metadata !DIExpression()), !dbg !409
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #12, !dbg !410
  call void @llvm.dbg.declare(metadata ptr %n, metadata !407, metadata !DIExpression()), !dbg !411
  %0 = load ptr, ptr %e.addr, align 8, !dbg !412
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %0, i32 0, i32 1, !dbg !414
  %1 = load i32, ptr %highbit, align 8, !dbg !414
  %conv = zext i32 %1 to i64, !dbg !412
  %2 = load i64, ptr %bit.addr, align 8, !dbg !415
  %cmp = icmp ult i64 %conv, %2, !dbg !416
  br i1 %cmp, label %if.then, label %if.end, !dbg !417

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !418
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !418

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %e.addr, align 8, !dbg !419
  %node = getelementptr inbounds %struct.ebitmap, ptr %3, i32 0, i32 0, !dbg !420
  %4 = load ptr, ptr %node, align 8, !dbg !420
  store ptr %4, ptr %n, align 8, !dbg !421
  br label %while.cond, !dbg !422

while.cond:                                       ; preds = %if.end11, %if.end
  %5 = load ptr, ptr %n, align 8, !dbg !423
  %tobool = icmp ne ptr %5, null, !dbg !423
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !424

land.rhs:                                         ; preds = %while.cond
  %6 = load ptr, ptr %n, align 8, !dbg !425
  %startbit = getelementptr inbounds %struct.ebitmap_node, ptr %6, i32 0, i32 2, !dbg !426
  %7 = load i32, ptr %startbit, align 8, !dbg !426
  %conv2 = zext i32 %7 to i64, !dbg !425
  %8 = load i64, ptr %bit.addr, align 8, !dbg !427
  %cmp3 = icmp ule i64 %conv2, %8, !dbg !428
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ], !dbg !429
  br i1 %9, label %while.body, label %while.end, !dbg !422

while.body:                                       ; preds = %land.end
  %10 = load ptr, ptr %n, align 8, !dbg !430
  %startbit5 = getelementptr inbounds %struct.ebitmap_node, ptr %10, i32 0, i32 2, !dbg !433
  %11 = load i32, ptr %startbit5, align 8, !dbg !433
  %conv6 = zext i32 %11 to i64, !dbg !430
  %add = add i64 %conv6, 384, !dbg !434
  %12 = load i64, ptr %bit.addr, align 8, !dbg !435
  %cmp7 = icmp ugt i64 %add, %12, !dbg !436
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !437

if.then9:                                         ; preds = %while.body
  %13 = load ptr, ptr %n, align 8, !dbg !438
  %14 = load i64, ptr %bit.addr, align 8, !dbg !439
  %conv10 = trunc i64 %14 to i32, !dbg !439
  %call = call i32 @ebitmap_node_get_bit(ptr noundef %13, i32 noundef %conv10) #13, !dbg !440
  store i32 %call, ptr %retval, align 4, !dbg !441
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !441

if.end11:                                         ; preds = %while.body
  %15 = load ptr, ptr %n, align 8, !dbg !442
  %next = getelementptr inbounds %struct.ebitmap_node, ptr %15, i32 0, i32 0, !dbg !443
  %16 = load ptr, ptr %next, align 8, !dbg !443
  store ptr %16, ptr %n, align 8, !dbg !444
  br label %while.cond, !dbg !422, !llvm.loop !445

while.end:                                        ; preds = %land.end
  store i32 0, ptr %retval, align 4, !dbg !447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !447

cleanup:                                          ; preds = %while.end, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #12, !dbg !448
  %17 = load i32, ptr %retval, align 4, !dbg !448
  ret i32 %17, !dbg !448
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ebitmap_set_bit(ptr noundef %e, i64 noundef %bit, i32 noundef %value) #0 align 16 !dbg !449 {
entry:
  %retval = alloca i32, align 4
  %e.addr = alloca ptr, align 8
  %bit.addr = alloca i64, align 8
  %value.addr = alloca i32, align 4
  %n = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %new = alloca ptr, align 8
  %s = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !453, metadata !DIExpression()), !dbg !465
  store i64 %bit, ptr %bit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !454, metadata !DIExpression()), !dbg !466
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !455, metadata !DIExpression()), !dbg !467
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #12, !dbg !468
  call void @llvm.dbg.declare(metadata ptr %n, metadata !456, metadata !DIExpression()), !dbg !469
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #12, !dbg !468
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !457, metadata !DIExpression()), !dbg !470
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #12, !dbg !468
  call void @llvm.dbg.declare(metadata ptr %new, metadata !458, metadata !DIExpression()), !dbg !471
  store ptr null, ptr %prev, align 8, !dbg !472
  %0 = load ptr, ptr %e.addr, align 8, !dbg !473
  %node = getelementptr inbounds %struct.ebitmap, ptr %0, i32 0, i32 0, !dbg !474
  %1 = load ptr, ptr %node, align 8, !dbg !474
  store ptr %1, ptr %n, align 8, !dbg !475
  br label %while.cond, !dbg !476

while.cond:                                       ; preds = %if.end36, %entry
  %2 = load ptr, ptr %n, align 8, !dbg !477
  %tobool = icmp ne ptr %2, null, !dbg !477
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !478

land.rhs:                                         ; preds = %while.cond
  %3 = load ptr, ptr %n, align 8, !dbg !479
  %startbit = getelementptr inbounds %struct.ebitmap_node, ptr %3, i32 0, i32 2, !dbg !480
  %4 = load i32, ptr %startbit, align 8, !dbg !480
  %conv = zext i32 %4 to i64, !dbg !479
  %5 = load i64, ptr %bit.addr, align 8, !dbg !481
  %cmp = icmp ule i64 %conv, %5, !dbg !482
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !483
  br i1 %6, label %while.body, label %while.end, !dbg !476

while.body:                                       ; preds = %land.end
  %7 = load ptr, ptr %n, align 8, !dbg !484
  %startbit2 = getelementptr inbounds %struct.ebitmap_node, ptr %7, i32 0, i32 2, !dbg !485
  %8 = load i32, ptr %startbit2, align 8, !dbg !485
  %conv3 = zext i32 %8 to i64, !dbg !484
  %add = add i64 %conv3, 384, !dbg !486
  %9 = load i64, ptr %bit.addr, align 8, !dbg !487
  %cmp4 = icmp ugt i64 %add, %9, !dbg !488
  br i1 %cmp4, label %if.then, label %if.end36, !dbg !489

if.then:                                          ; preds = %while.body
  %10 = load i32, ptr %value.addr, align 4, !dbg !490
  %tobool6 = icmp ne i32 %10, 0, !dbg !490
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !491

if.then7:                                         ; preds = %if.then
  %11 = load ptr, ptr %n, align 8, !dbg !492
  %12 = load i64, ptr %bit.addr, align 8, !dbg !494
  %conv8 = trunc i64 %12 to i32, !dbg !494
  call void @ebitmap_node_set_bit(ptr noundef %11, i32 noundef %conv8) #13, !dbg !495
  br label %if.end35, !dbg !496

if.else:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #12, !dbg !497
  call void @llvm.dbg.declare(metadata ptr %s, metadata !459, metadata !DIExpression()), !dbg !498
  %13 = load ptr, ptr %n, align 8, !dbg !499
  %14 = load i64, ptr %bit.addr, align 8, !dbg !500
  %conv9 = trunc i64 %14 to i32, !dbg !500
  call void @ebitmap_node_clr_bit(ptr noundef %13, i32 noundef %conv9) #13, !dbg !501
  %15 = load ptr, ptr %n, align 8, !dbg !502
  %maps = getelementptr inbounds %struct.ebitmap_node, ptr %15, i32 0, i32 1, !dbg !503
  %arraydecay = getelementptr inbounds [6 x i64], ptr %maps, i64 0, i64 0, !dbg !502
  %call = call i64 @find_first_bit(ptr noundef %arraydecay, i64 noundef 384) #13, !dbg !504
  %conv10 = trunc i64 %call to i32, !dbg !504
  store i32 %conv10, ptr %s, align 4, !dbg !505
  %16 = load i32, ptr %s, align 4, !dbg !506
  %conv11 = zext i32 %16 to i64, !dbg !506
  %cmp12 = icmp ult i64 %conv11, 384, !dbg !508
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !509

if.then14:                                        ; preds = %if.else
  store i32 0, ptr %retval, align 4, !dbg !510
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !510

if.end:                                           ; preds = %if.else
  %17 = load ptr, ptr %n, align 8, !dbg !511
  %next = getelementptr inbounds %struct.ebitmap_node, ptr %17, i32 0, i32 0, !dbg !513
  %18 = load ptr, ptr %next, align 8, !dbg !513
  %tobool15 = icmp ne ptr %18, null, !dbg !511
  br i1 %tobool15, label %if.end26, label %if.then16, !dbg !514

if.then16:                                        ; preds = %if.end
  %19 = load ptr, ptr %prev, align 8, !dbg !515
  %tobool17 = icmp ne ptr %19, null, !dbg !515
  br i1 %tobool17, label %if.then18, label %if.else23, !dbg !518

if.then18:                                        ; preds = %if.then16
  %20 = load ptr, ptr %prev, align 8, !dbg !519
  %startbit19 = getelementptr inbounds %struct.ebitmap_node, ptr %20, i32 0, i32 2, !dbg !520
  %21 = load i32, ptr %startbit19, align 8, !dbg !520
  %conv20 = zext i32 %21 to i64, !dbg !519
  %add21 = add i64 %conv20, 384, !dbg !521
  %conv22 = trunc i64 %add21 to i32, !dbg !519
  %22 = load ptr, ptr %e.addr, align 8, !dbg !522
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %22, i32 0, i32 1, !dbg !523
  store i32 %conv22, ptr %highbit, align 8, !dbg !524
  br label %if.end25, !dbg !522

if.else23:                                        ; preds = %if.then16
  %23 = load ptr, ptr %e.addr, align 8, !dbg !525
  %highbit24 = getelementptr inbounds %struct.ebitmap, ptr %23, i32 0, i32 1, !dbg !526
  store i32 0, ptr %highbit24, align 8, !dbg !527
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.then18
  br label %if.end26, !dbg !528

if.end26:                                         ; preds = %if.end25, %if.end
  %24 = load ptr, ptr %prev, align 8, !dbg !529
  %tobool27 = icmp ne ptr %24, null, !dbg !529
  br i1 %tobool27, label %if.then28, label %if.else31, !dbg !531

if.then28:                                        ; preds = %if.end26
  %25 = load ptr, ptr %n, align 8, !dbg !532
  %next29 = getelementptr inbounds %struct.ebitmap_node, ptr %25, i32 0, i32 0, !dbg !533
  %26 = load ptr, ptr %next29, align 8, !dbg !533
  %27 = load ptr, ptr %prev, align 8, !dbg !534
  %next30 = getelementptr inbounds %struct.ebitmap_node, ptr %27, i32 0, i32 0, !dbg !535
  store ptr %26, ptr %next30, align 8, !dbg !536
  br label %if.end34, !dbg !534

if.else31:                                        ; preds = %if.end26
  %28 = load ptr, ptr %n, align 8, !dbg !537
  %next32 = getelementptr inbounds %struct.ebitmap_node, ptr %28, i32 0, i32 0, !dbg !538
  %29 = load ptr, ptr %next32, align 8, !dbg !538
  %30 = load ptr, ptr %e.addr, align 8, !dbg !539
  %node33 = getelementptr inbounds %struct.ebitmap, ptr %30, i32 0, i32 0, !dbg !540
  store ptr %29, ptr %node33, align 8, !dbg !541
  br label %if.end34

if.end34:                                         ; preds = %if.else31, %if.then28
  %31 = load ptr, ptr @ebitmap_node_cachep, align 8, !dbg !542
  %32 = load ptr, ptr %n, align 8, !dbg !543
  call void @kmem_cache_free(ptr noundef %31, ptr noundef %32) #13, !dbg !544
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !545
  br label %cleanup, !dbg !545

cleanup:                                          ; preds = %if.end34, %if.then14
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #12, !dbg !545
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup66 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end35

if.end35:                                         ; preds = %cleanup.cont, %if.then7
  store i32 0, ptr %retval, align 4, !dbg !546
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup66, !dbg !546

if.end36:                                         ; preds = %while.body
  %33 = load ptr, ptr %n, align 8, !dbg !547
  store ptr %33, ptr %prev, align 8, !dbg !548
  %34 = load ptr, ptr %n, align 8, !dbg !549
  %next37 = getelementptr inbounds %struct.ebitmap_node, ptr %34, i32 0, i32 0, !dbg !550
  %35 = load ptr, ptr %next37, align 8, !dbg !550
  store ptr %35, ptr %n, align 8, !dbg !551
  br label %while.cond, !dbg !476, !llvm.loop !552

while.end:                                        ; preds = %land.end
  %36 = load i32, ptr %value.addr, align 4, !dbg !554
  %tobool38 = icmp ne i32 %36, 0, !dbg !554
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !556

if.then39:                                        ; preds = %while.end
  store i32 0, ptr %retval, align 4, !dbg !557
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup66, !dbg !557

if.end40:                                         ; preds = %while.end
  %37 = load ptr, ptr @ebitmap_node_cachep, align 8, !dbg !558
  %call41 = call ptr @kmem_cache_zalloc(ptr noundef %37, i32 noundef 2080) #13, !dbg !559
  store ptr %call41, ptr %new, align 8, !dbg !560
  %38 = load ptr, ptr %new, align 8, !dbg !561
  %tobool42 = icmp ne ptr %38, null, !dbg !561
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !563

if.then43:                                        ; preds = %if.end40
  store i32 -12, ptr %retval, align 4, !dbg !564
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup66, !dbg !564

if.end44:                                         ; preds = %if.end40
  %39 = load i64, ptr %bit.addr, align 8, !dbg !565
  %40 = load i64, ptr %bit.addr, align 8, !dbg !566
  %rem = urem i64 %40, 384, !dbg !567
  %sub = sub i64 %39, %rem, !dbg !568
  %conv45 = trunc i64 %sub to i32, !dbg !565
  %41 = load ptr, ptr %new, align 8, !dbg !569
  %startbit46 = getelementptr inbounds %struct.ebitmap_node, ptr %41, i32 0, i32 2, !dbg !570
  store i32 %conv45, ptr %startbit46, align 8, !dbg !571
  %42 = load ptr, ptr %new, align 8, !dbg !572
  %43 = load i64, ptr %bit.addr, align 8, !dbg !573
  %conv47 = trunc i64 %43 to i32, !dbg !573
  call void @ebitmap_node_set_bit(ptr noundef %42, i32 noundef %conv47) #13, !dbg !574
  %44 = load ptr, ptr %n, align 8, !dbg !575
  %tobool48 = icmp ne ptr %44, null, !dbg !575
  br i1 %tobool48, label %if.end55, label %if.then49, !dbg !577

if.then49:                                        ; preds = %if.end44
  %45 = load ptr, ptr %new, align 8, !dbg !578
  %startbit50 = getelementptr inbounds %struct.ebitmap_node, ptr %45, i32 0, i32 2, !dbg !579
  %46 = load i32, ptr %startbit50, align 8, !dbg !579
  %conv51 = zext i32 %46 to i64, !dbg !578
  %add52 = add i64 %conv51, 384, !dbg !580
  %conv53 = trunc i64 %add52 to i32, !dbg !578
  %47 = load ptr, ptr %e.addr, align 8, !dbg !581
  %highbit54 = getelementptr inbounds %struct.ebitmap, ptr %47, i32 0, i32 1, !dbg !582
  store i32 %conv53, ptr %highbit54, align 8, !dbg !583
  br label %if.end55, !dbg !581

if.end55:                                         ; preds = %if.then49, %if.end44
  %48 = load ptr, ptr %prev, align 8, !dbg !584
  %tobool56 = icmp ne ptr %48, null, !dbg !584
  br i1 %tobool56, label %if.then57, label %if.else61, !dbg !586

if.then57:                                        ; preds = %if.end55
  %49 = load ptr, ptr %prev, align 8, !dbg !587
  %next58 = getelementptr inbounds %struct.ebitmap_node, ptr %49, i32 0, i32 0, !dbg !589
  %50 = load ptr, ptr %next58, align 8, !dbg !589
  %51 = load ptr, ptr %new, align 8, !dbg !590
  %next59 = getelementptr inbounds %struct.ebitmap_node, ptr %51, i32 0, i32 0, !dbg !591
  store ptr %50, ptr %next59, align 8, !dbg !592
  %52 = load ptr, ptr %new, align 8, !dbg !593
  %53 = load ptr, ptr %prev, align 8, !dbg !594
  %next60 = getelementptr inbounds %struct.ebitmap_node, ptr %53, i32 0, i32 0, !dbg !595
  store ptr %52, ptr %next60, align 8, !dbg !596
  br label %if.end65, !dbg !597

if.else61:                                        ; preds = %if.end55
  %54 = load ptr, ptr %e.addr, align 8, !dbg !598
  %node62 = getelementptr inbounds %struct.ebitmap, ptr %54, i32 0, i32 0, !dbg !600
  %55 = load ptr, ptr %node62, align 8, !dbg !600
  %56 = load ptr, ptr %new, align 8, !dbg !601
  %next63 = getelementptr inbounds %struct.ebitmap_node, ptr %56, i32 0, i32 0, !dbg !602
  store ptr %55, ptr %next63, align 8, !dbg !603
  %57 = load ptr, ptr %new, align 8, !dbg !604
  %58 = load ptr, ptr %e.addr, align 8, !dbg !605
  %node64 = getelementptr inbounds %struct.ebitmap, ptr %58, i32 0, i32 0, !dbg !606
  store ptr %57, ptr %node64, align 8, !dbg !607
  br label %if.end65

if.end65:                                         ; preds = %if.else61, %if.then57
  store i32 0, ptr %retval, align 4, !dbg !608
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup66, !dbg !608

cleanup66:                                        ; preds = %if.end65, %if.then43, %if.then39, %if.end35, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #12, !dbg !609
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #12, !dbg !609
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #12, !dbg !609
  %59 = load i32, ptr %retval, align 4, !dbg !609
  ret i32 %59, !dbg !609
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ebitmap_next_positive(ptr noundef %e, ptr noundef %n, i32 noundef %bit) #4 align 16 !dbg !610 {
entry:
  %retval = alloca i32, align 4
  %e.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %bit.addr = alloca i32, align 4
  %ofs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !614, metadata !DIExpression()), !dbg !618
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !615, metadata !DIExpression()), !dbg !619
  store i32 %bit, ptr %bit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !616, metadata !DIExpression()), !dbg !620
  call void @llvm.lifetime.start.p0(i64 4, ptr %ofs) #12, !dbg !621
  call void @llvm.dbg.declare(metadata ptr %ofs, metadata !617, metadata !DIExpression()), !dbg !622
  %0 = load ptr, ptr %n.addr, align 8, !dbg !623
  %1 = load ptr, ptr %0, align 8, !dbg !624
  %maps = getelementptr inbounds %struct.ebitmap_node, ptr %1, i32 0, i32 1, !dbg !625
  %arraydecay = getelementptr inbounds [6 x i64], ptr %maps, i64 0, i64 0, !dbg !626
  %2 = load i32, ptr %bit.addr, align 4, !dbg !627
  %3 = load ptr, ptr %n.addr, align 8, !dbg !628
  %4 = load ptr, ptr %3, align 8, !dbg !629
  %startbit = getelementptr inbounds %struct.ebitmap_node, ptr %4, i32 0, i32 2, !dbg !630
  %5 = load i32, ptr %startbit, align 8, !dbg !630
  %sub = sub i32 %2, %5, !dbg !631
  %add = add i32 %sub, 1, !dbg !632
  %conv = zext i32 %add to i64, !dbg !627
  %call = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 384, i64 noundef %conv) #13, !dbg !633
  %conv1 = trunc i64 %call to i32, !dbg !633
  store i32 %conv1, ptr %ofs, align 4, !dbg !634
  %6 = load i32, ptr %ofs, align 4, !dbg !635
  %conv2 = zext i32 %6 to i64, !dbg !635
  %cmp = icmp ult i64 %conv2, 384, !dbg !637
  br i1 %cmp, label %if.then, label %if.end, !dbg !638

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %ofs, align 4, !dbg !639
  %8 = load ptr, ptr %n.addr, align 8, !dbg !640
  %9 = load ptr, ptr %8, align 8, !dbg !641
  %startbit4 = getelementptr inbounds %struct.ebitmap_node, ptr %9, i32 0, i32 2, !dbg !642
  %10 = load i32, ptr %startbit4, align 8, !dbg !642
  %add5 = add i32 %7, %10, !dbg !643
  store i32 %add5, ptr %retval, align 4, !dbg !644
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !644

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %n.addr, align 8, !dbg !645
  %12 = load ptr, ptr %11, align 8, !dbg !647
  %next = getelementptr inbounds %struct.ebitmap_node, ptr %12, i32 0, i32 0, !dbg !648
  %13 = load ptr, ptr %next, align 8, !dbg !648
  %14 = load ptr, ptr %n.addr, align 8, !dbg !649
  store ptr %13, ptr %14, align 8, !dbg !650
  br label %for.cond, !dbg !651

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load ptr, ptr %n.addr, align 8, !dbg !652
  %16 = load ptr, ptr %15, align 8, !dbg !654
  %tobool = icmp ne ptr %16, null, !dbg !655
  br i1 %tobool, label %for.body, label %for.end, !dbg !655

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %n.addr, align 8, !dbg !656
  %18 = load ptr, ptr %17, align 8, !dbg !658
  %maps6 = getelementptr inbounds %struct.ebitmap_node, ptr %18, i32 0, i32 1, !dbg !659
  %arraydecay7 = getelementptr inbounds [6 x i64], ptr %maps6, i64 0, i64 0, !dbg !660
  %call8 = call i64 @find_first_bit(ptr noundef %arraydecay7, i64 noundef 384) #13, !dbg !661
  %conv9 = trunc i64 %call8 to i32, !dbg !661
  store i32 %conv9, ptr %ofs, align 4, !dbg !662
  %19 = load i32, ptr %ofs, align 4, !dbg !663
  %conv10 = zext i32 %19 to i64, !dbg !663
  %cmp11 = icmp ult i64 %conv10, 384, !dbg !665
  br i1 %cmp11, label %if.then13, label %if.end16, !dbg !666

if.then13:                                        ; preds = %for.body
  %20 = load i32, ptr %ofs, align 4, !dbg !667
  %21 = load ptr, ptr %n.addr, align 8, !dbg !668
  %22 = load ptr, ptr %21, align 8, !dbg !669
  %startbit14 = getelementptr inbounds %struct.ebitmap_node, ptr %22, i32 0, i32 2, !dbg !670
  %23 = load i32, ptr %startbit14, align 8, !dbg !670
  %add15 = add i32 %20, %23, !dbg !671
  store i32 %add15, ptr %retval, align 4, !dbg !672
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !672

if.end16:                                         ; preds = %for.body
  br label %for.inc, !dbg !673

for.inc:                                          ; preds = %if.end16
  %24 = load ptr, ptr %n.addr, align 8, !dbg !674
  %25 = load ptr, ptr %24, align 8, !dbg !675
  %next17 = getelementptr inbounds %struct.ebitmap_node, ptr %25, i32 0, i32 0, !dbg !676
  %26 = load ptr, ptr %next17, align 8, !dbg !676
  %27 = load ptr, ptr %n.addr, align 8, !dbg !677
  store ptr %26, ptr %27, align 8, !dbg !678
  br label %for.cond, !dbg !679, !llvm.loop !680

for.end:                                          ; preds = %for.cond
  %28 = load ptr, ptr %e.addr, align 8, !dbg !682
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %28, i32 0, i32 1, !dbg !682
  %29 = load i32, ptr %highbit, align 8, !dbg !682
  store i32 %29, ptr %retval, align 4, !dbg !683
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !683

cleanup:                                          ; preds = %for.end, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ofs) #12, !dbg !684
  %30 = load i32, ptr %retval, align 4, !dbg !684
  ret i32 %30, !dbg !684
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ebitmap_netlbl_export(ptr noundef %ebmap, ptr noundef %catmap) #0 align 16 !dbg !685 {
entry:
  %retval = alloca i32, align 4
  %ebmap.addr = alloca ptr, align 8
  %catmap.addr = alloca ptr, align 8
  %e_iter = alloca ptr, align 8
  %e_map = alloca i64, align 8
  %offset = alloca i32, align 4
  %iter = alloca i32, align 4
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ebmap, ptr %ebmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebmap.addr, metadata !700, metadata !DIExpression()), !dbg !708
  store ptr %catmap, ptr %catmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %catmap.addr, metadata !701, metadata !DIExpression()), !dbg !709
  call void @llvm.lifetime.start.p0(i64 8, ptr %e_iter) #12, !dbg !710
  call void @llvm.dbg.declare(metadata ptr %e_iter, metadata !702, metadata !DIExpression()), !dbg !711
  %0 = load ptr, ptr %ebmap.addr, align 8, !dbg !712
  %node = getelementptr inbounds %struct.ebitmap, ptr %0, i32 0, i32 0, !dbg !713
  %1 = load ptr, ptr %node, align 8, !dbg !713
  store ptr %1, ptr %e_iter, align 8, !dbg !711
  call void @llvm.lifetime.start.p0(i64 8, ptr %e_map) #12, !dbg !714
  call void @llvm.dbg.declare(metadata ptr %e_map, metadata !703, metadata !DIExpression()), !dbg !715
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #12, !dbg !716
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !704, metadata !DIExpression()), !dbg !717
  call void @llvm.lifetime.start.p0(i64 4, ptr %iter) #12, !dbg !718
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !705, metadata !DIExpression()), !dbg !719
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #12, !dbg !720
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !706, metadata !DIExpression()), !dbg !721
  %2 = load ptr, ptr %e_iter, align 8, !dbg !722
  %cmp = icmp eq ptr %2, null, !dbg !724
  br i1 %cmp, label %if.then, label %if.end, !dbg !725

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %catmap.addr, align 8, !dbg !726
  store ptr null, ptr %3, align 8, !dbg !728
  store i32 0, ptr %retval, align 4, !dbg !729
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !729

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %catmap.addr, align 8, !dbg !730
  %5 = load ptr, ptr %4, align 8, !dbg !732
  %cmp1 = icmp ne ptr %5, null, !dbg !733
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !734

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %catmap.addr, align 8, !dbg !735
  %7 = load ptr, ptr %6, align 8, !dbg !736
  call void @netlbl_catmap_free(ptr noundef %7) #13, !dbg !737
  br label %if.end3, !dbg !737

if.end3:                                          ; preds = %if.then2, %if.end
  %8 = load ptr, ptr %catmap.addr, align 8, !dbg !738
  store ptr null, ptr %8, align 8, !dbg !739
  br label %while.cond, !dbg !740

while.cond:                                       ; preds = %for.end, %if.end3
  %9 = load ptr, ptr %e_iter, align 8, !dbg !741
  %tobool = icmp ne ptr %9, null, !dbg !740
  br i1 %tobool, label %while.body, label %while.end, !dbg !740

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %e_iter, align 8, !dbg !742
  %startbit = getelementptr inbounds %struct.ebitmap_node, ptr %10, i32 0, i32 2, !dbg !744
  %11 = load i32, ptr %startbit, align 8, !dbg !744
  store i32 %11, ptr %offset, align 4, !dbg !745
  store i32 0, ptr %iter, align 4, !dbg !746
  br label %for.cond, !dbg !748

for.cond:                                         ; preds = %for.inc, %while.body
  %12 = load i32, ptr %iter, align 4, !dbg !749
  %conv = zext i32 %12 to i64, !dbg !749
  %cmp4 = icmp ult i64 %conv, 6, !dbg !751
  br i1 %cmp4, label %for.body, label %for.end, !dbg !752

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %e_iter, align 8, !dbg !753
  %maps = getelementptr inbounds %struct.ebitmap_node, ptr %13, i32 0, i32 1, !dbg !755
  %14 = load i32, ptr %iter, align 4, !dbg !756
  %idxprom = zext i32 %14 to i64, !dbg !753
  %arrayidx = getelementptr [6 x i64], ptr %maps, i64 0, i64 %idxprom, !dbg !753
  %15 = load i64, ptr %arrayidx, align 8, !dbg !753
  store i64 %15, ptr %e_map, align 8, !dbg !757
  %16 = load i64, ptr %e_map, align 8, !dbg !758
  %cmp6 = icmp ne i64 %16, 0, !dbg !760
  br i1 %cmp6, label %if.then8, label %if.end13, !dbg !761

if.then8:                                         ; preds = %for.body
  %17 = load ptr, ptr %catmap.addr, align 8, !dbg !762
  %18 = load i32, ptr %offset, align 4, !dbg !764
  %19 = load i64, ptr %e_map, align 8, !dbg !765
  %call = call i32 @netlbl_catmap_setlong(ptr noundef %17, i32 noundef %18, i64 noundef %19, i32 noundef 2080) #13, !dbg !766
  store i32 %call, ptr %rc, align 4, !dbg !767
  %20 = load i32, ptr %rc, align 4, !dbg !768
  %cmp9 = icmp ne i32 %20, 0, !dbg !770
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !771

if.then11:                                        ; preds = %if.then8
  br label %netlbl_export_failure, !dbg !772

if.end12:                                         ; preds = %if.then8
  br label %if.end13, !dbg !773

if.end13:                                         ; preds = %if.end12, %for.body
  %21 = load i32, ptr %offset, align 4, !dbg !774
  %add = add i32 %21, 64, !dbg !774
  store i32 %add, ptr %offset, align 4, !dbg !774
  br label %for.inc, !dbg !775

for.inc:                                          ; preds = %if.end13
  %22 = load i32, ptr %iter, align 4, !dbg !776
  %inc = add i32 %22, 1, !dbg !776
  store i32 %inc, ptr %iter, align 4, !dbg !776
  br label %for.cond, !dbg !777, !llvm.loop !778

for.end:                                          ; preds = %for.cond
  %23 = load ptr, ptr %e_iter, align 8, !dbg !780
  %next = getelementptr inbounds %struct.ebitmap_node, ptr %23, i32 0, i32 0, !dbg !781
  %24 = load ptr, ptr %next, align 8, !dbg !781
  store ptr %24, ptr %e_iter, align 8, !dbg !782
  br label %while.cond, !dbg !740, !llvm.loop !783

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !785
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !785

netlbl_export_failure:                            ; preds = %if.then11
  call void @llvm.dbg.label(metadata !707), !dbg !786
  %25 = load ptr, ptr %catmap.addr, align 8, !dbg !787
  %26 = load ptr, ptr %25, align 8, !dbg !788
  call void @netlbl_catmap_free(ptr noundef %26) #13, !dbg !789
  store i32 -12, ptr %retval, align 4, !dbg !790
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !790

cleanup:                                          ; preds = %netlbl_export_failure, %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #12, !dbg !791
  call void @llvm.lifetime.end.p0(i64 4, ptr %iter) #12, !dbg !791
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #12, !dbg !791
  call void @llvm.lifetime.end.p0(i64 8, ptr %e_map) #12, !dbg !791
  call void @llvm.lifetime.end.p0(i64 8, ptr %e_iter) #12, !dbg !791
  %27 = load i32, ptr %retval, align 4, !dbg !791
  ret i32 %27, !dbg !791
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @netlbl_catmap_free(ptr noundef %catmap) #4 align 16 !dbg !792 {
entry:
  %catmap.addr = alloca ptr, align 8
  %iter = alloca ptr, align 8
  store ptr %catmap, ptr %catmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %catmap.addr, metadata !796, metadata !DIExpression()), !dbg !798
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #12, !dbg !799
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !797, metadata !DIExpression()), !dbg !800
  br label %while.cond, !dbg !801

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %catmap.addr, align 8, !dbg !802
  %tobool = icmp ne ptr %0, null, !dbg !801
  br i1 %tobool, label %while.body, label %while.end, !dbg !801

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %catmap.addr, align 8, !dbg !803
  store ptr %1, ptr %iter, align 8, !dbg !805
  %2 = load ptr, ptr %catmap.addr, align 8, !dbg !806
  %next = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %2, i32 0, i32 2, !dbg !807
  %3 = load ptr, ptr %next, align 8, !dbg !807
  store ptr %3, ptr %catmap.addr, align 8, !dbg !808
  %4 = load ptr, ptr %iter, align 8, !dbg !809
  call void @kfree(ptr noundef %4) #13, !dbg !810
  br label %while.cond, !dbg !801, !llvm.loop !811

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #12, !dbg !813
  ret void, !dbg !813
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !814 dso_local i32 @netlbl_catmap_setlong(ptr noundef, i32 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ebitmap_netlbl_import(ptr noundef %ebmap, ptr noundef %catmap) #0 align 16 !dbg !817 {
entry:
  %retval = alloca i32, align 4
  %ebmap.addr = alloca ptr, align 8
  %catmap.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %e_iter = alloca ptr, align 8
  %e_prev = alloca ptr, align 8
  %offset = alloca i32, align 4
  %idx = alloca i32, align 4
  %bitmap = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ebmap, ptr %ebmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebmap.addr, metadata !821, metadata !DIExpression()), !dbg !830
  store ptr %catmap, ptr %catmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %catmap.addr, metadata !822, metadata !DIExpression()), !dbg !831
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #12, !dbg !832
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !823, metadata !DIExpression()), !dbg !833
  call void @llvm.lifetime.start.p0(i64 8, ptr %e_iter) #12, !dbg !834
  call void @llvm.dbg.declare(metadata ptr %e_iter, metadata !824, metadata !DIExpression()), !dbg !835
  store ptr null, ptr %e_iter, align 8, !dbg !835
  call void @llvm.lifetime.start.p0(i64 8, ptr %e_prev) #12, !dbg !836
  call void @llvm.dbg.declare(metadata ptr %e_prev, metadata !825, metadata !DIExpression()), !dbg !837
  store ptr null, ptr %e_prev, align 8, !dbg !837
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #12, !dbg !838
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !826, metadata !DIExpression()), !dbg !839
  store i32 0, ptr %offset, align 4, !dbg !839
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #12, !dbg !838
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !827, metadata !DIExpression()), !dbg !840
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitmap) #12, !dbg !841
  call void @llvm.dbg.declare(metadata ptr %bitmap, metadata !828, metadata !DIExpression()), !dbg !842
  br label %for.cond, !dbg !843

for.cond:                                         ; preds = %if.end30, %if.then5, %entry
  %0 = load ptr, ptr %catmap.addr, align 8, !dbg !844
  %call = call i32 @netlbl_catmap_getlong(ptr noundef %0, ptr noundef %offset, ptr noundef %bitmap) #13, !dbg !848
  store i32 %call, ptr %rc, align 4, !dbg !849
  %1 = load i32, ptr %rc, align 4, !dbg !850
  %cmp = icmp slt i32 %1, 0, !dbg !852
  br i1 %cmp, label %if.then, label %if.end, !dbg !853

if.then:                                          ; preds = %for.cond
  br label %netlbl_import_failure, !dbg !854

if.end:                                           ; preds = %for.cond
  %2 = load i32, ptr %offset, align 4, !dbg !855
  %cmp1 = icmp eq i32 %2, -1, !dbg !857
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !858

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !859
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !859

if.end3:                                          ; preds = %if.end
  %3 = load i64, ptr %bitmap, align 8, !dbg !860
  %cmp4 = icmp eq i64 %3, 0, !dbg !862
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !863

if.then5:                                         ; preds = %if.end3
  %4 = load i32, ptr %offset, align 4, !dbg !864
  %add = add i32 %4, 64, !dbg !864
  store i32 %add, ptr %offset, align 4, !dbg !864
  br label %for.cond, !dbg !866, !llvm.loop !867

if.end6:                                          ; preds = %if.end3
  %5 = load ptr, ptr %e_iter, align 8, !dbg !870
  %cmp7 = icmp eq ptr %5, null, !dbg !872
  br i1 %cmp7, label %if.then12, label %lor.lhs.false, !dbg !873

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, ptr %offset, align 4, !dbg !874
  %conv = zext i32 %6 to i64, !dbg !874
  %7 = load ptr, ptr %e_iter, align 8, !dbg !875
  %startbit = getelementptr inbounds %struct.ebitmap_node, ptr %7, i32 0, i32 2, !dbg !876
  %8 = load i32, ptr %startbit, align 8, !dbg !876
  %conv8 = zext i32 %8 to i64, !dbg !875
  %add9 = add i64 %conv8, 384, !dbg !877
  %cmp10 = icmp uge i64 %conv, %add9, !dbg !878
  br i1 %cmp10, label %if.then12, label %if.end30, !dbg !879

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  %9 = load ptr, ptr %e_iter, align 8, !dbg !880
  store ptr %9, ptr %e_prev, align 8, !dbg !882
  %10 = load ptr, ptr @ebitmap_node_cachep, align 8, !dbg !883
  %call13 = call ptr @kmem_cache_zalloc(ptr noundef %10, i32 noundef 2080) #13, !dbg !884
  store ptr %call13, ptr %e_iter, align 8, !dbg !885
  %11 = load ptr, ptr %e_iter, align 8, !dbg !886
  %cmp14 = icmp eq ptr %11, null, !dbg !888
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !889

if.then16:                                        ; preds = %if.then12
  br label %netlbl_import_failure, !dbg !890

if.end17:                                         ; preds = %if.then12
  %12 = load i32, ptr %offset, align 4, !dbg !891
  %conv18 = zext i32 %12 to i64, !dbg !891
  %13 = load i32, ptr %offset, align 4, !dbg !892
  %conv19 = zext i32 %13 to i64, !dbg !892
  %rem = urem i64 %conv19, 384, !dbg !893
  %sub = sub i64 %conv18, %rem, !dbg !894
  %conv20 = trunc i64 %sub to i32, !dbg !891
  %14 = load ptr, ptr %e_iter, align 8, !dbg !895
  %startbit21 = getelementptr inbounds %struct.ebitmap_node, ptr %14, i32 0, i32 2, !dbg !896
  store i32 %conv20, ptr %startbit21, align 8, !dbg !897
  %15 = load ptr, ptr %e_prev, align 8, !dbg !898
  %cmp22 = icmp eq ptr %15, null, !dbg !900
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !901

if.then24:                                        ; preds = %if.end17
  %16 = load ptr, ptr %e_iter, align 8, !dbg !902
  %17 = load ptr, ptr %ebmap.addr, align 8, !dbg !903
  %node = getelementptr inbounds %struct.ebitmap, ptr %17, i32 0, i32 0, !dbg !904
  store ptr %16, ptr %node, align 8, !dbg !905
  br label %if.end25, !dbg !903

if.else:                                          ; preds = %if.end17
  %18 = load ptr, ptr %e_iter, align 8, !dbg !906
  %19 = load ptr, ptr %e_prev, align 8, !dbg !907
  %next = getelementptr inbounds %struct.ebitmap_node, ptr %19, i32 0, i32 0, !dbg !908
  store ptr %18, ptr %next, align 8, !dbg !909
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then24
  %20 = load ptr, ptr %e_iter, align 8, !dbg !910
  %startbit26 = getelementptr inbounds %struct.ebitmap_node, ptr %20, i32 0, i32 2, !dbg !911
  %21 = load i32, ptr %startbit26, align 8, !dbg !911
  %conv27 = zext i32 %21 to i64, !dbg !910
  %add28 = add i64 %conv27, 384, !dbg !912
  %conv29 = trunc i64 %add28 to i32, !dbg !910
  %22 = load ptr, ptr %ebmap.addr, align 8, !dbg !913
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %22, i32 0, i32 1, !dbg !914
  store i32 %conv29, ptr %highbit, align 8, !dbg !915
  br label %if.end30, !dbg !916

if.end30:                                         ; preds = %if.end25, %lor.lhs.false
  %23 = load i32, ptr %offset, align 4, !dbg !917
  %24 = load ptr, ptr %e_iter, align 8, !dbg !917
  %startbit31 = getelementptr inbounds %struct.ebitmap_node, ptr %24, i32 0, i32 2, !dbg !917
  %25 = load i32, ptr %startbit31, align 8, !dbg !917
  %sub32 = sub i32 %23, %25, !dbg !917
  %div = udiv i32 %sub32, 64, !dbg !917
  store i32 %div, ptr %idx, align 4, !dbg !918
  %26 = load i64, ptr %bitmap, align 8, !dbg !919
  %27 = load ptr, ptr %e_iter, align 8, !dbg !920
  %maps = getelementptr inbounds %struct.ebitmap_node, ptr %27, i32 0, i32 1, !dbg !921
  %28 = load i32, ptr %idx, align 4, !dbg !922
  %idxprom = zext i32 %28 to i64, !dbg !920
  %arrayidx = getelementptr [6 x i64], ptr %maps, i64 0, i64 %idxprom, !dbg !920
  store i64 %26, ptr %arrayidx, align 8, !dbg !923
  %29 = load i32, ptr %offset, align 4, !dbg !924
  %add33 = add i32 %29, 64, !dbg !924
  store i32 %add33, ptr %offset, align 4, !dbg !924
  br label %for.cond, !dbg !925, !llvm.loop !867

netlbl_import_failure:                            ; preds = %if.then16, %if.then
  call void @llvm.dbg.label(metadata !829), !dbg !926
  %30 = load ptr, ptr %ebmap.addr, align 8, !dbg !927
  call void @ebitmap_destroy(ptr noundef %30) #13, !dbg !928
  store i32 -12, ptr %retval, align 4, !dbg !929
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !929

cleanup:                                          ; preds = %netlbl_import_failure, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitmap) #12, !dbg !930
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #12, !dbg !930
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #12, !dbg !930
  call void @llvm.lifetime.end.p0(i64 8, ptr %e_prev) #12, !dbg !930
  call void @llvm.lifetime.end.p0(i64 8, ptr %e_iter) #12, !dbg !930
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #12, !dbg !930
  %31 = load i32, ptr %retval, align 4, !dbg !930
  ret i32 %31, !dbg !930
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !931 dso_local i32 @netlbl_catmap_getlong(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ebitmap_contains(ptr noundef %e1, ptr noundef %e2, i32 noundef %last_e2bit) #0 align 16 !dbg !936 {
entry:
  %retval = alloca i32, align 4
  %e1.addr = alloca ptr, align 8
  %e2.addr = alloca ptr, align 8
  %last_e2bit.addr = alloca i32, align 4
  %n1 = alloca ptr, align 8
  %n2 = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %lastsetbit = alloca i32, align 4
  store ptr %e1, ptr %e1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e1.addr, metadata !940, metadata !DIExpression()), !dbg !950
  store ptr %e2, ptr %e2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e2.addr, metadata !941, metadata !DIExpression()), !dbg !951
  store i32 %last_e2bit, ptr %last_e2bit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %last_e2bit.addr, metadata !942, metadata !DIExpression()), !dbg !952
  call void @llvm.lifetime.start.p0(i64 8, ptr %n1) #12, !dbg !953
  call void @llvm.dbg.declare(metadata ptr %n1, metadata !943, metadata !DIExpression()), !dbg !954
  call void @llvm.lifetime.start.p0(i64 8, ptr %n2) #12, !dbg !953
  call void @llvm.dbg.declare(metadata ptr %n2, metadata !944, metadata !DIExpression()), !dbg !955
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !956
  call void @llvm.dbg.declare(metadata ptr %i, metadata !945, metadata !DIExpression()), !dbg !957
  %0 = load ptr, ptr %e1.addr, align 8, !dbg !958
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %0, i32 0, i32 1, !dbg !960
  %1 = load i32, ptr %highbit, align 8, !dbg !960
  %2 = load ptr, ptr %e2.addr, align 8, !dbg !961
  %highbit1 = getelementptr inbounds %struct.ebitmap, ptr %2, i32 0, i32 1, !dbg !962
  %3 = load i32, ptr %highbit1, align 8, !dbg !962
  %cmp = icmp ult i32 %1, %3, !dbg !963
  br i1 %cmp, label %if.then, label %if.end, !dbg !964

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !965
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !965

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %e1.addr, align 8, !dbg !966
  %node = getelementptr inbounds %struct.ebitmap, ptr %4, i32 0, i32 0, !dbg !967
  %5 = load ptr, ptr %node, align 8, !dbg !967
  store ptr %5, ptr %n1, align 8, !dbg !968
  %6 = load ptr, ptr %e2.addr, align 8, !dbg !969
  %node2 = getelementptr inbounds %struct.ebitmap, ptr %6, i32 0, i32 0, !dbg !970
  %7 = load ptr, ptr %node2, align 8, !dbg !970
  store ptr %7, ptr %n2, align 8, !dbg !971
  br label %while.cond, !dbg !972

while.cond:                                       ; preds = %while.end, %if.then9, %if.end
  %8 = load ptr, ptr %n1, align 8, !dbg !973
  %tobool = icmp ne ptr %8, null, !dbg !973
  br i1 %tobool, label %land.lhs.true, label %land.end, !dbg !974

land.lhs.true:                                    ; preds = %while.cond
  %9 = load ptr, ptr %n2, align 8, !dbg !975
  %tobool3 = icmp ne ptr %9, null, !dbg !975
  br i1 %tobool3, label %land.rhs, label %land.end, !dbg !976

land.rhs:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %n1, align 8, !dbg !977
  %startbit = getelementptr inbounds %struct.ebitmap_node, ptr %10, i32 0, i32 2, !dbg !978
  %11 = load i32, ptr %startbit, align 8, !dbg !978
  %12 = load ptr, ptr %n2, align 8, !dbg !979
  %startbit4 = getelementptr inbounds %struct.ebitmap_node, ptr %12, i32 0, i32 2, !dbg !980
  %13 = load i32, ptr %startbit4, align 8, !dbg !980
  %cmp5 = icmp ule i32 %11, %13, !dbg !981
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %14 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp5, %land.rhs ], !dbg !982
  br i1 %14, label %while.body, label %while.end50, !dbg !972

while.body:                                       ; preds = %land.end
  %15 = load ptr, ptr %n1, align 8, !dbg !983
  %startbit6 = getelementptr inbounds %struct.ebitmap_node, ptr %15, i32 0, i32 2, !dbg !985
  %16 = load i32, ptr %startbit6, align 8, !dbg !985
  %17 = load ptr, ptr %n2, align 8, !dbg !986
  %startbit7 = getelementptr inbounds %struct.ebitmap_node, ptr %17, i32 0, i32 2, !dbg !987
  %18 = load i32, ptr %startbit7, align 8, !dbg !987
  %cmp8 = icmp ult i32 %16, %18, !dbg !988
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !989

if.then9:                                         ; preds = %while.body
  %19 = load ptr, ptr %n1, align 8, !dbg !990
  %next = getelementptr inbounds %struct.ebitmap_node, ptr %19, i32 0, i32 0, !dbg !992
  %20 = load ptr, ptr %next, align 8, !dbg !992
  store ptr %20, ptr %n1, align 8, !dbg !993
  br label %while.cond, !dbg !994, !llvm.loop !995

if.end10:                                         ; preds = %while.body
  store i32 5, ptr %i, align 4, !dbg !997
  br label %for.cond, !dbg !999

for.cond:                                         ; preds = %for.body, %if.end10
  %21 = load i32, ptr %i, align 4, !dbg !1000
  %cmp11 = icmp sge i32 %21, 0, !dbg !1002
  br i1 %cmp11, label %land.rhs12, label %land.end14, !dbg !1003

land.rhs12:                                       ; preds = %for.cond
  %22 = load ptr, ptr %n2, align 8, !dbg !1004
  %maps = getelementptr inbounds %struct.ebitmap_node, ptr %22, i32 0, i32 1, !dbg !1005
  %23 = load i32, ptr %i, align 4, !dbg !1006
  %idxprom = sext i32 %23 to i64, !dbg !1004
  %arrayidx = getelementptr [6 x i64], ptr %maps, i64 0, i64 %idxprom, !dbg !1004
  %24 = load i64, ptr %arrayidx, align 8, !dbg !1004
  %tobool13 = icmp ne i64 %24, 0, !dbg !1007
  %lnot = xor i1 %tobool13, true, !dbg !1007
  br label %land.end14

land.end14:                                       ; preds = %land.rhs12, %for.cond
  %25 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs12 ], !dbg !1008
  br i1 %25, label %for.body, label %for.end, !dbg !1009

for.body:                                         ; preds = %land.end14
  %26 = load i32, ptr %i, align 4, !dbg !1010
  %dec = add i32 %26, -1, !dbg !1010
  store i32 %dec, ptr %i, align 4, !dbg !1010
  br label %for.cond, !dbg !1011, !llvm.loop !1012

for.end:                                          ; preds = %land.end14
  %27 = load i32, ptr %last_e2bit.addr, align 4, !dbg !1014
  %tobool15 = icmp ne i32 %27, 0, !dbg !1014
  br i1 %tobool15, label %land.lhs.true16, label %if.end29, !dbg !1015

land.lhs.true16:                                  ; preds = %for.end
  %28 = load i32, ptr %i, align 4, !dbg !1016
  %cmp17 = icmp sge i32 %28, 0, !dbg !1017
  br i1 %cmp17, label %if.then18, label %if.end29, !dbg !1018

if.then18:                                        ; preds = %land.lhs.true16
  call void @llvm.lifetime.start.p0(i64 4, ptr %lastsetbit) #12, !dbg !1019
  call void @llvm.dbg.declare(metadata ptr %lastsetbit, metadata !946, metadata !DIExpression()), !dbg !1020
  %29 = load ptr, ptr %n2, align 8, !dbg !1021
  %startbit19 = getelementptr inbounds %struct.ebitmap_node, ptr %29, i32 0, i32 2, !dbg !1022
  %30 = load i32, ptr %startbit19, align 8, !dbg !1022
  %31 = load i32, ptr %i, align 4, !dbg !1023
  %mul = mul i32 %31, 64, !dbg !1024
  %add = add i32 %30, %mul, !dbg !1025
  %conv = zext i32 %add to i64, !dbg !1021
  %32 = load ptr, ptr %n2, align 8, !dbg !1026
  %maps20 = getelementptr inbounds %struct.ebitmap_node, ptr %32, i32 0, i32 1, !dbg !1027
  %33 = load i32, ptr %i, align 4, !dbg !1028
  %idxprom21 = sext i32 %33 to i64, !dbg !1026
  %arrayidx22 = getelementptr [6 x i64], ptr %maps20, i64 0, i64 %idxprom21, !dbg !1026
  %34 = load i64, ptr %arrayidx22, align 8, !dbg !1026
  %call = call i64 @__fls(i64 noundef %34) #13, !dbg !1029
  %add23 = add i64 %conv, %call, !dbg !1030
  %conv24 = trunc i64 %add23 to i32, !dbg !1021
  store i32 %conv24, ptr %lastsetbit, align 4, !dbg !1020
  %35 = load i32, ptr %lastsetbit, align 4, !dbg !1031
  %36 = load i32, ptr %last_e2bit.addr, align 4, !dbg !1033
  %cmp25 = icmp ugt i32 %35, %36, !dbg !1034
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !1035

if.then27:                                        ; preds = %if.then18
  store i32 0, ptr %retval, align 4, !dbg !1036
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1036

if.end28:                                         ; preds = %if.then18
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1037
  br label %cleanup, !dbg !1037

cleanup:                                          ; preds = %if.end28, %if.then27
  call void @llvm.lifetime.end.p0(i64 4, ptr %lastsetbit) #12, !dbg !1037
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup54 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end29, !dbg !1038

if.end29:                                         ; preds = %cleanup.cont, %land.lhs.true16, %for.end
  br label %while.cond30, !dbg !1039

while.cond30:                                     ; preds = %if.end46, %if.end29
  %37 = load i32, ptr %i, align 4, !dbg !1040
  %cmp31 = icmp sge i32 %37, 0, !dbg !1041
  br i1 %cmp31, label %while.body33, label %while.end, !dbg !1039

while.body33:                                     ; preds = %while.cond30
  %38 = load ptr, ptr %n1, align 8, !dbg !1042
  %maps34 = getelementptr inbounds %struct.ebitmap_node, ptr %38, i32 0, i32 1, !dbg !1045
  %39 = load i32, ptr %i, align 4, !dbg !1046
  %idxprom35 = sext i32 %39 to i64, !dbg !1042
  %arrayidx36 = getelementptr [6 x i64], ptr %maps34, i64 0, i64 %idxprom35, !dbg !1042
  %40 = load i64, ptr %arrayidx36, align 8, !dbg !1042
  %41 = load ptr, ptr %n2, align 8, !dbg !1047
  %maps37 = getelementptr inbounds %struct.ebitmap_node, ptr %41, i32 0, i32 1, !dbg !1048
  %42 = load i32, ptr %i, align 4, !dbg !1049
  %idxprom38 = sext i32 %42 to i64, !dbg !1047
  %arrayidx39 = getelementptr [6 x i64], ptr %maps37, i64 0, i64 %idxprom38, !dbg !1047
  %43 = load i64, ptr %arrayidx39, align 8, !dbg !1047
  %and = and i64 %40, %43, !dbg !1050
  %44 = load ptr, ptr %n2, align 8, !dbg !1051
  %maps40 = getelementptr inbounds %struct.ebitmap_node, ptr %44, i32 0, i32 1, !dbg !1052
  %45 = load i32, ptr %i, align 4, !dbg !1053
  %idxprom41 = sext i32 %45 to i64, !dbg !1051
  %arrayidx42 = getelementptr [6 x i64], ptr %maps40, i64 0, i64 %idxprom41, !dbg !1051
  %46 = load i64, ptr %arrayidx42, align 8, !dbg !1051
  %cmp43 = icmp ne i64 %and, %46, !dbg !1054
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !1055

if.then45:                                        ; preds = %while.body33
  store i32 0, ptr %retval, align 4, !dbg !1056
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !1056

if.end46:                                         ; preds = %while.body33
  %47 = load i32, ptr %i, align 4, !dbg !1057
  %dec47 = add i32 %47, -1, !dbg !1057
  store i32 %dec47, ptr %i, align 4, !dbg !1057
  br label %while.cond30, !dbg !1039, !llvm.loop !1058

while.end:                                        ; preds = %while.cond30
  %48 = load ptr, ptr %n1, align 8, !dbg !1060
  %next48 = getelementptr inbounds %struct.ebitmap_node, ptr %48, i32 0, i32 0, !dbg !1061
  %49 = load ptr, ptr %next48, align 8, !dbg !1061
  store ptr %49, ptr %n1, align 8, !dbg !1062
  %50 = load ptr, ptr %n2, align 8, !dbg !1063
  %next49 = getelementptr inbounds %struct.ebitmap_node, ptr %50, i32 0, i32 0, !dbg !1064
  %51 = load ptr, ptr %next49, align 8, !dbg !1064
  store ptr %51, ptr %n2, align 8, !dbg !1065
  br label %while.cond, !dbg !972, !llvm.loop !995

while.end50:                                      ; preds = %land.end
  %52 = load ptr, ptr %n2, align 8, !dbg !1066
  %tobool51 = icmp ne ptr %52, null, !dbg !1066
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !1068

if.then52:                                        ; preds = %while.end50
  store i32 0, ptr %retval, align 4, !dbg !1069
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !1069

if.end53:                                         ; preds = %while.end50
  store i32 1, ptr %retval, align 4, !dbg !1070
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !1070

cleanup54:                                        ; preds = %if.end53, %if.then52, %if.then45, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1071
  call void @llvm.lifetime.end.p0(i64 8, ptr %n2) #12, !dbg !1071
  call void @llvm.lifetime.end.p0(i64 8, ptr %n1) #12, !dbg !1071
  %53 = load i32, ptr %retval, align 4, !dbg !1071
  ret i32 %53, !dbg !1071
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__fls(i64 noundef %word) #6 align 16 !dbg !1072 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !1077, metadata !DIExpression()), !dbg !1078
  %0 = load i64, ptr %word.addr, align 8, !dbg !1079
  %1 = call i64 asm "bsr $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #14, !dbg !1080, !srcloc !1081
  store i64 %1, ptr %word.addr, align 8, !dbg !1080
  %2 = load i64, ptr %word.addr, align 8, !dbg !1082
  ret i64 %2, !dbg !1083
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ebitmap_node_get_bit(ptr noundef %n, i32 noundef %bit) #4 align 16 !dbg !1084 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca ptr, align 8
  %bit.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %ofs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1088, metadata !DIExpression()), !dbg !1092
  store i32 %bit, ptr %bit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !1089, metadata !DIExpression()), !dbg !1093
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #12, !dbg !1094
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1090, metadata !DIExpression()), !dbg !1095
  %0 = load i32, ptr %bit.addr, align 4, !dbg !1096
  %1 = load ptr, ptr %n.addr, align 8, !dbg !1096
  %startbit = getelementptr inbounds %struct.ebitmap_node, ptr %1, i32 0, i32 2, !dbg !1096
  %2 = load i32, ptr %startbit, align 8, !dbg !1096
  %sub = sub i32 %0, %2, !dbg !1096
  %div = udiv i32 %sub, 64, !dbg !1096
  store i32 %div, ptr %index, align 4, !dbg !1095
  call void @llvm.lifetime.start.p0(i64 4, ptr %ofs) #12, !dbg !1097
  call void @llvm.dbg.declare(metadata ptr %ofs, metadata !1091, metadata !DIExpression()), !dbg !1098
  %3 = load i32, ptr %bit.addr, align 4, !dbg !1099
  %4 = load ptr, ptr %n.addr, align 8, !dbg !1099
  %startbit1 = getelementptr inbounds %struct.ebitmap_node, ptr %4, i32 0, i32 2, !dbg !1099
  %5 = load i32, ptr %startbit1, align 8, !dbg !1099
  %sub2 = sub i32 %3, %5, !dbg !1099
  %rem = urem i32 %sub2, 64, !dbg !1099
  store i32 %rem, ptr %ofs, align 4, !dbg !1098
  br label %do.body, !dbg !1100

do.body:                                          ; preds = %entry
  %6 = load i32, ptr %index, align 4, !dbg !1101
  %conv = zext i32 %6 to i64, !dbg !1101
  %cmp = icmp uge i64 %conv, 6, !dbg !1101
  %lnot = xor i1 %cmp, true, !dbg !1101
  %lnot4 = xor i1 %lnot, true, !dbg !1101
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !1101
  %conv5 = sext i32 %lnot.ext to i64, !dbg !1101
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 0), !dbg !1101
  %tobool = icmp ne i64 %expval, 0, !dbg !1101
  br i1 %tobool, label %if.then, label %if.end, !dbg !1104

if.then:                                          ; preds = %do.body
  br label %do.body6, !dbg !1101

do.body6:                                         ; preds = %if.then
  br label %do.body7, !dbg !1105

do.body7:                                         ; preds = %do.body6
  br label %do.cond, !dbg !1107

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !1107

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !1105

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, i32 94, i32 0, i64 12) #12, !dbg !1109, !srcloc !1111
  br label %do.cond9, !dbg !1109

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !1109

do.end10:                                         ; preds = %do.cond9
  unreachable, !dbg !1105

do.cond11:                                        ; No predecessors!
  br label %do.end12, !dbg !1105

do.end12:                                         ; preds = %do.cond11
  br label %if.end, !dbg !1105

if.end:                                           ; preds = %do.end12, %do.body
  br label %do.cond13, !dbg !1104

do.cond13:                                        ; preds = %if.end
  br label %do.end14, !dbg !1104

do.end14:                                         ; preds = %do.cond13
  %7 = load ptr, ptr %n.addr, align 8, !dbg !1112
  %maps = getelementptr inbounds %struct.ebitmap_node, ptr %7, i32 0, i32 1, !dbg !1114
  %8 = load i32, ptr %index, align 4, !dbg !1115
  %idxprom = zext i32 %8 to i64, !dbg !1112
  %arrayidx = getelementptr [6 x i64], ptr %maps, i64 0, i64 %idxprom, !dbg !1112
  %9 = load i64, ptr %arrayidx, align 8, !dbg !1112
  %10 = load i32, ptr %ofs, align 4, !dbg !1116
  %sh_prom = zext i32 %10 to i64, !dbg !1117
  %shl = shl i64 1, %sh_prom, !dbg !1117
  %and = and i64 %9, %shl, !dbg !1118
  %tobool15 = icmp ne i64 %and, 0, !dbg !1118
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !1119

if.then16:                                        ; preds = %do.end14
  store i32 1, ptr %retval, align 4, !dbg !1120
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1120

if.end17:                                         ; preds = %do.end14
  store i32 0, ptr %retval, align 4, !dbg !1121
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1121

cleanup:                                          ; preds = %if.end17, %if.then16
  call void @llvm.lifetime.end.p0(i64 4, ptr %ofs) #12, !dbg !1122
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #12, !dbg !1122
  %11 = load i32, ptr %retval, align 4, !dbg !1122
  ret i32 %11, !dbg !1122
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ebitmap_node_set_bit(ptr noundef %n, i32 noundef %bit) #4 align 16 !dbg !1123 {
entry:
  %n.addr = alloca ptr, align 8
  %bit.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %ofs = alloca i32, align 4
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1127, metadata !DIExpression()), !dbg !1131
  store i32 %bit, ptr %bit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !1128, metadata !DIExpression()), !dbg !1132
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #12, !dbg !1133
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1129, metadata !DIExpression()), !dbg !1134
  %0 = load i32, ptr %bit.addr, align 4, !dbg !1135
  %1 = load ptr, ptr %n.addr, align 8, !dbg !1135
  %startbit = getelementptr inbounds %struct.ebitmap_node, ptr %1, i32 0, i32 2, !dbg !1135
  %2 = load i32, ptr %startbit, align 8, !dbg !1135
  %sub = sub i32 %0, %2, !dbg !1135
  %div = udiv i32 %sub, 64, !dbg !1135
  store i32 %div, ptr %index, align 4, !dbg !1134
  call void @llvm.lifetime.start.p0(i64 4, ptr %ofs) #12, !dbg !1136
  call void @llvm.dbg.declare(metadata ptr %ofs, metadata !1130, metadata !DIExpression()), !dbg !1137
  %3 = load i32, ptr %bit.addr, align 4, !dbg !1138
  %4 = load ptr, ptr %n.addr, align 8, !dbg !1138
  %startbit1 = getelementptr inbounds %struct.ebitmap_node, ptr %4, i32 0, i32 2, !dbg !1138
  %5 = load i32, ptr %startbit1, align 8, !dbg !1138
  %sub2 = sub i32 %3, %5, !dbg !1138
  %rem = urem i32 %sub2, 64, !dbg !1138
  store i32 %rem, ptr %ofs, align 4, !dbg !1137
  br label %do.body, !dbg !1139

do.body:                                          ; preds = %entry
  %6 = load i32, ptr %index, align 4, !dbg !1140
  %conv = zext i32 %6 to i64, !dbg !1140
  %cmp = icmp uge i64 %conv, 6, !dbg !1140
  %lnot = xor i1 %cmp, true, !dbg !1140
  %lnot4 = xor i1 %lnot, true, !dbg !1140
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !1140
  %conv5 = sext i32 %lnot.ext to i64, !dbg !1140
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 0), !dbg !1140
  %tobool = icmp ne i64 %expval, 0, !dbg !1140
  br i1 %tobool, label %if.then, label %if.end, !dbg !1143

if.then:                                          ; preds = %do.body
  br label %do.body6, !dbg !1140

do.body6:                                         ; preds = %if.then
  br label %do.body7, !dbg !1144

do.body7:                                         ; preds = %do.body6
  br label %do.cond, !dbg !1146

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !1146

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !1144

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, i32 106, i32 0, i64 12) #12, !dbg !1148, !srcloc !1150
  br label %do.cond9, !dbg !1148

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !1148

do.end10:                                         ; preds = %do.cond9
  unreachable, !dbg !1144

do.cond11:                                        ; No predecessors!
  br label %do.end12, !dbg !1144

do.end12:                                         ; preds = %do.cond11
  br label %if.end, !dbg !1144

if.end:                                           ; preds = %do.end12, %do.body
  br label %do.cond13, !dbg !1143

do.cond13:                                        ; preds = %if.end
  br label %do.end14, !dbg !1143

do.end14:                                         ; preds = %do.cond13
  %7 = load i32, ptr %ofs, align 4, !dbg !1151
  %sh_prom = zext i32 %7 to i64, !dbg !1152
  %shl = shl i64 1, %sh_prom, !dbg !1152
  %8 = load ptr, ptr %n.addr, align 8, !dbg !1153
  %maps = getelementptr inbounds %struct.ebitmap_node, ptr %8, i32 0, i32 1, !dbg !1154
  %9 = load i32, ptr %index, align 4, !dbg !1155
  %idxprom = zext i32 %9 to i64, !dbg !1153
  %arrayidx = getelementptr [6 x i64], ptr %maps, i64 0, i64 %idxprom, !dbg !1153
  %10 = load i64, ptr %arrayidx, align 8, !dbg !1156
  %or = or i64 %10, %shl, !dbg !1156
  store i64 %or, ptr %arrayidx, align 8, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 4, ptr %ofs) #12, !dbg !1157
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #12, !dbg !1157
  ret void, !dbg !1157
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ebitmap_node_clr_bit(ptr noundef %n, i32 noundef %bit) #4 align 16 !dbg !1158 {
entry:
  %n.addr = alloca ptr, align 8
  %bit.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %ofs = alloca i32, align 4
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1160, metadata !DIExpression()), !dbg !1164
  store i32 %bit, ptr %bit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !1161, metadata !DIExpression()), !dbg !1165
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #12, !dbg !1166
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1162, metadata !DIExpression()), !dbg !1167
  %0 = load i32, ptr %bit.addr, align 4, !dbg !1168
  %1 = load ptr, ptr %n.addr, align 8, !dbg !1168
  %startbit = getelementptr inbounds %struct.ebitmap_node, ptr %1, i32 0, i32 2, !dbg !1168
  %2 = load i32, ptr %startbit, align 8, !dbg !1168
  %sub = sub i32 %0, %2, !dbg !1168
  %div = udiv i32 %sub, 64, !dbg !1168
  store i32 %div, ptr %index, align 4, !dbg !1167
  call void @llvm.lifetime.start.p0(i64 4, ptr %ofs) #12, !dbg !1169
  call void @llvm.dbg.declare(metadata ptr %ofs, metadata !1163, metadata !DIExpression()), !dbg !1170
  %3 = load i32, ptr %bit.addr, align 4, !dbg !1171
  %4 = load ptr, ptr %n.addr, align 8, !dbg !1171
  %startbit1 = getelementptr inbounds %struct.ebitmap_node, ptr %4, i32 0, i32 2, !dbg !1171
  %5 = load i32, ptr %startbit1, align 8, !dbg !1171
  %sub2 = sub i32 %3, %5, !dbg !1171
  %rem = urem i32 %sub2, 64, !dbg !1171
  store i32 %rem, ptr %ofs, align 4, !dbg !1170
  br label %do.body, !dbg !1172

do.body:                                          ; preds = %entry
  %6 = load i32, ptr %index, align 4, !dbg !1173
  %conv = zext i32 %6 to i64, !dbg !1173
  %cmp = icmp uge i64 %conv, 6, !dbg !1173
  %lnot = xor i1 %cmp, true, !dbg !1173
  %lnot4 = xor i1 %lnot, true, !dbg !1173
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !1173
  %conv5 = sext i32 %lnot.ext to i64, !dbg !1173
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 0), !dbg !1173
  %tobool = icmp ne i64 %expval, 0, !dbg !1173
  br i1 %tobool, label %if.then, label %if.end, !dbg !1176

if.then:                                          ; preds = %do.body
  br label %do.body6, !dbg !1173

do.body6:                                         ; preds = %if.then
  br label %do.body7, !dbg !1177

do.body7:                                         ; preds = %do.body6
  br label %do.cond, !dbg !1179

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !1179

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !1177

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, i32 116, i32 0, i64 12) #12, !dbg !1181, !srcloc !1183
  br label %do.cond9, !dbg !1181

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !1181

do.end10:                                         ; preds = %do.cond9
  unreachable, !dbg !1177

do.cond11:                                        ; No predecessors!
  br label %do.end12, !dbg !1177

do.end12:                                         ; preds = %do.cond11
  br label %if.end, !dbg !1177

if.end:                                           ; preds = %do.end12, %do.body
  br label %do.cond13, !dbg !1176

do.cond13:                                        ; preds = %if.end
  br label %do.end14, !dbg !1176

do.end14:                                         ; preds = %do.cond13
  %7 = load i32, ptr %ofs, align 4, !dbg !1184
  %sh_prom = zext i32 %7 to i64, !dbg !1185
  %shl = shl i64 1, %sh_prom, !dbg !1185
  %not = xor i64 %shl, -1, !dbg !1186
  %8 = load ptr, ptr %n.addr, align 8, !dbg !1187
  %maps = getelementptr inbounds %struct.ebitmap_node, ptr %8, i32 0, i32 1, !dbg !1188
  %9 = load i32, ptr %index, align 4, !dbg !1189
  %idxprom = zext i32 %9 to i64, !dbg !1187
  %arrayidx = getelementptr [6 x i64], ptr %maps, i64 0, i64 %idxprom, !dbg !1187
  %10 = load i64, ptr %arrayidx, align 8, !dbg !1190
  %and = and i64 %10, %not, !dbg !1190
  store i64 %and, ptr %arrayidx, align 8, !dbg !1190
  call void @llvm.lifetime.end.p0(i64 4, ptr %ofs) #12, !dbg !1191
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #12, !dbg !1191
  ret void, !dbg !1191
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #4 align 16 !dbg !1192 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1199, metadata !DIExpression()), !dbg !1204
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1200, metadata !DIExpression()), !dbg !1205
  %0 = load i64, ptr %size.addr, align 8, !dbg !1206
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1206
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !1206

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1206
  %cmp = icmp ule i64 %2, 64, !dbg !1206
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !1206

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !1206
  %cmp2 = icmp ugt i64 %3, 0, !dbg !1206
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1207

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !1208
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1201, metadata !DIExpression()), !dbg !1209
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !1210
  %5 = load i64, ptr %4, align 8, !dbg !1211
  %6 = load i64, ptr %size.addr, align 8, !dbg !1212
  %sub = sub i64 %6, 1, !dbg !1212
  %sub3 = sub i64 63, %sub, !dbg !1212
  %shr = lshr i64 -1, %sub3, !dbg !1212
  %and = and i64 -1, %shr, !dbg !1212
  %add = add i64 0, %and, !dbg !1212
  %and4 = and i64 %5, %add, !dbg !1213
  store i64 %and4, ptr %val, align 8, !dbg !1209
  %7 = load i64, ptr %val, align 8, !dbg !1214
  %tobool = icmp ne i64 %7, 0, !dbg !1214
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !1214

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !1215
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !1215
  br i1 %9, label %cond.true5, label %cond.false, !dbg !1215

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !1215
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !1215
  %cast = trunc i64 %11 to i32, !dbg !1215
  %conv = sext i32 %cast to i64, !dbg !1215
  br label %cond.end, !dbg !1215

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !1215
  %call = call i64 @variable__ffs(i64 noundef %12) #13, !dbg !1215
  br label %cond.end, !dbg !1215

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !1215
  br label %cond.end7, !dbg !1214

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !1216
  br label %cond.end7, !dbg !1214

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !1214
  store i64 %cond8, ptr %retval, align 8, !dbg !1217
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !1218
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !1219
  %15 = load i64, ptr %size.addr, align 8, !dbg !1220
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #13, !dbg !1221
  store i64 %call9, ptr %retval, align 8, !dbg !1222
  br label %return, !dbg !1222

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !1223
  ret i64 %16, !dbg !1223
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1224 dso_local void @kmem_cache_free(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ebitmap_read(ptr noundef %e, ptr noundef %fp) #0 align 16 !dbg !1227 {
entry:
  %retval = alloca i32, align 4
  %e.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  %mapunit = alloca i32, align 4
  %count = alloca i32, align 4
  %startbit = alloca i32, align 4
  %index = alloca i32, align 4
  %ebitmap_start = alloca i32, align 4
  %map = alloca i64, align 8
  %mapbits = alloca i64, align 8
  %buf = alloca [3 x i32], align 4
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %tmp43 = alloca i32, align 4
  %tmp54 = alloca i32, align 4
  %tmp67 = alloca ptr, align 8
  %tmp74 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp95 = alloca i32, align 4
  %tmp107 = alloca i32, align 4
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !1231, metadata !DIExpression()), !dbg !1256
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !1232, metadata !DIExpression()), !dbg !1257
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #12, !dbg !1258
  call void @llvm.dbg.declare(metadata ptr %n, metadata !1233, metadata !DIExpression()), !dbg !1259
  store ptr null, ptr %n, align 8, !dbg !1259
  call void @llvm.lifetime.start.p0(i64 4, ptr %mapunit) #12, !dbg !1260
  call void @llvm.dbg.declare(metadata ptr %mapunit, metadata !1234, metadata !DIExpression()), !dbg !1261
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #12, !dbg !1260
  call void @llvm.dbg.declare(metadata ptr %count, metadata !1235, metadata !DIExpression()), !dbg !1262
  call void @llvm.lifetime.start.p0(i64 4, ptr %startbit) #12, !dbg !1260
  call void @llvm.dbg.declare(metadata ptr %startbit, metadata !1236, metadata !DIExpression()), !dbg !1263
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #12, !dbg !1260
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1237, metadata !DIExpression()), !dbg !1264
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebitmap_start) #12, !dbg !1265
  call void @llvm.dbg.declare(metadata ptr %ebitmap_start, metadata !1238, metadata !DIExpression()), !dbg !1266
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #12, !dbg !1267
  call void @llvm.dbg.declare(metadata ptr %map, metadata !1239, metadata !DIExpression()), !dbg !1268
  call void @llvm.lifetime.start.p0(i64 8, ptr %mapbits) #12, !dbg !1269
  call void @llvm.dbg.declare(metadata ptr %mapbits, metadata !1240, metadata !DIExpression()), !dbg !1270
  call void @llvm.lifetime.start.p0(i64 12, ptr %buf) #12, !dbg !1271
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !1241, metadata !DIExpression()), !dbg !1272
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #12, !dbg !1273
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1245, metadata !DIExpression()), !dbg !1274
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1273
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1246, metadata !DIExpression()), !dbg !1275
  %0 = load ptr, ptr %e.addr, align 8, !dbg !1276
  call void @ebitmap_init(ptr noundef %0) #13, !dbg !1277
  %arraydecay = getelementptr inbounds [3 x i32], ptr %buf, i64 0, i64 0, !dbg !1278
  %1 = load ptr, ptr %fp.addr, align 8, !dbg !1279
  %call = call i32 @next_entry(ptr noundef %arraydecay, ptr noundef %1, i64 noundef 12) #13, !dbg !1280
  store i32 %call, ptr %rc, align 4, !dbg !1281
  %2 = load i32, ptr %rc, align 4, !dbg !1282
  %cmp = icmp slt i32 %2, 0, !dbg !1284
  br i1 %cmp, label %if.then, label %if.end, !dbg !1285

if.then:                                          ; preds = %entry
  br label %out, !dbg !1286

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [3 x i32], ptr %buf, i64 0, i64 0, !dbg !1287
  %3 = load i32, ptr %arrayidx, align 4, !dbg !1287
  store i32 %3, ptr %mapunit, align 4, !dbg !1288
  %arrayidx1 = getelementptr [3 x i32], ptr %buf, i64 0, i64 1, !dbg !1289
  %4 = load i32, ptr %arrayidx1, align 4, !dbg !1289
  %5 = load ptr, ptr %e.addr, align 8, !dbg !1290
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %5, i32 0, i32 1, !dbg !1291
  store i32 %4, ptr %highbit, align 8, !dbg !1292
  %arrayidx2 = getelementptr [3 x i32], ptr %buf, i64 0, i64 2, !dbg !1293
  %6 = load i32, ptr %arrayidx2, align 4, !dbg !1293
  store i32 %6, ptr %count, align 4, !dbg !1294
  %7 = load i32, ptr %mapunit, align 4, !dbg !1295
  %conv = zext i32 %7 to i64, !dbg !1295
  %cmp3 = icmp ne i64 %conv, 64, !dbg !1297
  br i1 %cmp3, label %if.then5, label %if.end8, !dbg !1298

if.then5:                                         ; preds = %if.end
  br label %do.body, !dbg !1299

do.body:                                          ; preds = %if.then5
  br label %do.cond, !dbg !1302

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1302

do.end:                                           ; preds = %do.cond
  %8 = load i32, ptr %mapunit, align 4, !dbg !1299
  %9 = load ptr, ptr %e.addr, align 8, !dbg !1299
  %highbit6 = getelementptr inbounds %struct.ebitmap, ptr %9, i32 0, i32 1, !dbg !1299
  %10 = load i32, ptr %highbit6, align 8, !dbg !1299
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %8, i64 noundef 64, i32 noundef %10) #15, !dbg !1299
  store i32 %call7, ptr %tmp, align 4, !dbg !1302
  %11 = load i32, ptr %tmp, align 4, !dbg !1299
  br label %bad, !dbg !1304

if.end8:                                          ; preds = %if.end
  %12 = load ptr, ptr %e.addr, align 8, !dbg !1305
  %highbit9 = getelementptr inbounds %struct.ebitmap, ptr %12, i32 0, i32 1, !dbg !1306
  %13 = load i32, ptr %highbit9, align 8, !dbg !1307
  %conv10 = zext i32 %13 to i64, !dbg !1307
  %add = add i64 %conv10, 383, !dbg !1307
  %conv11 = trunc i64 %add to i32, !dbg !1307
  store i32 %conv11, ptr %highbit9, align 8, !dbg !1307
  %14 = load ptr, ptr %e.addr, align 8, !dbg !1308
  %highbit12 = getelementptr inbounds %struct.ebitmap, ptr %14, i32 0, i32 1, !dbg !1309
  %15 = load i32, ptr %highbit12, align 8, !dbg !1309
  %conv13 = zext i32 %15 to i64, !dbg !1308
  %rem = urem i64 %conv13, 384, !dbg !1310
  %16 = load ptr, ptr %e.addr, align 8, !dbg !1311
  %highbit14 = getelementptr inbounds %struct.ebitmap, ptr %16, i32 0, i32 1, !dbg !1312
  %17 = load i32, ptr %highbit14, align 8, !dbg !1313
  %conv15 = zext i32 %17 to i64, !dbg !1313
  %sub = sub i64 %conv15, %rem, !dbg !1313
  %conv16 = trunc i64 %sub to i32, !dbg !1313
  store i32 %conv16, ptr %highbit14, align 8, !dbg !1313
  %18 = load ptr, ptr %e.addr, align 8, !dbg !1314
  %highbit17 = getelementptr inbounds %struct.ebitmap, ptr %18, i32 0, i32 1, !dbg !1316
  %19 = load i32, ptr %highbit17, align 8, !dbg !1316
  %tobool = icmp ne i32 %19, 0, !dbg !1314
  br i1 %tobool, label %if.end19, label %if.then18, !dbg !1317

if.then18:                                        ; preds = %if.end8
  %20 = load ptr, ptr %e.addr, align 8, !dbg !1318
  %node = getelementptr inbounds %struct.ebitmap, ptr %20, i32 0, i32 0, !dbg !1320
  store ptr null, ptr %node, align 8, !dbg !1321
  br label %ok, !dbg !1322

if.end19:                                         ; preds = %if.end8
  %21 = load ptr, ptr %e.addr, align 8, !dbg !1323
  %highbit20 = getelementptr inbounds %struct.ebitmap, ptr %21, i32 0, i32 1, !dbg !1325
  %22 = load i32, ptr %highbit20, align 8, !dbg !1325
  %tobool21 = icmp ne i32 %22, 0, !dbg !1323
  br i1 %tobool21, label %land.lhs.true, label %if.end24, !dbg !1326

land.lhs.true:                                    ; preds = %if.end19
  %23 = load i32, ptr %count, align 4, !dbg !1327
  %tobool22 = icmp ne i32 %23, 0, !dbg !1327
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !1328

if.then23:                                        ; preds = %land.lhs.true
  br label %bad, !dbg !1329

if.end24:                                         ; preds = %land.lhs.true, %if.end19
  store i32 0, ptr %i, align 4, !dbg !1330
  br label %for.cond, !dbg !1331

for.cond:                                         ; preds = %for.inc, %if.end24
  %24 = load i32, ptr %i, align 4, !dbg !1332
  %25 = load i32, ptr %count, align 4, !dbg !1333
  %cmp25 = icmp ult i32 %24, %25, !dbg !1334
  br i1 %cmp25, label %for.body, label %for.end, !dbg !1335

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %fp.addr, align 8, !dbg !1336
  %call27 = call i32 @next_entry(ptr noundef %ebitmap_start, ptr noundef %26, i64 noundef 4) #13, !dbg !1337
  store i32 %call27, ptr %rc, align 4, !dbg !1338
  %27 = load i32, ptr %rc, align 4, !dbg !1339
  %cmp28 = icmp slt i32 %27, 0, !dbg !1341
  br i1 %cmp28, label %if.then30, label %if.end36, !dbg !1342

if.then30:                                        ; preds = %for.body
  br label %do.body31, !dbg !1343

do.body31:                                        ; preds = %if.then30
  br label %do.cond32, !dbg !1346

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !1346

do.end33:                                         ; preds = %do.cond32
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #15, !dbg !1343
  store i32 %call35, ptr %tmp34, align 4, !dbg !1346
  %28 = load i32, ptr %tmp34, align 4, !dbg !1343
  br label %bad, !dbg !1348

if.end36:                                         ; preds = %for.body
  %29 = load i32, ptr %ebitmap_start, align 4, !dbg !1349
  store i32 %29, ptr %startbit, align 4, !dbg !1350
  %30 = load i32, ptr %startbit, align 4, !dbg !1351
  %31 = load i32, ptr %mapunit, align 4, !dbg !1353
  %sub37 = sub i32 %31, 1, !dbg !1354
  %and = and i32 %30, %sub37, !dbg !1355
  %tobool38 = icmp ne i32 %and, 0, !dbg !1355
  br i1 %tobool38, label %if.then39, label %if.end45, !dbg !1356

if.then39:                                        ; preds = %if.end36
  br label %do.body40, !dbg !1357

do.body40:                                        ; preds = %if.then39
  br label %do.cond41, !dbg !1360

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !1360

do.end42:                                         ; preds = %do.cond41
  %32 = load i32, ptr %startbit, align 4, !dbg !1357
  %33 = load i32, ptr %mapunit, align 4, !dbg !1357
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %32, i32 noundef %33) #15, !dbg !1357
  store i32 %call44, ptr %tmp43, align 4, !dbg !1360
  %34 = load i32, ptr %tmp43, align 4, !dbg !1357
  br label %bad, !dbg !1362

if.end45:                                         ; preds = %if.end36
  %35 = load i32, ptr %startbit, align 4, !dbg !1363
  %36 = load ptr, ptr %e.addr, align 8, !dbg !1365
  %highbit46 = getelementptr inbounds %struct.ebitmap, ptr %36, i32 0, i32 1, !dbg !1366
  %37 = load i32, ptr %highbit46, align 8, !dbg !1366
  %38 = load i32, ptr %mapunit, align 4, !dbg !1367
  %sub47 = sub i32 %37, %38, !dbg !1368
  %cmp48 = icmp ugt i32 %35, %sub47, !dbg !1369
  br i1 %cmp48, label %if.then50, label %if.end58, !dbg !1370

if.then50:                                        ; preds = %if.end45
  br label %do.body51, !dbg !1371

do.body51:                                        ; preds = %if.then50
  br label %do.cond52, !dbg !1374

do.cond52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !1374

do.end53:                                         ; preds = %do.cond52
  %39 = load i32, ptr %startbit, align 4, !dbg !1371
  %40 = load ptr, ptr %e.addr, align 8, !dbg !1371
  %highbit55 = getelementptr inbounds %struct.ebitmap, ptr %40, i32 0, i32 1, !dbg !1371
  %41 = load i32, ptr %highbit55, align 8, !dbg !1371
  %42 = load i32, ptr %mapunit, align 4, !dbg !1371
  %sub56 = sub i32 %41, %42, !dbg !1371
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i32 noundef %39, i32 noundef %sub56) #15, !dbg !1371
  store i32 %call57, ptr %tmp54, align 4, !dbg !1374
  %43 = load i32, ptr %tmp54, align 4, !dbg !1371
  br label %bad, !dbg !1376

if.end58:                                         ; preds = %if.end45
  %44 = load ptr, ptr %n, align 8, !dbg !1377
  %tobool59 = icmp ne ptr %44, null, !dbg !1377
  br i1 %tobool59, label %lor.lhs.false, label %if.then66, !dbg !1378

lor.lhs.false:                                    ; preds = %if.end58
  %45 = load i32, ptr %startbit, align 4, !dbg !1379
  %conv60 = zext i32 %45 to i64, !dbg !1379
  %46 = load ptr, ptr %n, align 8, !dbg !1380
  %startbit61 = getelementptr inbounds %struct.ebitmap_node, ptr %46, i32 0, i32 2, !dbg !1381
  %47 = load i32, ptr %startbit61, align 8, !dbg !1381
  %conv62 = zext i32 %47 to i64, !dbg !1380
  %add63 = add i64 %conv62, 384, !dbg !1382
  %cmp64 = icmp uge i64 %conv60, %add63, !dbg !1383
  br i1 %cmp64, label %if.then66, label %if.else87, !dbg !1384

if.then66:                                        ; preds = %lor.lhs.false, %if.end58
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp67) #12, !dbg !1385
  call void @llvm.dbg.declare(metadata ptr %tmp67, metadata !1247, metadata !DIExpression()), !dbg !1386
  %48 = load ptr, ptr @ebitmap_node_cachep, align 8, !dbg !1387
  %call68 = call ptr @kmem_cache_zalloc(ptr noundef %48, i32 noundef 3264) #13, !dbg !1388
  store ptr %call68, ptr %tmp67, align 8, !dbg !1389
  %49 = load ptr, ptr %tmp67, align 8, !dbg !1390
  %tobool69 = icmp ne ptr %49, null, !dbg !1390
  br i1 %tobool69, label %if.end76, label %if.then70, !dbg !1392

if.then70:                                        ; preds = %if.then66
  br label %do.body71, !dbg !1393

do.body71:                                        ; preds = %if.then70
  br label %do.cond72, !dbg !1396

do.cond72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1396

do.end73:                                         ; preds = %do.cond72
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #15, !dbg !1393
  store i32 %call75, ptr %tmp74, align 4, !dbg !1396
  %50 = load i32, ptr %tmp74, align 4, !dbg !1393
  store i32 -12, ptr %rc, align 4, !dbg !1398
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1399

if.end76:                                         ; preds = %if.then66
  %51 = load i32, ptr %startbit, align 4, !dbg !1400
  %conv77 = zext i32 %51 to i64, !dbg !1400
  %52 = load i32, ptr %startbit, align 4, !dbg !1401
  %conv78 = zext i32 %52 to i64, !dbg !1401
  %rem79 = urem i64 %conv78, 384, !dbg !1402
  %sub80 = sub i64 %conv77, %rem79, !dbg !1403
  %conv81 = trunc i64 %sub80 to i32, !dbg !1400
  %53 = load ptr, ptr %tmp67, align 8, !dbg !1404
  %startbit82 = getelementptr inbounds %struct.ebitmap_node, ptr %53, i32 0, i32 2, !dbg !1405
  store i32 %conv81, ptr %startbit82, align 8, !dbg !1406
  %54 = load ptr, ptr %n, align 8, !dbg !1407
  %tobool83 = icmp ne ptr %54, null, !dbg !1407
  br i1 %tobool83, label %if.then84, label %if.else, !dbg !1409

if.then84:                                        ; preds = %if.end76
  %55 = load ptr, ptr %tmp67, align 8, !dbg !1410
  %56 = load ptr, ptr %n, align 8, !dbg !1411
  %next = getelementptr inbounds %struct.ebitmap_node, ptr %56, i32 0, i32 0, !dbg !1412
  store ptr %55, ptr %next, align 8, !dbg !1413
  br label %if.end86, !dbg !1411

if.else:                                          ; preds = %if.end76
  %57 = load ptr, ptr %tmp67, align 8, !dbg !1414
  %58 = load ptr, ptr %e.addr, align 8, !dbg !1415
  %node85 = getelementptr inbounds %struct.ebitmap, ptr %58, i32 0, i32 0, !dbg !1416
  store ptr %57, ptr %node85, align 8, !dbg !1417
  br label %if.end86

if.end86:                                         ; preds = %if.else, %if.then84
  %59 = load ptr, ptr %tmp67, align 8, !dbg !1418
  store ptr %59, ptr %n, align 8, !dbg !1419
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1420
  br label %cleanup, !dbg !1420

cleanup:                                          ; preds = %do.end73, %if.end86
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp67) #12, !dbg !1420
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup120 [
    i32 0, label %cleanup.cont
    i32 5, label %bad
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end99, !dbg !1421

if.else87:                                        ; preds = %lor.lhs.false
  %60 = load i32, ptr %startbit, align 4, !dbg !1422
  %61 = load ptr, ptr %n, align 8, !dbg !1424
  %startbit88 = getelementptr inbounds %struct.ebitmap_node, ptr %61, i32 0, i32 2, !dbg !1425
  %62 = load i32, ptr %startbit88, align 8, !dbg !1425
  %cmp89 = icmp ule i32 %60, %62, !dbg !1426
  br i1 %cmp89, label %if.then91, label %if.end98, !dbg !1427

if.then91:                                        ; preds = %if.else87
  br label %do.body92, !dbg !1428

do.body92:                                        ; preds = %if.then91
  br label %do.cond93, !dbg !1431

do.cond93:                                        ; preds = %do.body92
  br label %do.end94, !dbg !1431

do.end94:                                         ; preds = %do.cond93
  %63 = load i32, ptr %startbit, align 4, !dbg !1428
  %64 = load ptr, ptr %n, align 8, !dbg !1428
  %startbit96 = getelementptr inbounds %struct.ebitmap_node, ptr %64, i32 0, i32 2, !dbg !1428
  %65 = load i32, ptr %startbit96, align 8, !dbg !1428
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i32 noundef %63, i32 noundef %65) #15, !dbg !1428
  store i32 %call97, ptr %tmp95, align 4, !dbg !1431
  %66 = load i32, ptr %tmp95, align 4, !dbg !1428
  br label %bad, !dbg !1433

if.end98:                                         ; preds = %if.else87
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %cleanup.cont
  %67 = load ptr, ptr %fp.addr, align 8, !dbg !1434
  %call100 = call i32 @next_entry(ptr noundef %mapbits, ptr noundef %67, i64 noundef 8) #13, !dbg !1435
  store i32 %call100, ptr %rc, align 4, !dbg !1436
  %68 = load i32, ptr %rc, align 4, !dbg !1437
  %cmp101 = icmp slt i32 %68, 0, !dbg !1439
  br i1 %cmp101, label %if.then103, label %if.end109, !dbg !1440

if.then103:                                       ; preds = %if.end99
  br label %do.body104, !dbg !1441

do.body104:                                       ; preds = %if.then103
  br label %do.cond105, !dbg !1444

do.cond105:                                       ; preds = %do.body104
  br label %do.end106, !dbg !1444

do.end106:                                        ; preds = %do.cond105
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #15, !dbg !1441
  store i32 %call108, ptr %tmp107, align 4, !dbg !1444
  %69 = load i32, ptr %tmp107, align 4, !dbg !1441
  br label %bad, !dbg !1446

if.end109:                                        ; preds = %if.end99
  %70 = load i64, ptr %mapbits, align 8, !dbg !1447
  store i64 %70, ptr %map, align 8, !dbg !1448
  %71 = load i32, ptr %startbit, align 4, !dbg !1449
  %72 = load ptr, ptr %n, align 8, !dbg !1450
  %startbit110 = getelementptr inbounds %struct.ebitmap_node, ptr %72, i32 0, i32 2, !dbg !1451
  %73 = load i32, ptr %startbit110, align 8, !dbg !1451
  %sub111 = sub i32 %71, %73, !dbg !1452
  %div = udiv i32 %sub111, 64, !dbg !1453
  store i32 %div, ptr %index, align 4, !dbg !1454
  br label %while.cond, !dbg !1455

while.cond:                                       ; preds = %while.body, %if.end109
  %74 = load i64, ptr %map, align 8, !dbg !1456
  %tobool112 = icmp ne i64 %74, 0, !dbg !1455
  br i1 %tobool112, label %while.body, label %while.end, !dbg !1455

while.body:                                       ; preds = %while.cond
  %75 = load i64, ptr %map, align 8, !dbg !1457
  %and113 = and i64 %75, -1, !dbg !1459
  %76 = load ptr, ptr %n, align 8, !dbg !1460
  %maps = getelementptr inbounds %struct.ebitmap_node, ptr %76, i32 0, i32 1, !dbg !1461
  %77 = load i32, ptr %index, align 4, !dbg !1462
  %inc = add i32 %77, 1, !dbg !1462
  store i32 %inc, ptr %index, align 4, !dbg !1462
  %idxprom = zext i32 %77 to i64, !dbg !1460
  %arrayidx114 = getelementptr [6 x i64], ptr %maps, i64 0, i64 %idxprom, !dbg !1460
  store i64 %and113, ptr %arrayidx114, align 8, !dbg !1463
  %78 = load i64, ptr %map, align 8, !dbg !1464
  %shr = lshr i64 %78, 32, !dbg !1464
  %shr115 = lshr i64 %shr, 32, !dbg !1464
  store i64 %shr115, ptr %map, align 8, !dbg !1465
  br label %while.cond, !dbg !1455, !llvm.loop !1466

while.end:                                        ; preds = %while.cond
  br label %for.inc, !dbg !1468

for.inc:                                          ; preds = %while.end
  %79 = load i32, ptr %i, align 4, !dbg !1469
  %inc116 = add i32 %79, 1, !dbg !1469
  store i32 %inc116, ptr %i, align 4, !dbg !1469
  br label %for.cond, !dbg !1470, !llvm.loop !1471

for.end:                                          ; preds = %for.cond
  br label %ok, !dbg !1472

ok:                                               ; preds = %for.end, %if.then18
  call void @llvm.dbg.label(metadata !1253), !dbg !1473
  store i32 0, ptr %rc, align 4, !dbg !1474
  br label %out, !dbg !1475

out:                                              ; preds = %if.end119, %ok, %if.then
  call void @llvm.dbg.label(metadata !1254), !dbg !1476
  %80 = load i32, ptr %rc, align 4, !dbg !1477
  store i32 %80, ptr %retval, align 4, !dbg !1478
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup120, !dbg !1478

bad:                                              ; preds = %cleanup, %do.end106, %do.end94, %do.end53, %do.end42, %do.end33, %if.then23, %do.end
  call void @llvm.dbg.label(metadata !1255), !dbg !1479
  %81 = load i32, ptr %rc, align 4, !dbg !1480
  %tobool117 = icmp ne i32 %81, 0, !dbg !1480
  br i1 %tobool117, label %if.end119, label %if.then118, !dbg !1482

if.then118:                                       ; preds = %bad
  store i32 -22, ptr %rc, align 4, !dbg !1483
  br label %if.end119, !dbg !1484

if.end119:                                        ; preds = %if.then118, %bad
  %82 = load ptr, ptr %e.addr, align 8, !dbg !1485
  call void @ebitmap_destroy(ptr noundef %82) #13, !dbg !1486
  br label %out, !dbg !1487

cleanup120:                                       ; preds = %out, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1488
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #12, !dbg !1488
  call void @llvm.lifetime.end.p0(i64 12, ptr %buf) #12, !dbg !1488
  call void @llvm.lifetime.end.p0(i64 8, ptr %mapbits) #12, !dbg !1488
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #12, !dbg !1488
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebitmap_start) #12, !dbg !1488
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #12, !dbg !1488
  call void @llvm.lifetime.end.p0(i64 4, ptr %startbit) #12, !dbg !1488
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #12, !dbg !1488
  call void @llvm.lifetime.end.p0(i64 4, ptr %mapunit) #12, !dbg !1488
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #12, !dbg !1488
  %83 = load i32, ptr %retval, align 4, !dbg !1488
  ret i32 %83, !dbg !1488
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @next_entry(ptr noundef %buf, ptr noundef %fp, i64 noundef %bytes) #4 align 16 !dbg !1489 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !1501, metadata !DIExpression()), !dbg !1504
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !1502, metadata !DIExpression()), !dbg !1505
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !1503, metadata !DIExpression()), !dbg !1506
  %0 = load i64, ptr %bytes.addr, align 8, !dbg !1507
  %1 = load ptr, ptr %fp.addr, align 8, !dbg !1509
  %len = getelementptr inbounds %struct.policy_file, ptr %1, i32 0, i32 1, !dbg !1510
  %2 = load i64, ptr %len, align 8, !dbg !1510
  %cmp = icmp ugt i64 %0, %2, !dbg !1511
  br i1 %cmp, label %if.then, label %if.end, !dbg !1512

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !1513
  br label %return, !dbg !1513

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !1514
  %4 = load ptr, ptr %fp.addr, align 8, !dbg !1515
  %data = getelementptr inbounds %struct.policy_file, ptr %4, i32 0, i32 0, !dbg !1516
  %5 = load ptr, ptr %data, align 8, !dbg !1516
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !1517
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %5, i64 %6, i1 false), !dbg !1518
  %7 = load i64, ptr %bytes.addr, align 8, !dbg !1519
  %8 = load ptr, ptr %fp.addr, align 8, !dbg !1520
  %data1 = getelementptr inbounds %struct.policy_file, ptr %8, i32 0, i32 0, !dbg !1521
  %9 = load ptr, ptr %data1, align 8, !dbg !1522
  %add.ptr = getelementptr i8, ptr %9, i64 %7, !dbg !1522
  store ptr %add.ptr, ptr %data1, align 8, !dbg !1522
  %10 = load i64, ptr %bytes.addr, align 8, !dbg !1523
  %11 = load ptr, ptr %fp.addr, align 8, !dbg !1524
  %len2 = getelementptr inbounds %struct.policy_file, ptr %11, i32 0, i32 1, !dbg !1525
  %12 = load i64, ptr %len2, align 8, !dbg !1526
  %sub = sub i64 %12, %10, !dbg !1526
  store i64 %sub, ptr %len2, align 8, !dbg !1526
  store i32 0, ptr %retval, align 4, !dbg !1527
  br label %return, !dbg !1527

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, ptr %retval, align 4, !dbg !1528
  ret i32 %13, !dbg !1528
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1529 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ebitmap_write(ptr noundef %e, ptr noundef %fp) #0 align 16 !dbg !1535 {
entry:
  %retval = alloca i32, align 4
  %e.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  %count = alloca i32, align 4
  %buf = alloca [3 x i32], align 4
  %map = alloca i64, align 8
  %bit = alloca i32, align 4
  %last_bit = alloca i32, align 4
  %last_startbit = alloca i32, align 4
  %rc = alloca i32, align 4
  %__x = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__x2 = alloca i32, align 4
  %tmp3 = alloca i64, align 8
  %__y = alloca i64, align 8
  %tmp8 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__x25 = alloca i32, align 4
  %tmp26 = alloca i32, align 4
  %buf64 = alloca [1 x i64], align 8
  %__x34 = alloca i32, align 4
  %tmp35 = alloca i64, align 8
  %__x55 = alloca i32, align 4
  %tmp56 = alloca i64, align 8
  %buf6471 = alloca [1 x i64], align 8
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !1539, metadata !DIExpression()), !dbg !1580
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !1540, metadata !DIExpression()), !dbg !1581
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #12, !dbg !1582
  call void @llvm.dbg.declare(metadata ptr %n, metadata !1541, metadata !DIExpression()), !dbg !1583
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #12, !dbg !1584
  call void @llvm.dbg.declare(metadata ptr %count, metadata !1542, metadata !DIExpression()), !dbg !1585
  call void @llvm.lifetime.start.p0(i64 12, ptr %buf) #12, !dbg !1586
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !1543, metadata !DIExpression()), !dbg !1587
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #12, !dbg !1588
  call void @llvm.dbg.declare(metadata ptr %map, metadata !1544, metadata !DIExpression()), !dbg !1589
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit) #12, !dbg !1590
  call void @llvm.dbg.declare(metadata ptr %bit, metadata !1545, metadata !DIExpression()), !dbg !1591
  call void @llvm.lifetime.start.p0(i64 4, ptr %last_bit) #12, !dbg !1590
  call void @llvm.dbg.declare(metadata ptr %last_bit, metadata !1546, metadata !DIExpression()), !dbg !1592
  call void @llvm.lifetime.start.p0(i64 4, ptr %last_startbit) #12, !dbg !1590
  call void @llvm.dbg.declare(metadata ptr %last_startbit, metadata !1547, metadata !DIExpression()), !dbg !1593
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #12, !dbg !1590
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1548, metadata !DIExpression()), !dbg !1594
  %arrayidx = getelementptr [3 x i32], ptr %buf, i64 0, i64 0, !dbg !1595
  store i32 64, ptr %arrayidx, align 4, !dbg !1596
  store i32 0, ptr %count, align 4, !dbg !1597
  store i32 0, ptr %last_bit, align 4, !dbg !1598
  store i32 -1, ptr %last_startbit, align 4, !dbg !1599
  %0 = load ptr, ptr %e.addr, align 8, !dbg !1600
  %call = call i32 @ebitmap_start_positive(ptr noundef %0, ptr noundef %n) #13, !dbg !1600
  store i32 %call, ptr %bit, align 4, !dbg !1600
  br label %for.cond, !dbg !1600

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %bit, align 4, !dbg !1601
  %2 = load ptr, ptr %e.addr, align 8, !dbg !1601
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %2, i32 0, i32 1, !dbg !1601
  %3 = load i32, ptr %highbit, align 8, !dbg !1601
  %cmp = icmp ult i32 %1, %3, !dbg !1601
  br i1 %cmp, label %for.body, label %for.end, !dbg !1600

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #12, !dbg !1602
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !1549, metadata !DIExpression()), !dbg !1602
  %4 = load i32, ptr %bit, align 4, !dbg !1602
  store i32 %4, ptr %__x, align 4, !dbg !1602
  %5 = load i32, ptr %__x, align 4, !dbg !1602
  %6 = load i32, ptr %__x, align 4, !dbg !1602
  %rem = srem i32 %6, 64, !dbg !1602
  %sub = sub i32 %5, %rem, !dbg !1602
  store i32 %sub, ptr %tmp, align 4, !dbg !1602
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #12, !dbg !1603
  %7 = load i32, ptr %tmp, align 4, !dbg !1602
  %8 = load i32, ptr %last_startbit, align 4, !dbg !1604
  %cmp1 = icmp sgt i32 %7, %8, !dbg !1605
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1606

if.then:                                          ; preds = %for.body
  %9 = load i32, ptr %count, align 4, !dbg !1607
  %inc = add i32 %9, 1, !dbg !1607
  store i32 %inc, ptr %count, align 4, !dbg !1607
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x2) #12, !dbg !1608
  call void @llvm.dbg.declare(metadata ptr %__x2, metadata !1555, metadata !DIExpression()), !dbg !1608
  %10 = load i32, ptr %bit, align 4, !dbg !1608
  store i32 %10, ptr %__x2, align 4, !dbg !1608
  %11 = load i32, ptr %__x2, align 4, !dbg !1608
  %conv = sext i32 %11 to i64, !dbg !1608
  %12 = load i32, ptr %__x2, align 4, !dbg !1608
  %conv4 = sext i32 %12 to i64, !dbg !1608
  %rem5 = urem i64 %conv4, 64, !dbg !1608
  %sub6 = sub i64 %conv, %rem5, !dbg !1608
  store i64 %sub6, ptr %tmp3, align 8, !dbg !1608
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x2) #12, !dbg !1609
  %13 = load i64, ptr %tmp3, align 8, !dbg !1608
  %conv7 = trunc i64 %13 to i32, !dbg !1609
  store i32 %conv7, ptr %last_startbit, align 4, !dbg !1610
  br label %if.end, !dbg !1611

if.end:                                           ; preds = %if.then, %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__y) #12, !dbg !1612
  call void @llvm.dbg.declare(metadata ptr %__y, metadata !1558, metadata !DIExpression()), !dbg !1612
  store i64 64, ptr %__y, align 8, !dbg !1612
  %14 = load i32, ptr %bit, align 4, !dbg !1612
  %add = add i32 %14, 1, !dbg !1612
  %conv9 = sext i32 %add to i64, !dbg !1612
  %15 = load i64, ptr %__y, align 8, !dbg !1612
  %sub10 = sub i64 %15, 1, !dbg !1612
  %add11 = add i64 %conv9, %sub10, !dbg !1612
  %16 = load i64, ptr %__y, align 8, !dbg !1612
  %div = udiv i64 %add11, %16, !dbg !1612
  %17 = load i64, ptr %__y, align 8, !dbg !1612
  %mul = mul i64 %div, %17, !dbg !1612
  store i64 %mul, ptr %tmp8, align 8, !dbg !1612
  call void @llvm.lifetime.end.p0(i64 8, ptr %__y) #12, !dbg !1613
  %18 = load i64, ptr %tmp8, align 8, !dbg !1612
  %conv12 = trunc i64 %18 to i32, !dbg !1613
  store i32 %conv12, ptr %last_bit, align 4, !dbg !1614
  br label %for.inc, !dbg !1615

for.inc:                                          ; preds = %if.end
  %19 = load ptr, ptr %e.addr, align 8, !dbg !1601
  %20 = load i32, ptr %bit, align 4, !dbg !1601
  %call13 = call i32 @ebitmap_next_positive(ptr noundef %19, ptr noundef %n, i32 noundef %20) #13, !dbg !1601
  store i32 %call13, ptr %bit, align 4, !dbg !1601
  br label %for.cond, !dbg !1601, !llvm.loop !1616

for.end:                                          ; preds = %for.cond
  %21 = load i32, ptr %last_bit, align 4, !dbg !1618
  %arrayidx14 = getelementptr [3 x i32], ptr %buf, i64 0, i64 1, !dbg !1619
  store i32 %21, ptr %arrayidx14, align 4, !dbg !1620
  %22 = load i32, ptr %count, align 4, !dbg !1621
  %arrayidx15 = getelementptr [3 x i32], ptr %buf, i64 0, i64 2, !dbg !1622
  store i32 %22, ptr %arrayidx15, align 4, !dbg !1623
  %arraydecay = getelementptr inbounds [3 x i32], ptr %buf, i64 0, i64 0, !dbg !1624
  %23 = load ptr, ptr %fp.addr, align 8, !dbg !1625
  %call16 = call i32 @put_entry(ptr noundef %arraydecay, i64 noundef 4, i64 noundef 3, ptr noundef %23) #13, !dbg !1626
  store i32 %call16, ptr %rc, align 4, !dbg !1627
  %24 = load i32, ptr %rc, align 4, !dbg !1628
  %tobool = icmp ne i32 %24, 0, !dbg !1628
  br i1 %tobool, label %if.then17, label %if.end18, !dbg !1630

if.then17:                                        ; preds = %for.end
  %25 = load i32, ptr %rc, align 4, !dbg !1631
  store i32 %25, ptr %retval, align 4, !dbg !1632
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup88, !dbg !1632

if.end18:                                         ; preds = %for.end
  store i64 0, ptr %map, align 8, !dbg !1633
  store i32 -2147483648, ptr %last_startbit, align 4, !dbg !1634
  %26 = load ptr, ptr %e.addr, align 8, !dbg !1635
  %call19 = call i32 @ebitmap_start_positive(ptr noundef %26, ptr noundef %n) #13, !dbg !1635
  store i32 %call19, ptr %bit, align 4, !dbg !1635
  br label %for.cond20, !dbg !1635

for.cond20:                                       ; preds = %for.inc66, %if.end18
  %27 = load i32, ptr %bit, align 4, !dbg !1636
  %28 = load ptr, ptr %e.addr, align 8, !dbg !1636
  %highbit21 = getelementptr inbounds %struct.ebitmap, ptr %28, i32 0, i32 1, !dbg !1636
  %29 = load i32, ptr %highbit21, align 8, !dbg !1636
  %cmp22 = icmp ult i32 %27, %29, !dbg !1636
  br i1 %cmp22, label %for.body24, label %for.end68, !dbg !1635

for.body24:                                       ; preds = %for.cond20
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x25) #12, !dbg !1637
  call void @llvm.dbg.declare(metadata ptr %__x25, metadata !1560, metadata !DIExpression()), !dbg !1637
  %30 = load i32, ptr %bit, align 4, !dbg !1637
  store i32 %30, ptr %__x25, align 4, !dbg !1637
  %31 = load i32, ptr %__x25, align 4, !dbg !1637
  %32 = load i32, ptr %__x25, align 4, !dbg !1637
  %rem27 = srem i32 %32, 64, !dbg !1637
  %sub28 = sub i32 %31, %rem27, !dbg !1637
  store i32 %sub28, ptr %tmp26, align 4, !dbg !1637
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x25) #12, !dbg !1638
  %33 = load i32, ptr %tmp26, align 4, !dbg !1637
  %34 = load i32, ptr %last_startbit, align 4, !dbg !1639
  %cmp29 = icmp sgt i32 %33, %34, !dbg !1640
  br i1 %cmp29, label %if.then31, label %if.end62, !dbg !1641

if.then31:                                        ; preds = %for.body24
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf64) #12, !dbg !1642
  call void @llvm.dbg.declare(metadata ptr %buf64, metadata !1566, metadata !DIExpression()), !dbg !1643
  %35 = load i64, ptr %map, align 8, !dbg !1644
  %tobool32 = icmp ne i64 %35, 0, !dbg !1644
  br i1 %tobool32, label %if.end42, label %if.then33, !dbg !1645

if.then33:                                        ; preds = %if.then31
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x34) #12, !dbg !1646
  call void @llvm.dbg.declare(metadata ptr %__x34, metadata !1571, metadata !DIExpression()), !dbg !1646
  %36 = load i32, ptr %bit, align 4, !dbg !1646
  store i32 %36, ptr %__x34, align 4, !dbg !1646
  %37 = load i32, ptr %__x34, align 4, !dbg !1646
  %conv36 = sext i32 %37 to i64, !dbg !1646
  %38 = load i32, ptr %__x34, align 4, !dbg !1646
  %conv37 = sext i32 %38 to i64, !dbg !1646
  %rem38 = urem i64 %conv37, 64, !dbg !1646
  %sub39 = sub i64 %conv36, %rem38, !dbg !1646
  store i64 %sub39, ptr %tmp35, align 8, !dbg !1646
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x34) #12, !dbg !1647
  %39 = load i64, ptr %tmp35, align 8, !dbg !1646
  %conv40 = trunc i64 %39 to i32, !dbg !1647
  store i32 %conv40, ptr %last_startbit, align 4, !dbg !1648
  %40 = load i32, ptr %bit, align 4, !dbg !1649
  %41 = load i32, ptr %last_startbit, align 4, !dbg !1650
  %sub41 = sub i32 %40, %41, !dbg !1651
  %sh_prom = zext i32 %sub41 to i64, !dbg !1652
  %shl = shl i64 1, %sh_prom, !dbg !1652
  store i64 %shl, ptr %map, align 8, !dbg !1653
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1654

if.end42:                                         ; preds = %if.then31
  %42 = load i32, ptr %last_startbit, align 4, !dbg !1655
  %arrayidx43 = getelementptr [3 x i32], ptr %buf, i64 0, i64 0, !dbg !1656
  store i32 %42, ptr %arrayidx43, align 4, !dbg !1657
  %arraydecay44 = getelementptr inbounds [3 x i32], ptr %buf, i64 0, i64 0, !dbg !1658
  %43 = load ptr, ptr %fp.addr, align 8, !dbg !1659
  %call45 = call i32 @put_entry(ptr noundef %arraydecay44, i64 noundef 4, i64 noundef 1, ptr noundef %43) #13, !dbg !1660
  store i32 %call45, ptr %rc, align 4, !dbg !1661
  %44 = load i32, ptr %rc, align 4, !dbg !1662
  %tobool46 = icmp ne i32 %44, 0, !dbg !1662
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !1664

if.then47:                                        ; preds = %if.end42
  %45 = load i32, ptr %rc, align 4, !dbg !1665
  store i32 %45, ptr %retval, align 4, !dbg !1666
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1666

if.end48:                                         ; preds = %if.end42
  %46 = load i64, ptr %map, align 8, !dbg !1667
  %arrayidx49 = getelementptr [1 x i64], ptr %buf64, i64 0, i64 0, !dbg !1668
  store i64 %46, ptr %arrayidx49, align 8, !dbg !1669
  %arraydecay50 = getelementptr inbounds [1 x i64], ptr %buf64, i64 0, i64 0, !dbg !1670
  %47 = load ptr, ptr %fp.addr, align 8, !dbg !1671
  %call51 = call i32 @put_entry(ptr noundef %arraydecay50, i64 noundef 8, i64 noundef 1, ptr noundef %47) #13, !dbg !1672
  store i32 %call51, ptr %rc, align 4, !dbg !1673
  %48 = load i32, ptr %rc, align 4, !dbg !1674
  %tobool52 = icmp ne i32 %48, 0, !dbg !1674
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !1676

if.then53:                                        ; preds = %if.end48
  %49 = load i32, ptr %rc, align 4, !dbg !1677
  store i32 %49, ptr %retval, align 4, !dbg !1678
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1678

if.end54:                                         ; preds = %if.end48
  store i64 0, ptr %map, align 8, !dbg !1679
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x55) #12, !dbg !1680
  call void @llvm.dbg.declare(metadata ptr %__x55, metadata !1575, metadata !DIExpression()), !dbg !1680
  %50 = load i32, ptr %bit, align 4, !dbg !1680
  store i32 %50, ptr %__x55, align 4, !dbg !1680
  %51 = load i32, ptr %__x55, align 4, !dbg !1680
  %conv57 = sext i32 %51 to i64, !dbg !1680
  %52 = load i32, ptr %__x55, align 4, !dbg !1680
  %conv58 = sext i32 %52 to i64, !dbg !1680
  %rem59 = urem i64 %conv58, 64, !dbg !1680
  %sub60 = sub i64 %conv57, %rem59, !dbg !1680
  store i64 %sub60, ptr %tmp56, align 8, !dbg !1680
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x55) #12, !dbg !1681
  %53 = load i64, ptr %tmp56, align 8, !dbg !1680
  %conv61 = trunc i64 %53 to i32, !dbg !1681
  store i32 %conv61, ptr %last_startbit, align 4, !dbg !1682
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1683
  br label %cleanup, !dbg !1683

cleanup:                                          ; preds = %if.end54, %if.then53, %if.then47, %if.then33
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf64) #12, !dbg !1683
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup88 [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc66
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end62, !dbg !1684

if.end62:                                         ; preds = %cleanup.cont, %for.body24
  %54 = load i32, ptr %bit, align 4, !dbg !1685
  %55 = load i32, ptr %last_startbit, align 4, !dbg !1686
  %sub63 = sub i32 %54, %55, !dbg !1687
  %sh_prom64 = zext i32 %sub63 to i64, !dbg !1688
  %shl65 = shl i64 1, %sh_prom64, !dbg !1688
  %56 = load i64, ptr %map, align 8, !dbg !1689
  %or = or i64 %56, %shl65, !dbg !1689
  store i64 %or, ptr %map, align 8, !dbg !1689
  br label %for.inc66, !dbg !1690

for.inc66:                                        ; preds = %if.end62, %cleanup
  %57 = load ptr, ptr %e.addr, align 8, !dbg !1636
  %58 = load i32, ptr %bit, align 4, !dbg !1636
  %call67 = call i32 @ebitmap_next_positive(ptr noundef %57, ptr noundef %n, i32 noundef %58) #13, !dbg !1636
  store i32 %call67, ptr %bit, align 4, !dbg !1636
  br label %for.cond20, !dbg !1636, !llvm.loop !1691

for.end68:                                        ; preds = %for.cond20
  %59 = load i64, ptr %map, align 8, !dbg !1693
  %tobool69 = icmp ne i64 %59, 0, !dbg !1693
  br i1 %tobool69, label %if.then70, label %if.end87, !dbg !1694

if.then70:                                        ; preds = %for.end68
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf6471) #12, !dbg !1695
  call void @llvm.dbg.declare(metadata ptr %buf6471, metadata !1577, metadata !DIExpression()), !dbg !1696
  %60 = load i32, ptr %last_startbit, align 4, !dbg !1697
  %arrayidx72 = getelementptr [3 x i32], ptr %buf, i64 0, i64 0, !dbg !1698
  store i32 %60, ptr %arrayidx72, align 4, !dbg !1699
  %arraydecay73 = getelementptr inbounds [3 x i32], ptr %buf, i64 0, i64 0, !dbg !1700
  %61 = load ptr, ptr %fp.addr, align 8, !dbg !1701
  %call74 = call i32 @put_entry(ptr noundef %arraydecay73, i64 noundef 4, i64 noundef 1, ptr noundef %61) #13, !dbg !1702
  store i32 %call74, ptr %rc, align 4, !dbg !1703
  %62 = load i32, ptr %rc, align 4, !dbg !1704
  %tobool75 = icmp ne i32 %62, 0, !dbg !1704
  br i1 %tobool75, label %if.then76, label %if.end77, !dbg !1706

if.then76:                                        ; preds = %if.then70
  %63 = load i32, ptr %rc, align 4, !dbg !1707
  store i32 %63, ptr %retval, align 4, !dbg !1708
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup84, !dbg !1708

if.end77:                                         ; preds = %if.then70
  %64 = load i64, ptr %map, align 8, !dbg !1709
  %arrayidx78 = getelementptr [1 x i64], ptr %buf6471, i64 0, i64 0, !dbg !1710
  store i64 %64, ptr %arrayidx78, align 8, !dbg !1711
  %arraydecay79 = getelementptr inbounds [1 x i64], ptr %buf6471, i64 0, i64 0, !dbg !1712
  %65 = load ptr, ptr %fp.addr, align 8, !dbg !1713
  %call80 = call i32 @put_entry(ptr noundef %arraydecay79, i64 noundef 8, i64 noundef 1, ptr noundef %65) #13, !dbg !1714
  store i32 %call80, ptr %rc, align 4, !dbg !1715
  %66 = load i32, ptr %rc, align 4, !dbg !1716
  %tobool81 = icmp ne i32 %66, 0, !dbg !1716
  br i1 %tobool81, label %if.then82, label %if.end83, !dbg !1718

if.then82:                                        ; preds = %if.end77
  %67 = load i32, ptr %rc, align 4, !dbg !1719
  store i32 %67, ptr %retval, align 4, !dbg !1720
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup84, !dbg !1720

if.end83:                                         ; preds = %if.end77
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1721
  br label %cleanup84, !dbg !1721

cleanup84:                                        ; preds = %if.end83, %if.then82, %if.then76
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf6471) #12, !dbg !1721
  %cleanup.dest85 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest85, label %cleanup88 [
    i32 0, label %cleanup.cont86
  ]

cleanup.cont86:                                   ; preds = %cleanup84
  br label %if.end87, !dbg !1722

if.end87:                                         ; preds = %cleanup.cont86, %for.end68
  store i32 0, ptr %retval, align 4, !dbg !1723
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup88, !dbg !1723

cleanup88:                                        ; preds = %if.end87, %cleanup84, %cleanup, %if.then17
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #12, !dbg !1724
  call void @llvm.lifetime.end.p0(i64 4, ptr %last_startbit) #12, !dbg !1724
  call void @llvm.lifetime.end.p0(i64 4, ptr %last_bit) #12, !dbg !1724
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit) #12, !dbg !1724
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #12, !dbg !1724
  call void @llvm.lifetime.end.p0(i64 12, ptr %buf) #12, !dbg !1724
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #12, !dbg !1724
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #12, !dbg !1724
  %68 = load i32, ptr %retval, align 4, !dbg !1724
  ret i32 %68, !dbg !1724
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @put_entry(ptr noundef %buf, i64 noundef %bytes, i64 noundef %num, ptr noundef %fp) #4 align 16 !dbg !1725 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %num.addr = alloca i64, align 8
  %fp.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !1729, metadata !DIExpression()), !dbg !1734
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !1730, metadata !DIExpression()), !dbg !1735
  store i64 %num, ptr %num.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !1731, metadata !DIExpression()), !dbg !1736
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !1732, metadata !DIExpression()), !dbg !1737
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #12, !dbg !1738
  call void @llvm.dbg.declare(metadata ptr %len, metadata !1733, metadata !DIExpression()), !dbg !1739
  %0 = load i64, ptr %bytes.addr, align 8, !dbg !1740
  %1 = load i64, ptr %num.addr, align 8, !dbg !1740
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !1740
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !1740
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !1740
  store i64 %4, ptr %len, align 8, !dbg !1740
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #13, !dbg !1740
  %lnot = xor i1 %call, true, !dbg !1740
  %lnot1 = xor i1 %lnot, true, !dbg !1740
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1740
  %conv = sext i32 %lnot.ext to i64, !dbg !1740
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1740
  %tobool = icmp ne i64 %expval, 0, !dbg !1740
  br i1 %tobool, label %if.then, label %if.end, !dbg !1742

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !1743
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1743

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %len, align 8, !dbg !1744
  %6 = load ptr, ptr %fp.addr, align 8, !dbg !1746
  %len2 = getelementptr inbounds %struct.policy_file, ptr %6, i32 0, i32 1, !dbg !1747
  %7 = load i64, ptr %len2, align 8, !dbg !1747
  %cmp = icmp ugt i64 %5, %7, !dbg !1748
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !1749

if.then4:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !1750
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1750

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %fp.addr, align 8, !dbg !1751
  %data = getelementptr inbounds %struct.policy_file, ptr %8, i32 0, i32 0, !dbg !1752
  %9 = load ptr, ptr %data, align 8, !dbg !1752
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !1753
  %11 = load i64, ptr %len, align 8, !dbg !1754
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %10, i64 %11, i1 false), !dbg !1755
  %12 = load i64, ptr %len, align 8, !dbg !1756
  %13 = load ptr, ptr %fp.addr, align 8, !dbg !1757
  %data6 = getelementptr inbounds %struct.policy_file, ptr %13, i32 0, i32 0, !dbg !1758
  %14 = load ptr, ptr %data6, align 8, !dbg !1759
  %add.ptr = getelementptr i8, ptr %14, i64 %12, !dbg !1759
  store ptr %add.ptr, ptr %data6, align 8, !dbg !1759
  %15 = load i64, ptr %len, align 8, !dbg !1760
  %16 = load ptr, ptr %fp.addr, align 8, !dbg !1761
  %len7 = getelementptr inbounds %struct.policy_file, ptr %16, i32 0, i32 1, !dbg !1762
  %17 = load i64, ptr %len7, align 8, !dbg !1763
  %sub = sub i64 %17, %15, !dbg !1763
  store i64 %sub, ptr %len7, align 8, !dbg !1763
  store i32 0, ptr %retval, align 4, !dbg !1764
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1764

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #12, !dbg !1765
  %18 = load i32, ptr %retval, align 4, !dbg !1765
  ret i32 %18, !dbg !1765
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ebitmap_hash(ptr noundef %e, i32 noundef %hash) #0 align 16 !dbg !1766 {
entry:
  %e.addr = alloca ptr, align 8
  %hash.addr = alloca i32, align 4
  %node = alloca ptr, align 8
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !1770, metadata !DIExpression()), !dbg !1773
  store i32 %hash, ptr %hash.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !1771, metadata !DIExpression()), !dbg !1774
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #12, !dbg !1775
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1772, metadata !DIExpression()), !dbg !1776
  %0 = load ptr, ptr %e.addr, align 8, !dbg !1777
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %0, i32 0, i32 1, !dbg !1778
  %1 = load i32, ptr %highbit, align 8, !dbg !1778
  %2 = load i32, ptr %hash.addr, align 4, !dbg !1779
  %call = call i32 @jhash_1word(i32 noundef %1, i32 noundef %2) #13, !dbg !1780
  store i32 %call, ptr %hash.addr, align 4, !dbg !1781
  %3 = load ptr, ptr %e.addr, align 8, !dbg !1782
  %node1 = getelementptr inbounds %struct.ebitmap, ptr %3, i32 0, i32 0, !dbg !1784
  %4 = load ptr, ptr %node1, align 8, !dbg !1784
  store ptr %4, ptr %node, align 8, !dbg !1785
  br label %for.cond, !dbg !1786

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load ptr, ptr %node, align 8, !dbg !1787
  %tobool = icmp ne ptr %5, null, !dbg !1789
  br i1 %tobool, label %for.body, label %for.end, !dbg !1789

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %node, align 8, !dbg !1790
  %startbit = getelementptr inbounds %struct.ebitmap_node, ptr %6, i32 0, i32 2, !dbg !1792
  %7 = load i32, ptr %startbit, align 8, !dbg !1792
  %8 = load i32, ptr %hash.addr, align 4, !dbg !1793
  %call2 = call i32 @jhash_1word(i32 noundef %7, i32 noundef %8) #13, !dbg !1794
  store i32 %call2, ptr %hash.addr, align 4, !dbg !1795
  %9 = load ptr, ptr %node, align 8, !dbg !1796
  %maps = getelementptr inbounds %struct.ebitmap_node, ptr %9, i32 0, i32 1, !dbg !1797
  %arraydecay = getelementptr inbounds [6 x i64], ptr %maps, i64 0, i64 0, !dbg !1796
  %10 = load i32, ptr %hash.addr, align 4, !dbg !1798
  %call3 = call i32 @jhash(ptr noundef %arraydecay, i32 noundef 48, i32 noundef %10) #13, !dbg !1799
  store i32 %call3, ptr %hash.addr, align 4, !dbg !1800
  br label %for.inc, !dbg !1801

for.inc:                                          ; preds = %for.body
  %11 = load ptr, ptr %node, align 8, !dbg !1802
  %next = getelementptr inbounds %struct.ebitmap_node, ptr %11, i32 0, i32 0, !dbg !1803
  %12 = load ptr, ptr %next, align 8, !dbg !1803
  store ptr %12, ptr %node, align 8, !dbg !1804
  br label %for.cond, !dbg !1805, !llvm.loop !1806

for.end:                                          ; preds = %for.cond
  %13 = load i32, ptr %hash.addr, align 4, !dbg !1808
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #12, !dbg !1809
  ret i32 %13, !dbg !1810
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @jhash_1word(i32 noundef %a, i32 noundef %initval) #4 align 16 !dbg !1811 {
entry:
  %a.addr = alloca i32, align 4
  %initval.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1816, metadata !DIExpression()), !dbg !1818
  store i32 %initval, ptr %initval.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %initval.addr, metadata !1817, metadata !DIExpression()), !dbg !1819
  %0 = load i32, ptr %a.addr, align 4, !dbg !1820
  %1 = load i32, ptr %initval.addr, align 4, !dbg !1821
  %add = add i32 %1, -559038737, !dbg !1822
  %add1 = add i32 %add, 4, !dbg !1823
  %call = call i32 @__jhash_nwords(i32 noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %add1) #13, !dbg !1824
  ret i32 %call, !dbg !1825
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @jhash(ptr noundef %key, i32 noundef %length, i32 noundef %initval) #4 align 16 !dbg !1826 {
entry:
  %key.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %initval.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %k = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1830, metadata !DIExpression()), !dbg !1842
  store i32 %length, ptr %length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !1831, metadata !DIExpression()), !dbg !1843
  store i32 %initval, ptr %initval.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %initval.addr, metadata !1832, metadata !DIExpression()), !dbg !1844
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #12, !dbg !1845
  call void @llvm.dbg.declare(metadata ptr %a, metadata !1833, metadata !DIExpression()), !dbg !1846
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #12, !dbg !1845
  call void @llvm.dbg.declare(metadata ptr %b, metadata !1834, metadata !DIExpression()), !dbg !1847
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #12, !dbg !1845
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1835, metadata !DIExpression()), !dbg !1848
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #12, !dbg !1849
  call void @llvm.dbg.declare(metadata ptr %k, metadata !1836, metadata !DIExpression()), !dbg !1850
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1851
  store ptr %0, ptr %k, align 8, !dbg !1850
  %1 = load i32, ptr %length.addr, align 4, !dbg !1852
  %add = add i32 -559038737, %1, !dbg !1853
  %2 = load i32, ptr %initval.addr, align 4, !dbg !1854
  %add1 = add i32 %add, %2, !dbg !1855
  store i32 %add1, ptr %c, align 4, !dbg !1856
  store i32 %add1, ptr %b, align 4, !dbg !1857
  store i32 %add1, ptr %a, align 4, !dbg !1858
  br label %while.cond, !dbg !1859

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, ptr %length.addr, align 4, !dbg !1860
  %cmp = icmp ugt i32 %3, 12, !dbg !1861
  br i1 %cmp, label %while.body, label %while.end, !dbg !1859

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %k, align 8, !dbg !1862
  %call = call i32 @__get_unaligned_cpu32(ptr noundef %4) #13, !dbg !1864
  %5 = load i32, ptr %a, align 4, !dbg !1865
  %add2 = add i32 %5, %call, !dbg !1865
  store i32 %add2, ptr %a, align 4, !dbg !1865
  %6 = load ptr, ptr %k, align 8, !dbg !1866
  %add.ptr = getelementptr i8, ptr %6, i64 4, !dbg !1867
  %call3 = call i32 @__get_unaligned_cpu32(ptr noundef %add.ptr) #13, !dbg !1868
  %7 = load i32, ptr %b, align 4, !dbg !1869
  %add4 = add i32 %7, %call3, !dbg !1869
  store i32 %add4, ptr %b, align 4, !dbg !1869
  %8 = load ptr, ptr %k, align 8, !dbg !1870
  %add.ptr5 = getelementptr i8, ptr %8, i64 8, !dbg !1871
  %call6 = call i32 @__get_unaligned_cpu32(ptr noundef %add.ptr5) #13, !dbg !1872
  %9 = load i32, ptr %c, align 4, !dbg !1873
  %add7 = add i32 %9, %call6, !dbg !1873
  store i32 %add7, ptr %c, align 4, !dbg !1873
  %10 = load i32, ptr %c, align 4, !dbg !1874
  %11 = load i32, ptr %a, align 4, !dbg !1874
  %sub = sub i32 %11, %10, !dbg !1874
  store i32 %sub, ptr %a, align 4, !dbg !1874
  %12 = load i32, ptr %c, align 4, !dbg !1874
  %call8 = call i32 @rol32(i32 noundef %12, i32 noundef 4) #13, !dbg !1874
  %13 = load i32, ptr %a, align 4, !dbg !1874
  %xor = xor i32 %13, %call8, !dbg !1874
  store i32 %xor, ptr %a, align 4, !dbg !1874
  %14 = load i32, ptr %b, align 4, !dbg !1874
  %15 = load i32, ptr %c, align 4, !dbg !1874
  %add9 = add i32 %15, %14, !dbg !1874
  store i32 %add9, ptr %c, align 4, !dbg !1874
  %16 = load i32, ptr %a, align 4, !dbg !1874
  %17 = load i32, ptr %b, align 4, !dbg !1874
  %sub10 = sub i32 %17, %16, !dbg !1874
  store i32 %sub10, ptr %b, align 4, !dbg !1874
  %18 = load i32, ptr %a, align 4, !dbg !1874
  %call11 = call i32 @rol32(i32 noundef %18, i32 noundef 6) #13, !dbg !1874
  %19 = load i32, ptr %b, align 4, !dbg !1874
  %xor12 = xor i32 %19, %call11, !dbg !1874
  store i32 %xor12, ptr %b, align 4, !dbg !1874
  %20 = load i32, ptr %c, align 4, !dbg !1874
  %21 = load i32, ptr %a, align 4, !dbg !1874
  %add13 = add i32 %21, %20, !dbg !1874
  store i32 %add13, ptr %a, align 4, !dbg !1874
  %22 = load i32, ptr %b, align 4, !dbg !1874
  %23 = load i32, ptr %c, align 4, !dbg !1874
  %sub14 = sub i32 %23, %22, !dbg !1874
  store i32 %sub14, ptr %c, align 4, !dbg !1874
  %24 = load i32, ptr %b, align 4, !dbg !1874
  %call15 = call i32 @rol32(i32 noundef %24, i32 noundef 8) #13, !dbg !1874
  %25 = load i32, ptr %c, align 4, !dbg !1874
  %xor16 = xor i32 %25, %call15, !dbg !1874
  store i32 %xor16, ptr %c, align 4, !dbg !1874
  %26 = load i32, ptr %a, align 4, !dbg !1874
  %27 = load i32, ptr %b, align 4, !dbg !1874
  %add17 = add i32 %27, %26, !dbg !1874
  store i32 %add17, ptr %b, align 4, !dbg !1874
  %28 = load i32, ptr %c, align 4, !dbg !1874
  %29 = load i32, ptr %a, align 4, !dbg !1874
  %sub18 = sub i32 %29, %28, !dbg !1874
  store i32 %sub18, ptr %a, align 4, !dbg !1874
  %30 = load i32, ptr %c, align 4, !dbg !1874
  %call19 = call i32 @rol32(i32 noundef %30, i32 noundef 16) #13, !dbg !1874
  %31 = load i32, ptr %a, align 4, !dbg !1874
  %xor20 = xor i32 %31, %call19, !dbg !1874
  store i32 %xor20, ptr %a, align 4, !dbg !1874
  %32 = load i32, ptr %b, align 4, !dbg !1874
  %33 = load i32, ptr %c, align 4, !dbg !1874
  %add21 = add i32 %33, %32, !dbg !1874
  store i32 %add21, ptr %c, align 4, !dbg !1874
  %34 = load i32, ptr %a, align 4, !dbg !1874
  %35 = load i32, ptr %b, align 4, !dbg !1874
  %sub22 = sub i32 %35, %34, !dbg !1874
  store i32 %sub22, ptr %b, align 4, !dbg !1874
  %36 = load i32, ptr %a, align 4, !dbg !1874
  %call23 = call i32 @rol32(i32 noundef %36, i32 noundef 19) #13, !dbg !1874
  %37 = load i32, ptr %b, align 4, !dbg !1874
  %xor24 = xor i32 %37, %call23, !dbg !1874
  store i32 %xor24, ptr %b, align 4, !dbg !1874
  %38 = load i32, ptr %c, align 4, !dbg !1874
  %39 = load i32, ptr %a, align 4, !dbg !1874
  %add25 = add i32 %39, %38, !dbg !1874
  store i32 %add25, ptr %a, align 4, !dbg !1874
  %40 = load i32, ptr %b, align 4, !dbg !1874
  %41 = load i32, ptr %c, align 4, !dbg !1874
  %sub26 = sub i32 %41, %40, !dbg !1874
  store i32 %sub26, ptr %c, align 4, !dbg !1874
  %42 = load i32, ptr %b, align 4, !dbg !1874
  %call27 = call i32 @rol32(i32 noundef %42, i32 noundef 4) #13, !dbg !1874
  %43 = load i32, ptr %c, align 4, !dbg !1874
  %xor28 = xor i32 %43, %call27, !dbg !1874
  store i32 %xor28, ptr %c, align 4, !dbg !1874
  %44 = load i32, ptr %a, align 4, !dbg !1874
  %45 = load i32, ptr %b, align 4, !dbg !1874
  %add29 = add i32 %45, %44, !dbg !1874
  store i32 %add29, ptr %b, align 4, !dbg !1874
  %46 = load i32, ptr %length.addr, align 4, !dbg !1876
  %sub30 = sub i32 %46, 12, !dbg !1876
  store i32 %sub30, ptr %length.addr, align 4, !dbg !1876
  %47 = load ptr, ptr %k, align 8, !dbg !1877
  %add.ptr31 = getelementptr i8, ptr %47, i64 12, !dbg !1877
  store ptr %add.ptr31, ptr %k, align 8, !dbg !1877
  br label %while.cond, !dbg !1859, !llvm.loop !1878

while.end:                                        ; preds = %while.cond
  %48 = load i32, ptr %length.addr, align 4, !dbg !1880
  switch i32 %48, label %sw.epilog [
    i32 12, label %sw.bb
    i32 11, label %sw.bb33
    i32 10, label %sw.bb38
    i32 9, label %sw.bb43
    i32 8, label %sw.bb47
    i32 7, label %sw.bb52
    i32 6, label %sw.bb57
    i32 5, label %sw.bb62
    i32 4, label %sw.bb66
    i32 3, label %sw.bb71
    i32 2, label %sw.bb76
    i32 1, label %sw.bb81
    i32 0, label %sw.epilog
  ], !dbg !1881

sw.bb:                                            ; preds = %while.end
  %49 = load ptr, ptr %k, align 8, !dbg !1882
  %arrayidx = getelementptr i8, ptr %49, i64 11, !dbg !1882
  %50 = load i8, ptr %arrayidx, align 1, !dbg !1882
  %conv = zext i8 %50 to i32, !dbg !1884
  %shl = shl i32 %conv, 24, !dbg !1885
  %51 = load i32, ptr %c, align 4, !dbg !1886
  %add32 = add i32 %51, %shl, !dbg !1886
  store i32 %add32, ptr %c, align 4, !dbg !1886
  br label %sw.bb33, !dbg !1887

sw.bb33:                                          ; preds = %while.end, %sw.bb
  %52 = load ptr, ptr %k, align 8, !dbg !1888
  %arrayidx34 = getelementptr i8, ptr %52, i64 10, !dbg !1888
  %53 = load i8, ptr %arrayidx34, align 1, !dbg !1888
  %conv35 = zext i8 %53 to i32, !dbg !1889
  %shl36 = shl i32 %conv35, 16, !dbg !1890
  %54 = load i32, ptr %c, align 4, !dbg !1891
  %add37 = add i32 %54, %shl36, !dbg !1891
  store i32 %add37, ptr %c, align 4, !dbg !1891
  br label %sw.bb38, !dbg !1892

sw.bb38:                                          ; preds = %while.end, %sw.bb33
  %55 = load ptr, ptr %k, align 8, !dbg !1893
  %arrayidx39 = getelementptr i8, ptr %55, i64 9, !dbg !1893
  %56 = load i8, ptr %arrayidx39, align 1, !dbg !1893
  %conv40 = zext i8 %56 to i32, !dbg !1894
  %shl41 = shl i32 %conv40, 8, !dbg !1895
  %57 = load i32, ptr %c, align 4, !dbg !1896
  %add42 = add i32 %57, %shl41, !dbg !1896
  store i32 %add42, ptr %c, align 4, !dbg !1896
  br label %sw.bb43, !dbg !1897

sw.bb43:                                          ; preds = %while.end, %sw.bb38
  %58 = load ptr, ptr %k, align 8, !dbg !1898
  %arrayidx44 = getelementptr i8, ptr %58, i64 8, !dbg !1898
  %59 = load i8, ptr %arrayidx44, align 1, !dbg !1898
  %conv45 = zext i8 %59 to i32, !dbg !1898
  %60 = load i32, ptr %c, align 4, !dbg !1899
  %add46 = add i32 %60, %conv45, !dbg !1899
  store i32 %add46, ptr %c, align 4, !dbg !1899
  br label %sw.bb47, !dbg !1900

sw.bb47:                                          ; preds = %while.end, %sw.bb43
  %61 = load ptr, ptr %k, align 8, !dbg !1901
  %arrayidx48 = getelementptr i8, ptr %61, i64 7, !dbg !1901
  %62 = load i8, ptr %arrayidx48, align 1, !dbg !1901
  %conv49 = zext i8 %62 to i32, !dbg !1902
  %shl50 = shl i32 %conv49, 24, !dbg !1903
  %63 = load i32, ptr %b, align 4, !dbg !1904
  %add51 = add i32 %63, %shl50, !dbg !1904
  store i32 %add51, ptr %b, align 4, !dbg !1904
  br label %sw.bb52, !dbg !1905

sw.bb52:                                          ; preds = %while.end, %sw.bb47
  %64 = load ptr, ptr %k, align 8, !dbg !1906
  %arrayidx53 = getelementptr i8, ptr %64, i64 6, !dbg !1906
  %65 = load i8, ptr %arrayidx53, align 1, !dbg !1906
  %conv54 = zext i8 %65 to i32, !dbg !1907
  %shl55 = shl i32 %conv54, 16, !dbg !1908
  %66 = load i32, ptr %b, align 4, !dbg !1909
  %add56 = add i32 %66, %shl55, !dbg !1909
  store i32 %add56, ptr %b, align 4, !dbg !1909
  br label %sw.bb57, !dbg !1910

sw.bb57:                                          ; preds = %while.end, %sw.bb52
  %67 = load ptr, ptr %k, align 8, !dbg !1911
  %arrayidx58 = getelementptr i8, ptr %67, i64 5, !dbg !1911
  %68 = load i8, ptr %arrayidx58, align 1, !dbg !1911
  %conv59 = zext i8 %68 to i32, !dbg !1912
  %shl60 = shl i32 %conv59, 8, !dbg !1913
  %69 = load i32, ptr %b, align 4, !dbg !1914
  %add61 = add i32 %69, %shl60, !dbg !1914
  store i32 %add61, ptr %b, align 4, !dbg !1914
  br label %sw.bb62, !dbg !1915

sw.bb62:                                          ; preds = %while.end, %sw.bb57
  %70 = load ptr, ptr %k, align 8, !dbg !1916
  %arrayidx63 = getelementptr i8, ptr %70, i64 4, !dbg !1916
  %71 = load i8, ptr %arrayidx63, align 1, !dbg !1916
  %conv64 = zext i8 %71 to i32, !dbg !1916
  %72 = load i32, ptr %b, align 4, !dbg !1917
  %add65 = add i32 %72, %conv64, !dbg !1917
  store i32 %add65, ptr %b, align 4, !dbg !1917
  br label %sw.bb66, !dbg !1918

sw.bb66:                                          ; preds = %while.end, %sw.bb62
  %73 = load ptr, ptr %k, align 8, !dbg !1919
  %arrayidx67 = getelementptr i8, ptr %73, i64 3, !dbg !1919
  %74 = load i8, ptr %arrayidx67, align 1, !dbg !1919
  %conv68 = zext i8 %74 to i32, !dbg !1920
  %shl69 = shl i32 %conv68, 24, !dbg !1921
  %75 = load i32, ptr %a, align 4, !dbg !1922
  %add70 = add i32 %75, %shl69, !dbg !1922
  store i32 %add70, ptr %a, align 4, !dbg !1922
  br label %sw.bb71, !dbg !1923

sw.bb71:                                          ; preds = %while.end, %sw.bb66
  %76 = load ptr, ptr %k, align 8, !dbg !1924
  %arrayidx72 = getelementptr i8, ptr %76, i64 2, !dbg !1924
  %77 = load i8, ptr %arrayidx72, align 1, !dbg !1924
  %conv73 = zext i8 %77 to i32, !dbg !1925
  %shl74 = shl i32 %conv73, 16, !dbg !1926
  %78 = load i32, ptr %a, align 4, !dbg !1927
  %add75 = add i32 %78, %shl74, !dbg !1927
  store i32 %add75, ptr %a, align 4, !dbg !1927
  br label %sw.bb76, !dbg !1928

sw.bb76:                                          ; preds = %while.end, %sw.bb71
  %79 = load ptr, ptr %k, align 8, !dbg !1929
  %arrayidx77 = getelementptr i8, ptr %79, i64 1, !dbg !1929
  %80 = load i8, ptr %arrayidx77, align 1, !dbg !1929
  %conv78 = zext i8 %80 to i32, !dbg !1930
  %shl79 = shl i32 %conv78, 8, !dbg !1931
  %81 = load i32, ptr %a, align 4, !dbg !1932
  %add80 = add i32 %81, %shl79, !dbg !1932
  store i32 %add80, ptr %a, align 4, !dbg !1932
  br label %sw.bb81, !dbg !1933

sw.bb81:                                          ; preds = %while.end, %sw.bb76
  %82 = load ptr, ptr %k, align 8, !dbg !1934
  %arrayidx82 = getelementptr i8, ptr %82, i64 0, !dbg !1934
  %83 = load i8, ptr %arrayidx82, align 1, !dbg !1934
  %conv83 = zext i8 %83 to i32, !dbg !1934
  %84 = load i32, ptr %a, align 4, !dbg !1935
  %add84 = add i32 %84, %conv83, !dbg !1935
  store i32 %add84, ptr %a, align 4, !dbg !1935
  %85 = load i32, ptr %b, align 4, !dbg !1936
  %86 = load i32, ptr %c, align 4, !dbg !1936
  %xor85 = xor i32 %86, %85, !dbg !1936
  store i32 %xor85, ptr %c, align 4, !dbg !1936
  %87 = load i32, ptr %b, align 4, !dbg !1936
  %call86 = call i32 @rol32(i32 noundef %87, i32 noundef 14) #13, !dbg !1936
  %88 = load i32, ptr %c, align 4, !dbg !1936
  %sub87 = sub i32 %88, %call86, !dbg !1936
  store i32 %sub87, ptr %c, align 4, !dbg !1936
  %89 = load i32, ptr %c, align 4, !dbg !1936
  %90 = load i32, ptr %a, align 4, !dbg !1936
  %xor88 = xor i32 %90, %89, !dbg !1936
  store i32 %xor88, ptr %a, align 4, !dbg !1936
  %91 = load i32, ptr %c, align 4, !dbg !1936
  %call89 = call i32 @rol32(i32 noundef %91, i32 noundef 11) #13, !dbg !1936
  %92 = load i32, ptr %a, align 4, !dbg !1936
  %sub90 = sub i32 %92, %call89, !dbg !1936
  store i32 %sub90, ptr %a, align 4, !dbg !1936
  %93 = load i32, ptr %a, align 4, !dbg !1936
  %94 = load i32, ptr %b, align 4, !dbg !1936
  %xor91 = xor i32 %94, %93, !dbg !1936
  store i32 %xor91, ptr %b, align 4, !dbg !1936
  %95 = load i32, ptr %a, align 4, !dbg !1936
  %call92 = call i32 @rol32(i32 noundef %95, i32 noundef 25) #13, !dbg !1936
  %96 = load i32, ptr %b, align 4, !dbg !1936
  %sub93 = sub i32 %96, %call92, !dbg !1936
  store i32 %sub93, ptr %b, align 4, !dbg !1936
  %97 = load i32, ptr %b, align 4, !dbg !1936
  %98 = load i32, ptr %c, align 4, !dbg !1936
  %xor94 = xor i32 %98, %97, !dbg !1936
  store i32 %xor94, ptr %c, align 4, !dbg !1936
  %99 = load i32, ptr %b, align 4, !dbg !1936
  %call95 = call i32 @rol32(i32 noundef %99, i32 noundef 16) #13, !dbg !1936
  %100 = load i32, ptr %c, align 4, !dbg !1936
  %sub96 = sub i32 %100, %call95, !dbg !1936
  store i32 %sub96, ptr %c, align 4, !dbg !1936
  %101 = load i32, ptr %c, align 4, !dbg !1936
  %102 = load i32, ptr %a, align 4, !dbg !1936
  %xor97 = xor i32 %102, %101, !dbg !1936
  store i32 %xor97, ptr %a, align 4, !dbg !1936
  %103 = load i32, ptr %c, align 4, !dbg !1936
  %call98 = call i32 @rol32(i32 noundef %103, i32 noundef 4) #13, !dbg !1936
  %104 = load i32, ptr %a, align 4, !dbg !1936
  %sub99 = sub i32 %104, %call98, !dbg !1936
  store i32 %sub99, ptr %a, align 4, !dbg !1936
  %105 = load i32, ptr %a, align 4, !dbg !1936
  %106 = load i32, ptr %b, align 4, !dbg !1936
  %xor100 = xor i32 %106, %105, !dbg !1936
  store i32 %xor100, ptr %b, align 4, !dbg !1936
  %107 = load i32, ptr %a, align 4, !dbg !1936
  %call101 = call i32 @rol32(i32 noundef %107, i32 noundef 14) #13, !dbg !1936
  %108 = load i32, ptr %b, align 4, !dbg !1936
  %sub102 = sub i32 %108, %call101, !dbg !1936
  store i32 %sub102, ptr %b, align 4, !dbg !1936
  %109 = load i32, ptr %b, align 4, !dbg !1936
  %110 = load i32, ptr %c, align 4, !dbg !1936
  %xor103 = xor i32 %110, %109, !dbg !1936
  store i32 %xor103, ptr %c, align 4, !dbg !1936
  %111 = load i32, ptr %b, align 4, !dbg !1936
  %call104 = call i32 @rol32(i32 noundef %111, i32 noundef 24) #13, !dbg !1936
  %112 = load i32, ptr %c, align 4, !dbg !1936
  %sub105 = sub i32 %112, %call104, !dbg !1936
  store i32 %sub105, ptr %c, align 4, !dbg !1936
  br label %sw.epilog, !dbg !1938

sw.epilog:                                        ; preds = %while.end, %while.end, %sw.bb81
  %113 = load i32, ptr %c, align 4, !dbg !1939
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #12, !dbg !1940
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #12, !dbg !1940
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #12, !dbg !1940
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #12, !dbg !1940
  ret i32 %113, !dbg !1941
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @ebitmap_cache_init() #8 section ".init.text" align 16 !dbg !1942 {
entry:
  %call = call ptr @kmem_cache_create(ptr noundef @.str.6, i32 noundef 64, i32 noundef 0, i32 noundef 262144, ptr noundef null) #13, !dbg !1945
  store ptr %call, ptr @ebitmap_node_cachep, align 8, !dbg !1946
  ret void, !dbg !1947
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1948 dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1954 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #4 align 16 !dbg !1955 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1959, metadata !DIExpression()), !dbg !1965
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1960, metadata !DIExpression()), !dbg !1966
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !1961, metadata !DIExpression()), !dbg !1967
  %0 = load i64, ptr %size.addr, align 8, !dbg !1968
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1968
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !1968

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1968
  %cmp = icmp ule i64 %2, 64, !dbg !1968
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !1968

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !1968
  %cmp2 = icmp ugt i64 %3, 0, !dbg !1968
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !1969

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !1970
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1962, metadata !DIExpression()), !dbg !1971
  %4 = load i64, ptr %offset.addr, align 8, !dbg !1972
  %5 = load i64, ptr %size.addr, align 8, !dbg !1972
  %cmp3 = icmp uge i64 %4, %5, !dbg !1972
  %lnot = xor i1 %cmp3, true, !dbg !1972
  %lnot4 = xor i1 %lnot, true, !dbg !1972
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !1972
  %conv = sext i32 %lnot.ext to i64, !dbg !1972
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1972
  %tobool = icmp ne i64 %expval, 0, !dbg !1972
  br i1 %tobool, label %if.then5, label %if.end, !dbg !1974

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1975
  store i64 %6, ptr %retval, align 8, !dbg !1976
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1976

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !1977
  %8 = load i64, ptr %7, align 8, !dbg !1978
  %9 = load i64, ptr %offset.addr, align 8, !dbg !1979
  %shl = shl i64 1, %9, !dbg !1979
  %sub = sub i64 -1, %shl, !dbg !1979
  %add = add i64 %sub, 1, !dbg !1979
  %10 = load i64, ptr %size.addr, align 8, !dbg !1979
  %sub6 = sub i64 %10, 1, !dbg !1979
  %sub7 = sub i64 63, %sub6, !dbg !1979
  %shr = lshr i64 -1, %sub7, !dbg !1979
  %and = and i64 %add, %shr, !dbg !1979
  %add8 = add i64 0, %and, !dbg !1979
  %and9 = and i64 %8, %add8, !dbg !1980
  store i64 %and9, ptr %val, align 8, !dbg !1981
  %11 = load i64, ptr %val, align 8, !dbg !1982
  %tobool10 = icmp ne i64 %11, 0, !dbg !1982
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !1982

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !1983
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !1983
  br i1 %13, label %cond.true11, label %cond.false, !dbg !1983

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !1983
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !1983
  %cast = trunc i64 %15 to i32, !dbg !1983
  %conv12 = sext i32 %cast to i64, !dbg !1983
  br label %cond.end, !dbg !1983

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !1983
  %call = call i64 @variable__ffs(i64 noundef %16) #13, !dbg !1983
  br label %cond.end, !dbg !1983

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !1983
  br label %cond.end14, !dbg !1982

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !1984
  br label %cond.end14, !dbg !1982

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !1982
  store i64 %cond15, ptr %retval, align 8, !dbg !1985
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1985

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !1986
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !1987
  %19 = load i64, ptr %size.addr, align 8, !dbg !1988
  %20 = load i64, ptr %offset.addr, align 8, !dbg !1989
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #13, !dbg !1990
  store i64 %call17, ptr %retval, align 8, !dbg !1991
  br label %return, !dbg !1991

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !1992
  ret i64 %21, !dbg !1992
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #6 align 16 !dbg !1993 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !1995, metadata !DIExpression()), !dbg !1996
  %0 = load i64, ptr %word.addr, align 8, !dbg !1997
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #14, !dbg !1998, !srcloc !1999
  store i64 %1, ptr %word.addr, align 8, !dbg !1998
  %2 = load i64, ptr %word.addr, align 8, !dbg !2000
  ret i64 %2, !dbg !2001
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2002 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2003 dso_local void @kfree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2006 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !2007 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !2014, metadata !DIExpression()), !dbg !2015
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !2016, !range !2017, !noundef !2018
  %tobool = trunc i8 %0 to i1, !dbg !2016
  %lnot = xor i1 %tobool, true, !dbg !2016
  %lnot1 = xor i1 %lnot, true, !dbg !2016
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2016
  %conv = sext i32 %lnot.ext to i64, !dbg !2016
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2016
  %tobool2 = icmp ne i64 %expval, 0, !dbg !2016
  ret i1 %tobool2, !dbg !2019
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__jhash_nwords(i32 noundef %a, i32 noundef %b, i32 noundef %c, i32 noundef %initval) #4 align 16 !dbg !2020 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %initval.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !2024, metadata !DIExpression()), !dbg !2028
  store i32 %b, ptr %b.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !2025, metadata !DIExpression()), !dbg !2029
  store i32 %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2026, metadata !DIExpression()), !dbg !2030
  store i32 %initval, ptr %initval.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %initval.addr, metadata !2027, metadata !DIExpression()), !dbg !2031
  %0 = load i32, ptr %initval.addr, align 4, !dbg !2032
  %1 = load i32, ptr %a.addr, align 4, !dbg !2033
  %add = add i32 %1, %0, !dbg !2033
  store i32 %add, ptr %a.addr, align 4, !dbg !2033
  %2 = load i32, ptr %initval.addr, align 4, !dbg !2034
  %3 = load i32, ptr %b.addr, align 4, !dbg !2035
  %add1 = add i32 %3, %2, !dbg !2035
  store i32 %add1, ptr %b.addr, align 4, !dbg !2035
  %4 = load i32, ptr %initval.addr, align 4, !dbg !2036
  %5 = load i32, ptr %c.addr, align 4, !dbg !2037
  %add2 = add i32 %5, %4, !dbg !2037
  store i32 %add2, ptr %c.addr, align 4, !dbg !2037
  %6 = load i32, ptr %b.addr, align 4, !dbg !2038
  %7 = load i32, ptr %c.addr, align 4, !dbg !2038
  %xor = xor i32 %7, %6, !dbg !2038
  store i32 %xor, ptr %c.addr, align 4, !dbg !2038
  %8 = load i32, ptr %b.addr, align 4, !dbg !2038
  %call = call i32 @rol32(i32 noundef %8, i32 noundef 14) #13, !dbg !2038
  %9 = load i32, ptr %c.addr, align 4, !dbg !2038
  %sub = sub i32 %9, %call, !dbg !2038
  store i32 %sub, ptr %c.addr, align 4, !dbg !2038
  %10 = load i32, ptr %c.addr, align 4, !dbg !2038
  %11 = load i32, ptr %a.addr, align 4, !dbg !2038
  %xor3 = xor i32 %11, %10, !dbg !2038
  store i32 %xor3, ptr %a.addr, align 4, !dbg !2038
  %12 = load i32, ptr %c.addr, align 4, !dbg !2038
  %call4 = call i32 @rol32(i32 noundef %12, i32 noundef 11) #13, !dbg !2038
  %13 = load i32, ptr %a.addr, align 4, !dbg !2038
  %sub5 = sub i32 %13, %call4, !dbg !2038
  store i32 %sub5, ptr %a.addr, align 4, !dbg !2038
  %14 = load i32, ptr %a.addr, align 4, !dbg !2038
  %15 = load i32, ptr %b.addr, align 4, !dbg !2038
  %xor6 = xor i32 %15, %14, !dbg !2038
  store i32 %xor6, ptr %b.addr, align 4, !dbg !2038
  %16 = load i32, ptr %a.addr, align 4, !dbg !2038
  %call7 = call i32 @rol32(i32 noundef %16, i32 noundef 25) #13, !dbg !2038
  %17 = load i32, ptr %b.addr, align 4, !dbg !2038
  %sub8 = sub i32 %17, %call7, !dbg !2038
  store i32 %sub8, ptr %b.addr, align 4, !dbg !2038
  %18 = load i32, ptr %b.addr, align 4, !dbg !2038
  %19 = load i32, ptr %c.addr, align 4, !dbg !2038
  %xor9 = xor i32 %19, %18, !dbg !2038
  store i32 %xor9, ptr %c.addr, align 4, !dbg !2038
  %20 = load i32, ptr %b.addr, align 4, !dbg !2038
  %call10 = call i32 @rol32(i32 noundef %20, i32 noundef 16) #13, !dbg !2038
  %21 = load i32, ptr %c.addr, align 4, !dbg !2038
  %sub11 = sub i32 %21, %call10, !dbg !2038
  store i32 %sub11, ptr %c.addr, align 4, !dbg !2038
  %22 = load i32, ptr %c.addr, align 4, !dbg !2038
  %23 = load i32, ptr %a.addr, align 4, !dbg !2038
  %xor12 = xor i32 %23, %22, !dbg !2038
  store i32 %xor12, ptr %a.addr, align 4, !dbg !2038
  %24 = load i32, ptr %c.addr, align 4, !dbg !2038
  %call13 = call i32 @rol32(i32 noundef %24, i32 noundef 4) #13, !dbg !2038
  %25 = load i32, ptr %a.addr, align 4, !dbg !2038
  %sub14 = sub i32 %25, %call13, !dbg !2038
  store i32 %sub14, ptr %a.addr, align 4, !dbg !2038
  %26 = load i32, ptr %a.addr, align 4, !dbg !2038
  %27 = load i32, ptr %b.addr, align 4, !dbg !2038
  %xor15 = xor i32 %27, %26, !dbg !2038
  store i32 %xor15, ptr %b.addr, align 4, !dbg !2038
  %28 = load i32, ptr %a.addr, align 4, !dbg !2038
  %call16 = call i32 @rol32(i32 noundef %28, i32 noundef 14) #13, !dbg !2038
  %29 = load i32, ptr %b.addr, align 4, !dbg !2038
  %sub17 = sub i32 %29, %call16, !dbg !2038
  store i32 %sub17, ptr %b.addr, align 4, !dbg !2038
  %30 = load i32, ptr %b.addr, align 4, !dbg !2038
  %31 = load i32, ptr %c.addr, align 4, !dbg !2038
  %xor18 = xor i32 %31, %30, !dbg !2038
  store i32 %xor18, ptr %c.addr, align 4, !dbg !2038
  %32 = load i32, ptr %b.addr, align 4, !dbg !2038
  %call19 = call i32 @rol32(i32 noundef %32, i32 noundef 24) #13, !dbg !2038
  %33 = load i32, ptr %c.addr, align 4, !dbg !2038
  %sub20 = sub i32 %33, %call19, !dbg !2038
  store i32 %sub20, ptr %c.addr, align 4, !dbg !2038
  %34 = load i32, ptr %c.addr, align 4, !dbg !2040
  ret i32 %34, !dbg !2041
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rol32(i32 noundef %word, i32 noundef %shift) #4 align 16 !dbg !2042 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !2047, metadata !DIExpression()), !dbg !2049
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !2048, metadata !DIExpression()), !dbg !2050
  %0 = load i32, ptr %word.addr, align 4, !dbg !2051
  %1 = load i32, ptr %shift.addr, align 4, !dbg !2052
  %and = and i32 %1, 31, !dbg !2053
  %shl = shl i32 %0, %and, !dbg !2054
  %2 = load i32, ptr %word.addr, align 4, !dbg !2055
  %3 = load i32, ptr %shift.addr, align 4, !dbg !2056
  %sub = sub i32 0, %3, !dbg !2057
  %and1 = and i32 %sub, 31, !dbg !2058
  %shr = lshr i32 %2, %and1, !dbg !2059
  %or = or i32 %shl, %shr, !dbg !2060
  ret i32 %or, !dbg !2061
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__get_unaligned_cpu32(ptr noundef %p) #4 align 16 !dbg !2062 {
entry:
  %p.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2066, metadata !DIExpression()), !dbg !2068
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #12, !dbg !2069
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !2067, metadata !DIExpression()), !dbg !2070
  %0 = load ptr, ptr %p.addr, align 8, !dbg !2071
  store ptr %0, ptr %ptr, align 8, !dbg !2070
  %1 = load ptr, ptr %ptr, align 8, !dbg !2072
  %x = getelementptr inbounds %struct.__una_u32, ptr %1, i32 0, i32 0, !dbg !2073
  %2 = load i32, ptr %x, align 1, !dbg !2073
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #12, !dbg !2074
  ret i32 %2, !dbg !2075
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noredzone }
attributes #14 = { nounwind memory(read) }
attributes #15 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ebitmap_node_cachep", scope: !2, file: !3, line: 29, type: !68, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF security/selinux/ss/.ebitmap.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -I ./security/selinux -I ./security/selinux/include -D KBUILD_MODFILE=\22security/selinux/selinux\22 -D KBUILD_BASENAME=\22ebitmap\22 -D KBUILD_MODNAME=\22selinux\22 -D __KBUILD_MODNAME=kmod_selinux -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o security/selinux/ss/ebitmap.ll security/selinux/ss/ebitmap.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !28, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "security/selinux/ss/ebitmap.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75ce109107fb0f23c31233d43eb935f3")
!4 = !{!5, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !6, line: 154, baseType: !7)
!6 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !10, line: 21, baseType: !11)
!10 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !12, line: 27, baseType: !7)
!12 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !14, line: 38, baseType: !11)
!14 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !12, line: 31, baseType: !16)
!16 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le64", file: !14, line: 40, baseType: !15)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !10, line: 23, baseType: !15)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !6, line: 155, baseType: !7)
!21 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__una_u32", file: !25, line: 7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/unaligned/packed_struct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b314e2aed1a5593b28899e171e87b0c0")
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !24, file: !25, line: 7, baseType: !9, size: 32)
!28 = !{!29, !35, !40, !45, !50, !52, !57, !0, !62}
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !3, line: 386, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 624, elements: !33)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !{!34}
!34 = !DISubrange(count: 78)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !3, line: 407, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 280, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 35)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !3, line: 413, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 632, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 79)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !3, line: 419, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 576, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 72)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !3, line: 429, type: !37, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !3, line: 441, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 472, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 59)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !3, line: 561, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 104, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 13)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !64, line: 94, type: !65, isLocal: true, isDefinition: true)
!64 = !DIFile(filename: "security/selinux/ss/ebitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "57a81f7285b67f9767135d87fb3569d7")
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 240, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 30)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !70, line: 11, flags: DIFlagFwdDecl)
!70 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!71 = !{i32 7, !"Dwarf Version", i32 5}
!72 = !{i32 2, !"Debug Info Version", i32 3}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 8, !"cf-protection-branch", i32 1}
!75 = !{i32 4, !"function_return_thunk_extern", i32 1}
!76 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!77 = !{i32 1, !"Code Model", i32 2}
!78 = !{i32 1, !"override-stack-alignment", i32 8}
!79 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!80 = distinct !DISubprogram(name: "ebitmap_cmp", scope: !3, file: !3, line: 31, type: !81, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !98)
!81 = !DISubroutineType(types: !82)
!82 = !{!18, !83, !83}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ebitmap", file: !64, line: 40, size: 128, elements: !86)
!86 = !{!87, !97}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !85, file: !64, line: 41, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ebitmap_node", file: !64, line: 34, size: 512, elements: !90)
!90 = !{!91, !92, !96}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !89, file: !64, line: 35, baseType: !88, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "maps", scope: !89, file: !64, line: 36, baseType: !93, size: 384, offset: 64)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 384, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 6)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "startbit", scope: !89, file: !64, line: 37, baseType: !9, size: 32, offset: 448)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "highbit", scope: !85, file: !64, line: 42, baseType: !9, size: 32, offset: 64)
!98 = !{!99, !100, !101, !104}
!99 = !DILocalVariable(name: "e1", arg: 1, scope: !80, file: !3, line: 31, type: !83)
!100 = !DILocalVariable(name: "e2", arg: 2, scope: !80, file: !3, line: 31, type: !83)
!101 = !DILocalVariable(name: "n1", scope: !80, file: !3, line: 33, type: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!104 = !DILocalVariable(name: "n2", scope: !80, file: !3, line: 33, type: !102)
!105 = !DILocation(line: 31, column: 39, scope: !80)
!106 = !DILocation(line: 31, column: 65, scope: !80)
!107 = !DILocation(line: 33, column: 2, scope: !80)
!108 = !DILocation(line: 33, column: 29, scope: !80)
!109 = !DILocation(line: 33, column: 34, scope: !80)
!110 = !DILocation(line: 35, column: 6, scope: !111)
!111 = distinct !DILexicalBlock(scope: !80, file: !3, line: 35, column: 6)
!112 = !DILocation(line: 35, column: 10, scope: !111)
!113 = !DILocation(line: 35, column: 21, scope: !111)
!114 = !DILocation(line: 35, column: 25, scope: !111)
!115 = !DILocation(line: 35, column: 18, scope: !111)
!116 = !DILocation(line: 35, column: 6, scope: !80)
!117 = !DILocation(line: 36, column: 3, scope: !111)
!118 = !DILocation(line: 38, column: 7, scope: !80)
!119 = !DILocation(line: 38, column: 11, scope: !80)
!120 = !DILocation(line: 38, column: 5, scope: !80)
!121 = !DILocation(line: 39, column: 7, scope: !80)
!122 = !DILocation(line: 39, column: 11, scope: !80)
!123 = !DILocation(line: 39, column: 5, scope: !80)
!124 = !DILocation(line: 40, column: 2, scope: !80)
!125 = !DILocation(line: 40, column: 9, scope: !80)
!126 = !DILocation(line: 40, column: 12, scope: !80)
!127 = !DILocation(line: 40, column: 15, scope: !80)
!128 = !DILocation(line: 40, column: 18, scope: !80)
!129 = !DILocation(line: 41, column: 10, scope: !80)
!130 = !DILocation(line: 41, column: 14, scope: !80)
!131 = !DILocation(line: 41, column: 26, scope: !80)
!132 = !DILocation(line: 41, column: 30, scope: !80)
!133 = !DILocation(line: 41, column: 23, scope: !80)
!134 = !DILocation(line: 41, column: 40, scope: !80)
!135 = !DILocation(line: 42, column: 17, scope: !80)
!136 = !DILocation(line: 42, column: 21, scope: !80)
!137 = !DILocation(line: 42, column: 27, scope: !80)
!138 = !DILocation(line: 42, column: 31, scope: !80)
!139 = !DILocation(line: 42, column: 10, scope: !80)
!140 = !DILocation(line: 42, column: 9, scope: !80)
!141 = !DILocation(line: 0, scope: !80)
!142 = !DILocation(line: 43, column: 8, scope: !143)
!143 = distinct !DILexicalBlock(scope: !80, file: !3, line: 42, column: 56)
!144 = !DILocation(line: 43, column: 12, scope: !143)
!145 = !DILocation(line: 43, column: 6, scope: !143)
!146 = !DILocation(line: 44, column: 8, scope: !143)
!147 = !DILocation(line: 44, column: 12, scope: !143)
!148 = !DILocation(line: 44, column: 6, scope: !143)
!149 = distinct !{!149, !124, !150, !151, !152}
!150 = !DILocation(line: 45, column: 2, scope: !80)
!151 = !{!"llvm.loop.mustprogress"}
!152 = !{!"llvm.loop.unroll.disable"}
!153 = !DILocation(line: 47, column: 6, scope: !154)
!154 = distinct !DILexicalBlock(scope: !80, file: !3, line: 47, column: 6)
!155 = !DILocation(line: 47, column: 9, scope: !154)
!156 = !DILocation(line: 47, column: 12, scope: !154)
!157 = !DILocation(line: 47, column: 6, scope: !80)
!158 = !DILocation(line: 48, column: 3, scope: !154)
!159 = !DILocation(line: 50, column: 2, scope: !80)
!160 = !DILocation(line: 51, column: 1, scope: !80)
!161 = !DISubprogram(name: "memcmp", scope: !162, file: !162, line: 196, type: !163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!162 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!163 = !DISubroutineType(types: !164)
!164 = !{!18, !165, !165, !167}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !168, line: 72, baseType: !169)
!168 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !168, line: 16, baseType: !21)
!170 = distinct !DISubprogram(name: "ebitmap_cpy", scope: !3, file: !3, line: 53, type: !171, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !174)
!171 = !DISubroutineType(types: !172)
!172 = !{!18, !173, !83}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!174 = !{!175, !176, !177, !178, !179}
!175 = !DILocalVariable(name: "dst", arg: 1, scope: !170, file: !3, line: 53, type: !173)
!176 = !DILocalVariable(name: "src", arg: 2, scope: !170, file: !3, line: 53, type: !83)
!177 = !DILocalVariable(name: "new", scope: !170, file: !3, line: 55, type: !88)
!178 = !DILocalVariable(name: "prev", scope: !170, file: !3, line: 55, type: !88)
!179 = !DILocalVariable(name: "n", scope: !170, file: !3, line: 56, type: !102)
!180 = !DILocation(line: 53, column: 33, scope: !170)
!181 = !DILocation(line: 53, column: 60, scope: !170)
!182 = !DILocation(line: 55, column: 2, scope: !170)
!183 = !DILocation(line: 55, column: 23, scope: !170)
!184 = !DILocation(line: 55, column: 29, scope: !170)
!185 = !DILocation(line: 56, column: 2, scope: !170)
!186 = !DILocation(line: 56, column: 29, scope: !170)
!187 = !DILocation(line: 58, column: 15, scope: !170)
!188 = !DILocation(line: 58, column: 2, scope: !170)
!189 = !DILocation(line: 59, column: 6, scope: !170)
!190 = !DILocation(line: 59, column: 11, scope: !170)
!191 = !DILocation(line: 59, column: 4, scope: !170)
!192 = !DILocation(line: 60, column: 7, scope: !170)
!193 = !DILocation(line: 61, column: 2, scope: !170)
!194 = !DILocation(line: 61, column: 9, scope: !170)
!195 = !DILocation(line: 62, column: 27, scope: !196)
!196 = distinct !DILexicalBlock(scope: !170, file: !3, line: 61, column: 12)
!197 = !DILocation(line: 62, column: 9, scope: !196)
!198 = !DILocation(line: 62, column: 7, scope: !196)
!199 = !DILocation(line: 63, column: 8, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !3, line: 63, column: 7)
!201 = !DILocation(line: 63, column: 7, scope: !196)
!202 = !DILocation(line: 64, column: 20, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !3, line: 63, column: 13)
!204 = !DILocation(line: 64, column: 4, scope: !203)
!205 = !DILocation(line: 65, column: 4, scope: !203)
!206 = !DILocation(line: 67, column: 19, scope: !196)
!207 = !DILocation(line: 67, column: 22, scope: !196)
!208 = !DILocation(line: 67, column: 3, scope: !196)
!209 = !DILocation(line: 67, column: 8, scope: !196)
!210 = !DILocation(line: 67, column: 17, scope: !196)
!211 = !DILocation(line: 68, column: 10, scope: !196)
!212 = !DILocation(line: 68, column: 15, scope: !196)
!213 = !DILocation(line: 68, column: 3, scope: !196)
!214 = !DILocation(line: 68, column: 21, scope: !196)
!215 = !DILocation(line: 68, column: 24, scope: !196)
!216 = !DILocation(line: 69, column: 3, scope: !196)
!217 = !DILocation(line: 69, column: 8, scope: !196)
!218 = !DILocation(line: 69, column: 13, scope: !196)
!219 = !DILocation(line: 70, column: 7, scope: !220)
!220 = distinct !DILexicalBlock(scope: !196, file: !3, line: 70, column: 7)
!221 = !DILocation(line: 70, column: 7, scope: !196)
!222 = !DILocation(line: 71, column: 17, scope: !220)
!223 = !DILocation(line: 71, column: 4, scope: !220)
!224 = !DILocation(line: 71, column: 10, scope: !220)
!225 = !DILocation(line: 71, column: 15, scope: !220)
!226 = !DILocation(line: 73, column: 16, scope: !220)
!227 = !DILocation(line: 73, column: 4, scope: !220)
!228 = !DILocation(line: 73, column: 9, scope: !220)
!229 = !DILocation(line: 73, column: 14, scope: !220)
!230 = !DILocation(line: 74, column: 10, scope: !196)
!231 = !DILocation(line: 74, column: 8, scope: !196)
!232 = !DILocation(line: 75, column: 7, scope: !196)
!233 = !DILocation(line: 75, column: 10, scope: !196)
!234 = !DILocation(line: 75, column: 5, scope: !196)
!235 = distinct !{!235, !193, !236, !151, !152}
!236 = !DILocation(line: 76, column: 2, scope: !170)
!237 = !DILocation(line: 78, column: 17, scope: !170)
!238 = !DILocation(line: 78, column: 22, scope: !170)
!239 = !DILocation(line: 78, column: 2, scope: !170)
!240 = !DILocation(line: 78, column: 7, scope: !170)
!241 = !DILocation(line: 78, column: 15, scope: !170)
!242 = !DILocation(line: 79, column: 2, scope: !170)
!243 = !DILocation(line: 80, column: 1, scope: !170)
!244 = distinct !DISubprogram(name: "ebitmap_init", scope: !64, file: !64, line: 60, type: !245, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !247)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !173}
!247 = !{!248}
!248 = !DILocalVariable(name: "e", arg: 1, scope: !244, file: !64, line: 60, type: !173)
!249 = !DILocation(line: 60, column: 49, scope: !244)
!250 = !DILocation(line: 62, column: 9, scope: !244)
!251 = !DILocation(line: 62, column: 2, scope: !244)
!252 = !DILocation(line: 63, column: 1, scope: !244)
!253 = distinct !DISubprogram(name: "kmem_cache_zalloc", scope: !254, file: !254, line: 709, type: !255, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !257)
!254 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!255 = !DISubroutineType(types: !256)
!256 = !{!8, !68, !5}
!257 = !{!258, !259}
!258 = !DILocalVariable(name: "k", arg: 1, scope: !253, file: !254, line: 709, type: !68)
!259 = !DILocalVariable(name: "flags", arg: 2, scope: !253, file: !254, line: 709, type: !5)
!260 = !DILocation(line: 709, column: 58, scope: !253)
!261 = !DILocation(line: 709, column: 67, scope: !253)
!262 = !DILocation(line: 711, column: 26, scope: !253)
!263 = !DILocation(line: 711, column: 29, scope: !253)
!264 = !DILocation(line: 711, column: 35, scope: !253)
!265 = !DILocation(line: 711, column: 9, scope: !253)
!266 = !DILocation(line: 711, column: 2, scope: !253)
!267 = distinct !DISubprogram(name: "ebitmap_destroy", scope: !3, file: !3, line: 347, type: !245, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !268)
!268 = !{!269, !270, !271}
!269 = !DILocalVariable(name: "e", arg: 1, scope: !267, file: !3, line: 347, type: !173)
!270 = !DILocalVariable(name: "n", scope: !267, file: !3, line: 349, type: !88)
!271 = !DILocalVariable(name: "temp", scope: !267, file: !3, line: 349, type: !88)
!272 = !DILocation(line: 347, column: 38, scope: !267)
!273 = !DILocation(line: 349, column: 2, scope: !267)
!274 = !DILocation(line: 349, column: 23, scope: !267)
!275 = !DILocation(line: 349, column: 27, scope: !267)
!276 = !DILocation(line: 351, column: 7, scope: !277)
!277 = distinct !DILexicalBlock(scope: !267, file: !3, line: 351, column: 6)
!278 = !DILocation(line: 351, column: 6, scope: !267)
!279 = !DILocation(line: 352, column: 3, scope: !277)
!280 = !DILocation(line: 354, column: 6, scope: !267)
!281 = !DILocation(line: 354, column: 9, scope: !267)
!282 = !DILocation(line: 354, column: 4, scope: !267)
!283 = !DILocation(line: 355, column: 2, scope: !267)
!284 = !DILocation(line: 355, column: 9, scope: !267)
!285 = !DILocation(line: 356, column: 10, scope: !286)
!286 = distinct !DILexicalBlock(scope: !267, file: !3, line: 355, column: 12)
!287 = !DILocation(line: 356, column: 8, scope: !286)
!288 = !DILocation(line: 357, column: 7, scope: !286)
!289 = !DILocation(line: 357, column: 10, scope: !286)
!290 = !DILocation(line: 357, column: 5, scope: !286)
!291 = !DILocation(line: 358, column: 19, scope: !286)
!292 = !DILocation(line: 358, column: 40, scope: !286)
!293 = !DILocation(line: 358, column: 3, scope: !286)
!294 = distinct !{!294, !283, !295, !151, !152}
!295 = !DILocation(line: 359, column: 2, scope: !267)
!296 = !DILocation(line: 361, column: 2, scope: !267)
!297 = !DILocation(line: 361, column: 5, scope: !267)
!298 = !DILocation(line: 361, column: 13, scope: !267)
!299 = !DILocation(line: 362, column: 2, scope: !267)
!300 = !DILocation(line: 362, column: 5, scope: !267)
!301 = !DILocation(line: 362, column: 10, scope: !267)
!302 = !DILocation(line: 363, column: 1, scope: !267)
!303 = distinct !DISubprogram(name: "ebitmap_and", scope: !3, file: !3, line: 82, type: !304, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !306)
!304 = !DISubroutineType(types: !305)
!305 = !{!18, !173, !83, !83}
!306 = !{!307, !308, !309, !310, !311, !312}
!307 = !DILocalVariable(name: "dst", arg: 1, scope: !303, file: !3, line: 82, type: !173)
!308 = !DILocalVariable(name: "e1", arg: 2, scope: !303, file: !3, line: 82, type: !83)
!309 = !DILocalVariable(name: "e2", arg: 3, scope: !303, file: !3, line: 82, type: !83)
!310 = !DILocalVariable(name: "n", scope: !303, file: !3, line: 84, type: !88)
!311 = !DILocalVariable(name: "bit", scope: !303, file: !3, line: 85, type: !18)
!312 = !DILocalVariable(name: "rc", scope: !303, file: !3, line: 85, type: !18)
!313 = !DILocation(line: 82, column: 33, scope: !303)
!314 = !DILocation(line: 82, column: 60, scope: !303)
!315 = !DILocation(line: 82, column: 86, scope: !303)
!316 = !DILocation(line: 84, column: 2, scope: !303)
!317 = !DILocation(line: 84, column: 23, scope: !303)
!318 = !DILocation(line: 85, column: 2, scope: !303)
!319 = !DILocation(line: 85, column: 6, scope: !303)
!320 = !DILocation(line: 85, column: 11, scope: !303)
!321 = !DILocation(line: 87, column: 15, scope: !303)
!322 = !DILocation(line: 87, column: 2, scope: !303)
!323 = !DILocation(line: 89, column: 2, scope: !324)
!324 = distinct !DILexicalBlock(scope: !303, file: !3, line: 89, column: 2)
!325 = !DILocation(line: 89, column: 2, scope: !326)
!326 = distinct !DILexicalBlock(scope: !324, file: !3, line: 89, column: 2)
!327 = !DILocation(line: 90, column: 23, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !3, line: 90, column: 7)
!329 = distinct !DILexicalBlock(scope: !326, file: !3, line: 89, column: 44)
!330 = !DILocation(line: 90, column: 27, scope: !328)
!331 = !DILocation(line: 90, column: 7, scope: !328)
!332 = !DILocation(line: 90, column: 7, scope: !329)
!333 = !DILocation(line: 91, column: 25, scope: !334)
!334 = distinct !DILexicalBlock(scope: !328, file: !3, line: 90, column: 33)
!335 = !DILocation(line: 91, column: 30, scope: !334)
!336 = !DILocation(line: 91, column: 9, scope: !334)
!337 = !DILocation(line: 91, column: 7, scope: !334)
!338 = !DILocation(line: 92, column: 8, scope: !339)
!339 = distinct !DILexicalBlock(scope: !334, file: !3, line: 92, column: 8)
!340 = !DILocation(line: 92, column: 11, scope: !339)
!341 = !DILocation(line: 92, column: 8, scope: !334)
!342 = !DILocation(line: 93, column: 12, scope: !339)
!343 = !DILocation(line: 93, column: 5, scope: !339)
!344 = !DILocation(line: 94, column: 3, scope: !334)
!345 = !DILocation(line: 95, column: 2, scope: !329)
!346 = distinct !{!346, !323, !347, !151, !152}
!347 = !DILocation(line: 95, column: 2, scope: !324)
!348 = !DILocation(line: 96, column: 2, scope: !303)
!349 = !DILocation(line: 97, column: 1, scope: !303)
!350 = distinct !DISubprogram(name: "ebitmap_start_positive", scope: !64, file: !64, line: 47, type: !351, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !354)
!351 = !DISubroutineType(types: !352)
!352 = !{!7, !83, !353}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!354 = !{!355, !356, !357}
!355 = !DILocalVariable(name: "e", arg: 1, scope: !350, file: !64, line: 47, type: !83)
!356 = !DILocalVariable(name: "n", arg: 2, scope: !350, file: !64, line: 48, type: !353)
!357 = !DILocalVariable(name: "ofs", scope: !350, file: !64, line: 50, type: !7)
!358 = !DILocation(line: 47, column: 73, scope: !350)
!359 = !DILocation(line: 48, column: 31, scope: !350)
!360 = !DILocation(line: 50, column: 2, scope: !350)
!361 = !DILocation(line: 50, column: 15, scope: !350)
!362 = !DILocation(line: 52, column: 12, scope: !363)
!363 = distinct !DILexicalBlock(scope: !350, file: !64, line: 52, column: 2)
!364 = !DILocation(line: 52, column: 15, scope: !363)
!365 = !DILocation(line: 52, column: 8, scope: !363)
!366 = !DILocation(line: 52, column: 10, scope: !363)
!367 = !DILocation(line: 52, column: 7, scope: !363)
!368 = !DILocation(line: 52, column: 22, scope: !369)
!369 = distinct !DILexicalBlock(scope: !363, file: !64, line: 52, column: 2)
!370 = !DILocation(line: 52, column: 21, scope: !369)
!371 = !DILocation(line: 52, column: 2, scope: !363)
!372 = !DILocation(line: 53, column: 26, scope: !373)
!373 = distinct !DILexicalBlock(scope: !369, file: !64, line: 52, column: 42)
!374 = !DILocation(line: 53, column: 25, scope: !373)
!375 = !DILocation(line: 53, column: 30, scope: !373)
!376 = !DILocation(line: 53, column: 24, scope: !373)
!377 = !DILocation(line: 53, column: 9, scope: !373)
!378 = !DILocation(line: 53, column: 7, scope: !373)
!379 = !DILocation(line: 54, column: 7, scope: !380)
!380 = distinct !DILexicalBlock(scope: !373, file: !64, line: 54, column: 7)
!381 = !DILocation(line: 54, column: 11, scope: !380)
!382 = !DILocation(line: 54, column: 7, scope: !373)
!383 = !DILocation(line: 55, column: 13, scope: !380)
!384 = !DILocation(line: 55, column: 12, scope: !380)
!385 = !DILocation(line: 55, column: 17, scope: !380)
!386 = !DILocation(line: 55, column: 28, scope: !380)
!387 = !DILocation(line: 55, column: 26, scope: !380)
!388 = !DILocation(line: 55, column: 4, scope: !380)
!389 = !DILocation(line: 56, column: 2, scope: !373)
!390 = !DILocation(line: 52, column: 32, scope: !369)
!391 = !DILocation(line: 52, column: 31, scope: !369)
!392 = !DILocation(line: 52, column: 36, scope: !369)
!393 = !DILocation(line: 52, column: 26, scope: !369)
!394 = !DILocation(line: 52, column: 28, scope: !369)
!395 = !DILocation(line: 52, column: 2, scope: !369)
!396 = distinct !{!396, !371, !397, !151, !152}
!397 = !DILocation(line: 56, column: 2, scope: !363)
!398 = !DILocation(line: 57, column: 9, scope: !350)
!399 = !DILocation(line: 57, column: 2, scope: !350)
!400 = !DILocation(line: 58, column: 1, scope: !350)
!401 = distinct !DISubprogram(name: "ebitmap_get_bit", scope: !3, file: !3, line: 262, type: !402, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !404)
!402 = !DISubroutineType(types: !403)
!403 = !{!18, !83, !21}
!404 = !{!405, !406, !407}
!405 = !DILocalVariable(name: "e", arg: 1, scope: !401, file: !3, line: 262, type: !83)
!406 = !DILocalVariable(name: "bit", arg: 2, scope: !401, file: !3, line: 262, type: !21)
!407 = !DILocalVariable(name: "n", scope: !401, file: !3, line: 264, type: !102)
!408 = !DILocation(line: 262, column: 43, scope: !401)
!409 = !DILocation(line: 262, column: 60, scope: !401)
!410 = !DILocation(line: 264, column: 2, scope: !401)
!411 = !DILocation(line: 264, column: 29, scope: !401)
!412 = !DILocation(line: 266, column: 6, scope: !413)
!413 = distinct !DILexicalBlock(scope: !401, file: !3, line: 266, column: 6)
!414 = !DILocation(line: 266, column: 9, scope: !413)
!415 = !DILocation(line: 266, column: 19, scope: !413)
!416 = !DILocation(line: 266, column: 17, scope: !413)
!417 = !DILocation(line: 266, column: 6, scope: !401)
!418 = !DILocation(line: 267, column: 3, scope: !413)
!419 = !DILocation(line: 269, column: 6, scope: !401)
!420 = !DILocation(line: 269, column: 9, scope: !401)
!421 = !DILocation(line: 269, column: 4, scope: !401)
!422 = !DILocation(line: 270, column: 2, scope: !401)
!423 = !DILocation(line: 270, column: 9, scope: !401)
!424 = !DILocation(line: 270, column: 11, scope: !401)
!425 = !DILocation(line: 270, column: 15, scope: !401)
!426 = !DILocation(line: 270, column: 18, scope: !401)
!427 = !DILocation(line: 270, column: 30, scope: !401)
!428 = !DILocation(line: 270, column: 27, scope: !401)
!429 = !DILocation(line: 0, scope: !401)
!430 = !DILocation(line: 271, column: 8, scope: !431)
!431 = distinct !DILexicalBlock(scope: !432, file: !3, line: 271, column: 7)
!432 = distinct !DILexicalBlock(scope: !401, file: !3, line: 270, column: 36)
!433 = !DILocation(line: 271, column: 11, scope: !431)
!434 = !DILocation(line: 271, column: 20, scope: !431)
!435 = !DILocation(line: 271, column: 38, scope: !431)
!436 = !DILocation(line: 271, column: 36, scope: !431)
!437 = !DILocation(line: 271, column: 7, scope: !432)
!438 = !DILocation(line: 272, column: 32, scope: !431)
!439 = !DILocation(line: 272, column: 35, scope: !431)
!440 = !DILocation(line: 272, column: 11, scope: !431)
!441 = !DILocation(line: 272, column: 4, scope: !431)
!442 = !DILocation(line: 273, column: 7, scope: !432)
!443 = !DILocation(line: 273, column: 10, scope: !432)
!444 = !DILocation(line: 273, column: 5, scope: !432)
!445 = distinct !{!445, !422, !446, !151, !152}
!446 = !DILocation(line: 274, column: 2, scope: !401)
!447 = !DILocation(line: 276, column: 2, scope: !401)
!448 = !DILocation(line: 277, column: 1, scope: !401)
!449 = distinct !DISubprogram(name: "ebitmap_set_bit", scope: !3, file: !3, line: 279, type: !450, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !452)
!450 = !DISubroutineType(types: !451)
!451 = !{!18, !173, !21, !18}
!452 = !{!453, !454, !455, !456, !457, !458, !459}
!453 = !DILocalVariable(name: "e", arg: 1, scope: !449, file: !3, line: 279, type: !173)
!454 = !DILocalVariable(name: "bit", arg: 2, scope: !449, file: !3, line: 279, type: !21)
!455 = !DILocalVariable(name: "value", arg: 3, scope: !449, file: !3, line: 279, type: !18)
!456 = !DILocalVariable(name: "n", scope: !449, file: !3, line: 281, type: !88)
!457 = !DILocalVariable(name: "prev", scope: !449, file: !3, line: 281, type: !88)
!458 = !DILocalVariable(name: "new", scope: !449, file: !3, line: 281, type: !88)
!459 = !DILocalVariable(name: "s", scope: !460, file: !3, line: 290, type: !7)
!460 = distinct !DILexicalBlock(scope: !461, file: !3, line: 289, column: 11)
!461 = distinct !DILexicalBlock(scope: !462, file: !3, line: 287, column: 8)
!462 = distinct !DILexicalBlock(scope: !463, file: !3, line: 286, column: 43)
!463 = distinct !DILexicalBlock(scope: !464, file: !3, line: 286, column: 7)
!464 = distinct !DILexicalBlock(scope: !449, file: !3, line: 285, column: 34)
!465 = !DILocation(line: 279, column: 37, scope: !449)
!466 = !DILocation(line: 279, column: 54, scope: !449)
!467 = !DILocation(line: 279, column: 63, scope: !449)
!468 = !DILocation(line: 281, column: 2, scope: !449)
!469 = !DILocation(line: 281, column: 23, scope: !449)
!470 = !DILocation(line: 281, column: 27, scope: !449)
!471 = !DILocation(line: 281, column: 34, scope: !449)
!472 = !DILocation(line: 283, column: 7, scope: !449)
!473 = !DILocation(line: 284, column: 6, scope: !449)
!474 = !DILocation(line: 284, column: 9, scope: !449)
!475 = !DILocation(line: 284, column: 4, scope: !449)
!476 = !DILocation(line: 285, column: 2, scope: !449)
!477 = !DILocation(line: 285, column: 9, scope: !449)
!478 = !DILocation(line: 285, column: 11, scope: !449)
!479 = !DILocation(line: 285, column: 14, scope: !449)
!480 = !DILocation(line: 285, column: 17, scope: !449)
!481 = !DILocation(line: 285, column: 29, scope: !449)
!482 = !DILocation(line: 285, column: 26, scope: !449)
!483 = !DILocation(line: 0, scope: !449)
!484 = !DILocation(line: 286, column: 8, scope: !463)
!485 = !DILocation(line: 286, column: 11, scope: !463)
!486 = !DILocation(line: 286, column: 20, scope: !463)
!487 = !DILocation(line: 286, column: 38, scope: !463)
!488 = !DILocation(line: 286, column: 36, scope: !463)
!489 = !DILocation(line: 286, column: 7, scope: !464)
!490 = !DILocation(line: 287, column: 8, scope: !461)
!491 = !DILocation(line: 287, column: 8, scope: !462)
!492 = !DILocation(line: 288, column: 26, scope: !493)
!493 = distinct !DILexicalBlock(scope: !461, file: !3, line: 287, column: 15)
!494 = !DILocation(line: 288, column: 29, scope: !493)
!495 = !DILocation(line: 288, column: 5, scope: !493)
!496 = !DILocation(line: 289, column: 4, scope: !493)
!497 = !DILocation(line: 290, column: 5, scope: !460)
!498 = !DILocation(line: 290, column: 18, scope: !460)
!499 = !DILocation(line: 292, column: 26, scope: !460)
!500 = !DILocation(line: 292, column: 29, scope: !460)
!501 = !DILocation(line: 292, column: 5, scope: !460)
!502 = !DILocation(line: 294, column: 24, scope: !460)
!503 = !DILocation(line: 294, column: 27, scope: !460)
!504 = !DILocation(line: 294, column: 9, scope: !460)
!505 = !DILocation(line: 294, column: 7, scope: !460)
!506 = !DILocation(line: 295, column: 9, scope: !507)
!507 = distinct !DILexicalBlock(scope: !460, file: !3, line: 295, column: 9)
!508 = !DILocation(line: 295, column: 11, scope: !507)
!509 = !DILocation(line: 295, column: 9, scope: !460)
!510 = !DILocation(line: 296, column: 6, scope: !507)
!511 = !DILocation(line: 299, column: 10, scope: !512)
!512 = distinct !DILexicalBlock(scope: !460, file: !3, line: 299, column: 9)
!513 = !DILocation(line: 299, column: 13, scope: !512)
!514 = !DILocation(line: 299, column: 9, scope: !460)
!515 = !DILocation(line: 304, column: 10, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !3, line: 304, column: 10)
!517 = distinct !DILexicalBlock(scope: !512, file: !3, line: 299, column: 19)
!518 = !DILocation(line: 304, column: 10, scope: !517)
!519 = !DILocation(line: 305, column: 20, scope: !516)
!520 = !DILocation(line: 305, column: 26, scope: !516)
!521 = !DILocation(line: 306, column: 13, scope: !516)
!522 = !DILocation(line: 305, column: 7, scope: !516)
!523 = !DILocation(line: 305, column: 10, scope: !516)
!524 = !DILocation(line: 305, column: 18, scope: !516)
!525 = !DILocation(line: 308, column: 7, scope: !516)
!526 = !DILocation(line: 308, column: 10, scope: !516)
!527 = !DILocation(line: 308, column: 18, scope: !516)
!528 = !DILocation(line: 309, column: 5, scope: !517)
!529 = !DILocation(line: 310, column: 9, scope: !530)
!530 = distinct !DILexicalBlock(scope: !460, file: !3, line: 310, column: 9)
!531 = !DILocation(line: 310, column: 9, scope: !460)
!532 = !DILocation(line: 311, column: 19, scope: !530)
!533 = !DILocation(line: 311, column: 22, scope: !530)
!534 = !DILocation(line: 311, column: 6, scope: !530)
!535 = !DILocation(line: 311, column: 12, scope: !530)
!536 = !DILocation(line: 311, column: 17, scope: !530)
!537 = !DILocation(line: 313, column: 16, scope: !530)
!538 = !DILocation(line: 313, column: 19, scope: !530)
!539 = !DILocation(line: 313, column: 6, scope: !530)
!540 = !DILocation(line: 313, column: 9, scope: !530)
!541 = !DILocation(line: 313, column: 14, scope: !530)
!542 = !DILocation(line: 314, column: 21, scope: !460)
!543 = !DILocation(line: 314, column: 42, scope: !460)
!544 = !DILocation(line: 314, column: 5, scope: !460)
!545 = !DILocation(line: 315, column: 4, scope: !461)
!546 = !DILocation(line: 316, column: 4, scope: !462)
!547 = !DILocation(line: 318, column: 10, scope: !464)
!548 = !DILocation(line: 318, column: 8, scope: !464)
!549 = !DILocation(line: 319, column: 7, scope: !464)
!550 = !DILocation(line: 319, column: 10, scope: !464)
!551 = !DILocation(line: 319, column: 5, scope: !464)
!552 = distinct !{!552, !476, !553, !151, !152}
!553 = !DILocation(line: 320, column: 2, scope: !449)
!554 = !DILocation(line: 322, column: 7, scope: !555)
!555 = distinct !DILexicalBlock(scope: !449, file: !3, line: 322, column: 6)
!556 = !DILocation(line: 322, column: 6, scope: !449)
!557 = !DILocation(line: 323, column: 3, scope: !555)
!558 = !DILocation(line: 325, column: 26, scope: !449)
!559 = !DILocation(line: 325, column: 8, scope: !449)
!560 = !DILocation(line: 325, column: 6, scope: !449)
!561 = !DILocation(line: 326, column: 7, scope: !562)
!562 = distinct !DILexicalBlock(scope: !449, file: !3, line: 326, column: 6)
!563 = !DILocation(line: 326, column: 6, scope: !449)
!564 = !DILocation(line: 327, column: 3, scope: !562)
!565 = !DILocation(line: 329, column: 18, scope: !449)
!566 = !DILocation(line: 329, column: 25, scope: !449)
!567 = !DILocation(line: 329, column: 29, scope: !449)
!568 = !DILocation(line: 329, column: 22, scope: !449)
!569 = !DILocation(line: 329, column: 2, scope: !449)
!570 = !DILocation(line: 329, column: 7, scope: !449)
!571 = !DILocation(line: 329, column: 16, scope: !449)
!572 = !DILocation(line: 330, column: 23, scope: !449)
!573 = !DILocation(line: 330, column: 28, scope: !449)
!574 = !DILocation(line: 330, column: 2, scope: !449)
!575 = !DILocation(line: 332, column: 7, scope: !576)
!576 = distinct !DILexicalBlock(scope: !449, file: !3, line: 332, column: 6)
!577 = !DILocation(line: 332, column: 6, scope: !449)
!578 = !DILocation(line: 334, column: 16, scope: !576)
!579 = !DILocation(line: 334, column: 21, scope: !576)
!580 = !DILocation(line: 334, column: 30, scope: !576)
!581 = !DILocation(line: 334, column: 3, scope: !576)
!582 = !DILocation(line: 334, column: 6, scope: !576)
!583 = !DILocation(line: 334, column: 14, scope: !576)
!584 = !DILocation(line: 336, column: 6, scope: !585)
!585 = distinct !DILexicalBlock(scope: !449, file: !3, line: 336, column: 6)
!586 = !DILocation(line: 336, column: 6, scope: !449)
!587 = !DILocation(line: 337, column: 15, scope: !588)
!588 = distinct !DILexicalBlock(scope: !585, file: !3, line: 336, column: 12)
!589 = !DILocation(line: 337, column: 21, scope: !588)
!590 = !DILocation(line: 337, column: 3, scope: !588)
!591 = !DILocation(line: 337, column: 8, scope: !588)
!592 = !DILocation(line: 337, column: 13, scope: !588)
!593 = !DILocation(line: 338, column: 16, scope: !588)
!594 = !DILocation(line: 338, column: 3, scope: !588)
!595 = !DILocation(line: 338, column: 9, scope: !588)
!596 = !DILocation(line: 338, column: 14, scope: !588)
!597 = !DILocation(line: 339, column: 2, scope: !588)
!598 = !DILocation(line: 340, column: 15, scope: !599)
!599 = distinct !DILexicalBlock(scope: !585, file: !3, line: 339, column: 9)
!600 = !DILocation(line: 340, column: 18, scope: !599)
!601 = !DILocation(line: 340, column: 3, scope: !599)
!602 = !DILocation(line: 340, column: 8, scope: !599)
!603 = !DILocation(line: 340, column: 13, scope: !599)
!604 = !DILocation(line: 341, column: 13, scope: !599)
!605 = !DILocation(line: 341, column: 3, scope: !599)
!606 = !DILocation(line: 341, column: 6, scope: !599)
!607 = !DILocation(line: 341, column: 11, scope: !599)
!608 = !DILocation(line: 344, column: 2, scope: !449)
!609 = !DILocation(line: 345, column: 1, scope: !449)
!610 = distinct !DISubprogram(name: "ebitmap_next_positive", scope: !64, file: !64, line: 65, type: !611, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !613)
!611 = !DISubroutineType(types: !612)
!612 = !{!7, !83, !353, !7}
!613 = !{!614, !615, !616, !617}
!614 = !DILocalVariable(name: "e", arg: 1, scope: !610, file: !64, line: 65, type: !83)
!615 = !DILocalVariable(name: "n", arg: 2, scope: !610, file: !64, line: 66, type: !353)
!616 = !DILocalVariable(name: "bit", arg: 3, scope: !610, file: !64, line: 67, type: !7)
!617 = !DILocalVariable(name: "ofs", scope: !610, file: !64, line: 69, type: !7)
!618 = !DILocation(line: 65, column: 72, scope: !610)
!619 = !DILocation(line: 66, column: 30, scope: !610)
!620 = !DILocation(line: 67, column: 21, scope: !610)
!621 = !DILocation(line: 69, column: 2, scope: !610)
!622 = !DILocation(line: 69, column: 15, scope: !610)
!623 = !DILocation(line: 71, column: 24, scope: !610)
!624 = !DILocation(line: 71, column: 23, scope: !610)
!625 = !DILocation(line: 71, column: 28, scope: !610)
!626 = !DILocation(line: 71, column: 22, scope: !610)
!627 = !DILocation(line: 71, column: 48, scope: !610)
!628 = !DILocation(line: 71, column: 56, scope: !610)
!629 = !DILocation(line: 71, column: 55, scope: !610)
!630 = !DILocation(line: 71, column: 60, scope: !610)
!631 = !DILocation(line: 71, column: 52, scope: !610)
!632 = !DILocation(line: 71, column: 69, scope: !610)
!633 = !DILocation(line: 71, column: 8, scope: !610)
!634 = !DILocation(line: 71, column: 6, scope: !610)
!635 = !DILocation(line: 72, column: 6, scope: !636)
!636 = distinct !DILexicalBlock(scope: !610, file: !64, line: 72, column: 6)
!637 = !DILocation(line: 72, column: 10, scope: !636)
!638 = !DILocation(line: 72, column: 6, scope: !610)
!639 = !DILocation(line: 73, column: 10, scope: !636)
!640 = !DILocation(line: 73, column: 18, scope: !636)
!641 = !DILocation(line: 73, column: 17, scope: !636)
!642 = !DILocation(line: 73, column: 22, scope: !636)
!643 = !DILocation(line: 73, column: 14, scope: !636)
!644 = !DILocation(line: 73, column: 3, scope: !636)
!645 = !DILocation(line: 75, column: 14, scope: !646)
!646 = distinct !DILexicalBlock(scope: !610, file: !64, line: 75, column: 2)
!647 = !DILocation(line: 75, column: 13, scope: !646)
!648 = !DILocation(line: 75, column: 18, scope: !646)
!649 = !DILocation(line: 75, column: 8, scope: !646)
!650 = !DILocation(line: 75, column: 10, scope: !646)
!651 = !DILocation(line: 75, column: 7, scope: !646)
!652 = !DILocation(line: 75, column: 25, scope: !653)
!653 = distinct !DILexicalBlock(scope: !646, file: !64, line: 75, column: 2)
!654 = !DILocation(line: 75, column: 24, scope: !653)
!655 = !DILocation(line: 75, column: 2, scope: !646)
!656 = !DILocation(line: 76, column: 26, scope: !657)
!657 = distinct !DILexicalBlock(scope: !653, file: !64, line: 75, column: 45)
!658 = !DILocation(line: 76, column: 25, scope: !657)
!659 = !DILocation(line: 76, column: 30, scope: !657)
!660 = !DILocation(line: 76, column: 24, scope: !657)
!661 = !DILocation(line: 76, column: 9, scope: !657)
!662 = !DILocation(line: 76, column: 7, scope: !657)
!663 = !DILocation(line: 77, column: 7, scope: !664)
!664 = distinct !DILexicalBlock(scope: !657, file: !64, line: 77, column: 7)
!665 = !DILocation(line: 77, column: 11, scope: !664)
!666 = !DILocation(line: 77, column: 7, scope: !657)
!667 = !DILocation(line: 78, column: 11, scope: !664)
!668 = !DILocation(line: 78, column: 19, scope: !664)
!669 = !DILocation(line: 78, column: 18, scope: !664)
!670 = !DILocation(line: 78, column: 23, scope: !664)
!671 = !DILocation(line: 78, column: 15, scope: !664)
!672 = !DILocation(line: 78, column: 4, scope: !664)
!673 = !DILocation(line: 79, column: 2, scope: !657)
!674 = !DILocation(line: 75, column: 35, scope: !653)
!675 = !DILocation(line: 75, column: 34, scope: !653)
!676 = !DILocation(line: 75, column: 39, scope: !653)
!677 = !DILocation(line: 75, column: 29, scope: !653)
!678 = !DILocation(line: 75, column: 31, scope: !653)
!679 = !DILocation(line: 75, column: 2, scope: !653)
!680 = distinct !{!680, !655, !681, !151, !152}
!681 = !DILocation(line: 79, column: 2, scope: !646)
!682 = !DILocation(line: 80, column: 9, scope: !610)
!683 = !DILocation(line: 80, column: 2, scope: !610)
!684 = !DILocation(line: 81, column: 1, scope: !610)
!685 = distinct !DISubprogram(name: "ebitmap_netlbl_export", scope: !3, file: !3, line: 111, type: !686, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !699)
!686 = !DISubroutineType(types: !687)
!687 = !{!18, !173, !688}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlbl_lsm_catmap", file: !691, line: 154, size: 384, elements: !692)
!691 = !DIFile(filename: "./include/net/netlabel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10369c8505590d639d1be416b6c48b7f")
!692 = !{!693, !694, !698}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "startbit", scope: !690, file: !691, line: 155, baseType: !9, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !690, file: !691, line: 156, baseType: !695, size: 256, offset: 64)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 256, elements: !696)
!696 = !{!697}
!697 = !DISubrange(count: 4)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !690, file: !691, line: 157, baseType: !689, size: 64, offset: 320)
!699 = !{!700, !701, !702, !703, !704, !705, !706, !707}
!700 = !DILocalVariable(name: "ebmap", arg: 1, scope: !685, file: !3, line: 111, type: !173)
!701 = !DILocalVariable(name: "catmap", arg: 2, scope: !685, file: !3, line: 112, type: !688)
!702 = !DILocalVariable(name: "e_iter", scope: !685, file: !3, line: 114, type: !88)
!703 = !DILocalVariable(name: "e_map", scope: !685, file: !3, line: 115, type: !21)
!704 = !DILocalVariable(name: "offset", scope: !685, file: !3, line: 116, type: !9)
!705 = !DILocalVariable(name: "iter", scope: !685, file: !3, line: 117, type: !7)
!706 = !DILocalVariable(name: "rc", scope: !685, file: !3, line: 118, type: !18)
!707 = !DILabel(scope: !685, name: "netlbl_export_failure", file: !3, line: 148)
!708 = !DILocation(line: 111, column: 43, scope: !685)
!709 = !DILocation(line: 112, column: 33, scope: !685)
!710 = !DILocation(line: 114, column: 2, scope: !685)
!711 = !DILocation(line: 114, column: 23, scope: !685)
!712 = !DILocation(line: 114, column: 32, scope: !685)
!713 = !DILocation(line: 114, column: 39, scope: !685)
!714 = !DILocation(line: 115, column: 2, scope: !685)
!715 = !DILocation(line: 115, column: 16, scope: !685)
!716 = !DILocation(line: 116, column: 2, scope: !685)
!717 = !DILocation(line: 116, column: 6, scope: !685)
!718 = !DILocation(line: 117, column: 2, scope: !685)
!719 = !DILocation(line: 117, column: 15, scope: !685)
!720 = !DILocation(line: 118, column: 2, scope: !685)
!721 = !DILocation(line: 118, column: 6, scope: !685)
!722 = !DILocation(line: 120, column: 6, scope: !723)
!723 = distinct !DILexicalBlock(scope: !685, file: !3, line: 120, column: 6)
!724 = !DILocation(line: 120, column: 13, scope: !723)
!725 = !DILocation(line: 120, column: 6, scope: !685)
!726 = !DILocation(line: 121, column: 4, scope: !727)
!727 = distinct !DILexicalBlock(scope: !723, file: !3, line: 120, column: 22)
!728 = !DILocation(line: 121, column: 11, scope: !727)
!729 = !DILocation(line: 122, column: 3, scope: !727)
!730 = !DILocation(line: 125, column: 7, scope: !731)
!731 = distinct !DILexicalBlock(scope: !685, file: !3, line: 125, column: 6)
!732 = !DILocation(line: 125, column: 6, scope: !731)
!733 = !DILocation(line: 125, column: 14, scope: !731)
!734 = !DILocation(line: 125, column: 6, scope: !685)
!735 = !DILocation(line: 126, column: 23, scope: !731)
!736 = !DILocation(line: 126, column: 22, scope: !731)
!737 = !DILocation(line: 126, column: 3, scope: !731)
!738 = !DILocation(line: 127, column: 3, scope: !685)
!739 = !DILocation(line: 127, column: 10, scope: !685)
!740 = !DILocation(line: 129, column: 2, scope: !685)
!741 = !DILocation(line: 129, column: 9, scope: !685)
!742 = !DILocation(line: 130, column: 12, scope: !743)
!743 = distinct !DILexicalBlock(scope: !685, file: !3, line: 129, column: 17)
!744 = !DILocation(line: 130, column: 20, scope: !743)
!745 = !DILocation(line: 130, column: 10, scope: !743)
!746 = !DILocation(line: 131, column: 13, scope: !747)
!747 = distinct !DILexicalBlock(scope: !743, file: !3, line: 131, column: 3)
!748 = !DILocation(line: 131, column: 8, scope: !747)
!749 = !DILocation(line: 131, column: 18, scope: !750)
!750 = distinct !DILexicalBlock(scope: !747, file: !3, line: 131, column: 3)
!751 = !DILocation(line: 131, column: 23, scope: !750)
!752 = !DILocation(line: 131, column: 3, scope: !747)
!753 = !DILocation(line: 132, column: 12, scope: !754)
!754 = distinct !DILexicalBlock(scope: !750, file: !3, line: 131, column: 52)
!755 = !DILocation(line: 132, column: 20, scope: !754)
!756 = !DILocation(line: 132, column: 25, scope: !754)
!757 = !DILocation(line: 132, column: 10, scope: !754)
!758 = !DILocation(line: 133, column: 8, scope: !759)
!759 = distinct !DILexicalBlock(scope: !754, file: !3, line: 133, column: 8)
!760 = !DILocation(line: 133, column: 14, scope: !759)
!761 = !DILocation(line: 133, column: 8, scope: !754)
!762 = !DILocation(line: 134, column: 32, scope: !763)
!763 = distinct !DILexicalBlock(scope: !759, file: !3, line: 133, column: 20)
!764 = !DILocation(line: 135, column: 11, scope: !763)
!765 = !DILocation(line: 136, column: 11, scope: !763)
!766 = !DILocation(line: 134, column: 10, scope: !763)
!767 = !DILocation(line: 134, column: 8, scope: !763)
!768 = !DILocation(line: 138, column: 9, scope: !769)
!769 = distinct !DILexicalBlock(scope: !763, file: !3, line: 138, column: 9)
!770 = !DILocation(line: 138, column: 12, scope: !769)
!771 = !DILocation(line: 138, column: 9, scope: !763)
!772 = !DILocation(line: 139, column: 6, scope: !769)
!773 = !DILocation(line: 140, column: 4, scope: !763)
!774 = !DILocation(line: 141, column: 11, scope: !754)
!775 = !DILocation(line: 142, column: 3, scope: !754)
!776 = !DILocation(line: 131, column: 48, scope: !750)
!777 = !DILocation(line: 131, column: 3, scope: !750)
!778 = distinct !{!778, !752, !779, !151, !152}
!779 = !DILocation(line: 142, column: 3, scope: !747)
!780 = !DILocation(line: 143, column: 12, scope: !743)
!781 = !DILocation(line: 143, column: 20, scope: !743)
!782 = !DILocation(line: 143, column: 10, scope: !743)
!783 = distinct !{!783, !740, !784, !151, !152}
!784 = !DILocation(line: 144, column: 2, scope: !685)
!785 = !DILocation(line: 146, column: 2, scope: !685)
!786 = !DILocation(line: 148, column: 1, scope: !685)
!787 = !DILocation(line: 149, column: 22, scope: !685)
!788 = !DILocation(line: 149, column: 21, scope: !685)
!789 = !DILocation(line: 149, column: 2, scope: !685)
!790 = !DILocation(line: 150, column: 2, scope: !685)
!791 = !DILocation(line: 151, column: 1, scope: !685)
!792 = distinct !DISubprogram(name: "netlbl_catmap_free", scope: !691, file: !691, line: 328, type: !793, scopeLine: 329, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !795)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !689}
!795 = !{!796, !797}
!796 = !DILocalVariable(name: "catmap", arg: 1, scope: !792, file: !691, line: 328, type: !689)
!797 = !DILocalVariable(name: "iter", scope: !792, file: !691, line: 330, type: !689)
!798 = !DILocation(line: 328, column: 65, scope: !792)
!799 = !DILocation(line: 330, column: 2, scope: !792)
!800 = !DILocation(line: 330, column: 28, scope: !792)
!801 = !DILocation(line: 332, column: 2, scope: !792)
!802 = !DILocation(line: 332, column: 9, scope: !792)
!803 = !DILocation(line: 333, column: 10, scope: !804)
!804 = distinct !DILexicalBlock(scope: !792, file: !691, line: 332, column: 17)
!805 = !DILocation(line: 333, column: 8, scope: !804)
!806 = !DILocation(line: 334, column: 12, scope: !804)
!807 = !DILocation(line: 334, column: 20, scope: !804)
!808 = !DILocation(line: 334, column: 10, scope: !804)
!809 = !DILocation(line: 335, column: 9, scope: !804)
!810 = !DILocation(line: 335, column: 3, scope: !804)
!811 = distinct !{!811, !801, !812, !151, !152}
!812 = !DILocation(line: 336, column: 2, scope: !792)
!813 = !DILocation(line: 337, column: 1, scope: !792)
!814 = !DISubprogram(name: "netlbl_catmap_setlong", scope: !691, file: !691, line: 457, type: !815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!815 = !DISubroutineType(types: !816)
!816 = !{!18, !688, !9, !21, !5}
!817 = distinct !DISubprogram(name: "ebitmap_netlbl_import", scope: !3, file: !3, line: 163, type: !818, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !820)
!818 = !DISubroutineType(types: !819)
!819 = !{!18, !173, !689}
!820 = !{!821, !822, !823, !824, !825, !826, !827, !828, !829}
!821 = !DILocalVariable(name: "ebmap", arg: 1, scope: !817, file: !3, line: 163, type: !173)
!822 = !DILocalVariable(name: "catmap", arg: 2, scope: !817, file: !3, line: 164, type: !689)
!823 = !DILocalVariable(name: "rc", scope: !817, file: !3, line: 166, type: !18)
!824 = !DILocalVariable(name: "e_iter", scope: !817, file: !3, line: 167, type: !88)
!825 = !DILocalVariable(name: "e_prev", scope: !817, file: !3, line: 168, type: !88)
!826 = !DILocalVariable(name: "offset", scope: !817, file: !3, line: 169, type: !9)
!827 = !DILocalVariable(name: "idx", scope: !817, file: !3, line: 169, type: !9)
!828 = !DILocalVariable(name: "bitmap", scope: !817, file: !3, line: 170, type: !21)
!829 = !DILabel(scope: !817, name: "netlbl_import_failure", file: !3, line: 210)
!830 = !DILocation(line: 163, column: 43, scope: !817)
!831 = !DILocation(line: 164, column: 32, scope: !817)
!832 = !DILocation(line: 166, column: 2, scope: !817)
!833 = !DILocation(line: 166, column: 6, scope: !817)
!834 = !DILocation(line: 167, column: 2, scope: !817)
!835 = !DILocation(line: 167, column: 23, scope: !817)
!836 = !DILocation(line: 168, column: 2, scope: !817)
!837 = !DILocation(line: 168, column: 23, scope: !817)
!838 = !DILocation(line: 169, column: 2, scope: !817)
!839 = !DILocation(line: 169, column: 6, scope: !817)
!840 = !DILocation(line: 169, column: 18, scope: !817)
!841 = !DILocation(line: 170, column: 2, scope: !817)
!842 = !DILocation(line: 170, column: 16, scope: !817)
!843 = !DILocation(line: 172, column: 2, scope: !817)
!844 = !DILocation(line: 173, column: 30, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !3, line: 172, column: 11)
!846 = distinct !DILexicalBlock(scope: !847, file: !3, line: 172, column: 2)
!847 = distinct !DILexicalBlock(scope: !817, file: !3, line: 172, column: 2)
!848 = !DILocation(line: 173, column: 8, scope: !845)
!849 = !DILocation(line: 173, column: 6, scope: !845)
!850 = !DILocation(line: 174, column: 7, scope: !851)
!851 = distinct !DILexicalBlock(scope: !845, file: !3, line: 174, column: 7)
!852 = !DILocation(line: 174, column: 10, scope: !851)
!853 = !DILocation(line: 174, column: 7, scope: !845)
!854 = !DILocation(line: 175, column: 4, scope: !851)
!855 = !DILocation(line: 176, column: 7, scope: !856)
!856 = distinct !DILexicalBlock(scope: !845, file: !3, line: 176, column: 7)
!857 = !DILocation(line: 176, column: 14, scope: !856)
!858 = !DILocation(line: 176, column: 7, scope: !845)
!859 = !DILocation(line: 177, column: 4, scope: !856)
!860 = !DILocation(line: 180, column: 7, scope: !861)
!861 = distinct !DILexicalBlock(scope: !845, file: !3, line: 180, column: 7)
!862 = !DILocation(line: 180, column: 14, scope: !861)
!863 = !DILocation(line: 180, column: 7, scope: !845)
!864 = !DILocation(line: 181, column: 11, scope: !865)
!865 = distinct !DILexicalBlock(scope: !861, file: !3, line: 180, column: 20)
!866 = !DILocation(line: 182, column: 4, scope: !865)
!867 = distinct !{!867, !868, !869, !152}
!868 = !DILocation(line: 172, column: 2, scope: !847)
!869 = !DILocation(line: 205, column: 2, scope: !847)
!870 = !DILocation(line: 185, column: 7, scope: !871)
!871 = distinct !DILexicalBlock(scope: !845, file: !3, line: 185, column: 7)
!872 = !DILocation(line: 185, column: 14, scope: !871)
!873 = !DILocation(line: 185, column: 22, scope: !871)
!874 = !DILocation(line: 186, column: 7, scope: !871)
!875 = !DILocation(line: 186, column: 17, scope: !871)
!876 = !DILocation(line: 186, column: 25, scope: !871)
!877 = !DILocation(line: 186, column: 34, scope: !871)
!878 = !DILocation(line: 186, column: 14, scope: !871)
!879 = !DILocation(line: 185, column: 7, scope: !845)
!880 = !DILocation(line: 187, column: 13, scope: !881)
!881 = distinct !DILexicalBlock(scope: !871, file: !3, line: 186, column: 50)
!882 = !DILocation(line: 187, column: 11, scope: !881)
!883 = !DILocation(line: 188, column: 31, scope: !881)
!884 = !DILocation(line: 188, column: 13, scope: !881)
!885 = !DILocation(line: 188, column: 11, scope: !881)
!886 = !DILocation(line: 189, column: 8, scope: !887)
!887 = distinct !DILexicalBlock(scope: !881, file: !3, line: 189, column: 8)
!888 = !DILocation(line: 189, column: 15, scope: !887)
!889 = !DILocation(line: 189, column: 8, scope: !881)
!890 = !DILocation(line: 190, column: 5, scope: !887)
!891 = !DILocation(line: 191, column: 23, scope: !881)
!892 = !DILocation(line: 191, column: 33, scope: !881)
!893 = !DILocation(line: 191, column: 40, scope: !881)
!894 = !DILocation(line: 191, column: 30, scope: !881)
!895 = !DILocation(line: 191, column: 4, scope: !881)
!896 = !DILocation(line: 191, column: 12, scope: !881)
!897 = !DILocation(line: 191, column: 21, scope: !881)
!898 = !DILocation(line: 192, column: 8, scope: !899)
!899 = distinct !DILexicalBlock(scope: !881, file: !3, line: 192, column: 8)
!900 = !DILocation(line: 192, column: 15, scope: !899)
!901 = !DILocation(line: 192, column: 8, scope: !881)
!902 = !DILocation(line: 193, column: 19, scope: !899)
!903 = !DILocation(line: 193, column: 5, scope: !899)
!904 = !DILocation(line: 193, column: 12, scope: !899)
!905 = !DILocation(line: 193, column: 17, scope: !899)
!906 = !DILocation(line: 195, column: 20, scope: !899)
!907 = !DILocation(line: 195, column: 5, scope: !899)
!908 = !DILocation(line: 195, column: 13, scope: !899)
!909 = !DILocation(line: 195, column: 18, scope: !899)
!910 = !DILocation(line: 196, column: 21, scope: !881)
!911 = !DILocation(line: 196, column: 29, scope: !881)
!912 = !DILocation(line: 196, column: 38, scope: !881)
!913 = !DILocation(line: 196, column: 4, scope: !881)
!914 = !DILocation(line: 196, column: 11, scope: !881)
!915 = !DILocation(line: 196, column: 19, scope: !881)
!916 = !DILocation(line: 197, column: 3, scope: !881)
!917 = !DILocation(line: 200, column: 9, scope: !845)
!918 = !DILocation(line: 200, column: 7, scope: !845)
!919 = !DILocation(line: 201, column: 23, scope: !845)
!920 = !DILocation(line: 201, column: 3, scope: !845)
!921 = !DILocation(line: 201, column: 11, scope: !845)
!922 = !DILocation(line: 201, column: 16, scope: !845)
!923 = !DILocation(line: 201, column: 21, scope: !845)
!924 = !DILocation(line: 204, column: 10, scope: !845)
!925 = !DILocation(line: 172, column: 2, scope: !846)
!926 = !DILocation(line: 210, column: 1, scope: !817)
!927 = !DILocation(line: 211, column: 18, scope: !817)
!928 = !DILocation(line: 211, column: 2, scope: !817)
!929 = !DILocation(line: 212, column: 2, scope: !817)
!930 = !DILocation(line: 213, column: 1, scope: !817)
!931 = !DISubprogram(name: "netlbl_catmap_getlong", scope: !691, file: !691, line: 447, type: !932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!932 = !DISubroutineType(types: !933)
!933 = !{!18, !689, !934, !935}
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!936 = distinct !DISubprogram(name: "ebitmap_contains", scope: !3, file: !3, line: 221, type: !937, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !939)
!937 = !DISubroutineType(types: !938)
!938 = !{!18, !83, !83, !9}
!939 = !{!940, !941, !942, !943, !944, !945, !946}
!940 = !DILocalVariable(name: "e1", arg: 1, scope: !936, file: !3, line: 221, type: !83)
!941 = !DILocalVariable(name: "e2", arg: 2, scope: !936, file: !3, line: 221, type: !83)
!942 = !DILocalVariable(name: "last_e2bit", arg: 3, scope: !936, file: !3, line: 221, type: !9)
!943 = !DILocalVariable(name: "n1", scope: !936, file: !3, line: 223, type: !102)
!944 = !DILocalVariable(name: "n2", scope: !936, file: !3, line: 223, type: !102)
!945 = !DILocalVariable(name: "i", scope: !936, file: !3, line: 224, type: !18)
!946 = !DILocalVariable(name: "lastsetbit", scope: !947, file: !3, line: 240, type: !9)
!947 = distinct !DILexicalBlock(scope: !948, file: !3, line: 239, column: 31)
!948 = distinct !DILexicalBlock(scope: !949, file: !3, line: 239, column: 7)
!949 = distinct !DILexicalBlock(scope: !936, file: !3, line: 232, column: 53)
!950 = !DILocation(line: 221, column: 44, scope: !936)
!951 = !DILocation(line: 221, column: 70, scope: !936)
!952 = !DILocation(line: 221, column: 78, scope: !936)
!953 = !DILocation(line: 223, column: 2, scope: !936)
!954 = !DILocation(line: 223, column: 29, scope: !936)
!955 = !DILocation(line: 223, column: 34, scope: !936)
!956 = !DILocation(line: 224, column: 2, scope: !936)
!957 = !DILocation(line: 224, column: 6, scope: !936)
!958 = !DILocation(line: 226, column: 6, scope: !959)
!959 = distinct !DILexicalBlock(scope: !936, file: !3, line: 226, column: 6)
!960 = !DILocation(line: 226, column: 10, scope: !959)
!961 = !DILocation(line: 226, column: 20, scope: !959)
!962 = !DILocation(line: 226, column: 24, scope: !959)
!963 = !DILocation(line: 226, column: 18, scope: !959)
!964 = !DILocation(line: 226, column: 6, scope: !936)
!965 = !DILocation(line: 227, column: 3, scope: !959)
!966 = !DILocation(line: 229, column: 7, scope: !936)
!967 = !DILocation(line: 229, column: 11, scope: !936)
!968 = !DILocation(line: 229, column: 5, scope: !936)
!969 = !DILocation(line: 230, column: 7, scope: !936)
!970 = !DILocation(line: 230, column: 11, scope: !936)
!971 = !DILocation(line: 230, column: 5, scope: !936)
!972 = !DILocation(line: 232, column: 2, scope: !936)
!973 = !DILocation(line: 232, column: 9, scope: !936)
!974 = !DILocation(line: 232, column: 12, scope: !936)
!975 = !DILocation(line: 232, column: 15, scope: !936)
!976 = !DILocation(line: 232, column: 18, scope: !936)
!977 = !DILocation(line: 232, column: 22, scope: !936)
!978 = !DILocation(line: 232, column: 26, scope: !936)
!979 = !DILocation(line: 232, column: 38, scope: !936)
!980 = !DILocation(line: 232, column: 42, scope: !936)
!981 = !DILocation(line: 232, column: 35, scope: !936)
!982 = !DILocation(line: 0, scope: !936)
!983 = !DILocation(line: 233, column: 7, scope: !984)
!984 = distinct !DILexicalBlock(scope: !949, file: !3, line: 233, column: 7)
!985 = !DILocation(line: 233, column: 11, scope: !984)
!986 = !DILocation(line: 233, column: 22, scope: !984)
!987 = !DILocation(line: 233, column: 26, scope: !984)
!988 = !DILocation(line: 233, column: 20, scope: !984)
!989 = !DILocation(line: 233, column: 7, scope: !949)
!990 = !DILocation(line: 234, column: 9, scope: !991)
!991 = distinct !DILexicalBlock(scope: !984, file: !3, line: 233, column: 36)
!992 = !DILocation(line: 234, column: 13, scope: !991)
!993 = !DILocation(line: 234, column: 7, scope: !991)
!994 = !DILocation(line: 235, column: 4, scope: !991)
!995 = distinct !{!995, !972, !996, !151, !152}
!996 = !DILocation(line: 254, column: 2, scope: !936)
!997 = !DILocation(line: 237, column: 10, scope: !998)
!998 = distinct !DILexicalBlock(scope: !949, file: !3, line: 237, column: 3)
!999 = !DILocation(line: 237, column: 8, scope: !998)
!1000 = !DILocation(line: 237, column: 36, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !998, file: !3, line: 237, column: 3)
!1002 = !DILocation(line: 237, column: 38, scope: !1001)
!1003 = !DILocation(line: 237, column: 44, scope: !1001)
!1004 = !DILocation(line: 237, column: 48, scope: !1001)
!1005 = !DILocation(line: 237, column: 52, scope: !1001)
!1006 = !DILocation(line: 237, column: 57, scope: !1001)
!1007 = !DILocation(line: 237, column: 47, scope: !1001)
!1008 = !DILocation(line: 0, scope: !1001)
!1009 = !DILocation(line: 237, column: 3, scope: !998)
!1010 = !DILocation(line: 238, column: 5, scope: !1001)
!1011 = !DILocation(line: 237, column: 3, scope: !1001)
!1012 = distinct !{!1012, !1009, !1013, !151, !152}
!1013 = !DILocation(line: 238, column: 5, scope: !998)
!1014 = !DILocation(line: 239, column: 7, scope: !948)
!1015 = !DILocation(line: 239, column: 18, scope: !948)
!1016 = !DILocation(line: 239, column: 22, scope: !948)
!1017 = !DILocation(line: 239, column: 24, scope: !948)
!1018 = !DILocation(line: 239, column: 7, scope: !949)
!1019 = !DILocation(line: 240, column: 4, scope: !947)
!1020 = !DILocation(line: 240, column: 8, scope: !947)
!1021 = !DILocation(line: 240, column: 21, scope: !947)
!1022 = !DILocation(line: 240, column: 25, scope: !947)
!1023 = !DILocation(line: 240, column: 36, scope: !947)
!1024 = !DILocation(line: 240, column: 38, scope: !947)
!1025 = !DILocation(line: 240, column: 34, scope: !947)
!1026 = !DILocation(line: 241, column: 13, scope: !947)
!1027 = !DILocation(line: 241, column: 17, scope: !947)
!1028 = !DILocation(line: 241, column: 22, scope: !947)
!1029 = !DILocation(line: 241, column: 7, scope: !947)
!1030 = !DILocation(line: 240, column: 58, scope: !947)
!1031 = !DILocation(line: 242, column: 8, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !947, file: !3, line: 242, column: 8)
!1033 = !DILocation(line: 242, column: 21, scope: !1032)
!1034 = !DILocation(line: 242, column: 19, scope: !1032)
!1035 = !DILocation(line: 242, column: 8, scope: !947)
!1036 = !DILocation(line: 243, column: 5, scope: !1032)
!1037 = !DILocation(line: 244, column: 3, scope: !948)
!1038 = !DILocation(line: 244, column: 3, scope: !947)
!1039 = !DILocation(line: 246, column: 3, scope: !949)
!1040 = !DILocation(line: 246, column: 10, scope: !949)
!1041 = !DILocation(line: 246, column: 12, scope: !949)
!1042 = !DILocation(line: 247, column: 9, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 247, column: 8)
!1044 = distinct !DILexicalBlock(scope: !949, file: !3, line: 246, column: 18)
!1045 = !DILocation(line: 247, column: 13, scope: !1043)
!1046 = !DILocation(line: 247, column: 18, scope: !1043)
!1047 = !DILocation(line: 247, column: 23, scope: !1043)
!1048 = !DILocation(line: 247, column: 27, scope: !1043)
!1049 = !DILocation(line: 247, column: 32, scope: !1043)
!1050 = !DILocation(line: 247, column: 21, scope: !1043)
!1051 = !DILocation(line: 247, column: 39, scope: !1043)
!1052 = !DILocation(line: 247, column: 43, scope: !1043)
!1053 = !DILocation(line: 247, column: 48, scope: !1043)
!1054 = !DILocation(line: 247, column: 36, scope: !1043)
!1055 = !DILocation(line: 247, column: 8, scope: !1044)
!1056 = !DILocation(line: 248, column: 5, scope: !1043)
!1057 = !DILocation(line: 249, column: 5, scope: !1044)
!1058 = distinct !{!1058, !1039, !1059, !151, !152}
!1059 = !DILocation(line: 250, column: 3, scope: !949)
!1060 = !DILocation(line: 252, column: 8, scope: !949)
!1061 = !DILocation(line: 252, column: 12, scope: !949)
!1062 = !DILocation(line: 252, column: 6, scope: !949)
!1063 = !DILocation(line: 253, column: 8, scope: !949)
!1064 = !DILocation(line: 253, column: 12, scope: !949)
!1065 = !DILocation(line: 253, column: 6, scope: !949)
!1066 = !DILocation(line: 256, column: 6, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !936, file: !3, line: 256, column: 6)
!1068 = !DILocation(line: 256, column: 6, scope: !936)
!1069 = !DILocation(line: 257, column: 3, scope: !1067)
!1070 = !DILocation(line: 259, column: 2, scope: !936)
!1071 = !DILocation(line: 260, column: 1, scope: !936)
!1072 = distinct !DISubprogram(name: "__fls", scope: !1073, file: !1073, line: 294, type: !1074, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1076)
!1073 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!21, !21}
!1076 = !{!1077}
!1077 = !DILocalVariable(name: "word", arg: 1, scope: !1072, file: !1073, line: 294, type: !21)
!1078 = !DILocation(line: 294, column: 58, scope: !1072)
!1079 = !DILocation(line: 298, column: 14, scope: !1072)
!1080 = !DILocation(line: 296, column: 2, scope: !1072)
!1081 = !{i64 305896}
!1082 = !DILocation(line: 299, column: 9, scope: !1072)
!1083 = !DILocation(line: 299, column: 2, scope: !1072)
!1084 = distinct !DISubprogram(name: "ebitmap_node_get_bit", scope: !64, file: !64, line: 88, type: !1085, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1087)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!18, !102, !7}
!1087 = !{!1088, !1089, !1090, !1091}
!1088 = !DILocalVariable(name: "n", arg: 1, scope: !1084, file: !64, line: 88, type: !102)
!1089 = !DILocalVariable(name: "bit", arg: 2, scope: !1084, file: !64, line: 89, type: !7)
!1090 = !DILocalVariable(name: "index", scope: !1084, file: !64, line: 91, type: !7)
!1091 = !DILocalVariable(name: "ofs", scope: !1084, file: !64, line: 92, type: !7)
!1092 = !DILocation(line: 88, column: 67, scope: !1084)
!1093 = !DILocation(line: 89, column: 25, scope: !1084)
!1094 = !DILocation(line: 91, column: 2, scope: !1084)
!1095 = !DILocation(line: 91, column: 15, scope: !1084)
!1096 = !DILocation(line: 91, column: 23, scope: !1084)
!1097 = !DILocation(line: 92, column: 2, scope: !1084)
!1098 = !DILocation(line: 92, column: 15, scope: !1084)
!1099 = !DILocation(line: 92, column: 21, scope: !1084)
!1100 = !DILocation(line: 94, column: 2, scope: !1084)
!1101 = !DILocation(line: 94, column: 2, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !64, line: 94, column: 2)
!1103 = distinct !DILexicalBlock(scope: !1084, file: !64, line: 94, column: 2)
!1104 = !DILocation(line: 94, column: 2, scope: !1103)
!1105 = !DILocation(line: 94, column: 2, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1102, file: !64, line: 94, column: 2)
!1107 = !DILocation(line: 94, column: 2, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1106, file: !64, line: 94, column: 2)
!1109 = !DILocation(line: 94, column: 2, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1106, file: !64, line: 94, column: 2)
!1111 = !{i64 2157631921, i64 2157631950, i64 2157631996, i64 2157632054, i64 2157632108, i64 2157632162, i64 2157632217, i64 2157632248}
!1112 = !DILocation(line: 95, column: 7, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1084, file: !64, line: 95, column: 6)
!1114 = !DILocation(line: 95, column: 10, scope: !1113)
!1115 = !DILocation(line: 95, column: 15, scope: !1113)
!1116 = !DILocation(line: 95, column: 40, scope: !1113)
!1117 = !DILocation(line: 95, column: 37, scope: !1113)
!1118 = !DILocation(line: 95, column: 22, scope: !1113)
!1119 = !DILocation(line: 95, column: 6, scope: !1084)
!1120 = !DILocation(line: 96, column: 3, scope: !1113)
!1121 = !DILocation(line: 97, column: 2, scope: !1084)
!1122 = !DILocation(line: 98, column: 1, scope: !1084)
!1123 = distinct !DISubprogram(name: "ebitmap_node_set_bit", scope: !64, file: !64, line: 100, type: !1124, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1126)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{null, !88, !7}
!1126 = !{!1127, !1128, !1129, !1130}
!1127 = !DILocalVariable(name: "n", arg: 1, scope: !1123, file: !64, line: 100, type: !88)
!1128 = !DILocalVariable(name: "bit", arg: 2, scope: !1123, file: !64, line: 101, type: !7)
!1129 = !DILocalVariable(name: "index", scope: !1123, file: !64, line: 103, type: !7)
!1130 = !DILocalVariable(name: "ofs", scope: !1123, file: !64, line: 104, type: !7)
!1131 = !DILocation(line: 100, column: 62, scope: !1123)
!1132 = !DILocation(line: 101, column: 19, scope: !1123)
!1133 = !DILocation(line: 103, column: 2, scope: !1123)
!1134 = !DILocation(line: 103, column: 15, scope: !1123)
!1135 = !DILocation(line: 103, column: 23, scope: !1123)
!1136 = !DILocation(line: 104, column: 2, scope: !1123)
!1137 = !DILocation(line: 104, column: 15, scope: !1123)
!1138 = !DILocation(line: 104, column: 21, scope: !1123)
!1139 = !DILocation(line: 106, column: 2, scope: !1123)
!1140 = !DILocation(line: 106, column: 2, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !64, line: 106, column: 2)
!1142 = distinct !DILexicalBlock(scope: !1123, file: !64, line: 106, column: 2)
!1143 = !DILocation(line: 106, column: 2, scope: !1142)
!1144 = !DILocation(line: 106, column: 2, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1141, file: !64, line: 106, column: 2)
!1146 = !DILocation(line: 106, column: 2, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1145, file: !64, line: 106, column: 2)
!1148 = !DILocation(line: 106, column: 2, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !64, line: 106, column: 2)
!1150 = !{i64 2157633432, i64 2157633461, i64 2157633507, i64 2157633565, i64 2157633619, i64 2157633673, i64 2157633728, i64 2157633759}
!1151 = !DILocation(line: 107, column: 36, scope: !1123)
!1152 = !DILocation(line: 107, column: 33, scope: !1123)
!1153 = !DILocation(line: 107, column: 2, scope: !1123)
!1154 = !DILocation(line: 107, column: 5, scope: !1123)
!1155 = !DILocation(line: 107, column: 10, scope: !1123)
!1156 = !DILocation(line: 107, column: 17, scope: !1123)
!1157 = !DILocation(line: 108, column: 1, scope: !1123)
!1158 = distinct !DISubprogram(name: "ebitmap_node_clr_bit", scope: !64, file: !64, line: 110, type: !1124, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1159)
!1159 = !{!1160, !1161, !1162, !1163}
!1160 = !DILocalVariable(name: "n", arg: 1, scope: !1158, file: !64, line: 110, type: !88)
!1161 = !DILocalVariable(name: "bit", arg: 2, scope: !1158, file: !64, line: 111, type: !7)
!1162 = !DILocalVariable(name: "index", scope: !1158, file: !64, line: 113, type: !7)
!1163 = !DILocalVariable(name: "ofs", scope: !1158, file: !64, line: 114, type: !7)
!1164 = !DILocation(line: 110, column: 62, scope: !1158)
!1165 = !DILocation(line: 111, column: 19, scope: !1158)
!1166 = !DILocation(line: 113, column: 2, scope: !1158)
!1167 = !DILocation(line: 113, column: 15, scope: !1158)
!1168 = !DILocation(line: 113, column: 23, scope: !1158)
!1169 = !DILocation(line: 114, column: 2, scope: !1158)
!1170 = !DILocation(line: 114, column: 15, scope: !1158)
!1171 = !DILocation(line: 114, column: 21, scope: !1158)
!1172 = !DILocation(line: 116, column: 2, scope: !1158)
!1173 = !DILocation(line: 116, column: 2, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !64, line: 116, column: 2)
!1175 = distinct !DILexicalBlock(scope: !1158, file: !64, line: 116, column: 2)
!1176 = !DILocation(line: 116, column: 2, scope: !1175)
!1177 = !DILocation(line: 116, column: 2, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1174, file: !64, line: 116, column: 2)
!1179 = !DILocation(line: 116, column: 2, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1178, file: !64, line: 116, column: 2)
!1181 = !DILocation(line: 116, column: 2, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1178, file: !64, line: 116, column: 2)
!1183 = !{i64 2157634944, i64 2157634973, i64 2157635019, i64 2157635077, i64 2157635131, i64 2157635185, i64 2157635240, i64 2157635271}
!1184 = !DILocation(line: 117, column: 37, scope: !1158)
!1185 = !DILocation(line: 117, column: 34, scope: !1158)
!1186 = !DILocation(line: 117, column: 20, scope: !1158)
!1187 = !DILocation(line: 117, column: 2, scope: !1158)
!1188 = !DILocation(line: 117, column: 5, scope: !1158)
!1189 = !DILocation(line: 117, column: 10, scope: !1158)
!1190 = !DILocation(line: 117, column: 17, scope: !1158)
!1191 = !DILocation(line: 118, column: 1, scope: !1158)
!1192 = distinct !DISubprogram(name: "find_first_bit", scope: !1193, file: !1193, line: 200, type: !1194, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1198)
!1193 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!21, !1196, !21}
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!1198 = !{!1199, !1200, !1201}
!1199 = !DILocalVariable(name: "addr", arg: 1, scope: !1192, file: !1193, line: 200, type: !1196)
!1200 = !DILocalVariable(name: "size", arg: 2, scope: !1192, file: !1193, line: 200, type: !21)
!1201 = !DILocalVariable(name: "val", scope: !1202, file: !1193, line: 203, type: !21)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !1193, line: 202, column: 31)
!1203 = distinct !DILexicalBlock(scope: !1192, file: !1193, line: 202, column: 6)
!1204 = !DILocation(line: 200, column: 51, scope: !1192)
!1205 = !DILocation(line: 200, column: 71, scope: !1192)
!1206 = !DILocation(line: 202, column: 6, scope: !1203)
!1207 = !DILocation(line: 202, column: 6, scope: !1192)
!1208 = !DILocation(line: 203, column: 3, scope: !1202)
!1209 = !DILocation(line: 203, column: 17, scope: !1202)
!1210 = !DILocation(line: 203, column: 24, scope: !1202)
!1211 = !DILocation(line: 203, column: 23, scope: !1202)
!1212 = !DILocation(line: 203, column: 31, scope: !1202)
!1213 = !DILocation(line: 203, column: 29, scope: !1202)
!1214 = !DILocation(line: 205, column: 10, scope: !1202)
!1215 = !DILocation(line: 205, column: 16, scope: !1202)
!1216 = !DILocation(line: 205, column: 29, scope: !1202)
!1217 = !DILocation(line: 205, column: 3, scope: !1202)
!1218 = !DILocation(line: 206, column: 2, scope: !1203)
!1219 = !DILocation(line: 208, column: 25, scope: !1192)
!1220 = !DILocation(line: 208, column: 31, scope: !1192)
!1221 = !DILocation(line: 208, column: 9, scope: !1192)
!1222 = !DILocation(line: 208, column: 2, scope: !1192)
!1223 = !DILocation(line: 209, column: 1, scope: !1192)
!1224 = !DISubprogram(name: "kmem_cache_free", scope: !254, file: !254, line: 503, type: !1225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !68, !8}
!1227 = distinct !DISubprogram(name: "ebitmap_read", scope: !3, file: !3, line: 365, type: !1228, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1230)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!18, !173, !8}
!1230 = !{!1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1245, !1246, !1247, !1253, !1254, !1255}
!1231 = !DILocalVariable(name: "e", arg: 1, scope: !1227, file: !3, line: 365, type: !173)
!1232 = !DILocalVariable(name: "fp", arg: 2, scope: !1227, file: !3, line: 365, type: !8)
!1233 = !DILocalVariable(name: "n", scope: !1227, file: !3, line: 367, type: !88)
!1234 = !DILocalVariable(name: "mapunit", scope: !1227, file: !3, line: 368, type: !9)
!1235 = !DILocalVariable(name: "count", scope: !1227, file: !3, line: 368, type: !9)
!1236 = !DILocalVariable(name: "startbit", scope: !1227, file: !3, line: 368, type: !9)
!1237 = !DILocalVariable(name: "index", scope: !1227, file: !3, line: 368, type: !9)
!1238 = !DILocalVariable(name: "ebitmap_start", scope: !1227, file: !3, line: 369, type: !13)
!1239 = !DILocalVariable(name: "map", scope: !1227, file: !3, line: 370, type: !19)
!1240 = !DILocalVariable(name: "mapbits", scope: !1227, file: !3, line: 371, type: !17)
!1241 = !DILocalVariable(name: "buf", scope: !1227, file: !3, line: 372, type: !1242)
!1242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 96, elements: !1243)
!1243 = !{!1244}
!1244 = !DISubrange(count: 3)
!1245 = !DILocalVariable(name: "rc", scope: !1227, file: !3, line: 373, type: !18)
!1246 = !DILocalVariable(name: "i", scope: !1227, file: !3, line: 373, type: !18)
!1247 = !DILocalVariable(name: "tmp", scope: !1248, file: !3, line: 426, type: !88)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 425, column: 53)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 425, column: 7)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 404, column: 30)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 404, column: 2)
!1252 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 404, column: 2)
!1253 = !DILabel(scope: !1227, name: "ok", file: !3, line: 460)
!1254 = !DILabel(scope: !1227, name: "out", file: !3, line: 462)
!1255 = !DILabel(scope: !1227, name: "bad", file: !3, line: 464)
!1256 = !DILocation(line: 365, column: 34, scope: !1227)
!1257 = !DILocation(line: 365, column: 43, scope: !1227)
!1258 = !DILocation(line: 367, column: 2, scope: !1227)
!1259 = !DILocation(line: 367, column: 23, scope: !1227)
!1260 = !DILocation(line: 368, column: 2, scope: !1227)
!1261 = !DILocation(line: 368, column: 6, scope: !1227)
!1262 = !DILocation(line: 368, column: 15, scope: !1227)
!1263 = !DILocation(line: 368, column: 22, scope: !1227)
!1264 = !DILocation(line: 368, column: 32, scope: !1227)
!1265 = !DILocation(line: 369, column: 2, scope: !1227)
!1266 = !DILocation(line: 369, column: 9, scope: !1227)
!1267 = !DILocation(line: 370, column: 2, scope: !1227)
!1268 = !DILocation(line: 370, column: 6, scope: !1227)
!1269 = !DILocation(line: 371, column: 2, scope: !1227)
!1270 = !DILocation(line: 371, column: 9, scope: !1227)
!1271 = !DILocation(line: 372, column: 2, scope: !1227)
!1272 = !DILocation(line: 372, column: 9, scope: !1227)
!1273 = !DILocation(line: 373, column: 2, scope: !1227)
!1274 = !DILocation(line: 373, column: 6, scope: !1227)
!1275 = !DILocation(line: 373, column: 10, scope: !1227)
!1276 = !DILocation(line: 375, column: 15, scope: !1227)
!1277 = !DILocation(line: 375, column: 2, scope: !1227)
!1278 = !DILocation(line: 377, column: 18, scope: !1227)
!1279 = !DILocation(line: 377, column: 23, scope: !1227)
!1280 = !DILocation(line: 377, column: 7, scope: !1227)
!1281 = !DILocation(line: 377, column: 5, scope: !1227)
!1282 = !DILocation(line: 378, column: 6, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 378, column: 6)
!1284 = !DILocation(line: 378, column: 9, scope: !1283)
!1285 = !DILocation(line: 378, column: 6, scope: !1227)
!1286 = !DILocation(line: 379, column: 3, scope: !1283)
!1287 = !DILocation(line: 381, column: 12, scope: !1227)
!1288 = !DILocation(line: 381, column: 10, scope: !1227)
!1289 = !DILocation(line: 382, column: 15, scope: !1227)
!1290 = !DILocation(line: 382, column: 2, scope: !1227)
!1291 = !DILocation(line: 382, column: 5, scope: !1227)
!1292 = !DILocation(line: 382, column: 13, scope: !1227)
!1293 = !DILocation(line: 383, column: 10, scope: !1227)
!1294 = !DILocation(line: 383, column: 8, scope: !1227)
!1295 = !DILocation(line: 385, column: 6, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 385, column: 6)
!1297 = !DILocation(line: 385, column: 14, scope: !1296)
!1298 = !DILocation(line: 385, column: 6, scope: !1227)
!1299 = !DILocation(line: 386, column: 3, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 386, column: 3)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 385, column: 31)
!1302 = !DILocation(line: 386, column: 3, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 386, column: 3)
!1304 = !DILocation(line: 389, column: 3, scope: !1301)
!1305 = !DILocation(line: 393, column: 2, scope: !1227)
!1306 = !DILocation(line: 393, column: 5, scope: !1227)
!1307 = !DILocation(line: 393, column: 13, scope: !1227)
!1308 = !DILocation(line: 394, column: 17, scope: !1227)
!1309 = !DILocation(line: 394, column: 20, scope: !1227)
!1310 = !DILocation(line: 394, column: 28, scope: !1227)
!1311 = !DILocation(line: 394, column: 2, scope: !1227)
!1312 = !DILocation(line: 394, column: 5, scope: !1227)
!1313 = !DILocation(line: 394, column: 13, scope: !1227)
!1314 = !DILocation(line: 396, column: 7, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 396, column: 6)
!1316 = !DILocation(line: 396, column: 10, scope: !1315)
!1317 = !DILocation(line: 396, column: 6, scope: !1227)
!1318 = !DILocation(line: 397, column: 3, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 396, column: 19)
!1320 = !DILocation(line: 397, column: 6, scope: !1319)
!1321 = !DILocation(line: 397, column: 11, scope: !1319)
!1322 = !DILocation(line: 398, column: 3, scope: !1319)
!1323 = !DILocation(line: 401, column: 6, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 401, column: 6)
!1325 = !DILocation(line: 401, column: 9, scope: !1324)
!1326 = !DILocation(line: 401, column: 17, scope: !1324)
!1327 = !DILocation(line: 401, column: 21, scope: !1324)
!1328 = !DILocation(line: 401, column: 6, scope: !1227)
!1329 = !DILocation(line: 402, column: 3, scope: !1324)
!1330 = !DILocation(line: 404, column: 9, scope: !1252)
!1331 = !DILocation(line: 404, column: 7, scope: !1252)
!1332 = !DILocation(line: 404, column: 14, scope: !1251)
!1333 = !DILocation(line: 404, column: 18, scope: !1251)
!1334 = !DILocation(line: 404, column: 16, scope: !1251)
!1335 = !DILocation(line: 404, column: 2, scope: !1252)
!1336 = !DILocation(line: 405, column: 35, scope: !1250)
!1337 = !DILocation(line: 405, column: 8, scope: !1250)
!1338 = !DILocation(line: 405, column: 6, scope: !1250)
!1339 = !DILocation(line: 406, column: 7, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 406, column: 7)
!1341 = !DILocation(line: 406, column: 10, scope: !1340)
!1342 = !DILocation(line: 406, column: 7, scope: !1250)
!1343 = !DILocation(line: 407, column: 4, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 407, column: 4)
!1345 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 406, column: 15)
!1346 = !DILocation(line: 407, column: 4, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 407, column: 4)
!1348 = !DILocation(line: 408, column: 4, scope: !1345)
!1349 = !DILocation(line: 410, column: 14, scope: !1250)
!1350 = !DILocation(line: 410, column: 12, scope: !1250)
!1351 = !DILocation(line: 412, column: 7, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 412, column: 7)
!1353 = !DILocation(line: 412, column: 19, scope: !1352)
!1354 = !DILocation(line: 412, column: 27, scope: !1352)
!1355 = !DILocation(line: 412, column: 16, scope: !1352)
!1356 = !DILocation(line: 412, column: 7, scope: !1250)
!1357 = !DILocation(line: 413, column: 4, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 413, column: 4)
!1359 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 412, column: 33)
!1360 = !DILocation(line: 413, column: 4, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 413, column: 4)
!1362 = !DILocation(line: 416, column: 4, scope: !1359)
!1363 = !DILocation(line: 418, column: 7, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 418, column: 7)
!1365 = !DILocation(line: 418, column: 18, scope: !1364)
!1366 = !DILocation(line: 418, column: 21, scope: !1364)
!1367 = !DILocation(line: 418, column: 31, scope: !1364)
!1368 = !DILocation(line: 418, column: 29, scope: !1364)
!1369 = !DILocation(line: 418, column: 16, scope: !1364)
!1370 = !DILocation(line: 418, column: 7, scope: !1250)
!1371 = !DILocation(line: 419, column: 4, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 419, column: 4)
!1373 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 418, column: 40)
!1374 = !DILocation(line: 419, column: 4, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 419, column: 4)
!1376 = !DILocation(line: 422, column: 4, scope: !1373)
!1377 = !DILocation(line: 425, column: 8, scope: !1249)
!1378 = !DILocation(line: 425, column: 10, scope: !1249)
!1379 = !DILocation(line: 425, column: 13, scope: !1249)
!1380 = !DILocation(line: 425, column: 25, scope: !1249)
!1381 = !DILocation(line: 425, column: 28, scope: !1249)
!1382 = !DILocation(line: 425, column: 37, scope: !1249)
!1383 = !DILocation(line: 425, column: 22, scope: !1249)
!1384 = !DILocation(line: 425, column: 7, scope: !1250)
!1385 = !DILocation(line: 426, column: 4, scope: !1248)
!1386 = !DILocation(line: 426, column: 25, scope: !1248)
!1387 = !DILocation(line: 427, column: 28, scope: !1248)
!1388 = !DILocation(line: 427, column: 10, scope: !1248)
!1389 = !DILocation(line: 427, column: 8, scope: !1248)
!1390 = !DILocation(line: 428, column: 9, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 428, column: 8)
!1392 = !DILocation(line: 428, column: 8, scope: !1248)
!1393 = !DILocation(line: 429, column: 5, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 429, column: 5)
!1395 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 428, column: 14)
!1396 = !DILocation(line: 429, column: 5, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 429, column: 5)
!1398 = !DILocation(line: 430, column: 8, scope: !1395)
!1399 = !DILocation(line: 431, column: 5, scope: !1395)
!1400 = !DILocation(line: 434, column: 20, scope: !1248)
!1401 = !DILocation(line: 434, column: 32, scope: !1248)
!1402 = !DILocation(line: 434, column: 41, scope: !1248)
!1403 = !DILocation(line: 434, column: 29, scope: !1248)
!1404 = !DILocation(line: 434, column: 4, scope: !1248)
!1405 = !DILocation(line: 434, column: 9, scope: !1248)
!1406 = !DILocation(line: 434, column: 18, scope: !1248)
!1407 = !DILocation(line: 435, column: 8, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 435, column: 8)
!1409 = !DILocation(line: 435, column: 8, scope: !1248)
!1410 = !DILocation(line: 436, column: 15, scope: !1408)
!1411 = !DILocation(line: 436, column: 5, scope: !1408)
!1412 = !DILocation(line: 436, column: 8, scope: !1408)
!1413 = !DILocation(line: 436, column: 13, scope: !1408)
!1414 = !DILocation(line: 438, column: 15, scope: !1408)
!1415 = !DILocation(line: 438, column: 5, scope: !1408)
!1416 = !DILocation(line: 438, column: 8, scope: !1408)
!1417 = !DILocation(line: 438, column: 13, scope: !1408)
!1418 = !DILocation(line: 439, column: 8, scope: !1248)
!1419 = !DILocation(line: 439, column: 6, scope: !1248)
!1420 = !DILocation(line: 440, column: 3, scope: !1249)
!1421 = !DILocation(line: 440, column: 3, scope: !1248)
!1422 = !DILocation(line: 440, column: 14, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 440, column: 14)
!1424 = !DILocation(line: 440, column: 26, scope: !1423)
!1425 = !DILocation(line: 440, column: 29, scope: !1423)
!1426 = !DILocation(line: 440, column: 23, scope: !1423)
!1427 = !DILocation(line: 440, column: 14, scope: !1249)
!1428 = !DILocation(line: 441, column: 4, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 441, column: 4)
!1430 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 440, column: 39)
!1431 = !DILocation(line: 441, column: 4, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 441, column: 4)
!1433 = !DILocation(line: 444, column: 4, scope: !1430)
!1434 = !DILocation(line: 447, column: 29, scope: !1250)
!1435 = !DILocation(line: 447, column: 8, scope: !1250)
!1436 = !DILocation(line: 447, column: 6, scope: !1250)
!1437 = !DILocation(line: 448, column: 7, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 448, column: 7)
!1439 = !DILocation(line: 448, column: 10, scope: !1438)
!1440 = !DILocation(line: 448, column: 7, scope: !1250)
!1441 = !DILocation(line: 449, column: 4, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 449, column: 4)
!1443 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 448, column: 15)
!1444 = !DILocation(line: 449, column: 4, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 449, column: 4)
!1446 = !DILocation(line: 450, column: 4, scope: !1443)
!1447 = !DILocation(line: 452, column: 9, scope: !1250)
!1448 = !DILocation(line: 452, column: 7, scope: !1250)
!1449 = !DILocation(line: 454, column: 12, scope: !1250)
!1450 = !DILocation(line: 454, column: 23, scope: !1250)
!1451 = !DILocation(line: 454, column: 26, scope: !1250)
!1452 = !DILocation(line: 454, column: 21, scope: !1250)
!1453 = !DILocation(line: 454, column: 36, scope: !1250)
!1454 = !DILocation(line: 454, column: 9, scope: !1250)
!1455 = !DILocation(line: 455, column: 3, scope: !1250)
!1456 = !DILocation(line: 455, column: 10, scope: !1250)
!1457 = !DILocation(line: 456, column: 23, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 455, column: 15)
!1459 = !DILocation(line: 456, column: 27, scope: !1458)
!1460 = !DILocation(line: 456, column: 4, scope: !1458)
!1461 = !DILocation(line: 456, column: 7, scope: !1458)
!1462 = !DILocation(line: 456, column: 17, scope: !1458)
!1463 = !DILocation(line: 456, column: 21, scope: !1458)
!1464 = !DILocation(line: 457, column: 10, scope: !1458)
!1465 = !DILocation(line: 457, column: 8, scope: !1458)
!1466 = distinct !{!1466, !1455, !1467, !151, !152}
!1467 = !DILocation(line: 458, column: 3, scope: !1250)
!1468 = !DILocation(line: 459, column: 2, scope: !1250)
!1469 = !DILocation(line: 404, column: 26, scope: !1251)
!1470 = !DILocation(line: 404, column: 2, scope: !1251)
!1471 = distinct !{!1471, !1335, !1472, !151, !152}
!1472 = !DILocation(line: 459, column: 2, scope: !1252)
!1473 = !DILocation(line: 460, column: 1, scope: !1227)
!1474 = !DILocation(line: 461, column: 5, scope: !1227)
!1475 = !DILocation(line: 461, column: 2, scope: !1227)
!1476 = !DILocation(line: 462, column: 1, scope: !1227)
!1477 = !DILocation(line: 463, column: 9, scope: !1227)
!1478 = !DILocation(line: 463, column: 2, scope: !1227)
!1479 = !DILocation(line: 464, column: 1, scope: !1227)
!1480 = !DILocation(line: 465, column: 7, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 465, column: 6)
!1482 = !DILocation(line: 465, column: 6, scope: !1227)
!1483 = !DILocation(line: 466, column: 6, scope: !1481)
!1484 = !DILocation(line: 466, column: 3, scope: !1481)
!1485 = !DILocation(line: 467, column: 18, scope: !1227)
!1486 = !DILocation(line: 467, column: 2, scope: !1227)
!1487 = !DILocation(line: 468, column: 2, scope: !1227)
!1488 = !DILocation(line: 469, column: 1, scope: !1227)
!1489 = distinct !DISubprogram(name: "next_entry", scope: !1490, file: !1490, line: 358, type: !1491, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1500)
!1490 = !DIFile(filename: "security/selinux/ss/policydb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f7795e8c85e617c81c5f9432b58d69e6")
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!18, !8, !1493, !1499}
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "policy_file", file: !1490, line: 348, size: 128, elements: !1495)
!1495 = !{!1496, !1498}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1494, file: !1490, line: 349, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1494, file: !1490, line: 350, baseType: !1499, size: 64, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 61, baseType: !167)
!1500 = !{!1501, !1502, !1503}
!1501 = !DILocalVariable(name: "buf", arg: 1, scope: !1489, file: !1490, line: 358, type: !8)
!1502 = !DILocalVariable(name: "fp", arg: 2, scope: !1489, file: !1490, line: 358, type: !1493)
!1503 = !DILocalVariable(name: "bytes", arg: 3, scope: !1489, file: !1490, line: 358, type: !1499)
!1504 = !DILocation(line: 358, column: 36, scope: !1489)
!1505 = !DILocation(line: 358, column: 61, scope: !1489)
!1506 = !DILocation(line: 358, column: 72, scope: !1489)
!1507 = !DILocation(line: 360, column: 6, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1489, file: !1490, line: 360, column: 6)
!1509 = !DILocation(line: 360, column: 14, scope: !1508)
!1510 = !DILocation(line: 360, column: 18, scope: !1508)
!1511 = !DILocation(line: 360, column: 12, scope: !1508)
!1512 = !DILocation(line: 360, column: 6, scope: !1489)
!1513 = !DILocation(line: 361, column: 3, scope: !1508)
!1514 = !DILocation(line: 363, column: 9, scope: !1489)
!1515 = !DILocation(line: 363, column: 14, scope: !1489)
!1516 = !DILocation(line: 363, column: 18, scope: !1489)
!1517 = !DILocation(line: 363, column: 24, scope: !1489)
!1518 = !DILocation(line: 363, column: 2, scope: !1489)
!1519 = !DILocation(line: 364, column: 14, scope: !1489)
!1520 = !DILocation(line: 364, column: 2, scope: !1489)
!1521 = !DILocation(line: 364, column: 6, scope: !1489)
!1522 = !DILocation(line: 364, column: 11, scope: !1489)
!1523 = !DILocation(line: 365, column: 13, scope: !1489)
!1524 = !DILocation(line: 365, column: 2, scope: !1489)
!1525 = !DILocation(line: 365, column: 6, scope: !1489)
!1526 = !DILocation(line: 365, column: 10, scope: !1489)
!1527 = !DILocation(line: 366, column: 2, scope: !1489)
!1528 = !DILocation(line: 367, column: 1, scope: !1489)
!1529 = !DISubprogram(name: "_printk", scope: !1530, file: !1530, line: 153, type: !1531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1530 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!18, !1533, null}
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!1535 = distinct !DISubprogram(name: "ebitmap_write", scope: !3, file: !3, line: 471, type: !1536, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1538)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!18, !83, !8}
!1538 = !{!1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1555, !1558, !1560, !1566, !1571, !1575, !1577}
!1539 = !DILocalVariable(name: "e", arg: 1, scope: !1535, file: !3, line: 471, type: !83)
!1540 = !DILocalVariable(name: "fp", arg: 2, scope: !1535, file: !3, line: 471, type: !8)
!1541 = !DILocalVariable(name: "n", scope: !1535, file: !3, line: 473, type: !88)
!1542 = !DILocalVariable(name: "count", scope: !1535, file: !3, line: 474, type: !9)
!1543 = !DILocalVariable(name: "buf", scope: !1535, file: !3, line: 475, type: !1242)
!1544 = !DILocalVariable(name: "map", scope: !1535, file: !3, line: 476, type: !19)
!1545 = !DILocalVariable(name: "bit", scope: !1535, file: !3, line: 477, type: !18)
!1546 = !DILocalVariable(name: "last_bit", scope: !1535, file: !3, line: 477, type: !18)
!1547 = !DILocalVariable(name: "last_startbit", scope: !1535, file: !3, line: 477, type: !18)
!1548 = !DILocalVariable(name: "rc", scope: !1535, file: !3, line: 477, type: !18)
!1549 = !DILocalVariable(name: "__x", scope: !1550, file: !3, line: 485, type: !18)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 485, column: 7)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 485, column: 7)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 484, column: 43)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 484, column: 2)
!1554 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 484, column: 2)
!1555 = !DILocalVariable(name: "__x", scope: !1556, file: !3, line: 487, type: !18)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 487, column: 20)
!1557 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 485, column: 58)
!1558 = !DILocalVariable(name: "__y", scope: !1559, file: !3, line: 489, type: !21)
!1559 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 489, column: 14)
!1560 = !DILocalVariable(name: "__x", scope: !1561, file: !3, line: 501, type: !18)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 501, column: 7)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 501, column: 7)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 500, column: 43)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 500, column: 2)
!1565 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 500, column: 2)
!1566 = !DILocalVariable(name: "buf64", scope: !1567, file: !3, line: 502, type: !1568)
!1567 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 501, column: 58)
!1568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 64, elements: !1569)
!1569 = !{!1570}
!1570 = !DISubrange(count: 1)
!1571 = !DILocalVariable(name: "__x", scope: !1572, file: !3, line: 506, type: !18)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 506, column: 21)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 505, column: 14)
!1574 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 505, column: 8)
!1575 = !DILocalVariable(name: "__x", scope: !1576, file: !3, line: 524, type: !18)
!1576 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 524, column: 20)
!1577 = !DILocalVariable(name: "buf64", scope: !1578, file: !3, line: 530, type: !1568)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 529, column: 11)
!1579 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 529, column: 6)
!1580 = !DILocation(line: 471, column: 41, scope: !1535)
!1581 = !DILocation(line: 471, column: 50, scope: !1535)
!1582 = !DILocation(line: 473, column: 2, scope: !1535)
!1583 = !DILocation(line: 473, column: 23, scope: !1535)
!1584 = !DILocation(line: 474, column: 2, scope: !1535)
!1585 = !DILocation(line: 474, column: 6, scope: !1535)
!1586 = !DILocation(line: 475, column: 2, scope: !1535)
!1587 = !DILocation(line: 475, column: 9, scope: !1535)
!1588 = !DILocation(line: 476, column: 2, scope: !1535)
!1589 = !DILocation(line: 476, column: 6, scope: !1535)
!1590 = !DILocation(line: 477, column: 2, scope: !1535)
!1591 = !DILocation(line: 477, column: 6, scope: !1535)
!1592 = !DILocation(line: 477, column: 11, scope: !1535)
!1593 = !DILocation(line: 477, column: 21, scope: !1535)
!1594 = !DILocation(line: 477, column: 36, scope: !1535)
!1595 = !DILocation(line: 479, column: 2, scope: !1535)
!1596 = !DILocation(line: 479, column: 9, scope: !1535)
!1597 = !DILocation(line: 481, column: 8, scope: !1535)
!1598 = !DILocation(line: 482, column: 11, scope: !1535)
!1599 = !DILocation(line: 483, column: 16, scope: !1535)
!1600 = !DILocation(line: 484, column: 2, scope: !1554)
!1601 = !DILocation(line: 484, column: 2, scope: !1553)
!1602 = !DILocation(line: 485, column: 7, scope: !1550)
!1603 = !DILocation(line: 485, column: 7, scope: !1551)
!1604 = !DILocation(line: 485, column: 43, scope: !1551)
!1605 = !DILocation(line: 485, column: 41, scope: !1551)
!1606 = !DILocation(line: 485, column: 7, scope: !1552)
!1607 = !DILocation(line: 486, column: 9, scope: !1557)
!1608 = !DILocation(line: 487, column: 20, scope: !1556)
!1609 = !DILocation(line: 487, column: 20, scope: !1557)
!1610 = !DILocation(line: 487, column: 18, scope: !1557)
!1611 = !DILocation(line: 488, column: 3, scope: !1557)
!1612 = !DILocation(line: 489, column: 14, scope: !1559)
!1613 = !DILocation(line: 489, column: 14, scope: !1552)
!1614 = !DILocation(line: 489, column: 12, scope: !1552)
!1615 = !DILocation(line: 490, column: 2, scope: !1552)
!1616 = distinct !{!1616, !1600, !1617, !151, !152}
!1617 = !DILocation(line: 490, column: 2, scope: !1554)
!1618 = !DILocation(line: 491, column: 11, scope: !1535)
!1619 = !DILocation(line: 491, column: 2, scope: !1535)
!1620 = !DILocation(line: 491, column: 9, scope: !1535)
!1621 = !DILocation(line: 492, column: 11, scope: !1535)
!1622 = !DILocation(line: 492, column: 2, scope: !1535)
!1623 = !DILocation(line: 492, column: 9, scope: !1535)
!1624 = !DILocation(line: 494, column: 17, scope: !1535)
!1625 = !DILocation(line: 494, column: 38, scope: !1535)
!1626 = !DILocation(line: 494, column: 7, scope: !1535)
!1627 = !DILocation(line: 494, column: 5, scope: !1535)
!1628 = !DILocation(line: 495, column: 6, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 495, column: 6)
!1630 = !DILocation(line: 495, column: 6, scope: !1535)
!1631 = !DILocation(line: 496, column: 10, scope: !1629)
!1632 = !DILocation(line: 496, column: 3, scope: !1629)
!1633 = !DILocation(line: 498, column: 6, scope: !1535)
!1634 = !DILocation(line: 499, column: 16, scope: !1535)
!1635 = !DILocation(line: 500, column: 2, scope: !1565)
!1636 = !DILocation(line: 500, column: 2, scope: !1564)
!1637 = !DILocation(line: 501, column: 7, scope: !1561)
!1638 = !DILocation(line: 501, column: 7, scope: !1562)
!1639 = !DILocation(line: 501, column: 43, scope: !1562)
!1640 = !DILocation(line: 501, column: 41, scope: !1562)
!1641 = !DILocation(line: 501, column: 7, scope: !1563)
!1642 = !DILocation(line: 502, column: 4, scope: !1567)
!1643 = !DILocation(line: 502, column: 11, scope: !1567)
!1644 = !DILocation(line: 505, column: 9, scope: !1574)
!1645 = !DILocation(line: 505, column: 8, scope: !1567)
!1646 = !DILocation(line: 506, column: 21, scope: !1572)
!1647 = !DILocation(line: 506, column: 21, scope: !1573)
!1648 = !DILocation(line: 506, column: 19, scope: !1573)
!1649 = !DILocation(line: 507, column: 22, scope: !1573)
!1650 = !DILocation(line: 507, column: 28, scope: !1573)
!1651 = !DILocation(line: 507, column: 26, scope: !1573)
!1652 = !DILocation(line: 507, column: 18, scope: !1573)
!1653 = !DILocation(line: 507, column: 9, scope: !1573)
!1654 = !DILocation(line: 508, column: 5, scope: !1573)
!1655 = !DILocation(line: 512, column: 13, scope: !1567)
!1656 = !DILocation(line: 512, column: 4, scope: !1567)
!1657 = !DILocation(line: 512, column: 11, scope: !1567)
!1658 = !DILocation(line: 513, column: 19, scope: !1567)
!1659 = !DILocation(line: 513, column: 40, scope: !1567)
!1660 = !DILocation(line: 513, column: 9, scope: !1567)
!1661 = !DILocation(line: 513, column: 7, scope: !1567)
!1662 = !DILocation(line: 514, column: 8, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 514, column: 8)
!1664 = !DILocation(line: 514, column: 8, scope: !1567)
!1665 = !DILocation(line: 515, column: 12, scope: !1663)
!1666 = !DILocation(line: 515, column: 5, scope: !1663)
!1667 = !DILocation(line: 517, column: 15, scope: !1567)
!1668 = !DILocation(line: 517, column: 4, scope: !1567)
!1669 = !DILocation(line: 517, column: 13, scope: !1567)
!1670 = !DILocation(line: 518, column: 19, scope: !1567)
!1671 = !DILocation(line: 518, column: 42, scope: !1567)
!1672 = !DILocation(line: 518, column: 9, scope: !1567)
!1673 = !DILocation(line: 518, column: 7, scope: !1567)
!1674 = !DILocation(line: 519, column: 8, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 519, column: 8)
!1676 = !DILocation(line: 519, column: 8, scope: !1567)
!1677 = !DILocation(line: 520, column: 12, scope: !1675)
!1678 = !DILocation(line: 520, column: 5, scope: !1675)
!1679 = !DILocation(line: 523, column: 8, scope: !1567)
!1680 = !DILocation(line: 524, column: 20, scope: !1576)
!1681 = !DILocation(line: 524, column: 20, scope: !1567)
!1682 = !DILocation(line: 524, column: 18, scope: !1567)
!1683 = !DILocation(line: 525, column: 3, scope: !1562)
!1684 = !DILocation(line: 525, column: 3, scope: !1567)
!1685 = !DILocation(line: 526, column: 21, scope: !1563)
!1686 = !DILocation(line: 526, column: 27, scope: !1563)
!1687 = !DILocation(line: 526, column: 25, scope: !1563)
!1688 = !DILocation(line: 526, column: 17, scope: !1563)
!1689 = !DILocation(line: 526, column: 7, scope: !1563)
!1690 = !DILocation(line: 527, column: 2, scope: !1563)
!1691 = distinct !{!1691, !1635, !1692, !151, !152}
!1692 = !DILocation(line: 527, column: 2, scope: !1565)
!1693 = !DILocation(line: 529, column: 6, scope: !1579)
!1694 = !DILocation(line: 529, column: 6, scope: !1535)
!1695 = !DILocation(line: 530, column: 3, scope: !1578)
!1696 = !DILocation(line: 530, column: 10, scope: !1578)
!1697 = !DILocation(line: 533, column: 12, scope: !1578)
!1698 = !DILocation(line: 533, column: 3, scope: !1578)
!1699 = !DILocation(line: 533, column: 10, scope: !1578)
!1700 = !DILocation(line: 534, column: 18, scope: !1578)
!1701 = !DILocation(line: 534, column: 39, scope: !1578)
!1702 = !DILocation(line: 534, column: 8, scope: !1578)
!1703 = !DILocation(line: 534, column: 6, scope: !1578)
!1704 = !DILocation(line: 535, column: 7, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 535, column: 7)
!1706 = !DILocation(line: 535, column: 7, scope: !1578)
!1707 = !DILocation(line: 536, column: 11, scope: !1705)
!1708 = !DILocation(line: 536, column: 4, scope: !1705)
!1709 = !DILocation(line: 538, column: 14, scope: !1578)
!1710 = !DILocation(line: 538, column: 3, scope: !1578)
!1711 = !DILocation(line: 538, column: 12, scope: !1578)
!1712 = !DILocation(line: 539, column: 18, scope: !1578)
!1713 = !DILocation(line: 539, column: 41, scope: !1578)
!1714 = !DILocation(line: 539, column: 8, scope: !1578)
!1715 = !DILocation(line: 539, column: 6, scope: !1578)
!1716 = !DILocation(line: 540, column: 7, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 540, column: 7)
!1718 = !DILocation(line: 540, column: 7, scope: !1578)
!1719 = !DILocation(line: 541, column: 11, scope: !1717)
!1720 = !DILocation(line: 541, column: 4, scope: !1717)
!1721 = !DILocation(line: 542, column: 2, scope: !1579)
!1722 = !DILocation(line: 542, column: 2, scope: !1578)
!1723 = !DILocation(line: 543, column: 2, scope: !1535)
!1724 = !DILocation(line: 544, column: 1, scope: !1535)
!1725 = distinct !DISubprogram(name: "put_entry", scope: !1490, file: !1490, line: 369, type: !1726, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1728)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!18, !165, !1499, !1499, !1493}
!1728 = !{!1729, !1730, !1731, !1732, !1733}
!1729 = !DILocalVariable(name: "buf", arg: 1, scope: !1725, file: !1490, line: 369, type: !165)
!1730 = !DILocalVariable(name: "bytes", arg: 2, scope: !1725, file: !1490, line: 369, type: !1499)
!1731 = !DILocalVariable(name: "num", arg: 3, scope: !1725, file: !1490, line: 369, type: !1499)
!1732 = !DILocalVariable(name: "fp", arg: 4, scope: !1725, file: !1490, line: 369, type: !1493)
!1733 = !DILocalVariable(name: "len", scope: !1725, file: !1490, line: 371, type: !1499)
!1734 = !DILocation(line: 369, column: 41, scope: !1725)
!1735 = !DILocation(line: 369, column: 53, scope: !1725)
!1736 = !DILocation(line: 369, column: 67, scope: !1725)
!1737 = !DILocation(line: 369, column: 92, scope: !1725)
!1738 = !DILocation(line: 371, column: 2, scope: !1725)
!1739 = !DILocation(line: 371, column: 9, scope: !1725)
!1740 = !DILocation(line: 373, column: 6, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1725, file: !1490, line: 373, column: 6)
!1742 = !DILocation(line: 373, column: 6, scope: !1725)
!1743 = !DILocation(line: 374, column: 3, scope: !1741)
!1744 = !DILocation(line: 376, column: 6, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1725, file: !1490, line: 376, column: 6)
!1746 = !DILocation(line: 376, column: 12, scope: !1745)
!1747 = !DILocation(line: 376, column: 16, scope: !1745)
!1748 = !DILocation(line: 376, column: 10, scope: !1745)
!1749 = !DILocation(line: 376, column: 6, scope: !1725)
!1750 = !DILocation(line: 377, column: 3, scope: !1745)
!1751 = !DILocation(line: 378, column: 9, scope: !1725)
!1752 = !DILocation(line: 378, column: 13, scope: !1725)
!1753 = !DILocation(line: 378, column: 19, scope: !1725)
!1754 = !DILocation(line: 378, column: 24, scope: !1725)
!1755 = !DILocation(line: 378, column: 2, scope: !1725)
!1756 = !DILocation(line: 379, column: 14, scope: !1725)
!1757 = !DILocation(line: 379, column: 2, scope: !1725)
!1758 = !DILocation(line: 379, column: 6, scope: !1725)
!1759 = !DILocation(line: 379, column: 11, scope: !1725)
!1760 = !DILocation(line: 380, column: 13, scope: !1725)
!1761 = !DILocation(line: 380, column: 2, scope: !1725)
!1762 = !DILocation(line: 380, column: 6, scope: !1725)
!1763 = !DILocation(line: 380, column: 10, scope: !1725)
!1764 = !DILocation(line: 382, column: 2, scope: !1725)
!1765 = !DILocation(line: 383, column: 1, scope: !1725)
!1766 = distinct !DISubprogram(name: "ebitmap_hash", scope: !3, file: !3, line: 546, type: !1767, scopeLine: 547, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1769)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!9, !83, !9}
!1769 = !{!1770, !1771, !1772}
!1770 = !DILocalVariable(name: "e", arg: 1, scope: !1766, file: !3, line: 546, type: !83)
!1771 = !DILocalVariable(name: "hash", arg: 2, scope: !1766, file: !3, line: 546, type: !9)
!1772 = !DILocalVariable(name: "node", scope: !1766, file: !3, line: 548, type: !88)
!1773 = !DILocation(line: 546, column: 40, scope: !1766)
!1774 = !DILocation(line: 546, column: 47, scope: !1766)
!1775 = !DILocation(line: 548, column: 2, scope: !1766)
!1776 = !DILocation(line: 548, column: 23, scope: !1766)
!1777 = !DILocation(line: 551, column: 21, scope: !1766)
!1778 = !DILocation(line: 551, column: 24, scope: !1766)
!1779 = !DILocation(line: 551, column: 33, scope: !1766)
!1780 = !DILocation(line: 551, column: 9, scope: !1766)
!1781 = !DILocation(line: 551, column: 7, scope: !1766)
!1782 = !DILocation(line: 552, column: 14, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 552, column: 2)
!1784 = !DILocation(line: 552, column: 17, scope: !1783)
!1785 = !DILocation(line: 552, column: 12, scope: !1783)
!1786 = !DILocation(line: 552, column: 7, scope: !1783)
!1787 = !DILocation(line: 552, column: 23, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 552, column: 2)
!1789 = !DILocation(line: 552, column: 2, scope: !1783)
!1790 = !DILocation(line: 553, column: 22, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 552, column: 48)
!1792 = !DILocation(line: 553, column: 28, scope: !1791)
!1793 = !DILocation(line: 553, column: 38, scope: !1791)
!1794 = !DILocation(line: 553, column: 10, scope: !1791)
!1795 = !DILocation(line: 553, column: 8, scope: !1791)
!1796 = !DILocation(line: 554, column: 16, scope: !1791)
!1797 = !DILocation(line: 554, column: 22, scope: !1791)
!1798 = !DILocation(line: 554, column: 48, scope: !1791)
!1799 = !DILocation(line: 554, column: 10, scope: !1791)
!1800 = !DILocation(line: 554, column: 8, scope: !1791)
!1801 = !DILocation(line: 555, column: 2, scope: !1791)
!1802 = !DILocation(line: 552, column: 36, scope: !1788)
!1803 = !DILocation(line: 552, column: 42, scope: !1788)
!1804 = !DILocation(line: 552, column: 34, scope: !1788)
!1805 = !DILocation(line: 552, column: 2, scope: !1788)
!1806 = distinct !{!1806, !1789, !1807, !151, !152}
!1807 = !DILocation(line: 555, column: 2, scope: !1783)
!1808 = !DILocation(line: 556, column: 9, scope: !1766)
!1809 = !DILocation(line: 557, column: 1, scope: !1766)
!1810 = !DILocation(line: 556, column: 2, scope: !1766)
!1811 = distinct !DISubprogram(name: "jhash_1word", scope: !1812, file: !1812, line: 171, type: !1813, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1815)
!1812 = !DIFile(filename: "./include/linux/jhash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca86fa12155f71794da0bd26a93ce792")
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!9, !9, !9}
!1815 = !{!1816, !1817}
!1816 = !DILocalVariable(name: "a", arg: 1, scope: !1811, file: !1812, line: 171, type: !9)
!1817 = !DILocalVariable(name: "initval", arg: 2, scope: !1811, file: !1812, line: 171, type: !9)
!1818 = !DILocation(line: 171, column: 35, scope: !1811)
!1819 = !DILocation(line: 171, column: 42, scope: !1811)
!1820 = !DILocation(line: 173, column: 24, scope: !1811)
!1821 = !DILocation(line: 173, column: 33, scope: !1811)
!1822 = !DILocation(line: 173, column: 41, scope: !1811)
!1823 = !DILocation(line: 173, column: 57, scope: !1811)
!1824 = !DILocation(line: 173, column: 9, scope: !1811)
!1825 = !DILocation(line: 173, column: 2, scope: !1811)
!1826 = distinct !DISubprogram(name: "jhash", scope: !1812, file: !1812, line: 70, type: !1827, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1829)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!9, !165, !9, !9}
!1829 = !{!1830, !1831, !1832, !1833, !1834, !1835, !1836}
!1830 = !DILocalVariable(name: "key", arg: 1, scope: !1826, file: !1812, line: 70, type: !165)
!1831 = !DILocalVariable(name: "length", arg: 2, scope: !1826, file: !1812, line: 70, type: !9)
!1832 = !DILocalVariable(name: "initval", arg: 3, scope: !1826, file: !1812, line: 70, type: !9)
!1833 = !DILocalVariable(name: "a", scope: !1826, file: !1812, line: 72, type: !9)
!1834 = !DILocalVariable(name: "b", scope: !1826, file: !1812, line: 72, type: !9)
!1835 = !DILocalVariable(name: "c", scope: !1826, file: !1812, line: 72, type: !9)
!1836 = !DILocalVariable(name: "k", scope: !1826, file: !1812, line: 73, type: !1837)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1839)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !10, line: 17, baseType: !1840)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !12, line: 21, baseType: !1841)
!1841 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1842 = !DILocation(line: 70, column: 37, scope: !1826)
!1843 = !DILocation(line: 70, column: 46, scope: !1826)
!1844 = !DILocation(line: 70, column: 58, scope: !1826)
!1845 = !DILocation(line: 72, column: 2, scope: !1826)
!1846 = !DILocation(line: 72, column: 6, scope: !1826)
!1847 = !DILocation(line: 72, column: 9, scope: !1826)
!1848 = !DILocation(line: 72, column: 12, scope: !1826)
!1849 = !DILocation(line: 73, column: 2, scope: !1826)
!1850 = !DILocation(line: 73, column: 12, scope: !1826)
!1851 = !DILocation(line: 73, column: 16, scope: !1826)
!1852 = !DILocation(line: 76, column: 30, scope: !1826)
!1853 = !DILocation(line: 76, column: 28, scope: !1826)
!1854 = !DILocation(line: 76, column: 39, scope: !1826)
!1855 = !DILocation(line: 76, column: 37, scope: !1826)
!1856 = !DILocation(line: 76, column: 12, scope: !1826)
!1857 = !DILocation(line: 76, column: 8, scope: !1826)
!1858 = !DILocation(line: 76, column: 4, scope: !1826)
!1859 = !DILocation(line: 79, column: 2, scope: !1826)
!1860 = !DILocation(line: 79, column: 9, scope: !1826)
!1861 = !DILocation(line: 79, column: 16, scope: !1826)
!1862 = !DILocation(line: 80, column: 30, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1826, file: !1812, line: 79, column: 22)
!1864 = !DILocation(line: 80, column: 8, scope: !1863)
!1865 = !DILocation(line: 80, column: 5, scope: !1863)
!1866 = !DILocation(line: 81, column: 30, scope: !1863)
!1867 = !DILocation(line: 81, column: 32, scope: !1863)
!1868 = !DILocation(line: 81, column: 8, scope: !1863)
!1869 = !DILocation(line: 81, column: 5, scope: !1863)
!1870 = !DILocation(line: 82, column: 30, scope: !1863)
!1871 = !DILocation(line: 82, column: 32, scope: !1863)
!1872 = !DILocation(line: 82, column: 8, scope: !1863)
!1873 = !DILocation(line: 82, column: 5, scope: !1863)
!1874 = !DILocation(line: 83, column: 3, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1863, file: !1812, line: 83, column: 3)
!1876 = !DILocation(line: 84, column: 10, scope: !1863)
!1877 = !DILocation(line: 85, column: 5, scope: !1863)
!1878 = distinct !{!1878, !1859, !1879, !151, !152}
!1879 = !DILocation(line: 86, column: 2, scope: !1826)
!1880 = !DILocation(line: 88, column: 10, scope: !1826)
!1881 = !DILocation(line: 88, column: 2, scope: !1826)
!1882 = !DILocation(line: 89, column: 21, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1826, file: !1812, line: 88, column: 18)
!1884 = !DILocation(line: 89, column: 16, scope: !1883)
!1885 = !DILocation(line: 89, column: 26, scope: !1883)
!1886 = !DILocation(line: 89, column: 13, scope: !1883)
!1887 = !DILocation(line: 89, column: 11, scope: !1883)
!1888 = !DILocation(line: 90, column: 21, scope: !1883)
!1889 = !DILocation(line: 90, column: 16, scope: !1883)
!1890 = !DILocation(line: 90, column: 26, scope: !1883)
!1891 = !DILocation(line: 90, column: 13, scope: !1883)
!1892 = !DILocation(line: 90, column: 11, scope: !1883)
!1893 = !DILocation(line: 91, column: 21, scope: !1883)
!1894 = !DILocation(line: 91, column: 16, scope: !1883)
!1895 = !DILocation(line: 91, column: 25, scope: !1883)
!1896 = !DILocation(line: 91, column: 13, scope: !1883)
!1897 = !DILocation(line: 91, column: 11, scope: !1883)
!1898 = !DILocation(line: 92, column: 16, scope: !1883)
!1899 = !DILocation(line: 92, column: 13, scope: !1883)
!1900 = !DILocation(line: 92, column: 11, scope: !1883)
!1901 = !DILocation(line: 93, column: 21, scope: !1883)
!1902 = !DILocation(line: 93, column: 16, scope: !1883)
!1903 = !DILocation(line: 93, column: 25, scope: !1883)
!1904 = !DILocation(line: 93, column: 13, scope: !1883)
!1905 = !DILocation(line: 93, column: 11, scope: !1883)
!1906 = !DILocation(line: 94, column: 21, scope: !1883)
!1907 = !DILocation(line: 94, column: 16, scope: !1883)
!1908 = !DILocation(line: 94, column: 25, scope: !1883)
!1909 = !DILocation(line: 94, column: 13, scope: !1883)
!1910 = !DILocation(line: 94, column: 11, scope: !1883)
!1911 = !DILocation(line: 95, column: 21, scope: !1883)
!1912 = !DILocation(line: 95, column: 16, scope: !1883)
!1913 = !DILocation(line: 95, column: 25, scope: !1883)
!1914 = !DILocation(line: 95, column: 13, scope: !1883)
!1915 = !DILocation(line: 95, column: 11, scope: !1883)
!1916 = !DILocation(line: 96, column: 16, scope: !1883)
!1917 = !DILocation(line: 96, column: 13, scope: !1883)
!1918 = !DILocation(line: 96, column: 11, scope: !1883)
!1919 = !DILocation(line: 97, column: 21, scope: !1883)
!1920 = !DILocation(line: 97, column: 16, scope: !1883)
!1921 = !DILocation(line: 97, column: 25, scope: !1883)
!1922 = !DILocation(line: 97, column: 13, scope: !1883)
!1923 = !DILocation(line: 97, column: 11, scope: !1883)
!1924 = !DILocation(line: 98, column: 21, scope: !1883)
!1925 = !DILocation(line: 98, column: 16, scope: !1883)
!1926 = !DILocation(line: 98, column: 25, scope: !1883)
!1927 = !DILocation(line: 98, column: 13, scope: !1883)
!1928 = !DILocation(line: 98, column: 11, scope: !1883)
!1929 = !DILocation(line: 99, column: 21, scope: !1883)
!1930 = !DILocation(line: 99, column: 16, scope: !1883)
!1931 = !DILocation(line: 99, column: 25, scope: !1883)
!1932 = !DILocation(line: 99, column: 13, scope: !1883)
!1933 = !DILocation(line: 99, column: 11, scope: !1883)
!1934 = !DILocation(line: 100, column: 16, scope: !1883)
!1935 = !DILocation(line: 100, column: 13, scope: !1883)
!1936 = !DILocation(line: 101, column: 4, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1883, file: !1812, line: 101, column: 4)
!1938 = !DILocation(line: 102, column: 4, scope: !1883)
!1939 = !DILocation(line: 107, column: 9, scope: !1826)
!1940 = !DILocation(line: 108, column: 1, scope: !1826)
!1941 = !DILocation(line: 107, column: 2, scope: !1826)
!1942 = distinct !DISubprogram(name: "ebitmap_cache_init", scope: !3, file: !3, line: 559, type: !1943, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{null}
!1945 = !DILocation(line: 561, column: 24, scope: !1942)
!1946 = !DILocation(line: 561, column: 22, scope: !1942)
!1947 = !DILocation(line: 564, column: 1, scope: !1942)
!1948 = !DISubprogram(name: "kmem_cache_create", scope: !254, file: !254, line: 189, type: !1949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!68, !1533, !7, !7, !20, !1951}
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{null, !8}
!1954 = !DISubprogram(name: "kmem_cache_alloc", scope: !254, file: !254, line: 500, type: !255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1955 = distinct !DISubprogram(name: "find_next_bit", scope: !1193, file: !1193, line: 54, type: !1956, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1958)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!21, !1196, !21, !21}
!1958 = !{!1959, !1960, !1961, !1962}
!1959 = !DILocalVariable(name: "addr", arg: 1, scope: !1955, file: !1193, line: 54, type: !1196)
!1960 = !DILocalVariable(name: "size", arg: 2, scope: !1955, file: !1193, line: 54, type: !21)
!1961 = !DILocalVariable(name: "offset", arg: 3, scope: !1955, file: !1193, line: 55, type: !21)
!1962 = !DILocalVariable(name: "val", scope: !1963, file: !1193, line: 58, type: !21)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !1193, line: 57, column: 31)
!1964 = distinct !DILexicalBlock(scope: !1955, file: !1193, line: 57, column: 6)
!1965 = !DILocation(line: 54, column: 50, scope: !1955)
!1966 = !DILocation(line: 54, column: 70, scope: !1955)
!1967 = !DILocation(line: 55, column: 22, scope: !1955)
!1968 = !DILocation(line: 57, column: 6, scope: !1964)
!1969 = !DILocation(line: 57, column: 6, scope: !1955)
!1970 = !DILocation(line: 58, column: 3, scope: !1963)
!1971 = !DILocation(line: 58, column: 17, scope: !1963)
!1972 = !DILocation(line: 60, column: 7, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1963, file: !1193, line: 60, column: 7)
!1974 = !DILocation(line: 60, column: 7, scope: !1963)
!1975 = !DILocation(line: 61, column: 11, scope: !1973)
!1976 = !DILocation(line: 61, column: 4, scope: !1973)
!1977 = !DILocation(line: 63, column: 10, scope: !1963)
!1978 = !DILocation(line: 63, column: 9, scope: !1963)
!1979 = !DILocation(line: 63, column: 17, scope: !1963)
!1980 = !DILocation(line: 63, column: 15, scope: !1963)
!1981 = !DILocation(line: 63, column: 7, scope: !1963)
!1982 = !DILocation(line: 64, column: 10, scope: !1963)
!1983 = !DILocation(line: 64, column: 16, scope: !1963)
!1984 = !DILocation(line: 64, column: 29, scope: !1963)
!1985 = !DILocation(line: 64, column: 3, scope: !1963)
!1986 = !DILocation(line: 65, column: 2, scope: !1964)
!1987 = !DILocation(line: 67, column: 24, scope: !1955)
!1988 = !DILocation(line: 67, column: 30, scope: !1955)
!1989 = !DILocation(line: 67, column: 36, scope: !1955)
!1990 = !DILocation(line: 67, column: 9, scope: !1955)
!1991 = !DILocation(line: 67, column: 2, scope: !1955)
!1992 = !DILocation(line: 68, column: 1, scope: !1955)
!1993 = distinct !DISubprogram(name: "variable__ffs", scope: !1073, file: !1073, line: 250, type: !1074, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1994)
!1994 = !{!1995}
!1995 = !DILocalVariable(name: "word", arg: 1, scope: !1993, file: !1073, line: 250, type: !21)
!1996 = !DILocation(line: 250, column: 66, scope: !1993)
!1997 = !DILocation(line: 254, column: 11, scope: !1993)
!1998 = !DILocation(line: 252, column: 2, scope: !1993)
!1999 = !{i64 304920}
!2000 = !DILocation(line: 255, column: 9, scope: !1993)
!2001 = !DILocation(line: 255, column: 2, scope: !1993)
!2002 = !DISubprogram(name: "_find_next_bit", scope: !1193, file: !1193, line: 11, type: !1956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2003 = !DISubprogram(name: "kfree", scope: !254, file: !254, line: 227, type: !2004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{null, !165}
!2006 = !DISubprogram(name: "_find_first_bit", scope: !1193, file: !1193, line: 21, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2007 = distinct !DISubprogram(name: "__must_check_overflow", scope: !2008, file: !2008, line: 51, type: !2009, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2013)
!2008 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!2011, !2011}
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !6, line: 35, baseType: !2012)
!2012 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!2013 = !{!2014}
!2014 = !DILocalVariable(name: "overflow", arg: 1, scope: !2007, file: !2008, line: 51, type: !2011)
!2015 = !DILocation(line: 51, column: 60, scope: !2007)
!2016 = !DILocation(line: 53, column: 9, scope: !2007)
!2017 = !{i8 0, i8 2}
!2018 = !{}
!2019 = !DILocation(line: 53, column: 2, scope: !2007)
!2020 = distinct !DISubprogram(name: "__jhash_nwords", scope: !1812, file: !1812, line: 150, type: !2021, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2023)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!9, !9, !9, !9, !9}
!2023 = !{!2024, !2025, !2026, !2027}
!2024 = !DILocalVariable(name: "a", arg: 1, scope: !2020, file: !1812, line: 150, type: !9)
!2025 = !DILocalVariable(name: "b", arg: 2, scope: !2020, file: !1812, line: 150, type: !9)
!2026 = !DILocalVariable(name: "c", arg: 3, scope: !2020, file: !1812, line: 150, type: !9)
!2027 = !DILocalVariable(name: "initval", arg: 4, scope: !2020, file: !1812, line: 150, type: !9)
!2028 = !DILocation(line: 150, column: 38, scope: !2020)
!2029 = !DILocation(line: 150, column: 45, scope: !2020)
!2030 = !DILocation(line: 150, column: 52, scope: !2020)
!2031 = !DILocation(line: 150, column: 59, scope: !2020)
!2032 = !DILocation(line: 152, column: 7, scope: !2020)
!2033 = !DILocation(line: 152, column: 4, scope: !2020)
!2034 = !DILocation(line: 153, column: 7, scope: !2020)
!2035 = !DILocation(line: 153, column: 4, scope: !2020)
!2036 = !DILocation(line: 154, column: 7, scope: !2020)
!2037 = !DILocation(line: 154, column: 4, scope: !2020)
!2038 = !DILocation(line: 156, column: 2, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2020, file: !1812, line: 156, column: 2)
!2040 = !DILocation(line: 158, column: 9, scope: !2020)
!2041 = !DILocation(line: 158, column: 2, scope: !2020)
!2042 = distinct !DISubprogram(name: "rol32", scope: !2043, file: !2043, line: 125, type: !2044, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2046)
!2043 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!11, !11, !7}
!2046 = !{!2047, !2048}
!2047 = !DILocalVariable(name: "word", arg: 1, scope: !2042, file: !2043, line: 125, type: !11)
!2048 = !DILocalVariable(name: "shift", arg: 2, scope: !2042, file: !2043, line: 125, type: !7)
!2049 = !DILocation(line: 125, column: 33, scope: !2042)
!2050 = !DILocation(line: 125, column: 52, scope: !2042)
!2051 = !DILocation(line: 127, column: 10, scope: !2042)
!2052 = !DILocation(line: 127, column: 19, scope: !2042)
!2053 = !DILocation(line: 127, column: 25, scope: !2042)
!2054 = !DILocation(line: 127, column: 15, scope: !2042)
!2055 = !DILocation(line: 127, column: 35, scope: !2042)
!2056 = !DILocation(line: 127, column: 46, scope: !2042)
!2057 = !DILocation(line: 127, column: 45, scope: !2042)
!2058 = !DILocation(line: 127, column: 53, scope: !2042)
!2059 = !DILocation(line: 127, column: 40, scope: !2042)
!2060 = !DILocation(line: 127, column: 32, scope: !2042)
!2061 = !DILocation(line: 127, column: 2, scope: !2042)
!2062 = distinct !DISubprogram(name: "__get_unaligned_cpu32", scope: !25, file: !25, line: 16, type: !2063, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2065)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!9, !165}
!2065 = !{!2066, !2067}
!2066 = !DILocalVariable(name: "p", arg: 1, scope: !2062, file: !25, line: 16, type: !165)
!2067 = !DILocalVariable(name: "ptr", scope: !2062, file: !25, line: 18, type: !22)
!2068 = !DILocation(line: 16, column: 53, scope: !2062)
!2069 = !DILocation(line: 18, column: 2, scope: !2062)
!2070 = !DILocation(line: 18, column: 26, scope: !2062)
!2071 = !DILocation(line: 18, column: 58, scope: !2062)
!2072 = !DILocation(line: 19, column: 9, scope: !2062)
!2073 = !DILocation(line: 19, column: 14, scope: !2062)
!2074 = !DILocation(line: 20, column: 1, scope: !2062)
!2075 = !DILocation(line: 19, column: 2, scope: !2062)

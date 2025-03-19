; ModuleID = 'security/selinux/ss/hashtab.c'
source_filename = "security/selinux/ss/hashtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashtab = type { ptr, i32, i32 }
%struct.hashtab_node = type { ptr, ptr, ptr }

@hashtab_node_cachep = internal global ptr null, section ".data..ro_after_init", align 8, !dbg !0
@.str = private unnamed_addr constant [13 x i8] c"hashtab_node\00", align 1, !dbg !28
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !34

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @hashtab_init(ptr noundef %h, i32 noundef %nel_hint) #0 align 16 !dbg !51 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca ptr, align 8
  %nel_hint.addr = alloca i32, align 4
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !74, metadata !DIExpression()), !dbg !77
  store i32 %nel_hint, ptr %nel_hint.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nel_hint.addr, metadata !75, metadata !DIExpression()), !dbg !78
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #17, !dbg !79
  call void @llvm.dbg.declare(metadata ptr %size, metadata !76, metadata !DIExpression()), !dbg !80
  %0 = load i32, ptr %nel_hint.addr, align 4, !dbg !81
  %call = call i32 @hashtab_compute_size(i32 noundef %0) #18, !dbg !82
  store i32 %call, ptr %size, align 4, !dbg !80
  %1 = load ptr, ptr %h.addr, align 8, !dbg !83
  %nel = getelementptr inbounds %struct.hashtab, ptr %1, i32 0, i32 2, !dbg !84
  store i32 0, ptr %nel, align 4, !dbg !85
  %2 = load ptr, ptr %h.addr, align 8, !dbg !86
  %size1 = getelementptr inbounds %struct.hashtab, ptr %2, i32 0, i32 1, !dbg !87
  store i32 0, ptr %size1, align 8, !dbg !88
  %3 = load ptr, ptr %h.addr, align 8, !dbg !89
  %htable = getelementptr inbounds %struct.hashtab, ptr %3, i32 0, i32 0, !dbg !90
  store ptr null, ptr %htable, align 8, !dbg !91
  %4 = load i32, ptr %size, align 4, !dbg !92
  %tobool = icmp ne i32 %4, 0, !dbg !92
  br i1 %tobool, label %if.then, label %if.end8, !dbg !94

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %size, align 4, !dbg !95
  %conv = zext i32 %5 to i64, !dbg !95
  %call2 = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #19, !dbg !97
  %6 = load ptr, ptr %h.addr, align 8, !dbg !98
  %htable3 = getelementptr inbounds %struct.hashtab, ptr %6, i32 0, i32 0, !dbg !99
  store ptr %call2, ptr %htable3, align 8, !dbg !100
  %7 = load ptr, ptr %h.addr, align 8, !dbg !101
  %htable4 = getelementptr inbounds %struct.hashtab, ptr %7, i32 0, i32 0, !dbg !103
  %8 = load ptr, ptr %htable4, align 8, !dbg !103
  %tobool5 = icmp ne ptr %8, null, !dbg !101
  br i1 %tobool5, label %if.end, label %if.then6, !dbg !104

if.then6:                                         ; preds = %if.then
  store i32 -12, ptr %retval, align 4, !dbg !105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !105

if.end:                                           ; preds = %if.then
  %9 = load i32, ptr %size, align 4, !dbg !106
  %10 = load ptr, ptr %h.addr, align 8, !dbg !107
  %size7 = getelementptr inbounds %struct.hashtab, ptr %10, i32 0, i32 1, !dbg !108
  store i32 %9, ptr %size7, align 8, !dbg !109
  br label %if.end8, !dbg !110

if.end8:                                          ; preds = %if.end, %entry
  store i32 0, ptr %retval, align 4, !dbg !111
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !111

cleanup:                                          ; preds = %if.end8, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #17, !dbg !112
  %11 = load i32, ptr %retval, align 4, !dbg !112
  ret i32 %11, !dbg !112
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hashtab_compute_size(i32 noundef %nel) #0 align 16 !dbg !113 {
entry:
  %nel.addr = alloca i32, align 4
  store i32 %nel, ptr %nel.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nel.addr, metadata !117, metadata !DIExpression()), !dbg !118
  %0 = load i32, ptr %nel.addr, align 4, !dbg !119
  %cmp = icmp eq i32 %0, 0, !dbg !120
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !119

cond.true:                                        ; preds = %entry
  br label %cond.end23, !dbg !119

cond.false:                                       ; preds = %entry
  %1 = load i32, ptr %nel.addr, align 4, !dbg !121
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !121
  br i1 %2, label %cond.true1, label %cond.false18, !dbg !121

cond.true1:                                       ; preds = %cond.false
  %3 = load i32, ptr %nel.addr, align 4, !dbg !121
  %cmp2 = icmp eq i32 %3, 1, !dbg !121
  br i1 %cmp2, label %cond.true3, label %cond.false4, !dbg !121

cond.true3:                                       ; preds = %cond.true1
  br label %cond.end16, !dbg !121

cond.false4:                                      ; preds = %cond.true1
  %4 = load i32, ptr %nel.addr, align 4, !dbg !121
  %sub = sub i32 %4, 1, !dbg !121
  %5 = call i1 @llvm.is.constant.i32(i32 %sub), !dbg !121
  br i1 %5, label %cond.true5, label %cond.false12, !dbg !121

cond.true5:                                       ; preds = %cond.false4
  %6 = load i32, ptr %nel.addr, align 4, !dbg !121
  %sub6 = sub i32 %6, 1, !dbg !121
  %cmp7 = icmp ult i32 %sub6, 2, !dbg !121
  br i1 %cmp7, label %cond.true8, label %cond.false9, !dbg !121

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end, !dbg !121

cond.false9:                                      ; preds = %cond.true5
  %7 = load i32, ptr %nel.addr, align 4, !dbg !121
  %sub10 = sub i32 %7, 1, !dbg !121
  %conv = zext i32 %sub10 to i64, !dbg !121
  %8 = call i64 @llvm.ctlz.i64(i64 %conv, i1 true), !dbg !121
  %cast = trunc i64 %8 to i32, !dbg !121
  %sub11 = sub i32 63, %cast, !dbg !121
  br label %cond.end, !dbg !121

cond.end:                                         ; preds = %cond.false9, %cond.true8
  %cond = phi i32 [ 0, %cond.true8 ], [ %sub11, %cond.false9 ], !dbg !121
  br label %cond.end14, !dbg !121

cond.false12:                                     ; preds = %cond.false4
  %9 = load i32, ptr %nel.addr, align 4, !dbg !121
  %sub13 = sub i32 %9, 1, !dbg !121
  %call = call i32 @__ilog2_u32(i32 noundef %sub13) #20, !dbg !121
  br label %cond.end14, !dbg !121

cond.end14:                                       ; preds = %cond.false12, %cond.end
  %cond15 = phi i32 [ %cond, %cond.end ], [ %call, %cond.false12 ], !dbg !121
  %add = add i32 %cond15, 1, !dbg !121
  %sh_prom = zext i32 %add to i64, !dbg !121
  %shl = shl i64 1, %sh_prom, !dbg !121
  br label %cond.end16, !dbg !121

cond.end16:                                       ; preds = %cond.end14, %cond.true3
  %cond17 = phi i64 [ 1, %cond.true3 ], [ %shl, %cond.end14 ], !dbg !121
  br label %cond.end21, !dbg !121

cond.false18:                                     ; preds = %cond.false
  %10 = load i32, ptr %nel.addr, align 4, !dbg !121
  %conv19 = zext i32 %10 to i64, !dbg !121
  %call20 = call i64 @__roundup_pow_of_two(i64 noundef %conv19) #20, !dbg !121
  br label %cond.end21, !dbg !121

cond.end21:                                       ; preds = %cond.false18, %cond.end16
  %cond22 = phi i64 [ %cond17, %cond.end16 ], [ %call20, %cond.false18 ], !dbg !121
  br label %cond.end23, !dbg !119

cond.end23:                                       ; preds = %cond.end21, %cond.true
  %cond24 = phi i64 [ 0, %cond.true ], [ %cond22, %cond.end21 ], !dbg !119
  %conv25 = trunc i64 %cond24 to i32, !dbg !119
  ret i32 %conv25, !dbg !122
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !123 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !131, metadata !DIExpression()), !dbg !134
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !132, metadata !DIExpression()), !dbg !135
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !133, metadata !DIExpression()), !dbg !136
  %0 = load i64, ptr %n.addr, align 8, !dbg !137
  %1 = load i64, ptr %size.addr, align 8, !dbg !138
  %2 = load i32, ptr %flags.addr, align 4, !dbg !139
  %or = or i32 %2, 256, !dbg !140
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #19, !dbg !141
  ret ptr %call, !dbg !142
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__hashtab_insert(ptr noundef %h, ptr noundef %dst, ptr noundef %key, ptr noundef %datum) #0 align 16 !dbg !143 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %datum.addr = alloca ptr, align 8
  %newnode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !147, metadata !DIExpression()), !dbg !152
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !148, metadata !DIExpression()), !dbg !153
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !149, metadata !DIExpression()), !dbg !154
  store ptr %datum, ptr %datum.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %datum.addr, metadata !150, metadata !DIExpression()), !dbg !155
  call void @llvm.lifetime.start.p0(i64 8, ptr %newnode) #17, !dbg !156
  call void @llvm.dbg.declare(metadata ptr %newnode, metadata !151, metadata !DIExpression()), !dbg !157
  %0 = load ptr, ptr @hashtab_node_cachep, align 8, !dbg !158
  %call = call ptr @kmem_cache_zalloc(ptr noundef %0, i32 noundef 3264) #18, !dbg !159
  store ptr %call, ptr %newnode, align 8, !dbg !160
  %1 = load ptr, ptr %newnode, align 8, !dbg !161
  %tobool = icmp ne ptr %1, null, !dbg !161
  br i1 %tobool, label %if.end, label %if.then, !dbg !163

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !164
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !164

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %key.addr, align 8, !dbg !165
  %3 = load ptr, ptr %newnode, align 8, !dbg !166
  %key1 = getelementptr inbounds %struct.hashtab_node, ptr %3, i32 0, i32 0, !dbg !167
  store ptr %2, ptr %key1, align 8, !dbg !168
  %4 = load ptr, ptr %datum.addr, align 8, !dbg !169
  %5 = load ptr, ptr %newnode, align 8, !dbg !170
  %datum2 = getelementptr inbounds %struct.hashtab_node, ptr %5, i32 0, i32 1, !dbg !171
  store ptr %4, ptr %datum2, align 8, !dbg !172
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !173
  %7 = load ptr, ptr %6, align 8, !dbg !174
  %8 = load ptr, ptr %newnode, align 8, !dbg !175
  %next = getelementptr inbounds %struct.hashtab_node, ptr %8, i32 0, i32 2, !dbg !176
  store ptr %7, ptr %next, align 8, !dbg !177
  %9 = load ptr, ptr %newnode, align 8, !dbg !178
  %10 = load ptr, ptr %dst.addr, align 8, !dbg !179
  store ptr %9, ptr %10, align 8, !dbg !180
  %11 = load ptr, ptr %h.addr, align 8, !dbg !181
  %nel = getelementptr inbounds %struct.hashtab, ptr %11, i32 0, i32 2, !dbg !182
  %12 = load i32, ptr %nel, align 4, !dbg !183
  %inc = add i32 %12, 1, !dbg !183
  store i32 %inc, ptr %nel, align 4, !dbg !183
  store i32 0, ptr %retval, align 4, !dbg !184
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !184

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %newnode) #17, !dbg !185
  %13 = load i32, ptr %retval, align 4, !dbg !185
  ret i32 %13, !dbg !185
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmem_cache_zalloc(ptr noundef %k, i32 noundef %flags) #4 align 16 !dbg !186 {
entry:
  %k.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !190, metadata !DIExpression()), !dbg !192
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !191, metadata !DIExpression()), !dbg !193
  %0 = load ptr, ptr %k.addr, align 8, !dbg !194
  %1 = load i32, ptr %flags.addr, align 4, !dbg !195
  %or = or i32 %1, 256, !dbg !196
  %call = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef %or) #18, !dbg !197
  ret ptr %call, !dbg !198
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @hashtab_destroy(ptr noundef %h) #0 align 16 !dbg !199 {
entry:
  %h.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cur = alloca ptr, align 8
  %temp = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !203, metadata !DIExpression()), !dbg !207
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !208
  call void @llvm.dbg.declare(metadata ptr %i, metadata !204, metadata !DIExpression()), !dbg !209
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #17, !dbg !210
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !205, metadata !DIExpression()), !dbg !211
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #17, !dbg !210
  call void @llvm.dbg.declare(metadata ptr %temp, metadata !206, metadata !DIExpression()), !dbg !212
  store i32 0, ptr %i, align 4, !dbg !213
  br label %for.cond, !dbg !215

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !216
  %1 = load ptr, ptr %h.addr, align 8, !dbg !218
  %size = getelementptr inbounds %struct.hashtab, ptr %1, i32 0, i32 1, !dbg !219
  %2 = load i32, ptr %size, align 8, !dbg !219
  %cmp = icmp ult i32 %0, %2, !dbg !220
  br i1 %cmp, label %for.body, label %for.end, !dbg !221

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %h.addr, align 8, !dbg !222
  %htable = getelementptr inbounds %struct.hashtab, ptr %3, i32 0, i32 0, !dbg !224
  %4 = load ptr, ptr %htable, align 8, !dbg !224
  %5 = load i32, ptr %i, align 4, !dbg !225
  %idxprom = zext i32 %5 to i64, !dbg !222
  %arrayidx = getelementptr ptr, ptr %4, i64 %idxprom, !dbg !222
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !222
  store ptr %6, ptr %cur, align 8, !dbg !226
  br label %while.cond, !dbg !227

while.cond:                                       ; preds = %while.body, %for.body
  %7 = load ptr, ptr %cur, align 8, !dbg !228
  %tobool = icmp ne ptr %7, null, !dbg !227
  br i1 %tobool, label %while.body, label %while.end, !dbg !227

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %cur, align 8, !dbg !229
  store ptr %8, ptr %temp, align 8, !dbg !231
  %9 = load ptr, ptr %cur, align 8, !dbg !232
  %next = getelementptr inbounds %struct.hashtab_node, ptr %9, i32 0, i32 2, !dbg !233
  %10 = load ptr, ptr %next, align 8, !dbg !233
  store ptr %10, ptr %cur, align 8, !dbg !234
  %11 = load ptr, ptr @hashtab_node_cachep, align 8, !dbg !235
  %12 = load ptr, ptr %temp, align 8, !dbg !236
  call void @kmem_cache_free(ptr noundef %11, ptr noundef %12) #18, !dbg !237
  br label %while.cond, !dbg !227, !llvm.loop !238

while.end:                                        ; preds = %while.cond
  %13 = load ptr, ptr %h.addr, align 8, !dbg !242
  %htable1 = getelementptr inbounds %struct.hashtab, ptr %13, i32 0, i32 0, !dbg !243
  %14 = load ptr, ptr %htable1, align 8, !dbg !243
  %15 = load i32, ptr %i, align 4, !dbg !244
  %idxprom2 = zext i32 %15 to i64, !dbg !242
  %arrayidx3 = getelementptr ptr, ptr %14, i64 %idxprom2, !dbg !242
  store ptr null, ptr %arrayidx3, align 8, !dbg !245
  br label %for.inc, !dbg !246

for.inc:                                          ; preds = %while.end
  %16 = load i32, ptr %i, align 4, !dbg !247
  %inc = add i32 %16, 1, !dbg !247
  store i32 %inc, ptr %i, align 4, !dbg !247
  br label %for.cond, !dbg !248, !llvm.loop !249

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %h.addr, align 8, !dbg !251
  %htable4 = getelementptr inbounds %struct.hashtab, ptr %17, i32 0, i32 0, !dbg !252
  %18 = load ptr, ptr %htable4, align 8, !dbg !252
  call void @kfree(ptr noundef %18) #18, !dbg !253
  %19 = load ptr, ptr %h.addr, align 8, !dbg !254
  %htable5 = getelementptr inbounds %struct.hashtab, ptr %19, i32 0, i32 0, !dbg !255
  store ptr null, ptr %htable5, align 8, !dbg !256
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #17, !dbg !257
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #17, !dbg !257
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !257
  ret void, !dbg !257
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !258 dso_local void @kmem_cache_free(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !261 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @hashtab_map(ptr noundef %h, ptr noundef %apply, ptr noundef %args) #0 align 16 !dbg !266 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca ptr, align 8
  %apply.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %cur = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !273, metadata !DIExpression()), !dbg !279
  store ptr %apply, ptr %apply.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %apply.addr, metadata !274, metadata !DIExpression()), !dbg !280
  store ptr %args, ptr %args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !275, metadata !DIExpression()), !dbg !281
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !282
  call void @llvm.dbg.declare(metadata ptr %i, metadata !276, metadata !DIExpression()), !dbg !283
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !284
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !277, metadata !DIExpression()), !dbg !285
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #17, !dbg !286
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !278, metadata !DIExpression()), !dbg !287
  store i32 0, ptr %i, align 4, !dbg !288
  br label %for.cond, !dbg !290

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !291
  %1 = load ptr, ptr %h.addr, align 8, !dbg !293
  %size = getelementptr inbounds %struct.hashtab, ptr %1, i32 0, i32 1, !dbg !294
  %2 = load i32, ptr %size, align 8, !dbg !294
  %cmp = icmp ult i32 %0, %2, !dbg !295
  br i1 %cmp, label %for.body, label %for.end, !dbg !296

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %h.addr, align 8, !dbg !297
  %htable = getelementptr inbounds %struct.hashtab, ptr %3, i32 0, i32 0, !dbg !299
  %4 = load ptr, ptr %htable, align 8, !dbg !299
  %5 = load i32, ptr %i, align 4, !dbg !300
  %idxprom = zext i32 %5 to i64, !dbg !297
  %arrayidx = getelementptr ptr, ptr %4, i64 %idxprom, !dbg !297
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !297
  store ptr %6, ptr %cur, align 8, !dbg !301
  br label %while.cond, !dbg !302

while.cond:                                       ; preds = %if.end, %for.body
  %7 = load ptr, ptr %cur, align 8, !dbg !303
  %tobool = icmp ne ptr %7, null, !dbg !302
  br i1 %tobool, label %while.body, label %while.end, !dbg !302

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %apply.addr, align 8, !dbg !304
  %9 = load ptr, ptr %cur, align 8, !dbg !306
  %key = getelementptr inbounds %struct.hashtab_node, ptr %9, i32 0, i32 0, !dbg !307
  %10 = load ptr, ptr %key, align 8, !dbg !307
  %11 = load ptr, ptr %cur, align 8, !dbg !308
  %datum = getelementptr inbounds %struct.hashtab_node, ptr %11, i32 0, i32 1, !dbg !309
  %12 = load ptr, ptr %datum, align 8, !dbg !309
  %13 = load ptr, ptr %args.addr, align 8, !dbg !310
  %call = call i32 %8(ptr noundef %10, ptr noundef %12, ptr noundef %13) #18, !dbg !304
  store i32 %call, ptr %ret, align 4, !dbg !311
  %14 = load i32, ptr %ret, align 4, !dbg !312
  %tobool1 = icmp ne i32 %14, 0, !dbg !312
  br i1 %tobool1, label %if.then, label %if.end, !dbg !314

if.then:                                          ; preds = %while.body
  %15 = load i32, ptr %ret, align 4, !dbg !315
  store i32 %15, ptr %retval, align 4, !dbg !316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !316

if.end:                                           ; preds = %while.body
  %16 = load ptr, ptr %cur, align 8, !dbg !317
  %next = getelementptr inbounds %struct.hashtab_node, ptr %16, i32 0, i32 2, !dbg !318
  %17 = load ptr, ptr %next, align 8, !dbg !318
  store ptr %17, ptr %cur, align 8, !dbg !319
  br label %while.cond, !dbg !302, !llvm.loop !320

while.end:                                        ; preds = %while.cond
  br label %for.inc, !dbg !322

for.inc:                                          ; preds = %while.end
  %18 = load i32, ptr %i, align 4, !dbg !323
  %inc = add i32 %18, 1, !dbg !323
  store i32 %inc, ptr %i, align 4, !dbg !323
  br label %for.cond, !dbg !324, !llvm.loop !325

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !327

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #17, !dbg !328
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !328
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !328
  %19 = load i32, ptr %retval, align 4, !dbg !328
  ret i32 %19, !dbg !328
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @hashtab_duplicate(ptr noundef %new, ptr noundef %orig, ptr noundef %copy, ptr noundef %destroy, ptr noundef %args) #0 align 16 !dbg !329 {
entry:
  %retval = alloca i32, align 4
  %new.addr = alloca ptr, align 8
  %orig.addr = alloca ptr, align 8
  %copy.addr = alloca ptr, align 8
  %destroy.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  %cur = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tail = alloca ptr, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !336, metadata !DIExpression()), !dbg !347
  store ptr %orig, ptr %orig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %orig.addr, metadata !337, metadata !DIExpression()), !dbg !348
  store ptr %copy, ptr %copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %copy.addr, metadata !338, metadata !DIExpression()), !dbg !349
  store ptr %destroy, ptr %destroy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %destroy.addr, metadata !339, metadata !DIExpression()), !dbg !350
  store ptr %args, ptr %args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !340, metadata !DIExpression()), !dbg !351
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #17, !dbg !352
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !341, metadata !DIExpression()), !dbg !353
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #17, !dbg !352
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !342, metadata !DIExpression()), !dbg !354
  call void @llvm.lifetime.start.p0(i64 8, ptr %tail) #17, !dbg !352
  call void @llvm.dbg.declare(metadata ptr %tail, metadata !343, metadata !DIExpression()), !dbg !355
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !356
  call void @llvm.dbg.declare(metadata ptr %i, metadata !344, metadata !DIExpression()), !dbg !357
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #17, !dbg !358
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !345, metadata !DIExpression()), !dbg !359
  %0 = load ptr, ptr %new.addr, align 8, !dbg !360
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 16, i1 false), !dbg !361
  %1 = load ptr, ptr %orig.addr, align 8, !dbg !362
  %size = getelementptr inbounds %struct.hashtab, ptr %1, i32 0, i32 1, !dbg !363
  %2 = load i32, ptr %size, align 8, !dbg !363
  %conv = zext i32 %2 to i64, !dbg !362
  %call = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #19, !dbg !364
  %3 = load ptr, ptr %new.addr, align 8, !dbg !365
  %htable = getelementptr inbounds %struct.hashtab, ptr %3, i32 0, i32 0, !dbg !366
  store ptr %call, ptr %htable, align 8, !dbg !367
  %4 = load ptr, ptr %new.addr, align 8, !dbg !368
  %htable1 = getelementptr inbounds %struct.hashtab, ptr %4, i32 0, i32 0, !dbg !370
  %5 = load ptr, ptr %htable1, align 8, !dbg !370
  %tobool = icmp ne ptr %5, null, !dbg !368
  br i1 %tobool, label %if.end, label %if.then, !dbg !371

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !372
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !372

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %orig.addr, align 8, !dbg !373
  %size2 = getelementptr inbounds %struct.hashtab, ptr %6, i32 0, i32 1, !dbg !374
  %7 = load i32, ptr %size2, align 8, !dbg !374
  %8 = load ptr, ptr %new.addr, align 8, !dbg !375
  %size3 = getelementptr inbounds %struct.hashtab, ptr %8, i32 0, i32 1, !dbg !376
  store i32 %7, ptr %size3, align 8, !dbg !377
  store i32 0, ptr %i, align 4, !dbg !378
  br label %for.cond, !dbg !380

for.cond:                                         ; preds = %for.inc26, %if.end
  %9 = load i32, ptr %i, align 4, !dbg !381
  %10 = load ptr, ptr %orig.addr, align 8, !dbg !383
  %size4 = getelementptr inbounds %struct.hashtab, ptr %10, i32 0, i32 1, !dbg !384
  %11 = load i32, ptr %size4, align 8, !dbg !384
  %cmp = icmp ult i32 %9, %11, !dbg !385
  br i1 %cmp, label %for.body, label %for.end28, !dbg !386

for.body:                                         ; preds = %for.cond
  store ptr null, ptr %tail, align 8, !dbg !387
  %12 = load ptr, ptr %orig.addr, align 8, !dbg !389
  %htable6 = getelementptr inbounds %struct.hashtab, ptr %12, i32 0, i32 0, !dbg !391
  %13 = load ptr, ptr %htable6, align 8, !dbg !391
  %14 = load i32, ptr %i, align 4, !dbg !392
  %idxprom = zext i32 %14 to i64, !dbg !389
  %arrayidx = getelementptr ptr, ptr %13, i64 %idxprom, !dbg !389
  %15 = load ptr, ptr %arrayidx, align 8, !dbg !389
  store ptr %15, ptr %cur, align 8, !dbg !393
  br label %for.cond7, !dbg !394

for.cond7:                                        ; preds = %for.inc, %for.body
  %16 = load ptr, ptr %cur, align 8, !dbg !395
  %tobool8 = icmp ne ptr %16, null, !dbg !397
  br i1 %tobool8, label %for.body9, label %for.end, !dbg !397

for.body9:                                        ; preds = %for.cond7
  %17 = load ptr, ptr @hashtab_node_cachep, align 8, !dbg !398
  %call10 = call ptr @kmem_cache_zalloc(ptr noundef %17, i32 noundef 3264) #18, !dbg !400
  store ptr %call10, ptr %tmp, align 8, !dbg !401
  %18 = load ptr, ptr %tmp, align 8, !dbg !402
  %tobool11 = icmp ne ptr %18, null, !dbg !402
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !404

if.then12:                                        ; preds = %for.body9
  br label %error, !dbg !405

if.end13:                                         ; preds = %for.body9
  %19 = load ptr, ptr %copy.addr, align 8, !dbg !406
  %20 = load ptr, ptr %tmp, align 8, !dbg !407
  %21 = load ptr, ptr %cur, align 8, !dbg !408
  %22 = load ptr, ptr %args.addr, align 8, !dbg !409
  %call14 = call i32 %19(ptr noundef %20, ptr noundef %21, ptr noundef %22) #18, !dbg !406
  store i32 %call14, ptr %rc, align 4, !dbg !410
  %23 = load i32, ptr %rc, align 4, !dbg !411
  %tobool15 = icmp ne i32 %23, 0, !dbg !411
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !413

if.then16:                                        ; preds = %if.end13
  %24 = load ptr, ptr @hashtab_node_cachep, align 8, !dbg !414
  %25 = load ptr, ptr %tmp, align 8, !dbg !416
  call void @kmem_cache_free(ptr noundef %24, ptr noundef %25) #18, !dbg !417
  br label %error, !dbg !418

if.end17:                                         ; preds = %if.end13
  %26 = load ptr, ptr %tmp, align 8, !dbg !419
  %next = getelementptr inbounds %struct.hashtab_node, ptr %26, i32 0, i32 2, !dbg !420
  store ptr null, ptr %next, align 8, !dbg !421
  %27 = load ptr, ptr %tail, align 8, !dbg !422
  %tobool18 = icmp ne ptr %27, null, !dbg !422
  br i1 %tobool18, label %if.else, label %if.then19, !dbg !424

if.then19:                                        ; preds = %if.end17
  %28 = load ptr, ptr %tmp, align 8, !dbg !425
  %29 = load ptr, ptr %new.addr, align 8, !dbg !426
  %htable20 = getelementptr inbounds %struct.hashtab, ptr %29, i32 0, i32 0, !dbg !427
  %30 = load ptr, ptr %htable20, align 8, !dbg !427
  %31 = load i32, ptr %i, align 4, !dbg !428
  %idxprom21 = zext i32 %31 to i64, !dbg !426
  %arrayidx22 = getelementptr ptr, ptr %30, i64 %idxprom21, !dbg !426
  store ptr %28, ptr %arrayidx22, align 8, !dbg !429
  br label %if.end24, !dbg !426

if.else:                                          ; preds = %if.end17
  %32 = load ptr, ptr %tmp, align 8, !dbg !430
  %33 = load ptr, ptr %tail, align 8, !dbg !431
  %next23 = getelementptr inbounds %struct.hashtab_node, ptr %33, i32 0, i32 2, !dbg !432
  store ptr %32, ptr %next23, align 8, !dbg !433
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then19
  %34 = load ptr, ptr %tmp, align 8, !dbg !434
  store ptr %34, ptr %tail, align 8, !dbg !435
  %35 = load ptr, ptr %new.addr, align 8, !dbg !436
  %nel = getelementptr inbounds %struct.hashtab, ptr %35, i32 0, i32 2, !dbg !437
  %36 = load i32, ptr %nel, align 4, !dbg !438
  %inc = add i32 %36, 1, !dbg !438
  store i32 %inc, ptr %nel, align 4, !dbg !438
  br label %for.inc, !dbg !439

for.inc:                                          ; preds = %if.end24
  %37 = load ptr, ptr %cur, align 8, !dbg !440
  %next25 = getelementptr inbounds %struct.hashtab_node, ptr %37, i32 0, i32 2, !dbg !441
  %38 = load ptr, ptr %next25, align 8, !dbg !441
  store ptr %38, ptr %cur, align 8, !dbg !442
  br label %for.cond7, !dbg !443, !llvm.loop !444

for.end:                                          ; preds = %for.cond7
  br label %for.inc26, !dbg !446

for.inc26:                                        ; preds = %for.end
  %39 = load i32, ptr %i, align 4, !dbg !447
  %inc27 = add i32 %39, 1, !dbg !447
  store i32 %inc27, ptr %i, align 4, !dbg !447
  br label %for.cond, !dbg !448, !llvm.loop !449

for.end28:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !451
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !451

error:                                            ; preds = %if.then16, %if.then12
  call void @llvm.dbg.label(metadata !346), !dbg !452
  store i32 0, ptr %i, align 4, !dbg !453
  br label %for.cond29, !dbg !455

for.cond29:                                       ; preds = %for.inc44, %error
  %40 = load i32, ptr %i, align 4, !dbg !456
  %41 = load ptr, ptr %new.addr, align 8, !dbg !458
  %size30 = getelementptr inbounds %struct.hashtab, ptr %41, i32 0, i32 1, !dbg !459
  %42 = load i32, ptr %size30, align 8, !dbg !459
  %cmp31 = icmp ult i32 %40, %42, !dbg !460
  br i1 %cmp31, label %for.body33, label %for.end46, !dbg !461

for.body33:                                       ; preds = %for.cond29
  %43 = load ptr, ptr %new.addr, align 8, !dbg !462
  %htable34 = getelementptr inbounds %struct.hashtab, ptr %43, i32 0, i32 0, !dbg !465
  %44 = load ptr, ptr %htable34, align 8, !dbg !465
  %45 = load i32, ptr %i, align 4, !dbg !466
  %idxprom35 = zext i32 %45 to i64, !dbg !462
  %arrayidx36 = getelementptr ptr, ptr %44, i64 %idxprom35, !dbg !462
  %46 = load ptr, ptr %arrayidx36, align 8, !dbg !462
  store ptr %46, ptr %cur, align 8, !dbg !467
  br label %for.cond37, !dbg !468

for.cond37:                                       ; preds = %for.inc42, %for.body33
  %47 = load ptr, ptr %cur, align 8, !dbg !469
  %tobool38 = icmp ne ptr %47, null, !dbg !471
  br i1 %tobool38, label %for.body39, label %for.end43, !dbg !471

for.body39:                                       ; preds = %for.cond37
  %48 = load ptr, ptr %cur, align 8, !dbg !472
  %next40 = getelementptr inbounds %struct.hashtab_node, ptr %48, i32 0, i32 2, !dbg !474
  %49 = load ptr, ptr %next40, align 8, !dbg !474
  store ptr %49, ptr %tmp, align 8, !dbg !475
  %50 = load ptr, ptr %destroy.addr, align 8, !dbg !476
  %51 = load ptr, ptr %cur, align 8, !dbg !477
  %key = getelementptr inbounds %struct.hashtab_node, ptr %51, i32 0, i32 0, !dbg !478
  %52 = load ptr, ptr %key, align 8, !dbg !478
  %53 = load ptr, ptr %cur, align 8, !dbg !479
  %datum = getelementptr inbounds %struct.hashtab_node, ptr %53, i32 0, i32 1, !dbg !480
  %54 = load ptr, ptr %datum, align 8, !dbg !480
  %55 = load ptr, ptr %args.addr, align 8, !dbg !481
  %call41 = call i32 %50(ptr noundef %52, ptr noundef %54, ptr noundef %55) #18, !dbg !476
  %56 = load ptr, ptr @hashtab_node_cachep, align 8, !dbg !482
  %57 = load ptr, ptr %cur, align 8, !dbg !483
  call void @kmem_cache_free(ptr noundef %56, ptr noundef %57) #18, !dbg !484
  br label %for.inc42, !dbg !485

for.inc42:                                        ; preds = %for.body39
  %58 = load ptr, ptr %tmp, align 8, !dbg !486
  store ptr %58, ptr %cur, align 8, !dbg !487
  br label %for.cond37, !dbg !488, !llvm.loop !489

for.end43:                                        ; preds = %for.cond37
  br label %for.inc44, !dbg !491

for.inc44:                                        ; preds = %for.end43
  %59 = load i32, ptr %i, align 4, !dbg !492
  %inc45 = add i32 %59, 1, !dbg !492
  store i32 %inc45, ptr %i, align 4, !dbg !492
  br label %for.cond29, !dbg !493, !llvm.loop !494

for.end46:                                        ; preds = %for.cond29
  %60 = load ptr, ptr %new.addr, align 8, !dbg !496
  %htable47 = getelementptr inbounds %struct.hashtab, ptr %60, i32 0, i32 0, !dbg !497
  %61 = load ptr, ptr %htable47, align 8, !dbg !497
  call void @kfree(ptr noundef %61) #18, !dbg !498
  %62 = load ptr, ptr %new.addr, align 8, !dbg !499
  call void @llvm.memset.p0.i64(ptr align 8 %62, i8 0, i64 16, i1 false), !dbg !500
  store i32 -12, ptr %retval, align 4, !dbg !501
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !501

cleanup:                                          ; preds = %for.end46, %for.end28, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #17, !dbg !502
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !502
  call void @llvm.lifetime.end.p0(i64 8, ptr %tail) #17, !dbg !502
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #17, !dbg !502
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #17, !dbg !502
  %63 = load i32, ptr %retval, align 4, !dbg !502
  ret i32 %63, !dbg !502
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @hashtab_cache_init() #7 section ".init.text" align 16 !dbg !503 {
entry:
  %call = call ptr @kmem_cache_create(ptr noundef @.str, i32 noundef 24, i32 noundef 0, i32 noundef 262144, ptr noundef null) #18, !dbg !506
  store ptr %call, ptr @hashtab_node_cachep, align 8, !dbg !507
  ret void, !dbg !508
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !509 dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i32 @__ilog2_u32(i32 noundef %n) #9 align 16 !dbg !517 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !522, metadata !DIExpression()), !dbg !523
  %0 = load i32, ptr %n.addr, align 4, !dbg !524
  %call = call i32 @fls(i32 noundef %0) #18, !dbg !525
  %sub = sub i32 %call, 1, !dbg !526
  ret i32 %sub, !dbg !527
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i64 @__roundup_pow_of_two(i64 noundef %n) #10 align 16 !dbg !528 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !532, metadata !DIExpression()), !dbg !533
  %0 = load i64, ptr %n.addr, align 8, !dbg !534
  %sub = sub i64 %0, 1, !dbg !535
  %call = call i32 @fls_long(i64 noundef %sub) #18, !dbg !536
  %sh_prom = zext i32 %call to i64, !dbg !537
  %shl = shl i64 1, %sh_prom, !dbg !537
  ret i64 %shl, !dbg !538
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls(i32 noundef %x) #11 align 16 !dbg !539 {
entry:
  %x.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !544, metadata !DIExpression()), !dbg !546
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #17, !dbg !547
  call void @llvm.dbg.declare(metadata ptr %r, metadata !545, metadata !DIExpression()), !dbg !548
  %0 = load i32, ptr %x.addr, align 4, !dbg !549
  %1 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 -1) #21, !dbg !550, !srcloc !551
  store i32 %1, ptr %r, align 4, !dbg !550
  %2 = load i32, ptr %r, align 4, !dbg !552
  %add = add i32 %2, 1, !dbg !553
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #17, !dbg !554
  ret i32 %add, !dbg !555
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls_long(i64 noundef %l) #4 align 16 !dbg !556 {
entry:
  %l.addr = alloca i64, align 8
  store i64 %l, ptr %l.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !561, metadata !DIExpression()), !dbg !562
  %0 = load i64, ptr %l.addr, align 8, !dbg !563
  %call = call i32 @fls64(i64 noundef %0) #18, !dbg !564
  ret i32 %call, !dbg !565
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls64(i64 noundef %x) #11 align 16 !dbg !566 {
entry:
  %x.addr = alloca i64, align 8
  %bitpos = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !572, metadata !DIExpression()), !dbg !574
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitpos) #17, !dbg !575
  call void @llvm.dbg.declare(metadata ptr %bitpos, metadata !573, metadata !DIExpression()), !dbg !576
  store i32 -1, ptr %bitpos, align 4, !dbg !576
  %0 = load i32, ptr %bitpos, align 4, !dbg !577
  %1 = load i64, ptr %x.addr, align 8, !dbg !578
  %2 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %1, i32 %0) #21, !dbg !577, !srcloc !579
  store i32 %2, ptr %bitpos, align 4, !dbg !577
  %3 = load i32, ptr %bitpos, align 4, !dbg !580
  %add = add i32 %3, 1, !dbg !581
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitpos) #17, !dbg !582
  ret i32 %add, !dbg !583
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !584 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !586, metadata !DIExpression()), !dbg !590
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !587, metadata !DIExpression()), !dbg !591
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !588, metadata !DIExpression()), !dbg !592
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #17, !dbg !593
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !589, metadata !DIExpression()), !dbg !594
  %0 = load i64, ptr %n.addr, align 8, !dbg !595
  %1 = load i64, ptr %size.addr, align 8, !dbg !595
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !595
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !595
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !595
  store i64 %4, ptr %bytes, align 8, !dbg !595
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #18, !dbg !595
  %lnot = xor i1 %call, true, !dbg !595
  %lnot1 = xor i1 %lnot, true, !dbg !595
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !595
  %conv = sext i32 %lnot.ext to i64, !dbg !595
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !595
  %tobool = icmp ne i64 %expval, 0, !dbg !595
  br i1 %tobool, label %if.then, label %if.end, !dbg !597

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !598
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !598

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !599
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !601
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !602

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !603
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !604
  br i1 %8, label %if.then2, label %if.end4, !dbg !605

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !606
  %10 = load i32, ptr %flags.addr, align 4, !dbg !607
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #22, !dbg !608
  store ptr %call3, ptr %retval, align 8, !dbg !609
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !609

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !610
  %12 = load i32, ptr %flags.addr, align 4, !dbg !611
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #22, !dbg !612
  store ptr %call5, ptr %retval, align 8, !dbg !613
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !613

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #17, !dbg !614
  %13 = load ptr, ptr %retval, align 8, !dbg !614
  ret ptr %13, !dbg !614
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !615 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !622, metadata !DIExpression()), !dbg !623
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !624, !range !625, !noundef !626
  %tobool = trunc i8 %0 to i1, !dbg !624
  %lnot = xor i1 %tobool, true, !dbg !624
  %lnot1 = xor i1 %lnot, true, !dbg !624
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !624
  %conv = sext i32 %lnot.ext to i64, !dbg !624
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !624
  %tobool2 = icmp ne i64 %expval, 0, !dbg !624
  ret i1 %tobool2, !dbg !627
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #13 align 16 !dbg !628 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !632, metadata !DIExpression()), !dbg !637
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !633, metadata !DIExpression()), !dbg !638
  %0 = load i64, ptr %size.addr, align 8, !dbg !639
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !640
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !641

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !642
  %tobool = icmp ne i64 %2, 0, !dbg !642
  br i1 %tobool, label %if.then, label %if.end7, !dbg !643

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !644
  call void @llvm.dbg.declare(metadata ptr %index, metadata !634, metadata !DIExpression()), !dbg !645
  %3 = load i64, ptr %size.addr, align 8, !dbg !646
  %cmp = icmp ugt i64 %3, 8192, !dbg !648
  br i1 %cmp, label %if.then1, label %if.end, !dbg !649

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !650
  %5 = load i32, ptr %flags.addr, align 4, !dbg !651
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #22, !dbg !652
  store ptr %call, ptr %retval, align 8, !dbg !653
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !653

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !654
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !654
  store i32 %call2, ptr %index, align 4, !dbg !655
  %7 = load i32, ptr %flags.addr, align 4, !dbg !656
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !657
  %9 = ptrtoint ptr %8 to i64, !dbg !657
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !658
  %idxprom = zext i32 %call3 to i64, !dbg !659
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !659
  %10 = load i32, ptr %index, align 4, !dbg !660
  %idxprom4 = zext i32 %10 to i64, !dbg !659
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !659
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !659
  %12 = load i32, ptr %flags.addr, align 4, !dbg !661
  %13 = load i64, ptr %size.addr, align 8, !dbg !662
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #23, !dbg !663
  store ptr %call6, ptr %retval, align 8, !dbg !664
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !664

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !665
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !666
  %15 = load i32, ptr %flags.addr, align 4, !dbg !667
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #22, !dbg !668
  store ptr %call8, ptr %retval, align 8, !dbg !669
  br label %return, !dbg !669

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !670
  ret ptr %16, !dbg !670
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !671 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #14

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !672 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !673 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !677, metadata !DIExpression()), !dbg !679
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !678, metadata !DIExpression()), !dbg !680
  %0 = load i64, ptr %size.addr, align 8, !dbg !681
  %tobool = icmp ne i64 %0, 0, !dbg !681
  br i1 %tobool, label %if.end, label %if.then, !dbg !683

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !684
  br label %return, !dbg !684

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !685
  %cmp = icmp ule i64 %1, 8, !dbg !687
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !688

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !689
  br label %return, !dbg !689

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !690
  %cmp3 = icmp ugt i64 %2, 64, !dbg !692
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !693

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !694
  %cmp4 = icmp ule i64 %3, 96, !dbg !695
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !696

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !697
  br label %return, !dbg !697

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !698
  %cmp7 = icmp ugt i64 %4, 128, !dbg !700
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !701

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !702
  %cmp9 = icmp ule i64 %5, 192, !dbg !703
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !704

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !705
  br label %return, !dbg !705

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !706
  %cmp12 = icmp ule i64 %6, 8, !dbg !708
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !709

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !710
  br label %return, !dbg !710

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !711
  %cmp15 = icmp ule i64 %7, 16, !dbg !713
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !714

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !715
  br label %return, !dbg !715

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !716
  %cmp18 = icmp ule i64 %8, 32, !dbg !718
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !719

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !720
  br label %return, !dbg !720

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !721
  %cmp21 = icmp ule i64 %9, 64, !dbg !723
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !724

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !725
  br label %return, !dbg !725

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !726
  %cmp24 = icmp ule i64 %10, 128, !dbg !728
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !729

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !730
  br label %return, !dbg !730

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !731
  %cmp27 = icmp ule i64 %11, 256, !dbg !733
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !734

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !735
  br label %return, !dbg !735

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !736
  %cmp30 = icmp ule i64 %12, 512, !dbg !738
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !739

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !740
  br label %return, !dbg !740

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !741
  %cmp33 = icmp ule i64 %13, 1024, !dbg !743
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !744

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !745
  br label %return, !dbg !745

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !746
  %cmp36 = icmp ule i64 %14, 2048, !dbg !748
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !749

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !750
  br label %return, !dbg !750

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !751
  %cmp39 = icmp ule i64 %15, 4096, !dbg !753
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !754

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !755
  br label %return, !dbg !755

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !756
  %cmp42 = icmp ule i64 %16, 8192, !dbg !758
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !759

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !760
  br label %return, !dbg !760

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !761
  %cmp45 = icmp ule i64 %17, 16384, !dbg !763
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !764

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !765
  br label %return, !dbg !765

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !766
  %cmp48 = icmp ule i64 %18, 32768, !dbg !768
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !769

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !770
  br label %return, !dbg !770

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !771
  %cmp51 = icmp ule i64 %19, 65536, !dbg !773
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !774

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !775
  br label %return, !dbg !775

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !776
  %cmp54 = icmp ule i64 %20, 131072, !dbg !778
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !779

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !780
  br label %return, !dbg !780

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !781
  %cmp57 = icmp ule i64 %21, 262144, !dbg !783
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !784

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !785
  br label %return, !dbg !785

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !786
  %cmp60 = icmp ule i64 %22, 524288, !dbg !788
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !789

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !790
  br label %return, !dbg !790

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !791
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !793
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !794

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !795
  br label %return, !dbg !795

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !796
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !798
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !799

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !800
  br label %return, !dbg !800

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !801, !range !625, !noundef !626
  %tobool69 = trunc i8 %25 to i1, !dbg !801
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !803

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !804

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #24, !dbg !805, !srcloc !808
  unreachable, !dbg !805

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !809

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !810

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !811

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !813

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !811

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #17, !dbg !815, !srcloc !817
  br label %do.end75, !dbg !815

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !811

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !818
  br label %return, !dbg !818

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !819
  ret i32 %26, !dbg !819
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !820 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !823 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !827, metadata !DIExpression()), !dbg !829
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !828, metadata !DIExpression()), !dbg !830
  %0 = load i32, ptr %flags.addr, align 4, !dbg !831
  %and = and i32 %0, 17, !dbg !831
  %cmp = icmp eq i32 %and, 0, !dbg !831
  %lnot = xor i1 %cmp, true, !dbg !831
  %lnot1 = xor i1 %lnot, true, !dbg !831
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !831
  %conv = sext i32 %lnot.ext to i64, !dbg !831
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !831
  %tobool = icmp ne i64 %expval, 0, !dbg !831
  br i1 %tobool, label %if.then, label %if.end, !dbg !833

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !834
  br label %return, !dbg !834

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !835
  %and2 = and i32 %1, 1, !dbg !837
  %tobool3 = icmp ne i32 %and2, 0, !dbg !837
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !838

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !839
  br label %return, !dbg !839

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !840
  br label %return, !dbg !840

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !842
  ret i32 %2, !dbg !842
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !843 dso_local void @__compiletime_assert_117() #16

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !844 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { noredzone allocsize(0,1) }
attributes #20 = { noredzone nounwind willreturn memory(none) }
attributes #21 = { nounwind memory(read) }
attributes #22 = { noredzone allocsize(0) }
attributes #23 = { noredzone allocsize(2) }
attributes #24 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hashtab_node_cachep", scope: !2, file: !3, line: 13, type: !39, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF security/selinux/ss/.hashtab.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -I ./security/selinux -I ./security/selinux/include -D KBUILD_MODFILE=\22security/selinux/selinux\22 -D KBUILD_BASENAME=\22hashtab\22 -D KBUILD_MODNAME=\22selinux\22 -D __KBUILD_MODNAME=kmod_selinux -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o security/selinux/ss/hashtab.ll security/selinux/ss/hashtab.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !27, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "security/selinux/ss/hashtab.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "151f9c09ce6c5259f654a415c1c1b0b1")
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
!21 = !{!22, !24, !25, !26}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !23, line: 154, baseType: !7)
!23 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !23, line: 155, baseType: !7)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!27 = !{!28, !0, !34}
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !3, line: 191, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 104, elements: !32)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !{!33}
!33 = !DISubrange(count: 13)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 168, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 21)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !41, line: 11, flags: DIFlagFwdDecl)
!41 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!42 = !{i32 7, !"Dwarf Version", i32 5}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 8, !"cf-protection-branch", i32 1}
!46 = !{i32 4, !"function_return_thunk_extern", i32 1}
!47 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!48 = !{i32 1, !"Code Model", i32 2}
!49 = !{i32 1, !"override-stack-alignment", i32 8}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = distinct !DISubprogram(name: "hashtab_init", scope: !3, file: !3, line: 32, type: !52, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !73)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !55, !68}
!54 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hashtab", file: !57, line: 32, size: 128, elements: !58)
!57 = !DIFile(filename: "security/selinux/ss/hashtab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "93462b8c7243c7cf649d075a1a12e63d")
!58 = !{!59, !67, !72}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "htable", scope: !56, file: !57, line: 33, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hashtab_node", file: !57, line: 26, size: 192, elements: !63)
!63 = !{!64, !65, !66}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !62, file: !57, line: 27, baseType: !25, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !62, file: !57, line: 28, baseType: !25, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !62, file: !57, line: 29, baseType: !61, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !56, file: !57, line: 34, baseType: !68, size: 32, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !69, line: 21, baseType: !70)
!69 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !71, line: 27, baseType: !7)
!71 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!72 = !DIDerivedType(tag: DW_TAG_member, name: "nel", scope: !56, file: !57, line: 35, baseType: !68, size: 32, offset: 96)
!73 = !{!74, !75, !76}
!74 = !DILocalVariable(name: "h", arg: 1, scope: !51, file: !3, line: 32, type: !55)
!75 = !DILocalVariable(name: "nel_hint", arg: 2, scope: !51, file: !3, line: 32, type: !68)
!76 = !DILocalVariable(name: "size", scope: !51, file: !3, line: 34, type: !68)
!77 = !DILocation(line: 32, column: 34, scope: !51)
!78 = !DILocation(line: 32, column: 41, scope: !51)
!79 = !DILocation(line: 34, column: 2, scope: !51)
!80 = !DILocation(line: 34, column: 6, scope: !51)
!81 = !DILocation(line: 34, column: 34, scope: !51)
!82 = !DILocation(line: 34, column: 13, scope: !51)
!83 = !DILocation(line: 37, column: 2, scope: !51)
!84 = !DILocation(line: 37, column: 5, scope: !51)
!85 = !DILocation(line: 37, column: 9, scope: !51)
!86 = !DILocation(line: 38, column: 2, scope: !51)
!87 = !DILocation(line: 38, column: 5, scope: !51)
!88 = !DILocation(line: 38, column: 10, scope: !51)
!89 = !DILocation(line: 39, column: 2, scope: !51)
!90 = !DILocation(line: 39, column: 5, scope: !51)
!91 = !DILocation(line: 39, column: 12, scope: !51)
!92 = !DILocation(line: 41, column: 6, scope: !93)
!93 = distinct !DILexicalBlock(scope: !51, file: !3, line: 41, column: 6)
!94 = !DILocation(line: 41, column: 6, scope: !51)
!95 = !DILocation(line: 42, column: 23, scope: !96)
!96 = distinct !DILexicalBlock(scope: !93, file: !3, line: 41, column: 12)
!97 = !DILocation(line: 42, column: 15, scope: !96)
!98 = !DILocation(line: 42, column: 3, scope: !96)
!99 = !DILocation(line: 42, column: 6, scope: !96)
!100 = !DILocation(line: 42, column: 13, scope: !96)
!101 = !DILocation(line: 43, column: 8, scope: !102)
!102 = distinct !DILexicalBlock(scope: !96, file: !3, line: 43, column: 7)
!103 = !DILocation(line: 43, column: 11, scope: !102)
!104 = !DILocation(line: 43, column: 7, scope: !96)
!105 = !DILocation(line: 44, column: 4, scope: !102)
!106 = !DILocation(line: 45, column: 13, scope: !96)
!107 = !DILocation(line: 45, column: 3, scope: !96)
!108 = !DILocation(line: 45, column: 6, scope: !96)
!109 = !DILocation(line: 45, column: 11, scope: !96)
!110 = !DILocation(line: 46, column: 2, scope: !96)
!111 = !DILocation(line: 47, column: 2, scope: !51)
!112 = !DILocation(line: 48, column: 1, scope: !51)
!113 = distinct !DISubprogram(name: "hashtab_compute_size", scope: !3, file: !3, line: 27, type: !114, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !116)
!114 = !DISubroutineType(types: !115)
!115 = !{!68, !68}
!116 = !{!117}
!117 = !DILocalVariable(name: "nel", arg: 1, scope: !113, file: !3, line: 27, type: !68)
!118 = !DILocation(line: 27, column: 37, scope: !113)
!119 = !DILocation(line: 29, column: 9, scope: !113)
!120 = !DILocation(line: 29, column: 13, scope: !113)
!121 = !DILocation(line: 29, column: 24, scope: !113)
!122 = !DILocation(line: 29, column: 2, scope: !113)
!123 = distinct !DISubprogram(name: "kcalloc", scope: !12, file: !12, line: 666, type: !124, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !130)
!124 = !DISubroutineType(types: !125)
!125 = !{!25, !126, !126, !22}
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 61, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !128, line: 72, baseType: !129)
!128 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !128, line: 16, baseType: !26)
!130 = !{!131, !132, !133}
!131 = !DILocalVariable(name: "n", arg: 1, scope: !123, file: !12, line: 666, type: !126)
!132 = !DILocalVariable(name: "size", arg: 2, scope: !123, file: !12, line: 666, type: !126)
!133 = !DILocalVariable(name: "flags", arg: 3, scope: !123, file: !12, line: 666, type: !22)
!134 = !DILocation(line: 666, column: 55, scope: !123)
!135 = !DILocation(line: 666, column: 65, scope: !123)
!136 = !DILocation(line: 666, column: 77, scope: !123)
!137 = !DILocation(line: 668, column: 23, scope: !123)
!138 = !DILocation(line: 668, column: 26, scope: !123)
!139 = !DILocation(line: 668, column: 32, scope: !123)
!140 = !DILocation(line: 668, column: 38, scope: !123)
!141 = !DILocation(line: 668, column: 9, scope: !123)
!142 = !DILocation(line: 668, column: 2, scope: !123)
!143 = distinct !DISubprogram(name: "__hashtab_insert", scope: !3, file: !3, line: 50, type: !144, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !146)
!144 = !DISubroutineType(types: !145)
!145 = !{!54, !55, !60, !25, !25}
!146 = !{!147, !148, !149, !150, !151}
!147 = !DILocalVariable(name: "h", arg: 1, scope: !143, file: !3, line: 50, type: !55)
!148 = !DILocalVariable(name: "dst", arg: 2, scope: !143, file: !3, line: 50, type: !60)
!149 = !DILocalVariable(name: "key", arg: 3, scope: !143, file: !3, line: 51, type: !25)
!150 = !DILocalVariable(name: "datum", arg: 4, scope: !143, file: !3, line: 51, type: !25)
!151 = !DILocalVariable(name: "newnode", scope: !143, file: !3, line: 53, type: !61)
!152 = !DILocation(line: 50, column: 38, scope: !143)
!153 = !DILocation(line: 50, column: 63, scope: !143)
!154 = !DILocation(line: 51, column: 14, scope: !143)
!155 = !DILocation(line: 51, column: 25, scope: !143)
!156 = !DILocation(line: 53, column: 2, scope: !143)
!157 = !DILocation(line: 53, column: 23, scope: !143)
!158 = !DILocation(line: 55, column: 30, scope: !143)
!159 = !DILocation(line: 55, column: 12, scope: !143)
!160 = !DILocation(line: 55, column: 10, scope: !143)
!161 = !DILocation(line: 56, column: 7, scope: !162)
!162 = distinct !DILexicalBlock(scope: !143, file: !3, line: 56, column: 6)
!163 = !DILocation(line: 56, column: 6, scope: !143)
!164 = !DILocation(line: 57, column: 3, scope: !162)
!165 = !DILocation(line: 58, column: 17, scope: !143)
!166 = !DILocation(line: 58, column: 2, scope: !143)
!167 = !DILocation(line: 58, column: 11, scope: !143)
!168 = !DILocation(line: 58, column: 15, scope: !143)
!169 = !DILocation(line: 59, column: 19, scope: !143)
!170 = !DILocation(line: 59, column: 2, scope: !143)
!171 = !DILocation(line: 59, column: 11, scope: !143)
!172 = !DILocation(line: 59, column: 17, scope: !143)
!173 = !DILocation(line: 60, column: 19, scope: !143)
!174 = !DILocation(line: 60, column: 18, scope: !143)
!175 = !DILocation(line: 60, column: 2, scope: !143)
!176 = !DILocation(line: 60, column: 11, scope: !143)
!177 = !DILocation(line: 60, column: 16, scope: !143)
!178 = !DILocation(line: 61, column: 9, scope: !143)
!179 = !DILocation(line: 61, column: 3, scope: !143)
!180 = !DILocation(line: 61, column: 7, scope: !143)
!181 = !DILocation(line: 63, column: 2, scope: !143)
!182 = !DILocation(line: 63, column: 5, scope: !143)
!183 = !DILocation(line: 63, column: 8, scope: !143)
!184 = !DILocation(line: 64, column: 2, scope: !143)
!185 = !DILocation(line: 65, column: 1, scope: !143)
!186 = distinct !DISubprogram(name: "kmem_cache_zalloc", scope: !12, file: !12, line: 709, type: !187, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !189)
!187 = !DISubroutineType(types: !188)
!188 = !{!25, !39, !22}
!189 = !{!190, !191}
!190 = !DILocalVariable(name: "k", arg: 1, scope: !186, file: !12, line: 709, type: !39)
!191 = !DILocalVariable(name: "flags", arg: 2, scope: !186, file: !12, line: 709, type: !22)
!192 = !DILocation(line: 709, column: 58, scope: !186)
!193 = !DILocation(line: 709, column: 67, scope: !186)
!194 = !DILocation(line: 711, column: 26, scope: !186)
!195 = !DILocation(line: 711, column: 29, scope: !186)
!196 = !DILocation(line: 711, column: 35, scope: !186)
!197 = !DILocation(line: 711, column: 9, scope: !186)
!198 = !DILocation(line: 711, column: 2, scope: !186)
!199 = distinct !DISubprogram(name: "hashtab_destroy", scope: !3, file: !3, line: 67, type: !200, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !202)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !55}
!202 = !{!203, !204, !205, !206}
!203 = !DILocalVariable(name: "h", arg: 1, scope: !199, file: !3, line: 67, type: !55)
!204 = !DILocalVariable(name: "i", scope: !199, file: !3, line: 69, type: !68)
!205 = !DILocalVariable(name: "cur", scope: !199, file: !3, line: 70, type: !61)
!206 = !DILocalVariable(name: "temp", scope: !199, file: !3, line: 70, type: !61)
!207 = !DILocation(line: 67, column: 38, scope: !199)
!208 = !DILocation(line: 69, column: 2, scope: !199)
!209 = !DILocation(line: 69, column: 6, scope: !199)
!210 = !DILocation(line: 70, column: 2, scope: !199)
!211 = !DILocation(line: 70, column: 23, scope: !199)
!212 = !DILocation(line: 70, column: 29, scope: !199)
!213 = !DILocation(line: 72, column: 9, scope: !214)
!214 = distinct !DILexicalBlock(scope: !199, file: !3, line: 72, column: 2)
!215 = !DILocation(line: 72, column: 7, scope: !214)
!216 = !DILocation(line: 72, column: 14, scope: !217)
!217 = distinct !DILexicalBlock(scope: !214, file: !3, line: 72, column: 2)
!218 = !DILocation(line: 72, column: 18, scope: !217)
!219 = !DILocation(line: 72, column: 21, scope: !217)
!220 = !DILocation(line: 72, column: 16, scope: !217)
!221 = !DILocation(line: 72, column: 2, scope: !214)
!222 = !DILocation(line: 73, column: 9, scope: !223)
!223 = distinct !DILexicalBlock(scope: !217, file: !3, line: 72, column: 32)
!224 = !DILocation(line: 73, column: 12, scope: !223)
!225 = !DILocation(line: 73, column: 19, scope: !223)
!226 = !DILocation(line: 73, column: 7, scope: !223)
!227 = !DILocation(line: 74, column: 3, scope: !223)
!228 = !DILocation(line: 74, column: 10, scope: !223)
!229 = !DILocation(line: 75, column: 11, scope: !230)
!230 = distinct !DILexicalBlock(scope: !223, file: !3, line: 74, column: 15)
!231 = !DILocation(line: 75, column: 9, scope: !230)
!232 = !DILocation(line: 76, column: 10, scope: !230)
!233 = !DILocation(line: 76, column: 15, scope: !230)
!234 = !DILocation(line: 76, column: 8, scope: !230)
!235 = !DILocation(line: 77, column: 20, scope: !230)
!236 = !DILocation(line: 77, column: 41, scope: !230)
!237 = !DILocation(line: 77, column: 4, scope: !230)
!238 = distinct !{!238, !227, !239, !240, !241}
!239 = !DILocation(line: 78, column: 3, scope: !223)
!240 = !{!"llvm.loop.mustprogress"}
!241 = !{!"llvm.loop.unroll.disable"}
!242 = !DILocation(line: 79, column: 3, scope: !223)
!243 = !DILocation(line: 79, column: 6, scope: !223)
!244 = !DILocation(line: 79, column: 13, scope: !223)
!245 = !DILocation(line: 79, column: 16, scope: !223)
!246 = !DILocation(line: 80, column: 2, scope: !223)
!247 = !DILocation(line: 72, column: 28, scope: !217)
!248 = !DILocation(line: 72, column: 2, scope: !217)
!249 = distinct !{!249, !221, !250, !240, !241}
!250 = !DILocation(line: 80, column: 2, scope: !214)
!251 = !DILocation(line: 82, column: 8, scope: !199)
!252 = !DILocation(line: 82, column: 11, scope: !199)
!253 = !DILocation(line: 82, column: 2, scope: !199)
!254 = !DILocation(line: 83, column: 2, scope: !199)
!255 = !DILocation(line: 83, column: 5, scope: !199)
!256 = !DILocation(line: 83, column: 12, scope: !199)
!257 = !DILocation(line: 84, column: 1, scope: !199)
!258 = !DISubprogram(name: "kmem_cache_free", scope: !12, file: !12, line: 503, type: !259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !39, !25}
!261 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !264}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!266 = distinct !DISubprogram(name: "hashtab_map", scope: !3, file: !3, line: 86, type: !267, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !272)
!267 = !DISubroutineType(types: !268)
!268 = !{!54, !55, !269, !25}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!54, !25, !25, !25}
!272 = !{!273, !274, !275, !276, !277, !278}
!273 = !DILocalVariable(name: "h", arg: 1, scope: !266, file: !3, line: 86, type: !55)
!274 = !DILocalVariable(name: "apply", arg: 2, scope: !266, file: !3, line: 87, type: !269)
!275 = !DILocalVariable(name: "args", arg: 3, scope: !266, file: !3, line: 88, type: !25)
!276 = !DILocalVariable(name: "i", scope: !266, file: !3, line: 90, type: !68)
!277 = !DILocalVariable(name: "ret", scope: !266, file: !3, line: 91, type: !54)
!278 = !DILocalVariable(name: "cur", scope: !266, file: !3, line: 92, type: !61)
!279 = !DILocation(line: 86, column: 33, scope: !266)
!280 = !DILocation(line: 87, column: 9, scope: !266)
!281 = !DILocation(line: 88, column: 9, scope: !266)
!282 = !DILocation(line: 90, column: 2, scope: !266)
!283 = !DILocation(line: 90, column: 6, scope: !266)
!284 = !DILocation(line: 91, column: 2, scope: !266)
!285 = !DILocation(line: 91, column: 6, scope: !266)
!286 = !DILocation(line: 92, column: 2, scope: !266)
!287 = !DILocation(line: 92, column: 23, scope: !266)
!288 = !DILocation(line: 94, column: 9, scope: !289)
!289 = distinct !DILexicalBlock(scope: !266, file: !3, line: 94, column: 2)
!290 = !DILocation(line: 94, column: 7, scope: !289)
!291 = !DILocation(line: 94, column: 14, scope: !292)
!292 = distinct !DILexicalBlock(scope: !289, file: !3, line: 94, column: 2)
!293 = !DILocation(line: 94, column: 18, scope: !292)
!294 = !DILocation(line: 94, column: 21, scope: !292)
!295 = !DILocation(line: 94, column: 16, scope: !292)
!296 = !DILocation(line: 94, column: 2, scope: !289)
!297 = !DILocation(line: 95, column: 9, scope: !298)
!298 = distinct !DILexicalBlock(scope: !292, file: !3, line: 94, column: 32)
!299 = !DILocation(line: 95, column: 12, scope: !298)
!300 = !DILocation(line: 95, column: 19, scope: !298)
!301 = !DILocation(line: 95, column: 7, scope: !298)
!302 = !DILocation(line: 96, column: 3, scope: !298)
!303 = !DILocation(line: 96, column: 10, scope: !298)
!304 = !DILocation(line: 97, column: 10, scope: !305)
!305 = distinct !DILexicalBlock(scope: !298, file: !3, line: 96, column: 15)
!306 = !DILocation(line: 97, column: 16, scope: !305)
!307 = !DILocation(line: 97, column: 21, scope: !305)
!308 = !DILocation(line: 97, column: 26, scope: !305)
!309 = !DILocation(line: 97, column: 31, scope: !305)
!310 = !DILocation(line: 97, column: 38, scope: !305)
!311 = !DILocation(line: 97, column: 8, scope: !305)
!312 = !DILocation(line: 98, column: 8, scope: !313)
!313 = distinct !DILexicalBlock(scope: !305, file: !3, line: 98, column: 8)
!314 = !DILocation(line: 98, column: 8, scope: !305)
!315 = !DILocation(line: 99, column: 12, scope: !313)
!316 = !DILocation(line: 99, column: 5, scope: !313)
!317 = !DILocation(line: 100, column: 10, scope: !305)
!318 = !DILocation(line: 100, column: 15, scope: !305)
!319 = !DILocation(line: 100, column: 8, scope: !305)
!320 = distinct !{!320, !302, !321, !240, !241}
!321 = !DILocation(line: 101, column: 3, scope: !298)
!322 = !DILocation(line: 102, column: 2, scope: !298)
!323 = !DILocation(line: 94, column: 28, scope: !292)
!324 = !DILocation(line: 94, column: 2, scope: !292)
!325 = distinct !{!325, !296, !326, !240, !241}
!326 = !DILocation(line: 102, column: 2, scope: !289)
!327 = !DILocation(line: 103, column: 2, scope: !266)
!328 = !DILocation(line: 104, column: 1, scope: !266)
!329 = distinct !DISubprogram(name: "hashtab_duplicate", scope: !3, file: !3, line: 134, type: !330, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !335)
!330 = !DISubroutineType(types: !331)
!331 = !{!54, !55, !55, !332, !269, !25}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!54, !61, !61, !25}
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346}
!336 = !DILocalVariable(name: "new", arg: 1, scope: !329, file: !3, line: 134, type: !55)
!337 = !DILocalVariable(name: "orig", arg: 2, scope: !329, file: !3, line: 134, type: !55)
!338 = !DILocalVariable(name: "copy", arg: 3, scope: !329, file: !3, line: 135, type: !332)
!339 = !DILocalVariable(name: "destroy", arg: 4, scope: !329, file: !3, line: 137, type: !269)
!340 = !DILocalVariable(name: "args", arg: 5, scope: !329, file: !3, line: 138, type: !25)
!341 = !DILocalVariable(name: "cur", scope: !329, file: !3, line: 140, type: !61)
!342 = !DILocalVariable(name: "tmp", scope: !329, file: !3, line: 140, type: !61)
!343 = !DILocalVariable(name: "tail", scope: !329, file: !3, line: 140, type: !61)
!344 = !DILocalVariable(name: "i", scope: !329, file: !3, line: 141, type: !68)
!345 = !DILocalVariable(name: "rc", scope: !329, file: !3, line: 142, type: !54)
!346 = !DILabel(scope: !329, name: "error", file: !3, line: 176)
!347 = !DILocation(line: 134, column: 39, scope: !329)
!348 = !DILocation(line: 134, column: 60, scope: !329)
!349 = !DILocation(line: 135, column: 9, scope: !329)
!350 = !DILocation(line: 137, column: 9, scope: !329)
!351 = !DILocation(line: 138, column: 9, scope: !329)
!352 = !DILocation(line: 140, column: 2, scope: !329)
!353 = !DILocation(line: 140, column: 23, scope: !329)
!354 = !DILocation(line: 140, column: 29, scope: !329)
!355 = !DILocation(line: 140, column: 35, scope: !329)
!356 = !DILocation(line: 141, column: 2, scope: !329)
!357 = !DILocation(line: 141, column: 6, scope: !329)
!358 = !DILocation(line: 142, column: 2, scope: !329)
!359 = !DILocation(line: 142, column: 6, scope: !329)
!360 = !DILocation(line: 144, column: 9, scope: !329)
!361 = !DILocation(line: 144, column: 2, scope: !329)
!362 = !DILocation(line: 146, column: 24, scope: !329)
!363 = !DILocation(line: 146, column: 30, scope: !329)
!364 = !DILocation(line: 146, column: 16, scope: !329)
!365 = !DILocation(line: 146, column: 2, scope: !329)
!366 = !DILocation(line: 146, column: 7, scope: !329)
!367 = !DILocation(line: 146, column: 14, scope: !329)
!368 = !DILocation(line: 147, column: 7, scope: !369)
!369 = distinct !DILexicalBlock(scope: !329, file: !3, line: 147, column: 6)
!370 = !DILocation(line: 147, column: 12, scope: !369)
!371 = !DILocation(line: 147, column: 6, scope: !329)
!372 = !DILocation(line: 148, column: 3, scope: !369)
!373 = !DILocation(line: 150, column: 14, scope: !329)
!374 = !DILocation(line: 150, column: 20, scope: !329)
!375 = !DILocation(line: 150, column: 2, scope: !329)
!376 = !DILocation(line: 150, column: 7, scope: !329)
!377 = !DILocation(line: 150, column: 12, scope: !329)
!378 = !DILocation(line: 152, column: 9, scope: !379)
!379 = distinct !DILexicalBlock(scope: !329, file: !3, line: 152, column: 2)
!380 = !DILocation(line: 152, column: 7, scope: !379)
!381 = !DILocation(line: 152, column: 14, scope: !382)
!382 = distinct !DILexicalBlock(scope: !379, file: !3, line: 152, column: 2)
!383 = !DILocation(line: 152, column: 18, scope: !382)
!384 = !DILocation(line: 152, column: 24, scope: !382)
!385 = !DILocation(line: 152, column: 16, scope: !382)
!386 = !DILocation(line: 152, column: 2, scope: !379)
!387 = !DILocation(line: 153, column: 8, scope: !388)
!388 = distinct !DILexicalBlock(scope: !382, file: !3, line: 152, column: 35)
!389 = !DILocation(line: 154, column: 14, scope: !390)
!390 = distinct !DILexicalBlock(scope: !388, file: !3, line: 154, column: 3)
!391 = !DILocation(line: 154, column: 20, scope: !390)
!392 = !DILocation(line: 154, column: 27, scope: !390)
!393 = !DILocation(line: 154, column: 12, scope: !390)
!394 = !DILocation(line: 154, column: 8, scope: !390)
!395 = !DILocation(line: 154, column: 31, scope: !396)
!396 = distinct !DILexicalBlock(scope: !390, file: !3, line: 154, column: 3)
!397 = !DILocation(line: 154, column: 3, scope: !390)
!398 = !DILocation(line: 155, column: 28, scope: !399)
!399 = distinct !DILexicalBlock(scope: !396, file: !3, line: 154, column: 53)
!400 = !DILocation(line: 155, column: 10, scope: !399)
!401 = !DILocation(line: 155, column: 8, scope: !399)
!402 = !DILocation(line: 157, column: 9, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !3, line: 157, column: 8)
!404 = !DILocation(line: 157, column: 8, scope: !399)
!405 = !DILocation(line: 158, column: 5, scope: !403)
!406 = !DILocation(line: 159, column: 9, scope: !399)
!407 = !DILocation(line: 159, column: 14, scope: !399)
!408 = !DILocation(line: 159, column: 19, scope: !399)
!409 = !DILocation(line: 159, column: 24, scope: !399)
!410 = !DILocation(line: 159, column: 7, scope: !399)
!411 = !DILocation(line: 160, column: 8, scope: !412)
!412 = distinct !DILexicalBlock(scope: !399, file: !3, line: 160, column: 8)
!413 = !DILocation(line: 160, column: 8, scope: !399)
!414 = !DILocation(line: 161, column: 21, scope: !415)
!415 = distinct !DILexicalBlock(scope: !412, file: !3, line: 160, column: 12)
!416 = !DILocation(line: 161, column: 42, scope: !415)
!417 = !DILocation(line: 161, column: 5, scope: !415)
!418 = !DILocation(line: 162, column: 5, scope: !415)
!419 = !DILocation(line: 164, column: 4, scope: !399)
!420 = !DILocation(line: 164, column: 9, scope: !399)
!421 = !DILocation(line: 164, column: 14, scope: !399)
!422 = !DILocation(line: 165, column: 9, scope: !423)
!423 = distinct !DILexicalBlock(scope: !399, file: !3, line: 165, column: 8)
!424 = !DILocation(line: 165, column: 8, scope: !399)
!425 = !DILocation(line: 166, column: 22, scope: !423)
!426 = !DILocation(line: 166, column: 5, scope: !423)
!427 = !DILocation(line: 166, column: 10, scope: !423)
!428 = !DILocation(line: 166, column: 17, scope: !423)
!429 = !DILocation(line: 166, column: 20, scope: !423)
!430 = !DILocation(line: 168, column: 18, scope: !423)
!431 = !DILocation(line: 168, column: 5, scope: !423)
!432 = !DILocation(line: 168, column: 11, scope: !423)
!433 = !DILocation(line: 168, column: 16, scope: !423)
!434 = !DILocation(line: 169, column: 11, scope: !399)
!435 = !DILocation(line: 169, column: 9, scope: !399)
!436 = !DILocation(line: 170, column: 4, scope: !399)
!437 = !DILocation(line: 170, column: 9, scope: !399)
!438 = !DILocation(line: 170, column: 12, scope: !399)
!439 = !DILocation(line: 171, column: 3, scope: !399)
!440 = !DILocation(line: 154, column: 42, scope: !396)
!441 = !DILocation(line: 154, column: 47, scope: !396)
!442 = !DILocation(line: 154, column: 40, scope: !396)
!443 = !DILocation(line: 154, column: 3, scope: !396)
!444 = distinct !{!444, !397, !445, !240, !241}
!445 = !DILocation(line: 171, column: 3, scope: !390)
!446 = !DILocation(line: 172, column: 2, scope: !388)
!447 = !DILocation(line: 152, column: 31, scope: !382)
!448 = !DILocation(line: 152, column: 2, scope: !382)
!449 = distinct !{!449, !386, !450, !240, !241}
!450 = !DILocation(line: 172, column: 2, scope: !379)
!451 = !DILocation(line: 174, column: 2, scope: !329)
!452 = !DILocation(line: 176, column: 2, scope: !329)
!453 = !DILocation(line: 177, column: 9, scope: !454)
!454 = distinct !DILexicalBlock(scope: !329, file: !3, line: 177, column: 2)
!455 = !DILocation(line: 177, column: 7, scope: !454)
!456 = !DILocation(line: 177, column: 14, scope: !457)
!457 = distinct !DILexicalBlock(scope: !454, file: !3, line: 177, column: 2)
!458 = !DILocation(line: 177, column: 18, scope: !457)
!459 = !DILocation(line: 177, column: 23, scope: !457)
!460 = !DILocation(line: 177, column: 16, scope: !457)
!461 = !DILocation(line: 177, column: 2, scope: !454)
!462 = !DILocation(line: 178, column: 14, scope: !463)
!463 = distinct !DILexicalBlock(scope: !464, file: !3, line: 178, column: 3)
!464 = distinct !DILexicalBlock(scope: !457, file: !3, line: 177, column: 34)
!465 = !DILocation(line: 178, column: 19, scope: !463)
!466 = !DILocation(line: 178, column: 26, scope: !463)
!467 = !DILocation(line: 178, column: 12, scope: !463)
!468 = !DILocation(line: 178, column: 8, scope: !463)
!469 = !DILocation(line: 178, column: 30, scope: !470)
!470 = distinct !DILexicalBlock(scope: !463, file: !3, line: 178, column: 3)
!471 = !DILocation(line: 178, column: 3, scope: !463)
!472 = !DILocation(line: 179, column: 10, scope: !473)
!473 = distinct !DILexicalBlock(scope: !470, file: !3, line: 178, column: 46)
!474 = !DILocation(line: 179, column: 15, scope: !473)
!475 = !DILocation(line: 179, column: 8, scope: !473)
!476 = !DILocation(line: 180, column: 4, scope: !473)
!477 = !DILocation(line: 180, column: 12, scope: !473)
!478 = !DILocation(line: 180, column: 17, scope: !473)
!479 = !DILocation(line: 180, column: 22, scope: !473)
!480 = !DILocation(line: 180, column: 27, scope: !473)
!481 = !DILocation(line: 180, column: 34, scope: !473)
!482 = !DILocation(line: 181, column: 20, scope: !473)
!483 = !DILocation(line: 181, column: 41, scope: !473)
!484 = !DILocation(line: 181, column: 4, scope: !473)
!485 = !DILocation(line: 182, column: 3, scope: !473)
!486 = !DILocation(line: 178, column: 41, scope: !470)
!487 = !DILocation(line: 178, column: 39, scope: !470)
!488 = !DILocation(line: 178, column: 3, scope: !470)
!489 = distinct !{!489, !471, !490, !240, !241}
!490 = !DILocation(line: 182, column: 3, scope: !463)
!491 = !DILocation(line: 183, column: 2, scope: !464)
!492 = !DILocation(line: 177, column: 30, scope: !457)
!493 = !DILocation(line: 177, column: 2, scope: !457)
!494 = distinct !{!494, !461, !495, !240, !241}
!495 = !DILocation(line: 183, column: 2, scope: !454)
!496 = !DILocation(line: 184, column: 8, scope: !329)
!497 = !DILocation(line: 184, column: 13, scope: !329)
!498 = !DILocation(line: 184, column: 2, scope: !329)
!499 = !DILocation(line: 185, column: 9, scope: !329)
!500 = !DILocation(line: 185, column: 2, scope: !329)
!501 = !DILocation(line: 186, column: 2, scope: !329)
!502 = !DILocation(line: 187, column: 1, scope: !329)
!503 = distinct !DISubprogram(name: "hashtab_cache_init", scope: !3, file: !3, line: 189, type: !504, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!504 = !DISubroutineType(types: !505)
!505 = !{null}
!506 = !DILocation(line: 191, column: 25, scope: !503)
!507 = !DILocation(line: 191, column: 23, scope: !503)
!508 = !DILocation(line: 194, column: 1, scope: !503)
!509 = !DISubprogram(name: "kmem_cache_create", scope: !12, file: !12, line: 189, type: !510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!510 = !DISubroutineType(types: !511)
!511 = !{!39, !512, !7, !7, !24, !514}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !25}
!517 = distinct !DISubprogram(name: "__ilog2_u32", scope: !518, file: !518, line: 22, type: !519, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !521)
!518 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!519 = !DISubroutineType(types: !520)
!520 = !{!54, !68}
!521 = !{!522}
!522 = !DILocalVariable(name: "n", arg: 1, scope: !517, file: !518, line: 22, type: !68)
!523 = !DILocation(line: 22, column: 21, scope: !517)
!524 = !DILocation(line: 24, column: 13, scope: !517)
!525 = !DILocation(line: 24, column: 9, scope: !517)
!526 = !DILocation(line: 24, column: 16, scope: !517)
!527 = !DILocation(line: 24, column: 2, scope: !517)
!528 = distinct !DISubprogram(name: "__roundup_pow_of_two", scope: !518, file: !518, line: 55, type: !529, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !531)
!529 = !DISubroutineType(types: !530)
!530 = !{!26, !26}
!531 = !{!532}
!532 = !DILocalVariable(name: "n", arg: 1, scope: !528, file: !518, line: 55, type: !26)
!533 = !DILocation(line: 55, column: 50, scope: !528)
!534 = !DILocation(line: 57, column: 25, scope: !528)
!535 = !DILocation(line: 57, column: 27, scope: !528)
!536 = !DILocation(line: 57, column: 16, scope: !528)
!537 = !DILocation(line: 57, column: 13, scope: !528)
!538 = !DILocation(line: 57, column: 2, scope: !528)
!539 = distinct !DISubprogram(name: "fls", scope: !540, file: !540, line: 359, type: !541, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !543)
!540 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!541 = !DISubroutineType(types: !542)
!542 = !{!54, !7}
!543 = !{!544, !545}
!544 = !DILocalVariable(name: "x", arg: 1, scope: !539, file: !540, line: 359, type: !7)
!545 = !DILocalVariable(name: "r", scope: !539, file: !540, line: 361, type: !54)
!546 = !DILocation(line: 359, column: 45, scope: !539)
!547 = !DILocation(line: 361, column: 2, scope: !539)
!548 = !DILocation(line: 361, column: 6, scope: !539)
!549 = !DILocation(line: 375, column: 14, scope: !539)
!550 = !DILocation(line: 373, column: 2, scope: !539)
!551 = !{i64 300362}
!552 = !DILocation(line: 386, column: 9, scope: !539)
!553 = !DILocation(line: 386, column: 11, scope: !539)
!554 = !DILocation(line: 387, column: 1, scope: !539)
!555 = !DILocation(line: 386, column: 2, scope: !539)
!556 = distinct !DISubprogram(name: "fls_long", scope: !557, file: !557, line: 204, type: !558, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !560)
!557 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!558 = !DISubroutineType(types: !559)
!559 = !{!7, !26}
!560 = !{!561}
!561 = !DILocalVariable(name: "l", arg: 1, scope: !556, file: !557, line: 204, type: !26)
!562 = !DILocation(line: 204, column: 47, scope: !556)
!563 = !DILocation(line: 208, column: 15, scope: !556)
!564 = !DILocation(line: 208, column: 9, scope: !556)
!565 = !DILocation(line: 208, column: 2, scope: !556)
!566 = distinct !DISubprogram(name: "fls64", scope: !540, file: !540, line: 401, type: !567, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !571)
!567 = !DISubroutineType(types: !568)
!568 = !{!54, !569}
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !71, line: 31, baseType: !570)
!570 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!571 = !{!572, !573}
!572 = !DILocalVariable(name: "x", arg: 1, scope: !566, file: !540, line: 401, type: !569)
!573 = !DILocalVariable(name: "bitpos", scope: !566, file: !540, line: 403, type: !54)
!574 = !DILocation(line: 401, column: 40, scope: !566)
!575 = !DILocation(line: 403, column: 2, scope: !566)
!576 = !DILocation(line: 403, column: 6, scope: !566)
!577 = !DILocation(line: 409, column: 2, scope: !566)
!578 = !DILocation(line: 411, column: 14, scope: !566)
!579 = !{i64 301328}
!580 = !DILocation(line: 412, column: 9, scope: !566)
!581 = !DILocation(line: 412, column: 16, scope: !566)
!582 = !DILocation(line: 413, column: 1, scope: !566)
!583 = !DILocation(line: 412, column: 2, scope: !566)
!584 = distinct !DISubprogram(name: "kmalloc_array", scope: !12, file: !12, line: 629, type: !124, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !585)
!585 = !{!586, !587, !588, !589}
!586 = !DILocalVariable(name: "n", arg: 1, scope: !584, file: !12, line: 629, type: !126)
!587 = !DILocalVariable(name: "size", arg: 2, scope: !584, file: !12, line: 629, type: !126)
!588 = !DILocalVariable(name: "flags", arg: 3, scope: !584, file: !12, line: 629, type: !22)
!589 = !DILocalVariable(name: "bytes", scope: !584, file: !12, line: 631, type: !126)
!590 = !DILocation(line: 629, column: 61, scope: !584)
!591 = !DILocation(line: 629, column: 71, scope: !584)
!592 = !DILocation(line: 629, column: 83, scope: !584)
!593 = !DILocation(line: 631, column: 2, scope: !584)
!594 = !DILocation(line: 631, column: 9, scope: !584)
!595 = !DILocation(line: 633, column: 6, scope: !596)
!596 = distinct !DILexicalBlock(scope: !584, file: !12, line: 633, column: 6)
!597 = !DILocation(line: 633, column: 6, scope: !584)
!598 = !DILocation(line: 634, column: 3, scope: !596)
!599 = !DILocation(line: 635, column: 27, scope: !600)
!600 = distinct !DILexicalBlock(scope: !584, file: !12, line: 635, column: 6)
!601 = !DILocation(line: 635, column: 6, scope: !600)
!602 = !DILocation(line: 635, column: 30, scope: !600)
!603 = !DILocation(line: 635, column: 54, scope: !600)
!604 = !DILocation(line: 635, column: 33, scope: !600)
!605 = !DILocation(line: 635, column: 6, scope: !584)
!606 = !DILocation(line: 636, column: 18, scope: !600)
!607 = !DILocation(line: 636, column: 25, scope: !600)
!608 = !DILocation(line: 636, column: 10, scope: !600)
!609 = !DILocation(line: 636, column: 3, scope: !600)
!610 = !DILocation(line: 637, column: 19, scope: !584)
!611 = !DILocation(line: 637, column: 26, scope: !584)
!612 = !DILocation(line: 637, column: 9, scope: !584)
!613 = !DILocation(line: 637, column: 2, scope: !584)
!614 = !DILocation(line: 638, column: 1, scope: !584)
!615 = distinct !DISubprogram(name: "__must_check_overflow", scope: !616, file: !616, line: 51, type: !617, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !621)
!616 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!617 = !DISubroutineType(types: !618)
!618 = !{!619, !619}
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !23, line: 35, baseType: !620)
!620 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!621 = !{!622}
!622 = !DILocalVariable(name: "overflow", arg: 1, scope: !615, file: !616, line: 51, type: !619)
!623 = !DILocation(line: 51, column: 60, scope: !615)
!624 = !DILocation(line: 53, column: 9, scope: !615)
!625 = !{i8 0, i8 2}
!626 = !{}
!627 = !DILocation(line: 53, column: 2, scope: !615)
!628 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !629, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !631)
!629 = !DISubroutineType(types: !630)
!630 = !{!25, !126, !22}
!631 = !{!632, !633, !634}
!632 = !DILocalVariable(name: "size", arg: 1, scope: !628, file: !12, line: 591, type: !126)
!633 = !DILocalVariable(name: "flags", arg: 2, scope: !628, file: !12, line: 591, type: !22)
!634 = !DILocalVariable(name: "index", scope: !635, file: !12, line: 594, type: !7)
!635 = distinct !DILexicalBlock(scope: !636, file: !12, line: 593, column: 42)
!636 = distinct !DILexicalBlock(scope: !628, file: !12, line: 593, column: 6)
!637 = !DILocation(line: 591, column: 61, scope: !628)
!638 = !DILocation(line: 591, column: 73, scope: !628)
!639 = !DILocation(line: 593, column: 27, scope: !636)
!640 = !DILocation(line: 593, column: 6, scope: !636)
!641 = !DILocation(line: 593, column: 33, scope: !636)
!642 = !DILocation(line: 593, column: 36, scope: !636)
!643 = !DILocation(line: 593, column: 6, scope: !628)
!644 = !DILocation(line: 594, column: 3, scope: !635)
!645 = !DILocation(line: 594, column: 16, scope: !635)
!646 = !DILocation(line: 596, column: 7, scope: !647)
!647 = distinct !DILexicalBlock(scope: !635, file: !12, line: 596, column: 7)
!648 = !DILocation(line: 596, column: 12, scope: !647)
!649 = !DILocation(line: 596, column: 7, scope: !635)
!650 = !DILocation(line: 597, column: 25, scope: !647)
!651 = !DILocation(line: 597, column: 31, scope: !647)
!652 = !DILocation(line: 597, column: 11, scope: !647)
!653 = !DILocation(line: 597, column: 4, scope: !647)
!654 = !DILocation(line: 599, column: 11, scope: !635)
!655 = !DILocation(line: 599, column: 9, scope: !635)
!656 = !DILocation(line: 601, column: 33, scope: !635)
!657 = !DILocation(line: 601, column: 40, scope: !635)
!658 = !DILocation(line: 601, column: 20, scope: !635)
!659 = !DILocation(line: 601, column: 5, scope: !635)
!660 = !DILocation(line: 601, column: 51, scope: !635)
!661 = !DILocation(line: 602, column: 5, scope: !635)
!662 = !DILocation(line: 602, column: 12, scope: !635)
!663 = !DILocation(line: 600, column: 10, scope: !635)
!664 = !DILocation(line: 600, column: 3, scope: !635)
!665 = !DILocation(line: 603, column: 2, scope: !636)
!666 = !DILocation(line: 604, column: 19, scope: !628)
!667 = !DILocation(line: 604, column: 25, scope: !628)
!668 = !DILocation(line: 604, column: 9, scope: !628)
!669 = !DILocation(line: 604, column: 2, scope: !628)
!670 = !DILocation(line: 605, column: 1, scope: !628)
!671 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!672 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!673 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !674, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !676)
!674 = !DISubroutineType(types: !675)
!675 = !{!7, !126, !619}
!676 = !{!677, !678}
!677 = !DILocalVariable(name: "size", arg: 1, scope: !673, file: !12, line: 444, type: !126)
!678 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !673, file: !12, line: 445, type: !619)
!679 = !DILocation(line: 444, column: 60, scope: !673)
!680 = !DILocation(line: 445, column: 16, scope: !673)
!681 = !DILocation(line: 447, column: 7, scope: !682)
!682 = distinct !DILexicalBlock(scope: !673, file: !12, line: 447, column: 6)
!683 = !DILocation(line: 447, column: 6, scope: !673)
!684 = !DILocation(line: 448, column: 3, scope: !682)
!685 = !DILocation(line: 450, column: 6, scope: !686)
!686 = distinct !DILexicalBlock(scope: !673, file: !12, line: 450, column: 6)
!687 = !DILocation(line: 450, column: 11, scope: !686)
!688 = !DILocation(line: 450, column: 6, scope: !673)
!689 = !DILocation(line: 451, column: 3, scope: !686)
!690 = !DILocation(line: 453, column: 32, scope: !691)
!691 = distinct !DILexicalBlock(scope: !673, file: !12, line: 453, column: 6)
!692 = !DILocation(line: 453, column: 37, scope: !691)
!693 = !DILocation(line: 453, column: 42, scope: !691)
!694 = !DILocation(line: 453, column: 45, scope: !691)
!695 = !DILocation(line: 453, column: 50, scope: !691)
!696 = !DILocation(line: 453, column: 6, scope: !673)
!697 = !DILocation(line: 454, column: 3, scope: !691)
!698 = !DILocation(line: 455, column: 32, scope: !699)
!699 = distinct !DILexicalBlock(scope: !673, file: !12, line: 455, column: 6)
!700 = !DILocation(line: 455, column: 37, scope: !699)
!701 = !DILocation(line: 455, column: 43, scope: !699)
!702 = !DILocation(line: 455, column: 46, scope: !699)
!703 = !DILocation(line: 455, column: 51, scope: !699)
!704 = !DILocation(line: 455, column: 6, scope: !673)
!705 = !DILocation(line: 456, column: 3, scope: !699)
!706 = !DILocation(line: 457, column: 6, scope: !707)
!707 = distinct !DILexicalBlock(scope: !673, file: !12, line: 457, column: 6)
!708 = !DILocation(line: 457, column: 11, scope: !707)
!709 = !DILocation(line: 457, column: 6, scope: !673)
!710 = !DILocation(line: 457, column: 26, scope: !707)
!711 = !DILocation(line: 458, column: 6, scope: !712)
!712 = distinct !DILexicalBlock(scope: !673, file: !12, line: 458, column: 6)
!713 = !DILocation(line: 458, column: 11, scope: !712)
!714 = !DILocation(line: 458, column: 6, scope: !673)
!715 = !DILocation(line: 458, column: 26, scope: !712)
!716 = !DILocation(line: 459, column: 6, scope: !717)
!717 = distinct !DILexicalBlock(scope: !673, file: !12, line: 459, column: 6)
!718 = !DILocation(line: 459, column: 11, scope: !717)
!719 = !DILocation(line: 459, column: 6, scope: !673)
!720 = !DILocation(line: 459, column: 26, scope: !717)
!721 = !DILocation(line: 460, column: 6, scope: !722)
!722 = distinct !DILexicalBlock(scope: !673, file: !12, line: 460, column: 6)
!723 = !DILocation(line: 460, column: 11, scope: !722)
!724 = !DILocation(line: 460, column: 6, scope: !673)
!725 = !DILocation(line: 460, column: 26, scope: !722)
!726 = !DILocation(line: 461, column: 6, scope: !727)
!727 = distinct !DILexicalBlock(scope: !673, file: !12, line: 461, column: 6)
!728 = !DILocation(line: 461, column: 11, scope: !727)
!729 = !DILocation(line: 461, column: 6, scope: !673)
!730 = !DILocation(line: 461, column: 26, scope: !727)
!731 = !DILocation(line: 462, column: 6, scope: !732)
!732 = distinct !DILexicalBlock(scope: !673, file: !12, line: 462, column: 6)
!733 = !DILocation(line: 462, column: 11, scope: !732)
!734 = !DILocation(line: 462, column: 6, scope: !673)
!735 = !DILocation(line: 462, column: 26, scope: !732)
!736 = !DILocation(line: 463, column: 6, scope: !737)
!737 = distinct !DILexicalBlock(scope: !673, file: !12, line: 463, column: 6)
!738 = !DILocation(line: 463, column: 11, scope: !737)
!739 = !DILocation(line: 463, column: 6, scope: !673)
!740 = !DILocation(line: 463, column: 26, scope: !737)
!741 = !DILocation(line: 464, column: 6, scope: !742)
!742 = distinct !DILexicalBlock(scope: !673, file: !12, line: 464, column: 6)
!743 = !DILocation(line: 464, column: 11, scope: !742)
!744 = !DILocation(line: 464, column: 6, scope: !673)
!745 = !DILocation(line: 464, column: 26, scope: !742)
!746 = !DILocation(line: 465, column: 6, scope: !747)
!747 = distinct !DILexicalBlock(scope: !673, file: !12, line: 465, column: 6)
!748 = !DILocation(line: 465, column: 11, scope: !747)
!749 = !DILocation(line: 465, column: 6, scope: !673)
!750 = !DILocation(line: 465, column: 26, scope: !747)
!751 = !DILocation(line: 466, column: 6, scope: !752)
!752 = distinct !DILexicalBlock(scope: !673, file: !12, line: 466, column: 6)
!753 = !DILocation(line: 466, column: 11, scope: !752)
!754 = !DILocation(line: 466, column: 6, scope: !673)
!755 = !DILocation(line: 466, column: 26, scope: !752)
!756 = !DILocation(line: 467, column: 6, scope: !757)
!757 = distinct !DILexicalBlock(scope: !673, file: !12, line: 467, column: 6)
!758 = !DILocation(line: 467, column: 11, scope: !757)
!759 = !DILocation(line: 467, column: 6, scope: !673)
!760 = !DILocation(line: 467, column: 26, scope: !757)
!761 = !DILocation(line: 468, column: 6, scope: !762)
!762 = distinct !DILexicalBlock(scope: !673, file: !12, line: 468, column: 6)
!763 = !DILocation(line: 468, column: 11, scope: !762)
!764 = !DILocation(line: 468, column: 6, scope: !673)
!765 = !DILocation(line: 468, column: 26, scope: !762)
!766 = !DILocation(line: 469, column: 6, scope: !767)
!767 = distinct !DILexicalBlock(scope: !673, file: !12, line: 469, column: 6)
!768 = !DILocation(line: 469, column: 11, scope: !767)
!769 = !DILocation(line: 469, column: 6, scope: !673)
!770 = !DILocation(line: 469, column: 26, scope: !767)
!771 = !DILocation(line: 470, column: 6, scope: !772)
!772 = distinct !DILexicalBlock(scope: !673, file: !12, line: 470, column: 6)
!773 = !DILocation(line: 470, column: 11, scope: !772)
!774 = !DILocation(line: 470, column: 6, scope: !673)
!775 = !DILocation(line: 470, column: 26, scope: !772)
!776 = !DILocation(line: 471, column: 6, scope: !777)
!777 = distinct !DILexicalBlock(scope: !673, file: !12, line: 471, column: 6)
!778 = !DILocation(line: 471, column: 11, scope: !777)
!779 = !DILocation(line: 471, column: 6, scope: !673)
!780 = !DILocation(line: 471, column: 26, scope: !777)
!781 = !DILocation(line: 472, column: 6, scope: !782)
!782 = distinct !DILexicalBlock(scope: !673, file: !12, line: 472, column: 6)
!783 = !DILocation(line: 472, column: 11, scope: !782)
!784 = !DILocation(line: 472, column: 6, scope: !673)
!785 = !DILocation(line: 472, column: 26, scope: !782)
!786 = !DILocation(line: 473, column: 6, scope: !787)
!787 = distinct !DILexicalBlock(scope: !673, file: !12, line: 473, column: 6)
!788 = !DILocation(line: 473, column: 11, scope: !787)
!789 = !DILocation(line: 473, column: 6, scope: !673)
!790 = !DILocation(line: 473, column: 26, scope: !787)
!791 = !DILocation(line: 474, column: 6, scope: !792)
!792 = distinct !DILexicalBlock(scope: !673, file: !12, line: 474, column: 6)
!793 = !DILocation(line: 474, column: 11, scope: !792)
!794 = !DILocation(line: 474, column: 6, scope: !673)
!795 = !DILocation(line: 474, column: 27, scope: !792)
!796 = !DILocation(line: 475, column: 6, scope: !797)
!797 = distinct !DILexicalBlock(scope: !673, file: !12, line: 475, column: 6)
!798 = !DILocation(line: 475, column: 11, scope: !797)
!799 = !DILocation(line: 475, column: 6, scope: !673)
!800 = !DILocation(line: 475, column: 32, scope: !797)
!801 = !DILocation(line: 477, column: 50, scope: !802)
!802 = distinct !DILexicalBlock(scope: !673, file: !12, line: 477, column: 6)
!803 = !DILocation(line: 477, column: 6, scope: !673)
!804 = !DILocation(line: 478, column: 3, scope: !802)
!805 = !DILocation(line: 478, column: 3, scope: !806)
!806 = distinct !DILexicalBlock(scope: !807, file: !12, line: 478, column: 3)
!807 = distinct !DILexicalBlock(scope: !802, file: !12, line: 478, column: 3)
!808 = !{i32 -2143558944}
!809 = !DILocation(line: 478, column: 3, scope: !807)
!810 = !DILocation(line: 480, column: 3, scope: !802)
!811 = !DILocation(line: 480, column: 3, scope: !812)
!812 = distinct !DILexicalBlock(scope: !802, file: !12, line: 480, column: 3)
!813 = !DILocation(line: 480, column: 3, scope: !814)
!814 = distinct !DILexicalBlock(scope: !812, file: !12, line: 480, column: 3)
!815 = !DILocation(line: 480, column: 3, scope: !816)
!816 = distinct !DILexicalBlock(scope: !812, file: !12, line: 480, column: 3)
!817 = !{i64 2151408555, i64 2151408584, i64 2151408630, i64 2151408688, i64 2151408742, i64 2151408796, i64 2151408851, i64 2151408882}
!818 = !DILocation(line: 483, column: 2, scope: !673)
!819 = !DILocation(line: 484, column: 1, scope: !673)
!820 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!821 = !DISubroutineType(types: !822)
!822 = !{!25, !39, !22, !126}
!823 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !824, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !826)
!824 = !DISubroutineType(types: !825)
!825 = !{!11, !22, !26}
!826 = !{!827, !828}
!827 = !DILocalVariable(name: "flags", arg: 1, scope: !823, file: !12, line: 401, type: !22)
!828 = !DILocalVariable(name: "caller", arg: 2, scope: !823, file: !12, line: 401, type: !26)
!829 = !DILocation(line: 401, column: 67, scope: !823)
!830 = !DILocation(line: 401, column: 88, scope: !823)
!831 = !DILocation(line: 407, column: 6, scope: !832)
!832 = distinct !DILexicalBlock(scope: !823, file: !12, line: 407, column: 6)
!833 = !DILocation(line: 407, column: 6, scope: !823)
!834 = !DILocation(line: 413, column: 3, scope: !832)
!835 = !DILocation(line: 423, column: 38, scope: !836)
!836 = distinct !DILexicalBlock(scope: !823, file: !12, line: 423, column: 6)
!837 = !DILocation(line: 423, column: 44, scope: !836)
!838 = !DILocation(line: 423, column: 6, scope: !823)
!839 = !DILocation(line: 424, column: 3, scope: !836)
!840 = !DILocation(line: 426, column: 3, scope: !841)
!841 = distinct !DILexicalBlock(scope: !823, file: !12, line: 425, column: 6)
!842 = !DILocation(line: 429, column: 1, scope: !823)
!843 = !DISubprogram(name: "__compiletime_assert_117", scope: !12, file: !12, line: 478, type: !504, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!844 = !DISubprogram(name: "kmem_cache_alloc", scope: !12, file: !12, line: 500, type: !187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)

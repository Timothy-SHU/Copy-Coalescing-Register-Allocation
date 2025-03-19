; ModuleID = 'drivers/gpu/drm/i915/i915_syncmap.c'
source_filename = "drivers/gpu/drm/i915/i915_syncmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_syncmap = type { i64, i32, i32, ptr }

@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @i915_syncmap_init(ptr noundef %root) #0 align 16 !dbg !58 {
entry:
  %root.addr = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !62, metadata !DIExpression()), !dbg !63
  br label %do.body, !dbg !64

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !65

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !67

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !68

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !70

do.body3:                                         ; preds = %do.end2
  br label %do.end4, !dbg !71

do.end4:                                          ; preds = %do.body3
  %0 = load ptr, ptr %root.addr, align 8, !dbg !73
  store ptr null, ptr %0, align 8, !dbg !74
  ret void, !dbg !75
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @i915_syncmap_is_later(ptr noundef %root, i64 noundef %id, i32 noundef %seqno) #0 align 16 !dbg !76 {
entry:
  %retval = alloca i1, align 1
  %root.addr = alloca ptr, align 8
  %id.addr = alloca i64, align 8
  %seqno.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %idx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !82, metadata !DIExpression()), !dbg !88
  store i64 %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !83, metadata !DIExpression()), !dbg !89
  store i32 %seqno, ptr %seqno.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seqno.addr, metadata !84, metadata !DIExpression()), !dbg !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !91
  call void @llvm.dbg.declare(metadata ptr %p, metadata !85, metadata !DIExpression()), !dbg !92
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #14, !dbg !93
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !86, metadata !DIExpression()), !dbg !94
  %0 = load ptr, ptr %root.addr, align 8, !dbg !95
  %1 = load ptr, ptr %0, align 8, !dbg !96
  store ptr %1, ptr %p, align 8, !dbg !97
  %2 = load ptr, ptr %p, align 8, !dbg !98
  %tobool = icmp ne ptr %2, null, !dbg !98
  br i1 %tobool, label %if.end, label %if.then, !dbg !100

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !101
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !101

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %p, align 8, !dbg !102
  %4 = load i64, ptr %id.addr, align 8, !dbg !102
  %call = call i64 @__sync_leaf_prefix(ptr noundef %3, i64 noundef %4) #15, !dbg !102
  %5 = load ptr, ptr %p, align 8, !dbg !102
  %prefix = getelementptr inbounds %struct.i915_syncmap, ptr %5, i32 0, i32 0, !dbg !102
  %6 = load i64, ptr %prefix, align 8, !dbg !102
  %cmp = icmp eq i64 %call, %6, !dbg !102
  %lnot = xor i1 %cmp, true, !dbg !102
  %lnot1 = xor i1 %lnot, true, !dbg !102
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !102
  %conv = sext i32 %lnot.ext to i64, !dbg !102
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !102
  %tobool2 = icmp ne i64 %expval, 0, !dbg !102
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !104

if.then3:                                         ; preds = %if.end
  br label %found, !dbg !105

if.end4:                                          ; preds = %if.end
  br label %do.body, !dbg !106

do.body:                                          ; preds = %do.cond, %if.end4
  %7 = load ptr, ptr %p, align 8, !dbg !107
  %parent = getelementptr inbounds %struct.i915_syncmap, ptr %7, i32 0, i32 3, !dbg !109
  %8 = load ptr, ptr %parent, align 8, !dbg !109
  store ptr %8, ptr %p, align 8, !dbg !110
  %9 = load ptr, ptr %p, align 8, !dbg !111
  %tobool5 = icmp ne ptr %9, null, !dbg !111
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !113

if.then6:                                         ; preds = %do.body
  store i1 false, ptr %retval, align 1, !dbg !114
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !114

if.end7:                                          ; preds = %do.body
  %10 = load ptr, ptr %p, align 8, !dbg !115
  %11 = load i64, ptr %id.addr, align 8, !dbg !117
  %call8 = call i64 @__sync_branch_prefix(ptr noundef %10, i64 noundef %11) #15, !dbg !118
  %12 = load ptr, ptr %p, align 8, !dbg !119
  %prefix9 = getelementptr inbounds %struct.i915_syncmap, ptr %12, i32 0, i32 0, !dbg !120
  %13 = load i64, ptr %prefix9, align 8, !dbg !120
  %cmp10 = icmp eq i64 %call8, %13, !dbg !121
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !122

if.then12:                                        ; preds = %if.end7
  br label %do.end, !dbg !123

if.end13:                                         ; preds = %if.end7
  br label %do.cond, !dbg !124

do.cond:                                          ; preds = %if.end13
  br i1 true, label %do.body, label %do.end, !dbg !124, !llvm.loop !125

do.end:                                           ; preds = %do.cond, %if.then12
  br label %do.body14, !dbg !128

do.body14:                                        ; preds = %do.cond29, %do.end
  %14 = load ptr, ptr %p, align 8, !dbg !129
  %height = getelementptr inbounds %struct.i915_syncmap, ptr %14, i32 0, i32 1, !dbg !132
  %15 = load i32, ptr %height, align 8, !dbg !132
  %tobool15 = icmp ne i32 %15, 0, !dbg !129
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !133

if.then16:                                        ; preds = %do.body14
  br label %do.end30, !dbg !134

if.end17:                                         ; preds = %do.body14
  %16 = load ptr, ptr %p, align 8, !dbg !135
  %call18 = call ptr @__sync_child(ptr noundef %16) #15, !dbg !136
  %17 = load ptr, ptr %p, align 8, !dbg !137
  %18 = load i64, ptr %id.addr, align 8, !dbg !138
  %call19 = call i32 @__sync_branch_idx(ptr noundef %17, i64 noundef %18) #15, !dbg !139
  %idxprom = zext i32 %call19 to i64, !dbg !136
  %arrayidx = getelementptr ptr, ptr %call18, i64 %idxprom, !dbg !136
  %19 = load ptr, ptr %arrayidx, align 8, !dbg !136
  store ptr %19, ptr %p, align 8, !dbg !140
  %20 = load ptr, ptr %p, align 8, !dbg !141
  %tobool20 = icmp ne ptr %20, null, !dbg !141
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !143

if.then21:                                        ; preds = %if.end17
  store i1 false, ptr %retval, align 1, !dbg !144
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !144

if.end22:                                         ; preds = %if.end17
  %21 = load ptr, ptr %p, align 8, !dbg !145
  %22 = load i64, ptr %id.addr, align 8, !dbg !147
  %call23 = call i64 @__sync_branch_prefix(ptr noundef %21, i64 noundef %22) #15, !dbg !148
  %23 = load ptr, ptr %p, align 8, !dbg !149
  %prefix24 = getelementptr inbounds %struct.i915_syncmap, ptr %23, i32 0, i32 0, !dbg !150
  %24 = load i64, ptr %prefix24, align 8, !dbg !150
  %cmp25 = icmp ne i64 %call23, %24, !dbg !151
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !152

if.then27:                                        ; preds = %if.end22
  store i1 false, ptr %retval, align 1, !dbg !153
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !153

if.end28:                                         ; preds = %if.end22
  br label %do.cond29, !dbg !154

do.cond29:                                        ; preds = %if.end28
  br i1 true, label %do.body14, label %do.end30, !dbg !154, !llvm.loop !155

do.end30:                                         ; preds = %do.cond29, %if.then16
  %25 = load ptr, ptr %p, align 8, !dbg !157
  %26 = load ptr, ptr %root.addr, align 8, !dbg !158
  store ptr %25, ptr %26, align 8, !dbg !159
  br label %found, !dbg !160

found:                                            ; preds = %do.end30, %if.then3
  call void @llvm.dbg.label(metadata !87), !dbg !161
  %27 = load ptr, ptr %p, align 8, !dbg !162
  %28 = load i64, ptr %id.addr, align 8, !dbg !163
  %call31 = call i32 @__sync_leaf_idx(ptr noundef %27, i64 noundef %28) #15, !dbg !164
  store i32 %call31, ptr %idx, align 4, !dbg !165
  %29 = load ptr, ptr %p, align 8, !dbg !166
  %bitmap = getelementptr inbounds %struct.i915_syncmap, ptr %29, i32 0, i32 2, !dbg !168
  %30 = load i32, ptr %bitmap, align 4, !dbg !168
  %conv32 = zext i32 %30 to i64, !dbg !166
  %31 = load i32, ptr %idx, align 4, !dbg !169
  %sh_prom = zext i32 %31 to i64, !dbg !169
  %shl = shl i64 1, %sh_prom, !dbg !169
  %and = and i64 %conv32, %shl, !dbg !170
  %tobool33 = icmp ne i64 %and, 0, !dbg !170
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !171

if.then34:                                        ; preds = %found
  store i1 false, ptr %retval, align 1, !dbg !172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !172

if.end35:                                         ; preds = %found
  %32 = load ptr, ptr %p, align 8, !dbg !173
  %call36 = call ptr @__sync_seqno(ptr noundef %32) #15, !dbg !174
  %33 = load i32, ptr %idx, align 4, !dbg !175
  %idxprom37 = zext i32 %33 to i64, !dbg !174
  %arrayidx38 = getelementptr i32, ptr %call36, i64 %idxprom37, !dbg !174
  %34 = load i32, ptr %arrayidx38, align 4, !dbg !174
  %35 = load i32, ptr %seqno.addr, align 4, !dbg !176
  %call39 = call zeroext i1 @seqno_later(i32 noundef %34, i32 noundef %35) #15, !dbg !177
  store i1 %call39, ptr %retval, align 1, !dbg !178
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !178

cleanup:                                          ; preds = %if.end35, %if.then34, %if.then27, %if.then21, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #14, !dbg !179
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !179
  %36 = load i1, ptr %retval, align 1, !dbg !179
  ret i1 %36, !dbg !179
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__sync_leaf_prefix(ptr noundef %p, i64 noundef %id) #3 align 16 !dbg !180 {
entry:
  %p.addr = alloca ptr, align 8
  %id.addr = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !186, metadata !DIExpression()), !dbg !188
  store i64 %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !187, metadata !DIExpression()), !dbg !189
  %0 = load i64, ptr %id.addr, align 8, !dbg !190
  %shr = lshr i64 %0, 4, !dbg !191
  ret i64 %shr, !dbg !192
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__sync_branch_prefix(ptr noundef %p, i64 noundef %id) #3 align 16 !dbg !193 {
entry:
  %p.addr = alloca ptr, align 8
  %id.addr = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !195, metadata !DIExpression()), !dbg !197
  store i64 %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !196, metadata !DIExpression()), !dbg !198
  %0 = load i64, ptr %id.addr, align 8, !dbg !199
  %1 = load ptr, ptr %p.addr, align 8, !dbg !200
  %height = getelementptr inbounds %struct.i915_syncmap, ptr %1, i32 0, i32 1, !dbg !201
  %2 = load i32, ptr %height, align 8, !dbg !201
  %sh_prom = zext i32 %2 to i64, !dbg !202
  %shr = lshr i64 %0, %sh_prom, !dbg !202
  %shr1 = lshr i64 %shr, 4, !dbg !203
  ret i64 %shr1, !dbg !204
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__sync_child(ptr noundef %p) #3 align 16 !dbg !205 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !209, metadata !DIExpression()), !dbg !210
  %0 = load ptr, ptr %p.addr, align 8, !dbg !211
  %add.ptr = getelementptr %struct.i915_syncmap, ptr %0, i64 1, !dbg !212
  ret ptr %add.ptr, !dbg !213
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__sync_branch_idx(ptr noundef %p, i64 noundef %id) #3 align 16 !dbg !214 {
entry:
  %p.addr = alloca ptr, align 8
  %id.addr = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !218, metadata !DIExpression()), !dbg !220
  store i64 %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !219, metadata !DIExpression()), !dbg !221
  %0 = load i64, ptr %id.addr, align 8, !dbg !222
  %1 = load ptr, ptr %p.addr, align 8, !dbg !223
  %height = getelementptr inbounds %struct.i915_syncmap, ptr %1, i32 0, i32 1, !dbg !224
  %2 = load i32, ptr %height, align 8, !dbg !224
  %sh_prom = zext i32 %2 to i64, !dbg !225
  %shr = lshr i64 %0, %sh_prom, !dbg !225
  %and = and i64 %shr, 15, !dbg !226
  %conv = trunc i64 %and to i32, !dbg !227
  ret i32 %conv, !dbg !228
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__sync_leaf_idx(ptr noundef %p, i64 noundef %id) #3 align 16 !dbg !229 {
entry:
  %p.addr = alloca ptr, align 8
  %id.addr = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !231, metadata !DIExpression()), !dbg !233
  store i64 %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !232, metadata !DIExpression()), !dbg !234
  %0 = load i64, ptr %id.addr, align 8, !dbg !235
  %and = and i64 %0, 15, !dbg !236
  %conv = trunc i64 %and to i32, !dbg !235
  ret i32 %conv, !dbg !237
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @seqno_later(i32 noundef %a, i32 noundef %b) #3 align 16 !dbg !238 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !242, metadata !DIExpression()), !dbg !244
  store i32 %b, ptr %b.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !243, metadata !DIExpression()), !dbg !245
  %0 = load i32, ptr %a.addr, align 4, !dbg !246
  %1 = load i32, ptr %b.addr, align 4, !dbg !247
  %sub = sub i32 %0, %1, !dbg !248
  %cmp = icmp sge i32 %sub, 0, !dbg !249
  ret i1 %cmp, !dbg !250
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__sync_seqno(ptr noundef %p) #3 align 16 !dbg !251 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !255, metadata !DIExpression()), !dbg !256
  %0 = load ptr, ptr %p.addr, align 8, !dbg !257
  %add.ptr = getelementptr %struct.i915_syncmap, ptr %0, i64 1, !dbg !258
  ret ptr %add.ptr, !dbg !259
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @i915_syncmap_set(ptr noundef %root, i64 noundef %id, i32 noundef %seqno) #0 align 16 !dbg !260 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca ptr, align 8
  %id.addr = alloca i64, align 8
  %seqno.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !264, metadata !DIExpression()), !dbg !268
  store i64 %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !265, metadata !DIExpression()), !dbg !269
  store i32 %seqno, ptr %seqno.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seqno.addr, metadata !266, metadata !DIExpression()), !dbg !270
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !271
  call void @llvm.dbg.declare(metadata ptr %p, metadata !267, metadata !DIExpression()), !dbg !272
  %0 = load ptr, ptr %root.addr, align 8, !dbg !273
  %1 = load ptr, ptr %0, align 8, !dbg !274
  store ptr %1, ptr %p, align 8, !dbg !272
  %2 = load ptr, ptr %p, align 8, !dbg !275
  %tobool = icmp ne ptr %2, null, !dbg !275
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !275

land.rhs:                                         ; preds = %entry
  %3 = load ptr, ptr %p, align 8, !dbg !275
  %4 = load i64, ptr %id.addr, align 8, !dbg !275
  %call = call i64 @__sync_leaf_prefix(ptr noundef %3, i64 noundef %4) #15, !dbg !275
  %5 = load ptr, ptr %p, align 8, !dbg !275
  %prefix = getelementptr inbounds %struct.i915_syncmap, ptr %5, i32 0, i32 0, !dbg !275
  %6 = load i64, ptr %prefix, align 8, !dbg !275
  %cmp = icmp eq i64 %call, %6, !dbg !275
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !277
  %lnot = xor i1 %7, true, !dbg !275
  %lnot1 = xor i1 %lnot, true, !dbg !275
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !275
  %conv = sext i32 %lnot.ext to i64, !dbg !275
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !275
  %tobool2 = icmp ne i64 %expval, 0, !dbg !275
  br i1 %tobool2, label %if.then, label %if.end, !dbg !278

if.then:                                          ; preds = %land.end
  %8 = load ptr, ptr %p, align 8, !dbg !279
  %9 = load i64, ptr %id.addr, align 8, !dbg !281
  %10 = load i32, ptr %seqno.addr, align 4, !dbg !282
  call void @__sync_set_seqno(ptr noundef %8, i64 noundef %9, i32 noundef %10) #15, !dbg !283
  store i32 0, ptr %retval, align 4, !dbg !284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !284

if.end:                                           ; preds = %land.end
  %11 = load ptr, ptr %root.addr, align 8, !dbg !285
  %12 = load i64, ptr %id.addr, align 8, !dbg !286
  %13 = load i32, ptr %seqno.addr, align 4, !dbg !287
  %call3 = call i32 @__sync_set(ptr noundef %11, i64 noundef %12, i32 noundef %13) #15, !dbg !288
  store i32 %call3, ptr %retval, align 4, !dbg !289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !289

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !290
  %14 = load i32, ptr %retval, align 4, !dbg !290
  ret i32 %14, !dbg !290
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__sync_set_seqno(ptr noundef %p, i64 noundef %id, i32 noundef %seqno) #3 align 16 !dbg !291 {
entry:
  %p.addr = alloca ptr, align 8
  %id.addr = alloca i64, align 8
  %seqno.addr = alloca i32, align 4
  %idx = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !295, metadata !DIExpression()), !dbg !299
  store i64 %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !296, metadata !DIExpression()), !dbg !300
  store i32 %seqno, ptr %seqno.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seqno.addr, metadata !297, metadata !DIExpression()), !dbg !301
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #14, !dbg !302
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !298, metadata !DIExpression()), !dbg !303
  %0 = load ptr, ptr %p.addr, align 8, !dbg !304
  %1 = load i64, ptr %id.addr, align 8, !dbg !305
  %call = call i32 @__sync_leaf_idx(ptr noundef %0, i64 noundef %1) #15, !dbg !306
  store i32 %call, ptr %idx, align 4, !dbg !303
  %2 = load i32, ptr %idx, align 4, !dbg !307
  %sh_prom = zext i32 %2 to i64, !dbg !307
  %shl = shl i64 1, %sh_prom, !dbg !307
  %3 = load ptr, ptr %p.addr, align 8, !dbg !308
  %bitmap = getelementptr inbounds %struct.i915_syncmap, ptr %3, i32 0, i32 2, !dbg !309
  %4 = load i32, ptr %bitmap, align 4, !dbg !310
  %conv = zext i32 %4 to i64, !dbg !310
  %or = or i64 %conv, %shl, !dbg !310
  %conv1 = trunc i64 %or to i32, !dbg !310
  store i32 %conv1, ptr %bitmap, align 4, !dbg !310
  %5 = load i32, ptr %seqno.addr, align 4, !dbg !311
  %6 = load ptr, ptr %p.addr, align 8, !dbg !312
  %call2 = call ptr @__sync_seqno(ptr noundef %6) #15, !dbg !313
  %7 = load i32, ptr %idx, align 4, !dbg !314
  %idxprom = zext i32 %7 to i64, !dbg !313
  %arrayidx = getelementptr i32, ptr %call2, i64 %idxprom, !dbg !313
  store i32 %5, ptr %arrayidx, align 4, !dbg !315
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #14, !dbg !316
  ret void, !dbg !316
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__sync_set(ptr noundef %root, i64 noundef %id, i32 noundef %seqno) #5 align 16 !dbg !317 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca ptr, align 8
  %id.addr = alloca i64, align 8
  %seqno.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %idx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %next = alloca ptr, align 8
  %above = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !319, metadata !DIExpression()), !dbg !330
  store i64 %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !320, metadata !DIExpression()), !dbg !331
  store i32 %seqno, ptr %seqno.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seqno.addr, metadata !321, metadata !DIExpression()), !dbg !332
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !333
  call void @llvm.dbg.declare(metadata ptr %p, metadata !322, metadata !DIExpression()), !dbg !334
  %0 = load ptr, ptr %root.addr, align 8, !dbg !335
  %1 = load ptr, ptr %0, align 8, !dbg !336
  store ptr %1, ptr %p, align 8, !dbg !334
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #14, !dbg !337
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !323, metadata !DIExpression()), !dbg !338
  %2 = load ptr, ptr %p, align 8, !dbg !339
  %tobool = icmp ne ptr %2, null, !dbg !339
  br i1 %tobool, label %if.end6, label %if.then, !dbg !341

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %id.addr, align 8, !dbg !342
  %call = call ptr @__sync_alloc_leaf(ptr noundef null, i64 noundef %3) #15, !dbg !344
  store ptr %call, ptr %p, align 8, !dbg !345
  %4 = load ptr, ptr %p, align 8, !dbg !346
  %tobool1 = icmp ne ptr %4, null, !dbg !346
  %lnot = xor i1 %tobool1, true, !dbg !346
  %lnot2 = xor i1 %lnot, true, !dbg !346
  %lnot3 = xor i1 %lnot2, true, !dbg !346
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !346
  %conv = sext i32 %lnot.ext to i64, !dbg !346
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !346
  %tobool4 = icmp ne i64 %expval, 0, !dbg !346
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !348

if.then5:                                         ; preds = %if.then
  store i32 -12, ptr %retval, align 4, !dbg !349
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup85, !dbg !349

if.end:                                           ; preds = %if.then
  br label %found, !dbg !350

if.end6:                                          ; preds = %entry
  br label %do.body, !dbg !351

do.body:                                          ; preds = %do.cond, %if.end6
  %5 = load ptr, ptr %p, align 8, !dbg !352
  %parent = getelementptr inbounds %struct.i915_syncmap, ptr %5, i32 0, i32 3, !dbg !355
  %6 = load ptr, ptr %parent, align 8, !dbg !355
  %tobool7 = icmp ne ptr %6, null, !dbg !352
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !356

if.then8:                                         ; preds = %do.body
  br label %do.end, !dbg !357

if.end9:                                          ; preds = %do.body
  %7 = load ptr, ptr %p, align 8, !dbg !358
  %parent10 = getelementptr inbounds %struct.i915_syncmap, ptr %7, i32 0, i32 3, !dbg !359
  %8 = load ptr, ptr %parent10, align 8, !dbg !359
  store ptr %8, ptr %p, align 8, !dbg !360
  %9 = load ptr, ptr %p, align 8, !dbg !361
  %10 = load i64, ptr %id.addr, align 8, !dbg !363
  %call11 = call i64 @__sync_branch_prefix(ptr noundef %9, i64 noundef %10) #15, !dbg !364
  %11 = load ptr, ptr %p, align 8, !dbg !365
  %prefix = getelementptr inbounds %struct.i915_syncmap, ptr %11, i32 0, i32 0, !dbg !366
  %12 = load i64, ptr %prefix, align 8, !dbg !366
  %cmp = icmp eq i64 %call11, %12, !dbg !367
  br i1 %cmp, label %if.then13, label %if.end14, !dbg !368

if.then13:                                        ; preds = %if.end9
  br label %do.end, !dbg !369

if.end14:                                         ; preds = %if.end9
  br label %do.cond, !dbg !370

do.cond:                                          ; preds = %if.end14
  br i1 true, label %do.body, label %do.end, !dbg !370, !llvm.loop !371

do.end:                                           ; preds = %do.cond, %if.then13, %if.then8
  br label %do.body15, !dbg !373

do.body15:                                        ; preds = %do.cond83, %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #14, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %next, metadata !324, metadata !DIExpression()), !dbg !375
  %13 = load ptr, ptr %p, align 8, !dbg !376
  %14 = load i64, ptr %id.addr, align 8, !dbg !377
  %call16 = call i64 @__sync_branch_prefix(ptr noundef %13, i64 noundef %14) #15, !dbg !378
  %15 = load ptr, ptr %p, align 8, !dbg !379
  %prefix17 = getelementptr inbounds %struct.i915_syncmap, ptr %15, i32 0, i32 0, !dbg !380
  %16 = load i64, ptr %prefix17, align 8, !dbg !380
  %cmp18 = icmp ne i64 %call16, %16, !dbg !381
  br i1 %cmp18, label %if.then20, label %if.else, !dbg !382

if.then20:                                        ; preds = %do.body15
  call void @llvm.lifetime.start.p0(i64 4, ptr %above) #14, !dbg !383
  call void @llvm.dbg.declare(metadata ptr %above, metadata !326, metadata !DIExpression()), !dbg !384
  %call21 = call noalias ptr @kzalloc(i64 noundef 152, i32 noundef 3264) #16, !dbg !385
  store ptr %call21, ptr %next, align 8, !dbg !386
  %17 = load ptr, ptr %next, align 8, !dbg !387
  %tobool22 = icmp ne ptr %17, null, !dbg !387
  %lnot23 = xor i1 %tobool22, true, !dbg !387
  %lnot25 = xor i1 %lnot23, true, !dbg !387
  %lnot27 = xor i1 %lnot25, true, !dbg !387
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !387
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !387
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !387
  %tobool31 = icmp ne i64 %expval30, 0, !dbg !387
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !389

if.then32:                                        ; preds = %if.then20
  store i32 -12, ptr %retval, align 4, !dbg !390
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !390

if.end33:                                         ; preds = %if.then20
  %18 = load ptr, ptr %p, align 8, !dbg !391
  %19 = load i64, ptr %id.addr, align 8, !dbg !392
  %call34 = call i64 @__sync_branch_prefix(ptr noundef %18, i64 noundef %19) #15, !dbg !393
  %20 = load ptr, ptr %p, align 8, !dbg !394
  %prefix35 = getelementptr inbounds %struct.i915_syncmap, ptr %20, i32 0, i32 0, !dbg !395
  %21 = load i64, ptr %prefix35, align 8, !dbg !395
  %xor = xor i64 %call34, %21, !dbg !396
  %call36 = call i32 @fls64(i64 noundef %xor) #15, !dbg !397
  store i32 %call36, ptr %above, align 4, !dbg !398
  %22 = load i32, ptr %above, align 4, !dbg !399
  %sub = sub i32 %22, 1, !dbg !399
  %or = or i32 %sub, 3, !dbg !399
  %add = add i32 %or, 1, !dbg !399
  store i32 %add, ptr %above, align 4, !dbg !400
  %23 = load i32, ptr %above, align 4, !dbg !401
  %24 = load ptr, ptr %p, align 8, !dbg !402
  %height = getelementptr inbounds %struct.i915_syncmap, ptr %24, i32 0, i32 1, !dbg !403
  %25 = load i32, ptr %height, align 8, !dbg !403
  %add37 = add i32 %23, %25, !dbg !404
  %26 = load ptr, ptr %next, align 8, !dbg !405
  %height38 = getelementptr inbounds %struct.i915_syncmap, ptr %26, i32 0, i32 1, !dbg !406
  store i32 %add37, ptr %height38, align 8, !dbg !407
  %27 = load ptr, ptr %next, align 8, !dbg !408
  %28 = load i64, ptr %id.addr, align 8, !dbg !409
  %call39 = call i64 @__sync_branch_prefix(ptr noundef %27, i64 noundef %28) #15, !dbg !410
  %29 = load ptr, ptr %next, align 8, !dbg !411
  %prefix40 = getelementptr inbounds %struct.i915_syncmap, ptr %29, i32 0, i32 0, !dbg !412
  store i64 %call39, ptr %prefix40, align 8, !dbg !413
  %30 = load ptr, ptr %p, align 8, !dbg !414
  %parent41 = getelementptr inbounds %struct.i915_syncmap, ptr %30, i32 0, i32 3, !dbg !416
  %31 = load ptr, ptr %parent41, align 8, !dbg !416
  %tobool42 = icmp ne ptr %31, null, !dbg !414
  br i1 %tobool42, label %if.then43, label %if.end48, !dbg !417

if.then43:                                        ; preds = %if.end33
  %32 = load ptr, ptr %p, align 8, !dbg !418
  %parent44 = getelementptr inbounds %struct.i915_syncmap, ptr %32, i32 0, i32 3, !dbg !420
  %33 = load ptr, ptr %parent44, align 8, !dbg !420
  %34 = load i64, ptr %id.addr, align 8, !dbg !421
  %call45 = call i32 @__sync_branch_idx(ptr noundef %33, i64 noundef %34) #15, !dbg !422
  store i32 %call45, ptr %idx, align 4, !dbg !423
  %35 = load ptr, ptr %next, align 8, !dbg !424
  %36 = load ptr, ptr %p, align 8, !dbg !425
  %parent46 = getelementptr inbounds %struct.i915_syncmap, ptr %36, i32 0, i32 3, !dbg !426
  %37 = load ptr, ptr %parent46, align 8, !dbg !426
  %call47 = call ptr @__sync_child(ptr noundef %37) #15, !dbg !427
  %38 = load i32, ptr %idx, align 4, !dbg !428
  %idxprom = zext i32 %38 to i64, !dbg !427
  %arrayidx = getelementptr ptr, ptr %call47, i64 %idxprom, !dbg !427
  store ptr %35, ptr %arrayidx, align 8, !dbg !429
  br label %if.end48, !dbg !430

if.end48:                                         ; preds = %if.then43, %if.end33
  %39 = load ptr, ptr %p, align 8, !dbg !431
  %parent49 = getelementptr inbounds %struct.i915_syncmap, ptr %39, i32 0, i32 3, !dbg !432
  %40 = load ptr, ptr %parent49, align 8, !dbg !432
  %41 = load ptr, ptr %next, align 8, !dbg !433
  %parent50 = getelementptr inbounds %struct.i915_syncmap, ptr %41, i32 0, i32 3, !dbg !434
  store ptr %40, ptr %parent50, align 8, !dbg !435
  %42 = load ptr, ptr %p, align 8, !dbg !436
  %prefix51 = getelementptr inbounds %struct.i915_syncmap, ptr %42, i32 0, i32 0, !dbg !437
  %43 = load i64, ptr %prefix51, align 8, !dbg !437
  %44 = load i32, ptr %above, align 4, !dbg !438
  %sub52 = sub i32 %44, 4, !dbg !439
  %sh_prom = zext i32 %sub52 to i64, !dbg !440
  %shr = lshr i64 %43, %sh_prom, !dbg !440
  %and = and i64 %shr, 15, !dbg !441
  %conv53 = trunc i64 %and to i32, !dbg !436
  store i32 %conv53, ptr %idx, align 4, !dbg !442
  %45 = load ptr, ptr %next, align 8, !dbg !443
  %46 = load i32, ptr %idx, align 4, !dbg !444
  %47 = load ptr, ptr %p, align 8, !dbg !445
  call void @__sync_set_child(ptr noundef %45, i32 noundef %46, ptr noundef %47) #15, !dbg !446
  %48 = load ptr, ptr %next, align 8, !dbg !447
  %49 = load ptr, ptr %p, align 8, !dbg !448
  %parent54 = getelementptr inbounds %struct.i915_syncmap, ptr %49, i32 0, i32 3, !dbg !449
  store ptr %48, ptr %parent54, align 8, !dbg !450
  %50 = load ptr, ptr %next, align 8, !dbg !451
  store ptr %50, ptr %p, align 8, !dbg !452
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !453
  br label %cleanup, !dbg !453

cleanup:                                          ; preds = %if.end48, %if.then32
  call void @llvm.lifetime.end.p0(i64 4, ptr %above) #14, !dbg !453
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup80 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end59, !dbg !454

if.else:                                          ; preds = %do.body15
  %51 = load ptr, ptr %p, align 8, !dbg !455
  %height55 = getelementptr inbounds %struct.i915_syncmap, ptr %51, i32 0, i32 1, !dbg !458
  %52 = load i32, ptr %height55, align 8, !dbg !458
  %tobool56 = icmp ne i32 %52, 0, !dbg !455
  br i1 %tobool56, label %if.end58, label %if.then57, !dbg !459

if.then57:                                        ; preds = %if.else
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup80, !dbg !460

if.end58:                                         ; preds = %if.else
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %cleanup.cont
  %53 = load ptr, ptr %p, align 8, !dbg !461
  %54 = load i64, ptr %id.addr, align 8, !dbg !462
  %call60 = call i32 @__sync_branch_idx(ptr noundef %53, i64 noundef %54) #15, !dbg !463
  store i32 %call60, ptr %idx, align 4, !dbg !464
  %55 = load ptr, ptr %p, align 8, !dbg !465
  %call61 = call ptr @__sync_child(ptr noundef %55) #15, !dbg !466
  %56 = load i32, ptr %idx, align 4, !dbg !467
  %idxprom62 = zext i32 %56 to i64, !dbg !466
  %arrayidx63 = getelementptr ptr, ptr %call61, i64 %idxprom62, !dbg !466
  %57 = load ptr, ptr %arrayidx63, align 8, !dbg !466
  store ptr %57, ptr %next, align 8, !dbg !468
  %58 = load ptr, ptr %next, align 8, !dbg !469
  %tobool64 = icmp ne ptr %58, null, !dbg !469
  br i1 %tobool64, label %if.end79, label %if.then65, !dbg !471

if.then65:                                        ; preds = %if.end59
  %59 = load ptr, ptr %p, align 8, !dbg !472
  %60 = load i64, ptr %id.addr, align 8, !dbg !474
  %call66 = call ptr @__sync_alloc_leaf(ptr noundef %59, i64 noundef %60) #15, !dbg !475
  store ptr %call66, ptr %next, align 8, !dbg !476
  %61 = load ptr, ptr %next, align 8, !dbg !477
  %tobool67 = icmp ne ptr %61, null, !dbg !477
  %lnot68 = xor i1 %tobool67, true, !dbg !477
  %lnot70 = xor i1 %lnot68, true, !dbg !477
  %lnot72 = xor i1 %lnot70, true, !dbg !477
  %lnot.ext73 = zext i1 %lnot72 to i32, !dbg !477
  %conv74 = sext i32 %lnot.ext73 to i64, !dbg !477
  %expval75 = call i64 @llvm.expect.i64(i64 %conv74, i64 0), !dbg !477
  %tobool76 = icmp ne i64 %expval75, 0, !dbg !477
  br i1 %tobool76, label %if.then77, label %if.end78, !dbg !479

if.then77:                                        ; preds = %if.then65
  store i32 -12, ptr %retval, align 4, !dbg !480
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80, !dbg !480

if.end78:                                         ; preds = %if.then65
  %62 = load ptr, ptr %p, align 8, !dbg !481
  %63 = load i32, ptr %idx, align 4, !dbg !482
  %64 = load ptr, ptr %next, align 8, !dbg !483
  call void @__sync_set_child(ptr noundef %62, i32 noundef %63, ptr noundef %64) #15, !dbg !484
  %65 = load ptr, ptr %next, align 8, !dbg !485
  store ptr %65, ptr %p, align 8, !dbg !486
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup80, !dbg !487

if.end79:                                         ; preds = %if.end59
  %66 = load ptr, ptr %next, align 8, !dbg !488
  store ptr %66, ptr %p, align 8, !dbg !489
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !490
  br label %cleanup80, !dbg !490

cleanup80:                                        ; preds = %if.end79, %if.end78, %if.then77, %if.then57, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #14, !dbg !490
  %cleanup.dest81 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest81, label %cleanup85 [
    i32 0, label %cleanup.cont82
    i32 5, label %do.end84
  ]

cleanup.cont82:                                   ; preds = %cleanup80
  br label %do.cond83, !dbg !491

do.cond83:                                        ; preds = %cleanup.cont82
  br i1 true, label %do.body15, label %do.end84, !dbg !491, !llvm.loop !492

do.end84:                                         ; preds = %do.cond83, %cleanup80
  br label %found, !dbg !491

found:                                            ; preds = %do.end84, %if.end
  call void @llvm.dbg.label(metadata !329), !dbg !494
  %67 = load ptr, ptr %p, align 8, !dbg !495
  %68 = load i64, ptr %id.addr, align 8, !dbg !496
  %69 = load i32, ptr %seqno.addr, align 4, !dbg !497
  call void @__sync_set_seqno(ptr noundef %67, i64 noundef %68, i32 noundef %69) #15, !dbg !498
  %70 = load ptr, ptr %p, align 8, !dbg !499
  %71 = load ptr, ptr %root.addr, align 8, !dbg !500
  store ptr %70, ptr %71, align 8, !dbg !501
  store i32 0, ptr %retval, align 4, !dbg !502
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup85, !dbg !502

cleanup85:                                        ; preds = %found, %cleanup80, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #14, !dbg !503
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !503
  %72 = load i32, ptr %retval, align 4, !dbg !503
  ret i32 %72, !dbg !503
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @i915_syncmap_free(ptr noundef %root) #0 align 16 !dbg !504 {
entry:
  %root.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !506, metadata !DIExpression()), !dbg !508
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !509
  call void @llvm.dbg.declare(metadata ptr %p, metadata !507, metadata !DIExpression()), !dbg !510
  %0 = load ptr, ptr %root.addr, align 8, !dbg !511
  %1 = load ptr, ptr %0, align 8, !dbg !512
  store ptr %1, ptr %p, align 8, !dbg !513
  %2 = load ptr, ptr %p, align 8, !dbg !514
  %tobool = icmp ne ptr %2, null, !dbg !514
  br i1 %tobool, label %if.end, label %if.then, !dbg !516

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !517

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !518

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load ptr, ptr %p, align 8, !dbg !519
  %parent = getelementptr inbounds %struct.i915_syncmap, ptr %3, i32 0, i32 3, !dbg !520
  %4 = load ptr, ptr %parent, align 8, !dbg !520
  %tobool1 = icmp ne ptr %4, null, !dbg !518
  br i1 %tobool1, label %while.body, label %while.end, !dbg !518

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %p, align 8, !dbg !521
  %parent2 = getelementptr inbounds %struct.i915_syncmap, ptr %5, i32 0, i32 3, !dbg !522
  %6 = load ptr, ptr %parent2, align 8, !dbg !522
  store ptr %6, ptr %p, align 8, !dbg !523
  br label %while.cond, !dbg !518, !llvm.loop !524

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %p, align 8, !dbg !526
  call void @__sync_free(ptr noundef %7) #15, !dbg !527
  %8 = load ptr, ptr %root.addr, align 8, !dbg !528
  store ptr null, ptr %8, align 8, !dbg !529
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !530
  br label %cleanup, !dbg !530

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !530
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !530

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__sync_free(ptr noundef %p) #0 align 16 !dbg !531 {
entry:
  %p.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !535, metadata !DIExpression()), !dbg !539
  %0 = load ptr, ptr %p.addr, align 8, !dbg !540
  %height = getelementptr inbounds %struct.i915_syncmap, ptr %0, i32 0, i32 1, !dbg !541
  %1 = load i32, ptr %height, align 8, !dbg !541
  %tobool = icmp ne i32 %1, 0, !dbg !540
  br i1 %tobool, label %if.then, label %if.end, !dbg !542

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !543
  call void @llvm.dbg.declare(metadata ptr %i, metadata !536, metadata !DIExpression()), !dbg !544
  br label %while.cond, !dbg !545

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load ptr, ptr %p.addr, align 8, !dbg !546
  %bitmap = getelementptr inbounds %struct.i915_syncmap, ptr %2, i32 0, i32 2, !dbg !546
  %3 = load i32, ptr %bitmap, align 4, !dbg !546
  %4 = call i1 @llvm.is.constant.i32(i32 %3), !dbg !546
  br i1 %4, label %cond.true, label %cond.false, !dbg !546

cond.true:                                        ; preds = %while.cond
  %5 = load ptr, ptr %p.addr, align 8, !dbg !546
  %bitmap1 = getelementptr inbounds %struct.i915_syncmap, ptr %5, i32 0, i32 2, !dbg !546
  %6 = load i32, ptr %bitmap1, align 4, !dbg !546
  %7 = call i32 @llvm.cttz.i32(i32 %6, i1 true), !dbg !546
  %8 = add i32 %7, 1, !dbg !546
  %iszero = icmp eq i32 %6, 0, !dbg !546
  %ffs = select i1 %iszero, i32 0, i32 %8, !dbg !546
  br label %cond.end, !dbg !546

cond.false:                                       ; preds = %while.cond
  %9 = load ptr, ptr %p.addr, align 8, !dbg !546
  %bitmap2 = getelementptr inbounds %struct.i915_syncmap, ptr %9, i32 0, i32 2, !dbg !546
  %10 = load i32, ptr %bitmap2, align 4, !dbg !546
  %call = call i32 @variable_ffs(i32 noundef %10) #15, !dbg !546
  br label %cond.end, !dbg !546

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %ffs, %cond.true ], [ %call, %cond.false ], !dbg !546
  store i32 %cond, ptr %i, align 4, !dbg !547
  %tobool3 = icmp ne i32 %cond, 0, !dbg !545
  br i1 %tobool3, label %while.body, label %while.end, !dbg !545

while.body:                                       ; preds = %cond.end
  %11 = load i32, ptr %i, align 4, !dbg !548
  %shl = shl i32 -1, %11, !dbg !550
  %12 = load ptr, ptr %p.addr, align 8, !dbg !551
  %bitmap4 = getelementptr inbounds %struct.i915_syncmap, ptr %12, i32 0, i32 2, !dbg !552
  %13 = load i32, ptr %bitmap4, align 4, !dbg !553
  %and = and i32 %13, %shl, !dbg !553
  store i32 %and, ptr %bitmap4, align 4, !dbg !553
  %14 = load ptr, ptr %p.addr, align 8, !dbg !554
  %call5 = call ptr @__sync_child(ptr noundef %14) #15, !dbg !555
  %15 = load i32, ptr %i, align 4, !dbg !556
  %sub = sub i32 %15, 1, !dbg !557
  %idxprom = zext i32 %sub to i64, !dbg !555
  %arrayidx = getelementptr ptr, ptr %call5, i64 %idxprom, !dbg !555
  %16 = load ptr, ptr %arrayidx, align 8, !dbg !555
  call void @__sync_free(ptr noundef %16) #15, !dbg !558
  br label %while.cond, !dbg !545, !llvm.loop !559

while.end:                                        ; preds = %cond.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !561
  br label %if.end, !dbg !562

if.end:                                           ; preds = %while.end, %entry
  %17 = load ptr, ptr %p.addr, align 8, !dbg !563
  call void @kfree(ptr noundef %17) #15, !dbg !564
  ret void, !dbg !565
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__sync_alloc_leaf(ptr noundef %parent, i64 noundef %id) #0 align 16 !dbg !566 {
entry:
  %retval = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %id.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !570, metadata !DIExpression()), !dbg !573
  store i64 %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !571, metadata !DIExpression()), !dbg !574
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !575
  call void @llvm.dbg.declare(metadata ptr %p, metadata !572, metadata !DIExpression()), !dbg !576
  %call = call noalias ptr @kmalloc(i64 noundef 88, i32 noundef 3264) #16, !dbg !577
  store ptr %call, ptr %p, align 8, !dbg !578
  %0 = load ptr, ptr %p, align 8, !dbg !579
  %tobool = icmp ne ptr %0, null, !dbg !579
  %lnot = xor i1 %tobool, true, !dbg !579
  %lnot1 = xor i1 %lnot, true, !dbg !579
  %lnot2 = xor i1 %lnot1, true, !dbg !579
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !579
  %conv = sext i32 %lnot.ext to i64, !dbg !579
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !579
  %tobool3 = icmp ne i64 %expval, 0, !dbg !579
  br i1 %tobool3, label %if.then, label %if.end, !dbg !581

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !582
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !582

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !583
  %2 = load ptr, ptr %p, align 8, !dbg !584
  %parent4 = getelementptr inbounds %struct.i915_syncmap, ptr %2, i32 0, i32 3, !dbg !585
  store ptr %1, ptr %parent4, align 8, !dbg !586
  %3 = load ptr, ptr %p, align 8, !dbg !587
  %height = getelementptr inbounds %struct.i915_syncmap, ptr %3, i32 0, i32 1, !dbg !588
  store i32 0, ptr %height, align 8, !dbg !589
  %4 = load ptr, ptr %p, align 8, !dbg !590
  %bitmap = getelementptr inbounds %struct.i915_syncmap, ptr %4, i32 0, i32 2, !dbg !591
  store i32 0, ptr %bitmap, align 4, !dbg !592
  %5 = load ptr, ptr %p, align 8, !dbg !593
  %6 = load i64, ptr %id.addr, align 8, !dbg !594
  %call5 = call i64 @__sync_leaf_prefix(ptr noundef %5, i64 noundef %6) #15, !dbg !595
  %7 = load ptr, ptr %p, align 8, !dbg !596
  %prefix = getelementptr inbounds %struct.i915_syncmap, ptr %7, i32 0, i32 0, !dbg !597
  store i64 %call5, ptr %prefix, align 8, !dbg !598
  %8 = load ptr, ptr %p, align 8, !dbg !599
  store ptr %8, ptr %retval, align 8, !dbg !600
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !600

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !601
  %9 = load ptr, ptr %retval, align 8, !dbg !601
  ret ptr %9, !dbg !601
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !602 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !611, metadata !DIExpression()), !dbg !613
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !612, metadata !DIExpression()), !dbg !614
  %0 = load i64, ptr %size.addr, align 8, !dbg !615
  %1 = load i32, ptr %flags.addr, align 4, !dbg !616
  %or = or i32 %1, 256, !dbg !617
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !618
  ret ptr %call, !dbg !619
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls64(i64 noundef %x) #7 align 16 !dbg !620 {
entry:
  %x.addr = alloca i64, align 8
  %bitpos = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !625, metadata !DIExpression()), !dbg !627
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitpos) #14, !dbg !628
  call void @llvm.dbg.declare(metadata ptr %bitpos, metadata !626, metadata !DIExpression()), !dbg !629
  store i32 -1, ptr %bitpos, align 4, !dbg !629
  %0 = load i32, ptr %bitpos, align 4, !dbg !630
  %1 = load i64, ptr %x.addr, align 8, !dbg !631
  %2 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %1, i32 %0) #17, !dbg !630, !srcloc !632
  store i32 %2, ptr %bitpos, align 4, !dbg !630
  %3 = load i32, ptr %bitpos, align 4, !dbg !633
  %add = add i32 %3, 1, !dbg !634
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitpos) #14, !dbg !635
  ret i32 %add, !dbg !636
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__sync_set_child(ptr noundef %p, i32 noundef %idx, ptr noundef %child) #3 align 16 !dbg !637 {
entry:
  %p.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %child.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !641, metadata !DIExpression()), !dbg !644
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !642, metadata !DIExpression()), !dbg !645
  store ptr %child, ptr %child.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %child.addr, metadata !643, metadata !DIExpression()), !dbg !646
  %0 = load i32, ptr %idx.addr, align 4, !dbg !647
  %sh_prom = zext i32 %0 to i64, !dbg !647
  %shl = shl i64 1, %sh_prom, !dbg !647
  %1 = load ptr, ptr %p.addr, align 8, !dbg !648
  %bitmap = getelementptr inbounds %struct.i915_syncmap, ptr %1, i32 0, i32 2, !dbg !649
  %2 = load i32, ptr %bitmap, align 4, !dbg !650
  %conv = zext i32 %2 to i64, !dbg !650
  %or = or i64 %conv, %shl, !dbg !650
  %conv1 = trunc i64 %or to i32, !dbg !650
  store i32 %conv1, ptr %bitmap, align 4, !dbg !650
  %3 = load ptr, ptr %child.addr, align 8, !dbg !651
  %4 = load ptr, ptr %p.addr, align 8, !dbg !652
  %call = call ptr @__sync_child(ptr noundef %4) #15, !dbg !653
  %5 = load i32, ptr %idx.addr, align 4, !dbg !654
  %idxprom = zext i32 %5 to i64, !dbg !653
  %arrayidx = getelementptr ptr, ptr %call, i64 %idxprom, !dbg !653
  store ptr %3, ptr %arrayidx, align 8, !dbg !655
  ret void, !dbg !656
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !657 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !659, metadata !DIExpression()), !dbg !664
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !660, metadata !DIExpression()), !dbg !665
  %0 = load i64, ptr %size.addr, align 8, !dbg !666
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !667
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !668

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !669
  %tobool = icmp ne i64 %2, 0, !dbg !669
  br i1 %tobool, label %if.then, label %if.end7, !dbg !670

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !671
  call void @llvm.dbg.declare(metadata ptr %index, metadata !661, metadata !DIExpression()), !dbg !672
  %3 = load i64, ptr %size.addr, align 8, !dbg !673
  %cmp = icmp ugt i64 %3, 8192, !dbg !675
  br i1 %cmp, label %if.then1, label %if.end, !dbg !676

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !677
  %5 = load i32, ptr %flags.addr, align 4, !dbg !678
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !679
  store ptr %call, ptr %retval, align 8, !dbg !680
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !680

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !681
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !681
  store i32 %call2, ptr %index, align 4, !dbg !682
  %7 = load i32, ptr %flags.addr, align 4, !dbg !683
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !684
  %9 = ptrtoint ptr %8 to i64, !dbg !684
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !685
  %idxprom = zext i32 %call3 to i64, !dbg !686
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !686
  %10 = load i32, ptr %index, align 4, !dbg !687
  %idxprom4 = zext i32 %10 to i64, !dbg !686
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !686
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !686
  %12 = load i32, ptr %flags.addr, align 4, !dbg !688
  %13 = load i64, ptr %size.addr, align 8, !dbg !689
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !690
  store ptr %call6, ptr %retval, align 8, !dbg !691
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !691

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !692
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !693
  %15 = load i32, ptr %flags.addr, align 4, !dbg !694
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !695
  store ptr %call8, ptr %retval, align 8, !dbg !696
  br label %return, !dbg !696

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !697
  ret ptr %16, !dbg !697
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !698 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !699 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !703, metadata !DIExpression()), !dbg !705
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !704, metadata !DIExpression()), !dbg !706
  %0 = load i64, ptr %size.addr, align 8, !dbg !707
  %tobool = icmp ne i64 %0, 0, !dbg !707
  br i1 %tobool, label %if.end, label %if.then, !dbg !709

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !710
  br label %return, !dbg !710

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !711
  %cmp = icmp ule i64 %1, 8, !dbg !713
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !714

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !715
  br label %return, !dbg !715

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !716
  %cmp3 = icmp ugt i64 %2, 64, !dbg !718
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !719

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !720
  %cmp4 = icmp ule i64 %3, 96, !dbg !721
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !722

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !723
  br label %return, !dbg !723

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !724
  %cmp7 = icmp ugt i64 %4, 128, !dbg !726
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !727

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !728
  %cmp9 = icmp ule i64 %5, 192, !dbg !729
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !730

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !731
  br label %return, !dbg !731

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !732
  %cmp12 = icmp ule i64 %6, 8, !dbg !734
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !735

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !736
  br label %return, !dbg !736

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !737
  %cmp15 = icmp ule i64 %7, 16, !dbg !739
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !740

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !741
  br label %return, !dbg !741

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !742
  %cmp18 = icmp ule i64 %8, 32, !dbg !744
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !745

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !746
  br label %return, !dbg !746

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !747
  %cmp21 = icmp ule i64 %9, 64, !dbg !749
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !750

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !751
  br label %return, !dbg !751

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !752
  %cmp24 = icmp ule i64 %10, 128, !dbg !754
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !755

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !756
  br label %return, !dbg !756

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !757
  %cmp27 = icmp ule i64 %11, 256, !dbg !759
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !760

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !761
  br label %return, !dbg !761

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !762
  %cmp30 = icmp ule i64 %12, 512, !dbg !764
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !765

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !766
  br label %return, !dbg !766

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !767
  %cmp33 = icmp ule i64 %13, 1024, !dbg !769
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !770

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !771
  br label %return, !dbg !771

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !772
  %cmp36 = icmp ule i64 %14, 2048, !dbg !774
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !775

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !776
  br label %return, !dbg !776

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !777
  %cmp39 = icmp ule i64 %15, 4096, !dbg !779
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !780

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !781
  br label %return, !dbg !781

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !782
  %cmp42 = icmp ule i64 %16, 8192, !dbg !784
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !785

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !786
  br label %return, !dbg !786

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !787
  %cmp45 = icmp ule i64 %17, 16384, !dbg !789
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !790

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !791
  br label %return, !dbg !791

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !792
  %cmp48 = icmp ule i64 %18, 32768, !dbg !794
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !795

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !796
  br label %return, !dbg !796

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !797
  %cmp51 = icmp ule i64 %19, 65536, !dbg !799
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !800

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !801
  br label %return, !dbg !801

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !802
  %cmp54 = icmp ule i64 %20, 131072, !dbg !804
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !805

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !806
  br label %return, !dbg !806

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !807
  %cmp57 = icmp ule i64 %21, 262144, !dbg !809
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !810

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !811
  br label %return, !dbg !811

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !812
  %cmp60 = icmp ule i64 %22, 524288, !dbg !814
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !815

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !816
  br label %return, !dbg !816

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !817
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !819
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !820

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !821
  br label %return, !dbg !821

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !822
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !824
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !825

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !826
  br label %return, !dbg !826

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !827, !range !829, !noundef !830
  %tobool69 = trunc i8 %25 to i1, !dbg !827
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !831

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !832

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #19, !dbg !833, !srcloc !836
  unreachable, !dbg !833

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !837

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !838

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !839

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !841

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !839

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #14, !dbg !843, !srcloc !845
  br label %do.end75, !dbg !843

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !839

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !846
  br label %return, !dbg !846

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !847
  ret i32 %26, !dbg !847
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !848 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !854 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !858, metadata !DIExpression()), !dbg !860
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !859, metadata !DIExpression()), !dbg !861
  %0 = load i32, ptr %flags.addr, align 4, !dbg !862
  %and = and i32 %0, 17, !dbg !862
  %cmp = icmp eq i32 %and, 0, !dbg !862
  %lnot = xor i1 %cmp, true, !dbg !862
  %lnot1 = xor i1 %lnot, true, !dbg !862
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !862
  %conv = sext i32 %lnot.ext to i64, !dbg !862
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !862
  %tobool = icmp ne i64 %expval, 0, !dbg !862
  br i1 %tobool, label %if.then, label %if.end, !dbg !864

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !865
  br label %return, !dbg !865

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !866
  %and2 = and i32 %1, 1, !dbg !868
  %tobool3 = icmp ne i32 %and2, 0, !dbg !868
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !869

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !870
  br label %return, !dbg !870

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !871
  br label %return, !dbg !871

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !873
  ret i32 %2, !dbg !873
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !874 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !875 dso_local void @__compiletime_assert_117() #12

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @variable_ffs(i32 noundef %x) #7 align 16 !dbg !878 {
entry:
  %x.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !882, metadata !DIExpression()), !dbg !884
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #14, !dbg !885
  call void @llvm.dbg.declare(metadata ptr %r, metadata !883, metadata !DIExpression()), !dbg !886
  %0 = load i32, ptr %x.addr, align 4, !dbg !887
  %1 = call i32 asm "bsfl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 -1) #17, !dbg !888, !srcloc !889
  store i32 %1, ptr %r, align 4, !dbg !888
  %2 = load i32, ptr %r, align 4, !dbg !890
  %add = add i32 %2, 1, !dbg !891
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #14, !dbg !892
  ret i32 %add, !dbg !893
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !894 dso_local void @kfree(ptr noundef) #13

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { nounwind memory(read) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 480, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 21)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !8, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/i915/.i915_syncmap.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -Wall -Wextra -Wno-format-security -Wno-unused-parameter -Wno-type-limits -Wno-missing-field-initializers -Wno-sign-compare -Wno-shift-negative-value -Wunused-but-set-variable -Wno-frame-address -I ./drivers/gpu/drm/i915 -D KBUILD_MODFILE=\22drivers/gpu/drm/i915/i915\22 -D KBUILD_BASENAME=\22i915_syncmap\22 -D KBUILD_MODNAME=\22i915\22 -D __KBUILD_MODNAME=kmod_i915 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/i915/i915_syncmap.ll drivers/gpu/drm/i915/i915_syncmap.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !25, globals: !48, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "drivers/gpu/drm/i915/i915_syncmap.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b4033413712cb752cdecd882fb21d66")
!9 = !{!10, !16}
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 10, baseType: !12, size: 32, elements: !13)
!11 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "false", value: 0)
!15 = !DIEnumerator(name: "true", value: 1)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !2, line: 364, baseType: !12, size: 32, elements: !17)
!17 = !{!18, !19, !20, !21, !22, !23, !24}
!18 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!19 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!20 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!21 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!22 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!23 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!24 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!25 = !{!26, !39, !42, !45, !12, !47}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i915_syncmap", file: !8, line: 73, size: 192, elements: !29)
!29 = !{!30, !36, !37, !38}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !28, file: !8, line: 74, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !32, line: 23, baseType: !33)
!32 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !34, line: 31, baseType: !35)
!34 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!35 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !28, file: !8, line: 75, baseType: !12, size: 32, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !28, file: !8, line: 76, baseType: !12, size: 32, offset: 96)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !28, file: !8, line: 77, baseType: !27, size: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !32, line: 20, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !34, line: 26, baseType: !41)
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !32, line: 21, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !34, line: 27, baseType: !12)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !46, line: 154, baseType: !12)
!46 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!47 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!48 = !{!0}
!49 = !{i32 7, !"Dwarf Version", i32 5}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 8, !"cf-protection-branch", i32 1}
!53 = !{i32 4, !"function_return_thunk_extern", i32 1}
!54 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!55 = !{i32 1, !"Code Model", i32 2}
!56 = !{i32 1, !"override-stack-alignment", i32 8}
!57 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!58 = distinct !DISubprogram(name: "i915_syncmap_init", scope: !8, file: !8, line: 91, type: !59, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !61)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !26}
!61 = !{!62}
!62 = !DILocalVariable(name: "root", arg: 1, scope: !58, file: !8, line: 91, type: !26)
!63 = !DILocation(line: 91, column: 46, scope: !58)
!64 = !DILocation(line: 93, column: 2, scope: !58)
!65 = !DILocation(line: 93, column: 2, scope: !66)
!66 = distinct !DILexicalBlock(scope: !58, file: !8, line: 93, column: 2)
!67 = !DILocation(line: 94, column: 2, scope: !58)
!68 = !DILocation(line: 94, column: 2, scope: !69)
!69 = distinct !DILexicalBlock(scope: !58, file: !8, line: 94, column: 2)
!70 = !DILocation(line: 95, column: 2, scope: !58)
!71 = !DILocation(line: 95, column: 2, scope: !72)
!72 = distinct !DILexicalBlock(scope: !58, file: !8, line: 95, column: 2)
!73 = !DILocation(line: 96, column: 3, scope: !58)
!74 = !DILocation(line: 96, column: 8, scope: !58)
!75 = !DILocation(line: 97, column: 1, scope: !58)
!76 = distinct !DISubprogram(name: "i915_syncmap_is_later", scope: !8, file: !8, line: 154, type: !77, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !81)
!77 = !DISubroutineType(types: !78)
!78 = !{!79, !26, !31, !43}
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !46, line: 35, baseType: !80)
!80 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!81 = !{!82, !83, !84, !85, !86, !87}
!82 = !DILocalVariable(name: "root", arg: 1, scope: !76, file: !8, line: 154, type: !26)
!83 = !DILocalVariable(name: "id", arg: 2, scope: !76, file: !8, line: 154, type: !31)
!84 = !DILocalVariable(name: "seqno", arg: 3, scope: !76, file: !8, line: 154, type: !43)
!85 = !DILocalVariable(name: "p", scope: !76, file: !8, line: 156, type: !27)
!86 = !DILocalVariable(name: "idx", scope: !76, file: !8, line: 157, type: !12)
!87 = !DILabel(scope: !76, name: "found", file: !8, line: 190)
!88 = !DILocation(line: 154, column: 50, scope: !76)
!89 = !DILocation(line: 154, column: 60, scope: !76)
!90 = !DILocation(line: 154, column: 68, scope: !76)
!91 = !DILocation(line: 156, column: 2, scope: !76)
!92 = !DILocation(line: 156, column: 23, scope: !76)
!93 = !DILocation(line: 157, column: 2, scope: !76)
!94 = !DILocation(line: 157, column: 15, scope: !76)
!95 = !DILocation(line: 159, column: 7, scope: !76)
!96 = !DILocation(line: 159, column: 6, scope: !76)
!97 = !DILocation(line: 159, column: 4, scope: !76)
!98 = !DILocation(line: 160, column: 7, scope: !99)
!99 = distinct !DILexicalBlock(scope: !76, file: !8, line: 160, column: 6)
!100 = !DILocation(line: 160, column: 6, scope: !76)
!101 = !DILocation(line: 161, column: 3, scope: !99)
!102 = !DILocation(line: 163, column: 6, scope: !103)
!103 = distinct !DILexicalBlock(scope: !76, file: !8, line: 163, column: 6)
!104 = !DILocation(line: 163, column: 6, scope: !76)
!105 = !DILocation(line: 164, column: 3, scope: !103)
!106 = !DILocation(line: 167, column: 2, scope: !76)
!107 = !DILocation(line: 168, column: 7, scope: !108)
!108 = distinct !DILexicalBlock(scope: !76, file: !8, line: 167, column: 5)
!109 = !DILocation(line: 168, column: 10, scope: !108)
!110 = !DILocation(line: 168, column: 5, scope: !108)
!111 = !DILocation(line: 169, column: 8, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !8, line: 169, column: 7)
!113 = !DILocation(line: 169, column: 7, scope: !108)
!114 = !DILocation(line: 170, column: 4, scope: !112)
!115 = !DILocation(line: 172, column: 28, scope: !116)
!116 = distinct !DILexicalBlock(scope: !108, file: !8, line: 172, column: 7)
!117 = !DILocation(line: 172, column: 31, scope: !116)
!118 = !DILocation(line: 172, column: 7, scope: !116)
!119 = !DILocation(line: 172, column: 38, scope: !116)
!120 = !DILocation(line: 172, column: 41, scope: !116)
!121 = !DILocation(line: 172, column: 35, scope: !116)
!122 = !DILocation(line: 172, column: 7, scope: !108)
!123 = !DILocation(line: 173, column: 4, scope: !116)
!124 = !DILocation(line: 174, column: 2, scope: !108)
!125 = distinct !{!125, !106, !126, !127}
!126 = !DILocation(line: 174, column: 12, scope: !76)
!127 = !{!"llvm.loop.unroll.disable"}
!128 = !DILocation(line: 177, column: 2, scope: !76)
!129 = !DILocation(line: 178, column: 8, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !8, line: 178, column: 7)
!131 = distinct !DILexicalBlock(scope: !76, file: !8, line: 177, column: 5)
!132 = !DILocation(line: 178, column: 11, scope: !130)
!133 = !DILocation(line: 178, column: 7, scope: !131)
!134 = !DILocation(line: 179, column: 4, scope: !130)
!135 = !DILocation(line: 181, column: 20, scope: !131)
!136 = !DILocation(line: 181, column: 7, scope: !131)
!137 = !DILocation(line: 181, column: 41, scope: !131)
!138 = !DILocation(line: 181, column: 44, scope: !131)
!139 = !DILocation(line: 181, column: 23, scope: !131)
!140 = !DILocation(line: 181, column: 5, scope: !131)
!141 = !DILocation(line: 182, column: 8, scope: !142)
!142 = distinct !DILexicalBlock(scope: !131, file: !8, line: 182, column: 7)
!143 = !DILocation(line: 182, column: 7, scope: !131)
!144 = !DILocation(line: 183, column: 4, scope: !142)
!145 = !DILocation(line: 185, column: 28, scope: !146)
!146 = distinct !DILexicalBlock(scope: !131, file: !8, line: 185, column: 7)
!147 = !DILocation(line: 185, column: 31, scope: !146)
!148 = !DILocation(line: 185, column: 7, scope: !146)
!149 = !DILocation(line: 185, column: 38, scope: !146)
!150 = !DILocation(line: 185, column: 41, scope: !146)
!151 = !DILocation(line: 185, column: 35, scope: !146)
!152 = !DILocation(line: 185, column: 7, scope: !131)
!153 = !DILocation(line: 186, column: 4, scope: !146)
!154 = !DILocation(line: 187, column: 2, scope: !131)
!155 = distinct !{!155, !128, !156, !127}
!156 = !DILocation(line: 187, column: 12, scope: !76)
!157 = !DILocation(line: 189, column: 10, scope: !76)
!158 = !DILocation(line: 189, column: 3, scope: !76)
!159 = !DILocation(line: 189, column: 8, scope: !76)
!160 = !DILocation(line: 189, column: 2, scope: !76)
!161 = !DILocation(line: 190, column: 1, scope: !76)
!162 = !DILocation(line: 191, column: 24, scope: !76)
!163 = !DILocation(line: 191, column: 27, scope: !76)
!164 = !DILocation(line: 191, column: 8, scope: !76)
!165 = !DILocation(line: 191, column: 6, scope: !76)
!166 = !DILocation(line: 192, column: 8, scope: !167)
!167 = distinct !DILexicalBlock(scope: !76, file: !8, line: 192, column: 6)
!168 = !DILocation(line: 192, column: 11, scope: !167)
!169 = !DILocation(line: 192, column: 20, scope: !167)
!170 = !DILocation(line: 192, column: 18, scope: !167)
!171 = !DILocation(line: 192, column: 6, scope: !76)
!172 = !DILocation(line: 193, column: 3, scope: !167)
!173 = !DILocation(line: 195, column: 34, scope: !76)
!174 = !DILocation(line: 195, column: 21, scope: !76)
!175 = !DILocation(line: 195, column: 37, scope: !76)
!176 = !DILocation(line: 195, column: 43, scope: !76)
!177 = !DILocation(line: 195, column: 9, scope: !76)
!178 = !DILocation(line: 195, column: 2, scope: !76)
!179 = !DILocation(line: 196, column: 1, scope: !76)
!180 = distinct !DISubprogram(name: "__sync_leaf_prefix", scope: !8, file: !8, line: 129, type: !181, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !185)
!181 = !DISubroutineType(types: !182)
!182 = !{!31, !183, !31}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!185 = !{!186, !187}
!186 = !DILocalVariable(name: "p", arg: 1, scope: !180, file: !8, line: 129, type: !183)
!187 = !DILocalVariable(name: "id", arg: 2, scope: !180, file: !8, line: 129, type: !31)
!188 = !DILocation(line: 129, column: 65, scope: !180)
!189 = !DILocation(line: 129, column: 72, scope: !180)
!190 = !DILocation(line: 132, column: 9, scope: !180)
!191 = !DILocation(line: 132, column: 12, scope: !180)
!192 = !DILocation(line: 132, column: 2, scope: !180)
!193 = distinct !DISubprogram(name: "__sync_branch_prefix", scope: !8, file: !8, line: 124, type: !181, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !194)
!194 = !{!195, !196}
!195 = !DILocalVariable(name: "p", arg: 1, scope: !193, file: !8, line: 124, type: !183)
!196 = !DILocalVariable(name: "id", arg: 2, scope: !193, file: !8, line: 124, type: !31)
!197 = !DILocation(line: 124, column: 67, scope: !193)
!198 = !DILocation(line: 124, column: 74, scope: !193)
!199 = !DILocation(line: 126, column: 9, scope: !193)
!200 = !DILocation(line: 126, column: 15, scope: !193)
!201 = !DILocation(line: 126, column: 18, scope: !193)
!202 = !DILocation(line: 126, column: 12, scope: !193)
!203 = !DILocation(line: 126, column: 25, scope: !193)
!204 = !DILocation(line: 126, column: 2, scope: !193)
!205 = distinct !DISubprogram(name: "__sync_child", scope: !8, file: !8, line: 105, type: !206, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !208)
!206 = !DISubroutineType(types: !207)
!207 = !{!26, !27}
!208 = !{!209}
!209 = !DILocalVariable(name: "p", arg: 1, scope: !205, file: !8, line: 105, type: !27)
!210 = !DILocation(line: 105, column: 71, scope: !205)
!211 = !DILocation(line: 108, column: 34, scope: !205)
!212 = !DILocation(line: 108, column: 36, scope: !205)
!213 = !DILocation(line: 108, column: 2, scope: !205)
!214 = distinct !DISubprogram(name: "__sync_branch_idx", scope: !8, file: !8, line: 112, type: !215, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !217)
!215 = !DISubroutineType(types: !216)
!216 = !{!12, !183, !31}
!217 = !{!218, !219}
!218 = !DILocalVariable(name: "p", arg: 1, scope: !214, file: !8, line: 112, type: !183)
!219 = !DILocalVariable(name: "id", arg: 2, scope: !214, file: !8, line: 112, type: !31)
!220 = !DILocation(line: 112, column: 46, scope: !214)
!221 = !DILocation(line: 112, column: 53, scope: !214)
!222 = !DILocation(line: 114, column: 10, scope: !214)
!223 = !DILocation(line: 114, column: 16, scope: !214)
!224 = !DILocation(line: 114, column: 19, scope: !214)
!225 = !DILocation(line: 114, column: 13, scope: !214)
!226 = !DILocation(line: 114, column: 27, scope: !214)
!227 = !DILocation(line: 114, column: 9, scope: !214)
!228 = !DILocation(line: 114, column: 2, scope: !214)
!229 = distinct !DISubprogram(name: "__sync_leaf_idx", scope: !8, file: !8, line: 118, type: !215, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !230)
!230 = !{!231, !232}
!231 = !DILocalVariable(name: "p", arg: 1, scope: !229, file: !8, line: 118, type: !183)
!232 = !DILocalVariable(name: "id", arg: 2, scope: !229, file: !8, line: 118, type: !31)
!233 = !DILocation(line: 118, column: 44, scope: !229)
!234 = !DILocation(line: 118, column: 51, scope: !229)
!235 = !DILocation(line: 121, column: 9, scope: !229)
!236 = !DILocation(line: 121, column: 12, scope: !229)
!237 = !DILocation(line: 121, column: 2, scope: !229)
!238 = distinct !DISubprogram(name: "seqno_later", scope: !8, file: !8, line: 135, type: !239, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !241)
!239 = !DISubroutineType(types: !240)
!240 = !{!79, !43, !43}
!241 = !{!242, !243}
!242 = !DILocalVariable(name: "a", arg: 1, scope: !238, file: !8, line: 135, type: !43)
!243 = !DILocalVariable(name: "b", arg: 2, scope: !238, file: !8, line: 135, type: !43)
!244 = !DILocation(line: 135, column: 36, scope: !238)
!245 = !DILocation(line: 135, column: 43, scope: !238)
!246 = !DILocation(line: 137, column: 15, scope: !238)
!247 = !DILocation(line: 137, column: 19, scope: !238)
!248 = !DILocation(line: 137, column: 17, scope: !238)
!249 = !DILocation(line: 137, column: 22, scope: !238)
!250 = !DILocation(line: 137, column: 2, scope: !238)
!251 = distinct !DISubprogram(name: "__sync_seqno", scope: !8, file: !8, line: 99, type: !252, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !254)
!252 = !DISubroutineType(types: !253)
!253 = !{!42, !27}
!254 = !{!255}
!255 = !DILocalVariable(name: "p", arg: 1, scope: !251, file: !8, line: 99, type: !27)
!256 = !DILocation(line: 99, column: 54, scope: !251)
!257 = !DILocation(line: 102, column: 17, scope: !251)
!258 = !DILocation(line: 102, column: 19, scope: !251)
!259 = !DILocation(line: 102, column: 2, scope: !251)
!260 = distinct !DISubprogram(name: "i915_syncmap_set", scope: !8, file: !8, line: 353, type: !261, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !263)
!261 = !DISubroutineType(types: !262)
!262 = !{!41, !26, !31, !43}
!263 = !{!264, !265, !266, !267}
!264 = !DILocalVariable(name: "root", arg: 1, scope: !260, file: !8, line: 353, type: !26)
!265 = !DILocalVariable(name: "id", arg: 2, scope: !260, file: !8, line: 353, type: !31)
!266 = !DILocalVariable(name: "seqno", arg: 3, scope: !260, file: !8, line: 353, type: !43)
!267 = !DILocalVariable(name: "p", scope: !260, file: !8, line: 355, type: !27)
!268 = !DILocation(line: 353, column: 44, scope: !260)
!269 = !DILocation(line: 353, column: 54, scope: !260)
!270 = !DILocation(line: 353, column: 62, scope: !260)
!271 = !DILocation(line: 355, column: 2, scope: !260)
!272 = !DILocation(line: 355, column: 23, scope: !260)
!273 = !DILocation(line: 355, column: 28, scope: !260)
!274 = !DILocation(line: 355, column: 27, scope: !260)
!275 = !DILocation(line: 361, column: 6, scope: !276)
!276 = distinct !DILexicalBlock(scope: !260, file: !8, line: 361, column: 6)
!277 = !DILocation(line: 0, scope: !276)
!278 = !DILocation(line: 361, column: 6, scope: !260)
!279 = !DILocation(line: 362, column: 20, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !8, line: 361, column: 59)
!281 = !DILocation(line: 362, column: 23, scope: !280)
!282 = !DILocation(line: 362, column: 27, scope: !280)
!283 = !DILocation(line: 362, column: 3, scope: !280)
!284 = !DILocation(line: 363, column: 3, scope: !280)
!285 = !DILocation(line: 366, column: 20, scope: !260)
!286 = !DILocation(line: 366, column: 26, scope: !260)
!287 = !DILocation(line: 366, column: 30, scope: !260)
!288 = !DILocation(line: 366, column: 9, scope: !260)
!289 = !DILocation(line: 366, column: 2, scope: !260)
!290 = !DILocation(line: 367, column: 1, scope: !260)
!291 = distinct !DISubprogram(name: "__sync_set_seqno", scope: !8, file: !8, line: 214, type: !292, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !294)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !27, !31, !43}
!294 = !{!295, !296, !297, !298}
!295 = !DILocalVariable(name: "p", arg: 1, scope: !291, file: !8, line: 214, type: !27)
!296 = !DILocalVariable(name: "id", arg: 2, scope: !291, file: !8, line: 214, type: !31)
!297 = !DILocalVariable(name: "seqno", arg: 3, scope: !291, file: !8, line: 214, type: !43)
!298 = !DILocalVariable(name: "idx", scope: !291, file: !8, line: 216, type: !12)
!299 = !DILocation(line: 214, column: 58, scope: !291)
!300 = !DILocation(line: 214, column: 65, scope: !291)
!301 = !DILocation(line: 214, column: 73, scope: !291)
!302 = !DILocation(line: 216, column: 2, scope: !291)
!303 = !DILocation(line: 216, column: 15, scope: !291)
!304 = !DILocation(line: 216, column: 37, scope: !291)
!305 = !DILocation(line: 216, column: 40, scope: !291)
!306 = !DILocation(line: 216, column: 21, scope: !291)
!307 = !DILocation(line: 218, column: 15, scope: !291)
!308 = !DILocation(line: 218, column: 2, scope: !291)
!309 = !DILocation(line: 218, column: 5, scope: !291)
!310 = !DILocation(line: 218, column: 12, scope: !291)
!311 = !DILocation(line: 219, column: 25, scope: !291)
!312 = !DILocation(line: 219, column: 15, scope: !291)
!313 = !DILocation(line: 219, column: 2, scope: !291)
!314 = !DILocation(line: 219, column: 18, scope: !291)
!315 = !DILocation(line: 219, column: 23, scope: !291)
!316 = !DILocation(line: 220, column: 1, scope: !291)
!317 = distinct !DISubprogram(name: "__sync_set", scope: !8, file: !8, line: 230, type: !261, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !318)
!318 = !{!319, !320, !321, !322, !323, !324, !326, !329}
!319 = !DILocalVariable(name: "root", arg: 1, scope: !317, file: !8, line: 230, type: !26)
!320 = !DILocalVariable(name: "id", arg: 2, scope: !317, file: !8, line: 230, type: !31)
!321 = !DILocalVariable(name: "seqno", arg: 3, scope: !317, file: !8, line: 230, type: !43)
!322 = !DILocalVariable(name: "p", scope: !317, file: !8, line: 232, type: !27)
!323 = !DILocalVariable(name: "idx", scope: !317, file: !8, line: 233, type: !12)
!324 = !DILocalVariable(name: "next", scope: !325, file: !8, line: 279, type: !27)
!325 = distinct !DILexicalBlock(scope: !317, file: !8, line: 278, column: 5)
!326 = !DILocalVariable(name: "above", scope: !327, file: !8, line: 282, type: !12)
!327 = distinct !DILexicalBlock(scope: !328, file: !8, line: 281, column: 49)
!328 = distinct !DILexicalBlock(scope: !325, file: !8, line: 281, column: 7)
!329 = !DILabel(scope: !317, name: "found", file: !8, line: 333)
!330 = !DILocation(line: 230, column: 54, scope: !317)
!331 = !DILocation(line: 230, column: 64, scope: !317)
!332 = !DILocation(line: 230, column: 72, scope: !317)
!333 = !DILocation(line: 232, column: 2, scope: !317)
!334 = !DILocation(line: 232, column: 23, scope: !317)
!335 = !DILocation(line: 232, column: 28, scope: !317)
!336 = !DILocation(line: 232, column: 27, scope: !317)
!337 = !DILocation(line: 233, column: 2, scope: !317)
!338 = !DILocation(line: 233, column: 15, scope: !317)
!339 = !DILocation(line: 235, column: 7, scope: !340)
!340 = distinct !DILexicalBlock(scope: !317, file: !8, line: 235, column: 6)
!341 = !DILocation(line: 235, column: 6, scope: !317)
!342 = !DILocation(line: 236, column: 31, scope: !343)
!343 = distinct !DILexicalBlock(scope: !340, file: !8, line: 235, column: 10)
!344 = !DILocation(line: 236, column: 7, scope: !343)
!345 = !DILocation(line: 236, column: 5, scope: !343)
!346 = !DILocation(line: 237, column: 7, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !8, line: 237, column: 7)
!348 = !DILocation(line: 237, column: 7, scope: !343)
!349 = !DILocation(line: 238, column: 4, scope: !347)
!350 = !DILocation(line: 240, column: 3, scope: !343)
!351 = !DILocation(line: 247, column: 2, scope: !317)
!352 = !DILocation(line: 248, column: 8, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !8, line: 248, column: 7)
!354 = distinct !DILexicalBlock(scope: !317, file: !8, line: 247, column: 5)
!355 = !DILocation(line: 248, column: 11, scope: !353)
!356 = !DILocation(line: 248, column: 7, scope: !354)
!357 = !DILocation(line: 249, column: 4, scope: !353)
!358 = !DILocation(line: 251, column: 7, scope: !354)
!359 = !DILocation(line: 251, column: 10, scope: !354)
!360 = !DILocation(line: 251, column: 5, scope: !354)
!361 = !DILocation(line: 253, column: 28, scope: !362)
!362 = distinct !DILexicalBlock(scope: !354, file: !8, line: 253, column: 7)
!363 = !DILocation(line: 253, column: 31, scope: !362)
!364 = !DILocation(line: 253, column: 7, scope: !362)
!365 = !DILocation(line: 253, column: 38, scope: !362)
!366 = !DILocation(line: 253, column: 41, scope: !362)
!367 = !DILocation(line: 253, column: 35, scope: !362)
!368 = !DILocation(line: 253, column: 7, scope: !354)
!369 = !DILocation(line: 254, column: 4, scope: !362)
!370 = !DILocation(line: 255, column: 2, scope: !354)
!371 = distinct !{!371, !351, !372, !127}
!372 = !DILocation(line: 255, column: 12, scope: !317)
!373 = !DILocation(line: 278, column: 2, scope: !317)
!374 = !DILocation(line: 279, column: 3, scope: !325)
!375 = !DILocation(line: 279, column: 24, scope: !325)
!376 = !DILocation(line: 281, column: 28, scope: !328)
!377 = !DILocation(line: 281, column: 31, scope: !328)
!378 = !DILocation(line: 281, column: 7, scope: !328)
!379 = !DILocation(line: 281, column: 38, scope: !328)
!380 = !DILocation(line: 281, column: 41, scope: !328)
!381 = !DILocation(line: 281, column: 35, scope: !328)
!382 = !DILocation(line: 281, column: 7, scope: !325)
!383 = !DILocation(line: 282, column: 4, scope: !327)
!384 = !DILocation(line: 282, column: 17, scope: !327)
!385 = !DILocation(line: 285, column: 11, scope: !327)
!386 = !DILocation(line: 285, column: 9, scope: !327)
!387 = !DILocation(line: 287, column: 8, scope: !388)
!388 = distinct !DILexicalBlock(scope: !327, file: !8, line: 287, column: 8)
!389 = !DILocation(line: 287, column: 8, scope: !327)
!390 = !DILocation(line: 288, column: 5, scope: !388)
!391 = !DILocation(line: 291, column: 39, scope: !327)
!392 = !DILocation(line: 291, column: 42, scope: !327)
!393 = !DILocation(line: 291, column: 18, scope: !327)
!394 = !DILocation(line: 291, column: 48, scope: !327)
!395 = !DILocation(line: 291, column: 51, scope: !327)
!396 = !DILocation(line: 291, column: 46, scope: !327)
!397 = !DILocation(line: 291, column: 12, scope: !327)
!398 = !DILocation(line: 291, column: 10, scope: !327)
!399 = !DILocation(line: 292, column: 12, scope: !327)
!400 = !DILocation(line: 292, column: 10, scope: !327)
!401 = !DILocation(line: 293, column: 19, scope: !327)
!402 = !DILocation(line: 293, column: 27, scope: !327)
!403 = !DILocation(line: 293, column: 30, scope: !327)
!404 = !DILocation(line: 293, column: 25, scope: !327)
!405 = !DILocation(line: 293, column: 4, scope: !327)
!406 = !DILocation(line: 293, column: 10, scope: !327)
!407 = !DILocation(line: 293, column: 17, scope: !327)
!408 = !DILocation(line: 294, column: 40, scope: !327)
!409 = !DILocation(line: 294, column: 46, scope: !327)
!410 = !DILocation(line: 294, column: 19, scope: !327)
!411 = !DILocation(line: 294, column: 4, scope: !327)
!412 = !DILocation(line: 294, column: 10, scope: !327)
!413 = !DILocation(line: 294, column: 17, scope: !327)
!414 = !DILocation(line: 297, column: 8, scope: !415)
!415 = distinct !DILexicalBlock(scope: !327, file: !8, line: 297, column: 8)
!416 = !DILocation(line: 297, column: 11, scope: !415)
!417 = !DILocation(line: 297, column: 8, scope: !327)
!418 = !DILocation(line: 298, column: 29, scope: !419)
!419 = distinct !DILexicalBlock(scope: !415, file: !8, line: 297, column: 19)
!420 = !DILocation(line: 298, column: 32, scope: !419)
!421 = !DILocation(line: 298, column: 40, scope: !419)
!422 = !DILocation(line: 298, column: 11, scope: !419)
!423 = !DILocation(line: 298, column: 9, scope: !419)
!424 = !DILocation(line: 299, column: 36, scope: !419)
!425 = !DILocation(line: 299, column: 18, scope: !419)
!426 = !DILocation(line: 299, column: 21, scope: !419)
!427 = !DILocation(line: 299, column: 5, scope: !419)
!428 = !DILocation(line: 299, column: 29, scope: !419)
!429 = !DILocation(line: 299, column: 34, scope: !419)
!430 = !DILocation(line: 301, column: 4, scope: !419)
!431 = !DILocation(line: 302, column: 19, scope: !327)
!432 = !DILocation(line: 302, column: 22, scope: !327)
!433 = !DILocation(line: 302, column: 4, scope: !327)
!434 = !DILocation(line: 302, column: 10, scope: !327)
!435 = !DILocation(line: 302, column: 17, scope: !327)
!436 = !DILocation(line: 305, column: 10, scope: !327)
!437 = !DILocation(line: 305, column: 13, scope: !327)
!438 = !DILocation(line: 305, column: 24, scope: !327)
!439 = !DILocation(line: 305, column: 30, scope: !327)
!440 = !DILocation(line: 305, column: 20, scope: !327)
!441 = !DILocation(line: 305, column: 39, scope: !327)
!442 = !DILocation(line: 305, column: 8, scope: !327)
!443 = !DILocation(line: 306, column: 21, scope: !327)
!444 = !DILocation(line: 306, column: 27, scope: !327)
!445 = !DILocation(line: 306, column: 32, scope: !327)
!446 = !DILocation(line: 306, column: 4, scope: !327)
!447 = !DILocation(line: 307, column: 16, scope: !327)
!448 = !DILocation(line: 307, column: 4, scope: !327)
!449 = !DILocation(line: 307, column: 7, scope: !327)
!450 = !DILocation(line: 307, column: 14, scope: !327)
!451 = !DILocation(line: 310, column: 8, scope: !327)
!452 = !DILocation(line: 310, column: 6, scope: !327)
!453 = !DILocation(line: 311, column: 3, scope: !328)
!454 = !DILocation(line: 311, column: 3, scope: !327)
!455 = !DILocation(line: 312, column: 9, scope: !456)
!456 = distinct !DILexicalBlock(scope: !457, file: !8, line: 312, column: 8)
!457 = distinct !DILexicalBlock(scope: !328, file: !8, line: 311, column: 10)
!458 = !DILocation(line: 312, column: 12, scope: !456)
!459 = !DILocation(line: 312, column: 8, scope: !457)
!460 = !DILocation(line: 313, column: 5, scope: !456)
!461 = !DILocation(line: 318, column: 27, scope: !325)
!462 = !DILocation(line: 318, column: 30, scope: !325)
!463 = !DILocation(line: 318, column: 9, scope: !325)
!464 = !DILocation(line: 318, column: 7, scope: !325)
!465 = !DILocation(line: 319, column: 23, scope: !325)
!466 = !DILocation(line: 319, column: 10, scope: !325)
!467 = !DILocation(line: 319, column: 26, scope: !325)
!468 = !DILocation(line: 319, column: 8, scope: !325)
!469 = !DILocation(line: 320, column: 8, scope: !470)
!470 = distinct !DILexicalBlock(scope: !325, file: !8, line: 320, column: 7)
!471 = !DILocation(line: 320, column: 7, scope: !325)
!472 = !DILocation(line: 321, column: 29, scope: !473)
!473 = distinct !DILexicalBlock(scope: !470, file: !8, line: 320, column: 14)
!474 = !DILocation(line: 321, column: 32, scope: !473)
!475 = !DILocation(line: 321, column: 11, scope: !473)
!476 = !DILocation(line: 321, column: 9, scope: !473)
!477 = !DILocation(line: 322, column: 8, scope: !478)
!478 = distinct !DILexicalBlock(scope: !473, file: !8, line: 322, column: 8)
!479 = !DILocation(line: 322, column: 8, scope: !473)
!480 = !DILocation(line: 323, column: 5, scope: !478)
!481 = !DILocation(line: 325, column: 21, scope: !473)
!482 = !DILocation(line: 325, column: 24, scope: !473)
!483 = !DILocation(line: 325, column: 29, scope: !473)
!484 = !DILocation(line: 325, column: 4, scope: !473)
!485 = !DILocation(line: 326, column: 8, scope: !473)
!486 = !DILocation(line: 326, column: 6, scope: !473)
!487 = !DILocation(line: 327, column: 4, scope: !473)
!488 = !DILocation(line: 330, column: 7, scope: !325)
!489 = !DILocation(line: 330, column: 5, scope: !325)
!490 = !DILocation(line: 331, column: 2, scope: !317)
!491 = !DILocation(line: 331, column: 2, scope: !325)
!492 = distinct !{!492, !373, !493, !127}
!493 = !DILocation(line: 331, column: 12, scope: !317)
!494 = !DILocation(line: 333, column: 1, scope: !317)
!495 = !DILocation(line: 335, column: 19, scope: !317)
!496 = !DILocation(line: 335, column: 22, scope: !317)
!497 = !DILocation(line: 335, column: 26, scope: !317)
!498 = !DILocation(line: 335, column: 2, scope: !317)
!499 = !DILocation(line: 336, column: 10, scope: !317)
!500 = !DILocation(line: 336, column: 3, scope: !317)
!501 = !DILocation(line: 336, column: 8, scope: !317)
!502 = !DILocation(line: 337, column: 2, scope: !317)
!503 = !DILocation(line: 338, column: 1, scope: !317)
!504 = distinct !DISubprogram(name: "i915_syncmap_free", scope: !8, file: !8, line: 395, type: !59, scopeLine: 396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !505)
!505 = !{!506, !507}
!506 = !DILocalVariable(name: "root", arg: 1, scope: !504, file: !8, line: 395, type: !26)
!507 = !DILocalVariable(name: "p", scope: !504, file: !8, line: 397, type: !27)
!508 = !DILocation(line: 395, column: 46, scope: !504)
!509 = !DILocation(line: 397, column: 2, scope: !504)
!510 = !DILocation(line: 397, column: 23, scope: !504)
!511 = !DILocation(line: 399, column: 7, scope: !504)
!512 = !DILocation(line: 399, column: 6, scope: !504)
!513 = !DILocation(line: 399, column: 4, scope: !504)
!514 = !DILocation(line: 400, column: 7, scope: !515)
!515 = distinct !DILexicalBlock(scope: !504, file: !8, line: 400, column: 6)
!516 = !DILocation(line: 400, column: 6, scope: !504)
!517 = !DILocation(line: 401, column: 3, scope: !515)
!518 = !DILocation(line: 403, column: 2, scope: !504)
!519 = !DILocation(line: 403, column: 9, scope: !504)
!520 = !DILocation(line: 403, column: 12, scope: !504)
!521 = !DILocation(line: 404, column: 7, scope: !504)
!522 = !DILocation(line: 404, column: 10, scope: !504)
!523 = !DILocation(line: 404, column: 5, scope: !504)
!524 = distinct !{!524, !518, !522, !525, !127}
!525 = !{!"llvm.loop.mustprogress"}
!526 = !DILocation(line: 406, column: 14, scope: !504)
!527 = !DILocation(line: 406, column: 2, scope: !504)
!528 = !DILocation(line: 407, column: 3, scope: !504)
!529 = !DILocation(line: 407, column: 8, scope: !504)
!530 = !DILocation(line: 408, column: 1, scope: !504)
!531 = distinct !DISubprogram(name: "__sync_free", scope: !8, file: !8, line: 369, type: !532, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !534)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !27}
!534 = !{!535, !536}
!535 = !DILocalVariable(name: "p", arg: 1, scope: !531, file: !8, line: 369, type: !27)
!536 = !DILocalVariable(name: "i", scope: !537, file: !8, line: 372, type: !12)
!537 = distinct !DILexicalBlock(scope: !538, file: !8, line: 371, column: 17)
!538 = distinct !DILexicalBlock(scope: !531, file: !8, line: 371, column: 6)
!539 = !DILocation(line: 369, column: 46, scope: !531)
!540 = !DILocation(line: 371, column: 6, scope: !538)
!541 = !DILocation(line: 371, column: 9, scope: !538)
!542 = !DILocation(line: 371, column: 6, scope: !531)
!543 = !DILocation(line: 372, column: 3, scope: !537)
!544 = !DILocation(line: 372, column: 16, scope: !537)
!545 = !DILocation(line: 374, column: 3, scope: !537)
!546 = !DILocation(line: 374, column: 15, scope: !537)
!547 = !DILocation(line: 374, column: 13, scope: !537)
!548 = !DILocation(line: 375, column: 24, scope: !549)
!549 = distinct !DILexicalBlock(scope: !537, file: !8, line: 374, column: 32)
!550 = !DILocation(line: 375, column: 21, scope: !549)
!551 = !DILocation(line: 375, column: 4, scope: !549)
!552 = !DILocation(line: 375, column: 7, scope: !549)
!553 = !DILocation(line: 375, column: 14, scope: !549)
!554 = !DILocation(line: 376, column: 29, scope: !549)
!555 = !DILocation(line: 376, column: 16, scope: !549)
!556 = !DILocation(line: 376, column: 32, scope: !549)
!557 = !DILocation(line: 376, column: 34, scope: !549)
!558 = !DILocation(line: 376, column: 4, scope: !549)
!559 = distinct !{!559, !545, !560, !525, !127}
!560 = !DILocation(line: 377, column: 3, scope: !537)
!561 = !DILocation(line: 378, column: 2, scope: !538)
!562 = !DILocation(line: 378, column: 2, scope: !537)
!563 = !DILocation(line: 380, column: 8, scope: !531)
!564 = !DILocation(line: 380, column: 2, scope: !531)
!565 = !DILocation(line: 381, column: 1, scope: !531)
!566 = distinct !DISubprogram(name: "__sync_alloc_leaf", scope: !8, file: !8, line: 199, type: !567, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !569)
!567 = !DISubroutineType(types: !568)
!568 = !{!27, !27, !31}
!569 = !{!570, !571, !572}
!570 = !DILocalVariable(name: "parent", arg: 1, scope: !566, file: !8, line: 199, type: !27)
!571 = !DILocalVariable(name: "id", arg: 2, scope: !566, file: !8, line: 199, type: !31)
!572 = !DILocalVariable(name: "p", scope: !566, file: !8, line: 201, type: !27)
!573 = !DILocation(line: 199, column: 40, scope: !566)
!574 = !DILocation(line: 199, column: 52, scope: !566)
!575 = !DILocation(line: 201, column: 2, scope: !566)
!576 = !DILocation(line: 201, column: 23, scope: !566)
!577 = !DILocation(line: 203, column: 6, scope: !566)
!578 = !DILocation(line: 203, column: 4, scope: !566)
!579 = !DILocation(line: 204, column: 6, scope: !580)
!580 = distinct !DILexicalBlock(scope: !566, file: !8, line: 204, column: 6)
!581 = !DILocation(line: 204, column: 6, scope: !566)
!582 = !DILocation(line: 205, column: 3, scope: !580)
!583 = !DILocation(line: 207, column: 14, scope: !566)
!584 = !DILocation(line: 207, column: 2, scope: !566)
!585 = !DILocation(line: 207, column: 5, scope: !566)
!586 = !DILocation(line: 207, column: 12, scope: !566)
!587 = !DILocation(line: 208, column: 2, scope: !566)
!588 = !DILocation(line: 208, column: 5, scope: !566)
!589 = !DILocation(line: 208, column: 12, scope: !566)
!590 = !DILocation(line: 209, column: 2, scope: !566)
!591 = !DILocation(line: 209, column: 5, scope: !566)
!592 = !DILocation(line: 209, column: 12, scope: !566)
!593 = !DILocation(line: 210, column: 33, scope: !566)
!594 = !DILocation(line: 210, column: 36, scope: !566)
!595 = !DILocation(line: 210, column: 14, scope: !566)
!596 = !DILocation(line: 210, column: 2, scope: !566)
!597 = !DILocation(line: 210, column: 5, scope: !566)
!598 = !DILocation(line: 210, column: 12, scope: !566)
!599 = !DILocation(line: 211, column: 9, scope: !566)
!600 = !DILocation(line: 211, column: 2, scope: !566)
!601 = !DILocation(line: 212, column: 1, scope: !566)
!602 = distinct !DISubprogram(name: "kzalloc", scope: !2, file: !2, line: 719, type: !603, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !610)
!603 = !DISubroutineType(types: !604)
!604 = !{!605, !606, !45}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 61, baseType: !607)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !608, line: 72, baseType: !609)
!608 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !608, line: 16, baseType: !47)
!610 = !{!611, !612}
!611 = !DILocalVariable(name: "size", arg: 1, scope: !602, file: !2, line: 719, type: !606)
!612 = !DILocalVariable(name: "flags", arg: 2, scope: !602, file: !2, line: 719, type: !45)
!613 = !DILocation(line: 719, column: 52, scope: !602)
!614 = !DILocation(line: 719, column: 64, scope: !602)
!615 = !DILocation(line: 721, column: 17, scope: !602)
!616 = !DILocation(line: 721, column: 23, scope: !602)
!617 = !DILocation(line: 721, column: 29, scope: !602)
!618 = !DILocation(line: 721, column: 9, scope: !602)
!619 = !DILocation(line: 721, column: 2, scope: !602)
!620 = distinct !DISubprogram(name: "fls64", scope: !621, file: !621, line: 401, type: !622, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !624)
!621 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!622 = !DISubroutineType(types: !623)
!623 = !{!41, !33}
!624 = !{!625, !626}
!625 = !DILocalVariable(name: "x", arg: 1, scope: !620, file: !621, line: 401, type: !33)
!626 = !DILocalVariable(name: "bitpos", scope: !620, file: !621, line: 403, type: !41)
!627 = !DILocation(line: 401, column: 40, scope: !620)
!628 = !DILocation(line: 403, column: 2, scope: !620)
!629 = !DILocation(line: 403, column: 6, scope: !620)
!630 = !DILocation(line: 409, column: 2, scope: !620)
!631 = !DILocation(line: 411, column: 14, scope: !620)
!632 = !{i64 599636}
!633 = !DILocation(line: 412, column: 9, scope: !620)
!634 = !DILocation(line: 412, column: 16, scope: !620)
!635 = !DILocation(line: 413, column: 1, scope: !620)
!636 = !DILocation(line: 412, column: 2, scope: !620)
!637 = distinct !DISubprogram(name: "__sync_set_child", scope: !8, file: !8, line: 222, type: !638, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !640)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !27, !12, !27}
!640 = !{!641, !642, !643}
!641 = !DILocalVariable(name: "p", arg: 1, scope: !637, file: !8, line: 222, type: !27)
!642 = !DILocalVariable(name: "idx", arg: 2, scope: !637, file: !8, line: 223, type: !12)
!643 = !DILocalVariable(name: "child", arg: 3, scope: !637, file: !8, line: 224, type: !27)
!644 = !DILocation(line: 222, column: 58, scope: !637)
!645 = !DILocation(line: 223, column: 22, scope: !637)
!646 = !DILocation(line: 224, column: 30, scope: !637)
!647 = !DILocation(line: 226, column: 15, scope: !637)
!648 = !DILocation(line: 226, column: 2, scope: !637)
!649 = !DILocation(line: 226, column: 5, scope: !637)
!650 = !DILocation(line: 226, column: 12, scope: !637)
!651 = !DILocation(line: 227, column: 25, scope: !637)
!652 = !DILocation(line: 227, column: 15, scope: !637)
!653 = !DILocation(line: 227, column: 2, scope: !637)
!654 = !DILocation(line: 227, column: 18, scope: !637)
!655 = !DILocation(line: 227, column: 23, scope: !637)
!656 = !DILocation(line: 228, column: 1, scope: !637)
!657 = distinct !DISubprogram(name: "kmalloc", scope: !2, file: !2, line: 591, type: !603, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !658)
!658 = !{!659, !660, !661}
!659 = !DILocalVariable(name: "size", arg: 1, scope: !657, file: !2, line: 591, type: !606)
!660 = !DILocalVariable(name: "flags", arg: 2, scope: !657, file: !2, line: 591, type: !45)
!661 = !DILocalVariable(name: "index", scope: !662, file: !2, line: 594, type: !12)
!662 = distinct !DILexicalBlock(scope: !663, file: !2, line: 593, column: 42)
!663 = distinct !DILexicalBlock(scope: !657, file: !2, line: 593, column: 6)
!664 = !DILocation(line: 591, column: 61, scope: !657)
!665 = !DILocation(line: 591, column: 73, scope: !657)
!666 = !DILocation(line: 593, column: 27, scope: !663)
!667 = !DILocation(line: 593, column: 6, scope: !663)
!668 = !DILocation(line: 593, column: 33, scope: !663)
!669 = !DILocation(line: 593, column: 36, scope: !663)
!670 = !DILocation(line: 593, column: 6, scope: !657)
!671 = !DILocation(line: 594, column: 3, scope: !662)
!672 = !DILocation(line: 594, column: 16, scope: !662)
!673 = !DILocation(line: 596, column: 7, scope: !674)
!674 = distinct !DILexicalBlock(scope: !662, file: !2, line: 596, column: 7)
!675 = !DILocation(line: 596, column: 12, scope: !674)
!676 = !DILocation(line: 596, column: 7, scope: !662)
!677 = !DILocation(line: 597, column: 25, scope: !674)
!678 = !DILocation(line: 597, column: 31, scope: !674)
!679 = !DILocation(line: 597, column: 11, scope: !674)
!680 = !DILocation(line: 597, column: 4, scope: !674)
!681 = !DILocation(line: 599, column: 11, scope: !662)
!682 = !DILocation(line: 599, column: 9, scope: !662)
!683 = !DILocation(line: 601, column: 33, scope: !662)
!684 = !DILocation(line: 601, column: 40, scope: !662)
!685 = !DILocation(line: 601, column: 20, scope: !662)
!686 = !DILocation(line: 601, column: 5, scope: !662)
!687 = !DILocation(line: 601, column: 51, scope: !662)
!688 = !DILocation(line: 602, column: 5, scope: !662)
!689 = !DILocation(line: 602, column: 12, scope: !662)
!690 = !DILocation(line: 600, column: 10, scope: !662)
!691 = !DILocation(line: 600, column: 3, scope: !662)
!692 = !DILocation(line: 603, column: 2, scope: !663)
!693 = !DILocation(line: 604, column: 19, scope: !657)
!694 = !DILocation(line: 604, column: 25, scope: !657)
!695 = !DILocation(line: 604, column: 9, scope: !657)
!696 = !DILocation(line: 604, column: 2, scope: !657)
!697 = !DILocation(line: 605, column: 1, scope: !657)
!698 = !DISubprogram(name: "kmalloc_large", scope: !2, file: !2, line: 531, type: !603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!699 = distinct !DISubprogram(name: "__kmalloc_index", scope: !2, file: !2, line: 444, type: !700, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !702)
!700 = !DISubroutineType(types: !701)
!701 = !{!12, !606, !79}
!702 = !{!703, !704}
!703 = !DILocalVariable(name: "size", arg: 1, scope: !699, file: !2, line: 444, type: !606)
!704 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !699, file: !2, line: 445, type: !79)
!705 = !DILocation(line: 444, column: 60, scope: !699)
!706 = !DILocation(line: 445, column: 16, scope: !699)
!707 = !DILocation(line: 447, column: 7, scope: !708)
!708 = distinct !DILexicalBlock(scope: !699, file: !2, line: 447, column: 6)
!709 = !DILocation(line: 447, column: 6, scope: !699)
!710 = !DILocation(line: 448, column: 3, scope: !708)
!711 = !DILocation(line: 450, column: 6, scope: !712)
!712 = distinct !DILexicalBlock(scope: !699, file: !2, line: 450, column: 6)
!713 = !DILocation(line: 450, column: 11, scope: !712)
!714 = !DILocation(line: 450, column: 6, scope: !699)
!715 = !DILocation(line: 451, column: 3, scope: !712)
!716 = !DILocation(line: 453, column: 32, scope: !717)
!717 = distinct !DILexicalBlock(scope: !699, file: !2, line: 453, column: 6)
!718 = !DILocation(line: 453, column: 37, scope: !717)
!719 = !DILocation(line: 453, column: 42, scope: !717)
!720 = !DILocation(line: 453, column: 45, scope: !717)
!721 = !DILocation(line: 453, column: 50, scope: !717)
!722 = !DILocation(line: 453, column: 6, scope: !699)
!723 = !DILocation(line: 454, column: 3, scope: !717)
!724 = !DILocation(line: 455, column: 32, scope: !725)
!725 = distinct !DILexicalBlock(scope: !699, file: !2, line: 455, column: 6)
!726 = !DILocation(line: 455, column: 37, scope: !725)
!727 = !DILocation(line: 455, column: 43, scope: !725)
!728 = !DILocation(line: 455, column: 46, scope: !725)
!729 = !DILocation(line: 455, column: 51, scope: !725)
!730 = !DILocation(line: 455, column: 6, scope: !699)
!731 = !DILocation(line: 456, column: 3, scope: !725)
!732 = !DILocation(line: 457, column: 6, scope: !733)
!733 = distinct !DILexicalBlock(scope: !699, file: !2, line: 457, column: 6)
!734 = !DILocation(line: 457, column: 11, scope: !733)
!735 = !DILocation(line: 457, column: 6, scope: !699)
!736 = !DILocation(line: 457, column: 26, scope: !733)
!737 = !DILocation(line: 458, column: 6, scope: !738)
!738 = distinct !DILexicalBlock(scope: !699, file: !2, line: 458, column: 6)
!739 = !DILocation(line: 458, column: 11, scope: !738)
!740 = !DILocation(line: 458, column: 6, scope: !699)
!741 = !DILocation(line: 458, column: 26, scope: !738)
!742 = !DILocation(line: 459, column: 6, scope: !743)
!743 = distinct !DILexicalBlock(scope: !699, file: !2, line: 459, column: 6)
!744 = !DILocation(line: 459, column: 11, scope: !743)
!745 = !DILocation(line: 459, column: 6, scope: !699)
!746 = !DILocation(line: 459, column: 26, scope: !743)
!747 = !DILocation(line: 460, column: 6, scope: !748)
!748 = distinct !DILexicalBlock(scope: !699, file: !2, line: 460, column: 6)
!749 = !DILocation(line: 460, column: 11, scope: !748)
!750 = !DILocation(line: 460, column: 6, scope: !699)
!751 = !DILocation(line: 460, column: 26, scope: !748)
!752 = !DILocation(line: 461, column: 6, scope: !753)
!753 = distinct !DILexicalBlock(scope: !699, file: !2, line: 461, column: 6)
!754 = !DILocation(line: 461, column: 11, scope: !753)
!755 = !DILocation(line: 461, column: 6, scope: !699)
!756 = !DILocation(line: 461, column: 26, scope: !753)
!757 = !DILocation(line: 462, column: 6, scope: !758)
!758 = distinct !DILexicalBlock(scope: !699, file: !2, line: 462, column: 6)
!759 = !DILocation(line: 462, column: 11, scope: !758)
!760 = !DILocation(line: 462, column: 6, scope: !699)
!761 = !DILocation(line: 462, column: 26, scope: !758)
!762 = !DILocation(line: 463, column: 6, scope: !763)
!763 = distinct !DILexicalBlock(scope: !699, file: !2, line: 463, column: 6)
!764 = !DILocation(line: 463, column: 11, scope: !763)
!765 = !DILocation(line: 463, column: 6, scope: !699)
!766 = !DILocation(line: 463, column: 26, scope: !763)
!767 = !DILocation(line: 464, column: 6, scope: !768)
!768 = distinct !DILexicalBlock(scope: !699, file: !2, line: 464, column: 6)
!769 = !DILocation(line: 464, column: 11, scope: !768)
!770 = !DILocation(line: 464, column: 6, scope: !699)
!771 = !DILocation(line: 464, column: 26, scope: !768)
!772 = !DILocation(line: 465, column: 6, scope: !773)
!773 = distinct !DILexicalBlock(scope: !699, file: !2, line: 465, column: 6)
!774 = !DILocation(line: 465, column: 11, scope: !773)
!775 = !DILocation(line: 465, column: 6, scope: !699)
!776 = !DILocation(line: 465, column: 26, scope: !773)
!777 = !DILocation(line: 466, column: 6, scope: !778)
!778 = distinct !DILexicalBlock(scope: !699, file: !2, line: 466, column: 6)
!779 = !DILocation(line: 466, column: 11, scope: !778)
!780 = !DILocation(line: 466, column: 6, scope: !699)
!781 = !DILocation(line: 466, column: 26, scope: !778)
!782 = !DILocation(line: 467, column: 6, scope: !783)
!783 = distinct !DILexicalBlock(scope: !699, file: !2, line: 467, column: 6)
!784 = !DILocation(line: 467, column: 11, scope: !783)
!785 = !DILocation(line: 467, column: 6, scope: !699)
!786 = !DILocation(line: 467, column: 26, scope: !783)
!787 = !DILocation(line: 468, column: 6, scope: !788)
!788 = distinct !DILexicalBlock(scope: !699, file: !2, line: 468, column: 6)
!789 = !DILocation(line: 468, column: 11, scope: !788)
!790 = !DILocation(line: 468, column: 6, scope: !699)
!791 = !DILocation(line: 468, column: 26, scope: !788)
!792 = !DILocation(line: 469, column: 6, scope: !793)
!793 = distinct !DILexicalBlock(scope: !699, file: !2, line: 469, column: 6)
!794 = !DILocation(line: 469, column: 11, scope: !793)
!795 = !DILocation(line: 469, column: 6, scope: !699)
!796 = !DILocation(line: 469, column: 26, scope: !793)
!797 = !DILocation(line: 470, column: 6, scope: !798)
!798 = distinct !DILexicalBlock(scope: !699, file: !2, line: 470, column: 6)
!799 = !DILocation(line: 470, column: 11, scope: !798)
!800 = !DILocation(line: 470, column: 6, scope: !699)
!801 = !DILocation(line: 470, column: 26, scope: !798)
!802 = !DILocation(line: 471, column: 6, scope: !803)
!803 = distinct !DILexicalBlock(scope: !699, file: !2, line: 471, column: 6)
!804 = !DILocation(line: 471, column: 11, scope: !803)
!805 = !DILocation(line: 471, column: 6, scope: !699)
!806 = !DILocation(line: 471, column: 26, scope: !803)
!807 = !DILocation(line: 472, column: 6, scope: !808)
!808 = distinct !DILexicalBlock(scope: !699, file: !2, line: 472, column: 6)
!809 = !DILocation(line: 472, column: 11, scope: !808)
!810 = !DILocation(line: 472, column: 6, scope: !699)
!811 = !DILocation(line: 472, column: 26, scope: !808)
!812 = !DILocation(line: 473, column: 6, scope: !813)
!813 = distinct !DILexicalBlock(scope: !699, file: !2, line: 473, column: 6)
!814 = !DILocation(line: 473, column: 11, scope: !813)
!815 = !DILocation(line: 473, column: 6, scope: !699)
!816 = !DILocation(line: 473, column: 26, scope: !813)
!817 = !DILocation(line: 474, column: 6, scope: !818)
!818 = distinct !DILexicalBlock(scope: !699, file: !2, line: 474, column: 6)
!819 = !DILocation(line: 474, column: 11, scope: !818)
!820 = !DILocation(line: 474, column: 6, scope: !699)
!821 = !DILocation(line: 474, column: 27, scope: !818)
!822 = !DILocation(line: 475, column: 6, scope: !823)
!823 = distinct !DILexicalBlock(scope: !699, file: !2, line: 475, column: 6)
!824 = !DILocation(line: 475, column: 11, scope: !823)
!825 = !DILocation(line: 475, column: 6, scope: !699)
!826 = !DILocation(line: 475, column: 32, scope: !823)
!827 = !DILocation(line: 477, column: 50, scope: !828)
!828 = distinct !DILexicalBlock(scope: !699, file: !2, line: 477, column: 6)
!829 = !{i8 0, i8 2}
!830 = !{}
!831 = !DILocation(line: 477, column: 6, scope: !699)
!832 = !DILocation(line: 478, column: 3, scope: !828)
!833 = !DILocation(line: 478, column: 3, scope: !834)
!834 = distinct !DILexicalBlock(scope: !835, file: !2, line: 478, column: 3)
!835 = distinct !DILexicalBlock(scope: !828, file: !2, line: 478, column: 3)
!836 = !{i32 -2143551878}
!837 = !DILocation(line: 478, column: 3, scope: !835)
!838 = !DILocation(line: 480, column: 3, scope: !828)
!839 = !DILocation(line: 480, column: 3, scope: !840)
!840 = distinct !DILexicalBlock(scope: !828, file: !2, line: 480, column: 3)
!841 = !DILocation(line: 480, column: 3, scope: !842)
!842 = distinct !DILexicalBlock(scope: !840, file: !2, line: 480, column: 3)
!843 = !DILocation(line: 480, column: 3, scope: !844)
!844 = distinct !DILexicalBlock(scope: !840, file: !2, line: 480, column: 3)
!845 = !{i64 2151415621, i64 2151415650, i64 2151415696, i64 2151415754, i64 2151415808, i64 2151415862, i64 2151415917, i64 2151415948}
!846 = !DILocation(line: 483, column: 2, scope: !699)
!847 = !DILocation(line: 484, column: 1, scope: !699)
!848 = !DISubprogram(name: "kmalloc_trace", scope: !2, file: !2, line: 525, type: !849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!849 = !DISubroutineType(types: !850)
!850 = !{!605, !851, !45, !606}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !853, line: 11, flags: DIFlagFwdDecl)
!853 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!854 = distinct !DISubprogram(name: "kmalloc_type", scope: !2, file: !2, line: 401, type: !855, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !857)
!855 = !DISubroutineType(types: !856)
!856 = !{!16, !45, !47}
!857 = !{!858, !859}
!858 = !DILocalVariable(name: "flags", arg: 1, scope: !854, file: !2, line: 401, type: !45)
!859 = !DILocalVariable(name: "caller", arg: 2, scope: !854, file: !2, line: 401, type: !47)
!860 = !DILocation(line: 401, column: 67, scope: !854)
!861 = !DILocation(line: 401, column: 88, scope: !854)
!862 = !DILocation(line: 407, column: 6, scope: !863)
!863 = distinct !DILexicalBlock(scope: !854, file: !2, line: 407, column: 6)
!864 = !DILocation(line: 407, column: 6, scope: !854)
!865 = !DILocation(line: 413, column: 3, scope: !863)
!866 = !DILocation(line: 423, column: 38, scope: !867)
!867 = distinct !DILexicalBlock(scope: !854, file: !2, line: 423, column: 6)
!868 = !DILocation(line: 423, column: 44, scope: !867)
!869 = !DILocation(line: 423, column: 6, scope: !854)
!870 = !DILocation(line: 424, column: 3, scope: !867)
!871 = !DILocation(line: 426, column: 3, scope: !872)
!872 = distinct !DILexicalBlock(scope: !854, file: !2, line: 425, column: 6)
!873 = !DILocation(line: 429, column: 1, scope: !854)
!874 = !DISubprogram(name: "__kmalloc", scope: !2, file: !2, line: 488, type: !603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!875 = !DISubprogram(name: "__compiletime_assert_117", scope: !2, file: !2, line: 478, type: !876, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!876 = !DISubroutineType(types: !877)
!877 = !{null}
!878 = distinct !DISubprogram(name: "variable_ffs", scope: !621, file: !621, line: 305, type: !879, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !881)
!879 = !DISubroutineType(types: !880)
!880 = !{!41, !41}
!881 = !{!882, !883}
!882 = !DILocalVariable(name: "x", arg: 1, scope: !878, file: !621, line: 305, type: !41)
!883 = !DILocalVariable(name: "r", scope: !878, file: !621, line: 307, type: !41)
!884 = !DILocation(line: 305, column: 45, scope: !878)
!885 = !DILocation(line: 307, column: 2, scope: !878)
!886 = !DILocation(line: 307, column: 6, scope: !878)
!887 = !DILocation(line: 321, column: 14, scope: !878)
!888 = !DILocation(line: 319, column: 2, scope: !878)
!889 = !{i64 597127}
!890 = !DILocation(line: 332, column: 9, scope: !878)
!891 = !DILocation(line: 332, column: 11, scope: !878)
!892 = !DILocation(line: 333, column: 1, scope: !878)
!893 = !DILocation(line: 332, column: 2, scope: !878)
!894 = !DISubprogram(name: "kfree", scope: !2, file: !2, line: 227, type: !895, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!895 = !DISubroutineType(types: !896)
!896 = !{null, !897}
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)

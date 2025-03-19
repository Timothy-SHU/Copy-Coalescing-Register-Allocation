; ModuleID = 'ipc/compat.c'
source_filename = "ipc/compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compat_ipc64_perm = type { i32, i32, i32, i32, i32, i16, [2 x i8], i16, i16, i32, i32 }
%struct.ipc64_perm = type { i32, i32, i32, i32, i32, i32, [0 x i8], i16, i16, i64, i64 }
%struct.compat_ipc_perm = type { i32, i16, i16, i16, i16, i16, i16 }

@overflowuid = external dso_local global i32, align 4
@overflowgid = external dso_local global i32, align 4
@.str = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @get_compat_ipc64_perm(ptr noundef %to, ptr noundef %from) #0 align 16 !dbg !35 {
entry:
  %retval = alloca i32, align 4
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %v = alloca %struct.compat_ipc64_perm, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !99, metadata !DIExpression()), !dbg !102
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !100, metadata !DIExpression()), !dbg !103
  call void @llvm.lifetime.start.p0(i64 36, ptr %v) #10, !dbg !104
  call void @llvm.dbg.declare(metadata ptr %v, metadata !101, metadata !DIExpression()), !dbg !105
  %0 = load ptr, ptr %from.addr, align 8, !dbg !106
  %call = call i64 @copy_from_user(ptr noundef %v, ptr noundef %0, i64 noundef 36) #11, !dbg !108
  %tobool = icmp ne i64 %call, 0, !dbg !108
  br i1 %tobool, label %if.then, label %if.end, !dbg !109

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !110
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !110

if.end:                                           ; preds = %entry
  %uid = getelementptr inbounds %struct.compat_ipc64_perm, ptr %v, i32 0, i32 1, !dbg !111
  %1 = load i32, ptr %uid, align 4, !dbg !111
  %2 = load ptr, ptr %to.addr, align 8, !dbg !112
  %uid1 = getelementptr inbounds %struct.ipc64_perm, ptr %2, i32 0, i32 1, !dbg !113
  store i32 %1, ptr %uid1, align 4, !dbg !114
  %gid = getelementptr inbounds %struct.compat_ipc64_perm, ptr %v, i32 0, i32 2, !dbg !115
  %3 = load i32, ptr %gid, align 4, !dbg !115
  %4 = load ptr, ptr %to.addr, align 8, !dbg !116
  %gid2 = getelementptr inbounds %struct.ipc64_perm, ptr %4, i32 0, i32 2, !dbg !117
  store i32 %3, ptr %gid2, align 8, !dbg !118
  %mode = getelementptr inbounds %struct.compat_ipc64_perm, ptr %v, i32 0, i32 5, !dbg !119
  %5 = load i16, ptr %mode, align 4, !dbg !119
  %conv = zext i16 %5 to i32, !dbg !120
  %6 = load ptr, ptr %to.addr, align 8, !dbg !121
  %mode3 = getelementptr inbounds %struct.ipc64_perm, ptr %6, i32 0, i32 5, !dbg !122
  store i32 %conv, ptr %mode3, align 4, !dbg !123
  store i32 0, ptr %retval, align 4, !dbg !124
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !124

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 36, ptr %v) #10, !dbg !125
  %7 = load i32, ptr %retval, align 4, !dbg !125
  ret i32 %7, !dbg !125
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #3 align 16 !dbg !126 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !134, metadata !DIExpression()), !dbg !137
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !135, metadata !DIExpression()), !dbg !138
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !136, metadata !DIExpression()), !dbg !139
  %0 = load ptr, ptr %to.addr, align 8, !dbg !140
  %1 = load i64, ptr %n.addr, align 8, !dbg !142
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #11, !dbg !143
  br i1 %call, label %if.then, label %if.end, !dbg !144

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !145
  %3 = load ptr, ptr %from.addr, align 8, !dbg !146
  %4 = load i64, ptr %n.addr, align 8, !dbg !147
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #11, !dbg !148
  store i64 %call1, ptr %n.addr, align 8, !dbg !149
  br label %if.end, !dbg !150

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !151
  ret i64 %5, !dbg !152
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @get_compat_ipc_perm(ptr noundef %to, ptr noundef %from) #0 align 16 !dbg !153 {
entry:
  %retval = alloca i32, align 4
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %v = alloca %struct.compat_ipc_perm, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !171, metadata !DIExpression()), !dbg !174
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !172, metadata !DIExpression()), !dbg !175
  call void @llvm.lifetime.start.p0(i64 16, ptr %v) #10, !dbg !176
  call void @llvm.dbg.declare(metadata ptr %v, metadata !173, metadata !DIExpression()), !dbg !177
  %0 = load ptr, ptr %from.addr, align 8, !dbg !178
  %call = call i64 @copy_from_user(ptr noundef %v, ptr noundef %0, i64 noundef 16) #11, !dbg !180
  %tobool = icmp ne i64 %call, 0, !dbg !180
  br i1 %tobool, label %if.then, label %if.end, !dbg !181

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !182
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !182

if.end:                                           ; preds = %entry
  %uid = getelementptr inbounds %struct.compat_ipc_perm, ptr %v, i32 0, i32 1, !dbg !183
  %1 = load i16, ptr %uid, align 4, !dbg !183
  %conv = zext i16 %1 to i32, !dbg !184
  %2 = load ptr, ptr %to.addr, align 8, !dbg !185
  %uid1 = getelementptr inbounds %struct.ipc64_perm, ptr %2, i32 0, i32 1, !dbg !186
  store i32 %conv, ptr %uid1, align 4, !dbg !187
  %gid = getelementptr inbounds %struct.compat_ipc_perm, ptr %v, i32 0, i32 2, !dbg !188
  %3 = load i16, ptr %gid, align 2, !dbg !188
  %conv2 = zext i16 %3 to i32, !dbg !189
  %4 = load ptr, ptr %to.addr, align 8, !dbg !190
  %gid3 = getelementptr inbounds %struct.ipc64_perm, ptr %4, i32 0, i32 2, !dbg !191
  store i32 %conv2, ptr %gid3, align 8, !dbg !192
  %mode = getelementptr inbounds %struct.compat_ipc_perm, ptr %v, i32 0, i32 5, !dbg !193
  %5 = load i16, ptr %mode, align 4, !dbg !193
  %conv4 = zext i16 %5 to i32, !dbg !194
  %6 = load ptr, ptr %to.addr, align 8, !dbg !195
  %mode5 = getelementptr inbounds %struct.ipc64_perm, ptr %6, i32 0, i32 5, !dbg !196
  store i32 %conv4, ptr %mode5, align 4, !dbg !197
  store i32 0, ptr %retval, align 4, !dbg !198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !198

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %v) #10, !dbg !199
  %7 = load i32, ptr %retval, align 4, !dbg !199
  ret i32 %7, !dbg !199
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @to_compat_ipc64_perm(ptr noundef %to, ptr noundef %from) #0 align 16 !dbg !200 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !204, metadata !DIExpression()), !dbg !206
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !205, metadata !DIExpression()), !dbg !207
  %0 = load ptr, ptr %from.addr, align 8, !dbg !208
  %key = getelementptr inbounds %struct.ipc64_perm, ptr %0, i32 0, i32 0, !dbg !209
  %1 = load i32, ptr %key, align 8, !dbg !209
  %2 = load ptr, ptr %to.addr, align 8, !dbg !210
  %key1 = getelementptr inbounds %struct.compat_ipc64_perm, ptr %2, i32 0, i32 0, !dbg !211
  store i32 %1, ptr %key1, align 4, !dbg !212
  %3 = load ptr, ptr %from.addr, align 8, !dbg !213
  %uid = getelementptr inbounds %struct.ipc64_perm, ptr %3, i32 0, i32 1, !dbg !214
  %4 = load i32, ptr %uid, align 4, !dbg !214
  %5 = load ptr, ptr %to.addr, align 8, !dbg !215
  %uid2 = getelementptr inbounds %struct.compat_ipc64_perm, ptr %5, i32 0, i32 1, !dbg !216
  store i32 %4, ptr %uid2, align 4, !dbg !217
  %6 = load ptr, ptr %from.addr, align 8, !dbg !218
  %gid = getelementptr inbounds %struct.ipc64_perm, ptr %6, i32 0, i32 2, !dbg !219
  %7 = load i32, ptr %gid, align 8, !dbg !219
  %8 = load ptr, ptr %to.addr, align 8, !dbg !220
  %gid3 = getelementptr inbounds %struct.compat_ipc64_perm, ptr %8, i32 0, i32 2, !dbg !221
  store i32 %7, ptr %gid3, align 4, !dbg !222
  %9 = load ptr, ptr %from.addr, align 8, !dbg !223
  %cuid = getelementptr inbounds %struct.ipc64_perm, ptr %9, i32 0, i32 3, !dbg !224
  %10 = load i32, ptr %cuid, align 4, !dbg !224
  %11 = load ptr, ptr %to.addr, align 8, !dbg !225
  %cuid4 = getelementptr inbounds %struct.compat_ipc64_perm, ptr %11, i32 0, i32 3, !dbg !226
  store i32 %10, ptr %cuid4, align 4, !dbg !227
  %12 = load ptr, ptr %from.addr, align 8, !dbg !228
  %cgid = getelementptr inbounds %struct.ipc64_perm, ptr %12, i32 0, i32 4, !dbg !229
  %13 = load i32, ptr %cgid, align 8, !dbg !229
  %14 = load ptr, ptr %to.addr, align 8, !dbg !230
  %cgid5 = getelementptr inbounds %struct.compat_ipc64_perm, ptr %14, i32 0, i32 4, !dbg !231
  store i32 %13, ptr %cgid5, align 4, !dbg !232
  %15 = load ptr, ptr %from.addr, align 8, !dbg !233
  %mode = getelementptr inbounds %struct.ipc64_perm, ptr %15, i32 0, i32 5, !dbg !234
  %16 = load i32, ptr %mode, align 4, !dbg !234
  %conv = trunc i32 %16 to i16, !dbg !233
  %17 = load ptr, ptr %to.addr, align 8, !dbg !235
  %mode6 = getelementptr inbounds %struct.compat_ipc64_perm, ptr %17, i32 0, i32 5, !dbg !236
  store i16 %conv, ptr %mode6, align 4, !dbg !237
  %18 = load ptr, ptr %from.addr, align 8, !dbg !238
  %seq = getelementptr inbounds %struct.ipc64_perm, ptr %18, i32 0, i32 7, !dbg !239
  %19 = load i16, ptr %seq, align 8, !dbg !239
  %20 = load ptr, ptr %to.addr, align 8, !dbg !240
  %seq7 = getelementptr inbounds %struct.compat_ipc64_perm, ptr %20, i32 0, i32 7, !dbg !241
  store i16 %19, ptr %seq7, align 4, !dbg !242
  ret void, !dbg !243
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @to_compat_ipc_perm(ptr noundef %to, ptr noundef %from) #0 align 16 !dbg !244 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !248, metadata !DIExpression()), !dbg !250
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !249, metadata !DIExpression()), !dbg !251
  %0 = load ptr, ptr %from.addr, align 8, !dbg !252
  %key = getelementptr inbounds %struct.ipc64_perm, ptr %0, i32 0, i32 0, !dbg !253
  %1 = load i32, ptr %key, align 8, !dbg !253
  %2 = load ptr, ptr %to.addr, align 8, !dbg !254
  %key1 = getelementptr inbounds %struct.compat_ipc_perm, ptr %2, i32 0, i32 0, !dbg !255
  store i32 %1, ptr %key1, align 4, !dbg !256
  br label %do.body, !dbg !257

do.body:                                          ; preds = %entry
  %3 = load ptr, ptr %from.addr, align 8, !dbg !258
  %uid = getelementptr inbounds %struct.ipc64_perm, ptr %3, i32 0, i32 1, !dbg !258
  %4 = load i32, ptr %uid, align 4, !dbg !258
  %and = and i32 %4, -65536, !dbg !258
  %tobool = icmp ne i32 %and, 0, !dbg !258
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !258

cond.true:                                        ; preds = %do.body
  %5 = load i32, ptr @overflowuid, align 4, !dbg !258
  %conv = trunc i32 %5 to i16, !dbg !258
  %conv2 = zext i16 %conv to i32, !dbg !258
  br label %cond.end, !dbg !258

cond.false:                                       ; preds = %do.body
  %6 = load ptr, ptr %from.addr, align 8, !dbg !258
  %uid3 = getelementptr inbounds %struct.ipc64_perm, ptr %6, i32 0, i32 1, !dbg !258
  %7 = load i32, ptr %uid3, align 4, !dbg !258
  %conv4 = trunc i32 %7 to i16, !dbg !258
  %conv5 = zext i16 %conv4 to i32, !dbg !258
  br label %cond.end, !dbg !258

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv2, %cond.true ], [ %conv5, %cond.false ], !dbg !258
  %conv6 = trunc i32 %cond to i16, !dbg !258
  %8 = load ptr, ptr %to.addr, align 8, !dbg !258
  %uid7 = getelementptr inbounds %struct.compat_ipc_perm, ptr %8, i32 0, i32 1, !dbg !258
  store i16 %conv6, ptr %uid7, align 4, !dbg !258
  br label %do.end, !dbg !258

do.end:                                           ; preds = %cond.end
  br label %do.body8, !dbg !260

do.body8:                                         ; preds = %do.end
  %9 = load ptr, ptr %from.addr, align 8, !dbg !261
  %gid = getelementptr inbounds %struct.ipc64_perm, ptr %9, i32 0, i32 2, !dbg !261
  %10 = load i32, ptr %gid, align 8, !dbg !261
  %and9 = and i32 %10, -65536, !dbg !261
  %tobool10 = icmp ne i32 %and9, 0, !dbg !261
  br i1 %tobool10, label %cond.true11, label %cond.false14, !dbg !261

cond.true11:                                      ; preds = %do.body8
  %11 = load i32, ptr @overflowgid, align 4, !dbg !261
  %conv12 = trunc i32 %11 to i16, !dbg !261
  %conv13 = zext i16 %conv12 to i32, !dbg !261
  br label %cond.end18, !dbg !261

cond.false14:                                     ; preds = %do.body8
  %12 = load ptr, ptr %from.addr, align 8, !dbg !261
  %gid15 = getelementptr inbounds %struct.ipc64_perm, ptr %12, i32 0, i32 2, !dbg !261
  %13 = load i32, ptr %gid15, align 8, !dbg !261
  %conv16 = trunc i32 %13 to i16, !dbg !261
  %conv17 = zext i16 %conv16 to i32, !dbg !261
  br label %cond.end18, !dbg !261

cond.end18:                                       ; preds = %cond.false14, %cond.true11
  %cond19 = phi i32 [ %conv13, %cond.true11 ], [ %conv17, %cond.false14 ], !dbg !261
  %conv20 = trunc i32 %cond19 to i16, !dbg !261
  %14 = load ptr, ptr %to.addr, align 8, !dbg !261
  %gid21 = getelementptr inbounds %struct.compat_ipc_perm, ptr %14, i32 0, i32 2, !dbg !261
  store i16 %conv20, ptr %gid21, align 2, !dbg !261
  br label %do.end22, !dbg !261

do.end22:                                         ; preds = %cond.end18
  br label %do.body23, !dbg !263

do.body23:                                        ; preds = %do.end22
  %15 = load ptr, ptr %from.addr, align 8, !dbg !264
  %cuid = getelementptr inbounds %struct.ipc64_perm, ptr %15, i32 0, i32 3, !dbg !264
  %16 = load i32, ptr %cuid, align 4, !dbg !264
  %and24 = and i32 %16, -65536, !dbg !264
  %tobool25 = icmp ne i32 %and24, 0, !dbg !264
  br i1 %tobool25, label %cond.true26, label %cond.false29, !dbg !264

cond.true26:                                      ; preds = %do.body23
  %17 = load i32, ptr @overflowuid, align 4, !dbg !264
  %conv27 = trunc i32 %17 to i16, !dbg !264
  %conv28 = zext i16 %conv27 to i32, !dbg !264
  br label %cond.end33, !dbg !264

cond.false29:                                     ; preds = %do.body23
  %18 = load ptr, ptr %from.addr, align 8, !dbg !264
  %cuid30 = getelementptr inbounds %struct.ipc64_perm, ptr %18, i32 0, i32 3, !dbg !264
  %19 = load i32, ptr %cuid30, align 4, !dbg !264
  %conv31 = trunc i32 %19 to i16, !dbg !264
  %conv32 = zext i16 %conv31 to i32, !dbg !264
  br label %cond.end33, !dbg !264

cond.end33:                                       ; preds = %cond.false29, %cond.true26
  %cond34 = phi i32 [ %conv28, %cond.true26 ], [ %conv32, %cond.false29 ], !dbg !264
  %conv35 = trunc i32 %cond34 to i16, !dbg !264
  %20 = load ptr, ptr %to.addr, align 8, !dbg !264
  %cuid36 = getelementptr inbounds %struct.compat_ipc_perm, ptr %20, i32 0, i32 3, !dbg !264
  store i16 %conv35, ptr %cuid36, align 4, !dbg !264
  br label %do.end37, !dbg !264

do.end37:                                         ; preds = %cond.end33
  br label %do.body38, !dbg !266

do.body38:                                        ; preds = %do.end37
  %21 = load ptr, ptr %from.addr, align 8, !dbg !267
  %cgid = getelementptr inbounds %struct.ipc64_perm, ptr %21, i32 0, i32 4, !dbg !267
  %22 = load i32, ptr %cgid, align 8, !dbg !267
  %and39 = and i32 %22, -65536, !dbg !267
  %tobool40 = icmp ne i32 %and39, 0, !dbg !267
  br i1 %tobool40, label %cond.true41, label %cond.false44, !dbg !267

cond.true41:                                      ; preds = %do.body38
  %23 = load i32, ptr @overflowgid, align 4, !dbg !267
  %conv42 = trunc i32 %23 to i16, !dbg !267
  %conv43 = zext i16 %conv42 to i32, !dbg !267
  br label %cond.end48, !dbg !267

cond.false44:                                     ; preds = %do.body38
  %24 = load ptr, ptr %from.addr, align 8, !dbg !267
  %cgid45 = getelementptr inbounds %struct.ipc64_perm, ptr %24, i32 0, i32 4, !dbg !267
  %25 = load i32, ptr %cgid45, align 8, !dbg !267
  %conv46 = trunc i32 %25 to i16, !dbg !267
  %conv47 = zext i16 %conv46 to i32, !dbg !267
  br label %cond.end48, !dbg !267

cond.end48:                                       ; preds = %cond.false44, %cond.true41
  %cond49 = phi i32 [ %conv43, %cond.true41 ], [ %conv47, %cond.false44 ], !dbg !267
  %conv50 = trunc i32 %cond49 to i16, !dbg !267
  %26 = load ptr, ptr %to.addr, align 8, !dbg !267
  %cgid51 = getelementptr inbounds %struct.compat_ipc_perm, ptr %26, i32 0, i32 4, !dbg !267
  store i16 %conv50, ptr %cgid51, align 2, !dbg !267
  br label %do.end52, !dbg !267

do.end52:                                         ; preds = %cond.end48
  %27 = load ptr, ptr %from.addr, align 8, !dbg !269
  %mode = getelementptr inbounds %struct.ipc64_perm, ptr %27, i32 0, i32 5, !dbg !270
  %28 = load i32, ptr %mode, align 4, !dbg !270
  %conv53 = trunc i32 %28 to i16, !dbg !269
  %29 = load ptr, ptr %to.addr, align 8, !dbg !271
  %mode54 = getelementptr inbounds %struct.compat_ipc_perm, ptr %29, i32 0, i32 5, !dbg !272
  store i16 %conv53, ptr %mode54, align 4, !dbg !273
  %30 = load ptr, ptr %from.addr, align 8, !dbg !274
  %seq = getelementptr inbounds %struct.ipc64_perm, ptr %30, i32 0, i32 7, !dbg !275
  %31 = load i16, ptr %seq, align 8, !dbg !275
  %32 = load ptr, ptr %to.addr, align 8, !dbg !276
  %seq55 = getelementptr inbounds %struct.compat_ipc_perm, ptr %32, i32 0, i32 6, !dbg !277
  store i16 %31, ptr %seq55, align 2, !dbg !278
  ret void, !dbg !279
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #3 align 16 !dbg !280 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !288, metadata !DIExpression()), !dbg !298
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !289, metadata !DIExpression()), !dbg !299
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !290, metadata !DIExpression()), !dbg !300
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #10, !dbg !301
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !291, metadata !DIExpression()), !dbg !302
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !303
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !304
  %conv = trunc i64 %1 to i32, !dbg !304
  store i32 %conv, ptr %sz, align 4, !dbg !302
  %2 = load i32, ptr %sz, align 4, !dbg !305
  %cmp = icmp sge i32 %2, 0, !dbg !305
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !305

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !305
  %conv2 = sext i32 %3 to i64, !dbg !305
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !305
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !305
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !307
  %lnot = xor i1 %5, true, !dbg !305
  %lnot5 = xor i1 %lnot, true, !dbg !305
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !305
  %conv6 = sext i32 %lnot.ext to i64, !dbg !305
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !305
  %tobool = icmp ne i64 %expval, 0, !dbg !305
  br i1 %tobool, label %if.then, label %if.end12, !dbg !308

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !309
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !312
  br i1 %7, label %if.else, label %if.then7, !dbg !313

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !314
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !315
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #11, !dbg !316
  br label %if.end11, !dbg !316

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !317, !range !319, !noundef !320
  %tobool8 = trunc i8 %10 to i1, !dbg !317
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !321

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #11, !dbg !322, !srcloc !323
  br label %if.end, !dbg !322

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #11, !dbg !324, !srcloc !325
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !326
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !326

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !327
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !292, metadata !DIExpression()), !dbg !327
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !327
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !327
  %lnot15 = xor i1 %cmp13, true, !dbg !327
  %lnot17 = xor i1 %lnot15, true, !dbg !327
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !327
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !327
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !328
  %tobool19 = icmp ne i32 %12, 0, !dbg !328
  %lnot20 = xor i1 %tobool19, true, !dbg !328
  %lnot22 = xor i1 %lnot20, true, !dbg !328
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !328
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !328
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !328
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !328
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !327

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !328

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !329
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !295, metadata !DIExpression()), !dbg !329
  store i32 2307, ptr %__flags, align 4, !dbg !329
  br label %do.body28, !dbg !329

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !330

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !330

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !329

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !332
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 249, i32 %13, i64 12) #10, !dbg !332, !srcloc !334
  br label %do.cond30, !dbg !332

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !332

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !329

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !335

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !335

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !328
  br label %do.cond35, !dbg !329

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !329

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !329

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !327
  %tobool38 = icmp ne i32 %14, 0, !dbg !327
  %lnot39 = xor i1 %tobool38, true, !dbg !327
  %lnot41 = xor i1 %lnot39, true, !dbg !327
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !327
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !327
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !327
  store i64 %expval44, ptr %tmp, align 8, !dbg !328
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !337
  %15 = load i64, ptr %tmp, align 8, !dbg !327
  %tobool45 = icmp ne i64 %15, 0, !dbg !337
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !338

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !339
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !339

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !340
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !341
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !342, !range !319, !noundef !320
  %tobool48 = trunc i8 %18 to i1, !dbg !342
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #11, !dbg !343
  store i1 true, ptr %retval, align 1, !dbg !344
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !344

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #10, !dbg !345
  %19 = load i1, ptr %retval, align 1, !dbg !345
  ret i1 %19, !dbg !345
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !346 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #7 align 16 !dbg !347 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !351, metadata !DIExpression()), !dbg !353
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !352, metadata !DIExpression()), !dbg !354
  %0 = load i32, ptr %size.addr, align 4, !dbg !355
  %1 = load i64, ptr %count.addr, align 8, !dbg !357
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #11, !dbg !358
  ret void, !dbg !359
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !360 dso_local void @__bad_copy_from() #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !363 dso_local void @__bad_copy_to() #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #7 align 16 !dbg !364 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !368, metadata !DIExpression()), !dbg !371
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !369, metadata !DIExpression()), !dbg !372
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !370, metadata !DIExpression()), !dbg !373
  ret void, !dbg !374
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !375 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noredzone }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 249, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 28)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !8, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF ipc/.compat.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22ipc/compat\22 -D KBUILD_BASENAME=\22compat\22 -D KBUILD_MODNAME=\22compat\22 -D __KBUILD_MODNAME=kmod_compat -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o ipc/compat.ll ipc/compat.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !16, globals: !25, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "ipc/compat.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "04c839a02f2fed49c7a52061835e45b0")
!9 = !{!10}
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 10, baseType: !12, size: 32, elements: !13)
!11 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "false", value: 0)
!15 = !DIEnumerator(name: "true", value: 1)
!16 = !{!17, !22, !24}
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_uid_t", file: !18, line: 47, baseType: !19)
!18 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_old_uid_t", file: !20, line: 11, baseType: !21)
!20 = !DIFile(filename: "./arch/x86/include/uapi/asm/posix_types_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f05987f20e03443d3f48e800a94d0669")
!21 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_gid_t", file: !18, line: 48, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_old_gid_t", file: !20, line: 12, baseType: !21)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !{!0}
!26 = !{i32 7, !"Dwarf Version", i32 5}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 8, !"cf-protection-branch", i32 1}
!30 = !{i32 4, !"function_return_thunk_extern", i32 1}
!31 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!32 = !{i32 1, !"Code Model", i32 2}
!33 = !{i32 1, !"override-stack-alignment", i32 8}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = distinct !DISubprogram(name: "get_compat_ipc64_perm", scope: !8, file: !8, line: 38, type: !36, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !98)
!36 = !DISubroutineType(types: !37)
!37 = !{!24, !38, !65}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipc64_perm", file: !40, line: 22, size: 384, elements: !41)
!40 = !DIFile(filename: "./include/uapi/asm-generic/ipcbuf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aff61e8f617bd7aaafc1f7cb96f1ce5d")
!41 = !{!42, !45, !48, !50, !51, !52, !54, !59, !60, !61, !64}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !39, file: !40, line: 23, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_key_t", file: !44, line: 33, baseType: !24)
!44 = !DIFile(filename: "./include/uapi/linux/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a17a63983e2bd17804115d95083fe9c4")
!45 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !39, file: !40, line: 24, baseType: !46, size: 32, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !47, line: 49, baseType: !12)
!47 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!48 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !39, file: !40, line: 25, baseType: !49, size: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !47, line: 50, baseType: !12)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "cuid", scope: !39, file: !40, line: 26, baseType: !46, size: 32, offset: 96)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "cgid", scope: !39, file: !40, line: 27, baseType: !49, size: 32, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !39, file: !40, line: 28, baseType: !53, size: 32, offset: 160)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_mode_t", file: !47, line: 24, baseType: !12)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !39, file: !40, line: 30, baseType: !55, offset: 192)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, elements: !57)
!56 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!57 = !{!58}
!58 = !DISubrange(count: 0)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !39, file: !40, line: 31, baseType: !21, size: 16, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !39, file: !40, line: 32, baseType: !21, size: 16, offset: 208)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__unused1", scope: !39, file: !40, line: 33, baseType: !62, size: 64, offset: 256)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !47, line: 16, baseType: !63)
!63 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__unused2", scope: !39, file: !40, line: 34, baseType: !62, size: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_ipc64_perm", file: !67, line: 109, size: 288, elements: !68)
!67 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!68 = !{!69, !75, !79, !81, !82, !83, !88, !92, !94, !95, !97}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !66, file: !67, line: 110, baseType: !70, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_key_t", file: !67, line: 39, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !72, line: 20, baseType: !73)
!72 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !74, line: 26, baseType: !24)
!74 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!75 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !66, file: !67, line: 111, baseType: !76, size: 32, offset: 32)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compat_uid32_t", file: !67, line: 57, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !72, line: 21, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !74, line: 27, baseType: !12)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !66, file: !67, line: 112, baseType: !80, size: 32, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compat_gid32_t", file: !67, line: 58, baseType: !77)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "cuid", scope: !66, file: !67, line: 113, baseType: !76, size: 32, offset: 96)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "cgid", scope: !66, file: !67, line: 114, baseType: !80, size: 32, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !66, file: !67, line: 115, baseType: !84, size: 16, offset: 160)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_mode_t", file: !85, line: 16, baseType: !86)
!85 = !DIFile(filename: "./arch/x86/include/asm/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "13e4bbbeecac635d510b530a702cc1fd")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !72, line: 19, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !74, line: 24, baseType: !21)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !66, file: !67, line: 116, baseType: !89, size: 16, offset: 176)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 16, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 2)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !66, file: !67, line: 117, baseType: !93, size: 16, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_ushort_t", file: !67, line: 43, baseType: !86)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !66, file: !67, line: 118, baseType: !93, size: 16, offset: 208)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "unused1", scope: !66, file: !67, line: 119, baseType: !96, size: 32, offset: 224)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_ulong_t", file: !67, line: 45, baseType: !77)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "unused2", scope: !66, file: !67, line: 120, baseType: !96, size: 32, offset: 256)
!98 = !{!99, !100, !101}
!99 = !DILocalVariable(name: "to", arg: 1, scope: !35, file: !8, line: 38, type: !38)
!100 = !DILocalVariable(name: "from", arg: 2, scope: !35, file: !8, line: 39, type: !65)
!101 = !DILocalVariable(name: "v", scope: !35, file: !8, line: 41, type: !66)
!102 = !DILocation(line: 38, column: 46, scope: !35)
!103 = !DILocation(line: 39, column: 39, scope: !35)
!104 = !DILocation(line: 41, column: 2, scope: !35)
!105 = !DILocation(line: 41, column: 27, scope: !35)
!106 = !DILocation(line: 42, column: 25, scope: !107)
!107 = distinct !DILexicalBlock(scope: !35, file: !8, line: 42, column: 6)
!108 = !DILocation(line: 42, column: 6, scope: !107)
!109 = !DILocation(line: 42, column: 6, scope: !35)
!110 = !DILocation(line: 43, column: 3, scope: !107)
!111 = !DILocation(line: 44, column: 14, scope: !35)
!112 = !DILocation(line: 44, column: 2, scope: !35)
!113 = !DILocation(line: 44, column: 6, scope: !35)
!114 = !DILocation(line: 44, column: 10, scope: !35)
!115 = !DILocation(line: 45, column: 14, scope: !35)
!116 = !DILocation(line: 45, column: 2, scope: !35)
!117 = !DILocation(line: 45, column: 6, scope: !35)
!118 = !DILocation(line: 45, column: 10, scope: !35)
!119 = !DILocation(line: 46, column: 15, scope: !35)
!120 = !DILocation(line: 46, column: 13, scope: !35)
!121 = !DILocation(line: 46, column: 2, scope: !35)
!122 = !DILocation(line: 46, column: 6, scope: !35)
!123 = !DILocation(line: 46, column: 11, scope: !35)
!124 = !DILocation(line: 47, column: 2, scope: !35)
!125 = !DILocation(line: 48, column: 1, scope: !35)
!126 = distinct !DISubprogram(name: "copy_from_user", scope: !127, file: !127, line: 180, type: !128, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !133)
!127 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!128 = !DISubroutineType(types: !129)
!129 = !{!63, !130, !131, !63}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!133 = !{!134, !135, !136}
!134 = !DILocalVariable(name: "to", arg: 1, scope: !126, file: !127, line: 180, type: !130)
!135 = !DILocalVariable(name: "from", arg: 2, scope: !126, file: !127, line: 180, type: !131)
!136 = !DILocalVariable(name: "n", arg: 3, scope: !126, file: !127, line: 180, type: !63)
!137 = !DILocation(line: 180, column: 22, scope: !126)
!138 = !DILocation(line: 180, column: 45, scope: !126)
!139 = !DILocation(line: 180, column: 65, scope: !126)
!140 = !DILocation(line: 182, column: 22, scope: !141)
!141 = distinct !DILexicalBlock(scope: !126, file: !127, line: 182, column: 6)
!142 = !DILocation(line: 182, column: 26, scope: !141)
!143 = !DILocation(line: 182, column: 6, scope: !141)
!144 = !DILocation(line: 182, column: 6, scope: !126)
!145 = !DILocation(line: 183, column: 23, scope: !141)
!146 = !DILocation(line: 183, column: 27, scope: !141)
!147 = !DILocation(line: 183, column: 33, scope: !141)
!148 = !DILocation(line: 183, column: 7, scope: !141)
!149 = !DILocation(line: 183, column: 5, scope: !141)
!150 = !DILocation(line: 183, column: 3, scope: !141)
!151 = !DILocation(line: 184, column: 9, scope: !126)
!152 = !DILocation(line: 184, column: 2, scope: !126)
!153 = distinct !DISubprogram(name: "get_compat_ipc_perm", scope: !8, file: !8, line: 50, type: !154, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !170)
!154 = !DISubroutineType(types: !155)
!155 = !{!24, !38, !156}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_ipc_perm", file: !158, line: 258, size: 128, elements: !159)
!158 = !DIFile(filename: "ipc/util.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8453113c4f9f75ff3f8befe4fd6c6b01")
!159 = !{!160, !162, !164, !166, !167, !168, !169}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !157, file: !158, line: 259, baseType: !161, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_t", file: !18, line: 29, baseType: !43)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !157, file: !158, line: 260, baseType: !163, size: 16, offset: 32)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compat_uid_t", file: !85, line: 19, baseType: !86)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !157, file: !158, line: 261, baseType: !165, size: 16, offset: 48)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compat_gid_t", file: !85, line: 20, baseType: !86)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "cuid", scope: !157, file: !158, line: 262, baseType: !163, size: 16, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "cgid", scope: !157, file: !158, line: 263, baseType: !165, size: 16, offset: 80)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !157, file: !158, line: 264, baseType: !84, size: 16, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !157, file: !158, line: 265, baseType: !21, size: 16, offset: 112)
!170 = !{!171, !172, !173}
!171 = !DILocalVariable(name: "to", arg: 1, scope: !153, file: !8, line: 50, type: !38)
!172 = !DILocalVariable(name: "from", arg: 2, scope: !153, file: !8, line: 51, type: !156)
!173 = !DILocalVariable(name: "v", scope: !153, file: !8, line: 53, type: !157)
!174 = !DILocation(line: 50, column: 44, scope: !153)
!175 = !DILocation(line: 51, column: 35, scope: !153)
!176 = !DILocation(line: 53, column: 2, scope: !153)
!177 = !DILocation(line: 53, column: 25, scope: !153)
!178 = !DILocation(line: 54, column: 25, scope: !179)
!179 = distinct !DILexicalBlock(scope: !153, file: !8, line: 54, column: 6)
!180 = !DILocation(line: 54, column: 6, scope: !179)
!181 = !DILocation(line: 54, column: 6, scope: !153)
!182 = !DILocation(line: 55, column: 3, scope: !179)
!183 = !DILocation(line: 56, column: 14, scope: !153)
!184 = !DILocation(line: 56, column: 12, scope: !153)
!185 = !DILocation(line: 56, column: 2, scope: !153)
!186 = !DILocation(line: 56, column: 6, scope: !153)
!187 = !DILocation(line: 56, column: 10, scope: !153)
!188 = !DILocation(line: 57, column: 14, scope: !153)
!189 = !DILocation(line: 57, column: 12, scope: !153)
!190 = !DILocation(line: 57, column: 2, scope: !153)
!191 = !DILocation(line: 57, column: 6, scope: !153)
!192 = !DILocation(line: 57, column: 10, scope: !153)
!193 = !DILocation(line: 58, column: 15, scope: !153)
!194 = !DILocation(line: 58, column: 13, scope: !153)
!195 = !DILocation(line: 58, column: 2, scope: !153)
!196 = !DILocation(line: 58, column: 6, scope: !153)
!197 = !DILocation(line: 58, column: 11, scope: !153)
!198 = !DILocation(line: 59, column: 2, scope: !153)
!199 = !DILocation(line: 60, column: 1, scope: !153)
!200 = distinct !DISubprogram(name: "to_compat_ipc64_perm", scope: !8, file: !8, line: 62, type: !201, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !203)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !65, !38}
!203 = !{!204, !205}
!204 = !DILocalVariable(name: "to", arg: 1, scope: !200, file: !8, line: 62, type: !65)
!205 = !DILocalVariable(name: "from", arg: 2, scope: !200, file: !8, line: 62, type: !38)
!206 = !DILocation(line: 62, column: 53, scope: !200)
!207 = !DILocation(line: 62, column: 76, scope: !200)
!208 = !DILocation(line: 64, column: 12, scope: !200)
!209 = !DILocation(line: 64, column: 18, scope: !200)
!210 = !DILocation(line: 64, column: 2, scope: !200)
!211 = !DILocation(line: 64, column: 6, scope: !200)
!212 = !DILocation(line: 64, column: 10, scope: !200)
!213 = !DILocation(line: 65, column: 12, scope: !200)
!214 = !DILocation(line: 65, column: 18, scope: !200)
!215 = !DILocation(line: 65, column: 2, scope: !200)
!216 = !DILocation(line: 65, column: 6, scope: !200)
!217 = !DILocation(line: 65, column: 10, scope: !200)
!218 = !DILocation(line: 66, column: 12, scope: !200)
!219 = !DILocation(line: 66, column: 18, scope: !200)
!220 = !DILocation(line: 66, column: 2, scope: !200)
!221 = !DILocation(line: 66, column: 6, scope: !200)
!222 = !DILocation(line: 66, column: 10, scope: !200)
!223 = !DILocation(line: 67, column: 13, scope: !200)
!224 = !DILocation(line: 67, column: 19, scope: !200)
!225 = !DILocation(line: 67, column: 2, scope: !200)
!226 = !DILocation(line: 67, column: 6, scope: !200)
!227 = !DILocation(line: 67, column: 11, scope: !200)
!228 = !DILocation(line: 68, column: 13, scope: !200)
!229 = !DILocation(line: 68, column: 19, scope: !200)
!230 = !DILocation(line: 68, column: 2, scope: !200)
!231 = !DILocation(line: 68, column: 6, scope: !200)
!232 = !DILocation(line: 68, column: 11, scope: !200)
!233 = !DILocation(line: 69, column: 13, scope: !200)
!234 = !DILocation(line: 69, column: 19, scope: !200)
!235 = !DILocation(line: 69, column: 2, scope: !200)
!236 = !DILocation(line: 69, column: 6, scope: !200)
!237 = !DILocation(line: 69, column: 11, scope: !200)
!238 = !DILocation(line: 70, column: 12, scope: !200)
!239 = !DILocation(line: 70, column: 18, scope: !200)
!240 = !DILocation(line: 70, column: 2, scope: !200)
!241 = !DILocation(line: 70, column: 6, scope: !200)
!242 = !DILocation(line: 70, column: 10, scope: !200)
!243 = !DILocation(line: 71, column: 1, scope: !200)
!244 = distinct !DISubprogram(name: "to_compat_ipc_perm", scope: !8, file: !8, line: 73, type: !245, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !247)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !156, !38}
!247 = !{!248, !249}
!248 = !DILocalVariable(name: "to", arg: 1, scope: !244, file: !8, line: 73, type: !156)
!249 = !DILocalVariable(name: "from", arg: 2, scope: !244, file: !8, line: 73, type: !38)
!250 = !DILocation(line: 73, column: 49, scope: !244)
!251 = !DILocation(line: 73, column: 72, scope: !244)
!252 = !DILocation(line: 75, column: 12, scope: !244)
!253 = !DILocation(line: 75, column: 18, scope: !244)
!254 = !DILocation(line: 75, column: 2, scope: !244)
!255 = !DILocation(line: 75, column: 6, scope: !244)
!256 = !DILocation(line: 75, column: 10, scope: !244)
!257 = !DILocation(line: 76, column: 2, scope: !244)
!258 = !DILocation(line: 76, column: 2, scope: !259)
!259 = distinct !DILexicalBlock(scope: !244, file: !8, line: 76, column: 2)
!260 = !DILocation(line: 77, column: 2, scope: !244)
!261 = !DILocation(line: 77, column: 2, scope: !262)
!262 = distinct !DILexicalBlock(scope: !244, file: !8, line: 77, column: 2)
!263 = !DILocation(line: 78, column: 2, scope: !244)
!264 = !DILocation(line: 78, column: 2, scope: !265)
!265 = distinct !DILexicalBlock(scope: !244, file: !8, line: 78, column: 2)
!266 = !DILocation(line: 79, column: 2, scope: !244)
!267 = !DILocation(line: 79, column: 2, scope: !268)
!268 = distinct !DILexicalBlock(scope: !244, file: !8, line: 79, column: 2)
!269 = !DILocation(line: 80, column: 13, scope: !244)
!270 = !DILocation(line: 80, column: 19, scope: !244)
!271 = !DILocation(line: 80, column: 2, scope: !244)
!272 = !DILocation(line: 80, column: 6, scope: !244)
!273 = !DILocation(line: 80, column: 11, scope: !244)
!274 = !DILocation(line: 81, column: 12, scope: !244)
!275 = !DILocation(line: 81, column: 18, scope: !244)
!276 = !DILocation(line: 81, column: 2, scope: !244)
!277 = !DILocation(line: 81, column: 6, scope: !244)
!278 = !DILocation(line: 81, column: 10, scope: !244)
!279 = !DILocation(line: 82, column: 1, scope: !244)
!280 = distinct !DISubprogram(name: "check_copy_size", scope: !2, file: !2, line: 237, type: !281, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !287)
!281 = !DISubroutineType(types: !282)
!282 = !{!283, !131, !285, !283}
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !18, line: 35, baseType: !284)
!284 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 61, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !47, line: 72, baseType: !62)
!287 = !{!288, !289, !290, !291, !292, !295}
!288 = !DILocalVariable(name: "addr", arg: 1, scope: !280, file: !2, line: 237, type: !131)
!289 = !DILocalVariable(name: "bytes", arg: 2, scope: !280, file: !2, line: 237, type: !285)
!290 = !DILocalVariable(name: "is_source", arg: 3, scope: !280, file: !2, line: 237, type: !283)
!291 = !DILocalVariable(name: "sz", scope: !280, file: !2, line: 239, type: !24)
!292 = !DILocalVariable(name: "__ret_warn_on", scope: !293, file: !2, line: 249, type: !24)
!293 = distinct !DILexicalBlock(scope: !294, file: !2, line: 249, column: 6)
!294 = distinct !DILexicalBlock(scope: !280, file: !2, line: 249, column: 6)
!295 = !DILocalVariable(name: "__flags", scope: !296, file: !2, line: 249, type: !24)
!296 = distinct !DILexicalBlock(scope: !297, file: !2, line: 249, column: 6)
!297 = distinct !DILexicalBlock(scope: !293, file: !2, line: 249, column: 6)
!298 = !DILocation(line: 237, column: 29, scope: !280)
!299 = !DILocation(line: 237, column: 42, scope: !280)
!300 = !DILocation(line: 237, column: 54, scope: !280)
!301 = !DILocation(line: 239, column: 2, scope: !280)
!302 = !DILocation(line: 239, column: 6, scope: !280)
!303 = !DILocation(line: 239, column: 33, scope: !280)
!304 = !DILocation(line: 239, column: 11, scope: !280)
!305 = !DILocation(line: 240, column: 6, scope: !306)
!306 = distinct !DILexicalBlock(scope: !280, file: !2, line: 240, column: 6)
!307 = !DILocation(line: 0, scope: !306)
!308 = !DILocation(line: 240, column: 6, scope: !280)
!309 = !DILocation(line: 241, column: 29, scope: !310)
!310 = distinct !DILexicalBlock(scope: !311, file: !2, line: 241, column: 7)
!311 = distinct !DILexicalBlock(scope: !306, file: !2, line: 240, column: 39)
!312 = !DILocation(line: 241, column: 8, scope: !310)
!313 = !DILocation(line: 241, column: 7, scope: !311)
!314 = !DILocation(line: 242, column: 18, scope: !310)
!315 = !DILocation(line: 242, column: 22, scope: !310)
!316 = !DILocation(line: 242, column: 4, scope: !310)
!317 = !DILocation(line: 243, column: 12, scope: !318)
!318 = distinct !DILexicalBlock(scope: !310, file: !2, line: 243, column: 12)
!319 = !{i8 0, i8 2}
!320 = !{}
!321 = !DILocation(line: 243, column: 12, scope: !310)
!322 = !DILocation(line: 244, column: 4, scope: !318)
!323 = !{i32 2063375}
!324 = !DILocation(line: 246, column: 4, scope: !318)
!325 = !{i32 2063404}
!326 = !DILocation(line: 247, column: 3, scope: !311)
!327 = !DILocation(line: 249, column: 6, scope: !293)
!328 = !DILocation(line: 249, column: 6, scope: !297)
!329 = !DILocation(line: 249, column: 6, scope: !296)
!330 = !DILocation(line: 249, column: 6, scope: !331)
!331 = distinct !DILexicalBlock(scope: !296, file: !2, line: 249, column: 6)
!332 = !DILocation(line: 249, column: 6, scope: !333)
!333 = distinct !DILexicalBlock(scope: !296, file: !2, line: 249, column: 6)
!334 = !{i64 2149563837, i64 2149563866, i64 2149563912, i64 2149563970, i64 2149564024, i64 2149564078, i64 2149564133, i64 2149564164, i64 2149564472, i64 2149564478, i64 2149564525, i64 2149564548, i64 2149564574}
!335 = !DILocation(line: 249, column: 6, scope: !336)
!336 = distinct !DILexicalBlock(scope: !296, file: !2, line: 249, column: 6)
!337 = !DILocation(line: 249, column: 6, scope: !294)
!338 = !DILocation(line: 249, column: 6, scope: !280)
!339 = !DILocation(line: 250, column: 3, scope: !294)
!340 = !DILocation(line: 251, column: 20, scope: !280)
!341 = !DILocation(line: 251, column: 26, scope: !280)
!342 = !DILocation(line: 251, column: 33, scope: !280)
!343 = !DILocation(line: 251, column: 2, scope: !280)
!344 = !DILocation(line: 252, column: 2, scope: !280)
!345 = !DILocation(line: 253, column: 1, scope: !280)
!346 = !DISubprogram(name: "_copy_from_user", scope: !127, file: !127, line: 158, type: !128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!347 = distinct !DISubprogram(name: "copy_overflow", scope: !2, file: !2, line: 230, type: !348, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !350)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !24, !63}
!350 = !{!351, !352}
!351 = !DILocalVariable(name: "size", arg: 1, scope: !347, file: !2, line: 230, type: !24)
!352 = !DILocalVariable(name: "count", arg: 2, scope: !347, file: !2, line: 230, type: !63)
!353 = !DILocation(line: 230, column: 38, scope: !347)
!354 = !DILocation(line: 230, column: 58, scope: !347)
!355 = !DILocation(line: 233, column: 19, scope: !356)
!356 = distinct !DILexicalBlock(scope: !347, file: !2, line: 232, column: 6)
!357 = !DILocation(line: 233, column: 25, scope: !356)
!358 = !DILocation(line: 233, column: 3, scope: !356)
!359 = !DILocation(line: 234, column: 1, scope: !347)
!360 = !DISubprogram(name: "__bad_copy_from", scope: !2, file: !2, line: 224, type: !361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!361 = !DISubroutineType(types: !362)
!362 = !{null}
!363 = !DISubprogram(name: "__bad_copy_to", scope: !2, file: !2, line: 226, type: !361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!364 = distinct !DISubprogram(name: "check_object_size", scope: !2, file: !2, line: 218, type: !365, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !367)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !131, !63, !283}
!367 = !{!368, !369, !370}
!368 = !DILocalVariable(name: "ptr", arg: 1, scope: !364, file: !2, line: 218, type: !131)
!369 = !DILocalVariable(name: "n", arg: 2, scope: !364, file: !2, line: 218, type: !63)
!370 = !DILocalVariable(name: "to_user", arg: 3, scope: !364, file: !2, line: 219, type: !283)
!371 = !DILocation(line: 218, column: 50, scope: !364)
!372 = !DILocation(line: 218, column: 69, scope: !364)
!373 = !DILocation(line: 219, column: 15, scope: !364)
!374 = !DILocation(line: 220, column: 3, scope: !364)
!375 = !DISubprogram(name: "__copy_overflow", scope: !2, file: !2, line: 228, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)

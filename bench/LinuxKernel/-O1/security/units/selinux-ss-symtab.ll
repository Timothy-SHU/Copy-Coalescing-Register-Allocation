; ModuleID = 'security/selinux/ss/symtab.c'
source_filename = "security/selinux/ss/symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashtab_key_params = type { ptr, ptr }
%struct.static_call_key = type { ptr, %union.anon }
%union.anon = type { i64 }
%struct.symtab = type { %struct.hashtab, i32 }
%struct.hashtab = type { ptr, i32, i32 }
%struct.hashtab_node = type { ptr, ptr, ptr }

@symtab_key_params = internal constant %struct.hashtab_key_params { ptr @symhash, ptr @symcmp }, align 8, !dbg !0
@.str = private unnamed_addr constant [30 x i8] c"security/selinux/ss/hashtab.h\00", align 1, !dbg !12
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched144 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !19
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched144], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @symtab_init(ptr noundef %s, i32 noundef %size) #0 align 16 !dbg !48 {
entry:
  %s.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !70, metadata !DIExpression()), !dbg !72
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !71, metadata !DIExpression()), !dbg !73
  %0 = load ptr, ptr %s.addr, align 8, !dbg !74
  %nprim = getelementptr inbounds %struct.symtab, ptr %0, i32 0, i32 1, !dbg !75
  store i32 0, ptr %nprim, align 8, !dbg !76
  %1 = load ptr, ptr %s.addr, align 8, !dbg !77
  %table = getelementptr inbounds %struct.symtab, ptr %1, i32 0, i32 0, !dbg !78
  %2 = load i32, ptr %size.addr, align 4, !dbg !79
  %call = call i32 @hashtab_init(ptr noundef %table, i32 noundef %2) #6, !dbg !80
  ret i32 %call, !dbg !81
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !82 dso_local i32 @hashtab_init(ptr noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @symtab_insert(ptr noundef %s, ptr noundef %name, ptr noundef %datum) #0 align 16 !dbg !86 {
entry:
  %s.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %datum.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !91, metadata !DIExpression()), !dbg !94
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !92, metadata !DIExpression()), !dbg !95
  store ptr %datum, ptr %datum.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %datum.addr, metadata !93, metadata !DIExpression()), !dbg !96
  %0 = load ptr, ptr %s.addr, align 8, !dbg !97
  %table = getelementptr inbounds %struct.symtab, ptr %0, i32 0, i32 0, !dbg !98
  %1 = load ptr, ptr %name.addr, align 8, !dbg !99
  %2 = load ptr, ptr %datum.addr, align 8, !dbg !100
  %3 = load ptr, ptr @symtab_key_params, align 8, !dbg !101
  %4 = load ptr, ptr getelementptr inbounds ({ ptr, ptr }, ptr @symtab_key_params, i32 0, i32 1), align 8, !dbg !101
  %call = call i32 @hashtab_insert(ptr noundef %table, ptr noundef %1, ptr noundef %2, ptr %3, ptr %4) #6, !dbg !101
  ret i32 %call, !dbg !102
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hashtab_insert(ptr noundef %h, ptr noundef %key, ptr noundef %datum, ptr %key_params.coerce0, ptr %key_params.coerce1) #3 align 16 !dbg !103 {
entry:
  %retval = alloca i32, align 4
  %key_params = alloca %struct.hashtab_key_params, align 8
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %datum.addr = alloca ptr, align 8
  %hvalue = alloca i32, align 4
  %prev = alloca ptr, align 8
  %cur = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %cmp4 = alloca i32, align 4
  %0 = getelementptr inbounds { ptr, ptr }, ptr %key_params, i32 0, i32 0
  store ptr %key_params.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, ptr }, ptr %key_params, i32 0, i32 1
  store ptr %key_params.coerce1, ptr %1, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !107, metadata !DIExpression()), !dbg !116
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !108, metadata !DIExpression()), !dbg !117
  store ptr %datum, ptr %datum.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %datum.addr, metadata !109, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata ptr %key_params, metadata !110, metadata !DIExpression()), !dbg !119
  call void @llvm.lifetime.start.p0(i64 4, ptr %hvalue) #7, !dbg !120
  call void @llvm.dbg.declare(metadata ptr %hvalue, metadata !111, metadata !DIExpression()), !dbg !121
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #7, !dbg !122
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !112, metadata !DIExpression()), !dbg !123
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #7, !dbg !122
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !113, metadata !DIExpression()), !dbg !124
  call void @__might_resched(ptr noundef @.str, i32 noundef 67, i32 noundef 0) #6, !dbg !125
  %call = call i32 @_cond_resched() #6, !dbg !125
  store i32 %call, ptr %tmp, align 4, !dbg !125
  %2 = load i32, ptr %tmp, align 4, !dbg !125
  %3 = load ptr, ptr %h.addr, align 8, !dbg !127
  %size = getelementptr inbounds %struct.hashtab, ptr %3, i32 0, i32 1, !dbg !129
  %4 = load i32, ptr %size, align 8, !dbg !129
  %tobool = icmp ne i32 %4, 0, !dbg !127
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !130

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %h.addr, align 8, !dbg !131
  %nel = getelementptr inbounds %struct.hashtab, ptr %5, i32 0, i32 2, !dbg !132
  %6 = load i32, ptr %nel, align 4, !dbg !132
  %cmp = icmp eq i32 %6, -1, !dbg !133
  br i1 %cmp, label %if.then, label %if.end, !dbg !134

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20, !dbg !135

if.end:                                           ; preds = %lor.lhs.false
  %hash = getelementptr inbounds %struct.hashtab_key_params, ptr %key_params, i32 0, i32 0, !dbg !136
  %7 = load ptr, ptr %hash, align 8, !dbg !136
  %8 = load ptr, ptr %key.addr, align 8, !dbg !137
  %call1 = call i32 %7(ptr noundef %8) #6, !dbg !138
  %9 = load ptr, ptr %h.addr, align 8, !dbg !139
  %size2 = getelementptr inbounds %struct.hashtab, ptr %9, i32 0, i32 1, !dbg !140
  %10 = load i32, ptr %size2, align 8, !dbg !140
  %sub = sub i32 %10, 1, !dbg !141
  %and = and i32 %call1, %sub, !dbg !142
  store i32 %and, ptr %hvalue, align 4, !dbg !143
  store ptr null, ptr %prev, align 8, !dbg !144
  %11 = load ptr, ptr %h.addr, align 8, !dbg !145
  %htable = getelementptr inbounds %struct.hashtab, ptr %11, i32 0, i32 0, !dbg !146
  %12 = load ptr, ptr %htable, align 8, !dbg !146
  %13 = load i32, ptr %hvalue, align 4, !dbg !147
  %idxprom = zext i32 %13 to i64, !dbg !145
  %arrayidx = getelementptr ptr, ptr %12, i64 %idxprom, !dbg !145
  %14 = load ptr, ptr %arrayidx, align 8, !dbg !145
  store ptr %14, ptr %cur, align 8, !dbg !148
  br label %while.cond, !dbg !149

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %15 = load ptr, ptr %cur, align 8, !dbg !150
  %tobool3 = icmp ne ptr %15, null, !dbg !149
  br i1 %tobool3, label %while.body, label %while.end, !dbg !149

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmp4) #7, !dbg !151
  call void @llvm.dbg.declare(metadata ptr %cmp4, metadata !114, metadata !DIExpression()), !dbg !152
  %cmp5 = getelementptr inbounds %struct.hashtab_key_params, ptr %key_params, i32 0, i32 1, !dbg !153
  %16 = load ptr, ptr %cmp5, align 8, !dbg !153
  %17 = load ptr, ptr %key.addr, align 8, !dbg !154
  %18 = load ptr, ptr %cur, align 8, !dbg !155
  %key6 = getelementptr inbounds %struct.hashtab_node, ptr %18, i32 0, i32 0, !dbg !156
  %19 = load ptr, ptr %key6, align 8, !dbg !156
  %call7 = call i32 %16(ptr noundef %17, ptr noundef %19) #6, !dbg !157
  store i32 %call7, ptr %cmp4, align 4, !dbg !152
  %20 = load i32, ptr %cmp4, align 4, !dbg !158
  %cmp8 = icmp eq i32 %20, 0, !dbg !160
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !161

if.then9:                                         ; preds = %while.body
  store i32 -17, ptr %retval, align 4, !dbg !162
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !162

if.end10:                                         ; preds = %while.body
  %21 = load i32, ptr %cmp4, align 4, !dbg !163
  %cmp11 = icmp slt i32 %21, 0, !dbg !165
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !166

if.then12:                                        ; preds = %if.end10
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !167

if.end13:                                         ; preds = %if.end10
  %22 = load ptr, ptr %cur, align 8, !dbg !168
  store ptr %22, ptr %prev, align 8, !dbg !169
  %23 = load ptr, ptr %cur, align 8, !dbg !170
  %next = getelementptr inbounds %struct.hashtab_node, ptr %23, i32 0, i32 2, !dbg !171
  %24 = load ptr, ptr %next, align 8, !dbg !171
  store ptr %24, ptr %cur, align 8, !dbg !172
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !173
  br label %cleanup, !dbg !173

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmp4) #7, !dbg !173
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup20 [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !149, !llvm.loop !174

while.end:                                        ; preds = %cleanup, %while.cond
  %25 = load ptr, ptr %h.addr, align 8, !dbg !177
  %26 = load ptr, ptr %prev, align 8, !dbg !178
  %tobool14 = icmp ne ptr %26, null, !dbg !178
  br i1 %tobool14, label %cond.true, label %cond.false, !dbg !178

cond.true:                                        ; preds = %while.end
  %27 = load ptr, ptr %prev, align 8, !dbg !179
  %next15 = getelementptr inbounds %struct.hashtab_node, ptr %27, i32 0, i32 2, !dbg !180
  br label %cond.end, !dbg !178

cond.false:                                       ; preds = %while.end
  %28 = load ptr, ptr %h.addr, align 8, !dbg !181
  %htable16 = getelementptr inbounds %struct.hashtab, ptr %28, i32 0, i32 0, !dbg !182
  %29 = load ptr, ptr %htable16, align 8, !dbg !182
  %30 = load i32, ptr %hvalue, align 4, !dbg !183
  %idxprom17 = zext i32 %30 to i64, !dbg !181
  %arrayidx18 = getelementptr ptr, ptr %29, i64 %idxprom17, !dbg !181
  br label %cond.end, !dbg !178

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %next15, %cond.true ], [ %arrayidx18, %cond.false ], !dbg !178
  %31 = load ptr, ptr %key.addr, align 8, !dbg !184
  %32 = load ptr, ptr %datum.addr, align 8, !dbg !185
  %call19 = call i32 @__hashtab_insert(ptr noundef %25, ptr noundef %cond, ptr noundef %31, ptr noundef %32) #6, !dbg !186
  store i32 %call19, ptr %retval, align 4, !dbg !187
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20, !dbg !187

cleanup20:                                        ; preds = %cond.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #7, !dbg !188
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #7, !dbg !188
  call void @llvm.lifetime.end.p0(i64 4, ptr %hvalue) #7, !dbg !188
  %33 = load i32, ptr %retval, align 4, !dbg !188
  ret i32 %33, !dbg !188
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @symtab_search(ptr noundef %s, ptr noundef %name) #0 align 16 !dbg !189 {
entry:
  %s.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !195, metadata !DIExpression()), !dbg !197
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !196, metadata !DIExpression()), !dbg !198
  %0 = load ptr, ptr %s.addr, align 8, !dbg !199
  %table = getelementptr inbounds %struct.symtab, ptr %0, i32 0, i32 0, !dbg !200
  %1 = load ptr, ptr %name.addr, align 8, !dbg !201
  %2 = load ptr, ptr @symtab_key_params, align 8, !dbg !202
  %3 = load ptr, ptr getelementptr inbounds ({ ptr, ptr }, ptr @symtab_key_params, i32 0, i32 1), align 8, !dbg !202
  %call = call ptr @hashtab_search(ptr noundef %table, ptr noundef %1, ptr %2, ptr %3) #6, !dbg !202
  ret ptr %call, !dbg !203
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @hashtab_search(ptr noundef %h, ptr noundef %key, ptr %key_params.coerce0, ptr %key_params.coerce1) #3 align 16 !dbg !204 {
entry:
  %retval = alloca ptr, align 8
  %key_params = alloca %struct.hashtab_key_params, align 8
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %hvalue = alloca i32, align 4
  %cur = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %cmp = alloca i32, align 4
  %0 = getelementptr inbounds { ptr, ptr }, ptr %key_params, i32 0, i32 0
  store ptr %key_params.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, ptr }, ptr %key_params, i32 0, i32 1
  store ptr %key_params.coerce1, ptr %1, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !208, metadata !DIExpression()), !dbg !215
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !209, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata ptr %key_params, metadata !210, metadata !DIExpression()), !dbg !217
  call void @llvm.lifetime.start.p0(i64 4, ptr %hvalue) #7, !dbg !218
  call void @llvm.dbg.declare(metadata ptr %hvalue, metadata !211, metadata !DIExpression()), !dbg !219
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #7, !dbg !220
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !212, metadata !DIExpression()), !dbg !221
  %2 = load ptr, ptr %h.addr, align 8, !dbg !222
  %size = getelementptr inbounds %struct.hashtab, ptr %2, i32 0, i32 1, !dbg !224
  %3 = load i32, ptr %size, align 8, !dbg !224
  %tobool = icmp ne i32 %3, 0, !dbg !222
  br i1 %tobool, label %if.end, label %if.then, !dbg !225

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !226
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup12, !dbg !226

if.end:                                           ; preds = %entry
  %hash = getelementptr inbounds %struct.hashtab_key_params, ptr %key_params, i32 0, i32 0, !dbg !227
  %4 = load ptr, ptr %hash, align 8, !dbg !227
  %5 = load ptr, ptr %key.addr, align 8, !dbg !228
  %call = call i32 %4(ptr noundef %5) #6, !dbg !229
  %6 = load ptr, ptr %h.addr, align 8, !dbg !230
  %size1 = getelementptr inbounds %struct.hashtab, ptr %6, i32 0, i32 1, !dbg !231
  %7 = load i32, ptr %size1, align 8, !dbg !231
  %sub = sub i32 %7, 1, !dbg !232
  %and = and i32 %call, %sub, !dbg !233
  store i32 %and, ptr %hvalue, align 4, !dbg !234
  %8 = load ptr, ptr %h.addr, align 8, !dbg !235
  %htable = getelementptr inbounds %struct.hashtab, ptr %8, i32 0, i32 0, !dbg !236
  %9 = load ptr, ptr %htable, align 8, !dbg !236
  %10 = load i32, ptr %hvalue, align 4, !dbg !237
  %idxprom = zext i32 %10 to i64, !dbg !235
  %arrayidx = getelementptr ptr, ptr %9, i64 %idxprom, !dbg !235
  %11 = load ptr, ptr %arrayidx, align 8, !dbg !235
  store ptr %11, ptr %cur, align 8, !dbg !238
  br label %while.cond, !dbg !239

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %12 = load ptr, ptr %cur, align 8, !dbg !240
  %tobool2 = icmp ne ptr %12, null, !dbg !239
  br i1 %tobool2, label %while.body, label %while.end, !dbg !239

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmp) #7, !dbg !241
  call void @llvm.dbg.declare(metadata ptr %cmp, metadata !213, metadata !DIExpression()), !dbg !242
  %cmp3 = getelementptr inbounds %struct.hashtab_key_params, ptr %key_params, i32 0, i32 1, !dbg !243
  %13 = load ptr, ptr %cmp3, align 8, !dbg !243
  %14 = load ptr, ptr %key.addr, align 8, !dbg !244
  %15 = load ptr, ptr %cur, align 8, !dbg !245
  %key4 = getelementptr inbounds %struct.hashtab_node, ptr %15, i32 0, i32 0, !dbg !246
  %16 = load ptr, ptr %key4, align 8, !dbg !246
  %call5 = call i32 %13(ptr noundef %14, ptr noundef %16) #6, !dbg !247
  store i32 %call5, ptr %cmp, align 4, !dbg !242
  %17 = load i32, ptr %cmp, align 4, !dbg !248
  %cmp6 = icmp eq i32 %17, 0, !dbg !250
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !251

if.then7:                                         ; preds = %while.body
  %18 = load ptr, ptr %cur, align 8, !dbg !252
  %datum = getelementptr inbounds %struct.hashtab_node, ptr %18, i32 0, i32 1, !dbg !253
  %19 = load ptr, ptr %datum, align 8, !dbg !253
  store ptr %19, ptr %retval, align 8, !dbg !254
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !254

if.end8:                                          ; preds = %while.body
  %20 = load i32, ptr %cmp, align 4, !dbg !255
  %cmp9 = icmp slt i32 %20, 0, !dbg !257
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !258

if.then10:                                        ; preds = %if.end8
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !259

if.end11:                                         ; preds = %if.end8
  %21 = load ptr, ptr %cur, align 8, !dbg !260
  %next = getelementptr inbounds %struct.hashtab_node, ptr %21, i32 0, i32 2, !dbg !261
  %22 = load ptr, ptr %next, align 8, !dbg !261
  store ptr %22, ptr %cur, align 8, !dbg !262
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !263
  br label %cleanup, !dbg !263

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmp) #7, !dbg !263
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup12 [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !239, !llvm.loop !264

while.end:                                        ; preds = %cleanup, %while.cond
  store ptr null, ptr %retval, align 8, !dbg !265
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup12, !dbg !265

cleanup12:                                        ; preds = %while.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #7, !dbg !266
  call void @llvm.lifetime.end.p0(i64 4, ptr %hvalue) #7, !dbg !266
  %23 = load ptr, ptr %retval, align 8, !dbg !266
  ret ptr %23, !dbg !266
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #3 align 16 !dbg !267 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !272, metadata !DIExpression()), !dbg !275
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !273, metadata !DIExpression()), !dbg !276
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !274, metadata !DIExpression()), !dbg !277
  ret void, !dbg !278
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #5 align 16 !dbg !21 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !279
  %0 = load ptr, ptr %tmp, align 8, !dbg !279
  %call = call i32 %0() #6, !dbg !281
  ret i32 %call, !dbg !282
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !283 dso_local i32 @__hashtab_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @symhash(ptr noundef %key) #0 align 16 !dbg !286 {
entry:
  %key.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %keyp = alloca ptr, align 8
  %size = alloca i32, align 4
  %val = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !290, metadata !DIExpression()), !dbg !295
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !296
  call void @llvm.dbg.declare(metadata ptr %p, metadata !291, metadata !DIExpression()), !dbg !297
  call void @llvm.lifetime.start.p0(i64 8, ptr %keyp) #7, !dbg !296
  call void @llvm.dbg.declare(metadata ptr %keyp, metadata !292, metadata !DIExpression()), !dbg !298
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #7, !dbg !299
  call void @llvm.dbg.declare(metadata ptr %size, metadata !293, metadata !DIExpression()), !dbg !300
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #7, !dbg !301
  call void @llvm.dbg.declare(metadata ptr %val, metadata !294, metadata !DIExpression()), !dbg !302
  store i32 0, ptr %val, align 4, !dbg !303
  %0 = load ptr, ptr %key.addr, align 8, !dbg !304
  store ptr %0, ptr %keyp, align 8, !dbg !305
  %1 = load ptr, ptr %keyp, align 8, !dbg !306
  %call = call i64 @strlen(ptr noundef %1) #6, !dbg !307
  %conv = trunc i64 %call to i32, !dbg !307
  store i32 %conv, ptr %size, align 4, !dbg !308
  %2 = load ptr, ptr %keyp, align 8, !dbg !309
  store ptr %2, ptr %p, align 8, !dbg !311
  br label %for.cond, !dbg !312

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %p, align 8, !dbg !313
  %4 = load ptr, ptr %keyp, align 8, !dbg !315
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i64, !dbg !316
  %sub.ptr.rhs.cast = ptrtoint ptr %4 to i64, !dbg !316
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !316
  %5 = load i32, ptr %size, align 4, !dbg !317
  %conv1 = zext i32 %5 to i64, !dbg !317
  %cmp = icmp slt i64 %sub.ptr.sub, %conv1, !dbg !318
  br i1 %cmp, label %for.body, label %for.end, !dbg !319

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %val, align 4, !dbg !320
  %shl = shl i32 %6, 4, !dbg !321
  %7 = load i32, ptr %val, align 4, !dbg !322
  %shr = lshr i32 %7, 28, !dbg !323
  %or = or i32 %shl, %shr, !dbg !324
  %8 = load ptr, ptr %p, align 8, !dbg !325
  %9 = load i8, ptr %8, align 1, !dbg !326
  %conv3 = zext i8 %9 to i32, !dbg !327
  %xor = xor i32 %or, %conv3, !dbg !328
  store i32 %xor, ptr %val, align 4, !dbg !329
  br label %for.inc, !dbg !330

for.inc:                                          ; preds = %for.body
  %10 = load ptr, ptr %p, align 8, !dbg !331
  %incdec.ptr = getelementptr i8, ptr %10, i32 1, !dbg !331
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !331
  br label %for.cond, !dbg !332, !llvm.loop !333

for.end:                                          ; preds = %for.cond
  %11 = load i32, ptr %val, align 4, !dbg !335
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #7, !dbg !336
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #7, !dbg !336
  call void @llvm.lifetime.end.p0(i64 8, ptr %keyp) #7, !dbg !336
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !336
  ret i32 %11, !dbg !337
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @symcmp(ptr noundef %key1, ptr noundef %key2) #0 align 16 !dbg !338 {
entry:
  %key1.addr = alloca ptr, align 8
  %key2.addr = alloca ptr, align 8
  %keyp1 = alloca ptr, align 8
  %keyp2 = alloca ptr, align 8
  store ptr %key1, ptr %key1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key1.addr, metadata !340, metadata !DIExpression()), !dbg !344
  store ptr %key2, ptr %key2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key2.addr, metadata !341, metadata !DIExpression()), !dbg !345
  call void @llvm.lifetime.start.p0(i64 8, ptr %keyp1) #7, !dbg !346
  call void @llvm.dbg.declare(metadata ptr %keyp1, metadata !342, metadata !DIExpression()), !dbg !347
  call void @llvm.lifetime.start.p0(i64 8, ptr %keyp2) #7, !dbg !346
  call void @llvm.dbg.declare(metadata ptr %keyp2, metadata !343, metadata !DIExpression()), !dbg !348
  %0 = load ptr, ptr %key1.addr, align 8, !dbg !349
  store ptr %0, ptr %keyp1, align 8, !dbg !350
  %1 = load ptr, ptr %key2.addr, align 8, !dbg !351
  store ptr %1, ptr %keyp2, align 8, !dbg !352
  %2 = load ptr, ptr %keyp1, align 8, !dbg !353
  %3 = load ptr, ptr %keyp2, align 8, !dbg !354
  %call = call i32 @strcmp(ptr noundef %2, ptr noundef %3) #6, !dbg !355
  call void @llvm.lifetime.end.p0(i64 8, ptr %keyp2) #7, !dbg !356
  call void @llvm.lifetime.end.p0(i64 8, ptr %keyp1) #7, !dbg !356
  ret i32 %call, !dbg !357
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !358 dso_local i64 @strlen(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !363 dso_local i32 @strcmp(ptr noundef, ptr noundef) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "symtab_key_params", scope: !2, file: !3, line: 35, type: !26, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF security/selinux/ss/.symtab.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -I ./security/selinux -I ./security/selinux/include -D KBUILD_MODFILE=\22security/selinux/selinux\22 -D KBUILD_BASENAME=\22symtab\22 -D KBUILD_MODNAME=\22selinux\22 -D __KBUILD_MODNAME=kmod_selinux -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o security/selinux/ss/symtab.ll security/selinux/ss/symtab.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !11, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "security/selinux/ss/symtab.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1df44dcbbd30f87ca03657656954e236")
!4 = !{!5, !10}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !6, line: 21, baseType: !7)
!6 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !8, line: 27, baseType: !9)
!8 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !{!12, !19, !0}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !14, line: 67, type: !15, isLocal: true, isDefinition: true)
!14 = !DIFile(filename: "security/selinux/ss/hashtab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "93462b8c7243c7cf649d075a1a12e63d")
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 240, elements: !17)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !{!18}
!18 = !DISubrange(count: 30)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched144", scope: !21, file: !22, line: 2104, type: !10, isLocal: true, isDefinition: true)
!21 = distinct !DISubprogram(name: "_cond_resched", scope: !22, file: !22, line: 2102, type: !23, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!22 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!23 = !DISubroutineType(types: !24)
!24 = !{!25}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hashtab_key_params", file: !14, line: 20, size: 128, elements: !28)
!28 = !{!29, !35}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !27, file: !14, line: 21, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DISubroutineType(types: !32)
!32 = !{!5, !33}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !27, file: !14, line: 22, baseType: !36, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!25, !33, !33}
!39 = !{i32 7, !"Dwarf Version", i32 5}
!40 = !{i32 2, !"Debug Info Version", i32 3}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 8, !"cf-protection-branch", i32 1}
!43 = !{i32 4, !"function_return_thunk_extern", i32 1}
!44 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!45 = !{i32 1, !"Code Model", i32 2}
!46 = !{i32 1, !"override-stack-alignment", i32 8}
!47 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!48 = distinct !DISubprogram(name: "symtab_init", scope: !3, file: !3, line: 40, type: !49, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !69)
!49 = !DISubroutineType(types: !50)
!50 = !{!25, !51, !5}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "symtab", file: !53, line: 15, size: 192, elements: !54)
!53 = !DIFile(filename: "security/selinux/ss/symtab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4fa558f58a0acfc7c6989b1450f1c1b")
!54 = !{!55, !68}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !52, file: !53, line: 16, baseType: !56, size: 128)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hashtab", file: !14, line: 32, size: 128, elements: !57)
!57 = !{!58, !66, !67}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "htable", scope: !56, file: !14, line: 33, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hashtab_node", file: !14, line: 26, size: 192, elements: !62)
!62 = !{!63, !64, !65}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !61, file: !14, line: 27, baseType: !10, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !61, file: !14, line: 28, baseType: !10, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !61, file: !14, line: 29, baseType: !60, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !56, file: !14, line: 34, baseType: !5, size: 32, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "nel", scope: !56, file: !14, line: 35, baseType: !5, size: 32, offset: 96)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "nprim", scope: !52, file: !53, line: 17, baseType: !5, size: 32, offset: 128)
!69 = !{!70, !71}
!70 = !DILocalVariable(name: "s", arg: 1, scope: !48, file: !3, line: 40, type: !51)
!71 = !DILocalVariable(name: "size", arg: 2, scope: !48, file: !3, line: 40, type: !5)
!72 = !DILocation(line: 40, column: 32, scope: !48)
!73 = !DILocation(line: 40, column: 39, scope: !48)
!74 = !DILocation(line: 42, column: 2, scope: !48)
!75 = !DILocation(line: 42, column: 5, scope: !48)
!76 = !DILocation(line: 42, column: 11, scope: !48)
!77 = !DILocation(line: 43, column: 23, scope: !48)
!78 = !DILocation(line: 43, column: 26, scope: !48)
!79 = !DILocation(line: 43, column: 33, scope: !48)
!80 = !DILocation(line: 43, column: 9, scope: !48)
!81 = !DILocation(line: 43, column: 2, scope: !48)
!82 = !DISubprogram(name: "hashtab_init", scope: !14, file: !14, line: 48, type: !83, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!83 = !DISubroutineType(types: !84)
!84 = !{!25, !85, !5}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!86 = distinct !DISubprogram(name: "symtab_insert", scope: !3, file: !3, line: 46, type: !87, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !90)
!87 = !DISubroutineType(types: !88)
!88 = !{!25, !51, !89, !10}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!90 = !{!91, !92, !93}
!91 = !DILocalVariable(name: "s", arg: 1, scope: !86, file: !3, line: 46, type: !51)
!92 = !DILocalVariable(name: "name", arg: 2, scope: !86, file: !3, line: 46, type: !89)
!93 = !DILocalVariable(name: "datum", arg: 3, scope: !86, file: !3, line: 46, type: !10)
!94 = !DILocation(line: 46, column: 34, scope: !86)
!95 = !DILocation(line: 46, column: 43, scope: !86)
!96 = !DILocation(line: 46, column: 55, scope: !86)
!97 = !DILocation(line: 48, column: 25, scope: !86)
!98 = !DILocation(line: 48, column: 28, scope: !86)
!99 = !DILocation(line: 48, column: 35, scope: !86)
!100 = !DILocation(line: 48, column: 41, scope: !86)
!101 = !DILocation(line: 48, column: 9, scope: !86)
!102 = !DILocation(line: 48, column: 2, scope: !86)
!103 = distinct !DISubprogram(name: "hashtab_insert", scope: !14, file: !14, line: 61, type: !104, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !106)
!104 = !DISubroutineType(types: !105)
!105 = !{!25, !85, !10, !10, !27}
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114}
!107 = !DILocalVariable(name: "h", arg: 1, scope: !103, file: !14, line: 61, type: !85)
!108 = !DILocalVariable(name: "key", arg: 2, scope: !103, file: !14, line: 61, type: !10)
!109 = !DILocalVariable(name: "datum", arg: 3, scope: !103, file: !14, line: 61, type: !10)
!110 = !DILocalVariable(name: "key_params", arg: 4, scope: !103, file: !14, line: 62, type: !27)
!111 = !DILocalVariable(name: "hvalue", scope: !103, file: !14, line: 64, type: !5)
!112 = !DILocalVariable(name: "prev", scope: !103, file: !14, line: 65, type: !60)
!113 = !DILocalVariable(name: "cur", scope: !103, file: !14, line: 65, type: !60)
!114 = !DILocalVariable(name: "cmp", scope: !115, file: !14, line: 76, type: !25)
!115 = distinct !DILexicalBlock(scope: !103, file: !14, line: 75, column: 14)
!116 = !DILocation(line: 61, column: 50, scope: !103)
!117 = !DILocation(line: 61, column: 59, scope: !103)
!118 = !DILocation(line: 61, column: 70, scope: !103)
!119 = !DILocation(line: 62, column: 32, scope: !103)
!120 = !DILocation(line: 64, column: 2, scope: !103)
!121 = !DILocation(line: 64, column: 6, scope: !103)
!122 = !DILocation(line: 65, column: 2, scope: !103)
!123 = !DILocation(line: 65, column: 23, scope: !103)
!124 = !DILocation(line: 65, column: 30, scope: !103)
!125 = !DILocation(line: 67, column: 2, scope: !126)
!126 = distinct !DILexicalBlock(scope: !103, file: !14, line: 67, column: 2)
!127 = !DILocation(line: 69, column: 7, scope: !128)
!128 = distinct !DILexicalBlock(scope: !103, file: !14, line: 69, column: 6)
!129 = !DILocation(line: 69, column: 10, scope: !128)
!130 = !DILocation(line: 69, column: 15, scope: !128)
!131 = !DILocation(line: 69, column: 18, scope: !128)
!132 = !DILocation(line: 69, column: 21, scope: !128)
!133 = !DILocation(line: 69, column: 25, scope: !128)
!134 = !DILocation(line: 69, column: 6, scope: !103)
!135 = !DILocation(line: 70, column: 3, scope: !128)
!136 = !DILocation(line: 72, column: 22, scope: !103)
!137 = !DILocation(line: 72, column: 27, scope: !103)
!138 = !DILocation(line: 72, column: 11, scope: !103)
!139 = !DILocation(line: 72, column: 35, scope: !103)
!140 = !DILocation(line: 72, column: 38, scope: !103)
!141 = !DILocation(line: 72, column: 43, scope: !103)
!142 = !DILocation(line: 72, column: 32, scope: !103)
!143 = !DILocation(line: 72, column: 9, scope: !103)
!144 = !DILocation(line: 73, column: 7, scope: !103)
!145 = !DILocation(line: 74, column: 8, scope: !103)
!146 = !DILocation(line: 74, column: 11, scope: !103)
!147 = !DILocation(line: 74, column: 18, scope: !103)
!148 = !DILocation(line: 74, column: 6, scope: !103)
!149 = !DILocation(line: 75, column: 2, scope: !103)
!150 = !DILocation(line: 75, column: 9, scope: !103)
!151 = !DILocation(line: 76, column: 3, scope: !115)
!152 = !DILocation(line: 76, column: 7, scope: !115)
!153 = !DILocation(line: 76, column: 24, scope: !115)
!154 = !DILocation(line: 76, column: 28, scope: !115)
!155 = !DILocation(line: 76, column: 33, scope: !115)
!156 = !DILocation(line: 76, column: 38, scope: !115)
!157 = !DILocation(line: 76, column: 13, scope: !115)
!158 = !DILocation(line: 78, column: 7, scope: !159)
!159 = distinct !DILexicalBlock(scope: !115, file: !14, line: 78, column: 7)
!160 = !DILocation(line: 78, column: 11, scope: !159)
!161 = !DILocation(line: 78, column: 7, scope: !115)
!162 = !DILocation(line: 79, column: 4, scope: !159)
!163 = !DILocation(line: 80, column: 7, scope: !164)
!164 = distinct !DILexicalBlock(scope: !115, file: !14, line: 80, column: 7)
!165 = !DILocation(line: 80, column: 11, scope: !164)
!166 = !DILocation(line: 80, column: 7, scope: !115)
!167 = !DILocation(line: 81, column: 4, scope: !164)
!168 = !DILocation(line: 82, column: 10, scope: !115)
!169 = !DILocation(line: 82, column: 8, scope: !115)
!170 = !DILocation(line: 83, column: 9, scope: !115)
!171 = !DILocation(line: 83, column: 14, scope: !115)
!172 = !DILocation(line: 83, column: 7, scope: !115)
!173 = !DILocation(line: 84, column: 2, scope: !103)
!174 = distinct !{!174, !149, !173, !175, !176}
!175 = !{!"llvm.loop.mustprogress"}
!176 = !{!"llvm.loop.unroll.disable"}
!177 = !DILocation(line: 86, column: 26, scope: !103)
!178 = !DILocation(line: 86, column: 29, scope: !103)
!179 = !DILocation(line: 86, column: 37, scope: !103)
!180 = !DILocation(line: 86, column: 43, scope: !103)
!181 = !DILocation(line: 86, column: 51, scope: !103)
!182 = !DILocation(line: 86, column: 54, scope: !103)
!183 = !DILocation(line: 86, column: 61, scope: !103)
!184 = !DILocation(line: 87, column: 5, scope: !103)
!185 = !DILocation(line: 87, column: 10, scope: !103)
!186 = !DILocation(line: 86, column: 9, scope: !103)
!187 = !DILocation(line: 86, column: 2, scope: !103)
!188 = !DILocation(line: 88, column: 1, scope: !103)
!189 = distinct !DISubprogram(name: "symtab_search", scope: !3, file: !3, line: 51, type: !190, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !194)
!190 = !DISubroutineType(types: !191)
!191 = !{!10, !51, !192}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!194 = !{!195, !196}
!195 = !DILocalVariable(name: "s", arg: 1, scope: !189, file: !3, line: 51, type: !51)
!196 = !DILocalVariable(name: "name", arg: 2, scope: !189, file: !3, line: 51, type: !192)
!197 = !DILocation(line: 51, column: 36, scope: !189)
!198 = !DILocation(line: 51, column: 51, scope: !189)
!199 = !DILocation(line: 53, column: 25, scope: !189)
!200 = !DILocation(line: 53, column: 28, scope: !189)
!201 = !DILocation(line: 53, column: 35, scope: !189)
!202 = !DILocation(line: 53, column: 9, scope: !189)
!203 = !DILocation(line: 53, column: 2, scope: !189)
!204 = distinct !DISubprogram(name: "hashtab_search", scope: !14, file: !14, line: 96, type: !205, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !207)
!205 = !DISubroutineType(types: !206)
!206 = !{!10, !85, !33, !27}
!207 = !{!208, !209, !210, !211, !212, !213}
!208 = !DILocalVariable(name: "h", arg: 1, scope: !204, file: !14, line: 96, type: !85)
!209 = !DILocalVariable(name: "key", arg: 2, scope: !204, file: !14, line: 96, type: !33)
!210 = !DILocalVariable(name: "key_params", arg: 3, scope: !204, file: !14, line: 97, type: !27)
!211 = !DILocalVariable(name: "hvalue", scope: !204, file: !14, line: 99, type: !5)
!212 = !DILocalVariable(name: "cur", scope: !204, file: !14, line: 100, type: !60)
!213 = !DILocalVariable(name: "cmp", scope: !214, file: !14, line: 108, type: !25)
!214 = distinct !DILexicalBlock(scope: !204, file: !14, line: 107, column: 14)
!215 = !DILocation(line: 96, column: 52, scope: !204)
!216 = !DILocation(line: 96, column: 67, scope: !204)
!217 = !DILocation(line: 97, column: 34, scope: !204)
!218 = !DILocation(line: 99, column: 2, scope: !204)
!219 = !DILocation(line: 99, column: 6, scope: !204)
!220 = !DILocation(line: 100, column: 2, scope: !204)
!221 = !DILocation(line: 100, column: 23, scope: !204)
!222 = !DILocation(line: 102, column: 7, scope: !223)
!223 = distinct !DILexicalBlock(scope: !204, file: !14, line: 102, column: 6)
!224 = !DILocation(line: 102, column: 10, scope: !223)
!225 = !DILocation(line: 102, column: 6, scope: !204)
!226 = !DILocation(line: 103, column: 3, scope: !223)
!227 = !DILocation(line: 105, column: 22, scope: !204)
!228 = !DILocation(line: 105, column: 27, scope: !204)
!229 = !DILocation(line: 105, column: 11, scope: !204)
!230 = !DILocation(line: 105, column: 35, scope: !204)
!231 = !DILocation(line: 105, column: 38, scope: !204)
!232 = !DILocation(line: 105, column: 43, scope: !204)
!233 = !DILocation(line: 105, column: 32, scope: !204)
!234 = !DILocation(line: 105, column: 9, scope: !204)
!235 = !DILocation(line: 106, column: 8, scope: !204)
!236 = !DILocation(line: 106, column: 11, scope: !204)
!237 = !DILocation(line: 106, column: 18, scope: !204)
!238 = !DILocation(line: 106, column: 6, scope: !204)
!239 = !DILocation(line: 107, column: 2, scope: !204)
!240 = !DILocation(line: 107, column: 9, scope: !204)
!241 = !DILocation(line: 108, column: 3, scope: !214)
!242 = !DILocation(line: 108, column: 7, scope: !214)
!243 = !DILocation(line: 108, column: 24, scope: !214)
!244 = !DILocation(line: 108, column: 28, scope: !214)
!245 = !DILocation(line: 108, column: 33, scope: !214)
!246 = !DILocation(line: 108, column: 38, scope: !214)
!247 = !DILocation(line: 108, column: 13, scope: !214)
!248 = !DILocation(line: 110, column: 7, scope: !249)
!249 = distinct !DILexicalBlock(scope: !214, file: !14, line: 110, column: 7)
!250 = !DILocation(line: 110, column: 11, scope: !249)
!251 = !DILocation(line: 110, column: 7, scope: !214)
!252 = !DILocation(line: 111, column: 11, scope: !249)
!253 = !DILocation(line: 111, column: 16, scope: !249)
!254 = !DILocation(line: 111, column: 4, scope: !249)
!255 = !DILocation(line: 112, column: 7, scope: !256)
!256 = distinct !DILexicalBlock(scope: !214, file: !14, line: 112, column: 7)
!257 = !DILocation(line: 112, column: 11, scope: !256)
!258 = !DILocation(line: 112, column: 7, scope: !214)
!259 = !DILocation(line: 113, column: 4, scope: !256)
!260 = !DILocation(line: 114, column: 9, scope: !214)
!261 = !DILocation(line: 114, column: 14, scope: !214)
!262 = !DILocation(line: 114, column: 7, scope: !214)
!263 = !DILocation(line: 115, column: 2, scope: !204)
!264 = distinct !{!264, !239, !263, !175, !176}
!265 = !DILocation(line: 116, column: 2, scope: !204)
!266 = !DILocation(line: 117, column: 1, scope: !204)
!267 = distinct !DISubprogram(name: "__might_resched", scope: !268, file: !268, line: 184, type: !269, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !271)
!268 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!269 = !DISubroutineType(types: !270)
!270 = !{null, !192, !25, !9}
!271 = !{!272, !273, !274}
!272 = !DILocalVariable(name: "file", arg: 1, scope: !267, file: !268, line: 184, type: !192)
!273 = !DILocalVariable(name: "line", arg: 2, scope: !267, file: !268, line: 184, type: !25)
!274 = !DILocalVariable(name: "offsets", arg: 3, scope: !267, file: !268, line: 185, type: !9)
!275 = !DILocation(line: 184, column: 50, scope: !267)
!276 = !DILocation(line: 184, column: 60, scope: !267)
!277 = !DILocation(line: 185, column: 23, scope: !267)
!278 = !DILocation(line: 185, column: 34, scope: !267)
!279 = !DILocation(line: 2104, column: 9, scope: !280)
!280 = distinct !DILexicalBlock(scope: !21, file: !22, line: 2104, column: 9)
!281 = !DILocation(line: 2104, column: 9, scope: !21)
!282 = !DILocation(line: 2104, column: 2, scope: !21)
!283 = !DISubprogram(name: "__hashtab_insert", scope: !14, file: !14, line: 50, type: !284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!284 = !DISubroutineType(types: !285)
!285 = !{!25, !85, !59, !10, !10}
!286 = distinct !DISubprogram(name: "symhash", scope: !3, file: !3, line: 12, type: !287, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !289)
!287 = !DISubroutineType(types: !288)
!288 = !{!9, !33}
!289 = !{!290, !291, !292, !293, !294}
!290 = !DILocalVariable(name: "key", arg: 1, scope: !286, file: !3, line: 12, type: !33)
!291 = !DILocalVariable(name: "p", scope: !286, file: !3, line: 14, type: !192)
!292 = !DILocalVariable(name: "keyp", scope: !286, file: !3, line: 14, type: !192)
!293 = !DILocalVariable(name: "size", scope: !286, file: !3, line: 15, type: !9)
!294 = !DILocalVariable(name: "val", scope: !286, file: !3, line: 16, type: !9)
!295 = !DILocation(line: 12, column: 41, scope: !286)
!296 = !DILocation(line: 14, column: 2, scope: !286)
!297 = !DILocation(line: 14, column: 14, scope: !286)
!298 = !DILocation(line: 14, column: 18, scope: !286)
!299 = !DILocation(line: 15, column: 2, scope: !286)
!300 = !DILocation(line: 15, column: 15, scope: !286)
!301 = !DILocation(line: 16, column: 2, scope: !286)
!302 = !DILocation(line: 16, column: 15, scope: !286)
!303 = !DILocation(line: 18, column: 6, scope: !286)
!304 = !DILocation(line: 19, column: 9, scope: !286)
!305 = !DILocation(line: 19, column: 7, scope: !286)
!306 = !DILocation(line: 20, column: 16, scope: !286)
!307 = !DILocation(line: 20, column: 9, scope: !286)
!308 = !DILocation(line: 20, column: 7, scope: !286)
!309 = !DILocation(line: 21, column: 11, scope: !310)
!310 = distinct !DILexicalBlock(scope: !286, file: !3, line: 21, column: 2)
!311 = !DILocation(line: 21, column: 9, scope: !310)
!312 = !DILocation(line: 21, column: 7, scope: !310)
!313 = !DILocation(line: 21, column: 18, scope: !314)
!314 = distinct !DILexicalBlock(scope: !310, file: !3, line: 21, column: 2)
!315 = !DILocation(line: 21, column: 22, scope: !314)
!316 = !DILocation(line: 21, column: 20, scope: !314)
!317 = !DILocation(line: 21, column: 30, scope: !314)
!318 = !DILocation(line: 21, column: 28, scope: !314)
!319 = !DILocation(line: 21, column: 2, scope: !310)
!320 = !DILocation(line: 22, column: 10, scope: !314)
!321 = !DILocation(line: 22, column: 14, scope: !314)
!322 = !DILocation(line: 22, column: 22, scope: !314)
!323 = !DILocation(line: 22, column: 26, scope: !314)
!324 = !DILocation(line: 22, column: 19, scope: !314)
!325 = !DILocation(line: 22, column: 62, scope: !314)
!326 = !DILocation(line: 22, column: 61, scope: !314)
!327 = !DILocation(line: 22, column: 60, scope: !314)
!328 = !DILocation(line: 22, column: 58, scope: !314)
!329 = !DILocation(line: 22, column: 7, scope: !314)
!330 = !DILocation(line: 22, column: 3, scope: !314)
!331 = !DILocation(line: 21, column: 37, scope: !314)
!332 = !DILocation(line: 21, column: 2, scope: !314)
!333 = distinct !{!333, !319, !334, !175, !176}
!334 = !DILocation(line: 22, column: 63, scope: !310)
!335 = !DILocation(line: 23, column: 9, scope: !286)
!336 = !DILocation(line: 24, column: 1, scope: !286)
!337 = !DILocation(line: 23, column: 2, scope: !286)
!338 = distinct !DISubprogram(name: "symcmp", scope: !3, file: !3, line: 26, type: !37, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !339)
!339 = !{!340, !341, !342, !343}
!340 = !DILocalVariable(name: "key1", arg: 1, scope: !338, file: !3, line: 26, type: !33)
!341 = !DILocalVariable(name: "key2", arg: 2, scope: !338, file: !3, line: 26, type: !33)
!342 = !DILocalVariable(name: "keyp1", scope: !338, file: !3, line: 28, type: !192)
!343 = !DILocalVariable(name: "keyp2", scope: !338, file: !3, line: 28, type: !192)
!344 = !DILocation(line: 26, column: 31, scope: !338)
!345 = !DILocation(line: 26, column: 49, scope: !338)
!346 = !DILocation(line: 28, column: 2, scope: !338)
!347 = !DILocation(line: 28, column: 14, scope: !338)
!348 = !DILocation(line: 28, column: 22, scope: !338)
!349 = !DILocation(line: 30, column: 10, scope: !338)
!350 = !DILocation(line: 30, column: 8, scope: !338)
!351 = !DILocation(line: 31, column: 10, scope: !338)
!352 = !DILocation(line: 31, column: 8, scope: !338)
!353 = !DILocation(line: 32, column: 16, scope: !338)
!354 = !DILocation(line: 32, column: 23, scope: !338)
!355 = !DILocation(line: 32, column: 9, scope: !338)
!356 = !DILocation(line: 33, column: 1, scope: !338)
!357 = !DILocation(line: 32, column: 2, scope: !338)
!358 = !DISubprogram(name: "strlen", scope: !359, file: !359, line: 128, type: !360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!359 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!360 = !DISubroutineType(types: !361)
!361 = !{!362, !192}
!362 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!363 = !DISubprogram(name: "strcmp", scope: !359, file: !359, line: 88, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!364 = !DISubroutineType(types: !365)
!365 = !{!25, !192, !192}

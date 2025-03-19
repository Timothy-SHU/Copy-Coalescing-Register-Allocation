; ModuleID = 'lib/parser.c'
source_filename = "lib/parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_match_token: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad match_token ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_match_int: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad match_int ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_match_uint: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad match_uint ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_match_u64: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad match_u64 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_match_octal: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad match_octal ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_match_hex: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad match_hex ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_match_wildcard: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad match_wildcard ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_match_strlcpy: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad match_strlcpy ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_match_strdup: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad match_strdup ; .previous"

%struct.match_token = type { i32, ptr }
%struct.substring_t = type { ptr, ptr }

@__UNIQUE_ID___addressable_match_token118 = internal global ptr @match_token, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_match_int119 = internal global ptr @match_int, section ".discard.addressable", align 8, !dbg !25
@__UNIQUE_ID___addressable_match_uint120 = internal global ptr @match_uint, section ".discard.addressable", align 8, !dbg !27
@__UNIQUE_ID___addressable_match_u64121 = internal global ptr @match_u64, section ".discard.addressable", align 8, !dbg !29
@__UNIQUE_ID___addressable_match_octal122 = internal global ptr @match_octal, section ".discard.addressable", align 8, !dbg !31
@__UNIQUE_ID___addressable_match_hex123 = internal global ptr @match_hex, section ".discard.addressable", align 8, !dbg !33
@__UNIQUE_ID___addressable_match_wildcard124 = internal global ptr @match_wildcard, section ".discard.addressable", align 8, !dbg !35
@__UNIQUE_ID___addressable_match_strlcpy125 = internal global ptr @match_strlcpy, section ".discard.addressable", align 8, !dbg !37
@__UNIQUE_ID___addressable_match_strdup126 = internal global ptr @match_strdup, section ".discard.addressable", align 8, !dbg !39
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID___addressable_match_token118, ptr @__UNIQUE_ID___addressable_match_int119, ptr @__UNIQUE_ID___addressable_match_uint120, ptr @__UNIQUE_ID___addressable_match_u64121, ptr @__UNIQUE_ID___addressable_match_octal122, ptr @__UNIQUE_ID___addressable_match_hex123, ptr @__UNIQUE_ID___addressable_match_wildcard124, ptr @__UNIQUE_ID___addressable_match_strlcpy125, ptr @__UNIQUE_ID___addressable_match_strdup126], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @match_token(ptr noundef %s, ptr noundef %table, ptr noundef %args) #0 align 16 !dbg !50 {
entry:
  %s.addr = alloca ptr, align 8
  %table.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !68, metadata !DIExpression()), !dbg !72
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !69, metadata !DIExpression()), !dbg !73
  store ptr %args, ptr %args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !70, metadata !DIExpression()), !dbg !74
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6, !dbg !75
  call void @llvm.dbg.declare(metadata ptr %p, metadata !71, metadata !DIExpression()), !dbg !76
  %0 = load ptr, ptr %table.addr, align 8, !dbg !77
  store ptr %0, ptr %p, align 8, !dbg !79
  br label %for.cond, !dbg !80

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %s.addr, align 8, !dbg !81
  %2 = load ptr, ptr %p, align 8, !dbg !83
  %pattern = getelementptr inbounds %struct.match_token, ptr %2, i32 0, i32 1, !dbg !84
  %3 = load ptr, ptr %pattern, align 8, !dbg !84
  %4 = load ptr, ptr %args.addr, align 8, !dbg !85
  %call = call i32 @match_one(ptr noundef %1, ptr noundef %3, ptr noundef %4) #7, !dbg !86
  %tobool = icmp ne i32 %call, 0, !dbg !87
  %lnot = xor i1 %tobool, true, !dbg !87
  br i1 %lnot, label %for.body, label %for.end, !dbg !88

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !88

for.inc:                                          ; preds = %for.body
  %5 = load ptr, ptr %p, align 8, !dbg !89
  %incdec.ptr = getelementptr %struct.match_token, ptr %5, i32 1, !dbg !89
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !89
  br label %for.cond, !dbg !90, !llvm.loop !91

for.end:                                          ; preds = %for.cond
  %6 = load ptr, ptr %p, align 8, !dbg !95
  %token = getelementptr inbounds %struct.match_token, ptr %6, i32 0, i32 0, !dbg !96
  %7 = load i32, ptr %token, align 8, !dbg !96
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6, !dbg !97
  ret i32 %7, !dbg !98
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @match_one(ptr noundef %s, ptr noundef %p, ptr noundef %args) #0 align 16 !dbg !99 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  %meta = alloca ptr, align 8
  %argc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %len = alloca i32, align 4
  %str_len = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !103, metadata !DIExpression()), !dbg !119
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !104, metadata !DIExpression()), !dbg !120
  store ptr %args, ptr %args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !105, metadata !DIExpression()), !dbg !121
  call void @llvm.lifetime.start.p0(i64 8, ptr %meta) #6, !dbg !122
  call void @llvm.dbg.declare(metadata ptr %meta, metadata !106, metadata !DIExpression()), !dbg !123
  call void @llvm.lifetime.start.p0(i64 4, ptr %argc) #6, !dbg !124
  call void @llvm.dbg.declare(metadata ptr %argc, metadata !107, metadata !DIExpression()), !dbg !125
  store i32 0, ptr %argc, align 4, !dbg !125
  %0 = load ptr, ptr %p.addr, align 8, !dbg !126
  %tobool = icmp ne ptr %0, null, !dbg !126
  br i1 %tobool, label %if.end, label %if.then, !dbg !128

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !129
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup88, !dbg !129

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !130

while.cond:                                       ; preds = %cleanup.cont, %cleanup86, %if.end
  br label %while.body, !dbg !130

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #6, !dbg !131
  call void @llvm.dbg.declare(metadata ptr %len, metadata !108, metadata !DIExpression()), !dbg !132
  store i32 -1, ptr %len, align 4, !dbg !132
  %1 = load ptr, ptr %p.addr, align 8, !dbg !133
  %call = call ptr @strchr(ptr noundef %1, i32 noundef 37) #7, !dbg !134
  store ptr %call, ptr %meta, align 8, !dbg !135
  %2 = load ptr, ptr %meta, align 8, !dbg !136
  %tobool1 = icmp ne ptr %2, null, !dbg !136
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !138

if.then2:                                         ; preds = %while.body
  %3 = load ptr, ptr %p.addr, align 8, !dbg !139
  %4 = load ptr, ptr %s.addr, align 8, !dbg !140
  %call3 = call i32 @strcmp(ptr noundef %3, ptr noundef %4) #7, !dbg !141
  %cmp = icmp eq i32 %call3, 0, !dbg !142
  %conv = zext i1 %cmp to i32, !dbg !142
  store i32 %conv, ptr %retval, align 4, !dbg !143
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup86, !dbg !143

if.end4:                                          ; preds = %while.body
  %5 = load ptr, ptr %p.addr, align 8, !dbg !144
  %6 = load ptr, ptr %s.addr, align 8, !dbg !146
  %7 = load ptr, ptr %meta, align 8, !dbg !147
  %8 = load ptr, ptr %p.addr, align 8, !dbg !148
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i64, !dbg !149
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i64, !dbg !149
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !149
  %call5 = call i32 @strncmp(ptr noundef %5, ptr noundef %6, i64 noundef %sub.ptr.sub) #7, !dbg !150
  %tobool6 = icmp ne i32 %call5, 0, !dbg !150
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !151

if.then7:                                         ; preds = %if.end4
  store i32 0, ptr %retval, align 4, !dbg !152
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup86, !dbg !152

if.end8:                                          ; preds = %if.end4
  %9 = load ptr, ptr %meta, align 8, !dbg !153
  %10 = load ptr, ptr %p.addr, align 8, !dbg !154
  %sub.ptr.lhs.cast9 = ptrtoint ptr %9 to i64, !dbg !155
  %sub.ptr.rhs.cast10 = ptrtoint ptr %10 to i64, !dbg !155
  %sub.ptr.sub11 = sub i64 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast10, !dbg !155
  %11 = load ptr, ptr %s.addr, align 8, !dbg !156
  %add.ptr = getelementptr i8, ptr %11, i64 %sub.ptr.sub11, !dbg !156
  store ptr %add.ptr, ptr %s.addr, align 8, !dbg !156
  %12 = load ptr, ptr %meta, align 8, !dbg !157
  %add.ptr12 = getelementptr i8, ptr %12, i64 1, !dbg !158
  store ptr %add.ptr12, ptr %p.addr, align 8, !dbg !159
  %13 = load ptr, ptr %p.addr, align 8, !dbg !160
  %14 = load i8, ptr %13, align 1, !dbg !162
  %conv13 = zext i8 %14 to i32, !dbg !162
  %call14 = call i32 @isdigit(i32 noundef %conv13) #7, !dbg !163
  %tobool15 = icmp ne i32 %call14, 0, !dbg !163
  br i1 %tobool15, label %if.then16, label %if.else, !dbg !164

if.then16:                                        ; preds = %if.end8
  %15 = load ptr, ptr %p.addr, align 8, !dbg !165
  %call17 = call i64 @simple_strtoul(ptr noundef %15, ptr noundef %p.addr, i32 noundef 10) #7, !dbg !166
  %conv18 = trunc i64 %call17 to i32, !dbg !166
  store i32 %conv18, ptr %len, align 4, !dbg !167
  br label %if.end30, !dbg !168

if.else:                                          ; preds = %if.end8
  %16 = load ptr, ptr %p.addr, align 8, !dbg !169
  %17 = load i8, ptr %16, align 1, !dbg !171
  %conv19 = zext i8 %17 to i32, !dbg !171
  %cmp20 = icmp eq i32 %conv19, 37, !dbg !172
  br i1 %cmp20, label %if.then22, label %if.end29, !dbg !173

if.then22:                                        ; preds = %if.else
  %18 = load ptr, ptr %s.addr, align 8, !dbg !174
  %incdec.ptr = getelementptr i8, ptr %18, i32 1, !dbg !174
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !174
  %19 = load i8, ptr %18, align 1, !dbg !177
  %conv23 = zext i8 %19 to i32, !dbg !177
  %cmp24 = icmp ne i32 %conv23, 37, !dbg !178
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !179

if.then26:                                        ; preds = %if.then22
  store i32 0, ptr %retval, align 4, !dbg !180
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup86, !dbg !180

if.end27:                                         ; preds = %if.then22
  %20 = load ptr, ptr %p.addr, align 8, !dbg !181
  %incdec.ptr28 = getelementptr i8, ptr %20, i32 1, !dbg !181
  store ptr %incdec.ptr28, ptr %p.addr, align 8, !dbg !181
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup86, !dbg !182, !llvm.loop !183

if.end29:                                         ; preds = %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then16
  %21 = load i32, ptr %argc, align 4, !dbg !185
  %cmp31 = icmp sge i32 %21, 3, !dbg !187
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !188

if.then33:                                        ; preds = %if.end30
  store i32 0, ptr %retval, align 4, !dbg !189
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup86, !dbg !189

if.end34:                                         ; preds = %if.end30
  %22 = load ptr, ptr %s.addr, align 8, !dbg !190
  %23 = load ptr, ptr %args.addr, align 8, !dbg !191
  %24 = load i32, ptr %argc, align 4, !dbg !192
  %idxprom = sext i32 %24 to i64, !dbg !191
  %arrayidx = getelementptr %struct.substring_t, ptr %23, i64 %idxprom, !dbg !191
  %from = getelementptr inbounds %struct.substring_t, ptr %arrayidx, i32 0, i32 0, !dbg !193
  store ptr %22, ptr %from, align 8, !dbg !194
  %25 = load ptr, ptr %p.addr, align 8, !dbg !195
  %incdec.ptr35 = getelementptr i8, ptr %25, i32 1, !dbg !195
  store ptr %incdec.ptr35, ptr %p.addr, align 8, !dbg !195
  %26 = load i8, ptr %25, align 1, !dbg !196
  %conv36 = zext i8 %26 to i32, !dbg !196
  switch i32 %conv36, label %sw.default [
    i32 115, label %sw.bb
    i32 100, label %sw.bb53
    i32 117, label %sw.bb58
    i32 111, label %sw.bb63
    i32 120, label %sw.bb68
  ], !dbg !197

sw.bb:                                            ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 8, ptr %str_len) #6, !dbg !198
  call void @llvm.dbg.declare(metadata ptr %str_len, metadata !110, metadata !DIExpression()), !dbg !199
  %27 = load ptr, ptr %s.addr, align 8, !dbg !200
  %call37 = call i64 @strlen(ptr noundef %27) #7, !dbg !201
  store i64 %call37, ptr %str_len, align 8, !dbg !199
  %28 = load i64, ptr %str_len, align 8, !dbg !202
  %cmp38 = icmp eq i64 %28, 0, !dbg !204
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !205

if.then40:                                        ; preds = %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !206
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !206

if.end41:                                         ; preds = %sw.bb
  %29 = load i32, ptr %len, align 4, !dbg !207
  %cmp42 = icmp eq i32 %29, -1, !dbg !209
  br i1 %cmp42, label %if.then47, label %lor.lhs.false, !dbg !210

lor.lhs.false:                                    ; preds = %if.end41
  %30 = load i32, ptr %len, align 4, !dbg !211
  %conv44 = sext i32 %30 to i64, !dbg !211
  %31 = load i64, ptr %str_len, align 8, !dbg !212
  %cmp45 = icmp ugt i64 %conv44, %31, !dbg !213
  br i1 %cmp45, label %if.then47, label %if.end49, !dbg !214

if.then47:                                        ; preds = %lor.lhs.false, %if.end41
  %32 = load i64, ptr %str_len, align 8, !dbg !215
  %conv48 = trunc i64 %32 to i32, !dbg !215
  store i32 %conv48, ptr %len, align 4, !dbg !216
  br label %if.end49, !dbg !217

if.end49:                                         ; preds = %if.then47, %lor.lhs.false
  %33 = load ptr, ptr %s.addr, align 8, !dbg !218
  %34 = load i32, ptr %len, align 4, !dbg !219
  %idx.ext = sext i32 %34 to i64, !dbg !220
  %add.ptr50 = getelementptr i8, ptr %33, i64 %idx.ext, !dbg !220
  %35 = load ptr, ptr %args.addr, align 8, !dbg !221
  %36 = load i32, ptr %argc, align 4, !dbg !222
  %idxprom51 = sext i32 %36 to i64, !dbg !221
  %arrayidx52 = getelementptr %struct.substring_t, ptr %35, i64 %idxprom51, !dbg !221
  %to = getelementptr inbounds %struct.substring_t, ptr %arrayidx52, i32 0, i32 1, !dbg !223
  store ptr %add.ptr50, ptr %to, align 8, !dbg !224
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !225

cleanup:                                          ; preds = %if.end49, %if.then40
  call void @llvm.lifetime.end.p0(i64 8, ptr %str_len) #6, !dbg !226
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup86 [
    i32 4, label %sw.epilog
  ]

sw.bb53:                                          ; preds = %if.end34
  %37 = load ptr, ptr %s.addr, align 8, !dbg !227
  %38 = load ptr, ptr %args.addr, align 8, !dbg !228
  %39 = load i32, ptr %argc, align 4, !dbg !229
  %idxprom54 = sext i32 %39 to i64, !dbg !228
  %arrayidx55 = getelementptr %struct.substring_t, ptr %38, i64 %idxprom54, !dbg !228
  %to56 = getelementptr inbounds %struct.substring_t, ptr %arrayidx55, i32 0, i32 1, !dbg !230
  %call57 = call i64 @simple_strtol(ptr noundef %37, ptr noundef %to56, i32 noundef 0) #7, !dbg !231
  br label %num, !dbg !232

sw.bb58:                                          ; preds = %if.end34
  %40 = load ptr, ptr %s.addr, align 8, !dbg !233
  %41 = load ptr, ptr %args.addr, align 8, !dbg !234
  %42 = load i32, ptr %argc, align 4, !dbg !235
  %idxprom59 = sext i32 %42 to i64, !dbg !234
  %arrayidx60 = getelementptr %struct.substring_t, ptr %41, i64 %idxprom59, !dbg !234
  %to61 = getelementptr inbounds %struct.substring_t, ptr %arrayidx60, i32 0, i32 1, !dbg !236
  %call62 = call i64 @simple_strtoul(ptr noundef %40, ptr noundef %to61, i32 noundef 0) #7, !dbg !237
  br label %num, !dbg !238

sw.bb63:                                          ; preds = %if.end34
  %43 = load ptr, ptr %s.addr, align 8, !dbg !239
  %44 = load ptr, ptr %args.addr, align 8, !dbg !240
  %45 = load i32, ptr %argc, align 4, !dbg !241
  %idxprom64 = sext i32 %45 to i64, !dbg !240
  %arrayidx65 = getelementptr %struct.substring_t, ptr %44, i64 %idxprom64, !dbg !240
  %to66 = getelementptr inbounds %struct.substring_t, ptr %arrayidx65, i32 0, i32 1, !dbg !242
  %call67 = call i64 @simple_strtoul(ptr noundef %43, ptr noundef %to66, i32 noundef 8) #7, !dbg !243
  br label %num, !dbg !244

sw.bb68:                                          ; preds = %if.end34
  %46 = load ptr, ptr %s.addr, align 8, !dbg !245
  %47 = load ptr, ptr %args.addr, align 8, !dbg !246
  %48 = load i32, ptr %argc, align 4, !dbg !247
  %idxprom69 = sext i32 %48 to i64, !dbg !246
  %arrayidx70 = getelementptr %struct.substring_t, ptr %47, i64 %idxprom69, !dbg !246
  %to71 = getelementptr inbounds %struct.substring_t, ptr %arrayidx70, i32 0, i32 1, !dbg !248
  %call72 = call i64 @simple_strtoul(ptr noundef %46, ptr noundef %to71, i32 noundef 16) #7, !dbg !249
  br label %num, !dbg !249

num:                                              ; preds = %sw.bb68, %sw.bb63, %sw.bb58, %sw.bb53
  call void @llvm.dbg.label(metadata !118), !dbg !250
  %49 = load ptr, ptr %args.addr, align 8, !dbg !251
  %50 = load i32, ptr %argc, align 4, !dbg !253
  %idxprom73 = sext i32 %50 to i64, !dbg !251
  %arrayidx74 = getelementptr %struct.substring_t, ptr %49, i64 %idxprom73, !dbg !251
  %to75 = getelementptr inbounds %struct.substring_t, ptr %arrayidx74, i32 0, i32 1, !dbg !254
  %51 = load ptr, ptr %to75, align 8, !dbg !254
  %52 = load ptr, ptr %args.addr, align 8, !dbg !255
  %53 = load i32, ptr %argc, align 4, !dbg !256
  %idxprom76 = sext i32 %53 to i64, !dbg !255
  %arrayidx77 = getelementptr %struct.substring_t, ptr %52, i64 %idxprom76, !dbg !255
  %from78 = getelementptr inbounds %struct.substring_t, ptr %arrayidx77, i32 0, i32 0, !dbg !257
  %54 = load ptr, ptr %from78, align 8, !dbg !257
  %cmp79 = icmp eq ptr %51, %54, !dbg !258
  br i1 %cmp79, label %if.then81, label %if.end82, !dbg !259

if.then81:                                        ; preds = %num
  store i32 0, ptr %retval, align 4, !dbg !260
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup86, !dbg !260

if.end82:                                         ; preds = %num
  br label %sw.epilog, !dbg !261

sw.default:                                       ; preds = %if.end34
  store i32 0, ptr %retval, align 4, !dbg !262
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup86, !dbg !262

sw.epilog:                                        ; preds = %if.end82, %cleanup
  %55 = load ptr, ptr %args.addr, align 8, !dbg !263
  %56 = load i32, ptr %argc, align 4, !dbg !264
  %idxprom83 = sext i32 %56 to i64, !dbg !263
  %arrayidx84 = getelementptr %struct.substring_t, ptr %55, i64 %idxprom83, !dbg !263
  %to85 = getelementptr inbounds %struct.substring_t, ptr %arrayidx84, i32 0, i32 1, !dbg !265
  %57 = load ptr, ptr %to85, align 8, !dbg !265
  store ptr %57, ptr %s.addr, align 8, !dbg !266
  %58 = load i32, ptr %argc, align 4, !dbg !267
  %inc = add i32 %58, 1, !dbg !267
  store i32 %inc, ptr %argc, align 4, !dbg !267
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !184
  br label %cleanup86, !dbg !184

cleanup86:                                        ; preds = %sw.epilog, %sw.default, %if.then81, %cleanup, %if.then33, %if.end27, %if.then26, %if.then7, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #6, !dbg !184
  %cleanup.dest87 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest87, label %cleanup88 [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup86
  br label %while.cond, !dbg !130, !llvm.loop !183

cleanup88:                                        ; preds = %cleanup86, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %argc) #6, !dbg !268
  call void @llvm.lifetime.end.p0(i64 8, ptr %meta) #6, !dbg !268
  %59 = load i32, ptr %retval, align 4, !dbg !268
  ret i32 %59, !dbg !268
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @match_int(ptr noundef %s, ptr noundef %result) #0 align 16 !dbg !269 {
entry:
  %s.addr = alloca ptr, align 8
  %result.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !274, metadata !DIExpression()), !dbg !276
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !275, metadata !DIExpression()), !dbg !277
  %0 = load ptr, ptr %s.addr, align 8, !dbg !278
  %1 = load ptr, ptr %result.addr, align 8, !dbg !279
  %call = call i32 @match_number(ptr noundef %0, ptr noundef %1, i32 noundef 0) #7, !dbg !280
  ret i32 %call, !dbg !281
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @match_number(ptr noundef %s, ptr noundef %result, i32 noundef %base) #0 align 16 !dbg !282 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %result.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %endp = alloca ptr, align 8
  %buf = alloca [24 x i8], align 16
  %ret = alloca i32, align 4
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !286, metadata !DIExpression()), !dbg !296
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !287, metadata !DIExpression()), !dbg !297
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !288, metadata !DIExpression()), !dbg !298
  call void @llvm.lifetime.start.p0(i64 8, ptr %endp) #6, !dbg !299
  call void @llvm.dbg.declare(metadata ptr %endp, metadata !289, metadata !DIExpression()), !dbg !300
  call void @llvm.lifetime.start.p0(i64 24, ptr %buf) #6, !dbg !301
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !290, metadata !DIExpression()), !dbg !302
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6, !dbg !303
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !294, metadata !DIExpression()), !dbg !304
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #6, !dbg !305
  call void @llvm.dbg.declare(metadata ptr %val, metadata !295, metadata !DIExpression()), !dbg !306
  %arraydecay = getelementptr inbounds [24 x i8], ptr %buf, i64 0, i64 0, !dbg !307
  %0 = load ptr, ptr %s.addr, align 8, !dbg !309
  %call = call i64 @match_strlcpy(ptr noundef %arraydecay, ptr noundef %0, i64 noundef 24) #7, !dbg !310
  %cmp = icmp uge i64 %call, 24, !dbg !311
  br i1 %cmp, label %if.then, label %if.end, !dbg !312

if.then:                                          ; preds = %entry
  store i32 -34, ptr %retval, align 4, !dbg !313
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !313

if.end:                                           ; preds = %entry
  store i32 0, ptr %ret, align 4, !dbg !314
  %arraydecay1 = getelementptr inbounds [24 x i8], ptr %buf, i64 0, i64 0, !dbg !315
  %1 = load i32, ptr %base.addr, align 4, !dbg !316
  %call2 = call i64 @simple_strtol(ptr noundef %arraydecay1, ptr noundef %endp, i32 noundef %1) #7, !dbg !317
  store i64 %call2, ptr %val, align 8, !dbg !318
  %2 = load ptr, ptr %endp, align 8, !dbg !319
  %arraydecay3 = getelementptr inbounds [24 x i8], ptr %buf, i64 0, i64 0, !dbg !321
  %cmp4 = icmp eq ptr %2, %arraydecay3, !dbg !322
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !323

if.then5:                                         ; preds = %if.end
  store i32 -22, ptr %ret, align 4, !dbg !324
  br label %if.end11, !dbg !325

if.else:                                          ; preds = %if.end
  %3 = load i64, ptr %val, align 8, !dbg !326
  %cmp6 = icmp slt i64 %3, -2147483648, !dbg !328
  br i1 %cmp6, label %if.then8, label %lor.lhs.false, !dbg !329

lor.lhs.false:                                    ; preds = %if.else
  %4 = load i64, ptr %val, align 8, !dbg !330
  %cmp7 = icmp sgt i64 %4, 2147483647, !dbg !331
  br i1 %cmp7, label %if.then8, label %if.else9, !dbg !332

if.then8:                                         ; preds = %lor.lhs.false, %if.else
  store i32 -34, ptr %ret, align 4, !dbg !333
  br label %if.end10, !dbg !334

if.else9:                                         ; preds = %lor.lhs.false
  %5 = load i64, ptr %val, align 8, !dbg !335
  %conv = trunc i64 %5 to i32, !dbg !336
  %6 = load ptr, ptr %result.addr, align 8, !dbg !337
  store i32 %conv, ptr %6, align 4, !dbg !338
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %if.then8
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then5
  %7 = load i32, ptr %ret, align 4, !dbg !339
  store i32 %7, ptr %retval, align 4, !dbg !340
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !340

cleanup:                                          ; preds = %if.end11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #6, !dbg !341
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6, !dbg !341
  call void @llvm.lifetime.end.p0(i64 24, ptr %buf) #6, !dbg !341
  call void @llvm.lifetime.end.p0(i64 8, ptr %endp) #6, !dbg !341
  %8 = load i32, ptr %retval, align 4, !dbg !341
  ret i32 %8, !dbg !341
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @match_uint(ptr noundef %s, ptr noundef %result) #0 align 16 !dbg !342 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %result.addr = alloca ptr, align 8
  %buf = alloca [24 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !347, metadata !DIExpression()), !dbg !350
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !348, metadata !DIExpression()), !dbg !351
  call void @llvm.lifetime.start.p0(i64 24, ptr %buf) #6, !dbg !352
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !349, metadata !DIExpression()), !dbg !353
  %arraydecay = getelementptr inbounds [24 x i8], ptr %buf, i64 0, i64 0, !dbg !354
  %0 = load ptr, ptr %s.addr, align 8, !dbg !356
  %call = call i64 @match_strlcpy(ptr noundef %arraydecay, ptr noundef %0, i64 noundef 24) #7, !dbg !357
  %cmp = icmp uge i64 %call, 24, !dbg !358
  br i1 %cmp, label %if.then, label %if.end, !dbg !359

if.then:                                          ; preds = %entry
  store i32 -34, ptr %retval, align 4, !dbg !360
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !360

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [24 x i8], ptr %buf, i64 0, i64 0, !dbg !361
  %1 = load ptr, ptr %result.addr, align 8, !dbg !362
  %call2 = call i32 @kstrtouint(ptr noundef %arraydecay1, i32 noundef 10, ptr noundef %1) #7, !dbg !363
  store i32 %call2, ptr %retval, align 4, !dbg !364
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !364

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %buf) #6, !dbg !365
  %2 = load i32, ptr %retval, align 4, !dbg !365
  ret i32 %2, !dbg !365
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @match_strlcpy(ptr noundef %dest, ptr noundef %src, i64 noundef %size) #0 align 16 !dbg !366 {
entry:
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  %len = alloca i64, align 8
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !372, metadata !DIExpression()), !dbg !379
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !373, metadata !DIExpression()), !dbg !380
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !374, metadata !DIExpression()), !dbg !381
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #6, !dbg !382
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !375, metadata !DIExpression()), !dbg !383
  %0 = load ptr, ptr %src.addr, align 8, !dbg !384
  %to = getelementptr inbounds %struct.substring_t, ptr %0, i32 0, i32 1, !dbg !385
  %1 = load ptr, ptr %to, align 8, !dbg !385
  %2 = load ptr, ptr %src.addr, align 8, !dbg !386
  %from = getelementptr inbounds %struct.substring_t, ptr %2, i32 0, i32 0, !dbg !387
  %3 = load ptr, ptr %from, align 8, !dbg !387
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64, !dbg !388
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64, !dbg !388
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !388
  store i64 %sub.ptr.sub, ptr %ret, align 8, !dbg !383
  %4 = load i64, ptr %size.addr, align 8, !dbg !389
  %tobool = icmp ne i64 %4, 0, !dbg !389
  br i1 %tobool, label %if.then, label %if.end, !dbg !390

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #6, !dbg !391
  call void @llvm.dbg.declare(metadata ptr %len, metadata !376, metadata !DIExpression()), !dbg !392
  %5 = load i64, ptr %ret, align 8, !dbg !393
  %6 = load i64, ptr %size.addr, align 8, !dbg !394
  %cmp = icmp uge i64 %5, %6, !dbg !395
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !393

cond.true:                                        ; preds = %if.then
  %7 = load i64, ptr %size.addr, align 8, !dbg !396
  %sub = sub i64 %7, 1, !dbg !397
  br label %cond.end, !dbg !393

cond.false:                                       ; preds = %if.then
  %8 = load i64, ptr %ret, align 8, !dbg !398
  br label %cond.end, !dbg !393

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %8, %cond.false ], !dbg !393
  store i64 %cond, ptr %len, align 8, !dbg !392
  %9 = load ptr, ptr %dest.addr, align 8, !dbg !399
  %10 = load ptr, ptr %src.addr, align 8, !dbg !400
  %from1 = getelementptr inbounds %struct.substring_t, ptr %10, i32 0, i32 0, !dbg !401
  %11 = load ptr, ptr %from1, align 8, !dbg !401
  %12 = load i64, ptr %len, align 8, !dbg !402
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %11, i64 %12, i1 false), !dbg !403
  %13 = load ptr, ptr %dest.addr, align 8, !dbg !404
  %14 = load i64, ptr %len, align 8, !dbg !405
  %arrayidx = getelementptr i8, ptr %13, i64 %14, !dbg !404
  store i8 0, ptr %arrayidx, align 1, !dbg !406
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #6, !dbg !407
  br label %if.end, !dbg !408

if.end:                                           ; preds = %cond.end, %entry
  %15 = load i64, ptr %ret, align 8, !dbg !409
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #6, !dbg !410
  ret i64 %15, !dbg !411
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !412 dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @match_u64(ptr noundef %s, ptr noundef %result) #0 align 16 !dbg !416 {
entry:
  %s.addr = alloca ptr, align 8
  %result.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !426, metadata !DIExpression()), !dbg !428
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !427, metadata !DIExpression()), !dbg !429
  %0 = load ptr, ptr %s.addr, align 8, !dbg !430
  %1 = load ptr, ptr %result.addr, align 8, !dbg !431
  %call = call i32 @match_u64int(ptr noundef %0, ptr noundef %1, i32 noundef 0) #7, !dbg !432
  ret i32 %call, !dbg !433
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @match_u64int(ptr noundef %s, ptr noundef %result, i32 noundef %base) #0 align 16 !dbg !434 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %result.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %buf = alloca [24 x i8], align 16
  %ret = alloca i32, align 4
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !438, metadata !DIExpression()), !dbg !444
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !439, metadata !DIExpression()), !dbg !445
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !440, metadata !DIExpression()), !dbg !446
  call void @llvm.lifetime.start.p0(i64 24, ptr %buf) #6, !dbg !447
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !441, metadata !DIExpression()), !dbg !448
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6, !dbg !449
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !442, metadata !DIExpression()), !dbg !450
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #6, !dbg !451
  call void @llvm.dbg.declare(metadata ptr %val, metadata !443, metadata !DIExpression()), !dbg !452
  %arraydecay = getelementptr inbounds [24 x i8], ptr %buf, i64 0, i64 0, !dbg !453
  %0 = load ptr, ptr %s.addr, align 8, !dbg !455
  %call = call i64 @match_strlcpy(ptr noundef %arraydecay, ptr noundef %0, i64 noundef 24) #7, !dbg !456
  %cmp = icmp uge i64 %call, 24, !dbg !457
  br i1 %cmp, label %if.then, label %if.end, !dbg !458

if.then:                                          ; preds = %entry
  store i32 -34, ptr %retval, align 4, !dbg !459
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !459

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [24 x i8], ptr %buf, i64 0, i64 0, !dbg !460
  %1 = load i32, ptr %base.addr, align 4, !dbg !461
  %call2 = call i32 @kstrtoull(ptr noundef %arraydecay1, i32 noundef %1, ptr noundef %val) #7, !dbg !462
  store i32 %call2, ptr %ret, align 4, !dbg !463
  %2 = load i32, ptr %ret, align 4, !dbg !464
  %tobool = icmp ne i32 %2, 0, !dbg !464
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !466

if.then3:                                         ; preds = %if.end
  %3 = load i64, ptr %val, align 8, !dbg !467
  %4 = load ptr, ptr %result.addr, align 8, !dbg !468
  store i64 %3, ptr %4, align 8, !dbg !469
  br label %if.end4, !dbg !470

if.end4:                                          ; preds = %if.then3, %if.end
  %5 = load i32, ptr %ret, align 4, !dbg !471
  store i32 %5, ptr %retval, align 4, !dbg !472
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !472

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #6, !dbg !473
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6, !dbg !473
  call void @llvm.lifetime.end.p0(i64 24, ptr %buf) #6, !dbg !473
  %6 = load i32, ptr %retval, align 4, !dbg !473
  ret i32 %6, !dbg !473
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @match_octal(ptr noundef %s, ptr noundef %result) #0 align 16 !dbg !474 {
entry:
  %s.addr = alloca ptr, align 8
  %result.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !476, metadata !DIExpression()), !dbg !478
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !477, metadata !DIExpression()), !dbg !479
  %0 = load ptr, ptr %s.addr, align 8, !dbg !480
  %1 = load ptr, ptr %result.addr, align 8, !dbg !481
  %call = call i32 @match_number(ptr noundef %0, ptr noundef %1, i32 noundef 8) #7, !dbg !482
  ret i32 %call, !dbg !483
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @match_hex(ptr noundef %s, ptr noundef %result) #0 align 16 !dbg !484 {
entry:
  %s.addr = alloca ptr, align 8
  %result.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !486, metadata !DIExpression()), !dbg !488
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !487, metadata !DIExpression()), !dbg !489
  %0 = load ptr, ptr %s.addr, align 8, !dbg !490
  %1 = load ptr, ptr %result.addr, align 8, !dbg !491
  %call = call i32 @match_number(ptr noundef %0, ptr noundef %1, i32 noundef 16) #7, !dbg !492
  ret i32 %call, !dbg !493
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @match_wildcard(ptr noundef %pattern, ptr noundef %str) #0 align 16 !dbg !494 {
entry:
  %retval = alloca i1, align 1
  %pattern.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %p = alloca ptr, align 8
  %star = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pattern, ptr %pattern.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pattern.addr, metadata !500, metadata !DIExpression()), !dbg !505
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !501, metadata !DIExpression()), !dbg !506
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #6, !dbg !507
  call void @llvm.dbg.declare(metadata ptr %s, metadata !502, metadata !DIExpression()), !dbg !508
  %0 = load ptr, ptr %str.addr, align 8, !dbg !509
  store ptr %0, ptr %s, align 8, !dbg !508
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6, !dbg !510
  call void @llvm.dbg.declare(metadata ptr %p, metadata !503, metadata !DIExpression()), !dbg !511
  %1 = load ptr, ptr %pattern.addr, align 8, !dbg !512
  store ptr %1, ptr %p, align 8, !dbg !511
  call void @llvm.lifetime.start.p0(i64 1, ptr %star) #6, !dbg !513
  call void @llvm.dbg.declare(metadata ptr %star, metadata !504, metadata !DIExpression()), !dbg !514
  store i8 0, ptr %star, align 1, !dbg !514
  br label %while.cond, !dbg !515

while.cond:                                       ; preds = %sw.epilog, %entry
  %2 = load ptr, ptr %s, align 8, !dbg !516
  %3 = load i8, ptr %2, align 1, !dbg !517
  %tobool = icmp ne i8 %3, 0, !dbg !515
  br i1 %tobool, label %while.body, label %while.end, !dbg !515

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %p, align 8, !dbg !518
  %5 = load i8, ptr %4, align 1, !dbg !520
  %conv = zext i8 %5 to i32, !dbg !520
  switch i32 %conv, label %sw.default [
    i32 63, label %sw.bb
    i32 42, label %sw.bb2
  ], !dbg !521

sw.bb:                                            ; preds = %while.body
  %6 = load ptr, ptr %s, align 8, !dbg !522
  %incdec.ptr = getelementptr i8, ptr %6, i32 1, !dbg !522
  store ptr %incdec.ptr, ptr %s, align 8, !dbg !522
  %7 = load ptr, ptr %p, align 8, !dbg !524
  %incdec.ptr1 = getelementptr i8, ptr %7, i32 1, !dbg !524
  store ptr %incdec.ptr1, ptr %p, align 8, !dbg !524
  br label %sw.epilog, !dbg !525

sw.bb2:                                           ; preds = %while.body
  store i8 1, ptr %star, align 1, !dbg !526
  %8 = load ptr, ptr %s, align 8, !dbg !527
  store ptr %8, ptr %str.addr, align 8, !dbg !528
  %9 = load ptr, ptr %p, align 8, !dbg !529
  %incdec.ptr3 = getelementptr i8, ptr %9, i32 1, !dbg !529
  store ptr %incdec.ptr3, ptr %p, align 8, !dbg !529
  %10 = load i8, ptr %incdec.ptr3, align 1, !dbg !531
  %tobool4 = icmp ne i8 %10, 0, !dbg !531
  br i1 %tobool4, label %if.end, label %if.then, !dbg !532

if.then:                                          ; preds = %sw.bb2
  store i1 true, ptr %retval, align 1, !dbg !533
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !533

if.end:                                           ; preds = %sw.bb2
  %11 = load ptr, ptr %p, align 8, !dbg !534
  store ptr %11, ptr %pattern.addr, align 8, !dbg !535
  br label %sw.epilog, !dbg !536

sw.default:                                       ; preds = %while.body
  %12 = load ptr, ptr %s, align 8, !dbg !537
  %13 = load i8, ptr %12, align 1, !dbg !539
  %conv5 = zext i8 %13 to i32, !dbg !539
  %14 = load ptr, ptr %p, align 8, !dbg !540
  %15 = load i8, ptr %14, align 1, !dbg !541
  %conv6 = zext i8 %15 to i32, !dbg !541
  %cmp = icmp eq i32 %conv5, %conv6, !dbg !542
  br i1 %cmp, label %if.then8, label %if.else, !dbg !543

if.then8:                                         ; preds = %sw.default
  %16 = load ptr, ptr %s, align 8, !dbg !544
  %incdec.ptr9 = getelementptr i8, ptr %16, i32 1, !dbg !544
  store ptr %incdec.ptr9, ptr %s, align 8, !dbg !544
  %17 = load ptr, ptr %p, align 8, !dbg !546
  %incdec.ptr10 = getelementptr i8, ptr %17, i32 1, !dbg !546
  store ptr %incdec.ptr10, ptr %p, align 8, !dbg !546
  br label %if.end15, !dbg !547

if.else:                                          ; preds = %sw.default
  %18 = load i8, ptr %star, align 1, !dbg !548, !range !551, !noundef !552
  %tobool11 = trunc i8 %18 to i1, !dbg !548
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !553

if.then12:                                        ; preds = %if.else
  store i1 false, ptr %retval, align 1, !dbg !554
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !554

if.end13:                                         ; preds = %if.else
  %19 = load ptr, ptr %str.addr, align 8, !dbg !555
  %incdec.ptr14 = getelementptr i8, ptr %19, i32 1, !dbg !555
  store ptr %incdec.ptr14, ptr %str.addr, align 8, !dbg !555
  %20 = load ptr, ptr %str.addr, align 8, !dbg !556
  store ptr %20, ptr %s, align 8, !dbg !557
  %21 = load ptr, ptr %pattern.addr, align 8, !dbg !558
  store ptr %21, ptr %p, align 8, !dbg !559
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %if.then8
  br label %sw.epilog, !dbg !560

sw.epilog:                                        ; preds = %if.end15, %if.end, %sw.bb
  br label %while.cond, !dbg !515, !llvm.loop !561

while.end:                                        ; preds = %while.cond
  %22 = load ptr, ptr %p, align 8, !dbg !563
  %23 = load i8, ptr %22, align 1, !dbg !565
  %conv16 = zext i8 %23 to i32, !dbg !565
  %cmp17 = icmp eq i32 %conv16, 42, !dbg !566
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !567

if.then19:                                        ; preds = %while.end
  %24 = load ptr, ptr %p, align 8, !dbg !568
  %incdec.ptr20 = getelementptr i8, ptr %24, i32 1, !dbg !568
  store ptr %incdec.ptr20, ptr %p, align 8, !dbg !568
  br label %if.end21, !dbg !568

if.end21:                                         ; preds = %if.then19, %while.end
  %25 = load ptr, ptr %p, align 8, !dbg !569
  %26 = load i8, ptr %25, align 1, !dbg !570
  %tobool22 = icmp ne i8 %26, 0, !dbg !571
  %lnot = xor i1 %tobool22, true, !dbg !571
  store i1 %lnot, ptr %retval, align 1, !dbg !572
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !572

cleanup:                                          ; preds = %if.end21, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %star) #6, !dbg !573
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6, !dbg !573
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #6, !dbg !573
  %27 = load i1, ptr %retval, align 1, !dbg !573
  ret i1 %27, !dbg !573
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @match_strdup(ptr noundef %s) #0 align 16 !dbg !574 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !578, metadata !DIExpression()), !dbg !579
  %0 = load ptr, ptr %s.addr, align 8, !dbg !580
  %from = getelementptr inbounds %struct.substring_t, ptr %0, i32 0, i32 0, !dbg !581
  %1 = load ptr, ptr %from, align 8, !dbg !581
  %2 = load ptr, ptr %s.addr, align 8, !dbg !582
  %to = getelementptr inbounds %struct.substring_t, ptr %2, i32 0, i32 1, !dbg !583
  %3 = load ptr, ptr %to, align 8, !dbg !583
  %4 = load ptr, ptr %s.addr, align 8, !dbg !584
  %from1 = getelementptr inbounds %struct.substring_t, ptr %4, i32 0, i32 0, !dbg !585
  %5 = load ptr, ptr %from1, align 8, !dbg !585
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i64, !dbg !586
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64, !dbg !586
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !586
  %call = call ptr @kmemdup_nul(ptr noundef %1, i64 noundef %sub.ptr.sub, i32 noundef 3264) #7, !dbg !587
  ret ptr %call, !dbg !588
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !589 dso_local ptr @kmemdup_nul(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !593 dso_local ptr @strchr(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !596 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !599 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @isdigit(i32 noundef %c) #5 align 16 !dbg !602 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !607, metadata !DIExpression()), !dbg !608
  %0 = load i32, ptr %c.addr, align 4, !dbg !609
  %cmp = icmp sle i32 48, %0, !dbg !610
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !611

land.rhs:                                         ; preds = %entry
  %1 = load i32, ptr %c.addr, align 4, !dbg !612
  %cmp1 = icmp sle i32 %1, 57, !dbg !613
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !614
  %land.ext = zext i1 %2 to i32, !dbg !611
  ret i32 %land.ext, !dbg !615
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !616 dso_local i64 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !619 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !622 dso_local i64 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !625 dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_match_token118", scope: !2, file: !3, line: 124, type: !16, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.parser.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/parser\22 -D KBUILD_BASENAME=\22parser\22 -D KBUILD_MODNAME=\22parser\22 -D __KBUILD_MODNAME=kmod_parser -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/parser.ll lib/parser.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !15, globals: !24, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/parser.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6be621eb775a59a6a5235a1c040f0de6")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 22, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/parser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "04065a33cd4b747875fdf369f6a5f3fe")
!13 = !{!14}
!14 = !DIEnumerator(name: "MAX_OPT_ARGS", value: 3)
!15 = !{!16, !17, !19, !22, !23}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !18, line: 154, baseType: !7)
!18 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{!0, !25, !27, !29, !31, !33, !35, !37, !39}
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_match_int119", scope: !2, file: !3, line: 198, type: !16, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_match_uint120", scope: !2, file: !3, line: 219, type: !16, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_match_u64121", scope: !2, file: !3, line: 237, type: !16, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_match_octal122", scope: !2, file: !3, line: 253, type: !16, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_match_hex123", scope: !2, file: !3, line: 269, type: !16, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_match_wildcard124", scope: !2, file: !3, line: 321, type: !16, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_match_strlcpy125", scope: !2, file: !3, line: 346, type: !16, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_match_strdup126", scope: !2, file: !3, line: 363, type: !16, isLocal: true, isDefinition: true)
!41 = !{i32 7, !"Dwarf Version", i32 5}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 8, !"cf-protection-branch", i32 1}
!45 = !{i32 4, !"function_return_thunk_extern", i32 1}
!46 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!47 = !{i32 1, !"Code Model", i32 2}
!48 = !{i32 1, !"override-stack-alignment", i32 8}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = distinct !DISubprogram(name: "match_token", scope: !3, file: !3, line: 115, type: !51, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !67)
!51 = !DISubroutineType(types: !52)
!52 = !{!23, !20, !53, !61}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "match_token", file: !12, line: 14, size: 128, elements: !56)
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !55, file: !12, line: 15, baseType: !23, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !55, file: !12, line: 16, baseType: !59, size: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "substring_t", file: !12, line: 28, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 25, size: 128, elements: !64)
!64 = !{!65, !66}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !63, file: !12, line: 26, baseType: !20, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !63, file: !12, line: 27, baseType: !20, size: 64, offset: 64)
!67 = !{!68, !69, !70, !71}
!68 = !DILocalVariable(name: "s", arg: 1, scope: !50, file: !3, line: 115, type: !20)
!69 = !DILocalVariable(name: "table", arg: 2, scope: !50, file: !3, line: 115, type: !53)
!70 = !DILocalVariable(name: "args", arg: 3, scope: !50, file: !3, line: 115, type: !61)
!71 = !DILocalVariable(name: "p", scope: !50, file: !3, line: 117, type: !53)
!72 = !DILocation(line: 115, column: 23, scope: !50)
!73 = !DILocation(line: 115, column: 46, scope: !50)
!74 = !DILocation(line: 115, column: 65, scope: !50)
!75 = !DILocation(line: 117, column: 2, scope: !50)
!76 = !DILocation(line: 117, column: 28, scope: !50)
!77 = !DILocation(line: 119, column: 11, scope: !78)
!78 = distinct !DILexicalBlock(scope: !50, file: !3, line: 119, column: 2)
!79 = !DILocation(line: 119, column: 9, scope: !78)
!80 = !DILocation(line: 119, column: 7, scope: !78)
!81 = !DILocation(line: 119, column: 29, scope: !82)
!82 = distinct !DILexicalBlock(scope: !78, file: !3, line: 119, column: 2)
!83 = !DILocation(line: 119, column: 32, scope: !82)
!84 = !DILocation(line: 119, column: 35, scope: !82)
!85 = !DILocation(line: 119, column: 44, scope: !82)
!86 = !DILocation(line: 119, column: 19, scope: !82)
!87 = !DILocation(line: 119, column: 18, scope: !82)
!88 = !DILocation(line: 119, column: 2, scope: !78)
!89 = !DILocation(line: 119, column: 53, scope: !82)
!90 = !DILocation(line: 119, column: 2, scope: !82)
!91 = distinct !{!91, !88, !92, !93, !94}
!92 = !DILocation(line: 120, column: 3, scope: !78)
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = !DILocation(line: 122, column: 9, scope: !50)
!96 = !DILocation(line: 122, column: 12, scope: !50)
!97 = !DILocation(line: 123, column: 1, scope: !50)
!98 = !DILocation(line: 122, column: 2, scope: !50)
!99 = distinct !DISubprogram(name: "match_one", scope: !3, file: !3, line: 34, type: !100, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !102)
!100 = !DISubroutineType(types: !101)
!101 = !{!23, !20, !59, !61}
!102 = !{!103, !104, !105, !106, !107, !108, !110, !118}
!103 = !DILocalVariable(name: "s", arg: 1, scope: !99, file: !3, line: 34, type: !20)
!104 = !DILocalVariable(name: "p", arg: 2, scope: !99, file: !3, line: 34, type: !59)
!105 = !DILocalVariable(name: "args", arg: 3, scope: !99, file: !3, line: 34, type: !61)
!106 = !DILocalVariable(name: "meta", scope: !99, file: !3, line: 36, type: !20)
!107 = !DILocalVariable(name: "argc", scope: !99, file: !3, line: 37, type: !23)
!108 = !DILocalVariable(name: "len", scope: !109, file: !3, line: 43, type: !23)
!109 = distinct !DILexicalBlock(scope: !99, file: !3, line: 42, column: 11)
!110 = !DILocalVariable(name: "str_len", scope: !111, file: !3, line: 69, type: !113)
!111 = distinct !DILexicalBlock(scope: !112, file: !3, line: 68, column: 13)
!112 = distinct !DILexicalBlock(scope: !109, file: !3, line: 67, column: 17)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 61, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !115, line: 72, baseType: !116)
!115 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !115, line: 16, baseType: !117)
!117 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!118 = !DILabel(scope: !112, name: "num", file: !3, line: 89)
!119 = !DILocation(line: 34, column: 28, scope: !99)
!120 = !DILocation(line: 34, column: 43, scope: !99)
!121 = !DILocation(line: 34, column: 58, scope: !99)
!122 = !DILocation(line: 36, column: 2, scope: !99)
!123 = !DILocation(line: 36, column: 8, scope: !99)
!124 = !DILocation(line: 37, column: 2, scope: !99)
!125 = !DILocation(line: 37, column: 6, scope: !99)
!126 = !DILocation(line: 39, column: 7, scope: !127)
!127 = distinct !DILexicalBlock(scope: !99, file: !3, line: 39, column: 6)
!128 = !DILocation(line: 39, column: 6, scope: !99)
!129 = !DILocation(line: 40, column: 3, scope: !127)
!130 = !DILocation(line: 42, column: 2, scope: !99)
!131 = !DILocation(line: 43, column: 3, scope: !109)
!132 = !DILocation(line: 43, column: 7, scope: !109)
!133 = !DILocation(line: 44, column: 17, scope: !109)
!134 = !DILocation(line: 44, column: 10, scope: !109)
!135 = !DILocation(line: 44, column: 8, scope: !109)
!136 = !DILocation(line: 45, column: 8, scope: !137)
!137 = distinct !DILexicalBlock(scope: !109, file: !3, line: 45, column: 7)
!138 = !DILocation(line: 45, column: 7, scope: !109)
!139 = !DILocation(line: 46, column: 18, scope: !137)
!140 = !DILocation(line: 46, column: 21, scope: !137)
!141 = !DILocation(line: 46, column: 11, scope: !137)
!142 = !DILocation(line: 46, column: 24, scope: !137)
!143 = !DILocation(line: 46, column: 4, scope: !137)
!144 = !DILocation(line: 48, column: 15, scope: !145)
!145 = distinct !DILexicalBlock(scope: !109, file: !3, line: 48, column: 7)
!146 = !DILocation(line: 48, column: 18, scope: !145)
!147 = !DILocation(line: 48, column: 21, scope: !145)
!148 = !DILocation(line: 48, column: 26, scope: !145)
!149 = !DILocation(line: 48, column: 25, scope: !145)
!150 = !DILocation(line: 48, column: 7, scope: !145)
!151 = !DILocation(line: 48, column: 7, scope: !109)
!152 = !DILocation(line: 49, column: 4, scope: !145)
!153 = !DILocation(line: 51, column: 8, scope: !109)
!154 = !DILocation(line: 51, column: 15, scope: !109)
!155 = !DILocation(line: 51, column: 13, scope: !109)
!156 = !DILocation(line: 51, column: 5, scope: !109)
!157 = !DILocation(line: 52, column: 7, scope: !109)
!158 = !DILocation(line: 52, column: 12, scope: !109)
!159 = !DILocation(line: 52, column: 5, scope: !109)
!160 = !DILocation(line: 54, column: 16, scope: !161)
!161 = distinct !DILexicalBlock(scope: !109, file: !3, line: 54, column: 7)
!162 = !DILocation(line: 54, column: 15, scope: !161)
!163 = !DILocation(line: 54, column: 7, scope: !161)
!164 = !DILocation(line: 54, column: 7, scope: !109)
!165 = !DILocation(line: 55, column: 25, scope: !161)
!166 = !DILocation(line: 55, column: 10, scope: !161)
!167 = !DILocation(line: 55, column: 8, scope: !161)
!168 = !DILocation(line: 55, column: 4, scope: !161)
!169 = !DILocation(line: 56, column: 13, scope: !170)
!170 = distinct !DILexicalBlock(scope: !161, file: !3, line: 56, column: 12)
!171 = !DILocation(line: 56, column: 12, scope: !170)
!172 = !DILocation(line: 56, column: 15, scope: !170)
!173 = !DILocation(line: 56, column: 12, scope: !161)
!174 = !DILocation(line: 57, column: 10, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !3, line: 57, column: 8)
!176 = distinct !DILexicalBlock(scope: !170, file: !3, line: 56, column: 23)
!177 = !DILocation(line: 57, column: 8, scope: !175)
!178 = !DILocation(line: 57, column: 13, scope: !175)
!179 = !DILocation(line: 57, column: 8, scope: !176)
!180 = !DILocation(line: 58, column: 5, scope: !175)
!181 = !DILocation(line: 59, column: 5, scope: !176)
!182 = !DILocation(line: 60, column: 4, scope: !176)
!183 = distinct !{!183, !130, !184, !94}
!184 = !DILocation(line: 98, column: 2, scope: !99)
!185 = !DILocation(line: 63, column: 7, scope: !186)
!186 = distinct !DILexicalBlock(scope: !109, file: !3, line: 63, column: 7)
!187 = !DILocation(line: 63, column: 12, scope: !186)
!188 = !DILocation(line: 63, column: 7, scope: !109)
!189 = !DILocation(line: 64, column: 4, scope: !186)
!190 = !DILocation(line: 66, column: 21, scope: !109)
!191 = !DILocation(line: 66, column: 3, scope: !109)
!192 = !DILocation(line: 66, column: 8, scope: !109)
!193 = !DILocation(line: 66, column: 14, scope: !109)
!194 = !DILocation(line: 66, column: 19, scope: !109)
!195 = !DILocation(line: 67, column: 13, scope: !109)
!196 = !DILocation(line: 67, column: 11, scope: !109)
!197 = !DILocation(line: 67, column: 3, scope: !109)
!198 = !DILocation(line: 69, column: 4, scope: !111)
!199 = !DILocation(line: 69, column: 11, scope: !111)
!200 = !DILocation(line: 69, column: 28, scope: !111)
!201 = !DILocation(line: 69, column: 21, scope: !111)
!202 = !DILocation(line: 71, column: 8, scope: !203)
!203 = distinct !DILexicalBlock(scope: !111, file: !3, line: 71, column: 8)
!204 = !DILocation(line: 71, column: 16, scope: !203)
!205 = !DILocation(line: 71, column: 8, scope: !111)
!206 = !DILocation(line: 72, column: 5, scope: !203)
!207 = !DILocation(line: 73, column: 8, scope: !208)
!208 = distinct !DILexicalBlock(scope: !111, file: !3, line: 73, column: 8)
!209 = !DILocation(line: 73, column: 12, scope: !208)
!210 = !DILocation(line: 73, column: 18, scope: !208)
!211 = !DILocation(line: 73, column: 21, scope: !208)
!212 = !DILocation(line: 73, column: 27, scope: !208)
!213 = !DILocation(line: 73, column: 25, scope: !208)
!214 = !DILocation(line: 73, column: 8, scope: !111)
!215 = !DILocation(line: 74, column: 11, scope: !208)
!216 = !DILocation(line: 74, column: 9, scope: !208)
!217 = !DILocation(line: 74, column: 5, scope: !208)
!218 = !DILocation(line: 75, column: 20, scope: !111)
!219 = !DILocation(line: 75, column: 24, scope: !111)
!220 = !DILocation(line: 75, column: 22, scope: !111)
!221 = !DILocation(line: 75, column: 4, scope: !111)
!222 = !DILocation(line: 75, column: 9, scope: !111)
!223 = !DILocation(line: 75, column: 15, scope: !111)
!224 = !DILocation(line: 75, column: 18, scope: !111)
!225 = !DILocation(line: 76, column: 4, scope: !111)
!226 = !DILocation(line: 77, column: 3, scope: !112)
!227 = !DILocation(line: 79, column: 18, scope: !112)
!228 = !DILocation(line: 79, column: 22, scope: !112)
!229 = !DILocation(line: 79, column: 27, scope: !112)
!230 = !DILocation(line: 79, column: 33, scope: !112)
!231 = !DILocation(line: 79, column: 4, scope: !112)
!232 = !DILocation(line: 80, column: 4, scope: !112)
!233 = !DILocation(line: 82, column: 19, scope: !112)
!234 = !DILocation(line: 82, column: 23, scope: !112)
!235 = !DILocation(line: 82, column: 28, scope: !112)
!236 = !DILocation(line: 82, column: 34, scope: !112)
!237 = !DILocation(line: 82, column: 4, scope: !112)
!238 = !DILocation(line: 83, column: 4, scope: !112)
!239 = !DILocation(line: 85, column: 19, scope: !112)
!240 = !DILocation(line: 85, column: 23, scope: !112)
!241 = !DILocation(line: 85, column: 28, scope: !112)
!242 = !DILocation(line: 85, column: 34, scope: !112)
!243 = !DILocation(line: 85, column: 4, scope: !112)
!244 = !DILocation(line: 86, column: 4, scope: !112)
!245 = !DILocation(line: 88, column: 19, scope: !112)
!246 = !DILocation(line: 88, column: 23, scope: !112)
!247 = !DILocation(line: 88, column: 28, scope: !112)
!248 = !DILocation(line: 88, column: 34, scope: !112)
!249 = !DILocation(line: 88, column: 4, scope: !112)
!250 = !DILocation(line: 89, column: 3, scope: !112)
!251 = !DILocation(line: 90, column: 8, scope: !252)
!252 = distinct !DILexicalBlock(scope: !112, file: !3, line: 90, column: 8)
!253 = !DILocation(line: 90, column: 13, scope: !252)
!254 = !DILocation(line: 90, column: 19, scope: !252)
!255 = !DILocation(line: 90, column: 25, scope: !252)
!256 = !DILocation(line: 90, column: 30, scope: !252)
!257 = !DILocation(line: 90, column: 36, scope: !252)
!258 = !DILocation(line: 90, column: 22, scope: !252)
!259 = !DILocation(line: 90, column: 8, scope: !112)
!260 = !DILocation(line: 91, column: 5, scope: !252)
!261 = !DILocation(line: 92, column: 4, scope: !112)
!262 = !DILocation(line: 94, column: 4, scope: !112)
!263 = !DILocation(line: 96, column: 7, scope: !109)
!264 = !DILocation(line: 96, column: 12, scope: !109)
!265 = !DILocation(line: 96, column: 18, scope: !109)
!266 = !DILocation(line: 96, column: 5, scope: !109)
!267 = !DILocation(line: 97, column: 7, scope: !109)
!268 = !DILocation(line: 99, column: 1, scope: !99)
!269 = distinct !DISubprogram(name: "match_int", scope: !3, file: !3, line: 194, type: !270, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !273)
!270 = !DISubroutineType(types: !271)
!271 = !{!23, !61, !272}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!273 = !{!274, !275}
!274 = !DILocalVariable(name: "s", arg: 1, scope: !269, file: !3, line: 194, type: !61)
!275 = !DILocalVariable(name: "result", arg: 2, scope: !269, file: !3, line: 194, type: !272)
!276 = !DILocation(line: 194, column: 28, scope: !269)
!277 = !DILocation(line: 194, column: 36, scope: !269)
!278 = !DILocation(line: 196, column: 22, scope: !269)
!279 = !DILocation(line: 196, column: 25, scope: !269)
!280 = !DILocation(line: 196, column: 9, scope: !269)
!281 = !DILocation(line: 196, column: 2, scope: !269)
!282 = distinct !DISubprogram(name: "match_number", scope: !3, file: !3, line: 138, type: !283, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !285)
!283 = !DISubroutineType(types: !284)
!284 = !{!23, !61, !272, !23}
!285 = !{!286, !287, !288, !289, !290, !294, !295}
!286 = !DILocalVariable(name: "s", arg: 1, scope: !282, file: !3, line: 138, type: !61)
!287 = !DILocalVariable(name: "result", arg: 2, scope: !282, file: !3, line: 138, type: !272)
!288 = !DILocalVariable(name: "base", arg: 3, scope: !282, file: !3, line: 138, type: !23)
!289 = !DILocalVariable(name: "endp", scope: !282, file: !3, line: 140, type: !20)
!290 = !DILocalVariable(name: "buf", scope: !282, file: !3, line: 141, type: !291)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 192, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 24)
!294 = !DILocalVariable(name: "ret", scope: !282, file: !3, line: 142, type: !23)
!295 = !DILocalVariable(name: "val", scope: !282, file: !3, line: 143, type: !22)
!296 = !DILocation(line: 138, column: 38, scope: !282)
!297 = !DILocation(line: 138, column: 46, scope: !282)
!298 = !DILocation(line: 138, column: 58, scope: !282)
!299 = !DILocation(line: 140, column: 2, scope: !282)
!300 = !DILocation(line: 140, column: 8, scope: !282)
!301 = !DILocation(line: 141, column: 2, scope: !282)
!302 = !DILocation(line: 141, column: 7, scope: !282)
!303 = !DILocation(line: 142, column: 2, scope: !282)
!304 = !DILocation(line: 142, column: 6, scope: !282)
!305 = !DILocation(line: 143, column: 2, scope: !282)
!306 = !DILocation(line: 143, column: 7, scope: !282)
!307 = !DILocation(line: 145, column: 20, scope: !308)
!308 = distinct !DILexicalBlock(scope: !282, file: !3, line: 145, column: 6)
!309 = !DILocation(line: 145, column: 25, scope: !308)
!310 = !DILocation(line: 145, column: 6, scope: !308)
!311 = !DILocation(line: 145, column: 44, scope: !308)
!312 = !DILocation(line: 145, column: 6, scope: !282)
!313 = !DILocation(line: 146, column: 3, scope: !308)
!314 = !DILocation(line: 147, column: 6, scope: !282)
!315 = !DILocation(line: 148, column: 22, scope: !282)
!316 = !DILocation(line: 148, column: 34, scope: !282)
!317 = !DILocation(line: 148, column: 8, scope: !282)
!318 = !DILocation(line: 148, column: 6, scope: !282)
!319 = !DILocation(line: 149, column: 6, scope: !320)
!320 = distinct !DILexicalBlock(scope: !282, file: !3, line: 149, column: 6)
!321 = !DILocation(line: 149, column: 14, scope: !320)
!322 = !DILocation(line: 149, column: 11, scope: !320)
!323 = !DILocation(line: 149, column: 6, scope: !282)
!324 = !DILocation(line: 150, column: 7, scope: !320)
!325 = !DILocation(line: 150, column: 3, scope: !320)
!326 = !DILocation(line: 151, column: 11, scope: !327)
!327 = distinct !DILexicalBlock(scope: !320, file: !3, line: 151, column: 11)
!328 = !DILocation(line: 151, column: 15, scope: !327)
!329 = !DILocation(line: 151, column: 31, scope: !327)
!330 = !DILocation(line: 151, column: 34, scope: !327)
!331 = !DILocation(line: 151, column: 38, scope: !327)
!332 = !DILocation(line: 151, column: 11, scope: !320)
!333 = !DILocation(line: 152, column: 7, scope: !327)
!334 = !DILocation(line: 152, column: 3, scope: !327)
!335 = !DILocation(line: 154, column: 19, scope: !327)
!336 = !DILocation(line: 154, column: 13, scope: !327)
!337 = !DILocation(line: 154, column: 4, scope: !327)
!338 = !DILocation(line: 154, column: 11, scope: !327)
!339 = !DILocation(line: 155, column: 9, scope: !282)
!340 = !DILocation(line: 155, column: 2, scope: !282)
!341 = !DILocation(line: 156, column: 1, scope: !282)
!342 = distinct !DISubprogram(name: "match_uint", scope: !3, file: !3, line: 210, type: !343, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !346)
!343 = !DISubroutineType(types: !344)
!344 = !{!23, !61, !345}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!346 = !{!347, !348, !349}
!347 = !DILocalVariable(name: "s", arg: 1, scope: !342, file: !3, line: 210, type: !61)
!348 = !DILocalVariable(name: "result", arg: 2, scope: !342, file: !3, line: 210, type: !345)
!349 = !DILocalVariable(name: "buf", scope: !342, file: !3, line: 212, type: !291)
!350 = !DILocation(line: 210, column: 29, scope: !342)
!351 = !DILocation(line: 210, column: 46, scope: !342)
!352 = !DILocation(line: 212, column: 2, scope: !342)
!353 = !DILocation(line: 212, column: 7, scope: !342)
!354 = !DILocation(line: 214, column: 20, scope: !355)
!355 = distinct !DILexicalBlock(scope: !342, file: !3, line: 214, column: 6)
!356 = !DILocation(line: 214, column: 25, scope: !355)
!357 = !DILocation(line: 214, column: 6, scope: !355)
!358 = !DILocation(line: 214, column: 44, scope: !355)
!359 = !DILocation(line: 214, column: 6, scope: !342)
!360 = !DILocation(line: 215, column: 3, scope: !355)
!361 = !DILocation(line: 217, column: 20, scope: !342)
!362 = !DILocation(line: 217, column: 29, scope: !342)
!363 = !DILocation(line: 217, column: 9, scope: !342)
!364 = !DILocation(line: 217, column: 2, scope: !342)
!365 = !DILocation(line: 218, column: 1, scope: !342)
!366 = distinct !DISubprogram(name: "match_strlcpy", scope: !3, file: !3, line: 335, type: !367, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !371)
!367 = !DISubroutineType(types: !368)
!368 = !{!113, !20, !369, !113}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!371 = !{!372, !373, !374, !375, !376}
!372 = !DILocalVariable(name: "dest", arg: 1, scope: !366, file: !3, line: 335, type: !20)
!373 = !DILocalVariable(name: "src", arg: 2, scope: !366, file: !3, line: 335, type: !369)
!374 = !DILocalVariable(name: "size", arg: 3, scope: !366, file: !3, line: 335, type: !113)
!375 = !DILocalVariable(name: "ret", scope: !366, file: !3, line: 337, type: !113)
!376 = !DILocalVariable(name: "len", scope: !377, file: !3, line: 340, type: !113)
!377 = distinct !DILexicalBlock(scope: !378, file: !3, line: 339, column: 12)
!378 = distinct !DILexicalBlock(scope: !366, file: !3, line: 339, column: 6)
!379 = !DILocation(line: 335, column: 28, scope: !366)
!380 = !DILocation(line: 335, column: 53, scope: !366)
!381 = !DILocation(line: 335, column: 65, scope: !366)
!382 = !DILocation(line: 337, column: 2, scope: !366)
!383 = !DILocation(line: 337, column: 9, scope: !366)
!384 = !DILocation(line: 337, column: 15, scope: !366)
!385 = !DILocation(line: 337, column: 20, scope: !366)
!386 = !DILocation(line: 337, column: 25, scope: !366)
!387 = !DILocation(line: 337, column: 30, scope: !366)
!388 = !DILocation(line: 337, column: 23, scope: !366)
!389 = !DILocation(line: 339, column: 6, scope: !378)
!390 = !DILocation(line: 339, column: 6, scope: !366)
!391 = !DILocation(line: 340, column: 3, scope: !377)
!392 = !DILocation(line: 340, column: 10, scope: !377)
!393 = !DILocation(line: 340, column: 16, scope: !377)
!394 = !DILocation(line: 340, column: 23, scope: !377)
!395 = !DILocation(line: 340, column: 20, scope: !377)
!396 = !DILocation(line: 340, column: 30, scope: !377)
!397 = !DILocation(line: 340, column: 35, scope: !377)
!398 = !DILocation(line: 340, column: 41, scope: !377)
!399 = !DILocation(line: 341, column: 10, scope: !377)
!400 = !DILocation(line: 341, column: 16, scope: !377)
!401 = !DILocation(line: 341, column: 21, scope: !377)
!402 = !DILocation(line: 341, column: 27, scope: !377)
!403 = !DILocation(line: 341, column: 3, scope: !377)
!404 = !DILocation(line: 342, column: 3, scope: !377)
!405 = !DILocation(line: 342, column: 8, scope: !377)
!406 = !DILocation(line: 342, column: 13, scope: !377)
!407 = !DILocation(line: 343, column: 2, scope: !378)
!408 = !DILocation(line: 343, column: 2, scope: !377)
!409 = !DILocation(line: 344, column: 9, scope: !366)
!410 = !DILocation(line: 345, column: 1, scope: !366)
!411 = !DILocation(line: 344, column: 2, scope: !366)
!412 = !DISubprogram(name: "kstrtouint", scope: !413, file: !413, line: 71, type: !414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!413 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!414 = !DISubroutineType(types: !415)
!415 = !{!23, !59, !7, !345}
!416 = distinct !DISubprogram(name: "match_u64", scope: !3, file: !3, line: 233, type: !417, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !425)
!417 = !DISubroutineType(types: !418)
!418 = !{!23, !61, !419}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !421, line: 23, baseType: !422)
!421 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !423, line: 31, baseType: !424)
!423 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!424 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!425 = !{!426, !427}
!426 = !DILocalVariable(name: "s", arg: 1, scope: !416, file: !3, line: 233, type: !61)
!427 = !DILocalVariable(name: "result", arg: 2, scope: !416, file: !3, line: 233, type: !419)
!428 = !DILocation(line: 233, column: 28, scope: !416)
!429 = !DILocation(line: 233, column: 36, scope: !416)
!430 = !DILocation(line: 235, column: 22, scope: !416)
!431 = !DILocation(line: 235, column: 25, scope: !416)
!432 = !DILocation(line: 235, column: 9, scope: !416)
!433 = !DILocation(line: 235, column: 2, scope: !416)
!434 = distinct !DISubprogram(name: "match_u64int", scope: !3, file: !3, line: 170, type: !435, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !437)
!435 = !DISubroutineType(types: !436)
!436 = !{!23, !61, !419, !23}
!437 = !{!438, !439, !440, !441, !442, !443}
!438 = !DILocalVariable(name: "s", arg: 1, scope: !434, file: !3, line: 170, type: !61)
!439 = !DILocalVariable(name: "result", arg: 2, scope: !434, file: !3, line: 170, type: !419)
!440 = !DILocalVariable(name: "base", arg: 3, scope: !434, file: !3, line: 170, type: !23)
!441 = !DILocalVariable(name: "buf", scope: !434, file: !3, line: 172, type: !291)
!442 = !DILocalVariable(name: "ret", scope: !434, file: !3, line: 173, type: !23)
!443 = !DILocalVariable(name: "val", scope: !434, file: !3, line: 174, type: !420)
!444 = !DILocation(line: 170, column: 38, scope: !434)
!445 = !DILocation(line: 170, column: 46, scope: !434)
!446 = !DILocation(line: 170, column: 58, scope: !434)
!447 = !DILocation(line: 172, column: 2, scope: !434)
!448 = !DILocation(line: 172, column: 7, scope: !434)
!449 = !DILocation(line: 173, column: 2, scope: !434)
!450 = !DILocation(line: 173, column: 6, scope: !434)
!451 = !DILocation(line: 174, column: 2, scope: !434)
!452 = !DILocation(line: 174, column: 6, scope: !434)
!453 = !DILocation(line: 176, column: 20, scope: !454)
!454 = distinct !DILexicalBlock(scope: !434, file: !3, line: 176, column: 6)
!455 = !DILocation(line: 176, column: 25, scope: !454)
!456 = !DILocation(line: 176, column: 6, scope: !454)
!457 = !DILocation(line: 176, column: 44, scope: !454)
!458 = !DILocation(line: 176, column: 6, scope: !434)
!459 = !DILocation(line: 177, column: 3, scope: !454)
!460 = !DILocation(line: 178, column: 18, scope: !434)
!461 = !DILocation(line: 178, column: 23, scope: !434)
!462 = !DILocation(line: 178, column: 8, scope: !434)
!463 = !DILocation(line: 178, column: 6, scope: !434)
!464 = !DILocation(line: 179, column: 7, scope: !465)
!465 = distinct !DILexicalBlock(scope: !434, file: !3, line: 179, column: 6)
!466 = !DILocation(line: 179, column: 6, scope: !434)
!467 = !DILocation(line: 180, column: 13, scope: !465)
!468 = !DILocation(line: 180, column: 4, scope: !465)
!469 = !DILocation(line: 180, column: 11, scope: !465)
!470 = !DILocation(line: 180, column: 3, scope: !465)
!471 = !DILocation(line: 181, column: 9, scope: !434)
!472 = !DILocation(line: 181, column: 2, scope: !434)
!473 = !DILocation(line: 182, column: 1, scope: !434)
!474 = distinct !DISubprogram(name: "match_octal", scope: !3, file: !3, line: 249, type: !270, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !475)
!475 = !{!476, !477}
!476 = !DILocalVariable(name: "s", arg: 1, scope: !474, file: !3, line: 249, type: !61)
!477 = !DILocalVariable(name: "result", arg: 2, scope: !474, file: !3, line: 249, type: !272)
!478 = !DILocation(line: 249, column: 30, scope: !474)
!479 = !DILocation(line: 249, column: 38, scope: !474)
!480 = !DILocation(line: 251, column: 22, scope: !474)
!481 = !DILocation(line: 251, column: 25, scope: !474)
!482 = !DILocation(line: 251, column: 9, scope: !474)
!483 = !DILocation(line: 251, column: 2, scope: !474)
!484 = distinct !DISubprogram(name: "match_hex", scope: !3, file: !3, line: 265, type: !270, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !485)
!485 = !{!486, !487}
!486 = !DILocalVariable(name: "s", arg: 1, scope: !484, file: !3, line: 265, type: !61)
!487 = !DILocalVariable(name: "result", arg: 2, scope: !484, file: !3, line: 265, type: !272)
!488 = !DILocation(line: 265, column: 28, scope: !484)
!489 = !DILocation(line: 265, column: 36, scope: !484)
!490 = !DILocation(line: 267, column: 22, scope: !484)
!491 = !DILocation(line: 267, column: 25, scope: !484)
!492 = !DILocation(line: 267, column: 9, scope: !484)
!493 = !DILocation(line: 267, column: 2, scope: !484)
!494 = distinct !DISubprogram(name: "match_wildcard", scope: !3, file: !3, line: 283, type: !495, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !499)
!495 = !DISubroutineType(types: !496)
!496 = !{!497, !59, !59}
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !18, line: 35, baseType: !498)
!498 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!499 = !{!500, !501, !502, !503, !504}
!500 = !DILocalVariable(name: "pattern", arg: 1, scope: !494, file: !3, line: 283, type: !59)
!501 = !DILocalVariable(name: "str", arg: 2, scope: !494, file: !3, line: 283, type: !59)
!502 = !DILocalVariable(name: "s", scope: !494, file: !3, line: 285, type: !59)
!503 = !DILocalVariable(name: "p", scope: !494, file: !3, line: 286, type: !59)
!504 = !DILocalVariable(name: "star", scope: !494, file: !3, line: 287, type: !497)
!505 = !DILocation(line: 283, column: 33, scope: !494)
!506 = !DILocation(line: 283, column: 54, scope: !494)
!507 = !DILocation(line: 285, column: 2, scope: !494)
!508 = !DILocation(line: 285, column: 14, scope: !494)
!509 = !DILocation(line: 285, column: 18, scope: !494)
!510 = !DILocation(line: 286, column: 2, scope: !494)
!511 = !DILocation(line: 286, column: 14, scope: !494)
!512 = !DILocation(line: 286, column: 18, scope: !494)
!513 = !DILocation(line: 287, column: 2, scope: !494)
!514 = !DILocation(line: 287, column: 7, scope: !494)
!515 = !DILocation(line: 289, column: 2, scope: !494)
!516 = !DILocation(line: 289, column: 10, scope: !494)
!517 = !DILocation(line: 289, column: 9, scope: !494)
!518 = !DILocation(line: 290, column: 12, scope: !519)
!519 = distinct !DILexicalBlock(scope: !494, file: !3, line: 289, column: 13)
!520 = !DILocation(line: 290, column: 11, scope: !519)
!521 = !DILocation(line: 290, column: 3, scope: !519)
!522 = !DILocation(line: 292, column: 5, scope: !523)
!523 = distinct !DILexicalBlock(scope: !519, file: !3, line: 290, column: 15)
!524 = !DILocation(line: 293, column: 5, scope: !523)
!525 = !DILocation(line: 294, column: 4, scope: !523)
!526 = !DILocation(line: 296, column: 9, scope: !523)
!527 = !DILocation(line: 297, column: 10, scope: !523)
!528 = !DILocation(line: 297, column: 8, scope: !523)
!529 = !DILocation(line: 298, column: 10, scope: !530)
!530 = distinct !DILexicalBlock(scope: !523, file: !3, line: 298, column: 8)
!531 = !DILocation(line: 298, column: 9, scope: !530)
!532 = !DILocation(line: 298, column: 8, scope: !523)
!533 = !DILocation(line: 299, column: 5, scope: !530)
!534 = !DILocation(line: 300, column: 14, scope: !523)
!535 = !DILocation(line: 300, column: 12, scope: !523)
!536 = !DILocation(line: 301, column: 4, scope: !523)
!537 = !DILocation(line: 303, column: 9, scope: !538)
!538 = distinct !DILexicalBlock(scope: !523, file: !3, line: 303, column: 8)
!539 = !DILocation(line: 303, column: 8, scope: !538)
!540 = !DILocation(line: 303, column: 15, scope: !538)
!541 = !DILocation(line: 303, column: 14, scope: !538)
!542 = !DILocation(line: 303, column: 11, scope: !538)
!543 = !DILocation(line: 303, column: 8, scope: !523)
!544 = !DILocation(line: 304, column: 6, scope: !545)
!545 = distinct !DILexicalBlock(scope: !538, file: !3, line: 303, column: 18)
!546 = !DILocation(line: 305, column: 6, scope: !545)
!547 = !DILocation(line: 306, column: 4, scope: !545)
!548 = !DILocation(line: 307, column: 10, scope: !549)
!549 = distinct !DILexicalBlock(scope: !550, file: !3, line: 307, column: 9)
!550 = distinct !DILexicalBlock(scope: !538, file: !3, line: 306, column: 11)
!551 = !{i8 0, i8 2}
!552 = !{}
!553 = !DILocation(line: 307, column: 9, scope: !550)
!554 = !DILocation(line: 308, column: 6, scope: !549)
!555 = !DILocation(line: 309, column: 8, scope: !550)
!556 = !DILocation(line: 310, column: 9, scope: !550)
!557 = !DILocation(line: 310, column: 7, scope: !550)
!558 = !DILocation(line: 311, column: 9, scope: !550)
!559 = !DILocation(line: 311, column: 7, scope: !550)
!560 = !DILocation(line: 313, column: 4, scope: !523)
!561 = distinct !{!561, !515, !562, !93, !94}
!562 = !DILocation(line: 315, column: 2, scope: !494)
!563 = !DILocation(line: 317, column: 7, scope: !564)
!564 = distinct !DILexicalBlock(scope: !494, file: !3, line: 317, column: 6)
!565 = !DILocation(line: 317, column: 6, scope: !564)
!566 = !DILocation(line: 317, column: 9, scope: !564)
!567 = !DILocation(line: 317, column: 6, scope: !494)
!568 = !DILocation(line: 318, column: 3, scope: !564)
!569 = !DILocation(line: 319, column: 11, scope: !494)
!570 = !DILocation(line: 319, column: 10, scope: !494)
!571 = !DILocation(line: 319, column: 9, scope: !494)
!572 = !DILocation(line: 319, column: 2, scope: !494)
!573 = !DILocation(line: 320, column: 1, scope: !494)
!574 = distinct !DISubprogram(name: "match_strdup", scope: !3, file: !3, line: 359, type: !575, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !577)
!575 = !DISubroutineType(types: !576)
!576 = !{!20, !369}
!577 = !{!578}
!578 = !DILocalVariable(name: "s", arg: 1, scope: !574, file: !3, line: 359, type: !369)
!579 = !DILocation(line: 359, column: 39, scope: !574)
!580 = !DILocation(line: 361, column: 21, scope: !574)
!581 = !DILocation(line: 361, column: 24, scope: !574)
!582 = !DILocation(line: 361, column: 30, scope: !574)
!583 = !DILocation(line: 361, column: 33, scope: !574)
!584 = !DILocation(line: 361, column: 38, scope: !574)
!585 = !DILocation(line: 361, column: 41, scope: !574)
!586 = !DILocation(line: 361, column: 36, scope: !574)
!587 = !DILocation(line: 361, column: 9, scope: !574)
!588 = !DILocation(line: 361, column: 2, scope: !574)
!589 = !DISubprogram(name: "kmemdup_nul", scope: !590, file: !590, line: 221, type: !591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!590 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!591 = !DISubroutineType(types: !592)
!592 = !{!20, !59, !113, !17}
!593 = !DISubprogram(name: "strchr", scope: !590, file: !590, line: 100, type: !594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!594 = !DISubroutineType(types: !595)
!595 = !{!20, !59, !23}
!596 = !DISubprogram(name: "strcmp", scope: !590, file: !590, line: 88, type: !597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!597 = !DISubroutineType(types: !598)
!598 = !{!23, !59, !59}
!599 = !DISubprogram(name: "strncmp", scope: !590, file: !590, line: 91, type: !600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!600 = !DISubroutineType(types: !601)
!601 = !{!23, !59, !59, !114}
!602 = distinct !DISubprogram(name: "isdigit", scope: !603, file: !603, line: 43, type: !604, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !606)
!603 = !DIFile(filename: "./include/linux/ctype.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16ff466080305de3b83767ab84129dc0")
!604 = !DISubroutineType(types: !605)
!605 = !{!23, !23}
!606 = !{!607}
!607 = !DILocalVariable(name: "c", arg: 1, scope: !602, file: !603, line: 43, type: !23)
!608 = !DILocation(line: 43, column: 31, scope: !602)
!609 = !DILocation(line: 45, column: 16, scope: !602)
!610 = !DILocation(line: 45, column: 13, scope: !602)
!611 = !DILocation(line: 45, column: 18, scope: !602)
!612 = !DILocation(line: 45, column: 21, scope: !602)
!613 = !DILocation(line: 45, column: 23, scope: !602)
!614 = !DILocation(line: 0, scope: !602)
!615 = !DILocation(line: 45, column: 2, scope: !602)
!616 = !DISubprogram(name: "simple_strtoul", scope: !413, file: !413, line: 145, type: !617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!617 = !DISubroutineType(types: !618)
!618 = !{!117, !59, !19, !7}
!619 = !DISubprogram(name: "strlen", scope: !590, file: !590, line: 128, type: !620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!620 = !DISubroutineType(types: !621)
!621 = !{!117, !59}
!622 = !DISubprogram(name: "simple_strtol", scope: !413, file: !413, line: 146, type: !623, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!623 = !DISubroutineType(types: !624)
!624 = !{!22, !59, !19, !7}
!625 = !DISubprogram(name: "kstrtoull", scope: !413, file: !413, line: 12, type: !626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!626 = !DISubroutineType(types: !627)
!627 = !{!23, !59, !7, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)

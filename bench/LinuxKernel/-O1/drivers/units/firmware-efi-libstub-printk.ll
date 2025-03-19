; ModuleID = 'drivers/firmware/efi/libstub/printk.c'
source_filename = "drivers/firmware/efi/libstub/printk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { %struct.efi_table_hdr_t, i64, i32, i64, ptr, i64, ptr, i64, i64, ptr, ptr, i64, i64 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.efi_system_table_32_t = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { ptr, ptr, ptr }
%struct.anon.1 = type { i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@efi_loglevel = hidden global i32 7, align 4, !dbg !0
@efi_system_table = external hidden global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"EFI stub: \00", align 1, !dbg !46
@.str.1 = private unnamed_addr constant [21 x i8] c"[Message truncated]\0A\00", align 1, !dbg !52
@efi_is64 = external hidden constant i8, align 1

; Function Attrs: noredzone nounwind
define hidden void @efi_char16_puts(ptr noundef %str) #0 !dbg !63 {
entry:
  %str.addr = alloca ptr, align 8
  %__inst = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp7 = alloca i64, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !67, metadata !DIExpression()), !dbg !78
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst) #6, !dbg !79
  call void @llvm.dbg.declare(metadata ptr %__inst, metadata !68, metadata !DIExpression()), !dbg !79
  %call = call zeroext i1 @efi_is_native() #7, !dbg !79
  br i1 %call, label %cond.true, label %cond.false, !dbg !79

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr @efi_system_table, align 8, !dbg !79
  %con_out = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 6, !dbg !79
  %1 = load ptr, ptr %con_out, align 8, !dbg !79
  br label %cond.end, !dbg !79

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr @efi_system_table, align 8, !dbg !79
  %con_out1 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %2, i32 0, i32 6, !dbg !79
  %3 = load i32, ptr %con_out1, align 4, !dbg !79
  %conv = zext i32 %3 to i64, !dbg !79
  %4 = inttoptr i64 %conv to ptr, !dbg !79
  br label %cond.end, !dbg !79

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ %4, %cond.false ], !dbg !79
  store ptr %cond, ptr %__inst, align 8, !dbg !79
  %call2 = call zeroext i1 @efi_is_native() #7, !dbg !79
  br i1 %call2, label %cond.true4, label %cond.false6, !dbg !79

cond.true4:                                       ; preds = %cond.end
  %5 = load ptr, ptr %__inst, align 8, !dbg !79
  %output_string = getelementptr inbounds %struct.anon.0, ptr %5, i32 0, i32 1, !dbg !79
  %6 = load ptr, ptr %output_string, align 8, !dbg !79
  %7 = load ptr, ptr %__inst, align 8, !dbg !79
  %8 = load ptr, ptr %str.addr, align 8, !dbg !79
  %call5 = call win64cc i64 %6(ptr noundef %7, ptr noundef %8) #7, !dbg !79
  br label %cond.end11, !dbg !79

cond.false6:                                      ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #6, !dbg !80
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !70, metadata !DIExpression()), !dbg !80
  br label %do.body, !dbg !81

do.body:                                          ; preds = %cond.false6
  br label %do.cond, !dbg !83

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !83

do.end:                                           ; preds = %do.cond
  %9 = load ptr, ptr %__inst, align 8, !dbg !80
  %output_string8 = getelementptr inbounds %struct.anon.1, ptr %9, i32 0, i32 1, !dbg !80
  %10 = load i32, ptr %output_string8, align 4, !dbg !80
  %11 = load ptr, ptr %__inst, align 8, !dbg !80
  %12 = load ptr, ptr %str.addr, align 8, !dbg !80
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !80
  %call9 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %arraydecay) #7, !dbg !80
  store i64 %call9, ptr %tmp7, align 8, !dbg !80
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #6, !dbg !79
  %13 = load i64, ptr %tmp7, align 8, !dbg !80
  %call10 = call i64 @__efi64_widen_efi_status(i64 noundef %13) #7, !dbg !79
  br label %cond.end11, !dbg !79

cond.end11:                                       ; preds = %do.end, %cond.true4
  %cond12 = phi i64 [ %call5, %cond.true4 ], [ %call10, %do.end ], !dbg !79
  store i64 %cond12, ptr %tmp, align 8, !dbg !79
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst) #6, !dbg !85
  %14 = load i64, ptr %tmp, align 8, !dbg !79
  ret void, !dbg !86
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_native() #3 !dbg !87 {
entry:
  %call = call zeroext i1 @efi_is_64bit() #7, !dbg !94
  ret i1 %call, !dbg !95
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @__efi64_widen_efi_status(i64 noundef %status) #3 !dbg !96 {
entry:
  %status.addr = alloca i64, align 8
  store i64 %status, ptr %status.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !100, metadata !DIExpression()), !dbg !101
  %0 = load i64, ptr %status.addr, align 8, !dbg !102
  %conv = trunc i64 %0 to i32, !dbg !102
  %call = call i32 @rol32(i32 noundef %conv, i32 noundef 1) #7, !dbg !103
  %conv1 = zext i32 %call to i64, !dbg !103
  %call2 = call i64 @ror64(i64 noundef %conv1, i32 noundef 1) #7, !dbg !104
  ret i64 %call2, !dbg !105
}

; Function Attrs: noredzone
declare !dbg !106 hidden i64 @__efi64_thunk(i32 noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone nounwind
define hidden void @efi_puts(ptr noundef %str) #0 !dbg !109 {
entry:
  %str.addr = alloca ptr, align 8
  %buf = alloca [128 x i16], align 16
  %pos = alloca i64, align 8
  %lim = alloca i64, align 8
  %s8 = alloca ptr, align 8
  %c32 = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !115, metadata !DIExpression()), !dbg !128
  call void @llvm.lifetime.start.p0(i64 256, ptr %buf) #6, !dbg !129
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !116, metadata !DIExpression()), !dbg !130
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #6, !dbg !131
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !120, metadata !DIExpression()), !dbg !132
  store i64 0, ptr %pos, align 8, !dbg !132
  call void @llvm.lifetime.start.p0(i64 8, ptr %lim) #6, !dbg !131
  call void @llvm.dbg.declare(metadata ptr %lim, metadata !125, metadata !DIExpression()), !dbg !133
  store i64 128, ptr %lim, align 8, !dbg !133
  call void @llvm.lifetime.start.p0(i64 8, ptr %s8) #6, !dbg !134
  call void @llvm.dbg.declare(metadata ptr %s8, metadata !126, metadata !DIExpression()), !dbg !135
  %0 = load ptr, ptr %str.addr, align 8, !dbg !136
  store ptr %0, ptr %s8, align 8, !dbg !135
  call void @llvm.lifetime.start.p0(i64 4, ptr %c32) #6, !dbg !137
  call void @llvm.dbg.declare(metadata ptr %c32, metadata !127, metadata !DIExpression()), !dbg !138
  br label %while.cond, !dbg !139

while.cond:                                       ; preds = %if.end23, %entry
  %1 = load ptr, ptr %s8, align 8, !dbg !140
  %2 = load i8, ptr %1, align 1, !dbg !141
  %tobool = icmp ne i8 %2, 0, !dbg !139
  br i1 %tobool, label %while.body, label %while.end, !dbg !139

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %s8, align 8, !dbg !142
  %4 = load i8, ptr %3, align 1, !dbg !145
  %conv = zext i8 %4 to i32, !dbg !145
  %cmp = icmp eq i32 %conv, 10, !dbg !146
  br i1 %cmp, label %if.then, label %if.end, !dbg !147

if.then:                                          ; preds = %while.body
  %5 = load i64, ptr %pos, align 8, !dbg !148
  %inc = add i64 %5, 1, !dbg !148
  store i64 %inc, ptr %pos, align 8, !dbg !148
  %arrayidx = getelementptr inbounds [128 x i16], ptr %buf, i64 0, i64 %5, !dbg !149
  store i16 13, ptr %arrayidx, align 2, !dbg !150
  br label %if.end, !dbg !149

if.end:                                           ; preds = %if.then, %while.body
  %call = call i32 @utf8_to_utf32(ptr noundef %s8) #7, !dbg !151
  store i32 %call, ptr %c32, align 4, !dbg !152
  %6 = load i32, ptr %c32, align 4, !dbg !153
  %cmp2 = icmp ult i32 %6, 65536, !dbg !155
  br i1 %cmp2, label %if.then4, label %if.else, !dbg !156

if.then4:                                         ; preds = %if.end
  %7 = load i32, ptr %c32, align 4, !dbg !157
  %conv5 = trunc i32 %7 to i16, !dbg !157
  %8 = load i64, ptr %pos, align 8, !dbg !159
  %inc6 = add i64 %8, 1, !dbg !159
  store i64 %inc6, ptr %pos, align 8, !dbg !159
  %arrayidx7 = getelementptr inbounds [128 x i16], ptr %buf, i64 0, i64 %8, !dbg !160
  store i16 %conv5, ptr %arrayidx7, align 2, !dbg !161
  br label %if.end15, !dbg !162

if.else:                                          ; preds = %if.end
  %9 = load i32, ptr %c32, align 4, !dbg !163
  %shr = lshr i32 %9, 10, !dbg !165
  %add = add i32 55232, %shr, !dbg !166
  %conv8 = trunc i32 %add to i16, !dbg !167
  %10 = load i64, ptr %pos, align 8, !dbg !168
  %inc9 = add i64 %10, 1, !dbg !168
  store i64 %inc9, ptr %pos, align 8, !dbg !168
  %arrayidx10 = getelementptr inbounds [128 x i16], ptr %buf, i64 0, i64 %10, !dbg !169
  store i16 %conv8, ptr %arrayidx10, align 2, !dbg !170
  %11 = load i32, ptr %c32, align 4, !dbg !171
  %and = and i32 %11, 1023, !dbg !172
  %add11 = add i32 56320, %and, !dbg !173
  %conv12 = trunc i32 %add11 to i16, !dbg !174
  %12 = load i64, ptr %pos, align 8, !dbg !175
  %inc13 = add i64 %12, 1, !dbg !175
  store i64 %inc13, ptr %pos, align 8, !dbg !175
  %arrayidx14 = getelementptr inbounds [128 x i16], ptr %buf, i64 0, i64 %12, !dbg !176
  store i16 %conv12, ptr %arrayidx14, align 2, !dbg !177
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then4
  %13 = load ptr, ptr %s8, align 8, !dbg !178
  %14 = load i8, ptr %13, align 1, !dbg !180
  %conv16 = zext i8 %14 to i32, !dbg !180
  %cmp17 = icmp eq i32 %conv16, 0, !dbg !181
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !182

lor.lhs.false:                                    ; preds = %if.end15
  %15 = load i64, ptr %pos, align 8, !dbg !183
  %16 = load i64, ptr %lim, align 8, !dbg !184
  %sub = sub i64 %16, 2, !dbg !185
  %cmp19 = icmp uge i64 %15, %sub, !dbg !186
  br i1 %cmp19, label %if.then21, label %if.end23, !dbg !187

if.then21:                                        ; preds = %lor.lhs.false, %if.end15
  %17 = load i64, ptr %pos, align 8, !dbg !188
  %arrayidx22 = getelementptr inbounds [128 x i16], ptr %buf, i64 0, i64 %17, !dbg !190
  store i16 0, ptr %arrayidx22, align 2, !dbg !191
  %arraydecay = getelementptr inbounds [128 x i16], ptr %buf, i64 0, i64 0, !dbg !192
  call void @efi_char16_puts(ptr noundef %arraydecay) #7, !dbg !193
  store i64 0, ptr %pos, align 8, !dbg !194
  br label %if.end23, !dbg !195

if.end23:                                         ; preds = %if.then21, %lor.lhs.false
  br label %while.cond, !dbg !139, !llvm.loop !196

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %c32) #6, !dbg !200
  call void @llvm.lifetime.end.p0(i64 8, ptr %s8) #6, !dbg !200
  call void @llvm.lifetime.end.p0(i64 8, ptr %lim) #6, !dbg !200
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #6, !dbg !200
  call void @llvm.lifetime.end.p0(i64 256, ptr %buf) #6, !dbg !200
  ret void, !dbg !200
}

; Function Attrs: noredzone nounwind
define internal i32 @utf8_to_utf32(ptr noundef %s8) #0 !dbg !201 {
entry:
  %retval = alloca i32, align 4
  %s8.addr = alloca ptr, align 8
  %c32 = alloca i32, align 4
  %c0 = alloca i8, align 1
  %cx = alloca i8, align 1
  %clen = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s8, ptr %s8.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s8.addr, metadata !206, metadata !DIExpression()), !dbg !212
  call void @llvm.lifetime.start.p0(i64 4, ptr %c32) #6, !dbg !213
  call void @llvm.dbg.declare(metadata ptr %c32, metadata !207, metadata !DIExpression()), !dbg !214
  call void @llvm.lifetime.start.p0(i64 1, ptr %c0) #6, !dbg !215
  call void @llvm.dbg.declare(metadata ptr %c0, metadata !208, metadata !DIExpression()), !dbg !216
  call void @llvm.lifetime.start.p0(i64 1, ptr %cx) #6, !dbg !215
  call void @llvm.dbg.declare(metadata ptr %cx, metadata !209, metadata !DIExpression()), !dbg !217
  call void @llvm.lifetime.start.p0(i64 8, ptr %clen) #6, !dbg !218
  call void @llvm.dbg.declare(metadata ptr %clen, metadata !210, metadata !DIExpression()), !dbg !219
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6, !dbg !218
  call void @llvm.dbg.declare(metadata ptr %i, metadata !211, metadata !DIExpression()), !dbg !220
  %0 = load ptr, ptr %s8.addr, align 8, !dbg !221
  %1 = load ptr, ptr %0, align 8, !dbg !222
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i32 1, !dbg !222
  store ptr %incdec.ptr, ptr %0, align 8, !dbg !222
  %2 = load i8, ptr %1, align 1, !dbg !223
  store i8 %2, ptr %cx, align 1, !dbg !224
  store i8 %2, ptr %c0, align 1, !dbg !225
  store i64 0, ptr %clen, align 8, !dbg !226
  br label %for.cond, !dbg !228

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i8, ptr %cx, align 1, !dbg !229
  %conv = zext i8 %3 to i32, !dbg !229
  %and = and i32 %conv, 128, !dbg !231
  %tobool = icmp ne i32 %and, 0, !dbg !232
  br i1 %tobool, label %for.body, label %for.end, !dbg !232

for.body:                                         ; preds = %for.cond
  %4 = load i8, ptr %cx, align 1, !dbg !233
  %conv1 = zext i8 %4 to i32, !dbg !233
  %shl = shl i32 %conv1, 1, !dbg !233
  %conv2 = trunc i32 %shl to i8, !dbg !233
  store i8 %conv2, ptr %cx, align 1, !dbg !233
  br label %for.inc, !dbg !234

for.inc:                                          ; preds = %for.body
  %5 = load i64, ptr %clen, align 8, !dbg !235
  %inc = add i64 %5, 1, !dbg !235
  store i64 %inc, ptr %clen, align 8, !dbg !235
  br label %for.cond, !dbg !236, !llvm.loop !237

for.end:                                          ; preds = %for.cond
  %6 = load i64, ptr %clen, align 8, !dbg !239
  %cmp = icmp ult i64 %6, 2, !dbg !241
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !242

lor.lhs.false:                                    ; preds = %for.end
  %7 = load i64, ptr %clen, align 8, !dbg !243
  %cmp4 = icmp ugt i64 %7, 4, !dbg !244
  br i1 %cmp4, label %if.then, label %if.end, !dbg !245

if.then:                                          ; preds = %lor.lhs.false, %for.end
  %8 = load i8, ptr %c0, align 1, !dbg !246
  %conv6 = zext i8 %8 to i32, !dbg !246
  store i32 %conv6, ptr %retval, align 4, !dbg !247
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !247

if.end:                                           ; preds = %lor.lhs.false
  %9 = load i8, ptr %cx, align 1, !dbg !248
  %conv7 = zext i8 %9 to i32, !dbg !248
  %10 = load i64, ptr %clen, align 8, !dbg !249
  %dec = add i64 %10, -1, !dbg !249
  store i64 %dec, ptr %clen, align 8, !dbg !249
  %sh_prom = trunc i64 %10 to i32, !dbg !250
  %shr = ashr i32 %conv7, %sh_prom, !dbg !250
  store i32 %shr, ptr %c32, align 4, !dbg !251
  store i64 0, ptr %i, align 8, !dbg !252
  br label %for.cond8, !dbg !254

for.cond8:                                        ; preds = %for.inc22, %if.end
  %11 = load i64, ptr %i, align 8, !dbg !255
  %12 = load i64, ptr %clen, align 8, !dbg !257
  %cmp9 = icmp ult i64 %11, %12, !dbg !258
  br i1 %cmp9, label %for.body11, label %for.end24, !dbg !259

for.body11:                                       ; preds = %for.cond8
  %13 = load ptr, ptr %s8.addr, align 8, !dbg !260
  %14 = load ptr, ptr %13, align 8, !dbg !262
  %15 = load i64, ptr %i, align 8, !dbg !263
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 %15, !dbg !264
  %16 = load i8, ptr %arrayidx, align 1, !dbg !264
  %conv12 = zext i8 %16 to i32, !dbg !264
  %xor = xor i32 %conv12, 128, !dbg !265
  %conv13 = trunc i32 %xor to i8, !dbg !264
  store i8 %conv13, ptr %cx, align 1, !dbg !266
  %17 = load i8, ptr %cx, align 1, !dbg !267
  %conv14 = zext i8 %17 to i32, !dbg !267
  %and15 = and i32 %conv14, 192, !dbg !269
  %tobool16 = icmp ne i32 %and15, 0, !dbg !269
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !270

if.then17:                                        ; preds = %for.body11
  %18 = load i8, ptr %c0, align 1, !dbg !271
  %conv18 = zext i8 %18 to i32, !dbg !271
  store i32 %conv18, ptr %retval, align 4, !dbg !272
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !272

if.end19:                                         ; preds = %for.body11
  %19 = load i32, ptr %c32, align 4, !dbg !273
  %shl20 = shl i32 %19, 6, !dbg !274
  %20 = load i8, ptr %cx, align 1, !dbg !275
  %conv21 = zext i8 %20 to i32, !dbg !275
  %or = or i32 %shl20, %conv21, !dbg !276
  store i32 %or, ptr %c32, align 4, !dbg !277
  br label %for.inc22, !dbg !278

for.inc22:                                        ; preds = %if.end19
  %21 = load i64, ptr %i, align 8, !dbg !279
  %inc23 = add i64 %21, 1, !dbg !279
  store i64 %inc23, ptr %i, align 8, !dbg !279
  br label %for.cond8, !dbg !280, !llvm.loop !281

for.end24:                                        ; preds = %for.cond8
  %22 = load i32, ptr %c32, align 4, !dbg !283
  %cmp25 = icmp ugt i32 %22, 1114111, !dbg !285
  br i1 %cmp25, label %if.then42, label %lor.lhs.false27, !dbg !286

lor.lhs.false27:                                  ; preds = %for.end24
  %23 = load i32, ptr %c32, align 4, !dbg !287
  %and28 = and i32 %23, 63488, !dbg !288
  %cmp29 = icmp eq i32 %and28, 55296, !dbg !289
  br i1 %cmp29, label %if.then42, label %lor.lhs.false31, !dbg !290

lor.lhs.false31:                                  ; preds = %lor.lhs.false27
  %24 = load i64, ptr %clen, align 8, !dbg !291
  %25 = load i32, ptr %c32, align 4, !dbg !292
  %cmp32 = icmp uge i32 %25, 128, !dbg !293
  %conv33 = zext i1 %cmp32 to i32, !dbg !293
  %26 = load i32, ptr %c32, align 4, !dbg !294
  %cmp34 = icmp uge i32 %26, 2048, !dbg !295
  %conv35 = zext i1 %cmp34 to i32, !dbg !295
  %add = add nsw i32 %conv33, %conv35, !dbg !296
  %27 = load i32, ptr %c32, align 4, !dbg !297
  %cmp36 = icmp uge i32 %27, 65536, !dbg !298
  %conv37 = zext i1 %cmp36 to i32, !dbg !298
  %add38 = add nsw i32 %add, %conv37, !dbg !299
  %conv39 = sext i32 %add38 to i64, !dbg !300
  %cmp40 = icmp ne i64 %24, %conv39, !dbg !301
  br i1 %cmp40, label %if.then42, label %if.end44, !dbg !302

if.then42:                                        ; preds = %lor.lhs.false31, %lor.lhs.false27, %for.end24
  %28 = load i8, ptr %c0, align 1, !dbg !303
  %conv43 = zext i8 %28 to i32, !dbg !303
  store i32 %conv43, ptr %retval, align 4, !dbg !304
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !304

if.end44:                                         ; preds = %lor.lhs.false31
  %29 = load i64, ptr %clen, align 8, !dbg !305
  %30 = load ptr, ptr %s8.addr, align 8, !dbg !306
  %31 = load ptr, ptr %30, align 8, !dbg !307
  %add.ptr = getelementptr inbounds i8, ptr %31, i64 %29, !dbg !307
  store ptr %add.ptr, ptr %30, align 8, !dbg !307
  %32 = load i32, ptr %c32, align 4, !dbg !308
  store i32 %32, ptr %retval, align 4, !dbg !309
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !309

cleanup:                                          ; preds = %if.end44, %if.then42, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6, !dbg !310
  call void @llvm.lifetime.end.p0(i64 8, ptr %clen) #6, !dbg !310
  call void @llvm.lifetime.end.p0(i64 1, ptr %cx) #6, !dbg !310
  call void @llvm.lifetime.end.p0(i64 1, ptr %c0) #6, !dbg !310
  call void @llvm.lifetime.end.p0(i64 4, ptr %c32) #6, !dbg !310
  %33 = load i32, ptr %retval, align 4, !dbg !310
  ret i32 %33, !dbg !310
}

; Function Attrs: noredzone nounwind
define hidden i32 @efi_printk(ptr noundef %fmt, ...) #0 !dbg !311 {
entry:
  %retval = alloca i32, align 4
  %fmt.addr = alloca ptr, align 8
  %printf_buf = alloca [256 x i8], align 16
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %printed = alloca i32, align 4
  %loglevel = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !315, metadata !DIExpression()), !dbg !335
  call void @llvm.lifetime.start.p0(i64 256, ptr %printf_buf) #6, !dbg !336
  call void @llvm.dbg.declare(metadata ptr %printf_buf, metadata !316, metadata !DIExpression()), !dbg !337
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #6, !dbg !338
  call void @llvm.dbg.declare(metadata ptr %args, metadata !320, metadata !DIExpression()), !dbg !339
  call void @llvm.lifetime.start.p0(i64 4, ptr %printed) #6, !dbg !340
  call void @llvm.dbg.declare(metadata ptr %printed, metadata !333, metadata !DIExpression()), !dbg !341
  call void @llvm.lifetime.start.p0(i64 4, ptr %loglevel) #6, !dbg !342
  call void @llvm.dbg.declare(metadata ptr %loglevel, metadata !334, metadata !DIExpression()), !dbg !343
  %0 = load ptr, ptr %fmt.addr, align 8, !dbg !344
  %call = call i32 @printk_get_level(ptr noundef %0) #7, !dbg !345
  store i32 %call, ptr %loglevel, align 4, !dbg !343
  %1 = load i32, ptr %loglevel, align 4, !dbg !346
  switch i32 %1, label %sw.default [
    i32 48, label %sw.bb
    i32 49, label %sw.bb
    i32 50, label %sw.bb
    i32 51, label %sw.bb
    i32 52, label %sw.bb
    i32 53, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 57, label %sw.bb
  ], !dbg !347

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %2 = load i32, ptr %loglevel, align 4, !dbg !348
  %sub = sub nsw i32 %2, 48, !dbg !348
  store i32 %sub, ptr %loglevel, align 4, !dbg !348
  br label %sw.epilog, !dbg !350

sw.default:                                       ; preds = %entry
  store i32 -1, ptr %loglevel, align 4, !dbg !351
  br label %sw.epilog, !dbg !352

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %3 = load i32, ptr %loglevel, align 4, !dbg !353
  %4 = load i32, ptr @efi_loglevel, align 4, !dbg !355
  %cmp = icmp sge i32 %3, %4, !dbg !356
  br i1 %cmp, label %if.then, label %if.end, !dbg !357

if.then:                                          ; preds = %sw.epilog
  store i32 0, ptr %retval, align 4, !dbg !358
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !358

if.end:                                           ; preds = %sw.epilog
  %5 = load i32, ptr %loglevel, align 4, !dbg !359
  %cmp1 = icmp sge i32 %5, 0, !dbg !361
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !362

if.then2:                                         ; preds = %if.end
  call void @efi_puts(ptr noundef @.str) #7, !dbg !363
  br label %if.end3, !dbg !363

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load ptr, ptr %fmt.addr, align 8, !dbg !364
  %call4 = call ptr @printk_skip_level(ptr noundef %6) #7, !dbg !365
  store ptr %call4, ptr %fmt.addr, align 8, !dbg !366
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !367
  call void @llvm.va_start(ptr %arraydecay), !dbg !367
  %arraydecay5 = getelementptr inbounds [256 x i8], ptr %printf_buf, i64 0, i64 0, !dbg !368
  %7 = load ptr, ptr %fmt.addr, align 8, !dbg !369
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !370
  %call7 = call i32 @vsnprintf(ptr noundef %arraydecay5, i64 noundef 256, ptr noundef %7, ptr noundef %arraydecay6) #7, !dbg !371
  store i32 %call7, ptr %printed, align 4, !dbg !372
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !373
  call void @llvm.va_end(ptr %arraydecay8), !dbg !373
  %arraydecay9 = getelementptr inbounds [256 x i8], ptr %printf_buf, i64 0, i64 0, !dbg !374
  call void @efi_puts(ptr noundef %arraydecay9) #7, !dbg !375
  %8 = load i32, ptr %printed, align 4, !dbg !376
  %conv = sext i32 %8 to i64, !dbg !376
  %cmp10 = icmp uge i64 %conv, 256, !dbg !378
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !379

if.then12:                                        ; preds = %if.end3
  call void @efi_puts(ptr noundef @.str.1) #7, !dbg !380
  store i32 -1, ptr %retval, align 4, !dbg !382
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !382

if.end13:                                         ; preds = %if.end3
  %9 = load i32, ptr %printed, align 4, !dbg !383
  store i32 %9, ptr %retval, align 4, !dbg !384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !384

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %loglevel) #6, !dbg !385
  call void @llvm.lifetime.end.p0(i64 4, ptr %printed) #6, !dbg !385
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #6, !dbg !385
  call void @llvm.lifetime.end.p0(i64 256, ptr %printf_buf) #6, !dbg !385
  %10 = load i32, ptr %retval, align 4, !dbg !385
  ret i32 %10, !dbg !385
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @printk_get_level(ptr noundef %buffer) #3 !dbg !386 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !393
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0, !dbg !393
  %1 = load i8, ptr %arrayidx, align 1, !dbg !393
  %conv = sext i8 %1 to i32, !dbg !393
  %cmp = icmp eq i32 %conv, 1, !dbg !395
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !396

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %buffer.addr, align 8, !dbg !397
  %arrayidx2 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !397
  %3 = load i8, ptr %arrayidx2, align 1, !dbg !397
  %conv3 = sext i8 %3 to i32, !dbg !397
  %tobool = icmp ne i32 %conv3, 0, !dbg !397
  br i1 %tobool, label %if.then, label %if.end, !dbg !398

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %buffer.addr, align 8, !dbg !399
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !399
  %5 = load i8, ptr %arrayidx4, align 1, !dbg !399
  %conv5 = sext i8 %5 to i32, !dbg !399
  switch i32 %conv5, label %sw.epilog [
    i32 99, label %sw.bb6
    i32 48, label %sw.bb
    i32 49, label %sw.bb
    i32 50, label %sw.bb
    i32 51, label %sw.bb
    i32 52, label %sw.bb
    i32 53, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
  ], !dbg !401

sw.bb:                                            ; preds = %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then
  br label %sw.bb6, !dbg !402

sw.bb6:                                           ; preds = %if.then, %sw.bb
  %6 = load ptr, ptr %buffer.addr, align 8, !dbg !403
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !403
  %7 = load i8, ptr %arrayidx7, align 1, !dbg !403
  %conv8 = sext i8 %7 to i32, !dbg !403
  store i32 %conv8, ptr %retval, align 4, !dbg !405
  br label %return, !dbg !405

sw.epilog:                                        ; preds = %if.then
  br label %if.end, !dbg !406

if.end:                                           ; preds = %sw.epilog, %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !407
  br label %return, !dbg !407

return:                                           ; preds = %if.end, %sw.bb6
  %8 = load i32, ptr %retval, align 4, !dbg !408
  ret i32 %8, !dbg !408
}

; Function Attrs: inlinehint noredzone nounwind
define internal ptr @printk_skip_level(ptr noundef %buffer) #3 !dbg !409 {
entry:
  %retval = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !413, metadata !DIExpression()), !dbg !414
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !415
  %call = call i32 @printk_get_level(ptr noundef %0) #7, !dbg !417
  %tobool = icmp ne i32 %call, 0, !dbg !417
  br i1 %tobool, label %if.then, label %if.end, !dbg !418

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %buffer.addr, align 8, !dbg !419
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 2, !dbg !420
  store ptr %add.ptr, ptr %retval, align 8, !dbg !421
  br label %return, !dbg !421

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %buffer.addr, align 8, !dbg !422
  store ptr %2, ptr %retval, align 8, !dbg !423
  br label %return, !dbg !423

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8, !dbg !424
  ret ptr %3, !dbg !424
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: noredzone
declare !dbg !425 hidden i32 @vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_64bit() #3 !dbg !431 {
entry:
  %0 = load i8, ptr @efi_is64, align 1, !dbg !432, !range !433, !noundef !434
  %tobool = trunc i8 %0 to i1, !dbg !432
  ret i1 %tobool, !dbg !435
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @ror64(i64 noundef %word, i32 noundef %shift) #3 !dbg !436 {
entry:
  %word.addr = alloca i64, align 8
  %shift.addr = alloca i32, align 4
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !441, metadata !DIExpression()), !dbg !443
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !442, metadata !DIExpression()), !dbg !444
  %0 = load i64, ptr %word.addr, align 8, !dbg !445
  %1 = load i32, ptr %shift.addr, align 4, !dbg !446
  %and = and i32 %1, 63, !dbg !447
  %sh_prom = zext i32 %and to i64, !dbg !448
  %shr = lshr i64 %0, %sh_prom, !dbg !448
  %2 = load i64, ptr %word.addr, align 8, !dbg !449
  %3 = load i32, ptr %shift.addr, align 4, !dbg !450
  %sub = sub i32 0, %3, !dbg !451
  %and1 = and i32 %sub, 63, !dbg !452
  %sh_prom2 = zext i32 %and1 to i64, !dbg !453
  %shl = shl i64 %2, %sh_prom2, !dbg !453
  %or = or i64 %shr, %shl, !dbg !454
  ret i64 %or, !dbg !455
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @rol32(i32 noundef %word, i32 noundef %shift) #3 !dbg !456 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !460, metadata !DIExpression()), !dbg !462
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !461, metadata !DIExpression()), !dbg !463
  %0 = load i32, ptr %word.addr, align 4, !dbg !464
  %1 = load i32, ptr %shift.addr, align 4, !dbg !465
  %and = and i32 %1, 31, !dbg !466
  %shl = shl i32 %0, %and, !dbg !467
  %2 = load i32, ptr %word.addr, align 4, !dbg !468
  %3 = load i32, ptr %shift.addr, align 4, !dbg !469
  %sub = sub i32 0, %3, !dbg !470
  %and1 = and i32 %sub, 31, !dbg !471
  %shr = lshr i32 %2, %and1, !dbg !472
  %or = or i32 %shl, %shr, !dbg !473
  ret i32 %or, !dbg !474
}

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "efi_loglevel", scope: !2, file: !3, line: 14, type: !39, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firmware/efi/libstub/.printk.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -mcmodel=small -m64 -D __KERNEL__ -std=gnu11 -fPIC -fno-strict-aliasing -mno-red-zone -mno-mmx -mno-sse -fshort-wchar -Wno-pointer-sign -Wno-address-of-packed-member -Wno-gnu -fno-asynchronous-unwind-tables --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -O1 -D DISABLE_BRANCH_PROFILING -include ./include/linux/hidden.h -D __NO_FORTIFY -ffreestanding -fno-stack-protector -fno-addrsig -D __DISABLE_EXPORTS -D KBUILD_MODFILE=\22drivers/firmware/efi/libstub/printk\22 -D KBUILD_BASENAME=\22printk\22 -D KBUILD_MODNAME=\22printk\22 -D __KBUILD_MODNAME=kmod_printk -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firmware/efi/libstub/printk.ll drivers/firmware/efi/libstub/printk.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !45, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/firmware/efi/libstub/printk.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2c9b4199086f3ff6811e487ff3b865b8")
!4 = !{!5, !21, !39, !40}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_simple_text_output_protocol_t", file: !7, line: 514, baseType: !8)
!7 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!8 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_simple_text_output_protocol", file: !9, line: 503, size: 192, elements: !10)
!9 = !DIFile(filename: "drivers/firmware/efi/libstub/efistub.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbf2d830301e583887d4171bbc8b6c3a")
!10 = !{!11, !30}
!11 = !DIDerivedType(tag: DW_TAG_member, scope: !8, file: !9, line: 504, baseType: !12, size: 192)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !8, file: !9, line: 504, size: 192, elements: !13)
!13 = !{!14, !16, !29}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !12, file: !9, line: 505, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "output_string", scope: !12, file: !9, line: 506, baseType: !17, size: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !19)
!19 = !{!20, !5, !22}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_status_t", file: !7, line: 47, baseType: !21)
!21 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_char16_t", file: !7, line: 49, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !25, line: 19, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !27, line: 24, baseType: !28)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!28 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "test_string", scope: !12, file: !9, line: 508, baseType: !15, size: 64, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !8, file: !9, line: 514, baseType: !31, size: 96)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !8, file: !9, line: 510, size: 96, elements: !32)
!32 = !{!33, !37, !38}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !31, file: !9, line: 511, baseType: !34, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !25, line: 21, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !27, line: 27, baseType: !36)
!36 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "output_string", scope: !31, file: !9, line: 512, baseType: !34, size: 32, offset: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "test_string", scope: !31, file: !9, line: 513, baseType: !34, size: 32, offset: 64)
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !25, line: 17, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !27, line: 21, baseType: !44)
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !{!0, !46, !52}
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !3, line: 139, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 88, elements: !50)
!49 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!50 = !{!51}
!51 = !DISubrange(count: 11)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !3, line: 149, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 168, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 21)
!57 = !{i32 7, !"Dwarf Version", i32 5}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 8, !"PIC Level", i32 2}
!61 = !{i32 1, !"Code Model", i32 1}
!62 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!63 = distinct !DISubprogram(name: "efi_char16_puts", scope: !3, file: !3, line: 20, type: !64, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !22}
!66 = !{!67, !68, !70}
!67 = !DILocalVariable(name: "str", arg: 1, scope: !63, file: !3, line: 20, type: !22)
!68 = !DILocalVariable(name: "__inst", scope: !69, file: !3, line: 22, type: !5)
!69 = distinct !DILexicalBlock(scope: !63, file: !3, line: 22, column: 2)
!70 = !DILocalVariable(name: "__pad", scope: !71, file: !3, line: 22, type: !72)
!71 = distinct !DILexicalBlock(scope: !69, file: !3, line: 22, column: 2)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 192, elements: !76)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 23, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !75)
!75 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!76 = !{!77}
!77 = !DISubrange(count: 3)
!78 = !DILocation(line: 20, column: 36, scope: !63)
!79 = !DILocation(line: 22, column: 2, scope: !69)
!80 = !DILocation(line: 22, column: 2, scope: !71)
!81 = !DILocation(line: 22, column: 2, scope: !82)
!82 = distinct !DILexicalBlock(scope: !71, file: !3, line: 22, column: 2)
!83 = !DILocation(line: 22, column: 2, scope: !84)
!84 = distinct !DILexicalBlock(scope: !82, file: !3, line: 22, column: 2)
!85 = !DILocation(line: 22, column: 2, scope: !63)
!86 = !DILocation(line: 24, column: 1, scope: !63)
!87 = distinct !DISubprogram(name: "efi_is_native", scope: !88, file: !88, line: 205, type: !89, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!88 = !DIFile(filename: "./arch/x86/include/asm/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a4b467ae7390bce7623c86c5f172fa43")
!89 = !DISubroutineType(types: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !92, line: 35, baseType: !93)
!92 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!93 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!94 = !DILocation(line: 207, column: 9, scope: !87)
!95 = !DILocation(line: 207, column: 2, scope: !87)
!96 = distinct !DISubprogram(name: "__efi64_widen_efi_status", scope: !88, file: !88, line: 346, type: !97, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !99)
!97 = !DISubroutineType(types: !98)
!98 = !{!20, !73}
!99 = !{!100}
!100 = !DILocalVariable(name: "status", arg: 1, scope: !96, file: !88, line: 346, type: !73)
!101 = !DILocation(line: 346, column: 57, scope: !96)
!102 = !DILocation(line: 349, column: 21, scope: !96)
!103 = !DILocation(line: 349, column: 15, scope: !96)
!104 = !DILocation(line: 349, column: 9, scope: !96)
!105 = !DILocation(line: 349, column: 2, scope: !96)
!106 = !DISubprogram(name: "__efi64_thunk", scope: !88, file: !88, line: 158, type: !107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!107 = !DISubroutineType(types: !108)
!108 = !{!73, !34, null}
!109 = distinct !DISubprogram(name: "efi_puts", scope: !3, file: !3, line: 75, type: !110, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !114)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !112}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!114 = !{!115, !116, !120, !125, !126, !127}
!115 = !DILocalVariable(name: "str", arg: 1, scope: !109, file: !3, line: 75, type: !112)
!116 = !DILocalVariable(name: "buf", scope: !109, file: !3, line: 77, type: !117)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 128)
!120 = !DILocalVariable(name: "pos", scope: !109, file: !3, line: 78, type: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !92, line: 61, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !123, line: 72, baseType: !124)
!123 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !123, line: 16, baseType: !21)
!125 = !DILocalVariable(name: "lim", scope: !109, file: !3, line: 78, type: !121)
!126 = !DILocalVariable(name: "s8", scope: !109, file: !3, line: 79, type: !40)
!127 = !DILocalVariable(name: "c32", scope: !109, file: !3, line: 80, type: !34)
!128 = !DILocation(line: 75, column: 27, scope: !109)
!129 = !DILocation(line: 77, column: 2, scope: !109)
!130 = !DILocation(line: 77, column: 15, scope: !109)
!131 = !DILocation(line: 78, column: 2, scope: !109)
!132 = !DILocation(line: 78, column: 9, scope: !109)
!133 = !DILocation(line: 78, column: 18, scope: !109)
!134 = !DILocation(line: 79, column: 2, scope: !109)
!135 = !DILocation(line: 79, column: 12, scope: !109)
!136 = !DILocation(line: 79, column: 29, scope: !109)
!137 = !DILocation(line: 80, column: 2, scope: !109)
!138 = !DILocation(line: 80, column: 6, scope: !109)
!139 = !DILocation(line: 82, column: 2, scope: !109)
!140 = !DILocation(line: 82, column: 10, scope: !109)
!141 = !DILocation(line: 82, column: 9, scope: !109)
!142 = !DILocation(line: 83, column: 8, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !3, line: 83, column: 7)
!144 = distinct !DILexicalBlock(scope: !109, file: !3, line: 82, column: 14)
!145 = !DILocation(line: 83, column: 7, scope: !143)
!146 = !DILocation(line: 83, column: 11, scope: !143)
!147 = !DILocation(line: 83, column: 7, scope: !144)
!148 = !DILocation(line: 84, column: 11, scope: !143)
!149 = !DILocation(line: 84, column: 4, scope: !143)
!150 = !DILocation(line: 84, column: 15, scope: !143)
!151 = !DILocation(line: 85, column: 9, scope: !144)
!152 = !DILocation(line: 85, column: 7, scope: !144)
!153 = !DILocation(line: 86, column: 7, scope: !154)
!154 = distinct !DILexicalBlock(scope: !144, file: !3, line: 86, column: 7)
!155 = !DILocation(line: 86, column: 11, scope: !154)
!156 = !DILocation(line: 86, column: 7, scope: !144)
!157 = !DILocation(line: 88, column: 17, scope: !158)
!158 = distinct !DILexicalBlock(scope: !154, file: !3, line: 86, column: 22)
!159 = !DILocation(line: 88, column: 11, scope: !158)
!160 = !DILocation(line: 88, column: 4, scope: !158)
!161 = !DILocation(line: 88, column: 15, scope: !158)
!162 = !DILocation(line: 89, column: 3, scope: !158)
!163 = !DILocation(line: 94, column: 47, scope: !164)
!164 = distinct !DILexicalBlock(scope: !154, file: !3, line: 89, column: 10)
!165 = !DILocation(line: 94, column: 51, scope: !164)
!166 = !DILocation(line: 94, column: 44, scope: !164)
!167 = !DILocation(line: 94, column: 17, scope: !164)
!168 = !DILocation(line: 94, column: 11, scope: !164)
!169 = !DILocation(line: 94, column: 4, scope: !164)
!170 = !DILocation(line: 94, column: 15, scope: !164)
!171 = !DILocation(line: 95, column: 27, scope: !164)
!172 = !DILocation(line: 95, column: 31, scope: !164)
!173 = !DILocation(line: 95, column: 24, scope: !164)
!174 = !DILocation(line: 95, column: 17, scope: !164)
!175 = !DILocation(line: 95, column: 11, scope: !164)
!176 = !DILocation(line: 95, column: 4, scope: !164)
!177 = !DILocation(line: 95, column: 15, scope: !164)
!178 = !DILocation(line: 97, column: 8, scope: !179)
!179 = distinct !DILexicalBlock(scope: !144, file: !3, line: 97, column: 7)
!180 = !DILocation(line: 97, column: 7, scope: !179)
!181 = !DILocation(line: 97, column: 11, scope: !179)
!182 = !DILocation(line: 97, column: 19, scope: !179)
!183 = !DILocation(line: 97, column: 22, scope: !179)
!184 = !DILocation(line: 97, column: 29, scope: !179)
!185 = !DILocation(line: 97, column: 33, scope: !179)
!186 = !DILocation(line: 97, column: 26, scope: !179)
!187 = !DILocation(line: 97, column: 7, scope: !144)
!188 = !DILocation(line: 98, column: 8, scope: !189)
!189 = distinct !DILexicalBlock(scope: !179, file: !3, line: 97, column: 38)
!190 = !DILocation(line: 98, column: 4, scope: !189)
!191 = !DILocation(line: 98, column: 13, scope: !189)
!192 = !DILocation(line: 99, column: 20, scope: !189)
!193 = !DILocation(line: 99, column: 4, scope: !189)
!194 = !DILocation(line: 100, column: 8, scope: !189)
!195 = !DILocation(line: 101, column: 3, scope: !189)
!196 = distinct !{!196, !139, !197, !198, !199}
!197 = !DILocation(line: 102, column: 2, scope: !109)
!198 = !{!"llvm.loop.mustprogress"}
!199 = !{!"llvm.loop.unroll.disable"}
!200 = !DILocation(line: 103, column: 1, scope: !109)
!201 = distinct !DISubprogram(name: "utf8_to_utf32", scope: !3, file: !3, line: 27, type: !202, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !205)
!202 = !DISubroutineType(types: !203)
!203 = !{!34, !204}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!205 = !{!206, !207, !208, !209, !210, !211}
!206 = !DILocalVariable(name: "s8", arg: 1, scope: !201, file: !3, line: 27, type: !204)
!207 = !DILocalVariable(name: "c32", scope: !201, file: !3, line: 29, type: !34)
!208 = !DILocalVariable(name: "c0", scope: !201, file: !3, line: 30, type: !42)
!209 = !DILocalVariable(name: "cx", scope: !201, file: !3, line: 30, type: !42)
!210 = !DILocalVariable(name: "clen", scope: !201, file: !3, line: 31, type: !121)
!211 = !DILocalVariable(name: "i", scope: !201, file: !3, line: 31, type: !121)
!212 = !DILocation(line: 27, column: 30, scope: !201)
!213 = !DILocation(line: 29, column: 2, scope: !201)
!214 = !DILocation(line: 29, column: 6, scope: !201)
!215 = !DILocation(line: 30, column: 2, scope: !201)
!216 = !DILocation(line: 30, column: 5, scope: !201)
!217 = !DILocation(line: 30, column: 9, scope: !201)
!218 = !DILocation(line: 31, column: 2, scope: !201)
!219 = !DILocation(line: 31, column: 9, scope: !201)
!220 = !DILocation(line: 31, column: 15, scope: !201)
!221 = !DILocation(line: 33, column: 15, scope: !201)
!222 = !DILocation(line: 33, column: 18, scope: !201)
!223 = !DILocation(line: 33, column: 12, scope: !201)
!224 = !DILocation(line: 33, column: 10, scope: !201)
!225 = !DILocation(line: 33, column: 5, scope: !201)
!226 = !DILocation(line: 38, column: 12, scope: !227)
!227 = distinct !DILexicalBlock(scope: !201, file: !3, line: 38, column: 2)
!228 = !DILocation(line: 38, column: 7, scope: !227)
!229 = !DILocation(line: 38, column: 17, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !3, line: 38, column: 2)
!231 = !DILocation(line: 38, column: 20, scope: !230)
!232 = !DILocation(line: 38, column: 2, scope: !227)
!233 = !DILocation(line: 39, column: 6, scope: !230)
!234 = !DILocation(line: 39, column: 3, scope: !230)
!235 = !DILocation(line: 38, column: 28, scope: !230)
!236 = !DILocation(line: 38, column: 2, scope: !230)
!237 = distinct !{!237, !232, !238, !198, !199}
!238 = !DILocation(line: 39, column: 10, scope: !227)
!239 = !DILocation(line: 46, column: 6, scope: !240)
!240 = distinct !DILexicalBlock(scope: !201, file: !3, line: 46, column: 6)
!241 = !DILocation(line: 46, column: 11, scope: !240)
!242 = !DILocation(line: 46, column: 15, scope: !240)
!243 = !DILocation(line: 46, column: 18, scope: !240)
!244 = !DILocation(line: 46, column: 23, scope: !240)
!245 = !DILocation(line: 46, column: 6, scope: !201)
!246 = !DILocation(line: 47, column: 10, scope: !240)
!247 = !DILocation(line: 47, column: 3, scope: !240)
!248 = !DILocation(line: 49, column: 8, scope: !201)
!249 = !DILocation(line: 49, column: 18, scope: !201)
!250 = !DILocation(line: 49, column: 11, scope: !201)
!251 = !DILocation(line: 49, column: 6, scope: !201)
!252 = !DILocation(line: 50, column: 9, scope: !253)
!253 = distinct !DILexicalBlock(scope: !201, file: !3, line: 50, column: 2)
!254 = !DILocation(line: 50, column: 7, scope: !253)
!255 = !DILocation(line: 50, column: 14, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !3, line: 50, column: 2)
!257 = !DILocation(line: 50, column: 18, scope: !256)
!258 = !DILocation(line: 50, column: 16, scope: !256)
!259 = !DILocation(line: 50, column: 2, scope: !253)
!260 = !DILocation(line: 52, column: 10, scope: !261)
!261 = distinct !DILexicalBlock(scope: !256, file: !3, line: 50, column: 29)
!262 = !DILocation(line: 52, column: 9, scope: !261)
!263 = !DILocation(line: 52, column: 14, scope: !261)
!264 = !DILocation(line: 52, column: 8, scope: !261)
!265 = !DILocation(line: 52, column: 17, scope: !261)
!266 = !DILocation(line: 52, column: 6, scope: !261)
!267 = !DILocation(line: 53, column: 7, scope: !268)
!268 = distinct !DILexicalBlock(scope: !261, file: !3, line: 53, column: 7)
!269 = !DILocation(line: 53, column: 10, scope: !268)
!270 = !DILocation(line: 53, column: 7, scope: !261)
!271 = !DILocation(line: 54, column: 11, scope: !268)
!272 = !DILocation(line: 54, column: 4, scope: !268)
!273 = !DILocation(line: 55, column: 10, scope: !261)
!274 = !DILocation(line: 55, column: 14, scope: !261)
!275 = !DILocation(line: 55, column: 22, scope: !261)
!276 = !DILocation(line: 55, column: 20, scope: !261)
!277 = !DILocation(line: 55, column: 7, scope: !261)
!278 = !DILocation(line: 56, column: 2, scope: !261)
!279 = !DILocation(line: 50, column: 24, scope: !256)
!280 = !DILocation(line: 50, column: 2, scope: !256)
!281 = distinct !{!281, !259, !282, !198, !199}
!282 = !DILocation(line: 56, column: 2, scope: !253)
!283 = !DILocation(line: 63, column: 6, scope: !284)
!284 = distinct !DILexicalBlock(scope: !201, file: !3, line: 63, column: 6)
!285 = !DILocation(line: 63, column: 10, scope: !284)
!286 = !DILocation(line: 63, column: 21, scope: !284)
!287 = !DILocation(line: 64, column: 7, scope: !284)
!288 = !DILocation(line: 64, column: 11, scope: !284)
!289 = !DILocation(line: 64, column: 21, scope: !284)
!290 = !DILocation(line: 64, column: 31, scope: !284)
!291 = !DILocation(line: 65, column: 6, scope: !284)
!292 = !DILocation(line: 65, column: 15, scope: !284)
!293 = !DILocation(line: 65, column: 19, scope: !284)
!294 = !DILocation(line: 65, column: 31, scope: !284)
!295 = !DILocation(line: 65, column: 35, scope: !284)
!296 = !DILocation(line: 65, column: 28, scope: !284)
!297 = !DILocation(line: 65, column: 48, scope: !284)
!298 = !DILocation(line: 65, column: 52, scope: !284)
!299 = !DILocation(line: 65, column: 45, scope: !284)
!300 = !DILocation(line: 65, column: 14, scope: !284)
!301 = !DILocation(line: 65, column: 11, scope: !284)
!302 = !DILocation(line: 63, column: 6, scope: !201)
!303 = !DILocation(line: 66, column: 10, scope: !284)
!304 = !DILocation(line: 66, column: 3, scope: !284)
!305 = !DILocation(line: 67, column: 9, scope: !201)
!306 = !DILocation(line: 67, column: 3, scope: !201)
!307 = !DILocation(line: 67, column: 6, scope: !201)
!308 = !DILocation(line: 68, column: 9, scope: !201)
!309 = !DILocation(line: 68, column: 2, scope: !201)
!310 = !DILocation(line: 69, column: 1, scope: !201)
!311 = distinct !DISubprogram(name: "efi_printk", scope: !3, file: !3, line: 115, type: !312, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !314)
!312 = !DISubroutineType(types: !313)
!313 = !{!39, !112, null}
!314 = !{!315, !316, !320, !333, !334}
!315 = !DILocalVariable(name: "fmt", arg: 1, scope: !311, file: !3, line: 115, type: !112)
!316 = !DILocalVariable(name: "printf_buf", scope: !311, file: !3, line: 117, type: !317)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 2048, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 256)
!320 = !DILocalVariable(name: "args", scope: !311, file: !3, line: 118, type: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !322, line: 5, baseType: !323)
!322 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !324)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 192, elements: !331)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !326)
!326 = !{!327, !328, !329, !330}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !325, file: !3, line: 118, baseType: !36, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !325, file: !3, line: 118, baseType: !36, size: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !325, file: !3, line: 118, baseType: !15, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !325, file: !3, line: 118, baseType: !15, size: 64, offset: 128)
!331 = !{!332}
!332 = !DISubrange(count: 1)
!333 = !DILocalVariable(name: "printed", scope: !311, file: !3, line: 119, type: !39)
!334 = !DILocalVariable(name: "loglevel", scope: !311, file: !3, line: 120, type: !39)
!335 = !DILocation(line: 115, column: 28, scope: !311)
!336 = !DILocation(line: 117, column: 2, scope: !311)
!337 = !DILocation(line: 117, column: 7, scope: !311)
!338 = !DILocation(line: 118, column: 2, scope: !311)
!339 = !DILocation(line: 118, column: 10, scope: !311)
!340 = !DILocation(line: 119, column: 2, scope: !311)
!341 = !DILocation(line: 119, column: 6, scope: !311)
!342 = !DILocation(line: 120, column: 2, scope: !311)
!343 = !DILocation(line: 120, column: 6, scope: !311)
!344 = !DILocation(line: 120, column: 34, scope: !311)
!345 = !DILocation(line: 120, column: 17, scope: !311)
!346 = !DILocation(line: 122, column: 10, scope: !311)
!347 = !DILocation(line: 122, column: 2, scope: !311)
!348 = !DILocation(line: 124, column: 12, scope: !349)
!349 = distinct !DILexicalBlock(scope: !311, file: !3, line: 122, column: 20)
!350 = !DILocation(line: 125, column: 3, scope: !349)
!351 = !DILocation(line: 131, column: 12, scope: !349)
!352 = !DILocation(line: 132, column: 3, scope: !349)
!353 = !DILocation(line: 135, column: 6, scope: !354)
!354 = distinct !DILexicalBlock(scope: !311, file: !3, line: 135, column: 6)
!355 = !DILocation(line: 135, column: 18, scope: !354)
!356 = !DILocation(line: 135, column: 15, scope: !354)
!357 = !DILocation(line: 135, column: 6, scope: !311)
!358 = !DILocation(line: 136, column: 3, scope: !354)
!359 = !DILocation(line: 138, column: 6, scope: !360)
!360 = distinct !DILexicalBlock(scope: !311, file: !3, line: 138, column: 6)
!361 = !DILocation(line: 138, column: 15, scope: !360)
!362 = !DILocation(line: 138, column: 6, scope: !311)
!363 = !DILocation(line: 139, column: 3, scope: !360)
!364 = !DILocation(line: 141, column: 26, scope: !311)
!365 = !DILocation(line: 141, column: 8, scope: !311)
!366 = !DILocation(line: 141, column: 6, scope: !311)
!367 = !DILocation(line: 143, column: 2, scope: !311)
!368 = !DILocation(line: 144, column: 22, scope: !311)
!369 = !DILocation(line: 144, column: 54, scope: !311)
!370 = !DILocation(line: 144, column: 59, scope: !311)
!371 = !DILocation(line: 144, column: 12, scope: !311)
!372 = !DILocation(line: 144, column: 10, scope: !311)
!373 = !DILocation(line: 145, column: 2, scope: !311)
!374 = !DILocation(line: 147, column: 11, scope: !311)
!375 = !DILocation(line: 147, column: 2, scope: !311)
!376 = !DILocation(line: 148, column: 6, scope: !377)
!377 = distinct !DILexicalBlock(scope: !311, file: !3, line: 148, column: 6)
!378 = !DILocation(line: 148, column: 14, scope: !377)
!379 = !DILocation(line: 148, column: 6, scope: !311)
!380 = !DILocation(line: 149, column: 3, scope: !381)
!381 = distinct !DILexicalBlock(scope: !377, file: !3, line: 148, column: 37)
!382 = !DILocation(line: 150, column: 3, scope: !381)
!383 = !DILocation(line: 153, column: 9, scope: !311)
!384 = !DILocation(line: 153, column: 2, scope: !311)
!385 = !DILocation(line: 154, column: 1, scope: !311)
!386 = distinct !DISubprogram(name: "printk_get_level", scope: !387, file: !387, line: 19, type: !388, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !390)
!387 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!388 = !DISubroutineType(types: !389)
!389 = !{!39, !112}
!390 = !{!391}
!391 = !DILocalVariable(name: "buffer", arg: 1, scope: !386, file: !387, line: 19, type: !112)
!392 = !DILocation(line: 19, column: 48, scope: !386)
!393 = !DILocation(line: 21, column: 6, scope: !394)
!394 = distinct !DILexicalBlock(scope: !386, file: !387, line: 21, column: 6)
!395 = !DILocation(line: 21, column: 16, scope: !394)
!396 = !DILocation(line: 21, column: 34, scope: !394)
!397 = !DILocation(line: 21, column: 37, scope: !394)
!398 = !DILocation(line: 21, column: 6, scope: !386)
!399 = !DILocation(line: 22, column: 11, scope: !400)
!400 = distinct !DILexicalBlock(scope: !394, file: !387, line: 21, column: 48)
!401 = !DILocation(line: 22, column: 3, scope: !400)
!402 = !DILocation(line: 22, column: 22, scope: !400)
!403 = !DILocation(line: 25, column: 11, scope: !404)
!404 = distinct !DILexicalBlock(scope: !400, file: !387, line: 22, column: 22)
!405 = !DILocation(line: 25, column: 4, scope: !404)
!406 = !DILocation(line: 27, column: 2, scope: !400)
!407 = !DILocation(line: 28, column: 2, scope: !386)
!408 = !DILocation(line: 29, column: 1, scope: !386)
!409 = distinct !DISubprogram(name: "printk_skip_level", scope: !387, file: !387, line: 31, type: !410, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !412)
!410 = !DISubroutineType(types: !411)
!411 = !{!112, !112}
!412 = !{!413}
!413 = !DILocalVariable(name: "buffer", arg: 1, scope: !409, file: !387, line: 31, type: !112)
!414 = !DILocation(line: 31, column: 57, scope: !409)
!415 = !DILocation(line: 33, column: 23, scope: !416)
!416 = distinct !DILexicalBlock(scope: !409, file: !387, line: 33, column: 6)
!417 = !DILocation(line: 33, column: 6, scope: !416)
!418 = !DILocation(line: 33, column: 6, scope: !409)
!419 = !DILocation(line: 34, column: 10, scope: !416)
!420 = !DILocation(line: 34, column: 17, scope: !416)
!421 = !DILocation(line: 34, column: 3, scope: !416)
!422 = !DILocation(line: 36, column: 9, scope: !409)
!423 = !DILocation(line: 36, column: 2, scope: !409)
!424 = !DILocation(line: 37, column: 1, scope: !409)
!425 = !DISubprogram(name: "vsnprintf", scope: !426, file: !426, line: 13, type: !427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!426 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!427 = !DISubroutineType(types: !428)
!428 = !{!39, !429, !121, !112, !430}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!431 = distinct !DISubprogram(name: "efi_is_64bit", scope: !88, file: !88, line: 198, type: !89, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!432 = !DILocation(line: 202, column: 9, scope: !431)
!433 = !{i8 0, i8 2}
!434 = !{}
!435 = !DILocation(line: 202, column: 2, scope: !431)
!436 = distinct !DISubprogram(name: "ror64", scope: !437, file: !437, line: 115, type: !438, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !440)
!437 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!438 = !DISubroutineType(types: !439)
!439 = !{!74, !74, !36}
!440 = !{!441, !442}
!441 = !DILocalVariable(name: "word", arg: 1, scope: !436, file: !437, line: 115, type: !74)
!442 = !DILocalVariable(name: "shift", arg: 2, scope: !436, file: !437, line: 115, type: !36)
!443 = !DILocation(line: 115, column: 33, scope: !436)
!444 = !DILocation(line: 115, column: 52, scope: !436)
!445 = !DILocation(line: 117, column: 10, scope: !436)
!446 = !DILocation(line: 117, column: 19, scope: !436)
!447 = !DILocation(line: 117, column: 25, scope: !436)
!448 = !DILocation(line: 117, column: 15, scope: !436)
!449 = !DILocation(line: 117, column: 35, scope: !436)
!450 = !DILocation(line: 117, column: 46, scope: !436)
!451 = !DILocation(line: 117, column: 45, scope: !436)
!452 = !DILocation(line: 117, column: 53, scope: !436)
!453 = !DILocation(line: 117, column: 40, scope: !436)
!454 = !DILocation(line: 117, column: 32, scope: !436)
!455 = !DILocation(line: 117, column: 2, scope: !436)
!456 = distinct !DISubprogram(name: "rol32", scope: !437, file: !437, line: 125, type: !457, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !459)
!457 = !DISubroutineType(types: !458)
!458 = !{!35, !35, !36}
!459 = !{!460, !461}
!460 = !DILocalVariable(name: "word", arg: 1, scope: !456, file: !437, line: 125, type: !35)
!461 = !DILocalVariable(name: "shift", arg: 2, scope: !456, file: !437, line: 125, type: !36)
!462 = !DILocation(line: 125, column: 33, scope: !456)
!463 = !DILocation(line: 125, column: 52, scope: !456)
!464 = !DILocation(line: 127, column: 10, scope: !456)
!465 = !DILocation(line: 127, column: 19, scope: !456)
!466 = !DILocation(line: 127, column: 25, scope: !456)
!467 = !DILocation(line: 127, column: 15, scope: !456)
!468 = !DILocation(line: 127, column: 35, scope: !456)
!469 = !DILocation(line: 127, column: 46, scope: !456)
!470 = !DILocation(line: 127, column: 45, scope: !456)
!471 = !DILocation(line: 127, column: 53, scope: !456)
!472 = !DILocation(line: 127, column: 40, scope: !456)
!473 = !DILocation(line: 127, column: 32, scope: !456)
!474 = !DILocation(line: 127, column: 2, scope: !456)

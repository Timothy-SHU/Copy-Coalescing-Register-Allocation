; ModuleID = 'arch/x86/boot/compressed/cmdline.c'
source_filename = "arch/x86/boot/compressed/cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.boot_params = type { %struct.screen_info, %struct.apm_bios_info, [4 x i8], i64, %struct.ist_info, i64, [8 x i8], [16 x i8], [16 x i8], %struct.sys_desc_table, %struct.olpc_ofw_header, i32, i32, i32, [112 x i8], i32, %struct.edid_info, %struct.efi_info, i32, i32, i8, i8, i8, i8, i8, [2 x i8], i8, [1 x i8], %struct.setup_header, [36 x i8], [16 x i32], [128 x %struct.boot_e820_entry], [48 x i8], [6 x %struct.edd_info], [276 x i8] }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.apm_bios_info = type { i16, i16, i32, i16, i16, i16, i16, i16, i16 }
%struct.ist_info = type { i32, i32, i32, i32 }
%struct.sys_desc_table = type { i16, [14 x i8] }
%struct.olpc_ofw_header = type { i32, i32, i32, i32 }
%struct.edid_info = type { [128 x i8] }
%struct.efi_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.setup_header = type <{ i8, i16, i32, i16, i16, i16, i16, i16, i32, i16, i32, i16, i16, i8, i8, i16, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i64, i32, i32, i64, i64, i32, i32, i32 }>
%struct.boot_e820_entry = type <{ i64, i64, i32 }>
%struct.edd_info = type { i8, i8, i16, i16, i8, i8, %struct.edd_device_params }
%struct.edd_device_params = type <{ i16, i16, i32, i32, i32, i64, i16, i32, i16, i8, i8, i16, [4 x i8], [8 x i8], %union.anon, %union.anon.5, i8, i8 }>
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { i64 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i8, i8, i16, i32, i64 }

@boot_params_ptr = external hidden global ptr, align 8
@fs = internal global i64 0, align 8, !dbg !0

; Function Attrs: noredzone nounwind
define hidden i32 @__cmdline_find_option(i64 noundef %cmdline_ptr, ptr noundef %option, ptr noundef %buffer, i32 noundef %bufsize) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %cmdline_ptr.addr = alloca i64, align 8
  %option.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %bufsize.addr = alloca i32, align 4
  %cptr = alloca i64, align 8
  %c = alloca i8, align 1
  %len = alloca i32, align 4
  %opptr = alloca ptr, align 8
  %bufptr = alloca ptr, align 8
  %state = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %cmdline_ptr, ptr %cmdline_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmdline_ptr.addr, metadata !17, metadata !DIExpression()), !dbg !62
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !18, metadata !DIExpression()), !dbg !63
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !19, metadata !DIExpression()), !dbg !64
  store i32 %bufsize, ptr %bufsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bufsize.addr, metadata !20, metadata !DIExpression()), !dbg !65
  call void @llvm.lifetime.start.p0(i64 8, ptr %cptr) #4, !dbg !66
  call void @llvm.dbg.declare(metadata ptr %cptr, metadata !21, metadata !DIExpression()), !dbg !67
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #4, !dbg !68
  call void @llvm.dbg.declare(metadata ptr %c, metadata !23, metadata !DIExpression()), !dbg !69
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #4, !dbg !70
  call void @llvm.dbg.declare(metadata ptr %len, metadata !24, metadata !DIExpression()), !dbg !71
  store i32 -1, ptr %len, align 4, !dbg !71
  call void @llvm.lifetime.start.p0(i64 8, ptr %opptr) #4, !dbg !72
  call void @llvm.dbg.declare(metadata ptr %opptr, metadata !25, metadata !DIExpression()), !dbg !73
  store ptr null, ptr %opptr, align 8, !dbg !73
  call void @llvm.lifetime.start.p0(i64 8, ptr %bufptr) #4, !dbg !74
  call void @llvm.dbg.declare(metadata ptr %bufptr, metadata !26, metadata !DIExpression()), !dbg !75
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !76
  store ptr %0, ptr %bufptr, align 8, !dbg !75
  call void @llvm.lifetime.start.p0(i64 4, ptr %state) #4, !dbg !77
  call void @llvm.dbg.declare(metadata ptr %state, metadata !27, metadata !DIExpression()), !dbg !78
  store i32 0, ptr %state, align 4, !dbg !78
  %1 = load i64, ptr %cmdline_ptr.addr, align 8, !dbg !79
  %tobool = icmp ne i64 %1, 0, !dbg !79
  br i1 %tobool, label %if.end, label %if.then, !dbg !81

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !82
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !82

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %cmdline_ptr.addr, align 8, !dbg !83
  %and = and i64 %2, 15, !dbg !84
  store i64 %and, ptr %cptr, align 8, !dbg !85
  %3 = load i64, ptr %cmdline_ptr.addr, align 8, !dbg !86
  %shr = lshr i64 %3, 4, !dbg !87
  call void @set_fs(i64 noundef %shr) #5, !dbg !88
  br label %while.cond, !dbg !89

while.cond:                                       ; preds = %sw.epilog, %if.end
  %4 = load i64, ptr %cptr, align 8, !dbg !90
  %cmp = icmp ult i64 %4, 65536, !dbg !91
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !92

land.rhs:                                         ; preds = %while.cond
  %5 = load i64, ptr %cptr, align 8, !dbg !93
  %inc = add i64 %5, 1, !dbg !93
  store i64 %inc, ptr %cptr, align 8, !dbg !93
  %call = call signext i8 @rdfs8(i64 noundef %5) #5, !dbg !94
  store i8 %call, ptr %c, align 1, !dbg !95
  %conv = sext i8 %call to i32, !dbg !96
  %tobool1 = icmp ne i32 %conv, 0, !dbg !92
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ], !dbg !97
  br i1 %6, label %while.body, label %while.end, !dbg !89

while.body:                                       ; preds = %land.end
  %7 = load i32, ptr %state, align 4, !dbg !98
  switch i32 %7, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb24
    i32 3, label %sw.bb29
  ], !dbg !100

sw.bb:                                            ; preds = %while.body
  %8 = load i8, ptr %c, align 1, !dbg !101
  %call2 = call i32 @myisspace(i8 noundef zeroext %8) #5, !dbg !104
  %tobool3 = icmp ne i32 %call2, 0, !dbg !104
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !105

if.then4:                                         ; preds = %sw.bb
  br label %sw.epilog, !dbg !106

if.end5:                                          ; preds = %sw.bb
  store i32 1, ptr %state, align 4, !dbg !107
  %9 = load ptr, ptr %option.addr, align 8, !dbg !108
  store ptr %9, ptr %opptr, align 8, !dbg !109
  br label %sw.bb6, !dbg !110

sw.bb6:                                           ; preds = %while.body, %if.end5
  %10 = load i8, ptr %c, align 1, !dbg !111
  %conv7 = sext i8 %10 to i32, !dbg !111
  %cmp8 = icmp eq i32 %conv7, 61, !dbg !113
  br i1 %cmp8, label %land.lhs.true, label %if.else, !dbg !114

land.lhs.true:                                    ; preds = %sw.bb6
  %11 = load ptr, ptr %opptr, align 8, !dbg !115
  %12 = load i8, ptr %11, align 1, !dbg !116
  %tobool10 = icmp ne i8 %12, 0, !dbg !116
  br i1 %tobool10, label %if.else, label %if.then11, !dbg !117

if.then11:                                        ; preds = %land.lhs.true
  store i32 0, ptr %len, align 4, !dbg !118
  %13 = load ptr, ptr %buffer.addr, align 8, !dbg !120
  store ptr %13, ptr %bufptr, align 8, !dbg !121
  store i32 3, ptr %state, align 4, !dbg !122
  br label %if.end23, !dbg !123

if.else:                                          ; preds = %land.lhs.true, %sw.bb6
  %14 = load i8, ptr %c, align 1, !dbg !124
  %call12 = call i32 @myisspace(i8 noundef zeroext %14) #5, !dbg !126
  %tobool13 = icmp ne i32 %call12, 0, !dbg !126
  br i1 %tobool13, label %if.then14, label %if.else15, !dbg !127

if.then14:                                        ; preds = %if.else
  store i32 0, ptr %state, align 4, !dbg !128
  br label %if.end22, !dbg !130

if.else15:                                        ; preds = %if.else
  %15 = load i8, ptr %c, align 1, !dbg !131
  %conv16 = sext i8 %15 to i32, !dbg !131
  %16 = load ptr, ptr %opptr, align 8, !dbg !133
  %incdec.ptr = getelementptr inbounds i8, ptr %16, i32 1, !dbg !133
  store ptr %incdec.ptr, ptr %opptr, align 8, !dbg !133
  %17 = load i8, ptr %16, align 1, !dbg !134
  %conv17 = sext i8 %17 to i32, !dbg !134
  %cmp18 = icmp ne i32 %conv16, %conv17, !dbg !135
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !136

if.then20:                                        ; preds = %if.else15
  store i32 2, ptr %state, align 4, !dbg !137
  br label %if.end21, !dbg !139

if.end21:                                         ; preds = %if.then20, %if.else15
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then14
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then11
  br label %sw.epilog, !dbg !140

sw.bb24:                                          ; preds = %while.body
  %18 = load i8, ptr %c, align 1, !dbg !141
  %call25 = call i32 @myisspace(i8 noundef zeroext %18) #5, !dbg !143
  %tobool26 = icmp ne i32 %call25, 0, !dbg !143
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !144

if.then27:                                        ; preds = %sw.bb24
  store i32 0, ptr %state, align 4, !dbg !145
  br label %if.end28, !dbg !146

if.end28:                                         ; preds = %if.then27, %sw.bb24
  br label %sw.epilog, !dbg !147

sw.bb29:                                          ; preds = %while.body
  %19 = load i8, ptr %c, align 1, !dbg !148
  %call30 = call i32 @myisspace(i8 noundef zeroext %19) #5, !dbg !150
  %tobool31 = icmp ne i32 %call30, 0, !dbg !150
  br i1 %tobool31, label %if.then32, label %if.else33, !dbg !151

if.then32:                                        ; preds = %sw.bb29
  store i32 0, ptr %state, align 4, !dbg !152
  br label %if.end40, !dbg !154

if.else33:                                        ; preds = %sw.bb29
  %20 = load i32, ptr %len, align 4, !dbg !155
  %21 = load i32, ptr %bufsize.addr, align 4, !dbg !158
  %sub = sub nsw i32 %21, 1, !dbg !159
  %cmp34 = icmp slt i32 %20, %sub, !dbg !160
  br i1 %cmp34, label %if.then36, label %if.end38, !dbg !161

if.then36:                                        ; preds = %if.else33
  %22 = load i8, ptr %c, align 1, !dbg !162
  %23 = load ptr, ptr %bufptr, align 8, !dbg !163
  %incdec.ptr37 = getelementptr inbounds i8, ptr %23, i32 1, !dbg !163
  store ptr %incdec.ptr37, ptr %bufptr, align 8, !dbg !163
  store i8 %22, ptr %23, align 1, !dbg !164
  br label %if.end38, !dbg !165

if.end38:                                         ; preds = %if.then36, %if.else33
  %24 = load i32, ptr %len, align 4, !dbg !166
  %inc39 = add nsw i32 %24, 1, !dbg !166
  store i32 %inc39, ptr %len, align 4, !dbg !166
  br label %if.end40

if.end40:                                         ; preds = %if.end38, %if.then32
  br label %sw.epilog, !dbg !167

sw.epilog:                                        ; preds = %while.body, %if.end40, %if.end28, %if.end23, %if.then4
  br label %while.cond, !dbg !89, !llvm.loop !168

while.end:                                        ; preds = %land.end
  %25 = load i32, ptr %bufsize.addr, align 4, !dbg !172
  %tobool41 = icmp ne i32 %25, 0, !dbg !172
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !174

if.then42:                                        ; preds = %while.end
  %26 = load ptr, ptr %bufptr, align 8, !dbg !175
  store i8 0, ptr %26, align 1, !dbg !176
  br label %if.end43, !dbg !177

if.end43:                                         ; preds = %if.then42, %while.end
  %27 = load i32, ptr %len, align 4, !dbg !178
  store i32 %27, ptr %retval, align 4, !dbg !179
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !179

cleanup:                                          ; preds = %if.end43, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %state) #4, !dbg !180
  call void @llvm.lifetime.end.p0(i64 8, ptr %bufptr) #4, !dbg !180
  call void @llvm.lifetime.end.p0(i64 8, ptr %opptr) #4, !dbg !180
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #4, !dbg !180
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #4, !dbg !180
  call void @llvm.lifetime.end.p0(i64 8, ptr %cptr) #4, !dbg !180
  %28 = load i32, ptr %retval, align 4, !dbg !180
  ret i32 %28, !dbg !180
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal void @set_fs(i64 noundef %seg) #3 !dbg !181 {
entry:
  %seg.addr = alloca i64, align 8
  store i64 %seg, ptr %seg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !185, metadata !DIExpression()), !dbg !186
  %0 = load i64, ptr %seg.addr, align 8, !dbg !187
  %shl = shl i64 %0, 4, !dbg !188
  store i64 %shl, ptr @fs, align 8, !dbg !189
  ret void, !dbg !190
}

; Function Attrs: inlinehint noredzone nounwind
define internal signext i8 @rdfs8(i64 noundef %addr) #3 !dbg !191 {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !195, metadata !DIExpression()), !dbg !196
  %0 = load i64, ptr @fs, align 8, !dbg !197
  %1 = load i64, ptr %addr.addr, align 8, !dbg !198
  %add = add i64 %0, %1, !dbg !199
  %2 = inttoptr i64 %add to ptr, !dbg !200
  %3 = load i8, ptr %2, align 1, !dbg !201
  ret i8 %3, !dbg !202
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @myisspace(i8 noundef zeroext %c) #3 !dbg !203 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !210, metadata !DIExpression()), !dbg !211
  %0 = load i8, ptr %c.addr, align 1, !dbg !212
  %conv = zext i8 %0 to i32, !dbg !212
  %cmp = icmp sle i32 %conv, 32, !dbg !213
  %conv1 = zext i1 %cmp to i32, !dbg !213
  ret i32 %conv1, !dbg !214
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone nounwind
define hidden i32 @__cmdline_find_option_bool(i64 noundef %cmdline_ptr, ptr noundef %option) #0 !dbg !35 {
entry:
  %retval = alloca i32, align 4
  %cmdline_ptr.addr = alloca i64, align 8
  %option.addr = alloca ptr, align 8
  %cptr = alloca i64, align 8
  %c = alloca i8, align 1
  %pos = alloca i32, align 4
  %wstart = alloca i32, align 4
  %opptr = alloca ptr, align 8
  %state = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %cmdline_ptr, ptr %cmdline_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmdline_ptr.addr, metadata !39, metadata !DIExpression()), !dbg !215
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !40, metadata !DIExpression()), !dbg !216
  call void @llvm.lifetime.start.p0(i64 8, ptr %cptr) #4, !dbg !217
  call void @llvm.dbg.declare(metadata ptr %cptr, metadata !41, metadata !DIExpression()), !dbg !218
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #4, !dbg !219
  call void @llvm.dbg.declare(metadata ptr %c, metadata !42, metadata !DIExpression()), !dbg !220
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #4, !dbg !221
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !43, metadata !DIExpression()), !dbg !222
  store i32 0, ptr %pos, align 4, !dbg !222
  call void @llvm.lifetime.start.p0(i64 4, ptr %wstart) #4, !dbg !221
  call void @llvm.dbg.declare(metadata ptr %wstart, metadata !44, metadata !DIExpression()), !dbg !223
  store i32 0, ptr %wstart, align 4, !dbg !223
  call void @llvm.lifetime.start.p0(i64 8, ptr %opptr) #4, !dbg !224
  call void @llvm.dbg.declare(metadata ptr %opptr, metadata !45, metadata !DIExpression()), !dbg !225
  store ptr null, ptr %opptr, align 8, !dbg !225
  call void @llvm.lifetime.start.p0(i64 4, ptr %state) #4, !dbg !226
  call void @llvm.dbg.declare(metadata ptr %state, metadata !46, metadata !DIExpression()), !dbg !227
  store i32 0, ptr %state, align 4, !dbg !227
  %0 = load i64, ptr %cmdline_ptr.addr, align 8, !dbg !228
  %tobool = icmp ne i64 %0, 0, !dbg !228
  br i1 %tobool, label %if.end, label %if.then, !dbg !230

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !231
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !231

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %cmdline_ptr.addr, align 8, !dbg !232
  %and = and i64 %1, 15, !dbg !233
  store i64 %and, ptr %cptr, align 8, !dbg !234
  %2 = load i64, ptr %cmdline_ptr.addr, align 8, !dbg !235
  %shr = lshr i64 %2, 4, !dbg !236
  call void @set_fs(i64 noundef %shr) #5, !dbg !237
  br label %while.cond, !dbg !238

while.cond:                                       ; preds = %sw.epilog, %if.end
  %3 = load i64, ptr %cptr, align 8, !dbg !239
  %cmp = icmp ult i64 %3, 65536, !dbg !240
  br i1 %cmp, label %while.body, label %while.end, !dbg !238

while.body:                                       ; preds = %while.cond
  %4 = load i64, ptr %cptr, align 8, !dbg !241
  %inc = add i64 %4, 1, !dbg !241
  store i64 %inc, ptr %cptr, align 8, !dbg !241
  %call = call signext i8 @rdfs8(i64 noundef %4) #5, !dbg !243
  store i8 %call, ptr %c, align 1, !dbg !244
  %5 = load i32, ptr %pos, align 4, !dbg !245
  %inc1 = add nsw i32 %5, 1, !dbg !245
  store i32 %inc1, ptr %pos, align 4, !dbg !245
  %6 = load i32, ptr %state, align 4, !dbg !246
  switch i32 %6, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb29
  ], !dbg !247

sw.bb:                                            ; preds = %while.body
  %7 = load i8, ptr %c, align 1, !dbg !248
  %tobool2 = icmp ne i8 %7, 0, !dbg !248
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !251

if.then3:                                         ; preds = %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !252
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !252

if.else:                                          ; preds = %sw.bb
  %8 = load i8, ptr %c, align 1, !dbg !253
  %call4 = call i32 @myisspace(i8 noundef zeroext %8) #5, !dbg !255
  %tobool5 = icmp ne i32 %call4, 0, !dbg !255
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !256

if.then6:                                         ; preds = %if.else
  br label %sw.epilog, !dbg !257

if.end7:                                          ; preds = %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7
  store i32 1, ptr %state, align 4, !dbg !258
  %9 = load ptr, ptr %option.addr, align 8, !dbg !259
  store ptr %9, ptr %opptr, align 8, !dbg !260
  %10 = load i32, ptr %pos, align 4, !dbg !261
  store i32 %10, ptr %wstart, align 4, !dbg !262
  br label %sw.bb9, !dbg !263

sw.bb9:                                           ; preds = %while.body, %if.end8
  %11 = load ptr, ptr %opptr, align 8, !dbg !264
  %12 = load i8, ptr %11, align 1, !dbg !266
  %tobool10 = icmp ne i8 %12, 0, !dbg !266
  br i1 %tobool10, label %if.else18, label %if.then11, !dbg !267

if.then11:                                        ; preds = %sw.bb9
  %13 = load i8, ptr %c, align 1, !dbg !268
  %tobool12 = icmp ne i8 %13, 0, !dbg !268
  br i1 %tobool12, label %lor.lhs.false, label %if.then15, !dbg !270

lor.lhs.false:                                    ; preds = %if.then11
  %14 = load i8, ptr %c, align 1, !dbg !271
  %call13 = call i32 @myisspace(i8 noundef zeroext %14) #5, !dbg !272
  %tobool14 = icmp ne i32 %call13, 0, !dbg !272
  br i1 %tobool14, label %if.then15, label %if.else16, !dbg !273

if.then15:                                        ; preds = %lor.lhs.false, %if.then11
  %15 = load i32, ptr %wstart, align 4, !dbg !274
  store i32 %15, ptr %retval, align 4, !dbg !275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !275

if.else16:                                        ; preds = %lor.lhs.false
  store i32 2, ptr %state, align 4, !dbg !276
  br label %if.end17

if.end17:                                         ; preds = %if.else16
  br label %if.end28, !dbg !277

if.else18:                                        ; preds = %sw.bb9
  %16 = load i8, ptr %c, align 1, !dbg !278
  %tobool19 = icmp ne i8 %16, 0, !dbg !278
  br i1 %tobool19, label %if.else21, label %if.then20, !dbg !280

if.then20:                                        ; preds = %if.else18
  store i32 0, ptr %retval, align 4, !dbg !281
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !281

if.else21:                                        ; preds = %if.else18
  %17 = load i8, ptr %c, align 1, !dbg !282
  %conv = sext i8 %17 to i32, !dbg !282
  %18 = load ptr, ptr %opptr, align 8, !dbg !284
  %incdec.ptr = getelementptr inbounds i8, ptr %18, i32 1, !dbg !284
  store ptr %incdec.ptr, ptr %opptr, align 8, !dbg !284
  %19 = load i8, ptr %18, align 1, !dbg !285
  %conv22 = sext i8 %19 to i32, !dbg !285
  %cmp23 = icmp ne i32 %conv, %conv22, !dbg !286
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !287

if.then25:                                        ; preds = %if.else21
  store i32 2, ptr %state, align 4, !dbg !288
  br label %if.end26, !dbg !289

if.end26:                                         ; preds = %if.then25, %if.else21
  br label %if.end27

if.end27:                                         ; preds = %if.end26
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end17
  br label %sw.epilog, !dbg !290

sw.bb29:                                          ; preds = %while.body
  %20 = load i8, ptr %c, align 1, !dbg !291
  %tobool30 = icmp ne i8 %20, 0, !dbg !291
  br i1 %tobool30, label %if.else32, label %if.then31, !dbg !293

if.then31:                                        ; preds = %sw.bb29
  store i32 0, ptr %retval, align 4, !dbg !294
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !294

if.else32:                                        ; preds = %sw.bb29
  %21 = load i8, ptr %c, align 1, !dbg !295
  %call33 = call i32 @myisspace(i8 noundef zeroext %21) #5, !dbg !297
  %tobool34 = icmp ne i32 %call33, 0, !dbg !297
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !298

if.then35:                                        ; preds = %if.else32
  store i32 0, ptr %state, align 4, !dbg !299
  br label %if.end36, !dbg !300

if.end36:                                         ; preds = %if.then35, %if.else32
  br label %if.end37

if.end37:                                         ; preds = %if.end36
  br label %sw.epilog, !dbg !301

sw.epilog:                                        ; preds = %while.body, %if.end37, %if.end28, %if.then6
  br label %while.cond, !dbg !238, !llvm.loop !302

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !304
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !304

cleanup:                                          ; preds = %while.end, %if.then31, %if.then20, %if.then15, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %state) #4, !dbg !305
  call void @llvm.lifetime.end.p0(i64 8, ptr %opptr) #4, !dbg !305
  call void @llvm.lifetime.end.p0(i64 4, ptr %wstart) #4, !dbg !305
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #4, !dbg !305
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #4, !dbg !305
  call void @llvm.lifetime.end.p0(i64 8, ptr %cptr) #4, !dbg !305
  %22 = load i32, ptr %retval, align 4, !dbg !305
  ret i32 %22, !dbg !305
}

; Function Attrs: noredzone nounwind
define hidden i64 @get_cmd_line_ptr() #0 !dbg !306 {
entry:
  %cmd_line_ptr = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmd_line_ptr) #4, !dbg !311
  call void @llvm.dbg.declare(metadata ptr %cmd_line_ptr, metadata !310, metadata !DIExpression()), !dbg !312
  %0 = load ptr, ptr @boot_params_ptr, align 8, !dbg !313
  %hdr = getelementptr inbounds %struct.boot_params, ptr %0, i32 0, i32 28, !dbg !314
  %cmd_line_ptr1 = getelementptr inbounds %struct.setup_header, ptr %hdr, i32 0, i32 23, !dbg !315
  %1 = load i32, ptr %cmd_line_ptr1, align 1, !dbg !315
  %conv = zext i32 %1 to i64, !dbg !313
  store i64 %conv, ptr %cmd_line_ptr, align 8, !dbg !312
  %2 = load ptr, ptr @boot_params_ptr, align 8, !dbg !316
  %ext_cmd_line_ptr = getelementptr inbounds %struct.boot_params, ptr %2, i32 0, i32 13, !dbg !317
  %3 = load i32, ptr %ext_cmd_line_ptr, align 1, !dbg !317
  %conv2 = zext i32 %3 to i64, !dbg !318
  %shl = shl i64 %conv2, 32, !dbg !319
  %4 = load i64, ptr %cmd_line_ptr, align 8, !dbg !320
  %or = or i64 %4, %shl, !dbg !320
  store i64 %or, ptr %cmd_line_ptr, align 8, !dbg !320
  %5 = load i64, ptr %cmd_line_ptr, align 8, !dbg !321
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmd_line_ptr) #4, !dbg !322
  ret i64 %5, !dbg !323
}

; Function Attrs: noredzone nounwind
define hidden i32 @cmdline_find_option(ptr noundef %option, ptr noundef %buffer, i32 noundef %bufsize) #0 !dbg !324 {
entry:
  %option.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %bufsize.addr = alloca i32, align 4
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !328, metadata !DIExpression()), !dbg !331
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !329, metadata !DIExpression()), !dbg !332
  store i32 %bufsize, ptr %bufsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bufsize.addr, metadata !330, metadata !DIExpression()), !dbg !333
  %call = call i64 @get_cmd_line_ptr() #5, !dbg !334
  %0 = load ptr, ptr %option.addr, align 8, !dbg !335
  %1 = load ptr, ptr %buffer.addr, align 8, !dbg !336
  %2 = load i32, ptr %bufsize.addr, align 4, !dbg !337
  %call1 = call i32 @__cmdline_find_option(i64 noundef %call, ptr noundef %0, ptr noundef %1, i32 noundef %2) #5, !dbg !338
  ret i32 %call1, !dbg !339
}

; Function Attrs: noredzone nounwind
define hidden i32 @cmdline_find_option_bool(ptr noundef %option) #0 !dbg !340 {
entry:
  %option.addr = alloca ptr, align 8
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !344, metadata !DIExpression()), !dbg !345
  %call = call i64 @get_cmd_line_ptr() #5, !dbg !346
  %0 = load ptr, ptr %option.addr, align 8, !dbg !347
  %call1 = call i32 @__cmdline_find_option_bool(i64 noundef %call, ptr noundef %0) #5, !dbg !348
  ret i32 %call1, !dbg !349
}

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "fs", scope: !2, file: !3, line: 4, type: !11, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/compressed/.cmdline.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m64 -O1 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -std=gnu11 -fno-strict-aliasing -fPIE -Wundef -D DISABLE_BRANCH_PROFILING -mcmodel=small -mno-red-zone -mno-mmx -mno-sse -ffreestanding -fshort-wchar -fno-stack-protector -Wno-address-of-packed-member -Wno-gnu -Wno-pointer-sign -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D __DISABLE_EXPORTS -Wa,-mrelax-relocations=no -include ./include/linux/hidden.h -D KBUILD_MODFILE=\22arch/x86/boot/compressed/cmdline\22 -D KBUILD_BASENAME=\22cmdline\22 -D KBUILD_MODNAME=\22cmdline\22 -D __KBUILD_MODNAME=kmod_cmdline -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/compressed/cmdline.ll arch/x86/boot/compressed/cmdline.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !48, globals: !54, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/boot/compressed/cmdline.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2ea1ed57d852f180e119cf14dc5aab39")
!4 = !{!5, !34}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !7, file: !6, line: 35, baseType: !28, size: 32, elements: !29)
!6 = !DIFile(filename: "arch/x86/boot/compressed/../cmdline.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f77e640c987322df1530c050255f7d5")
!7 = distinct !DISubprogram(name: "__cmdline_find_option", scope: !6, file: !6, line: 28, type: !8, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !16)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !12, !15, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!16 = !{!17, !18, !19, !20, !21, !23, !24, !25, !26, !27}
!17 = !DILocalVariable(name: "cmdline_ptr", arg: 1, scope: !7, file: !6, line: 28, type: !11)
!18 = !DILocalVariable(name: "option", arg: 2, scope: !7, file: !6, line: 28, type: !12)
!19 = !DILocalVariable(name: "buffer", arg: 3, scope: !7, file: !6, line: 28, type: !15)
!20 = !DILocalVariable(name: "bufsize", arg: 4, scope: !7, file: !6, line: 28, type: !10)
!21 = !DILocalVariable(name: "cptr", scope: !7, file: !6, line: 30, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_t", file: !3, line: 9, baseType: !11)
!23 = !DILocalVariable(name: "c", scope: !7, file: !6, line: 31, type: !14)
!24 = !DILocalVariable(name: "len", scope: !7, file: !6, line: 32, type: !10)
!25 = !DILocalVariable(name: "opptr", scope: !7, file: !6, line: 33, type: !12)
!26 = !DILocalVariable(name: "bufptr", scope: !7, file: !6, line: 34, type: !15)
!27 = !DILocalVariable(name: "state", scope: !7, file: !6, line: 40, type: !5)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "st_wordstart", value: 0)
!31 = !DIEnumerator(name: "st_wordcmp", value: 1)
!32 = !DIEnumerator(name: "st_wordskip", value: 2)
!33 = !DIEnumerator(name: "st_bufcpy", value: 3)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !35, file: !6, line: 106, baseType: !28, size: 32, elements: !47)
!35 = distinct !DISubprogram(name: "__cmdline_find_option_bool", scope: !6, file: !6, line: 100, type: !36, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !38)
!36 = !DISubroutineType(types: !37)
!37 = !{!10, !11, !12}
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46}
!39 = !DILocalVariable(name: "cmdline_ptr", arg: 1, scope: !35, file: !6, line: 100, type: !11)
!40 = !DILocalVariable(name: "option", arg: 2, scope: !35, file: !6, line: 100, type: !12)
!41 = !DILocalVariable(name: "cptr", scope: !35, file: !6, line: 102, type: !22)
!42 = !DILocalVariable(name: "c", scope: !35, file: !6, line: 103, type: !14)
!43 = !DILocalVariable(name: "pos", scope: !35, file: !6, line: 104, type: !10)
!44 = !DILocalVariable(name: "wstart", scope: !35, file: !6, line: 104, type: !10)
!45 = !DILocalVariable(name: "opptr", scope: !35, file: !6, line: 105, type: !12)
!46 = !DILocalVariable(name: "state", scope: !35, file: !6, line: 110, type: !34)
!47 = !{!30, !31, !32}
!48 = !{!49, !15}
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !50, line: 23, baseType: !51)
!50 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !52, line: 31, baseType: !53)
!52 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!53 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!54 = !{!0}
!55 = !{i32 7, !"Dwarf Version", i32 5}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 8, !"PIC Level", i32 2}
!59 = !{i32 7, !"PIE Level", i32 2}
!60 = !{i32 1, !"Code Model", i32 1}
!61 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!62 = !DILocation(line: 28, column: 41, scope: !7)
!63 = !DILocation(line: 28, column: 66, scope: !7)
!64 = !DILocation(line: 28, column: 80, scope: !7)
!65 = !DILocation(line: 28, column: 92, scope: !7)
!66 = !DILocation(line: 30, column: 2, scope: !7)
!67 = !DILocation(line: 30, column: 9, scope: !7)
!68 = !DILocation(line: 31, column: 2, scope: !7)
!69 = !DILocation(line: 31, column: 7, scope: !7)
!70 = !DILocation(line: 32, column: 2, scope: !7)
!71 = !DILocation(line: 32, column: 6, scope: !7)
!72 = !DILocation(line: 33, column: 2, scope: !7)
!73 = !DILocation(line: 33, column: 14, scope: !7)
!74 = !DILocation(line: 34, column: 2, scope: !7)
!75 = !DILocation(line: 34, column: 8, scope: !7)
!76 = !DILocation(line: 34, column: 17, scope: !7)
!77 = !DILocation(line: 35, column: 2, scope: !7)
!78 = !DILocation(line: 40, column: 4, scope: !7)
!79 = !DILocation(line: 42, column: 7, scope: !80)
!80 = distinct !DILexicalBlock(scope: !7, file: !6, line: 42, column: 6)
!81 = !DILocation(line: 42, column: 6, scope: !7)
!82 = !DILocation(line: 43, column: 3, scope: !80)
!83 = !DILocation(line: 45, column: 9, scope: !7)
!84 = !DILocation(line: 45, column: 21, scope: !7)
!85 = !DILocation(line: 45, column: 7, scope: !7)
!86 = !DILocation(line: 46, column: 9, scope: !7)
!87 = !DILocation(line: 46, column: 21, scope: !7)
!88 = !DILocation(line: 46, column: 2, scope: !7)
!89 = !DILocation(line: 48, column: 2, scope: !7)
!90 = !DILocation(line: 48, column: 9, scope: !7)
!91 = !DILocation(line: 48, column: 14, scope: !7)
!92 = !DILocation(line: 48, column: 24, scope: !7)
!93 = !DILocation(line: 48, column: 42, scope: !7)
!94 = !DILocation(line: 48, column: 32, scope: !7)
!95 = !DILocation(line: 48, column: 30, scope: !7)
!96 = !DILocation(line: 48, column: 27, scope: !7)
!97 = !DILocation(line: 0, scope: !7)
!98 = !DILocation(line: 49, column: 11, scope: !99)
!99 = distinct !DILexicalBlock(scope: !7, file: !6, line: 48, column: 48)
!100 = !DILocation(line: 49, column: 3, scope: !99)
!101 = !DILocation(line: 51, column: 18, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !6, line: 51, column: 8)
!103 = distinct !DILexicalBlock(scope: !99, file: !6, line: 49, column: 18)
!104 = !DILocation(line: 51, column: 8, scope: !102)
!105 = !DILocation(line: 51, column: 8, scope: !103)
!106 = !DILocation(line: 52, column: 5, scope: !102)
!107 = !DILocation(line: 55, column: 10, scope: !103)
!108 = !DILocation(line: 56, column: 12, scope: !103)
!109 = !DILocation(line: 56, column: 10, scope: !103)
!110 = !DILocation(line: 56, column: 4, scope: !103)
!111 = !DILocation(line: 60, column: 8, scope: !112)
!112 = distinct !DILexicalBlock(scope: !103, file: !6, line: 60, column: 8)
!113 = !DILocation(line: 60, column: 10, scope: !112)
!114 = !DILocation(line: 60, column: 17, scope: !112)
!115 = !DILocation(line: 60, column: 22, scope: !112)
!116 = !DILocation(line: 60, column: 21, scope: !112)
!117 = !DILocation(line: 60, column: 8, scope: !103)
!118 = !DILocation(line: 61, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !112, file: !6, line: 60, column: 29)
!120 = !DILocation(line: 62, column: 14, scope: !119)
!121 = !DILocation(line: 62, column: 12, scope: !119)
!122 = !DILocation(line: 63, column: 11, scope: !119)
!123 = !DILocation(line: 64, column: 4, scope: !119)
!124 = !DILocation(line: 64, column: 25, scope: !125)
!125 = distinct !DILexicalBlock(scope: !112, file: !6, line: 64, column: 15)
!126 = !DILocation(line: 64, column: 15, scope: !125)
!127 = !DILocation(line: 64, column: 15, scope: !112)
!128 = !DILocation(line: 65, column: 11, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !6, line: 64, column: 29)
!130 = !DILocation(line: 66, column: 4, scope: !129)
!131 = !DILocation(line: 66, column: 15, scope: !132)
!132 = distinct !DILexicalBlock(scope: !125, file: !6, line: 66, column: 15)
!133 = !DILocation(line: 66, column: 26, scope: !132)
!134 = !DILocation(line: 66, column: 20, scope: !132)
!135 = !DILocation(line: 66, column: 17, scope: !132)
!136 = !DILocation(line: 66, column: 15, scope: !125)
!137 = !DILocation(line: 67, column: 11, scope: !138)
!138 = distinct !DILexicalBlock(scope: !132, file: !6, line: 66, column: 30)
!139 = !DILocation(line: 68, column: 4, scope: !138)
!140 = !DILocation(line: 69, column: 4, scope: !103)
!141 = !DILocation(line: 72, column: 18, scope: !142)
!142 = distinct !DILexicalBlock(scope: !103, file: !6, line: 72, column: 8)
!143 = !DILocation(line: 72, column: 8, scope: !142)
!144 = !DILocation(line: 72, column: 8, scope: !103)
!145 = !DILocation(line: 73, column: 11, scope: !142)
!146 = !DILocation(line: 73, column: 5, scope: !142)
!147 = !DILocation(line: 74, column: 4, scope: !103)
!148 = !DILocation(line: 77, column: 18, scope: !149)
!149 = distinct !DILexicalBlock(scope: !103, file: !6, line: 77, column: 8)
!150 = !DILocation(line: 77, column: 8, scope: !149)
!151 = !DILocation(line: 77, column: 8, scope: !103)
!152 = !DILocation(line: 78, column: 11, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !6, line: 77, column: 22)
!154 = !DILocation(line: 79, column: 4, scope: !153)
!155 = !DILocation(line: 80, column: 9, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !6, line: 80, column: 9)
!157 = distinct !DILexicalBlock(scope: !149, file: !6, line: 79, column: 11)
!158 = !DILocation(line: 80, column: 15, scope: !156)
!159 = !DILocation(line: 80, column: 22, scope: !156)
!160 = !DILocation(line: 80, column: 13, scope: !156)
!161 = !DILocation(line: 80, column: 9, scope: !157)
!162 = !DILocation(line: 81, column: 18, scope: !156)
!163 = !DILocation(line: 81, column: 13, scope: !156)
!164 = !DILocation(line: 81, column: 16, scope: !156)
!165 = !DILocation(line: 81, column: 6, scope: !156)
!166 = !DILocation(line: 82, column: 8, scope: !157)
!167 = !DILocation(line: 84, column: 4, scope: !103)
!168 = distinct !{!168, !89, !169, !170, !171}
!169 = !DILocation(line: 86, column: 2, scope: !7)
!170 = !{!"llvm.loop.mustprogress"}
!171 = !{!"llvm.loop.unroll.disable"}
!172 = !DILocation(line: 88, column: 6, scope: !173)
!173 = distinct !DILexicalBlock(scope: !7, file: !6, line: 88, column: 6)
!174 = !DILocation(line: 88, column: 6, scope: !7)
!175 = !DILocation(line: 89, column: 4, scope: !173)
!176 = !DILocation(line: 89, column: 11, scope: !173)
!177 = !DILocation(line: 89, column: 3, scope: !173)
!178 = !DILocation(line: 91, column: 9, scope: !7)
!179 = !DILocation(line: 91, column: 2, scope: !7)
!180 = !DILocation(line: 92, column: 1, scope: !7)
!181 = distinct !DISubprogram(name: "set_fs", scope: !3, file: !3, line: 5, type: !182, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !184)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !11}
!184 = !{!185}
!185 = !DILocalVariable(name: "seg", arg: 1, scope: !181, file: !3, line: 5, type: !11)
!186 = !DILocation(line: 5, column: 41, scope: !181)
!187 = !DILocation(line: 7, column: 7, scope: !181)
!188 = !DILocation(line: 7, column: 11, scope: !181)
!189 = !DILocation(line: 7, column: 5, scope: !181)
!190 = !DILocation(line: 8, column: 1, scope: !181)
!191 = distinct !DISubprogram(name: "rdfs8", scope: !3, file: !3, line: 10, type: !192, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !194)
!192 = !DISubroutineType(types: !193)
!193 = !{!14, !22}
!194 = !{!195}
!195 = !DILocalVariable(name: "addr", arg: 1, scope: !191, file: !3, line: 10, type: !22)
!196 = !DILocation(line: 10, column: 33, scope: !191)
!197 = !DILocation(line: 12, column: 20, scope: !191)
!198 = !DILocation(line: 12, column: 25, scope: !191)
!199 = !DILocation(line: 12, column: 23, scope: !191)
!200 = !DILocation(line: 12, column: 11, scope: !191)
!201 = !DILocation(line: 12, column: 9, scope: !191)
!202 = !DILocation(line: 12, column: 2, scope: !191)
!203 = distinct !DISubprogram(name: "myisspace", scope: !6, file: !6, line: 15, type: !204, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !209)
!204 = !DISubroutineType(types: !205)
!205 = !{!10, !206}
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !50, line: 17, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !52, line: 21, baseType: !208)
!208 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!209 = !{!210}
!210 = !DILocalVariable(name: "c", arg: 1, scope: !203, file: !6, line: 15, type: !206)
!211 = !DILocation(line: 15, column: 32, scope: !203)
!212 = !DILocation(line: 17, column: 9, scope: !203)
!213 = !DILocation(line: 17, column: 11, scope: !203)
!214 = !DILocation(line: 17, column: 2, scope: !203)
!215 = !DILocation(line: 100, column: 46, scope: !35)
!216 = !DILocation(line: 100, column: 71, scope: !35)
!217 = !DILocation(line: 102, column: 2, scope: !35)
!218 = !DILocation(line: 102, column: 9, scope: !35)
!219 = !DILocation(line: 103, column: 2, scope: !35)
!220 = !DILocation(line: 103, column: 7, scope: !35)
!221 = !DILocation(line: 104, column: 2, scope: !35)
!222 = !DILocation(line: 104, column: 6, scope: !35)
!223 = !DILocation(line: 104, column: 15, scope: !35)
!224 = !DILocation(line: 105, column: 2, scope: !35)
!225 = !DILocation(line: 105, column: 14, scope: !35)
!226 = !DILocation(line: 106, column: 2, scope: !35)
!227 = !DILocation(line: 110, column: 4, scope: !35)
!228 = !DILocation(line: 112, column: 7, scope: !229)
!229 = distinct !DILexicalBlock(scope: !35, file: !6, line: 112, column: 6)
!230 = !DILocation(line: 112, column: 6, scope: !35)
!231 = !DILocation(line: 113, column: 3, scope: !229)
!232 = !DILocation(line: 115, column: 9, scope: !35)
!233 = !DILocation(line: 115, column: 21, scope: !35)
!234 = !DILocation(line: 115, column: 7, scope: !35)
!235 = !DILocation(line: 116, column: 9, scope: !35)
!236 = !DILocation(line: 116, column: 21, scope: !35)
!237 = !DILocation(line: 116, column: 2, scope: !35)
!238 = !DILocation(line: 118, column: 2, scope: !35)
!239 = !DILocation(line: 118, column: 9, scope: !35)
!240 = !DILocation(line: 118, column: 14, scope: !35)
!241 = !DILocation(line: 119, column: 17, scope: !242)
!242 = distinct !DILexicalBlock(scope: !35, file: !6, line: 118, column: 25)
!243 = !DILocation(line: 119, column: 7, scope: !242)
!244 = !DILocation(line: 119, column: 5, scope: !242)
!245 = !DILocation(line: 120, column: 6, scope: !242)
!246 = !DILocation(line: 122, column: 11, scope: !242)
!247 = !DILocation(line: 122, column: 3, scope: !242)
!248 = !DILocation(line: 124, column: 9, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !6, line: 124, column: 8)
!250 = distinct !DILexicalBlock(scope: !242, file: !6, line: 122, column: 18)
!251 = !DILocation(line: 124, column: 8, scope: !250)
!252 = !DILocation(line: 125, column: 5, scope: !249)
!253 = !DILocation(line: 126, column: 23, scope: !254)
!254 = distinct !DILexicalBlock(scope: !249, file: !6, line: 126, column: 13)
!255 = !DILocation(line: 126, column: 13, scope: !254)
!256 = !DILocation(line: 126, column: 13, scope: !249)
!257 = !DILocation(line: 127, column: 5, scope: !254)
!258 = !DILocation(line: 129, column: 10, scope: !250)
!259 = !DILocation(line: 130, column: 12, scope: !250)
!260 = !DILocation(line: 130, column: 10, scope: !250)
!261 = !DILocation(line: 131, column: 13, scope: !250)
!262 = !DILocation(line: 131, column: 11, scope: !250)
!263 = !DILocation(line: 131, column: 4, scope: !250)
!264 = !DILocation(line: 135, column: 10, scope: !265)
!265 = distinct !DILexicalBlock(scope: !250, file: !6, line: 135, column: 8)
!266 = !DILocation(line: 135, column: 9, scope: !265)
!267 = !DILocation(line: 135, column: 8, scope: !250)
!268 = !DILocation(line: 136, column: 10, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !6, line: 136, column: 9)
!270 = !DILocation(line: 136, column: 12, scope: !269)
!271 = !DILocation(line: 136, column: 25, scope: !269)
!272 = !DILocation(line: 136, column: 15, scope: !269)
!273 = !DILocation(line: 136, column: 9, scope: !265)
!274 = !DILocation(line: 137, column: 13, scope: !269)
!275 = !DILocation(line: 137, column: 6, scope: !269)
!276 = !DILocation(line: 139, column: 12, scope: !269)
!277 = !DILocation(line: 136, column: 26, scope: !269)
!278 = !DILocation(line: 140, column: 14, scope: !279)
!279 = distinct !DILexicalBlock(scope: !265, file: !6, line: 140, column: 13)
!280 = !DILocation(line: 140, column: 13, scope: !265)
!281 = !DILocation(line: 141, column: 5, scope: !279)
!282 = !DILocation(line: 142, column: 13, scope: !283)
!283 = distinct !DILexicalBlock(scope: !279, file: !6, line: 142, column: 13)
!284 = !DILocation(line: 142, column: 24, scope: !283)
!285 = !DILocation(line: 142, column: 18, scope: !283)
!286 = !DILocation(line: 142, column: 15, scope: !283)
!287 = !DILocation(line: 142, column: 13, scope: !279)
!288 = !DILocation(line: 143, column: 11, scope: !283)
!289 = !DILocation(line: 143, column: 5, scope: !283)
!290 = !DILocation(line: 144, column: 4, scope: !250)
!291 = !DILocation(line: 147, column: 9, scope: !292)
!292 = distinct !DILexicalBlock(scope: !250, file: !6, line: 147, column: 8)
!293 = !DILocation(line: 147, column: 8, scope: !250)
!294 = !DILocation(line: 148, column: 5, scope: !292)
!295 = !DILocation(line: 149, column: 23, scope: !296)
!296 = distinct !DILexicalBlock(scope: !292, file: !6, line: 149, column: 13)
!297 = !DILocation(line: 149, column: 13, scope: !296)
!298 = !DILocation(line: 149, column: 13, scope: !292)
!299 = !DILocation(line: 150, column: 11, scope: !296)
!300 = !DILocation(line: 150, column: 5, scope: !296)
!301 = !DILocation(line: 151, column: 4, scope: !250)
!302 = distinct !{!302, !238, !303, !170, !171}
!303 = !DILocation(line: 153, column: 2, scope: !35)
!304 = !DILocation(line: 155, column: 2, scope: !35)
!305 = !DILocation(line: 156, column: 1, scope: !35)
!306 = distinct !DISubprogram(name: "get_cmd_line_ptr", scope: !3, file: !3, line: 15, type: !307, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !309)
!307 = !DISubroutineType(types: !308)
!308 = !{!11}
!309 = !{!310}
!310 = !DILocalVariable(name: "cmd_line_ptr", scope: !306, file: !3, line: 17, type: !11)
!311 = !DILocation(line: 17, column: 2, scope: !306)
!312 = !DILocation(line: 17, column: 16, scope: !306)
!313 = !DILocation(line: 17, column: 31, scope: !306)
!314 = !DILocation(line: 17, column: 48, scope: !306)
!315 = !DILocation(line: 17, column: 52, scope: !306)
!316 = !DILocation(line: 19, column: 23, scope: !306)
!317 = !DILocation(line: 19, column: 40, scope: !306)
!318 = !DILocation(line: 19, column: 18, scope: !306)
!319 = !DILocation(line: 19, column: 57, scope: !306)
!320 = !DILocation(line: 19, column: 15, scope: !306)
!321 = !DILocation(line: 21, column: 9, scope: !306)
!322 = !DILocation(line: 22, column: 1, scope: !306)
!323 = !DILocation(line: 21, column: 2, scope: !306)
!324 = distinct !DISubprogram(name: "cmdline_find_option", scope: !3, file: !3, line: 23, type: !325, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !327)
!325 = !DISubroutineType(types: !326)
!326 = !{!10, !12, !15, !10}
!327 = !{!328, !329, !330}
!328 = !DILocalVariable(name: "option", arg: 1, scope: !324, file: !3, line: 23, type: !12)
!329 = !DILocalVariable(name: "buffer", arg: 2, scope: !324, file: !3, line: 23, type: !15)
!330 = !DILocalVariable(name: "bufsize", arg: 3, scope: !324, file: !3, line: 23, type: !10)
!331 = !DILocation(line: 23, column: 37, scope: !324)
!332 = !DILocation(line: 23, column: 51, scope: !324)
!333 = !DILocation(line: 23, column: 63, scope: !324)
!334 = !DILocation(line: 25, column: 31, scope: !324)
!335 = !DILocation(line: 25, column: 51, scope: !324)
!336 = !DILocation(line: 25, column: 59, scope: !324)
!337 = !DILocation(line: 25, column: 67, scope: !324)
!338 = !DILocation(line: 25, column: 9, scope: !324)
!339 = !DILocation(line: 25, column: 2, scope: !324)
!340 = distinct !DISubprogram(name: "cmdline_find_option_bool", scope: !3, file: !3, line: 27, type: !341, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !343)
!341 = !DISubroutineType(types: !342)
!342 = !{!10, !12}
!343 = !{!344}
!344 = !DILocalVariable(name: "option", arg: 1, scope: !340, file: !3, line: 27, type: !12)
!345 = !DILocation(line: 27, column: 42, scope: !340)
!346 = !DILocation(line: 29, column: 36, scope: !340)
!347 = !DILocation(line: 29, column: 56, scope: !340)
!348 = !DILocation(line: 29, column: 9, scope: !340)
!349 = !DILocation(line: 29, column: 2, scope: !340)

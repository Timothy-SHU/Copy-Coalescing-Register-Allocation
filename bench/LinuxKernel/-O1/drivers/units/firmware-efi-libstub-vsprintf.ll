; ModuleID = 'drivers/firmware/efi/libstub/vsprintf.c'
source_filename = "drivers/firmware/efi/libstub/vsprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1, !dbg !7
@number.digits = internal constant [16 x i8] c"0123456789ABCDEF", align 16, !dbg !12

; Function Attrs: noredzone nounwind
define hidden i32 @vsnprintf(ptr noundef %buf, i64 noundef %size, ptr noundef %fmt, ptr noundef %ap) #0 !dbg !54 {
entry:
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %fmt.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %tmp = alloca [22 x i8], align 16
  %tmp_end = alloca ptr, align 8
  %num = alloca i64, align 8
  %base = alloca i32, align 4
  %s = alloca ptr, align 8
  %len = alloca i64, align 8
  %pos = alloca i64, align 8
  %sign = alloca i8, align 1
  %flags = alloca i32, align 4
  %field_width = alloca i32, align 4
  %precision = alloca i32, align 4
  %qualifier = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %ws = alloca ptr, align 8
  %c32 = alloca i32, align 4
  %s8 = alloca ptr, align 8
  %clen = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x4 = alloca i64, align 8
  %__UNIQUE_ID___y5 = alloca i64, align 8
  %tmp361 = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !72, metadata !DIExpression()), !dbg !120
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !73, metadata !DIExpression()), !dbg !121
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !74, metadata !DIExpression()), !dbg !122
  store ptr %ap, ptr %ap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ap.addr, metadata !75, metadata !DIExpression()), !dbg !123
  call void @llvm.lifetime.start.p0(i64 22, ptr %tmp) #6, !dbg !124
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !76, metadata !DIExpression()), !dbg !125
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp_end) #6, !dbg !126
  call void @llvm.dbg.declare(metadata ptr %tmp_end, metadata !80, metadata !DIExpression()), !dbg !127
  %arrayidx = getelementptr inbounds [22 x i8], ptr %tmp, i64 0, i64 22, !dbg !128
  store ptr %arrayidx, ptr %tmp_end, align 8, !dbg !127
  call void @llvm.lifetime.start.p0(i64 8, ptr %num) #6, !dbg !129
  call void @llvm.dbg.declare(metadata ptr %num, metadata !81, metadata !DIExpression()), !dbg !130
  call void @llvm.lifetime.start.p0(i64 4, ptr %base) #6, !dbg !131
  call void @llvm.dbg.declare(metadata ptr %base, metadata !83, metadata !DIExpression()), !dbg !132
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #6, !dbg !133
  call void @llvm.dbg.declare(metadata ptr %s, metadata !84, metadata !DIExpression()), !dbg !134
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #6, !dbg !135
  call void @llvm.dbg.declare(metadata ptr %len, metadata !85, metadata !DIExpression()), !dbg !136
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #6, !dbg !135
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !86, metadata !DIExpression()), !dbg !137
  call void @llvm.lifetime.start.p0(i64 1, ptr %sign) #6, !dbg !138
  call void @llvm.dbg.declare(metadata ptr %sign, metadata !87, metadata !DIExpression()), !dbg !139
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #6, !dbg !140
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !88, metadata !DIExpression()), !dbg !141
  call void @llvm.lifetime.start.p0(i64 4, ptr %field_width) #6, !dbg !142
  call void @llvm.dbg.declare(metadata ptr %field_width, metadata !89, metadata !DIExpression()), !dbg !143
  call void @llvm.lifetime.start.p0(i64 4, ptr %precision) #6, !dbg !144
  call void @llvm.dbg.declare(metadata ptr %precision, metadata !90, metadata !DIExpression()), !dbg !145
  call void @llvm.lifetime.start.p0(i64 4, ptr %qualifier) #6, !dbg !146
  call void @llvm.dbg.declare(metadata ptr %qualifier, metadata !91, metadata !DIExpression()), !dbg !147
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #6, !dbg !148
  call void @llvm.dbg.declare(metadata ptr %args, metadata !92, metadata !DIExpression()), !dbg !149
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !150
  %0 = load ptr, ptr %ap.addr, align 8, !dbg !150
  call void @llvm.va_copy(ptr %arraydecay, ptr %0), !dbg !150
  store i64 0, ptr %pos, align 8, !dbg !151
  br label %for.cond, !dbg !152

for.cond:                                         ; preds = %for.inc354, %entry
  %1 = load ptr, ptr %fmt.addr, align 8, !dbg !153
  %2 = load i8, ptr %1, align 1, !dbg !154
  %tobool = icmp ne i8 %2, 0, !dbg !155
  br i1 %tobool, label %for.body, label %for.end356, !dbg !155

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %fmt.addr, align 8, !dbg !156
  %4 = load i8, ptr %3, align 1, !dbg !158
  %conv = sext i8 %4 to i32, !dbg !158
  %cmp = icmp ne i32 %conv, 37, !dbg !159
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !160

lor.lhs.false:                                    ; preds = %for.body
  %5 = load ptr, ptr %fmt.addr, align 8, !dbg !161
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1, !dbg !161
  store ptr %incdec.ptr, ptr %fmt.addr, align 8, !dbg !161
  %6 = load i8, ptr %incdec.ptr, align 1, !dbg !162
  %conv2 = sext i8 %6 to i32, !dbg !162
  %cmp3 = icmp eq i32 %conv2, 37, !dbg !163
  br i1 %cmp3, label %if.then, label %if.end9, !dbg !164

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %do.body, !dbg !165

do.body:                                          ; preds = %if.then
  %7 = load i64, ptr %pos, align 8, !dbg !167
  %8 = load i64, ptr %size.addr, align 8, !dbg !167
  %cmp5 = icmp ult i64 %7, %8, !dbg !167
  br i1 %cmp5, label %if.then7, label %if.end, !dbg !170

if.then7:                                         ; preds = %do.body
  %9 = load ptr, ptr %fmt.addr, align 8, !dbg !167
  %10 = load i8, ptr %9, align 1, !dbg !167
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !167
  %12 = load i64, ptr %pos, align 8, !dbg !167
  %arrayidx8 = getelementptr inbounds i8, ptr %11, i64 %12, !dbg !167
  store i8 %10, ptr %arrayidx8, align 1, !dbg !167
  br label %if.end, !dbg !167

if.end:                                           ; preds = %if.then7, %do.body
  %13 = load i64, ptr %pos, align 8, !dbg !170
  %inc = add i64 %13, 1, !dbg !170
  store i64 %inc, ptr %pos, align 8, !dbg !170
  br label %do.cond, !dbg !170

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !170

do.end:                                           ; preds = %do.cond
  br label %for.inc354, !dbg !171

if.end9:                                          ; preds = %lor.lhs.false
  %call = call i32 @get_flags(ptr noundef %fmt.addr) #7, !dbg !172
  store i32 %call, ptr %flags, align 4, !dbg !173
  %call10 = call i32 @get_int(ptr noundef %fmt.addr, ptr noundef %args) #7, !dbg !174
  store i32 %call10, ptr %field_width, align 4, !dbg !175
  %14 = load i32, ptr %field_width, align 4, !dbg !176
  %cmp11 = icmp slt i32 %14, 0, !dbg !178
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !179

if.then13:                                        ; preds = %if.end9
  %15 = load i32, ptr %field_width, align 4, !dbg !180
  %sub = sub nsw i32 0, %15, !dbg !182
  store i32 %sub, ptr %field_width, align 4, !dbg !183
  %16 = load i32, ptr %flags, align 4, !dbg !184
  %or = or i32 %16, 16, !dbg !184
  store i32 %or, ptr %flags, align 4, !dbg !184
  br label %if.end14, !dbg !185

if.end14:                                         ; preds = %if.then13, %if.end9
  %17 = load i32, ptr %flags, align 4, !dbg !186
  %and = and i32 %17, 16, !dbg !188
  %tobool15 = icmp ne i32 %and, 0, !dbg !188
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !189

if.then16:                                        ; preds = %if.end14
  %18 = load i32, ptr %flags, align 4, !dbg !190
  %and17 = and i32 %18, -2, !dbg !190
  store i32 %and17, ptr %flags, align 4, !dbg !190
  br label %if.end18, !dbg !191

if.end18:                                         ; preds = %if.then16, %if.end14
  store i32 -1, ptr %precision, align 4, !dbg !192
  %19 = load ptr, ptr %fmt.addr, align 8, !dbg !193
  %20 = load i8, ptr %19, align 1, !dbg !195
  %conv19 = sext i8 %20 to i32, !dbg !195
  %cmp20 = icmp eq i32 %conv19, 46, !dbg !196
  br i1 %cmp20, label %if.then22, label %if.end30, !dbg !197

if.then22:                                        ; preds = %if.end18
  %21 = load ptr, ptr %fmt.addr, align 8, !dbg !198
  %incdec.ptr23 = getelementptr inbounds i8, ptr %21, i32 1, !dbg !198
  store ptr %incdec.ptr23, ptr %fmt.addr, align 8, !dbg !198
  %call24 = call i32 @get_int(ptr noundef %fmt.addr, ptr noundef %args) #7, !dbg !200
  store i32 %call24, ptr %precision, align 4, !dbg !201
  %22 = load i32, ptr %precision, align 4, !dbg !202
  %cmp25 = icmp sge i32 %22, 0, !dbg !204
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !205

if.then27:                                        ; preds = %if.then22
  %23 = load i32, ptr %flags, align 4, !dbg !206
  %and28 = and i32 %23, -2, !dbg !206
  store i32 %and28, ptr %flags, align 4, !dbg !206
  br label %if.end29, !dbg !207

if.end29:                                         ; preds = %if.then27, %if.then22
  br label %if.end30, !dbg !208

if.end30:                                         ; preds = %if.end29, %if.end18
  store i32 -1, ptr %qualifier, align 4, !dbg !209
  %24 = load ptr, ptr %fmt.addr, align 8, !dbg !210
  %25 = load i8, ptr %24, align 1, !dbg !212
  %conv31 = sext i8 %25 to i32, !dbg !212
  %cmp32 = icmp eq i32 %conv31, 104, !dbg !213
  br i1 %cmp32, label %if.then38, label %lor.lhs.false34, !dbg !214

lor.lhs.false34:                                  ; preds = %if.end30
  %26 = load ptr, ptr %fmt.addr, align 8, !dbg !215
  %27 = load i8, ptr %26, align 1, !dbg !216
  %conv35 = sext i8 %27 to i32, !dbg !216
  %cmp36 = icmp eq i32 %conv35, 108, !dbg !217
  br i1 %cmp36, label %if.then38, label %if.end48, !dbg !218

if.then38:                                        ; preds = %lor.lhs.false34, %if.end30
  %28 = load ptr, ptr %fmt.addr, align 8, !dbg !219
  %29 = load i8, ptr %28, align 1, !dbg !221
  %conv39 = sext i8 %29 to i32, !dbg !221
  store i32 %conv39, ptr %qualifier, align 4, !dbg !222
  %30 = load ptr, ptr %fmt.addr, align 8, !dbg !223
  %incdec.ptr40 = getelementptr inbounds i8, ptr %30, i32 1, !dbg !223
  store ptr %incdec.ptr40, ptr %fmt.addr, align 8, !dbg !223
  %31 = load i32, ptr %qualifier, align 4, !dbg !224
  %32 = load ptr, ptr %fmt.addr, align 8, !dbg !226
  %33 = load i8, ptr %32, align 1, !dbg !227
  %conv41 = sext i8 %33 to i32, !dbg !227
  %cmp42 = icmp eq i32 %31, %conv41, !dbg !228
  br i1 %cmp42, label %if.then44, label %if.end47, !dbg !229

if.then44:                                        ; preds = %if.then38
  %34 = load i32, ptr %qualifier, align 4, !dbg !230
  %sub45 = sub nsw i32 %34, 32, !dbg !230
  store i32 %sub45, ptr %qualifier, align 4, !dbg !230
  %35 = load ptr, ptr %fmt.addr, align 8, !dbg !232
  %incdec.ptr46 = getelementptr inbounds i8, ptr %35, i32 1, !dbg !232
  store ptr %incdec.ptr46, ptr %fmt.addr, align 8, !dbg !232
  br label %if.end47, !dbg !233

if.end47:                                         ; preds = %if.then44, %if.then38
  br label %if.end48, !dbg !234

if.end48:                                         ; preds = %if.end47, %lor.lhs.false34
  store i8 0, ptr %sign, align 1, !dbg !235
  %36 = load ptr, ptr %fmt.addr, align 8, !dbg !236
  %37 = load i8, ptr %36, align 1, !dbg !237
  %conv49 = sext i8 %37 to i32, !dbg !237
  switch i32 %conv49, label %sw.default [
    i32 99, label %sw.bb
    i32 115, label %sw.bb76
    i32 111, label %sw.bb111
    i32 112, label %sw.bb112
    i32 120, label %sw.bb117
    i32 88, label %sw.bb119
    i32 100, label %sw.bb120
    i32 105, label %sw.bb120
    i32 117, label %sw.bb122
  ], !dbg !238

sw.bb:                                            ; preds = %if.end48
  %38 = load i32, ptr %flags, align 4, !dbg !239
  %and50 = and i32 %38, 16, !dbg !239
  store i32 %and50, ptr %flags, align 4, !dbg !239
  %arraydecay51 = getelementptr inbounds [22 x i8], ptr %tmp, i64 0, i64 0, !dbg !240
  store ptr %arraydecay51, ptr %s, align 8, !dbg !241
  %39 = load i32, ptr %qualifier, align 4, !dbg !242
  %cmp52 = icmp eq i32 %39, 108, !dbg !244
  br i1 %cmp52, label %if.then54, label %if.else, !dbg !245

if.then54:                                        ; preds = %sw.bb
  %arraydecay55 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !246
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay55, i32 0, i32 0, !dbg !246
  %gp_offset = load i32, ptr %gp_offset_p, align 16, !dbg !246
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !246
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !246

vaarg.in_reg:                                     ; preds = %if.then54
  %40 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay55, i32 0, i32 3, !dbg !246
  %reg_save_area = load ptr, ptr %40, align 16, !dbg !246
  %41 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset, !dbg !246
  %42 = add i32 %gp_offset, 8, !dbg !246
  store i32 %42, ptr %gp_offset_p, align 16, !dbg !246
  br label %vaarg.end, !dbg !246

vaarg.in_mem:                                     ; preds = %if.then54
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay55, i32 0, i32 2, !dbg !246
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8, !dbg !246
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8, !dbg !246
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8, !dbg !246
  br label %vaarg.end, !dbg !246

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %41, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ], !dbg !246
  %43 = load i32, ptr %vaarg.addr, align 4, !dbg !246
  %conv56 = trunc i32 %43 to i16, !dbg !248
  %arraydecay57 = getelementptr inbounds [22 x i8], ptr %tmp, i64 0, i64 0, !dbg !249
  %arrayidx58 = getelementptr inbounds i16, ptr %arraydecay57, i64 0, !dbg !249
  store i16 %conv56, ptr %arrayidx58, align 16, !dbg !250
  %arraydecay59 = getelementptr inbounds [22 x i8], ptr %tmp, i64 0, i64 0, !dbg !251
  %arrayidx60 = getelementptr inbounds i16, ptr %arraydecay59, i64 1, !dbg !251
  store i16 0, ptr %arrayidx60, align 2, !dbg !252
  store i32 2147483647, ptr %precision, align 4, !dbg !253
  br label %wstring, !dbg !254

if.else:                                          ; preds = %sw.bb
  %arraydecay61 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !255
  %gp_offset_p62 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay61, i32 0, i32 0, !dbg !255
  %gp_offset63 = load i32, ptr %gp_offset_p62, align 16, !dbg !255
  %fits_in_gp64 = icmp ule i32 %gp_offset63, 40, !dbg !255
  br i1 %fits_in_gp64, label %vaarg.in_reg65, label %vaarg.in_mem67, !dbg !255

vaarg.in_reg65:                                   ; preds = %if.else
  %44 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay61, i32 0, i32 3, !dbg !255
  %reg_save_area66 = load ptr, ptr %44, align 16, !dbg !255
  %45 = getelementptr i8, ptr %reg_save_area66, i32 %gp_offset63, !dbg !255
  %46 = add i32 %gp_offset63, 8, !dbg !255
  store i32 %46, ptr %gp_offset_p62, align 16, !dbg !255
  br label %vaarg.end71, !dbg !255

vaarg.in_mem67:                                   ; preds = %if.else
  %overflow_arg_area_p68 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay61, i32 0, i32 2, !dbg !255
  %overflow_arg_area69 = load ptr, ptr %overflow_arg_area_p68, align 8, !dbg !255
  %overflow_arg_area.next70 = getelementptr i8, ptr %overflow_arg_area69, i32 8, !dbg !255
  store ptr %overflow_arg_area.next70, ptr %overflow_arg_area_p68, align 8, !dbg !255
  br label %vaarg.end71, !dbg !255

vaarg.end71:                                      ; preds = %vaarg.in_mem67, %vaarg.in_reg65
  %vaarg.addr72 = phi ptr [ %45, %vaarg.in_reg65 ], [ %overflow_arg_area69, %vaarg.in_mem67 ], !dbg !255
  %47 = load i32, ptr %vaarg.addr72, align 4, !dbg !255
  %conv73 = trunc i32 %47 to i8, !dbg !257
  %arrayidx74 = getelementptr inbounds [22 x i8], ptr %tmp, i64 0, i64 0, !dbg !258
  store i8 %conv73, ptr %arrayidx74, align 16, !dbg !259
  store i64 1, ptr %len, align 8, !dbg !260
  store i32 1, ptr %precision, align 4, !dbg !261
  br label %if.end75

if.end75:                                         ; preds = %vaarg.end71
  br label %output, !dbg !262

sw.bb76:                                          ; preds = %if.end48
  %48 = load i32, ptr %flags, align 4, !dbg !263
  %and77 = and i32 %48, 16, !dbg !263
  store i32 %and77, ptr %flags, align 4, !dbg !263
  %49 = load i32, ptr %precision, align 4, !dbg !264
  %cmp78 = icmp slt i32 %49, 0, !dbg !266
  br i1 %cmp78, label %if.then80, label %if.end81, !dbg !267

if.then80:                                        ; preds = %sw.bb76
  store i32 2147483647, ptr %precision, align 4, !dbg !268
  br label %if.end81, !dbg !269

if.end81:                                         ; preds = %if.then80, %sw.bb76
  %arraydecay82 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !270
  %gp_offset_p83 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay82, i32 0, i32 0, !dbg !270
  %gp_offset84 = load i32, ptr %gp_offset_p83, align 16, !dbg !270
  %fits_in_gp85 = icmp ule i32 %gp_offset84, 40, !dbg !270
  br i1 %fits_in_gp85, label %vaarg.in_reg86, label %vaarg.in_mem88, !dbg !270

vaarg.in_reg86:                                   ; preds = %if.end81
  %50 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay82, i32 0, i32 3, !dbg !270
  %reg_save_area87 = load ptr, ptr %50, align 16, !dbg !270
  %51 = getelementptr i8, ptr %reg_save_area87, i32 %gp_offset84, !dbg !270
  %52 = add i32 %gp_offset84, 8, !dbg !270
  store i32 %52, ptr %gp_offset_p83, align 16, !dbg !270
  br label %vaarg.end92, !dbg !270

vaarg.in_mem88:                                   ; preds = %if.end81
  %overflow_arg_area_p89 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay82, i32 0, i32 2, !dbg !270
  %overflow_arg_area90 = load ptr, ptr %overflow_arg_area_p89, align 8, !dbg !270
  %overflow_arg_area.next91 = getelementptr i8, ptr %overflow_arg_area90, i32 8, !dbg !270
  store ptr %overflow_arg_area.next91, ptr %overflow_arg_area_p89, align 8, !dbg !270
  br label %vaarg.end92, !dbg !270

vaarg.end92:                                      ; preds = %vaarg.in_mem88, %vaarg.in_reg86
  %vaarg.addr93 = phi ptr [ %51, %vaarg.in_reg86 ], [ %overflow_arg_area90, %vaarg.in_mem88 ], !dbg !270
  %53 = load ptr, ptr %vaarg.addr93, align 8, !dbg !270
  store ptr %53, ptr %s, align 8, !dbg !271
  %54 = load ptr, ptr %s, align 8, !dbg !272
  %tobool94 = icmp ne ptr %54, null, !dbg !272
  br i1 %tobool94, label %if.else98, label %if.then95, !dbg !273

if.then95:                                        ; preds = %vaarg.end92
  %55 = load i32, ptr %precision, align 4, !dbg !274
  %cmp96 = icmp slt i32 %55, 6, !dbg !275
  %56 = zext i1 %cmp96 to i64, !dbg !274
  %cond = select i1 %cmp96, ptr @.str, ptr @.str.1, !dbg !274
  store ptr %cond, ptr %s, align 8, !dbg !276
  br label %if.end107, !dbg !277

if.else98:                                        ; preds = %vaarg.end92
  %57 = load i32, ptr %qualifier, align 4, !dbg !278
  %cmp99 = icmp eq i32 %57, 108, !dbg !279
  br i1 %cmp99, label %if.then101, label %if.end106, !dbg !280

if.then101:                                       ; preds = %if.else98
  br label %wstring, !dbg !281

wstring:                                          ; preds = %if.then101, %vaarg.end
  call void @llvm.dbg.label(metadata !97), !dbg !282
  %58 = load i32, ptr %flags, align 4, !dbg !283
  %or102 = or i32 %58, 128, !dbg !283
  store i32 %or102, ptr %flags, align 4, !dbg !283
  %59 = load ptr, ptr %s, align 8, !dbg !284
  %60 = load i32, ptr %precision, align 4, !dbg !285
  %conv103 = sext i32 %60 to i64, !dbg !285
  %call104 = call i64 @utf16s_utf8nlen(ptr noundef %59, i64 noundef %conv103) #7, !dbg !286
  store i64 %call104, ptr %len, align 8, !dbg !287
  %conv105 = trunc i64 %call104 to i32, !dbg !288
  store i32 %conv105, ptr %precision, align 4, !dbg !289
  br label %output, !dbg !290

if.end106:                                        ; preds = %if.else98
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.then95
  %61 = load ptr, ptr %s, align 8, !dbg !291
  %62 = load i32, ptr %precision, align 4, !dbg !292
  %conv108 = sext i32 %62 to i64, !dbg !292
  %call109 = call i64 @strnlen(ptr noundef %61, i64 noundef %conv108) #7, !dbg !293
  store i64 %call109, ptr %len, align 8, !dbg !294
  %conv110 = trunc i64 %call109 to i32, !dbg !295
  store i32 %conv110, ptr %precision, align 4, !dbg !296
  br label %output, !dbg !297

sw.bb111:                                         ; preds = %if.end48
  store i32 8, ptr %base, align 4, !dbg !298
  br label %sw.epilog, !dbg !299

sw.bb112:                                         ; preds = %if.end48
  %63 = load i32, ptr %precision, align 4, !dbg !300
  %cmp113 = icmp slt i32 %63, 0, !dbg !302
  br i1 %cmp113, label %if.then115, label %if.end116, !dbg !303

if.then115:                                       ; preds = %sw.bb112
  store i32 16, ptr %precision, align 4, !dbg !304
  br label %if.end116, !dbg !305

if.end116:                                        ; preds = %if.then115, %sw.bb112
  br label %sw.bb117, !dbg !306

sw.bb117:                                         ; preds = %if.end48, %if.end116
  %64 = load i32, ptr %flags, align 4, !dbg !307
  %or118 = or i32 %64, 32, !dbg !307
  store i32 %or118, ptr %flags, align 4, !dbg !307
  br label %sw.bb119, !dbg !308

sw.bb119:                                         ; preds = %if.end48, %sw.bb117
  store i32 16, ptr %base, align 4, !dbg !309
  br label %sw.epilog, !dbg !310

sw.bb120:                                         ; preds = %if.end48, %if.end48
  %65 = load i32, ptr %flags, align 4, !dbg !311
  %or121 = or i32 %65, 2, !dbg !311
  store i32 %or121, ptr %flags, align 4, !dbg !311
  br label %sw.bb122, !dbg !312

sw.bb122:                                         ; preds = %if.end48, %sw.bb120
  %66 = load i32, ptr %flags, align 4, !dbg !313
  %and123 = and i32 %66, -65, !dbg !313
  store i32 %and123, ptr %flags, align 4, !dbg !313
  store i32 10, ptr %base, align 4, !dbg !314
  br label %sw.epilog, !dbg !315

sw.default:                                       ; preds = %if.end48
  br label %fail, !dbg !316

sw.epilog:                                        ; preds = %sw.bb122, %sw.bb119, %sw.bb111
  %67 = load ptr, ptr %fmt.addr, align 8, !dbg !317
  %68 = load i8, ptr %67, align 1, !dbg !319
  %conv124 = sext i8 %68 to i32, !dbg !319
  %cmp125 = icmp eq i32 %conv124, 112, !dbg !320
  br i1 %cmp125, label %if.then127, label %if.else140, !dbg !321

if.then127:                                       ; preds = %sw.epilog
  %arraydecay128 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !322
  %gp_offset_p129 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay128, i32 0, i32 0, !dbg !322
  %gp_offset130 = load i32, ptr %gp_offset_p129, align 16, !dbg !322
  %fits_in_gp131 = icmp ule i32 %gp_offset130, 40, !dbg !322
  br i1 %fits_in_gp131, label %vaarg.in_reg132, label %vaarg.in_mem134, !dbg !322

vaarg.in_reg132:                                  ; preds = %if.then127
  %69 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay128, i32 0, i32 3, !dbg !322
  %reg_save_area133 = load ptr, ptr %69, align 16, !dbg !322
  %70 = getelementptr i8, ptr %reg_save_area133, i32 %gp_offset130, !dbg !322
  %71 = add i32 %gp_offset130, 8, !dbg !322
  store i32 %71, ptr %gp_offset_p129, align 16, !dbg !322
  br label %vaarg.end138, !dbg !322

vaarg.in_mem134:                                  ; preds = %if.then127
  %overflow_arg_area_p135 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay128, i32 0, i32 2, !dbg !322
  %overflow_arg_area136 = load ptr, ptr %overflow_arg_area_p135, align 8, !dbg !322
  %overflow_arg_area.next137 = getelementptr i8, ptr %overflow_arg_area136, i32 8, !dbg !322
  store ptr %overflow_arg_area.next137, ptr %overflow_arg_area_p135, align 8, !dbg !322
  br label %vaarg.end138, !dbg !322

vaarg.end138:                                     ; preds = %vaarg.in_mem134, %vaarg.in_reg132
  %vaarg.addr139 = phi ptr [ %70, %vaarg.in_reg132 ], [ %overflow_arg_area136, %vaarg.in_mem134 ], !dbg !322
  %72 = load ptr, ptr %vaarg.addr139, align 8, !dbg !322
  %73 = ptrtoint ptr %72 to i64, !dbg !324
  store i64 %73, ptr %num, align 8, !dbg !325
  br label %if.end143, !dbg !326

if.else140:                                       ; preds = %sw.epilog
  %74 = load i32, ptr %flags, align 4, !dbg !327
  %and141 = and i32 %74, 2, !dbg !329
  %75 = load i32, ptr %qualifier, align 4, !dbg !330
  %call142 = call i64 @get_number(i32 noundef %and141, i32 noundef %75, ptr noundef %args) #7, !dbg !331
  store i64 %call142, ptr %num, align 8, !dbg !332
  br label %if.end143

if.end143:                                        ; preds = %if.else140, %vaarg.end138
  %76 = load i32, ptr %flags, align 4, !dbg !333
  %call144 = call signext i8 @get_sign(ptr noundef %num, i32 noundef %76) #7, !dbg !334
  store i8 %call144, ptr %sign, align 1, !dbg !335
  %77 = load i8, ptr %sign, align 1, !dbg !336
  %tobool145 = icmp ne i8 %77, 0, !dbg !336
  br i1 %tobool145, label %if.then146, label %if.end147, !dbg !338

if.then146:                                       ; preds = %if.end143
  %78 = load i32, ptr %field_width, align 4, !dbg !339
  %dec = add nsw i32 %78, -1, !dbg !339
  store i32 %dec, ptr %field_width, align 4, !dbg !339
  br label %if.end147, !dbg !339

if.end147:                                        ; preds = %if.then146, %if.end143
  %79 = load ptr, ptr %tmp_end, align 8, !dbg !340
  %80 = load i64, ptr %num, align 8, !dbg !341
  %81 = load i32, ptr %base, align 4, !dbg !342
  %82 = load i32, ptr %flags, align 4, !dbg !343
  %and148 = and i32 %82, 32, !dbg !344
  %conv149 = trunc i32 %and148 to i8, !dbg !343
  %call150 = call ptr @number(ptr noundef %79, i64 noundef %80, i32 noundef %81, i8 noundef signext %conv149) #7, !dbg !345
  store ptr %call150, ptr %s, align 8, !dbg !346
  %83 = load ptr, ptr %tmp_end, align 8, !dbg !347
  %84 = load ptr, ptr %s, align 8, !dbg !348
  %sub.ptr.lhs.cast = ptrtoint ptr %83 to i64, !dbg !349
  %sub.ptr.rhs.cast = ptrtoint ptr %84 to i64, !dbg !349
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !349
  store i64 %sub.ptr.sub, ptr %len, align 8, !dbg !350
  %85 = load i32, ptr %precision, align 4, !dbg !351
  %cmp151 = icmp slt i32 %85, 0, !dbg !353
  br i1 %cmp151, label %if.then153, label %if.end154, !dbg !354

if.then153:                                       ; preds = %if.end147
  store i32 1, ptr %precision, align 4, !dbg !355
  br label %if.end154, !dbg !356

if.end154:                                        ; preds = %if.then153, %if.end147
  %86 = load i32, ptr %precision, align 4, !dbg !357
  %conv155 = sext i32 %86 to i64, !dbg !357
  %87 = load i64, ptr %len, align 8, !dbg !359
  %cmp156 = icmp ult i64 %conv155, %87, !dbg !360
  br i1 %cmp156, label %if.then158, label %if.end160, !dbg !361

if.then158:                                       ; preds = %if.end154
  %88 = load i64, ptr %len, align 8, !dbg !362
  %conv159 = trunc i64 %88 to i32, !dbg !362
  store i32 %conv159, ptr %precision, align 4, !dbg !363
  br label %if.end160, !dbg !364

if.end160:                                        ; preds = %if.then158, %if.end154
  %89 = load i32, ptr %flags, align 4, !dbg !365
  %and161 = and i32 %89, 64, !dbg !367
  %tobool162 = icmp ne i32 %and161, 0, !dbg !367
  br i1 %tobool162, label %if.then163, label %if.end182, !dbg !368

if.then163:                                       ; preds = %if.end160
  %90 = load i32, ptr %base, align 4, !dbg !369
  %cmp164 = icmp eq i32 %90, 8, !dbg !372
  br i1 %cmp164, label %land.lhs.true, label %if.end171, !dbg !373

land.lhs.true:                                    ; preds = %if.then163
  %91 = load i32, ptr %precision, align 4, !dbg !374
  %conv166 = sext i32 %91 to i64, !dbg !374
  %92 = load i64, ptr %len, align 8, !dbg !375
  %cmp167 = icmp eq i64 %conv166, %92, !dbg !376
  br i1 %cmp167, label %if.then169, label %if.end171, !dbg !377

if.then169:                                       ; preds = %land.lhs.true
  %93 = load i32, ptr %precision, align 4, !dbg !378
  %inc170 = add nsw i32 %93, 1, !dbg !378
  store i32 %inc170, ptr %precision, align 4, !dbg !378
  br label %if.end171, !dbg !378

if.end171:                                        ; preds = %if.then169, %land.lhs.true, %if.then163
  %94 = load i32, ptr %base, align 4, !dbg !379
  %cmp172 = icmp eq i32 %94, 16, !dbg !381
  br i1 %cmp172, label %land.lhs.true174, label %if.else179, !dbg !382

land.lhs.true174:                                 ; preds = %if.end171
  %95 = load i32, ptr %precision, align 4, !dbg !383
  %cmp175 = icmp sgt i32 %95, 0, !dbg !384
  br i1 %cmp175, label %if.then177, label %if.else179, !dbg !385

if.then177:                                       ; preds = %land.lhs.true174
  %96 = load i32, ptr %field_width, align 4, !dbg !386
  %sub178 = sub nsw i32 %96, 2, !dbg !386
  store i32 %sub178, ptr %field_width, align 4, !dbg !386
  br label %if.end181, !dbg !387

if.else179:                                       ; preds = %land.lhs.true174, %if.end171
  %97 = load i32, ptr %flags, align 4, !dbg !388
  %and180 = and i32 %97, -65, !dbg !388
  store i32 %and180, ptr %flags, align 4, !dbg !388
  br label %if.end181

if.end181:                                        ; preds = %if.else179, %if.then177
  br label %if.end182, !dbg !389

if.end182:                                        ; preds = %if.end181, %if.end160
  %98 = load i32, ptr %flags, align 4, !dbg !390
  %and183 = and i32 %98, 1, !dbg !392
  %tobool184 = icmp ne i32 %and183, 0, !dbg !392
  br i1 %tobool184, label %land.lhs.true185, label %if.end189, !dbg !393

land.lhs.true185:                                 ; preds = %if.end182
  %99 = load i32, ptr %field_width, align 4, !dbg !394
  %100 = load i32, ptr %precision, align 4, !dbg !395
  %cmp186 = icmp sgt i32 %99, %100, !dbg !396
  br i1 %cmp186, label %if.then188, label %if.end189, !dbg !397

if.then188:                                       ; preds = %land.lhs.true185
  %101 = load i32, ptr %field_width, align 4, !dbg !398
  store i32 %101, ptr %precision, align 4, !dbg !399
  br label %if.end189, !dbg !400

if.end189:                                        ; preds = %if.then188, %land.lhs.true185, %if.end182
  br label %output, !dbg !395

output:                                           ; preds = %if.end189, %if.end107, %wstring, %if.end75
  call void @llvm.dbg.label(metadata !105), !dbg !401
  %102 = load i32, ptr %precision, align 4, !dbg !402
  %103 = load i32, ptr %field_width, align 4, !dbg !403
  %sub190 = sub nsw i32 %103, %102, !dbg !403
  store i32 %sub190, ptr %field_width, align 4, !dbg !403
  %104 = load i32, ptr %flags, align 4, !dbg !404
  %and191 = and i32 %104, 16, !dbg !406
  %tobool192 = icmp ne i32 %and191, 0, !dbg !406
  br i1 %tobool192, label %if.end206, label %if.then193, !dbg !407

if.then193:                                       ; preds = %output
  br label %while.cond, !dbg !408

while.cond:                                       ; preds = %do.end205, %if.then193
  %105 = load i32, ptr %field_width, align 4, !dbg !409
  %dec194 = add nsw i32 %105, -1, !dbg !409
  store i32 %dec194, ptr %field_width, align 4, !dbg !409
  %cmp195 = icmp sgt i32 %105, 0, !dbg !410
  br i1 %cmp195, label %while.body, label %while.end, !dbg !408

while.body:                                       ; preds = %while.cond
  br label %do.body197, !dbg !411

do.body197:                                       ; preds = %while.body
  %106 = load i64, ptr %pos, align 8, !dbg !412
  %107 = load i64, ptr %size.addr, align 8, !dbg !412
  %cmp198 = icmp ult i64 %106, %107, !dbg !412
  br i1 %cmp198, label %if.then200, label %if.end202, !dbg !415

if.then200:                                       ; preds = %do.body197
  %108 = load ptr, ptr %buf.addr, align 8, !dbg !412
  %109 = load i64, ptr %pos, align 8, !dbg !412
  %arrayidx201 = getelementptr inbounds i8, ptr %108, i64 %109, !dbg !412
  store i8 32, ptr %arrayidx201, align 1, !dbg !412
  br label %if.end202, !dbg !412

if.end202:                                        ; preds = %if.then200, %do.body197
  %110 = load i64, ptr %pos, align 8, !dbg !415
  %inc203 = add i64 %110, 1, !dbg !415
  store i64 %inc203, ptr %pos, align 8, !dbg !415
  br label %do.cond204, !dbg !415

do.cond204:                                       ; preds = %if.end202
  br label %do.end205, !dbg !415

do.end205:                                        ; preds = %do.cond204
  br label %while.cond, !dbg !408, !llvm.loop !416

while.end:                                        ; preds = %while.cond
  br label %if.end206, !dbg !408

if.end206:                                        ; preds = %while.end, %output
  %111 = load i8, ptr %sign, align 1, !dbg !419
  %tobool207 = icmp ne i8 %111, 0, !dbg !419
  br i1 %tobool207, label %if.then208, label %if.end218, !dbg !421

if.then208:                                       ; preds = %if.end206
  br label %do.body209, !dbg !422

do.body209:                                       ; preds = %if.then208
  %112 = load i64, ptr %pos, align 8, !dbg !423
  %113 = load i64, ptr %size.addr, align 8, !dbg !423
  %cmp210 = icmp ult i64 %112, %113, !dbg !423
  br i1 %cmp210, label %if.then212, label %if.end214, !dbg !426

if.then212:                                       ; preds = %do.body209
  %114 = load i8, ptr %sign, align 1, !dbg !423
  %115 = load ptr, ptr %buf.addr, align 8, !dbg !423
  %116 = load i64, ptr %pos, align 8, !dbg !423
  %arrayidx213 = getelementptr inbounds i8, ptr %115, i64 %116, !dbg !423
  store i8 %114, ptr %arrayidx213, align 1, !dbg !423
  br label %if.end214, !dbg !423

if.end214:                                        ; preds = %if.then212, %do.body209
  %117 = load i64, ptr %pos, align 8, !dbg !426
  %inc215 = add i64 %117, 1, !dbg !426
  store i64 %inc215, ptr %pos, align 8, !dbg !426
  br label %do.cond216, !dbg !426

do.cond216:                                       ; preds = %if.end214
  br label %do.end217, !dbg !426

do.end217:                                        ; preds = %do.cond216
  br label %if.end218, !dbg !426

if.end218:                                        ; preds = %do.end217, %if.end206
  %118 = load i32, ptr %flags, align 4, !dbg !427
  %and219 = and i32 %118, 64, !dbg !429
  %tobool220 = icmp ne i32 %and219, 0, !dbg !429
  br i1 %tobool220, label %if.then221, label %if.end243, !dbg !430

if.then221:                                       ; preds = %if.end218
  br label %do.body222, !dbg !431

do.body222:                                       ; preds = %if.then221
  %119 = load i64, ptr %pos, align 8, !dbg !433
  %120 = load i64, ptr %size.addr, align 8, !dbg !433
  %cmp223 = icmp ult i64 %119, %120, !dbg !433
  br i1 %cmp223, label %if.then225, label %if.end227, !dbg !436

if.then225:                                       ; preds = %do.body222
  %121 = load ptr, ptr %buf.addr, align 8, !dbg !433
  %122 = load i64, ptr %pos, align 8, !dbg !433
  %arrayidx226 = getelementptr inbounds i8, ptr %121, i64 %122, !dbg !433
  store i8 48, ptr %arrayidx226, align 1, !dbg !433
  br label %if.end227, !dbg !433

if.end227:                                        ; preds = %if.then225, %do.body222
  %123 = load i64, ptr %pos, align 8, !dbg !436
  %inc228 = add i64 %123, 1, !dbg !436
  store i64 %inc228, ptr %pos, align 8, !dbg !436
  br label %do.cond229, !dbg !436

do.cond229:                                       ; preds = %if.end227
  br label %do.end230, !dbg !436

do.end230:                                        ; preds = %do.cond229
  br label %do.body231, !dbg !437

do.body231:                                       ; preds = %do.end230
  %124 = load i64, ptr %pos, align 8, !dbg !438
  %125 = load i64, ptr %size.addr, align 8, !dbg !438
  %cmp232 = icmp ult i64 %124, %125, !dbg !438
  br i1 %cmp232, label %if.then234, label %if.end239, !dbg !441

if.then234:                                       ; preds = %do.body231
  %126 = load i32, ptr %flags, align 4, !dbg !438
  %and235 = and i32 %126, 32, !dbg !438
  %or236 = or i32 88, %and235, !dbg !438
  %conv237 = trunc i32 %or236 to i8, !dbg !438
  %127 = load ptr, ptr %buf.addr, align 8, !dbg !438
  %128 = load i64, ptr %pos, align 8, !dbg !438
  %arrayidx238 = getelementptr inbounds i8, ptr %127, i64 %128, !dbg !438
  store i8 %conv237, ptr %arrayidx238, align 1, !dbg !438
  br label %if.end239, !dbg !438

if.end239:                                        ; preds = %if.then234, %do.body231
  %129 = load i64, ptr %pos, align 8, !dbg !441
  %inc240 = add i64 %129, 1, !dbg !441
  store i64 %inc240, ptr %pos, align 8, !dbg !441
  br label %do.cond241, !dbg !441

do.cond241:                                       ; preds = %if.end239
  br label %do.end242, !dbg !441

do.end242:                                        ; preds = %do.cond241
  br label %if.end243, !dbg !442

if.end243:                                        ; preds = %do.end242, %if.end218
  br label %while.cond244, !dbg !443

while.cond244:                                    ; preds = %do.end258, %if.end243
  %130 = load i32, ptr %precision, align 4, !dbg !444
  %dec245 = add nsw i32 %130, -1, !dbg !444
  store i32 %dec245, ptr %precision, align 4, !dbg !444
  %conv246 = sext i32 %130 to i64, !dbg !445
  %131 = load i64, ptr %len, align 8, !dbg !446
  %cmp247 = icmp ugt i64 %conv246, %131, !dbg !447
  br i1 %cmp247, label %while.body249, label %while.end259, !dbg !443

while.body249:                                    ; preds = %while.cond244
  br label %do.body250, !dbg !448

do.body250:                                       ; preds = %while.body249
  %132 = load i64, ptr %pos, align 8, !dbg !449
  %133 = load i64, ptr %size.addr, align 8, !dbg !449
  %cmp251 = icmp ult i64 %132, %133, !dbg !449
  br i1 %cmp251, label %if.then253, label %if.end255, !dbg !452

if.then253:                                       ; preds = %do.body250
  %134 = load ptr, ptr %buf.addr, align 8, !dbg !449
  %135 = load i64, ptr %pos, align 8, !dbg !449
  %arrayidx254 = getelementptr inbounds i8, ptr %134, i64 %135, !dbg !449
  store i8 48, ptr %arrayidx254, align 1, !dbg !449
  br label %if.end255, !dbg !449

if.end255:                                        ; preds = %if.then253, %do.body250
  %136 = load i64, ptr %pos, align 8, !dbg !452
  %inc256 = add i64 %136, 1, !dbg !452
  store i64 %inc256, ptr %pos, align 8, !dbg !452
  br label %do.cond257, !dbg !452

do.cond257:                                       ; preds = %if.end255
  br label %do.end258, !dbg !452

do.end258:                                        ; preds = %do.cond257
  br label %while.cond244, !dbg !443, !llvm.loop !453

while.end259:                                     ; preds = %while.cond244
  %137 = load i32, ptr %flags, align 4, !dbg !454
  %and260 = and i32 %137, 128, !dbg !455
  %tobool261 = icmp ne i32 %and260, 0, !dbg !455
  br i1 %tobool261, label %if.then262, label %if.else321, !dbg !456

if.then262:                                       ; preds = %while.end259
  call void @llvm.lifetime.start.p0(i64 8, ptr %ws) #6, !dbg !457
  call void @llvm.dbg.declare(metadata ptr %ws, metadata !106, metadata !DIExpression()), !dbg !458
  %138 = load ptr, ptr %s, align 8, !dbg !459
  store ptr %138, ptr %ws, align 8, !dbg !458
  br label %while.cond263, !dbg !460

while.cond263:                                    ; preds = %cleanup.cont, %cleanup, %if.then262
  %139 = load i64, ptr %len, align 8, !dbg !461
  %dec264 = add i64 %139, -1, !dbg !461
  store i64 %dec264, ptr %len, align 8, !dbg !461
  %cmp265 = icmp ugt i64 %139, 0, !dbg !462
  br i1 %cmp265, label %while.body267, label %while.end320, !dbg !460

while.body267:                                    ; preds = %while.cond263
  call void @llvm.lifetime.start.p0(i64 4, ptr %c32) #6, !dbg !463
  call void @llvm.dbg.declare(metadata ptr %c32, metadata !109, metadata !DIExpression()), !dbg !464
  %call268 = call i32 @utf16_to_utf32(ptr noundef %ws) #7, !dbg !465
  store i32 %call268, ptr %c32, align 4, !dbg !464
  call void @llvm.lifetime.start.p0(i64 8, ptr %s8) #6, !dbg !466
  call void @llvm.dbg.declare(metadata ptr %s8, metadata !113, metadata !DIExpression()), !dbg !467
  call void @llvm.lifetime.start.p0(i64 8, ptr %clen) #6, !dbg !468
  call void @llvm.dbg.declare(metadata ptr %clen, metadata !114, metadata !DIExpression()), !dbg !469
  %140 = load i32, ptr %c32, align 4, !dbg !470
  %cmp269 = icmp ult i32 %140, 128, !dbg !472
  br i1 %cmp269, label %if.then271, label %if.end282, !dbg !473

if.then271:                                       ; preds = %while.body267
  br label %do.body272, !dbg !474

do.body272:                                       ; preds = %if.then271
  %141 = load i64, ptr %pos, align 8, !dbg !476
  %142 = load i64, ptr %size.addr, align 8, !dbg !476
  %cmp273 = icmp ult i64 %141, %142, !dbg !476
  br i1 %cmp273, label %if.then275, label %if.end278, !dbg !479

if.then275:                                       ; preds = %do.body272
  %143 = load i32, ptr %c32, align 4, !dbg !476
  %conv276 = trunc i32 %143 to i8, !dbg !476
  %144 = load ptr, ptr %buf.addr, align 8, !dbg !476
  %145 = load i64, ptr %pos, align 8, !dbg !476
  %arrayidx277 = getelementptr inbounds i8, ptr %144, i64 %145, !dbg !476
  store i8 %conv276, ptr %arrayidx277, align 1, !dbg !476
  br label %if.end278, !dbg !476

if.end278:                                        ; preds = %if.then275, %do.body272
  %146 = load i64, ptr %pos, align 8, !dbg !479
  %inc279 = add i64 %146, 1, !dbg !479
  store i64 %inc279, ptr %pos, align 8, !dbg !479
  br label %do.cond280, !dbg !479

do.cond280:                                       ; preds = %if.end278
  br label %do.end281, !dbg !479

do.end281:                                        ; preds = %do.cond280
  store i32 25, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !480, !llvm.loop !481

if.end282:                                        ; preds = %while.body267
  %147 = load i32, ptr %c32, align 4, !dbg !483
  %cmp283 = icmp uge i32 %147, 2048, !dbg !484
  %conv284 = zext i1 %cmp283 to i32, !dbg !484
  %add = add nsw i32 1, %conv284, !dbg !485
  %148 = load i32, ptr %c32, align 4, !dbg !486
  %cmp285 = icmp uge i32 %148, 65536, !dbg !487
  %conv286 = zext i1 %cmp285 to i32, !dbg !487
  %add287 = add nsw i32 %add, %conv286, !dbg !488
  %conv288 = sext i32 %add287 to i64, !dbg !489
  store i64 %conv288, ptr %clen, align 8, !dbg !490
  %149 = load i64, ptr %clen, align 8, !dbg !491
  %150 = load i64, ptr %len, align 8, !dbg !492
  %sub289 = sub i64 %150, %149, !dbg !492
  store i64 %sub289, ptr %len, align 8, !dbg !492
  %151 = load ptr, ptr %buf.addr, align 8, !dbg !493
  %152 = load i64, ptr %pos, align 8, !dbg !494
  %arrayidx290 = getelementptr inbounds i8, ptr %151, i64 %152, !dbg !493
  store ptr %arrayidx290, ptr %s8, align 8, !dbg !495
  br label %do.body291, !dbg !496

do.body291:                                       ; preds = %if.end282
  %153 = load i64, ptr %pos, align 8, !dbg !497
  %154 = load i64, ptr %size.addr, align 8, !dbg !497
  %cmp292 = icmp ult i64 %153, %154, !dbg !497
  br i1 %cmp292, label %if.then294, label %if.end296, !dbg !500

if.then294:                                       ; preds = %do.body291
  %155 = load ptr, ptr %buf.addr, align 8, !dbg !497
  %156 = load i64, ptr %pos, align 8, !dbg !497
  %arrayidx295 = getelementptr inbounds i8, ptr %155, i64 %156, !dbg !497
  store i8 0, ptr %arrayidx295, align 1, !dbg !497
  br label %if.end296, !dbg !497

if.end296:                                        ; preds = %if.then294, %do.body291
  %157 = load i64, ptr %pos, align 8, !dbg !500
  %inc297 = add i64 %157, 1, !dbg !500
  store i64 %inc297, ptr %pos, align 8, !dbg !500
  br label %do.cond298, !dbg !500

do.cond298:                                       ; preds = %if.end296
  br label %do.end299, !dbg !500

do.end299:                                        ; preds = %do.cond298
  %158 = load i64, ptr %clen, align 8, !dbg !501
  %159 = load i64, ptr %pos, align 8, !dbg !502
  %add300 = add i64 %159, %158, !dbg !502
  store i64 %add300, ptr %pos, align 8, !dbg !502
  %160 = load i64, ptr %pos, align 8, !dbg !503
  %161 = load i64, ptr %size.addr, align 8, !dbg !505
  %cmp301 = icmp uge i64 %160, %161, !dbg !506
  br i1 %cmp301, label %if.then303, label %if.end304, !dbg !507

if.then303:                                       ; preds = %do.end299
  store i32 25, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !508, !llvm.loop !481

if.end304:                                        ; preds = %do.end299
  %162 = load i64, ptr %clen, align 8, !dbg !509
  %sh_prom = trunc i64 %162 to i32, !dbg !510
  %shr = ashr i32 1920, %sh_prom, !dbg !510
  %conv305 = trunc i32 %shr to i8, !dbg !511
  %163 = load ptr, ptr %s8, align 8, !dbg !512
  store i8 %conv305, ptr %163, align 1, !dbg !513
  %164 = load i64, ptr %clen, align 8, !dbg !514
  %165 = load ptr, ptr %s8, align 8, !dbg !516
  %add.ptr = getelementptr inbounds i8, ptr %165, i64 %164, !dbg !516
  store ptr %add.ptr, ptr %s8, align 8, !dbg !516
  br label %for.cond306, !dbg !517

for.cond306:                                      ; preds = %for.inc, %if.end304
  %166 = load i64, ptr %clen, align 8, !dbg !518
  %tobool307 = icmp ne i64 %166, 0, !dbg !520
  br i1 %tobool307, label %for.body308, label %for.end, !dbg !520

for.body308:                                      ; preds = %for.cond306
  %167 = load i32, ptr %c32, align 4, !dbg !521
  %and309 = and i32 %167, 63, !dbg !522
  %or310 = or i32 128, %and309, !dbg !523
  %conv311 = trunc i32 %or310 to i8, !dbg !524
  %168 = load ptr, ptr %s8, align 8, !dbg !525
  %incdec.ptr312 = getelementptr inbounds i8, ptr %168, i32 -1, !dbg !525
  store ptr %incdec.ptr312, ptr %s8, align 8, !dbg !525
  store i8 %conv311, ptr %168, align 1, !dbg !526
  br label %for.inc, !dbg !527

for.inc:                                          ; preds = %for.body308
  %169 = load i64, ptr %clen, align 8, !dbg !528
  %dec313 = add i64 %169, -1, !dbg !528
  store i64 %dec313, ptr %clen, align 8, !dbg !528
  %170 = load i32, ptr %c32, align 4, !dbg !529
  %shr314 = lshr i32 %170, 6, !dbg !529
  store i32 %shr314, ptr %c32, align 4, !dbg !529
  br label %for.cond306, !dbg !530, !llvm.loop !531

for.end:                                          ; preds = %for.cond306
  %171 = load i32, ptr %c32, align 4, !dbg !533
  %172 = load ptr, ptr %s8, align 8, !dbg !534
  %173 = load i8, ptr %172, align 1, !dbg !535
  %conv315 = zext i8 %173 to i32, !dbg !535
  %or316 = or i32 %conv315, %171, !dbg !535
  %conv317 = trunc i32 %or316 to i8, !dbg !535
  store i8 %conv317, ptr %172, align 1, !dbg !535
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !482
  br label %cleanup, !dbg !482

cleanup:                                          ; preds = %for.end, %if.then303, %do.end281
  call void @llvm.lifetime.end.p0(i64 8, ptr %clen) #6, !dbg !482
  call void @llvm.lifetime.end.p0(i64 8, ptr %s8) #6, !dbg !482
  call void @llvm.lifetime.end.p0(i64 4, ptr %c32) #6, !dbg !482
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 25, label %while.cond263
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond263, !dbg !460, !llvm.loop !481

while.end320:                                     ; preds = %while.cond263
  call void @llvm.lifetime.end.p0(i64 8, ptr %ws) #6, !dbg !536
  br label %if.end338, !dbg !537

if.else321:                                       ; preds = %while.end259
  br label %while.cond322, !dbg !538

while.cond322:                                    ; preds = %do.end336, %if.else321
  %174 = load i64, ptr %len, align 8, !dbg !540
  %dec323 = add i64 %174, -1, !dbg !540
  store i64 %dec323, ptr %len, align 8, !dbg !540
  %cmp324 = icmp ugt i64 %174, 0, !dbg !541
  br i1 %cmp324, label %while.body326, label %while.end337, !dbg !538

while.body326:                                    ; preds = %while.cond322
  br label %do.body327, !dbg !542

do.body327:                                       ; preds = %while.body326
  %175 = load i64, ptr %pos, align 8, !dbg !543
  %176 = load i64, ptr %size.addr, align 8, !dbg !543
  %cmp328 = icmp ult i64 %175, %176, !dbg !543
  br i1 %cmp328, label %if.then330, label %if.end333, !dbg !546

if.then330:                                       ; preds = %do.body327
  %177 = load ptr, ptr %s, align 8, !dbg !543
  %incdec.ptr331 = getelementptr inbounds i8, ptr %177, i32 1, !dbg !543
  store ptr %incdec.ptr331, ptr %s, align 8, !dbg !543
  %178 = load i8, ptr %177, align 1, !dbg !543
  %179 = load ptr, ptr %buf.addr, align 8, !dbg !543
  %180 = load i64, ptr %pos, align 8, !dbg !543
  %arrayidx332 = getelementptr inbounds i8, ptr %179, i64 %180, !dbg !543
  store i8 %178, ptr %arrayidx332, align 1, !dbg !543
  br label %if.end333, !dbg !543

if.end333:                                        ; preds = %if.then330, %do.body327
  %181 = load i64, ptr %pos, align 8, !dbg !546
  %inc334 = add i64 %181, 1, !dbg !546
  store i64 %inc334, ptr %pos, align 8, !dbg !546
  br label %do.cond335, !dbg !546

do.cond335:                                       ; preds = %if.end333
  br label %do.end336, !dbg !546

do.end336:                                        ; preds = %do.cond335
  br label %while.cond322, !dbg !538, !llvm.loop !547

while.end337:                                     ; preds = %while.cond322
  br label %if.end338

if.end338:                                        ; preds = %while.end337, %while.end320
  br label %while.cond339, !dbg !548

while.cond339:                                    ; preds = %do.end352, %if.end338
  %182 = load i32, ptr %field_width, align 4, !dbg !549
  %dec340 = add nsw i32 %182, -1, !dbg !549
  store i32 %dec340, ptr %field_width, align 4, !dbg !549
  %cmp341 = icmp sgt i32 %182, 0, !dbg !550
  br i1 %cmp341, label %while.body343, label %while.end353, !dbg !548

while.body343:                                    ; preds = %while.cond339
  br label %do.body344, !dbg !551

do.body344:                                       ; preds = %while.body343
  %183 = load i64, ptr %pos, align 8, !dbg !552
  %184 = load i64, ptr %size.addr, align 8, !dbg !552
  %cmp345 = icmp ult i64 %183, %184, !dbg !552
  br i1 %cmp345, label %if.then347, label %if.end349, !dbg !555

if.then347:                                       ; preds = %do.body344
  %185 = load ptr, ptr %buf.addr, align 8, !dbg !552
  %186 = load i64, ptr %pos, align 8, !dbg !552
  %arrayidx348 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !552
  store i8 32, ptr %arrayidx348, align 1, !dbg !552
  br label %if.end349, !dbg !552

if.end349:                                        ; preds = %if.then347, %do.body344
  %187 = load i64, ptr %pos, align 8, !dbg !555
  %inc350 = add i64 %187, 1, !dbg !555
  store i64 %inc350, ptr %pos, align 8, !dbg !555
  br label %do.cond351, !dbg !555

do.cond351:                                       ; preds = %if.end349
  br label %do.end352, !dbg !555

do.end352:                                        ; preds = %do.cond351
  br label %while.cond339, !dbg !548, !llvm.loop !556

while.end353:                                     ; preds = %while.cond339
  br label %for.inc354, !dbg !557

for.inc354:                                       ; preds = %while.end353, %do.end
  %188 = load ptr, ptr %fmt.addr, align 8, !dbg !558
  %incdec.ptr355 = getelementptr inbounds i8, ptr %188, i32 1, !dbg !558
  store ptr %incdec.ptr355, ptr %fmt.addr, align 8, !dbg !558
  br label %for.cond, !dbg !559, !llvm.loop !560

for.end356:                                       ; preds = %for.cond
  br label %fail, !dbg !561

fail:                                             ; preds = %for.end356, %sw.default
  call void @llvm.dbg.label(metadata !115), !dbg !562
  %arraydecay357 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !563
  call void @llvm.va_end(ptr %arraydecay357), !dbg !563
  %189 = load i64, ptr %size.addr, align 8, !dbg !564
  %tobool358 = icmp ne i64 %189, 0, !dbg !564
  br i1 %tobool358, label %if.then359, label %if.end366, !dbg !565

if.then359:                                       ; preds = %fail
  %190 = load ptr, ptr %buf.addr, align 8, !dbg !566
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x4) #6, !dbg !567
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x4, metadata !116, metadata !DIExpression()), !dbg !567
  %191 = load i64, ptr %pos, align 8, !dbg !567
  store i64 %191, ptr %__UNIQUE_ID___x4, align 8, !dbg !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y5) #6, !dbg !567
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y5, metadata !119, metadata !DIExpression()), !dbg !567
  %192 = load i64, ptr %size.addr, align 8, !dbg !567
  %sub360 = sub i64 %192, 1, !dbg !567
  store i64 %sub360, ptr %__UNIQUE_ID___y5, align 8, !dbg !567
  %193 = load i64, ptr %__UNIQUE_ID___x4, align 8, !dbg !567
  %194 = load i64, ptr %__UNIQUE_ID___y5, align 8, !dbg !567
  %cmp362 = icmp ult i64 %193, %194, !dbg !567
  br i1 %cmp362, label %cond.true, label %cond.false, !dbg !567

cond.true:                                        ; preds = %if.then359
  %195 = load i64, ptr %__UNIQUE_ID___x4, align 8, !dbg !567
  br label %cond.end, !dbg !567

cond.false:                                       ; preds = %if.then359
  %196 = load i64, ptr %__UNIQUE_ID___y5, align 8, !dbg !567
  br label %cond.end, !dbg !567

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond364 = phi i64 [ %195, %cond.true ], [ %196, %cond.false ], !dbg !567
  store i64 %cond364, ptr %tmp361, align 8, !dbg !567
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y5) #6, !dbg !568
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x4) #6, !dbg !568
  %197 = load i64, ptr %tmp361, align 8, !dbg !567
  %arrayidx365 = getelementptr inbounds i8, ptr %190, i64 %197, !dbg !566
  store i8 0, ptr %arrayidx365, align 1, !dbg !569
  br label %if.end366, !dbg !566

if.end366:                                        ; preds = %cond.end, %fail
  %198 = load i64, ptr %pos, align 8, !dbg !570
  %conv367 = trunc i64 %198 to i32, !dbg !570
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #6, !dbg !571
  call void @llvm.lifetime.end.p0(i64 4, ptr %qualifier) #6, !dbg !571
  call void @llvm.lifetime.end.p0(i64 4, ptr %precision) #6, !dbg !571
  call void @llvm.lifetime.end.p0(i64 4, ptr %field_width) #6, !dbg !571
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #6, !dbg !571
  call void @llvm.lifetime.end.p0(i64 1, ptr %sign) #6, !dbg !571
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #6, !dbg !571
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #6, !dbg !571
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #6, !dbg !571
  call void @llvm.lifetime.end.p0(i64 4, ptr %base) #6, !dbg !571
  call void @llvm.lifetime.end.p0(i64 8, ptr %num) #6, !dbg !571
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp_end) #6, !dbg !571
  call void @llvm.lifetime.end.p0(i64 22, ptr %tmp) #6, !dbg !571
  ret i32 %conv367, !dbg !572

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy(ptr, ptr) #3

; Function Attrs: noredzone nounwind
define internal i32 @get_flags(ptr noundef %fmt) #0 !dbg !573 {
entry:
  %retval = alloca i32, align 4
  %fmt.addr = alloca ptr, align 8
  %flags = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !578, metadata !DIExpression()), !dbg !580
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #6, !dbg !581
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !579, metadata !DIExpression()), !dbg !582
  store i32 0, ptr %flags, align 4, !dbg !582
  br label %do.body, !dbg !583

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %fmt.addr, align 8, !dbg !584
  %1 = load ptr, ptr %0, align 8, !dbg !586
  %2 = load i8, ptr %1, align 1, !dbg !587
  %conv = sext i8 %2 to i32, !dbg !587
  switch i32 %conv, label %sw.default [
    i32 45, label %sw.bb
    i32 43, label %sw.bb1
    i32 32, label %sw.bb3
    i32 35, label %sw.bb5
    i32 48, label %sw.bb7
  ], !dbg !588

sw.bb:                                            ; preds = %do.body
  %3 = load i32, ptr %flags, align 4, !dbg !589
  %or = or i32 %3, 16, !dbg !589
  store i32 %or, ptr %flags, align 4, !dbg !589
  br label %sw.epilog, !dbg !591

sw.bb1:                                           ; preds = %do.body
  %4 = load i32, ptr %flags, align 4, !dbg !592
  %or2 = or i32 %4, 4, !dbg !592
  store i32 %or2, ptr %flags, align 4, !dbg !592
  br label %sw.epilog, !dbg !593

sw.bb3:                                           ; preds = %do.body
  %5 = load i32, ptr %flags, align 4, !dbg !594
  %or4 = or i32 %5, 8, !dbg !594
  store i32 %or4, ptr %flags, align 4, !dbg !594
  br label %sw.epilog, !dbg !595

sw.bb5:                                           ; preds = %do.body
  %6 = load i32, ptr %flags, align 4, !dbg !596
  %or6 = or i32 %6, 64, !dbg !596
  store i32 %or6, ptr %flags, align 4, !dbg !596
  br label %sw.epilog, !dbg !597

sw.bb7:                                           ; preds = %do.body
  %7 = load i32, ptr %flags, align 4, !dbg !598
  %or8 = or i32 %7, 1, !dbg !598
  store i32 %or8, ptr %flags, align 4, !dbg !598
  br label %sw.epilog, !dbg !599

sw.default:                                       ; preds = %do.body
  %8 = load i32, ptr %flags, align 4, !dbg !600
  store i32 %8, ptr %retval, align 4, !dbg !601
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !601

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %9 = load ptr, ptr %fmt.addr, align 8, !dbg !602
  %10 = load ptr, ptr %9, align 8, !dbg !603
  %incdec.ptr = getelementptr inbounds i8, ptr %10, i32 1, !dbg !603
  store ptr %incdec.ptr, ptr %9, align 8, !dbg !603
  br label %do.cond, !dbg !604

do.cond:                                          ; preds = %sw.epilog
  br i1 true, label %do.body, label %do.end, !dbg !604, !llvm.loop !605

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !607
  br label %cleanup, !dbg !607

cleanup:                                          ; preds = %do.end, %sw.default
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #6, !dbg !607
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  %11 = load i32, ptr %retval, align 4, !dbg !607
  ret i32 %11, !dbg !607

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone nounwind
define internal i32 @get_int(ptr noundef %fmt, ptr noundef %ap) #0 !dbg !608 {
entry:
  %retval = alloca i32, align 4
  %fmt.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !613, metadata !DIExpression()), !dbg !615
  store ptr %ap, ptr %ap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ap.addr, metadata !614, metadata !DIExpression()), !dbg !616
  %0 = load ptr, ptr %fmt.addr, align 8, !dbg !617
  %1 = load ptr, ptr %0, align 8, !dbg !619
  %2 = load i8, ptr %1, align 1, !dbg !620
  %conv = sext i8 %2 to i32, !dbg !620
  %call = call i32 @isdigit(i32 noundef %conv) #7, !dbg !621
  %tobool = icmp ne i32 %call, 0, !dbg !621
  br i1 %tobool, label %if.then, label %if.end, !dbg !622

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %fmt.addr, align 8, !dbg !623
  %call1 = call i32 @skip_atoi(ptr noundef %3) #7, !dbg !624
  store i32 %call1, ptr %retval, align 4, !dbg !625
  br label %return, !dbg !625

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %fmt.addr, align 8, !dbg !626
  %5 = load ptr, ptr %4, align 8, !dbg !628
  %6 = load i8, ptr %5, align 1, !dbg !629
  %conv2 = sext i8 %6 to i32, !dbg !629
  %cmp = icmp eq i32 %conv2, 42, !dbg !630
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !631

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %fmt.addr, align 8, !dbg !632
  %8 = load ptr, ptr %7, align 8, !dbg !634
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1, !dbg !634
  store ptr %incdec.ptr, ptr %7, align 8, !dbg !634
  %9 = load ptr, ptr %ap.addr, align 8, !dbg !635
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %9, i64 0, i64 0, !dbg !635
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay, i32 0, i32 0, !dbg !635
  %gp_offset = load i32, ptr %gp_offset_p, align 8, !dbg !635
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !635
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !635

vaarg.in_reg:                                     ; preds = %if.then4
  %10 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay, i32 0, i32 3, !dbg !635
  %reg_save_area = load ptr, ptr %10, align 8, !dbg !635
  %11 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset, !dbg !635
  %12 = add i32 %gp_offset, 8, !dbg !635
  store i32 %12, ptr %gp_offset_p, align 8, !dbg !635
  br label %vaarg.end, !dbg !635

vaarg.in_mem:                                     ; preds = %if.then4
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay, i32 0, i32 2, !dbg !635
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8, !dbg !635
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8, !dbg !635
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8, !dbg !635
  br label %vaarg.end, !dbg !635

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %11, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ], !dbg !635
  %13 = load i32, ptr %vaarg.addr, align 4, !dbg !635
  store i32 %13, ptr %retval, align 4, !dbg !636
  br label %return, !dbg !636

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !637
  br label %return, !dbg !637

return:                                           ; preds = %if.end5, %vaarg.end, %if.then
  %14 = load i32, ptr %retval, align 4, !dbg !638
  ret i32 %14, !dbg !638
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone nounwind
define internal i64 @utf16s_utf8nlen(ptr noundef %s16, i64 noundef %maxlen) #0 !dbg !639 {
entry:
  %s16.addr = alloca ptr, align 8
  %maxlen.addr = alloca i64, align 8
  %len = alloca i64, align 8
  %clen = alloca i64, align 8
  %c0 = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s16, ptr %s16.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s16.addr, metadata !643, metadata !DIExpression()), !dbg !651
  store i64 %maxlen, ptr %maxlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxlen.addr, metadata !644, metadata !DIExpression()), !dbg !652
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #6, !dbg !653
  call void @llvm.dbg.declare(metadata ptr %len, metadata !645, metadata !DIExpression()), !dbg !654
  call void @llvm.lifetime.start.p0(i64 8, ptr %clen) #6, !dbg !653
  call void @llvm.dbg.declare(metadata ptr %clen, metadata !646, metadata !DIExpression()), !dbg !655
  store i64 0, ptr %len, align 8, !dbg !656
  br label %for.cond, !dbg !657

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %len, align 8, !dbg !658
  %1 = load i64, ptr %maxlen.addr, align 8, !dbg !659
  %cmp = icmp ult i64 %0, %1, !dbg !660
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !661

land.rhs:                                         ; preds = %for.cond
  %2 = load ptr, ptr %s16.addr, align 8, !dbg !662
  %3 = load i16, ptr %2, align 2, !dbg !663
  %conv = zext i16 %3 to i32, !dbg !663
  %tobool = icmp ne i32 %conv, 0, !dbg !661
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ], !dbg !664
  br i1 %4, label %for.body, label %for.end, !dbg !665

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 2, ptr %c0) #6, !dbg !666
  call void @llvm.dbg.declare(metadata ptr %c0, metadata !647, metadata !DIExpression()), !dbg !667
  %5 = load ptr, ptr %s16.addr, align 8, !dbg !668
  %incdec.ptr = getelementptr inbounds i16, ptr %5, i32 1, !dbg !668
  store ptr %incdec.ptr, ptr %s16.addr, align 8, !dbg !668
  %6 = load i16, ptr %5, align 2, !dbg !669
  store i16 %6, ptr %c0, align 2, !dbg !667
  %7 = load i16, ptr %c0, align 2, !dbg !670
  %conv1 = zext i16 %7 to i32, !dbg !670
  %cmp2 = icmp sge i32 %conv1, 128, !dbg !671
  %conv3 = zext i1 %cmp2 to i32, !dbg !671
  %add = add nsw i32 1, %conv3, !dbg !672
  %8 = load i16, ptr %c0, align 2, !dbg !673
  %conv4 = zext i16 %8 to i32, !dbg !673
  %cmp5 = icmp sge i32 %conv4, 2048, !dbg !674
  %conv6 = zext i1 %cmp5 to i32, !dbg !674
  %add7 = add nsw i32 %add, %conv6, !dbg !675
  %conv8 = sext i32 %add7 to i64, !dbg !676
  store i64 %conv8, ptr %clen, align 8, !dbg !677
  %9 = load i64, ptr %len, align 8, !dbg !678
  %10 = load i64, ptr %clen, align 8, !dbg !680
  %add9 = add i64 %9, %10, !dbg !681
  %11 = load i64, ptr %maxlen.addr, align 8, !dbg !682
  %cmp10 = icmp ugt i64 %add9, %11, !dbg !683
  br i1 %cmp10, label %if.then, label %if.end, !dbg !684

if.then:                                          ; preds = %for.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !685

if.end:                                           ; preds = %for.body
  %12 = load i16, ptr %c0, align 2, !dbg !686
  %conv12 = zext i16 %12 to i32, !dbg !686
  %and = and i32 %conv12, 64512, !dbg !688
  %cmp13 = icmp eq i32 %and, 55296, !dbg !689
  br i1 %cmp13, label %if.then15, label %if.end28, !dbg !690

if.then15:                                        ; preds = %if.end
  %13 = load i64, ptr %len, align 8, !dbg !691
  %14 = load i64, ptr %clen, align 8, !dbg !694
  %add16 = add i64 %13, %14, !dbg !695
  %15 = load i64, ptr %maxlen.addr, align 8, !dbg !696
  %cmp17 = icmp eq i64 %add16, %15, !dbg !697
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !698

if.then19:                                        ; preds = %if.then15
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !699

if.end20:                                         ; preds = %if.then15
  %16 = load ptr, ptr %s16.addr, align 8, !dbg !700
  %17 = load i16, ptr %16, align 2, !dbg !702
  %conv21 = zext i16 %17 to i32, !dbg !702
  %and22 = and i32 %conv21, 64512, !dbg !703
  %cmp23 = icmp eq i32 %and22, 56320, !dbg !704
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !705

if.then25:                                        ; preds = %if.end20
  %18 = load ptr, ptr %s16.addr, align 8, !dbg !706
  %incdec.ptr26 = getelementptr inbounds i16, ptr %18, i32 1, !dbg !706
  store ptr %incdec.ptr26, ptr %s16.addr, align 8, !dbg !706
  %19 = load i64, ptr %clen, align 8, !dbg !708
  %inc = add i64 %19, 1, !dbg !708
  store i64 %inc, ptr %clen, align 8, !dbg !708
  br label %if.end27, !dbg !709

if.end27:                                         ; preds = %if.then25, %if.end20
  br label %if.end28, !dbg !710

if.end28:                                         ; preds = %if.end27, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !711
  br label %cleanup, !dbg !711

cleanup:                                          ; preds = %if.end28, %if.then19, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %c0) #6, !dbg !711
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !712

for.inc:                                          ; preds = %cleanup.cont
  %20 = load i64, ptr %clen, align 8, !dbg !713
  %21 = load i64, ptr %len, align 8, !dbg !714
  %add29 = add i64 %21, %20, !dbg !714
  store i64 %add29, ptr %len, align 8, !dbg !714
  br label %for.cond, !dbg !715, !llvm.loop !716

for.end:                                          ; preds = %cleanup, %land.end
  %22 = load i64, ptr %len, align 8, !dbg !718
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %clen) #6, !dbg !719
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #6, !dbg !719
  ret i64 %22, !dbg !720

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone
declare !dbg !721 hidden i64 @strnlen(ptr noundef, i64 noundef) #4

; Function Attrs: noredzone nounwind
define internal i64 @get_number(i32 noundef %sign, i32 noundef %qualifier, ptr noundef %ap) #0 !dbg !725 {
entry:
  %retval = alloca i64, align 8
  %sign.addr = alloca i32, align 4
  %qualifier.addr = alloca i32, align 4
  %ap.addr = alloca ptr, align 8
  store i32 %sign, ptr %sign.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sign.addr, metadata !729, metadata !DIExpression()), !dbg !732
  store i32 %qualifier, ptr %qualifier.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %qualifier.addr, metadata !730, metadata !DIExpression()), !dbg !733
  store ptr %ap, ptr %ap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ap.addr, metadata !731, metadata !DIExpression()), !dbg !734
  %0 = load i32, ptr %sign.addr, align 4, !dbg !735
  %tobool = icmp ne i32 %0, 0, !dbg !735
  br i1 %tobool, label %if.then, label %if.else, !dbg !737

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %qualifier.addr, align 4, !dbg !738
  switch i32 %1, label %sw.default [
    i32 76, label %sw.bb
    i32 108, label %sw.bb1
    i32 104, label %sw.bb14
    i32 72, label %sw.bb28
  ], !dbg !740

sw.bb:                                            ; preds = %if.then
  %2 = load ptr, ptr %ap.addr, align 8, !dbg !741
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %2, i64 0, i64 0, !dbg !741
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay, i32 0, i32 0, !dbg !741
  %gp_offset = load i32, ptr %gp_offset_p, align 8, !dbg !741
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !741
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !741

vaarg.in_reg:                                     ; preds = %sw.bb
  %3 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay, i32 0, i32 3, !dbg !741
  %reg_save_area = load ptr, ptr %3, align 8, !dbg !741
  %4 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset, !dbg !741
  %5 = add i32 %gp_offset, 8, !dbg !741
  store i32 %5, ptr %gp_offset_p, align 8, !dbg !741
  br label %vaarg.end, !dbg !741

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay, i32 0, i32 2, !dbg !741
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8, !dbg !741
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8, !dbg !741
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8, !dbg !741
  br label %vaarg.end, !dbg !741

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %4, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ], !dbg !741
  %6 = load i64, ptr %vaarg.addr, align 8, !dbg !741
  store i64 %6, ptr %retval, align 8, !dbg !743
  br label %return, !dbg !743

sw.bb1:                                           ; preds = %if.then
  %7 = load ptr, ptr %ap.addr, align 8, !dbg !744
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %7, i64 0, i64 0, !dbg !744
  %gp_offset_p3 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay2, i32 0, i32 0, !dbg !744
  %gp_offset4 = load i32, ptr %gp_offset_p3, align 8, !dbg !744
  %fits_in_gp5 = icmp ule i32 %gp_offset4, 40, !dbg !744
  br i1 %fits_in_gp5, label %vaarg.in_reg6, label %vaarg.in_mem8, !dbg !744

vaarg.in_reg6:                                    ; preds = %sw.bb1
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay2, i32 0, i32 3, !dbg !744
  %reg_save_area7 = load ptr, ptr %8, align 8, !dbg !744
  %9 = getelementptr i8, ptr %reg_save_area7, i32 %gp_offset4, !dbg !744
  %10 = add i32 %gp_offset4, 8, !dbg !744
  store i32 %10, ptr %gp_offset_p3, align 8, !dbg !744
  br label %vaarg.end12, !dbg !744

vaarg.in_mem8:                                    ; preds = %sw.bb1
  %overflow_arg_area_p9 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay2, i32 0, i32 2, !dbg !744
  %overflow_arg_area10 = load ptr, ptr %overflow_arg_area_p9, align 8, !dbg !744
  %overflow_arg_area.next11 = getelementptr i8, ptr %overflow_arg_area10, i32 8, !dbg !744
  store ptr %overflow_arg_area.next11, ptr %overflow_arg_area_p9, align 8, !dbg !744
  br label %vaarg.end12, !dbg !744

vaarg.end12:                                      ; preds = %vaarg.in_mem8, %vaarg.in_reg6
  %vaarg.addr13 = phi ptr [ %9, %vaarg.in_reg6 ], [ %overflow_arg_area10, %vaarg.in_mem8 ], !dbg !744
  %11 = load i64, ptr %vaarg.addr13, align 8, !dbg !744
  store i64 %11, ptr %retval, align 8, !dbg !745
  br label %return, !dbg !745

sw.bb14:                                          ; preds = %if.then
  %12 = load ptr, ptr %ap.addr, align 8, !dbg !746
  %arraydecay15 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %12, i64 0, i64 0, !dbg !746
  %gp_offset_p16 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay15, i32 0, i32 0, !dbg !746
  %gp_offset17 = load i32, ptr %gp_offset_p16, align 8, !dbg !746
  %fits_in_gp18 = icmp ule i32 %gp_offset17, 40, !dbg !746
  br i1 %fits_in_gp18, label %vaarg.in_reg19, label %vaarg.in_mem21, !dbg !746

vaarg.in_reg19:                                   ; preds = %sw.bb14
  %13 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay15, i32 0, i32 3, !dbg !746
  %reg_save_area20 = load ptr, ptr %13, align 8, !dbg !746
  %14 = getelementptr i8, ptr %reg_save_area20, i32 %gp_offset17, !dbg !746
  %15 = add i32 %gp_offset17, 8, !dbg !746
  store i32 %15, ptr %gp_offset_p16, align 8, !dbg !746
  br label %vaarg.end25, !dbg !746

vaarg.in_mem21:                                   ; preds = %sw.bb14
  %overflow_arg_area_p22 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay15, i32 0, i32 2, !dbg !746
  %overflow_arg_area23 = load ptr, ptr %overflow_arg_area_p22, align 8, !dbg !746
  %overflow_arg_area.next24 = getelementptr i8, ptr %overflow_arg_area23, i32 8, !dbg !746
  store ptr %overflow_arg_area.next24, ptr %overflow_arg_area_p22, align 8, !dbg !746
  br label %vaarg.end25, !dbg !746

vaarg.end25:                                      ; preds = %vaarg.in_mem21, %vaarg.in_reg19
  %vaarg.addr26 = phi ptr [ %14, %vaarg.in_reg19 ], [ %overflow_arg_area23, %vaarg.in_mem21 ], !dbg !746
  %16 = load i32, ptr %vaarg.addr26, align 4, !dbg !746
  %conv = trunc i32 %16 to i16, !dbg !747
  %conv27 = sext i16 %conv to i64, !dbg !747
  store i64 %conv27, ptr %retval, align 8, !dbg !748
  br label %return, !dbg !748

sw.bb28:                                          ; preds = %if.then
  %17 = load ptr, ptr %ap.addr, align 8, !dbg !749
  %arraydecay29 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %17, i64 0, i64 0, !dbg !749
  %gp_offset_p30 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay29, i32 0, i32 0, !dbg !749
  %gp_offset31 = load i32, ptr %gp_offset_p30, align 8, !dbg !749
  %fits_in_gp32 = icmp ule i32 %gp_offset31, 40, !dbg !749
  br i1 %fits_in_gp32, label %vaarg.in_reg33, label %vaarg.in_mem35, !dbg !749

vaarg.in_reg33:                                   ; preds = %sw.bb28
  %18 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay29, i32 0, i32 3, !dbg !749
  %reg_save_area34 = load ptr, ptr %18, align 8, !dbg !749
  %19 = getelementptr i8, ptr %reg_save_area34, i32 %gp_offset31, !dbg !749
  %20 = add i32 %gp_offset31, 8, !dbg !749
  store i32 %20, ptr %gp_offset_p30, align 8, !dbg !749
  br label %vaarg.end39, !dbg !749

vaarg.in_mem35:                                   ; preds = %sw.bb28
  %overflow_arg_area_p36 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay29, i32 0, i32 2, !dbg !749
  %overflow_arg_area37 = load ptr, ptr %overflow_arg_area_p36, align 8, !dbg !749
  %overflow_arg_area.next38 = getelementptr i8, ptr %overflow_arg_area37, i32 8, !dbg !749
  store ptr %overflow_arg_area.next38, ptr %overflow_arg_area_p36, align 8, !dbg !749
  br label %vaarg.end39, !dbg !749

vaarg.end39:                                      ; preds = %vaarg.in_mem35, %vaarg.in_reg33
  %vaarg.addr40 = phi ptr [ %19, %vaarg.in_reg33 ], [ %overflow_arg_area37, %vaarg.in_mem35 ], !dbg !749
  %21 = load i32, ptr %vaarg.addr40, align 4, !dbg !749
  %conv41 = trunc i32 %21 to i8, !dbg !750
  %conv42 = sext i8 %conv41 to i64, !dbg !750
  store i64 %conv42, ptr %retval, align 8, !dbg !751
  br label %return, !dbg !751

sw.default:                                       ; preds = %if.then
  %22 = load ptr, ptr %ap.addr, align 8, !dbg !752
  %arraydecay43 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %22, i64 0, i64 0, !dbg !752
  %gp_offset_p44 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay43, i32 0, i32 0, !dbg !752
  %gp_offset45 = load i32, ptr %gp_offset_p44, align 8, !dbg !752
  %fits_in_gp46 = icmp ule i32 %gp_offset45, 40, !dbg !752
  br i1 %fits_in_gp46, label %vaarg.in_reg47, label %vaarg.in_mem49, !dbg !752

vaarg.in_reg47:                                   ; preds = %sw.default
  %23 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay43, i32 0, i32 3, !dbg !752
  %reg_save_area48 = load ptr, ptr %23, align 8, !dbg !752
  %24 = getelementptr i8, ptr %reg_save_area48, i32 %gp_offset45, !dbg !752
  %25 = add i32 %gp_offset45, 8, !dbg !752
  store i32 %25, ptr %gp_offset_p44, align 8, !dbg !752
  br label %vaarg.end53, !dbg !752

vaarg.in_mem49:                                   ; preds = %sw.default
  %overflow_arg_area_p50 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay43, i32 0, i32 2, !dbg !752
  %overflow_arg_area51 = load ptr, ptr %overflow_arg_area_p50, align 8, !dbg !752
  %overflow_arg_area.next52 = getelementptr i8, ptr %overflow_arg_area51, i32 8, !dbg !752
  store ptr %overflow_arg_area.next52, ptr %overflow_arg_area_p50, align 8, !dbg !752
  br label %vaarg.end53, !dbg !752

vaarg.end53:                                      ; preds = %vaarg.in_mem49, %vaarg.in_reg47
  %vaarg.addr54 = phi ptr [ %24, %vaarg.in_reg47 ], [ %overflow_arg_area51, %vaarg.in_mem49 ], !dbg !752
  %26 = load i32, ptr %vaarg.addr54, align 4, !dbg !752
  %conv55 = sext i32 %26 to i64, !dbg !752
  store i64 %conv55, ptr %retval, align 8, !dbg !753
  br label %return, !dbg !753

if.else:                                          ; preds = %entry
  %27 = load i32, ptr %qualifier.addr, align 4, !dbg !754
  switch i32 %27, label %sw.default112 [
    i32 76, label %sw.bb56
    i32 108, label %sw.bb69
    i32 104, label %sw.bb82
    i32 72, label %sw.bb97
  ], !dbg !756

sw.bb56:                                          ; preds = %if.else
  %28 = load ptr, ptr %ap.addr, align 8, !dbg !757
  %arraydecay57 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %28, i64 0, i64 0, !dbg !757
  %gp_offset_p58 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay57, i32 0, i32 0, !dbg !757
  %gp_offset59 = load i32, ptr %gp_offset_p58, align 8, !dbg !757
  %fits_in_gp60 = icmp ule i32 %gp_offset59, 40, !dbg !757
  br i1 %fits_in_gp60, label %vaarg.in_reg61, label %vaarg.in_mem63, !dbg !757

vaarg.in_reg61:                                   ; preds = %sw.bb56
  %29 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay57, i32 0, i32 3, !dbg !757
  %reg_save_area62 = load ptr, ptr %29, align 8, !dbg !757
  %30 = getelementptr i8, ptr %reg_save_area62, i32 %gp_offset59, !dbg !757
  %31 = add i32 %gp_offset59, 8, !dbg !757
  store i32 %31, ptr %gp_offset_p58, align 8, !dbg !757
  br label %vaarg.end67, !dbg !757

vaarg.in_mem63:                                   ; preds = %sw.bb56
  %overflow_arg_area_p64 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay57, i32 0, i32 2, !dbg !757
  %overflow_arg_area65 = load ptr, ptr %overflow_arg_area_p64, align 8, !dbg !757
  %overflow_arg_area.next66 = getelementptr i8, ptr %overflow_arg_area65, i32 8, !dbg !757
  store ptr %overflow_arg_area.next66, ptr %overflow_arg_area_p64, align 8, !dbg !757
  br label %vaarg.end67, !dbg !757

vaarg.end67:                                      ; preds = %vaarg.in_mem63, %vaarg.in_reg61
  %vaarg.addr68 = phi ptr [ %30, %vaarg.in_reg61 ], [ %overflow_arg_area65, %vaarg.in_mem63 ], !dbg !757
  %32 = load i64, ptr %vaarg.addr68, align 8, !dbg !757
  store i64 %32, ptr %retval, align 8, !dbg !759
  br label %return, !dbg !759

sw.bb69:                                          ; preds = %if.else
  %33 = load ptr, ptr %ap.addr, align 8, !dbg !760
  %arraydecay70 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %33, i64 0, i64 0, !dbg !760
  %gp_offset_p71 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay70, i32 0, i32 0, !dbg !760
  %gp_offset72 = load i32, ptr %gp_offset_p71, align 8, !dbg !760
  %fits_in_gp73 = icmp ule i32 %gp_offset72, 40, !dbg !760
  br i1 %fits_in_gp73, label %vaarg.in_reg74, label %vaarg.in_mem76, !dbg !760

vaarg.in_reg74:                                   ; preds = %sw.bb69
  %34 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay70, i32 0, i32 3, !dbg !760
  %reg_save_area75 = load ptr, ptr %34, align 8, !dbg !760
  %35 = getelementptr i8, ptr %reg_save_area75, i32 %gp_offset72, !dbg !760
  %36 = add i32 %gp_offset72, 8, !dbg !760
  store i32 %36, ptr %gp_offset_p71, align 8, !dbg !760
  br label %vaarg.end80, !dbg !760

vaarg.in_mem76:                                   ; preds = %sw.bb69
  %overflow_arg_area_p77 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay70, i32 0, i32 2, !dbg !760
  %overflow_arg_area78 = load ptr, ptr %overflow_arg_area_p77, align 8, !dbg !760
  %overflow_arg_area.next79 = getelementptr i8, ptr %overflow_arg_area78, i32 8, !dbg !760
  store ptr %overflow_arg_area.next79, ptr %overflow_arg_area_p77, align 8, !dbg !760
  br label %vaarg.end80, !dbg !760

vaarg.end80:                                      ; preds = %vaarg.in_mem76, %vaarg.in_reg74
  %vaarg.addr81 = phi ptr [ %35, %vaarg.in_reg74 ], [ %overflow_arg_area78, %vaarg.in_mem76 ], !dbg !760
  %37 = load i64, ptr %vaarg.addr81, align 8, !dbg !760
  store i64 %37, ptr %retval, align 8, !dbg !761
  br label %return, !dbg !761

sw.bb82:                                          ; preds = %if.else
  %38 = load ptr, ptr %ap.addr, align 8, !dbg !762
  %arraydecay83 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %38, i64 0, i64 0, !dbg !762
  %gp_offset_p84 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay83, i32 0, i32 0, !dbg !762
  %gp_offset85 = load i32, ptr %gp_offset_p84, align 8, !dbg !762
  %fits_in_gp86 = icmp ule i32 %gp_offset85, 40, !dbg !762
  br i1 %fits_in_gp86, label %vaarg.in_reg87, label %vaarg.in_mem89, !dbg !762

vaarg.in_reg87:                                   ; preds = %sw.bb82
  %39 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay83, i32 0, i32 3, !dbg !762
  %reg_save_area88 = load ptr, ptr %39, align 8, !dbg !762
  %40 = getelementptr i8, ptr %reg_save_area88, i32 %gp_offset85, !dbg !762
  %41 = add i32 %gp_offset85, 8, !dbg !762
  store i32 %41, ptr %gp_offset_p84, align 8, !dbg !762
  br label %vaarg.end93, !dbg !762

vaarg.in_mem89:                                   ; preds = %sw.bb82
  %overflow_arg_area_p90 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay83, i32 0, i32 2, !dbg !762
  %overflow_arg_area91 = load ptr, ptr %overflow_arg_area_p90, align 8, !dbg !762
  %overflow_arg_area.next92 = getelementptr i8, ptr %overflow_arg_area91, i32 8, !dbg !762
  store ptr %overflow_arg_area.next92, ptr %overflow_arg_area_p90, align 8, !dbg !762
  br label %vaarg.end93, !dbg !762

vaarg.end93:                                      ; preds = %vaarg.in_mem89, %vaarg.in_reg87
  %vaarg.addr94 = phi ptr [ %40, %vaarg.in_reg87 ], [ %overflow_arg_area91, %vaarg.in_mem89 ], !dbg !762
  %42 = load i32, ptr %vaarg.addr94, align 4, !dbg !762
  %conv95 = trunc i32 %42 to i16, !dbg !763
  %conv96 = zext i16 %conv95 to i64, !dbg !763
  store i64 %conv96, ptr %retval, align 8, !dbg !764
  br label %return, !dbg !764

sw.bb97:                                          ; preds = %if.else
  %43 = load ptr, ptr %ap.addr, align 8, !dbg !765
  %arraydecay98 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %43, i64 0, i64 0, !dbg !765
  %gp_offset_p99 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay98, i32 0, i32 0, !dbg !765
  %gp_offset100 = load i32, ptr %gp_offset_p99, align 8, !dbg !765
  %fits_in_gp101 = icmp ule i32 %gp_offset100, 40, !dbg !765
  br i1 %fits_in_gp101, label %vaarg.in_reg102, label %vaarg.in_mem104, !dbg !765

vaarg.in_reg102:                                  ; preds = %sw.bb97
  %44 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay98, i32 0, i32 3, !dbg !765
  %reg_save_area103 = load ptr, ptr %44, align 8, !dbg !765
  %45 = getelementptr i8, ptr %reg_save_area103, i32 %gp_offset100, !dbg !765
  %46 = add i32 %gp_offset100, 8, !dbg !765
  store i32 %46, ptr %gp_offset_p99, align 8, !dbg !765
  br label %vaarg.end108, !dbg !765

vaarg.in_mem104:                                  ; preds = %sw.bb97
  %overflow_arg_area_p105 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay98, i32 0, i32 2, !dbg !765
  %overflow_arg_area106 = load ptr, ptr %overflow_arg_area_p105, align 8, !dbg !765
  %overflow_arg_area.next107 = getelementptr i8, ptr %overflow_arg_area106, i32 8, !dbg !765
  store ptr %overflow_arg_area.next107, ptr %overflow_arg_area_p105, align 8, !dbg !765
  br label %vaarg.end108, !dbg !765

vaarg.end108:                                     ; preds = %vaarg.in_mem104, %vaarg.in_reg102
  %vaarg.addr109 = phi ptr [ %45, %vaarg.in_reg102 ], [ %overflow_arg_area106, %vaarg.in_mem104 ], !dbg !765
  %47 = load i32, ptr %vaarg.addr109, align 4, !dbg !765
  %conv110 = trunc i32 %47 to i8, !dbg !766
  %conv111 = zext i8 %conv110 to i64, !dbg !766
  store i64 %conv111, ptr %retval, align 8, !dbg !767
  br label %return, !dbg !767

sw.default112:                                    ; preds = %if.else
  %48 = load ptr, ptr %ap.addr, align 8, !dbg !768
  %arraydecay113 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %48, i64 0, i64 0, !dbg !768
  %gp_offset_p114 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay113, i32 0, i32 0, !dbg !768
  %gp_offset115 = load i32, ptr %gp_offset_p114, align 8, !dbg !768
  %fits_in_gp116 = icmp ule i32 %gp_offset115, 40, !dbg !768
  br i1 %fits_in_gp116, label %vaarg.in_reg117, label %vaarg.in_mem119, !dbg !768

vaarg.in_reg117:                                  ; preds = %sw.default112
  %49 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay113, i32 0, i32 3, !dbg !768
  %reg_save_area118 = load ptr, ptr %49, align 8, !dbg !768
  %50 = getelementptr i8, ptr %reg_save_area118, i32 %gp_offset115, !dbg !768
  %51 = add i32 %gp_offset115, 8, !dbg !768
  store i32 %51, ptr %gp_offset_p114, align 8, !dbg !768
  br label %vaarg.end123, !dbg !768

vaarg.in_mem119:                                  ; preds = %sw.default112
  %overflow_arg_area_p120 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay113, i32 0, i32 2, !dbg !768
  %overflow_arg_area121 = load ptr, ptr %overflow_arg_area_p120, align 8, !dbg !768
  %overflow_arg_area.next122 = getelementptr i8, ptr %overflow_arg_area121, i32 8, !dbg !768
  store ptr %overflow_arg_area.next122, ptr %overflow_arg_area_p120, align 8, !dbg !768
  br label %vaarg.end123, !dbg !768

vaarg.end123:                                     ; preds = %vaarg.in_mem119, %vaarg.in_reg117
  %vaarg.addr124 = phi ptr [ %50, %vaarg.in_reg117 ], [ %overflow_arg_area121, %vaarg.in_mem119 ], !dbg !768
  %52 = load i32, ptr %vaarg.addr124, align 4, !dbg !768
  %conv125 = zext i32 %52 to i64, !dbg !768
  store i64 %conv125, ptr %retval, align 8, !dbg !769
  br label %return, !dbg !769

return:                                           ; preds = %vaarg.end123, %vaarg.end108, %vaarg.end93, %vaarg.end80, %vaarg.end67, %vaarg.end53, %vaarg.end39, %vaarg.end25, %vaarg.end12, %vaarg.end
  %53 = load i64, ptr %retval, align 8, !dbg !770
  ret i64 %53, !dbg !770
}

; Function Attrs: noredzone nounwind
define internal signext i8 @get_sign(ptr noundef %num, i32 noundef %flags) #0 !dbg !771 {
entry:
  %retval = alloca i8, align 1
  %num.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %num, ptr %num.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !776, metadata !DIExpression()), !dbg !778
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !777, metadata !DIExpression()), !dbg !779
  %0 = load i32, ptr %flags.addr, align 4, !dbg !780
  %and = and i32 %0, 2, !dbg !782
  %tobool = icmp ne i32 %and, 0, !dbg !782
  br i1 %tobool, label %if.end, label %if.then, !dbg !783

if.then:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1, !dbg !784
  br label %return, !dbg !784

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %num.addr, align 8, !dbg !785
  %2 = load i64, ptr %1, align 8, !dbg !787
  %cmp = icmp slt i64 %2, 0, !dbg !788
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !789

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %num.addr, align 8, !dbg !790
  %4 = load i64, ptr %3, align 8, !dbg !792
  %sub = sub nsw i64 0, %4, !dbg !793
  %5 = load ptr, ptr %num.addr, align 8, !dbg !794
  store i64 %sub, ptr %5, align 8, !dbg !795
  store i8 45, ptr %retval, align 1, !dbg !796
  br label %return, !dbg !796

if.end2:                                          ; preds = %if.end
  %6 = load i32, ptr %flags.addr, align 4, !dbg !797
  %and3 = and i32 %6, 4, !dbg !799
  %tobool4 = icmp ne i32 %and3, 0, !dbg !799
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !800

if.then5:                                         ; preds = %if.end2
  store i8 43, ptr %retval, align 1, !dbg !801
  br label %return, !dbg !801

if.end6:                                          ; preds = %if.end2
  %7 = load i32, ptr %flags.addr, align 4, !dbg !802
  %and7 = and i32 %7, 8, !dbg !804
  %tobool8 = icmp ne i32 %and7, 0, !dbg !804
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !805

if.then9:                                         ; preds = %if.end6
  store i8 32, ptr %retval, align 1, !dbg !806
  br label %return, !dbg !806

if.end10:                                         ; preds = %if.end6
  store i8 0, ptr %retval, align 1, !dbg !807
  br label %return, !dbg !807

return:                                           ; preds = %if.end10, %if.then9, %if.then5, %if.then1, %if.then
  %8 = load i8, ptr %retval, align 1, !dbg !808
  ret i8 %8, !dbg !808
}

; Function Attrs: noredzone nounwind
define internal ptr @number(ptr noundef %end, i64 noundef %num, i32 noundef %base, i8 noundef signext %locase) #0 !dbg !14 {
entry:
  %end.addr = alloca ptr, align 8
  %num.addr = alloca i64, align 8
  %base.addr = alloca i32, align 4
  %locase.addr = alloca i8, align 1
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !40, metadata !DIExpression()), !dbg !809
  store i64 %num, ptr %num.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !41, metadata !DIExpression()), !dbg !810
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !42, metadata !DIExpression()), !dbg !811
  store i8 %locase, ptr %locase.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %locase.addr, metadata !43, metadata !DIExpression()), !dbg !812
  %0 = load i32, ptr %base.addr, align 4, !dbg !813
  switch i32 %0, label %sw.default [
    i32 10, label %sw.bb
    i32 8, label %sw.bb1
    i32 16, label %sw.bb3
  ], !dbg !814

sw.bb:                                            ; preds = %entry
  %1 = load i64, ptr %num.addr, align 8, !dbg !815
  %cmp = icmp ne i64 %1, 0, !dbg !818
  br i1 %cmp, label %if.then, label %if.end, !dbg !819

if.then:                                          ; preds = %sw.bb
  %2 = load ptr, ptr %end.addr, align 8, !dbg !820
  %3 = load i64, ptr %num.addr, align 8, !dbg !821
  %call = call ptr @put_dec(ptr noundef %2, i64 noundef %3) #7, !dbg !822
  store ptr %call, ptr %end.addr, align 8, !dbg !823
  br label %if.end, !dbg !824

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog, !dbg !825

sw.bb1:                                           ; preds = %entry
  br label %for.cond, !dbg !826

for.cond:                                         ; preds = %for.inc, %sw.bb1
  %4 = load i64, ptr %num.addr, align 8, !dbg !827
  %cmp2 = icmp ne i64 %4, 0, !dbg !830
  br i1 %cmp2, label %for.body, label %for.end, !dbg !831

for.body:                                         ; preds = %for.cond
  %5 = load i64, ptr %num.addr, align 8, !dbg !832
  %and = and i64 %5, 7, !dbg !833
  %add = add i64 48, %and, !dbg !834
  %conv = trunc i64 %add to i8, !dbg !835
  %6 = load ptr, ptr %end.addr, align 8, !dbg !836
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 -1, !dbg !836
  store ptr %incdec.ptr, ptr %end.addr, align 8, !dbg !836
  store i8 %conv, ptr %incdec.ptr, align 1, !dbg !837
  br label %for.inc, !dbg !838

for.inc:                                          ; preds = %for.body
  %7 = load i64, ptr %num.addr, align 8, !dbg !839
  %shr = lshr i64 %7, 3, !dbg !839
  store i64 %shr, ptr %num.addr, align 8, !dbg !839
  br label %for.cond, !dbg !840, !llvm.loop !841

for.end:                                          ; preds = %for.cond
  br label %sw.epilog, !dbg !843

sw.bb3:                                           ; preds = %entry
  br label %for.cond4, !dbg !844

for.cond4:                                        ; preds = %for.inc13, %sw.bb3
  %8 = load i64, ptr %num.addr, align 8, !dbg !845
  %cmp5 = icmp ne i64 %8, 0, !dbg !848
  br i1 %cmp5, label %for.body7, label %for.end15, !dbg !849

for.body7:                                        ; preds = %for.cond4
  %9 = load i64, ptr %num.addr, align 8, !dbg !850
  %and8 = and i64 %9, 15, !dbg !851
  %arrayidx = getelementptr inbounds [16 x i8], ptr @number.digits, i64 0, i64 %and8, !dbg !852
  %10 = load i8, ptr %arrayidx, align 1, !dbg !852
  %conv9 = sext i8 %10 to i32, !dbg !852
  %11 = load i8, ptr %locase.addr, align 1, !dbg !853
  %conv10 = sext i8 %11 to i32, !dbg !853
  %or = or i32 %conv9, %conv10, !dbg !854
  %conv11 = trunc i32 %or to i8, !dbg !852
  %12 = load ptr, ptr %end.addr, align 8, !dbg !855
  %incdec.ptr12 = getelementptr inbounds i8, ptr %12, i32 -1, !dbg !855
  store ptr %incdec.ptr12, ptr %end.addr, align 8, !dbg !855
  store i8 %conv11, ptr %incdec.ptr12, align 1, !dbg !856
  br label %for.inc13, !dbg !857

for.inc13:                                        ; preds = %for.body7
  %13 = load i64, ptr %num.addr, align 8, !dbg !858
  %shr14 = lshr i64 %13, 4, !dbg !858
  store i64 %shr14, ptr %num.addr, align 8, !dbg !858
  br label %for.cond4, !dbg !859, !llvm.loop !860

for.end15:                                        ; preds = %for.cond4
  br label %sw.epilog, !dbg !862

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !863

do.body:                                          ; preds = %sw.default
  call void asm sideeffect "3:\0A\09.pushsection .discard.unreachable\0A\09.long 3b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 3) #6, !dbg !864, !srcloc !867
  unreachable, !dbg !868

do.end:                                           ; No predecessors!
  br label %sw.epilog, !dbg !869

sw.epilog:                                        ; preds = %do.end, %for.end15, %for.end, %if.end
  %14 = load ptr, ptr %end.addr, align 8, !dbg !870
  ret ptr %14, !dbg !871
}

; Function Attrs: noredzone nounwind
define internal i32 @utf16_to_utf32(ptr noundef %s16) #0 !dbg !872 {
entry:
  %retval = alloca i32, align 4
  %s16.addr = alloca ptr, align 8
  %c0 = alloca i16, align 2
  %c1 = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s16, ptr %s16.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s16.addr, metadata !877, metadata !DIExpression()), !dbg !880
  call void @llvm.lifetime.start.p0(i64 2, ptr %c0) #6, !dbg !881
  call void @llvm.dbg.declare(metadata ptr %c0, metadata !878, metadata !DIExpression()), !dbg !882
  call void @llvm.lifetime.start.p0(i64 2, ptr %c1) #6, !dbg !881
  call void @llvm.dbg.declare(metadata ptr %c1, metadata !879, metadata !DIExpression()), !dbg !883
  %0 = load ptr, ptr %s16.addr, align 8, !dbg !884
  %1 = load ptr, ptr %0, align 8, !dbg !885
  %incdec.ptr = getelementptr inbounds i16, ptr %1, i32 1, !dbg !885
  store ptr %incdec.ptr, ptr %0, align 8, !dbg !885
  %2 = load i16, ptr %1, align 2, !dbg !886
  store i16 %2, ptr %c0, align 2, !dbg !887
  %3 = load i16, ptr %c0, align 2, !dbg !888
  %conv = zext i16 %3 to i32, !dbg !888
  %and = and i32 %conv, 63488, !dbg !890
  %cmp = icmp ne i32 %and, 55296, !dbg !891
  br i1 %cmp, label %if.then, label %if.end, !dbg !892

if.then:                                          ; preds = %entry
  %4 = load i16, ptr %c0, align 2, !dbg !893
  %conv2 = zext i16 %4 to i32, !dbg !893
  store i32 %conv2, ptr %retval, align 4, !dbg !894
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !894

if.end:                                           ; preds = %entry
  %5 = load i16, ptr %c0, align 2, !dbg !895
  %conv3 = zext i16 %5 to i32, !dbg !895
  %and4 = and i32 %conv3, 1024, !dbg !897
  %tobool = icmp ne i32 %and4, 0, !dbg !897
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !898

if.then5:                                         ; preds = %if.end
  store i32 65533, ptr %retval, align 4, !dbg !899
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !899

if.end6:                                          ; preds = %if.end
  %6 = load ptr, ptr %s16.addr, align 8, !dbg !900
  %7 = load ptr, ptr %6, align 8, !dbg !901
  %8 = load i16, ptr %7, align 2, !dbg !902
  store i16 %8, ptr %c1, align 2, !dbg !903
  %9 = load i16, ptr %c1, align 2, !dbg !904
  %conv7 = zext i16 %9 to i32, !dbg !904
  %and8 = and i32 %conv7, 64512, !dbg !906
  %cmp9 = icmp ne i32 %and8, 56320, !dbg !907
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !908

if.then11:                                        ; preds = %if.end6
  store i32 65533, ptr %retval, align 4, !dbg !909
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !909

if.end12:                                         ; preds = %if.end6
  %10 = load ptr, ptr %s16.addr, align 8, !dbg !910
  %11 = load ptr, ptr %10, align 8, !dbg !911
  %incdec.ptr13 = getelementptr inbounds i16, ptr %11, i32 1, !dbg !911
  store ptr %incdec.ptr13, ptr %10, align 8, !dbg !911
  %12 = load i16, ptr %c0, align 2, !dbg !912
  %conv14 = zext i16 %12 to i32, !dbg !912
  %shl = shl i32 %conv14, 10, !dbg !913
  %add = add nsw i32 -56613888, %shl, !dbg !914
  %13 = load i16, ptr %c1, align 2, !dbg !915
  %conv15 = zext i16 %13 to i32, !dbg !915
  %add16 = add nsw i32 %add, %conv15, !dbg !916
  store i32 %add16, ptr %retval, align 4, !dbg !917
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !917

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %c1) #6, !dbg !918
  call void @llvm.lifetime.end.p0(i64 2, ptr %c0) #6, !dbg !918
  %14 = load i32, ptr %retval, align 4, !dbg !918
  ret i32 %14, !dbg !918
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: noredzone nounwind
define hidden i32 @snprintf(ptr noundef %buf, i64 noundef %size, ptr noundef %fmt, ...) #0 !dbg !919 {
entry:
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %fmt.addr = alloca ptr, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %i = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !923, metadata !DIExpression()), !dbg !928
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !924, metadata !DIExpression()), !dbg !929
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !925, metadata !DIExpression()), !dbg !930
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #6, !dbg !931
  call void @llvm.dbg.declare(metadata ptr %args, metadata !926, metadata !DIExpression()), !dbg !932
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !933
  call void @llvm.dbg.declare(metadata ptr %i, metadata !927, metadata !DIExpression()), !dbg !934
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !935
  call void @llvm.va_start(ptr %arraydecay), !dbg !935
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !936
  %1 = load i64, ptr %size.addr, align 8, !dbg !937
  %2 = load ptr, ptr %fmt.addr, align 8, !dbg !938
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !939
  %call = call i32 @vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %arraydecay1) #7, !dbg !940
  store i32 %call, ptr %i, align 4, !dbg !941
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !942
  call void @llvm.va_end(ptr %arraydecay2), !dbg !942
  %3 = load i32, ptr %i, align 4, !dbg !943
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !944
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #6, !dbg !944
  ret i32 %3, !dbg !945
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @isdigit(i32 noundef %c) #5 !dbg !946 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !951, metadata !DIExpression()), !dbg !952
  %0 = load i32, ptr %c.addr, align 4, !dbg !953
  %cmp = icmp sle i32 48, %0, !dbg !954
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !955

land.rhs:                                         ; preds = %entry
  %1 = load i32, ptr %c.addr, align 4, !dbg !956
  %cmp1 = icmp sle i32 %1, 57, !dbg !957
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !958
  %land.ext = zext i1 %2 to i32, !dbg !955
  ret i32 %land.ext, !dbg !959
}

; Function Attrs: noredzone nounwind
define internal i32 @skip_atoi(ptr noundef %s) #0 !dbg !960 {
entry:
  %s.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !962, metadata !DIExpression()), !dbg !964
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !965
  call void @llvm.dbg.declare(metadata ptr %i, metadata !963, metadata !DIExpression()), !dbg !966
  store i32 0, ptr %i, align 4, !dbg !966
  br label %while.cond, !dbg !967

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %s.addr, align 8, !dbg !968
  %1 = load ptr, ptr %0, align 8, !dbg !969
  %2 = load i8, ptr %1, align 1, !dbg !970
  %conv = sext i8 %2 to i32, !dbg !970
  %call = call i32 @isdigit(i32 noundef %conv) #7, !dbg !971
  %tobool = icmp ne i32 %call, 0, !dbg !967
  br i1 %tobool, label %while.body, label %while.end, !dbg !967

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %i, align 4, !dbg !972
  %mul = mul nsw i32 %3, 10, !dbg !973
  %4 = load ptr, ptr %s.addr, align 8, !dbg !974
  %5 = load ptr, ptr %4, align 8, !dbg !975
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1, !dbg !975
  store ptr %incdec.ptr, ptr %4, align 8, !dbg !975
  %6 = load i8, ptr %5, align 1, !dbg !976
  %conv1 = sext i8 %6 to i32, !dbg !976
  %add = add nsw i32 %mul, %conv1, !dbg !977
  %sub = sub nsw i32 %add, 48, !dbg !978
  store i32 %sub, ptr %i, align 4, !dbg !979
  br label %while.cond, !dbg !967, !llvm.loop !980

while.end:                                        ; preds = %while.cond
  %7 = load i32, ptr %i, align 4, !dbg !982
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !983
  ret i32 %7, !dbg !984
}

; Function Attrs: noredzone nounwind
define internal ptr @put_dec(ptr noundef %end, i64 noundef %n) #0 !dbg !985 {
entry:
  %end.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %d3 = alloca i32, align 4
  %d2 = alloca i32, align 4
  %d1 = alloca i32, align 4
  %q = alloca i32, align 4
  %h = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !989, metadata !DIExpression()), !dbg !997
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !990, metadata !DIExpression()), !dbg !998
  call void @llvm.lifetime.start.p0(i64 4, ptr %d3) #6, !dbg !999
  call void @llvm.dbg.declare(metadata ptr %d3, metadata !991, metadata !DIExpression()), !dbg !1000
  call void @llvm.lifetime.start.p0(i64 4, ptr %d2) #6, !dbg !999
  call void @llvm.dbg.declare(metadata ptr %d2, metadata !992, metadata !DIExpression()), !dbg !1001
  call void @llvm.lifetime.start.p0(i64 4, ptr %d1) #6, !dbg !999
  call void @llvm.dbg.declare(metadata ptr %d1, metadata !993, metadata !DIExpression()), !dbg !1002
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #6, !dbg !999
  call void @llvm.dbg.declare(metadata ptr %q, metadata !994, metadata !DIExpression()), !dbg !1003
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #6, !dbg !999
  call void @llvm.dbg.declare(metadata ptr %h, metadata !995, metadata !DIExpression()), !dbg !1004
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6, !dbg !1005
  call void @llvm.dbg.declare(metadata ptr %p, metadata !996, metadata !DIExpression()), !dbg !1006
  %0 = load ptr, ptr %end.addr, align 8, !dbg !1007
  store ptr %0, ptr %p, align 8, !dbg !1006
  %1 = load i64, ptr %n.addr, align 8, !dbg !1008
  %conv = trunc i64 %1 to i32, !dbg !1009
  %shr = lshr i32 %conv, 16, !dbg !1010
  store i32 %shr, ptr %d1, align 4, !dbg !1011
  %2 = load i64, ptr %n.addr, align 8, !dbg !1012
  %shr1 = lshr i64 %2, 32, !dbg !1013
  %conv2 = trunc i64 %shr1 to i32, !dbg !1014
  store i32 %conv2, ptr %h, align 4, !dbg !1015
  %3 = load i32, ptr %h, align 4, !dbg !1016
  %and = and i32 %3, 65535, !dbg !1017
  store i32 %and, ptr %d2, align 4, !dbg !1018
  %4 = load i32, ptr %h, align 4, !dbg !1019
  %shr3 = lshr i32 %4, 16, !dbg !1020
  store i32 %shr3, ptr %d3, align 4, !dbg !1021
  %5 = load i32, ptr %d3, align 4, !dbg !1022
  %mul = mul i32 656, %5, !dbg !1023
  %6 = load i32, ptr %d2, align 4, !dbg !1024
  %mul4 = mul i32 7296, %6, !dbg !1025
  %add = add i32 %mul, %mul4, !dbg !1026
  %7 = load i32, ptr %d1, align 4, !dbg !1027
  %mul5 = mul i32 5536, %7, !dbg !1028
  %add6 = add i32 %add, %mul5, !dbg !1029
  %8 = load i64, ptr %n.addr, align 8, !dbg !1030
  %conv7 = trunc i64 %8 to i32, !dbg !1031
  %and8 = and i32 %conv7, 65535, !dbg !1032
  %add9 = add i32 %add6, %and8, !dbg !1033
  store i32 %add9, ptr %q, align 4, !dbg !1034
  %9 = load ptr, ptr %p, align 8, !dbg !1035
  %10 = load i32, ptr %q, align 4, !dbg !1036
  %call = call i32 @put_dec_helper4(ptr noundef %9, i32 noundef %10) #7, !dbg !1037
  store i32 %call, ptr %q, align 4, !dbg !1038
  %11 = load ptr, ptr %p, align 8, !dbg !1039
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 -4, !dbg !1039
  store ptr %add.ptr, ptr %p, align 8, !dbg !1039
  %12 = load i32, ptr %d3, align 4, !dbg !1040
  %mul10 = mul i32 7671, %12, !dbg !1041
  %13 = load i32, ptr %d2, align 4, !dbg !1042
  %mul11 = mul i32 9496, %13, !dbg !1043
  %add12 = add i32 %mul10, %mul11, !dbg !1044
  %14 = load i32, ptr %d1, align 4, !dbg !1045
  %mul13 = mul i32 6, %14, !dbg !1046
  %add14 = add i32 %add12, %mul13, !dbg !1047
  %15 = load i32, ptr %q, align 4, !dbg !1048
  %add15 = add i32 %15, %add14, !dbg !1048
  store i32 %add15, ptr %q, align 4, !dbg !1048
  %16 = load ptr, ptr %p, align 8, !dbg !1049
  %17 = load i32, ptr %q, align 4, !dbg !1050
  %call16 = call i32 @put_dec_helper4(ptr noundef %16, i32 noundef %17) #7, !dbg !1051
  store i32 %call16, ptr %q, align 4, !dbg !1052
  %18 = load ptr, ptr %p, align 8, !dbg !1053
  %add.ptr17 = getelementptr inbounds i8, ptr %18, i64 -4, !dbg !1053
  store ptr %add.ptr17, ptr %p, align 8, !dbg !1053
  %19 = load i32, ptr %d3, align 4, !dbg !1054
  %mul18 = mul i32 4749, %19, !dbg !1055
  %20 = load i32, ptr %d2, align 4, !dbg !1056
  %mul19 = mul i32 42, %20, !dbg !1057
  %add20 = add i32 %mul18, %mul19, !dbg !1058
  %21 = load i32, ptr %q, align 4, !dbg !1059
  %add21 = add i32 %21, %add20, !dbg !1059
  store i32 %add21, ptr %q, align 4, !dbg !1059
  %22 = load ptr, ptr %p, align 8, !dbg !1060
  %23 = load i32, ptr %q, align 4, !dbg !1061
  %call22 = call i32 @put_dec_helper4(ptr noundef %22, i32 noundef %23) #7, !dbg !1062
  store i32 %call22, ptr %q, align 4, !dbg !1063
  %24 = load ptr, ptr %p, align 8, !dbg !1064
  %add.ptr23 = getelementptr inbounds i8, ptr %24, i64 -4, !dbg !1064
  store ptr %add.ptr23, ptr %p, align 8, !dbg !1064
  %25 = load i32, ptr %d3, align 4, !dbg !1065
  %mul24 = mul i32 281, %25, !dbg !1066
  %26 = load i32, ptr %q, align 4, !dbg !1067
  %add25 = add i32 %26, %mul24, !dbg !1067
  store i32 %add25, ptr %q, align 4, !dbg !1067
  %27 = load ptr, ptr %p, align 8, !dbg !1068
  %28 = load i32, ptr %q, align 4, !dbg !1069
  %call26 = call i32 @put_dec_helper4(ptr noundef %27, i32 noundef %28) #7, !dbg !1070
  store i32 %call26, ptr %q, align 4, !dbg !1071
  %29 = load ptr, ptr %p, align 8, !dbg !1072
  %add.ptr27 = getelementptr inbounds i8, ptr %29, i64 -4, !dbg !1072
  store ptr %add.ptr27, ptr %p, align 8, !dbg !1072
  %30 = load ptr, ptr %p, align 8, !dbg !1073
  %31 = load i32, ptr %q, align 4, !dbg !1074
  call void @put_dec_full4(ptr noundef %30, i32 noundef %31) #7, !dbg !1075
  %32 = load ptr, ptr %p, align 8, !dbg !1076
  %add.ptr28 = getelementptr inbounds i8, ptr %32, i64 -4, !dbg !1076
  store ptr %add.ptr28, ptr %p, align 8, !dbg !1076
  br label %while.cond, !dbg !1077

while.cond:                                       ; preds = %while.body, %entry
  %33 = load ptr, ptr %p, align 8, !dbg !1078
  %34 = load ptr, ptr %end.addr, align 8, !dbg !1079
  %cmp = icmp ult ptr %33, %34, !dbg !1080
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1081

land.rhs:                                         ; preds = %while.cond
  %35 = load ptr, ptr %p, align 8, !dbg !1082
  %36 = load i8, ptr %35, align 1, !dbg !1083
  %conv30 = sext i8 %36 to i32, !dbg !1083
  %cmp31 = icmp eq i32 %conv30, 48, !dbg !1084
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %37 = phi i1 [ false, %while.cond ], [ %cmp31, %land.rhs ], !dbg !1085
  br i1 %37, label %while.body, label %while.end, !dbg !1077

while.body:                                       ; preds = %land.end
  %38 = load ptr, ptr %p, align 8, !dbg !1086
  %incdec.ptr = getelementptr inbounds i8, ptr %38, i32 1, !dbg !1086
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !1086
  br label %while.cond, !dbg !1077, !llvm.loop !1087

while.end:                                        ; preds = %land.end
  %39 = load ptr, ptr %p, align 8, !dbg !1089
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6, !dbg !1090
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #6, !dbg !1090
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #6, !dbg !1090
  call void @llvm.lifetime.end.p0(i64 4, ptr %d1) #6, !dbg !1090
  call void @llvm.lifetime.end.p0(i64 4, ptr %d2) #6, !dbg !1090
  call void @llvm.lifetime.end.p0(i64 4, ptr %d3) #6, !dbg !1090
  ret ptr %39, !dbg !1091
}

; Function Attrs: noredzone nounwind
define internal i32 @put_dec_helper4(ptr noundef %end, i32 noundef %x) #0 !dbg !1092 {
entry:
  %end.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %q = alloca i32, align 4
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !1096, metadata !DIExpression()), !dbg !1099
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1097, metadata !DIExpression()), !dbg !1100
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #6, !dbg !1101
  call void @llvm.dbg.declare(metadata ptr %q, metadata !1098, metadata !DIExpression()), !dbg !1102
  %0 = load i32, ptr %x.addr, align 4, !dbg !1103
  %conv = zext i32 %0 to i64, !dbg !1103
  %mul = mul i64 %conv, 879609303, !dbg !1104
  %shr = lshr i64 %mul, 43, !dbg !1105
  %conv1 = trunc i64 %shr to i32, !dbg !1106
  store i32 %conv1, ptr %q, align 4, !dbg !1102
  %1 = load ptr, ptr %end.addr, align 8, !dbg !1107
  %2 = load i32, ptr %x.addr, align 4, !dbg !1108
  %3 = load i32, ptr %q, align 4, !dbg !1109
  %mul2 = mul i32 %3, 10000, !dbg !1110
  %sub = sub i32 %2, %mul2, !dbg !1111
  call void @put_dec_full4(ptr noundef %1, i32 noundef %sub) #7, !dbg !1112
  %4 = load i32, ptr %q, align 4, !dbg !1113
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #6, !dbg !1114
  ret i32 %4, !dbg !1115
}

; Function Attrs: noredzone nounwind
define internal void @put_dec_full4(ptr noundef %end, i32 noundef %r) #0 !dbg !1116 {
entry:
  %end.addr = alloca ptr, align 8
  %r.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %q = alloca i32, align 4
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !1120, metadata !DIExpression()), !dbg !1127
  store i32 %r, ptr %r.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1121, metadata !DIExpression()), !dbg !1128
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !1129
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1122, metadata !DIExpression()), !dbg !1130
  store i32 0, ptr %i, align 4, !dbg !1131
  br label %for.cond, !dbg !1132

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1133
  %cmp = icmp slt i32 %0, 3, !dbg !1134
  br i1 %cmp, label %for.body, label %for.end, !dbg !1135

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #6, !dbg !1136
  call void @llvm.dbg.declare(metadata ptr %q, metadata !1123, metadata !DIExpression()), !dbg !1137
  %1 = load i32, ptr %r.addr, align 4, !dbg !1138
  %mul = mul i32 %1, 3277, !dbg !1139
  %shr = lshr i32 %mul, 15, !dbg !1140
  store i32 %shr, ptr %q, align 4, !dbg !1137
  %2 = load i32, ptr %r.addr, align 4, !dbg !1141
  %3 = load i32, ptr %q, align 4, !dbg !1142
  %mul1 = mul i32 %3, 10, !dbg !1143
  %sub = sub i32 %2, %mul1, !dbg !1144
  %add = add i32 48, %sub, !dbg !1145
  %conv = trunc i32 %add to i8, !dbg !1146
  %4 = load ptr, ptr %end.addr, align 8, !dbg !1147
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 -1, !dbg !1147
  store ptr %incdec.ptr, ptr %end.addr, align 8, !dbg !1147
  store i8 %conv, ptr %incdec.ptr, align 1, !dbg !1148
  %5 = load i32, ptr %q, align 4, !dbg !1149
  store i32 %5, ptr %r.addr, align 4, !dbg !1150
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #6, !dbg !1151
  br label %for.inc, !dbg !1152

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !dbg !1153
  %inc = add nsw i32 %6, 1, !dbg !1153
  store i32 %inc, ptr %i, align 4, !dbg !1153
  br label %for.cond, !dbg !1154, !llvm.loop !1155

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %r.addr, align 4, !dbg !1157
  %add2 = add i32 48, %7, !dbg !1158
  %conv3 = trunc i32 %add2 to i8, !dbg !1159
  %8 = load ptr, ptr %end.addr, align 8, !dbg !1160
  %incdec.ptr4 = getelementptr inbounds i8, ptr %8, i32 -1, !dbg !1160
  store ptr %incdec.ptr4, ptr %end.addr, align 8, !dbg !1160
  store i8 %conv3, ptr %incdec.ptr4, align 1, !dbg !1161
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !1162
  ret void, !dbg !1162
}

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { inlinehint noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone "no-builtins" }

!llvm.dbg.cu = !{!20}
!llvm.module.flags = !{!48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 399, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/firmware/efi/libstub/vsprintf.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "557d263e3b37f907b7ff49d6deaf69fe")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 1)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 399, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "digits", scope: !14, file: !2, line: 121, type: !44, isLocal: true, isDefinition: true)
!14 = distinct !DISubprogram(name: "number", scope: !2, file: !2, line: 113, type: !15, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !39)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !17, !18, !19, !4}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!18 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firmware/efi/libstub/.vsprintf.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -mcmodel=small -m64 -D __KERNEL__ -std=gnu11 -fPIC -fno-strict-aliasing -mno-red-zone -mno-mmx -mno-sse -fshort-wchar -Wno-pointer-sign -Wno-address-of-packed-member -Wno-gnu -fno-asynchronous-unwind-tables --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -O1 -D DISABLE_BRANCH_PROFILING -include ./include/linux/hidden.h -D __NO_FORTIFY -ffreestanding -fno-stack-protector -fno-addrsig -D __DISABLE_EXPORTS -D KBUILD_MODFILE=\22drivers/firmware/efi/libstub/vsprintf\22 -D KBUILD_BASENAME=\22vsprintf\22 -D KBUILD_MODNAME=\22vsprintf\22 -D __KBUILD_MODNAME=kmod_vsprintf -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firmware/efi/libstub/vsprintf.ll drivers/firmware/efi/libstub/vsprintf.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !21, globals: !38, splitDebugInlining: false, nameTableKind: None)
!21 = !{!19, !22, !27, !28, !29, !31, !32, !35, !36, !26, !37}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !23, line: 19, baseType: !24)
!23 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !25, line: 24, baseType: !26)
!25 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !23, line: 17, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !25, line: 21, baseType: !28)
!35 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!36 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!37 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!38 = !{!0, !7, !12}
!39 = !{!40, !41, !42, !43}
!40 = !DILocalVariable(name: "end", arg: 1, scope: !14, file: !2, line: 113, type: !17)
!41 = !DILocalVariable(name: "num", arg: 2, scope: !14, file: !2, line: 113, type: !18)
!42 = !DILocalVariable(name: "base", arg: 3, scope: !14, file: !2, line: 113, type: !19)
!43 = !DILocalVariable(name: "locase", arg: 4, scope: !14, file: !2, line: 113, type: !4)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, elements: !46)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!46 = !{!47}
!47 = !DISubrange(count: 16)
!48 = !{i32 7, !"Dwarf Version", i32 5}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 8, !"PIC Level", i32 2}
!52 = !{i32 1, !"Code Model", i32 1}
!53 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!54 = distinct !DISubprogram(name: "vsnprintf", scope: !2, file: !2, line: 301, type: !55, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !71)
!55 = !DISubroutineType(types: !56)
!56 = !{!19, !17, !57, !62, !63}
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !58, line: 61, baseType: !59)
!58 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !60, line: 72, baseType: !61)
!60 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !60, line: 16, baseType: !31)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !65)
!65 = !{!66, !67, !68, !70}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !64, file: !2, baseType: !37, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !64, file: !2, baseType: !37, size: 32, offset: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !64, file: !2, baseType: !69, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !64, file: !2, baseType: !69, size: 64, offset: 128)
!71 = !{!72, !73, !74, !75, !76, !80, !81, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !97, !105, !106, !109, !113, !114, !115, !116, !119}
!72 = !DILocalVariable(name: "buf", arg: 1, scope: !54, file: !2, line: 301, type: !17)
!73 = !DILocalVariable(name: "size", arg: 2, scope: !54, file: !2, line: 301, type: !57)
!74 = !DILocalVariable(name: "fmt", arg: 3, scope: !54, file: !2, line: 301, type: !62)
!75 = !DILocalVariable(name: "ap", arg: 4, scope: !54, file: !2, line: 301, type: !63)
!76 = !DILocalVariable(name: "tmp", scope: !54, file: !2, line: 304, type: !77)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 22)
!80 = !DILocalVariable(name: "tmp_end", scope: !54, file: !2, line: 305, type: !17)
!81 = !DILocalVariable(name: "num", scope: !54, file: !2, line: 306, type: !82)
!82 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!83 = !DILocalVariable(name: "base", scope: !54, file: !2, line: 307, type: !19)
!84 = !DILocalVariable(name: "s", scope: !54, file: !2, line: 308, type: !62)
!85 = !DILocalVariable(name: "len", scope: !54, file: !2, line: 309, type: !57)
!86 = !DILocalVariable(name: "pos", scope: !54, file: !2, line: 309, type: !57)
!87 = !DILocalVariable(name: "sign", scope: !54, file: !2, line: 310, type: !4)
!88 = !DILocalVariable(name: "flags", scope: !54, file: !2, line: 312, type: !19)
!89 = !DILocalVariable(name: "field_width", scope: !54, file: !2, line: 314, type: !19)
!90 = !DILocalVariable(name: "precision", scope: !54, file: !2, line: 315, type: !19)
!91 = !DILocalVariable(name: "qualifier", scope: !54, file: !2, line: 317, type: !19)
!92 = !DILocalVariable(name: "args", scope: !54, file: !2, line: 319, type: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !94, line: 5, baseType: !95)
!94 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !96)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 192, elements: !5)
!97 = !DILabel(scope: !98, name: "wstring", file: !2, line: 401)
!98 = distinct !DILexicalBlock(scope: !99, file: !2, line: 400, column: 31)
!99 = distinct !DILexicalBlock(scope: !100, file: !2, line: 400, column: 13)
!100 = distinct !DILexicalBlock(scope: !101, file: !2, line: 398, column: 8)
!101 = distinct !DILexicalBlock(scope: !102, file: !2, line: 378, column: 17)
!102 = distinct !DILexicalBlock(scope: !103, file: !2, line: 337, column: 29)
!103 = distinct !DILexicalBlock(scope: !104, file: !2, line: 337, column: 2)
!104 = distinct !DILexicalBlock(scope: !54, file: !2, line: 337, column: 2)
!105 = !DILabel(scope: !102, name: "output", file: !2, line: 486)
!106 = !DILocalVariable(name: "ws", scope: !107, file: !2, line: 506, type: !29)
!107 = distinct !DILexicalBlock(scope: !108, file: !2, line: 505, column: 21)
!108 = distinct !DILexicalBlock(scope: !102, file: !2, line: 505, column: 7)
!109 = !DILocalVariable(name: "c32", scope: !110, file: !2, line: 509, type: !111)
!110 = distinct !DILexicalBlock(scope: !107, file: !2, line: 508, column: 22)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !23, line: 21, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !25, line: 27, baseType: !37)
!113 = !DILocalVariable(name: "s8", scope: !110, file: !2, line: 510, type: !32)
!114 = !DILocalVariable(name: "clen", scope: !110, file: !2, line: 511, type: !57)
!115 = !DILabel(scope: !54, name: "fail", file: !2, line: 546)
!116 = !DILocalVariable(name: "__UNIQUE_ID___x4", scope: !117, file: !2, line: 550, type: !57)
!117 = distinct !DILexicalBlock(scope: !118, file: !2, line: 550, column: 7)
!118 = distinct !DILexicalBlock(scope: !54, file: !2, line: 549, column: 6)
!119 = !DILocalVariable(name: "__UNIQUE_ID___y5", scope: !117, file: !2, line: 550, type: !57)
!120 = !DILocation(line: 301, column: 21, scope: !54)
!121 = !DILocation(line: 301, column: 33, scope: !54)
!122 = !DILocation(line: 301, column: 51, scope: !54)
!123 = !DILocation(line: 301, column: 64, scope: !54)
!124 = !DILocation(line: 304, column: 2, scope: !54)
!125 = !DILocation(line: 304, column: 7, scope: !54)
!126 = !DILocation(line: 305, column: 2, scope: !54)
!127 = !DILocation(line: 305, column: 8, scope: !54)
!128 = !DILocation(line: 305, column: 19, scope: !54)
!129 = !DILocation(line: 306, column: 2, scope: !54)
!130 = !DILocation(line: 306, column: 12, scope: !54)
!131 = !DILocation(line: 307, column: 2, scope: !54)
!132 = !DILocation(line: 307, column: 6, scope: !54)
!133 = !DILocation(line: 308, column: 2, scope: !54)
!134 = !DILocation(line: 308, column: 14, scope: !54)
!135 = !DILocation(line: 309, column: 2, scope: !54)
!136 = !DILocation(line: 309, column: 9, scope: !54)
!137 = !DILocation(line: 309, column: 14, scope: !54)
!138 = !DILocation(line: 310, column: 2, scope: !54)
!139 = !DILocation(line: 310, column: 7, scope: !54)
!140 = !DILocation(line: 312, column: 2, scope: !54)
!141 = !DILocation(line: 312, column: 6, scope: !54)
!142 = !DILocation(line: 314, column: 2, scope: !54)
!143 = !DILocation(line: 314, column: 6, scope: !54)
!144 = !DILocation(line: 315, column: 2, scope: !54)
!145 = !DILocation(line: 315, column: 6, scope: !54)
!146 = !DILocation(line: 317, column: 2, scope: !54)
!147 = !DILocation(line: 317, column: 6, scope: !54)
!148 = !DILocation(line: 319, column: 2, scope: !54)
!149 = !DILocation(line: 319, column: 10, scope: !54)
!150 = !DILocation(line: 335, column: 2, scope: !54)
!151 = !DILocation(line: 337, column: 11, scope: !104)
!152 = !DILocation(line: 337, column: 7, scope: !104)
!153 = !DILocation(line: 337, column: 17, scope: !103)
!154 = !DILocation(line: 337, column: 16, scope: !103)
!155 = !DILocation(line: 337, column: 2, scope: !104)
!156 = !DILocation(line: 338, column: 8, scope: !157)
!157 = distinct !DILexicalBlock(scope: !102, file: !2, line: 338, column: 7)
!158 = !DILocation(line: 338, column: 7, scope: !157)
!159 = !DILocation(line: 338, column: 12, scope: !157)
!160 = !DILocation(line: 338, column: 19, scope: !157)
!161 = !DILocation(line: 338, column: 23, scope: !157)
!162 = !DILocation(line: 338, column: 22, scope: !157)
!163 = !DILocation(line: 338, column: 29, scope: !157)
!164 = !DILocation(line: 338, column: 7, scope: !102)
!165 = !DILocation(line: 339, column: 4, scope: !166)
!166 = distinct !DILexicalBlock(scope: !157, file: !2, line: 338, column: 37)
!167 = !DILocation(line: 339, column: 4, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !2, line: 339, column: 4)
!169 = distinct !DILexicalBlock(scope: !166, file: !2, line: 339, column: 4)
!170 = !DILocation(line: 339, column: 4, scope: !169)
!171 = !DILocation(line: 340, column: 4, scope: !166)
!172 = !DILocation(line: 344, column: 11, scope: !102)
!173 = !DILocation(line: 344, column: 9, scope: !102)
!174 = !DILocation(line: 347, column: 17, scope: !102)
!175 = !DILocation(line: 347, column: 15, scope: !102)
!176 = !DILocation(line: 348, column: 7, scope: !177)
!177 = distinct !DILexicalBlock(scope: !102, file: !2, line: 348, column: 7)
!178 = !DILocation(line: 348, column: 19, scope: !177)
!179 = !DILocation(line: 348, column: 7, scope: !102)
!180 = !DILocation(line: 349, column: 19, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !2, line: 348, column: 24)
!182 = !DILocation(line: 349, column: 18, scope: !181)
!183 = !DILocation(line: 349, column: 16, scope: !181)
!184 = !DILocation(line: 350, column: 10, scope: !181)
!185 = !DILocation(line: 351, column: 3, scope: !181)
!186 = !DILocation(line: 353, column: 7, scope: !187)
!187 = distinct !DILexicalBlock(scope: !102, file: !2, line: 353, column: 7)
!188 = !DILocation(line: 353, column: 13, scope: !187)
!189 = !DILocation(line: 353, column: 7, scope: !102)
!190 = !DILocation(line: 354, column: 10, scope: !187)
!191 = !DILocation(line: 354, column: 4, scope: !187)
!192 = !DILocation(line: 357, column: 13, scope: !102)
!193 = !DILocation(line: 358, column: 8, scope: !194)
!194 = distinct !DILexicalBlock(scope: !102, file: !2, line: 358, column: 7)
!195 = !DILocation(line: 358, column: 7, scope: !194)
!196 = !DILocation(line: 358, column: 12, scope: !194)
!197 = !DILocation(line: 358, column: 7, scope: !102)
!198 = !DILocation(line: 359, column: 4, scope: !199)
!199 = distinct !DILexicalBlock(scope: !194, file: !2, line: 358, column: 20)
!200 = !DILocation(line: 360, column: 16, scope: !199)
!201 = !DILocation(line: 360, column: 14, scope: !199)
!202 = !DILocation(line: 361, column: 8, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !2, line: 361, column: 8)
!204 = !DILocation(line: 361, column: 18, scope: !203)
!205 = !DILocation(line: 361, column: 8, scope: !199)
!206 = !DILocation(line: 362, column: 11, scope: !203)
!207 = !DILocation(line: 362, column: 5, scope: !203)
!208 = !DILocation(line: 363, column: 3, scope: !199)
!209 = !DILocation(line: 366, column: 13, scope: !102)
!210 = !DILocation(line: 367, column: 8, scope: !211)
!211 = distinct !DILexicalBlock(scope: !102, file: !2, line: 367, column: 7)
!212 = !DILocation(line: 367, column: 7, scope: !211)
!213 = !DILocation(line: 367, column: 12, scope: !211)
!214 = !DILocation(line: 367, column: 19, scope: !211)
!215 = !DILocation(line: 367, column: 23, scope: !211)
!216 = !DILocation(line: 367, column: 22, scope: !211)
!217 = !DILocation(line: 367, column: 27, scope: !211)
!218 = !DILocation(line: 367, column: 7, scope: !102)
!219 = !DILocation(line: 368, column: 17, scope: !220)
!220 = distinct !DILexicalBlock(scope: !211, file: !2, line: 367, column: 35)
!221 = !DILocation(line: 368, column: 16, scope: !220)
!222 = !DILocation(line: 368, column: 14, scope: !220)
!223 = !DILocation(line: 369, column: 4, scope: !220)
!224 = !DILocation(line: 370, column: 8, scope: !225)
!225 = distinct !DILexicalBlock(scope: !220, file: !2, line: 370, column: 8)
!226 = !DILocation(line: 370, column: 22, scope: !225)
!227 = !DILocation(line: 370, column: 21, scope: !225)
!228 = !DILocation(line: 370, column: 18, scope: !225)
!229 = !DILocation(line: 370, column: 8, scope: !220)
!230 = !DILocation(line: 371, column: 15, scope: !231)
!231 = distinct !DILexicalBlock(scope: !225, file: !2, line: 370, column: 27)
!232 = !DILocation(line: 372, column: 5, scope: !231)
!233 = !DILocation(line: 373, column: 4, scope: !231)
!234 = !DILocation(line: 374, column: 3, scope: !220)
!235 = !DILocation(line: 376, column: 8, scope: !102)
!236 = !DILocation(line: 378, column: 12, scope: !102)
!237 = !DILocation(line: 378, column: 11, scope: !102)
!238 = !DILocation(line: 378, column: 3, scope: !102)
!239 = !DILocation(line: 380, column: 10, scope: !101)
!240 = !DILocation(line: 381, column: 8, scope: !101)
!241 = !DILocation(line: 381, column: 6, scope: !101)
!242 = !DILocation(line: 382, column: 8, scope: !243)
!243 = distinct !DILexicalBlock(scope: !101, file: !2, line: 382, column: 8)
!244 = !DILocation(line: 382, column: 18, scope: !243)
!245 = !DILocation(line: 382, column: 8, scope: !101)
!246 = !DILocation(line: 383, column: 28, scope: !247)
!247 = distinct !DILexicalBlock(scope: !243, file: !2, line: 382, column: 26)
!248 = !DILocation(line: 383, column: 23, scope: !247)
!249 = !DILocation(line: 383, column: 5, scope: !247)
!250 = !DILocation(line: 383, column: 21, scope: !247)
!251 = !DILocation(line: 384, column: 5, scope: !247)
!252 = !DILocation(line: 384, column: 21, scope: !247)
!253 = !DILocation(line: 385, column: 15, scope: !247)
!254 = !DILocation(line: 386, column: 5, scope: !247)
!255 = !DILocation(line: 388, column: 29, scope: !256)
!256 = distinct !DILexicalBlock(scope: !243, file: !2, line: 387, column: 11)
!257 = !DILocation(line: 388, column: 14, scope: !256)
!258 = !DILocation(line: 388, column: 5, scope: !256)
!259 = !DILocation(line: 388, column: 12, scope: !256)
!260 = !DILocation(line: 389, column: 21, scope: !256)
!261 = !DILocation(line: 389, column: 15, scope: !256)
!262 = !DILocation(line: 391, column: 4, scope: !101)
!263 = !DILocation(line: 394, column: 10, scope: !101)
!264 = !DILocation(line: 395, column: 8, scope: !265)
!265 = distinct !DILexicalBlock(scope: !101, file: !2, line: 395, column: 8)
!266 = !DILocation(line: 395, column: 18, scope: !265)
!267 = !DILocation(line: 395, column: 8, scope: !101)
!268 = !DILocation(line: 396, column: 15, scope: !265)
!269 = !DILocation(line: 396, column: 5, scope: !265)
!270 = !DILocation(line: 397, column: 8, scope: !101)
!271 = !DILocation(line: 397, column: 6, scope: !101)
!272 = !DILocation(line: 398, column: 9, scope: !100)
!273 = !DILocation(line: 398, column: 8, scope: !101)
!274 = !DILocation(line: 399, column: 9, scope: !100)
!275 = !DILocation(line: 399, column: 19, scope: !100)
!276 = !DILocation(line: 399, column: 7, scope: !100)
!277 = !DILocation(line: 399, column: 5, scope: !100)
!278 = !DILocation(line: 400, column: 13, scope: !99)
!279 = !DILocation(line: 400, column: 23, scope: !99)
!280 = !DILocation(line: 400, column: 13, scope: !100)
!281 = !DILocation(line: 400, column: 31, scope: !99)
!282 = !DILocation(line: 401, column: 3, scope: !98)
!283 = !DILocation(line: 402, column: 11, scope: !98)
!284 = !DILocation(line: 403, column: 52, scope: !98)
!285 = !DILocation(line: 403, column: 55, scope: !98)
!286 = !DILocation(line: 403, column: 23, scope: !98)
!287 = !DILocation(line: 403, column: 21, scope: !98)
!288 = !DILocation(line: 403, column: 17, scope: !98)
!289 = !DILocation(line: 403, column: 15, scope: !98)
!290 = !DILocation(line: 404, column: 5, scope: !98)
!291 = !DILocation(line: 406, column: 30, scope: !101)
!292 = !DILocation(line: 406, column: 33, scope: !101)
!293 = !DILocation(line: 406, column: 22, scope: !101)
!294 = !DILocation(line: 406, column: 20, scope: !101)
!295 = !DILocation(line: 406, column: 16, scope: !101)
!296 = !DILocation(line: 406, column: 14, scope: !101)
!297 = !DILocation(line: 407, column: 4, scope: !101)
!298 = !DILocation(line: 411, column: 9, scope: !101)
!299 = !DILocation(line: 412, column: 4, scope: !101)
!300 = !DILocation(line: 415, column: 8, scope: !301)
!301 = distinct !DILexicalBlock(scope: !101, file: !2, line: 415, column: 8)
!302 = !DILocation(line: 415, column: 18, scope: !301)
!303 = !DILocation(line: 415, column: 8, scope: !101)
!304 = !DILocation(line: 416, column: 15, scope: !301)
!305 = !DILocation(line: 416, column: 5, scope: !301)
!306 = !DILocation(line: 415, column: 20, scope: !301)
!307 = !DILocation(line: 419, column: 10, scope: !101)
!308 = !DILocation(line: 419, column: 4, scope: !101)
!309 = !DILocation(line: 422, column: 9, scope: !101)
!310 = !DILocation(line: 423, column: 4, scope: !101)
!311 = !DILocation(line: 427, column: 10, scope: !101)
!312 = !DILocation(line: 427, column: 4, scope: !101)
!313 = !DILocation(line: 430, column: 10, scope: !101)
!314 = !DILocation(line: 431, column: 9, scope: !101)
!315 = !DILocation(line: 432, column: 4, scope: !101)
!316 = !DILocation(line: 441, column: 4, scope: !101)
!317 = !DILocation(line: 443, column: 8, scope: !318)
!318 = distinct !DILexicalBlock(scope: !102, file: !2, line: 443, column: 7)
!319 = !DILocation(line: 443, column: 7, scope: !318)
!320 = !DILocation(line: 443, column: 12, scope: !318)
!321 = !DILocation(line: 443, column: 7, scope: !102)
!322 = !DILocation(line: 444, column: 25, scope: !323)
!323 = distinct !DILexicalBlock(scope: !318, file: !2, line: 443, column: 20)
!324 = !DILocation(line: 444, column: 10, scope: !323)
!325 = !DILocation(line: 444, column: 8, scope: !323)
!326 = !DILocation(line: 445, column: 3, scope: !323)
!327 = !DILocation(line: 446, column: 21, scope: !328)
!328 = distinct !DILexicalBlock(scope: !318, file: !2, line: 445, column: 10)
!329 = !DILocation(line: 446, column: 27, scope: !328)
!330 = !DILocation(line: 446, column: 35, scope: !328)
!331 = !DILocation(line: 446, column: 10, scope: !328)
!332 = !DILocation(line: 446, column: 8, scope: !328)
!333 = !DILocation(line: 449, column: 25, scope: !102)
!334 = !DILocation(line: 449, column: 10, scope: !102)
!335 = !DILocation(line: 449, column: 8, scope: !102)
!336 = !DILocation(line: 450, column: 7, scope: !337)
!337 = distinct !DILexicalBlock(scope: !102, file: !2, line: 450, column: 7)
!338 = !DILocation(line: 450, column: 7, scope: !102)
!339 = !DILocation(line: 451, column: 4, scope: !337)
!340 = !DILocation(line: 453, column: 14, scope: !102)
!341 = !DILocation(line: 453, column: 23, scope: !102)
!342 = !DILocation(line: 453, column: 28, scope: !102)
!343 = !DILocation(line: 453, column: 34, scope: !102)
!344 = !DILocation(line: 453, column: 40, scope: !102)
!345 = !DILocation(line: 453, column: 7, scope: !102)
!346 = !DILocation(line: 453, column: 5, scope: !102)
!347 = !DILocation(line: 454, column: 9, scope: !102)
!348 = !DILocation(line: 454, column: 19, scope: !102)
!349 = !DILocation(line: 454, column: 17, scope: !102)
!350 = !DILocation(line: 454, column: 7, scope: !102)
!351 = !DILocation(line: 456, column: 7, scope: !352)
!352 = distinct !DILexicalBlock(scope: !102, file: !2, line: 456, column: 7)
!353 = !DILocation(line: 456, column: 17, scope: !352)
!354 = !DILocation(line: 456, column: 7, scope: !102)
!355 = !DILocation(line: 457, column: 14, scope: !352)
!356 = !DILocation(line: 457, column: 4, scope: !352)
!357 = !DILocation(line: 459, column: 7, scope: !358)
!358 = distinct !DILexicalBlock(scope: !102, file: !2, line: 459, column: 7)
!359 = !DILocation(line: 459, column: 19, scope: !358)
!360 = !DILocation(line: 459, column: 17, scope: !358)
!361 = !DILocation(line: 459, column: 7, scope: !102)
!362 = !DILocation(line: 460, column: 16, scope: !358)
!363 = !DILocation(line: 460, column: 14, scope: !358)
!364 = !DILocation(line: 460, column: 4, scope: !358)
!365 = !DILocation(line: 461, column: 7, scope: !366)
!366 = distinct !DILexicalBlock(scope: !102, file: !2, line: 461, column: 7)
!367 = !DILocation(line: 461, column: 13, scope: !366)
!368 = !DILocation(line: 461, column: 7, scope: !102)
!369 = !DILocation(line: 467, column: 8, scope: !370)
!370 = distinct !DILexicalBlock(scope: !371, file: !2, line: 467, column: 8)
!371 = distinct !DILexicalBlock(scope: !366, file: !2, line: 461, column: 24)
!372 = !DILocation(line: 467, column: 13, scope: !370)
!373 = !DILocation(line: 467, column: 18, scope: !370)
!374 = !DILocation(line: 467, column: 21, scope: !370)
!375 = !DILocation(line: 467, column: 34, scope: !370)
!376 = !DILocation(line: 467, column: 31, scope: !370)
!377 = !DILocation(line: 467, column: 8, scope: !371)
!378 = !DILocation(line: 468, column: 5, scope: !370)
!379 = !DILocation(line: 474, column: 8, scope: !380)
!380 = distinct !DILexicalBlock(scope: !371, file: !2, line: 474, column: 8)
!381 = !DILocation(line: 474, column: 13, scope: !380)
!382 = !DILocation(line: 474, column: 19, scope: !380)
!383 = !DILocation(line: 474, column: 22, scope: !380)
!384 = !DILocation(line: 474, column: 32, scope: !380)
!385 = !DILocation(line: 474, column: 8, scope: !371)
!386 = !DILocation(line: 475, column: 17, scope: !380)
!387 = !DILocation(line: 475, column: 5, scope: !380)
!388 = !DILocation(line: 477, column: 11, scope: !380)
!389 = !DILocation(line: 478, column: 3, scope: !371)
!390 = !DILocation(line: 483, column: 8, scope: !391)
!391 = distinct !DILexicalBlock(scope: !102, file: !2, line: 483, column: 7)
!392 = !DILocation(line: 483, column: 14, scope: !391)
!393 = !DILocation(line: 483, column: 25, scope: !391)
!394 = !DILocation(line: 483, column: 28, scope: !391)
!395 = !DILocation(line: 483, column: 42, scope: !391)
!396 = !DILocation(line: 483, column: 40, scope: !391)
!397 = !DILocation(line: 483, column: 7, scope: !102)
!398 = !DILocation(line: 484, column: 16, scope: !391)
!399 = !DILocation(line: 484, column: 14, scope: !391)
!400 = !DILocation(line: 484, column: 4, scope: !391)
!401 = !DILocation(line: 486, column: 1, scope: !102)
!402 = !DILocation(line: 488, column: 18, scope: !102)
!403 = !DILocation(line: 488, column: 15, scope: !102)
!404 = !DILocation(line: 490, column: 9, scope: !405)
!405 = distinct !DILexicalBlock(scope: !102, file: !2, line: 490, column: 7)
!406 = !DILocation(line: 490, column: 15, scope: !405)
!407 = !DILocation(line: 490, column: 7, scope: !102)
!408 = !DILocation(line: 491, column: 4, scope: !405)
!409 = !DILocation(line: 491, column: 22, scope: !405)
!410 = !DILocation(line: 491, column: 25, scope: !405)
!411 = !DILocation(line: 492, column: 5, scope: !405)
!412 = !DILocation(line: 492, column: 5, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !2, line: 492, column: 5)
!414 = distinct !DILexicalBlock(scope: !405, file: !2, line: 492, column: 5)
!415 = !DILocation(line: 492, column: 5, scope: !414)
!416 = distinct !{!416, !408, !411, !417, !418}
!417 = !{!"llvm.loop.mustprogress"}
!418 = !{!"llvm.loop.unroll.disable"}
!419 = !DILocation(line: 494, column: 7, scope: !420)
!420 = distinct !DILexicalBlock(scope: !102, file: !2, line: 494, column: 7)
!421 = !DILocation(line: 494, column: 7, scope: !102)
!422 = !DILocation(line: 495, column: 4, scope: !420)
!423 = !DILocation(line: 495, column: 4, scope: !424)
!424 = distinct !DILexicalBlock(scope: !425, file: !2, line: 495, column: 4)
!425 = distinct !DILexicalBlock(scope: !420, file: !2, line: 495, column: 4)
!426 = !DILocation(line: 495, column: 4, scope: !425)
!427 = !DILocation(line: 497, column: 7, scope: !428)
!428 = distinct !DILexicalBlock(scope: !102, file: !2, line: 497, column: 7)
!429 = !DILocation(line: 497, column: 13, scope: !428)
!430 = !DILocation(line: 497, column: 7, scope: !102)
!431 = !DILocation(line: 498, column: 4, scope: !432)
!432 = distinct !DILexicalBlock(scope: !428, file: !2, line: 497, column: 24)
!433 = !DILocation(line: 498, column: 4, scope: !434)
!434 = distinct !DILexicalBlock(scope: !435, file: !2, line: 498, column: 4)
!435 = distinct !DILexicalBlock(scope: !432, file: !2, line: 498, column: 4)
!436 = !DILocation(line: 498, column: 4, scope: !435)
!437 = !DILocation(line: 499, column: 4, scope: !432)
!438 = !DILocation(line: 499, column: 4, scope: !439)
!439 = distinct !DILexicalBlock(scope: !440, file: !2, line: 499, column: 4)
!440 = distinct !DILexicalBlock(scope: !432, file: !2, line: 499, column: 4)
!441 = !DILocation(line: 499, column: 4, scope: !440)
!442 = !DILocation(line: 500, column: 3, scope: !432)
!443 = !DILocation(line: 502, column: 3, scope: !102)
!444 = !DILocation(line: 502, column: 19, scope: !102)
!445 = !DILocation(line: 502, column: 10, scope: !102)
!446 = !DILocation(line: 502, column: 24, scope: !102)
!447 = !DILocation(line: 502, column: 22, scope: !102)
!448 = !DILocation(line: 503, column: 4, scope: !102)
!449 = !DILocation(line: 503, column: 4, scope: !450)
!450 = distinct !DILexicalBlock(scope: !451, file: !2, line: 503, column: 4)
!451 = distinct !DILexicalBlock(scope: !102, file: !2, line: 503, column: 4)
!452 = !DILocation(line: 503, column: 4, scope: !451)
!453 = distinct !{!453, !443, !448, !417, !418}
!454 = !DILocation(line: 505, column: 7, scope: !108)
!455 = !DILocation(line: 505, column: 13, scope: !108)
!456 = !DILocation(line: 505, column: 7, scope: !102)
!457 = !DILocation(line: 506, column: 4, scope: !107)
!458 = !DILocation(line: 506, column: 15, scope: !107)
!459 = !DILocation(line: 506, column: 33, scope: !107)
!460 = !DILocation(line: 508, column: 4, scope: !107)
!461 = !DILocation(line: 508, column: 14, scope: !107)
!462 = !DILocation(line: 508, column: 17, scope: !107)
!463 = !DILocation(line: 509, column: 5, scope: !110)
!464 = !DILocation(line: 509, column: 9, scope: !110)
!465 = !DILocation(line: 509, column: 15, scope: !110)
!466 = !DILocation(line: 510, column: 5, scope: !110)
!467 = !DILocation(line: 510, column: 9, scope: !110)
!468 = !DILocation(line: 511, column: 5, scope: !110)
!469 = !DILocation(line: 511, column: 12, scope: !110)
!470 = !DILocation(line: 513, column: 9, scope: !471)
!471 = distinct !DILexicalBlock(scope: !110, file: !2, line: 513, column: 9)
!472 = !DILocation(line: 513, column: 13, scope: !471)
!473 = !DILocation(line: 513, column: 9, scope: !110)
!474 = !DILocation(line: 514, column: 6, scope: !475)
!475 = distinct !DILexicalBlock(scope: !471, file: !2, line: 513, column: 21)
!476 = !DILocation(line: 514, column: 6, scope: !477)
!477 = distinct !DILexicalBlock(scope: !478, file: !2, line: 514, column: 6)
!478 = distinct !DILexicalBlock(scope: !475, file: !2, line: 514, column: 6)
!479 = !DILocation(line: 514, column: 6, scope: !478)
!480 = !DILocation(line: 515, column: 6, scope: !475)
!481 = distinct !{!481, !460, !482, !417, !418}
!482 = !DILocation(line: 537, column: 4, scope: !107)
!483 = !DILocation(line: 519, column: 17, scope: !110)
!484 = !DILocation(line: 519, column: 21, scope: !110)
!485 = !DILocation(line: 519, column: 14, scope: !110)
!486 = !DILocation(line: 519, column: 34, scope: !110)
!487 = !DILocation(line: 519, column: 38, scope: !110)
!488 = !DILocation(line: 519, column: 31, scope: !110)
!489 = !DILocation(line: 519, column: 12, scope: !110)
!490 = !DILocation(line: 519, column: 10, scope: !110)
!491 = !DILocation(line: 521, column: 12, scope: !110)
!492 = !DILocation(line: 521, column: 9, scope: !110)
!493 = !DILocation(line: 522, column: 17, scope: !110)
!494 = !DILocation(line: 522, column: 21, scope: !110)
!495 = !DILocation(line: 522, column: 8, scope: !110)
!496 = !DILocation(line: 525, column: 5, scope: !110)
!497 = !DILocation(line: 525, column: 5, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !2, line: 525, column: 5)
!499 = distinct !DILexicalBlock(scope: !110, file: !2, line: 525, column: 5)
!500 = !DILocation(line: 525, column: 5, scope: !499)
!501 = !DILocation(line: 526, column: 12, scope: !110)
!502 = !DILocation(line: 526, column: 9, scope: !110)
!503 = !DILocation(line: 527, column: 9, scope: !504)
!504 = distinct !DILexicalBlock(scope: !110, file: !2, line: 527, column: 9)
!505 = !DILocation(line: 527, column: 16, scope: !504)
!506 = !DILocation(line: 527, column: 13, scope: !504)
!507 = !DILocation(line: 527, column: 9, scope: !110)
!508 = !DILocation(line: 528, column: 6, scope: !504)
!509 = !DILocation(line: 531, column: 27, scope: !110)
!510 = !DILocation(line: 531, column: 24, scope: !110)
!511 = !DILocation(line: 531, column: 11, scope: !110)
!512 = !DILocation(line: 531, column: 6, scope: !110)
!513 = !DILocation(line: 531, column: 9, scope: !110)
!514 = !DILocation(line: 533, column: 16, scope: !515)
!515 = distinct !DILexicalBlock(scope: !110, file: !2, line: 533, column: 5)
!516 = !DILocation(line: 533, column: 13, scope: !515)
!517 = !DILocation(line: 533, column: 10, scope: !515)
!518 = !DILocation(line: 533, column: 22, scope: !519)
!519 = distinct !DILexicalBlock(scope: !515, file: !2, line: 533, column: 5)
!520 = !DILocation(line: 533, column: 5, scope: !515)
!521 = !DILocation(line: 534, column: 22, scope: !519)
!522 = !DILocation(line: 534, column: 26, scope: !519)
!523 = !DILocation(line: 534, column: 19, scope: !519)
!524 = !DILocation(line: 534, column: 14, scope: !519)
!525 = !DILocation(line: 534, column: 9, scope: !519)
!526 = !DILocation(line: 534, column: 12, scope: !519)
!527 = !DILocation(line: 534, column: 6, scope: !519)
!528 = !DILocation(line: 533, column: 28, scope: !519)
!529 = !DILocation(line: 533, column: 40, scope: !519)
!530 = !DILocation(line: 533, column: 5, scope: !519)
!531 = distinct !{!531, !520, !532, !417, !418}
!532 = !DILocation(line: 534, column: 32, scope: !515)
!533 = !DILocation(line: 536, column: 12, scope: !110)
!534 = !DILocation(line: 536, column: 6, scope: !110)
!535 = !DILocation(line: 536, column: 9, scope: !110)
!536 = !DILocation(line: 538, column: 3, scope: !108)
!537 = !DILocation(line: 538, column: 3, scope: !107)
!538 = !DILocation(line: 539, column: 4, scope: !539)
!539 = distinct !DILexicalBlock(scope: !108, file: !2, line: 538, column: 10)
!540 = !DILocation(line: 539, column: 14, scope: !539)
!541 = !DILocation(line: 539, column: 17, scope: !539)
!542 = !DILocation(line: 540, column: 5, scope: !539)
!543 = !DILocation(line: 540, column: 5, scope: !544)
!544 = distinct !DILexicalBlock(scope: !545, file: !2, line: 540, column: 5)
!545 = distinct !DILexicalBlock(scope: !539, file: !2, line: 540, column: 5)
!546 = !DILocation(line: 540, column: 5, scope: !545)
!547 = distinct !{!547, !538, !542, !417, !418}
!548 = !DILocation(line: 543, column: 3, scope: !102)
!549 = !DILocation(line: 543, column: 21, scope: !102)
!550 = !DILocation(line: 543, column: 24, scope: !102)
!551 = !DILocation(line: 544, column: 4, scope: !102)
!552 = !DILocation(line: 544, column: 4, scope: !553)
!553 = distinct !DILexicalBlock(scope: !554, file: !2, line: 544, column: 4)
!554 = distinct !DILexicalBlock(scope: !102, file: !2, line: 544, column: 4)
!555 = !DILocation(line: 544, column: 4, scope: !554)
!556 = distinct !{!556, !548, !551, !417, !418}
!557 = !DILocation(line: 545, column: 2, scope: !102)
!558 = !DILocation(line: 337, column: 22, scope: !103)
!559 = !DILocation(line: 337, column: 2, scope: !103)
!560 = distinct !{!560, !155, !561, !417, !418}
!561 = !DILocation(line: 545, column: 2, scope: !104)
!562 = !DILocation(line: 546, column: 1, scope: !54)
!563 = !DILocation(line: 547, column: 2, scope: !54)
!564 = !DILocation(line: 549, column: 6, scope: !118)
!565 = !DILocation(line: 549, column: 6, scope: !54)
!566 = !DILocation(line: 550, column: 3, scope: !118)
!567 = !DILocation(line: 550, column: 7, scope: !117)
!568 = !DILocation(line: 550, column: 7, scope: !118)
!569 = !DILocation(line: 550, column: 25, scope: !118)
!570 = !DILocation(line: 552, column: 9, scope: !54)
!571 = !DILocation(line: 553, column: 1, scope: !54)
!572 = !DILocation(line: 552, column: 2, scope: !54)
!573 = distinct !DISubprogram(name: "get_flags", scope: !2, file: !2, line: 153, type: !574, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !577)
!574 = !DISubroutineType(types: !575)
!575 = !{!19, !576}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!577 = !{!578, !579}
!578 = !DILocalVariable(name: "fmt", arg: 1, scope: !573, file: !2, line: 153, type: !576)
!579 = !DILocalVariable(name: "flags", scope: !573, file: !2, line: 155, type: !19)
!580 = !DILocation(line: 153, column: 28, scope: !573)
!581 = !DILocation(line: 155, column: 2, scope: !573)
!582 = !DILocation(line: 155, column: 6, scope: !573)
!583 = !DILocation(line: 157, column: 2, scope: !573)
!584 = !DILocation(line: 158, column: 13, scope: !585)
!585 = distinct !DILexicalBlock(scope: !573, file: !2, line: 157, column: 5)
!586 = !DILocation(line: 158, column: 12, scope: !585)
!587 = !DILocation(line: 158, column: 11, scope: !585)
!588 = !DILocation(line: 158, column: 3, scope: !585)
!589 = !DILocation(line: 160, column: 10, scope: !590)
!590 = distinct !DILexicalBlock(scope: !585, file: !2, line: 158, column: 18)
!591 = !DILocation(line: 161, column: 4, scope: !590)
!592 = !DILocation(line: 163, column: 10, scope: !590)
!593 = !DILocation(line: 164, column: 4, scope: !590)
!594 = !DILocation(line: 166, column: 10, scope: !590)
!595 = !DILocation(line: 167, column: 4, scope: !590)
!596 = !DILocation(line: 169, column: 10, scope: !590)
!597 = !DILocation(line: 170, column: 4, scope: !590)
!598 = !DILocation(line: 172, column: 10, scope: !590)
!599 = !DILocation(line: 173, column: 4, scope: !590)
!600 = !DILocation(line: 175, column: 11, scope: !590)
!601 = !DILocation(line: 175, column: 4, scope: !590)
!602 = !DILocation(line: 177, column: 7, scope: !585)
!603 = !DILocation(line: 177, column: 3, scope: !585)
!604 = !DILocation(line: 178, column: 2, scope: !585)
!605 = distinct !{!605, !583, !606, !418}
!606 = !DILocation(line: 178, column: 12, scope: !573)
!607 = !DILocation(line: 179, column: 1, scope: !573)
!608 = distinct !DISubprogram(name: "get_int", scope: !2, file: !2, line: 182, type: !609, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !612)
!609 = !DISubroutineType(types: !610)
!610 = !{!19, !576, !611}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!612 = !{!613, !614}
!613 = !DILocalVariable(name: "fmt", arg: 1, scope: !608, file: !2, line: 182, type: !576)
!614 = !DILocalVariable(name: "ap", arg: 2, scope: !608, file: !2, line: 182, type: !611)
!615 = !DILocation(line: 182, column: 26, scope: !608)
!616 = !DILocation(line: 182, column: 40, scope: !608)
!617 = !DILocation(line: 184, column: 16, scope: !618)
!618 = distinct !DILexicalBlock(scope: !608, file: !2, line: 184, column: 6)
!619 = !DILocation(line: 184, column: 15, scope: !618)
!620 = !DILocation(line: 184, column: 14, scope: !618)
!621 = !DILocation(line: 184, column: 6, scope: !618)
!622 = !DILocation(line: 184, column: 6, scope: !608)
!623 = !DILocation(line: 185, column: 20, scope: !618)
!624 = !DILocation(line: 185, column: 10, scope: !618)
!625 = !DILocation(line: 185, column: 3, scope: !618)
!626 = !DILocation(line: 186, column: 8, scope: !627)
!627 = distinct !DILexicalBlock(scope: !608, file: !2, line: 186, column: 6)
!628 = !DILocation(line: 186, column: 7, scope: !627)
!629 = !DILocation(line: 186, column: 6, scope: !627)
!630 = !DILocation(line: 186, column: 12, scope: !627)
!631 = !DILocation(line: 186, column: 6, scope: !608)
!632 = !DILocation(line: 187, column: 7, scope: !633)
!633 = distinct !DILexicalBlock(scope: !627, file: !2, line: 186, column: 20)
!634 = !DILocation(line: 187, column: 3, scope: !633)
!635 = !DILocation(line: 189, column: 10, scope: !633)
!636 = !DILocation(line: 189, column: 3, scope: !633)
!637 = !DILocation(line: 191, column: 2, scope: !608)
!638 = !DILocation(line: 192, column: 1, scope: !608)
!639 = distinct !DISubprogram(name: "utf16s_utf8nlen", scope: !2, file: !2, line: 243, type: !640, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !642)
!640 = !DISubroutineType(types: !641)
!641 = !{!57, !29, !57}
!642 = !{!643, !644, !645, !646, !647}
!643 = !DILocalVariable(name: "s16", arg: 1, scope: !639, file: !2, line: 243, type: !29)
!644 = !DILocalVariable(name: "maxlen", arg: 2, scope: !639, file: !2, line: 243, type: !57)
!645 = !DILocalVariable(name: "len", scope: !639, file: !2, line: 245, type: !57)
!646 = !DILocalVariable(name: "clen", scope: !639, file: !2, line: 245, type: !57)
!647 = !DILocalVariable(name: "c0", scope: !648, file: !2, line: 248, type: !22)
!648 = distinct !DILexicalBlock(scope: !649, file: !2, line: 247, column: 51)
!649 = distinct !DILexicalBlock(scope: !650, file: !2, line: 247, column: 2)
!650 = distinct !DILexicalBlock(scope: !639, file: !2, line: 247, column: 2)
!651 = !DILocation(line: 243, column: 35, scope: !639)
!652 = !DILocation(line: 243, column: 47, scope: !639)
!653 = !DILocation(line: 245, column: 2, scope: !639)
!654 = !DILocation(line: 245, column: 9, scope: !639)
!655 = !DILocation(line: 245, column: 14, scope: !639)
!656 = !DILocation(line: 247, column: 11, scope: !650)
!657 = !DILocation(line: 247, column: 7, scope: !650)
!658 = !DILocation(line: 247, column: 16, scope: !649)
!659 = !DILocation(line: 247, column: 22, scope: !649)
!660 = !DILocation(line: 247, column: 20, scope: !649)
!661 = !DILocation(line: 247, column: 29, scope: !649)
!662 = !DILocation(line: 247, column: 33, scope: !649)
!663 = !DILocation(line: 247, column: 32, scope: !649)
!664 = !DILocation(line: 0, scope: !649)
!665 = !DILocation(line: 247, column: 2, scope: !650)
!666 = !DILocation(line: 248, column: 3, scope: !648)
!667 = !DILocation(line: 248, column: 7, scope: !648)
!668 = !DILocation(line: 248, column: 16, scope: !648)
!669 = !DILocation(line: 248, column: 12, scope: !648)
!670 = !DILocation(line: 251, column: 15, scope: !648)
!671 = !DILocation(line: 251, column: 18, scope: !648)
!672 = !DILocation(line: 251, column: 12, scope: !648)
!673 = !DILocation(line: 251, column: 30, scope: !648)
!674 = !DILocation(line: 251, column: 33, scope: !648)
!675 = !DILocation(line: 251, column: 27, scope: !648)
!676 = !DILocation(line: 251, column: 10, scope: !648)
!677 = !DILocation(line: 251, column: 8, scope: !648)
!678 = !DILocation(line: 252, column: 7, scope: !679)
!679 = distinct !DILexicalBlock(scope: !648, file: !2, line: 252, column: 7)
!680 = !DILocation(line: 252, column: 13, scope: !679)
!681 = !DILocation(line: 252, column: 11, scope: !679)
!682 = !DILocation(line: 252, column: 20, scope: !679)
!683 = !DILocation(line: 252, column: 18, scope: !679)
!684 = !DILocation(line: 252, column: 7, scope: !648)
!685 = !DILocation(line: 253, column: 4, scope: !679)
!686 = !DILocation(line: 260, column: 8, scope: !687)
!687 = distinct !DILexicalBlock(scope: !648, file: !2, line: 260, column: 7)
!688 = !DILocation(line: 260, column: 11, scope: !687)
!689 = !DILocation(line: 260, column: 21, scope: !687)
!690 = !DILocation(line: 260, column: 7, scope: !648)
!691 = !DILocation(line: 261, column: 8, scope: !692)
!692 = distinct !DILexicalBlock(scope: !693, file: !2, line: 261, column: 8)
!693 = distinct !DILexicalBlock(scope: !687, file: !2, line: 260, column: 32)
!694 = !DILocation(line: 261, column: 14, scope: !692)
!695 = !DILocation(line: 261, column: 12, scope: !692)
!696 = !DILocation(line: 261, column: 22, scope: !692)
!697 = !DILocation(line: 261, column: 19, scope: !692)
!698 = !DILocation(line: 261, column: 8, scope: !693)
!699 = !DILocation(line: 262, column: 5, scope: !692)
!700 = !DILocation(line: 263, column: 10, scope: !701)
!701 = distinct !DILexicalBlock(scope: !693, file: !2, line: 263, column: 8)
!702 = !DILocation(line: 263, column: 9, scope: !701)
!703 = !DILocation(line: 263, column: 14, scope: !701)
!704 = !DILocation(line: 263, column: 24, scope: !701)
!705 = !DILocation(line: 263, column: 8, scope: !693)
!706 = !DILocation(line: 264, column: 5, scope: !707)
!707 = distinct !DILexicalBlock(scope: !701, file: !2, line: 263, column: 35)
!708 = !DILocation(line: 265, column: 5, scope: !707)
!709 = !DILocation(line: 266, column: 4, scope: !707)
!710 = !DILocation(line: 267, column: 3, scope: !693)
!711 = !DILocation(line: 268, column: 2, scope: !649)
!712 = !DILocation(line: 268, column: 2, scope: !648)
!713 = !DILocation(line: 247, column: 45, scope: !649)
!714 = !DILocation(line: 247, column: 42, scope: !649)
!715 = !DILocation(line: 247, column: 2, scope: !649)
!716 = distinct !{!716, !665, !717, !417, !418}
!717 = !DILocation(line: 268, column: 2, scope: !650)
!718 = !DILocation(line: 270, column: 9, scope: !639)
!719 = !DILocation(line: 271, column: 1, scope: !639)
!720 = !DILocation(line: 270, column: 2, scope: !639)
!721 = !DISubprogram(name: "strnlen", scope: !722, file: !722, line: 131, type: !723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!722 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!723 = !DISubroutineType(types: !724)
!724 = !{!59, !62, !59}
!725 = distinct !DISubprogram(name: "get_number", scope: !2, file: !2, line: 195, type: !726, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !728)
!726 = !DISubroutineType(types: !727)
!727 = !{!18, !19, !19, !611}
!728 = !{!729, !730, !731}
!729 = !DILocalVariable(name: "sign", arg: 1, scope: !725, file: !2, line: 195, type: !19)
!730 = !DILocalVariable(name: "qualifier", arg: 2, scope: !725, file: !2, line: 195, type: !19)
!731 = !DILocalVariable(name: "ap", arg: 3, scope: !725, file: !2, line: 195, type: !611)
!732 = !DILocation(line: 195, column: 35, scope: !725)
!733 = !DILocation(line: 195, column: 45, scope: !725)
!734 = !DILocation(line: 195, column: 65, scope: !725)
!735 = !DILocation(line: 197, column: 6, scope: !736)
!736 = distinct !DILexicalBlock(scope: !725, file: !2, line: 197, column: 6)
!737 = !DILocation(line: 197, column: 6, scope: !725)
!738 = !DILocation(line: 198, column: 11, scope: !739)
!739 = distinct !DILexicalBlock(scope: !736, file: !2, line: 197, column: 12)
!740 = !DILocation(line: 198, column: 3, scope: !739)
!741 = !DILocation(line: 200, column: 11, scope: !742)
!742 = distinct !DILexicalBlock(scope: !739, file: !2, line: 198, column: 22)
!743 = !DILocation(line: 200, column: 4, scope: !742)
!744 = !DILocation(line: 202, column: 11, scope: !742)
!745 = !DILocation(line: 202, column: 4, scope: !742)
!746 = !DILocation(line: 204, column: 18, scope: !742)
!747 = !DILocation(line: 204, column: 11, scope: !742)
!748 = !DILocation(line: 204, column: 4, scope: !742)
!749 = !DILocation(line: 206, column: 24, scope: !742)
!750 = !DILocation(line: 206, column: 11, scope: !742)
!751 = !DILocation(line: 206, column: 4, scope: !742)
!752 = !DILocation(line: 208, column: 11, scope: !742)
!753 = !DILocation(line: 208, column: 4, scope: !742)
!754 = !DILocation(line: 211, column: 11, scope: !755)
!755 = distinct !DILexicalBlock(scope: !736, file: !2, line: 210, column: 9)
!756 = !DILocation(line: 211, column: 3, scope: !755)
!757 = !DILocation(line: 213, column: 11, scope: !758)
!758 = distinct !DILexicalBlock(scope: !755, file: !2, line: 211, column: 22)
!759 = !DILocation(line: 213, column: 4, scope: !758)
!760 = !DILocation(line: 215, column: 11, scope: !758)
!761 = !DILocation(line: 215, column: 4, scope: !758)
!762 = !DILocation(line: 217, column: 27, scope: !758)
!763 = !DILocation(line: 217, column: 11, scope: !758)
!764 = !DILocation(line: 217, column: 4, scope: !758)
!765 = !DILocation(line: 219, column: 26, scope: !758)
!766 = !DILocation(line: 219, column: 11, scope: !758)
!767 = !DILocation(line: 219, column: 4, scope: !758)
!768 = !DILocation(line: 221, column: 11, scope: !758)
!769 = !DILocation(line: 221, column: 4, scope: !758)
!770 = !DILocation(line: 224, column: 1, scope: !725)
!771 = distinct !DISubprogram(name: "get_sign", scope: !2, file: !2, line: 227, type: !772, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !775)
!772 = !DISubroutineType(types: !773)
!773 = !{!4, !774, !19}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!775 = !{!776, !777}
!776 = !DILocalVariable(name: "num", arg: 1, scope: !771, file: !2, line: 227, type: !774)
!777 = !DILocalVariable(name: "flags", arg: 2, scope: !771, file: !2, line: 227, type: !19)
!778 = !DILocation(line: 227, column: 26, scope: !771)
!779 = !DILocation(line: 227, column: 35, scope: !771)
!780 = !DILocation(line: 229, column: 8, scope: !781)
!781 = distinct !DILexicalBlock(scope: !771, file: !2, line: 229, column: 6)
!782 = !DILocation(line: 229, column: 14, scope: !781)
!783 = !DILocation(line: 229, column: 6, scope: !771)
!784 = !DILocation(line: 230, column: 3, scope: !781)
!785 = !DILocation(line: 231, column: 7, scope: !786)
!786 = distinct !DILexicalBlock(scope: !771, file: !2, line: 231, column: 6)
!787 = !DILocation(line: 231, column: 6, scope: !786)
!788 = !DILocation(line: 231, column: 11, scope: !786)
!789 = !DILocation(line: 231, column: 6, scope: !771)
!790 = !DILocation(line: 232, column: 13, scope: !791)
!791 = distinct !DILexicalBlock(scope: !786, file: !2, line: 231, column: 16)
!792 = !DILocation(line: 232, column: 12, scope: !791)
!793 = !DILocation(line: 232, column: 10, scope: !791)
!794 = !DILocation(line: 232, column: 4, scope: !791)
!795 = !DILocation(line: 232, column: 8, scope: !791)
!796 = !DILocation(line: 233, column: 3, scope: !791)
!797 = !DILocation(line: 235, column: 6, scope: !798)
!798 = distinct !DILexicalBlock(scope: !771, file: !2, line: 235, column: 6)
!799 = !DILocation(line: 235, column: 12, scope: !798)
!800 = !DILocation(line: 235, column: 6, scope: !771)
!801 = !DILocation(line: 236, column: 3, scope: !798)
!802 = !DILocation(line: 237, column: 6, scope: !803)
!803 = distinct !DILexicalBlock(scope: !771, file: !2, line: 237, column: 6)
!804 = !DILocation(line: 237, column: 12, scope: !803)
!805 = !DILocation(line: 237, column: 6, scope: !771)
!806 = !DILocation(line: 238, column: 3, scope: !803)
!807 = !DILocation(line: 239, column: 2, scope: !771)
!808 = !DILocation(line: 240, column: 1, scope: !771)
!809 = !DILocation(line: 113, column: 20, scope: !14)
!810 = !DILocation(line: 113, column: 44, scope: !14)
!811 = !DILocation(line: 113, column: 53, scope: !14)
!812 = !DILocation(line: 113, column: 64, scope: !14)
!813 = !DILocation(line: 123, column: 10, scope: !14)
!814 = !DILocation(line: 123, column: 2, scope: !14)
!815 = !DILocation(line: 125, column: 7, scope: !816)
!816 = distinct !DILexicalBlock(scope: !817, file: !2, line: 125, column: 7)
!817 = distinct !DILexicalBlock(scope: !14, file: !2, line: 123, column: 16)
!818 = !DILocation(line: 125, column: 11, scope: !816)
!819 = !DILocation(line: 125, column: 7, scope: !817)
!820 = !DILocation(line: 126, column: 18, scope: !816)
!821 = !DILocation(line: 126, column: 23, scope: !816)
!822 = !DILocation(line: 126, column: 10, scope: !816)
!823 = !DILocation(line: 126, column: 8, scope: !816)
!824 = !DILocation(line: 126, column: 4, scope: !816)
!825 = !DILocation(line: 127, column: 3, scope: !817)
!826 = !DILocation(line: 129, column: 3, scope: !817)
!827 = !DILocation(line: 129, column: 10, scope: !828)
!828 = distinct !DILexicalBlock(scope: !829, file: !2, line: 129, column: 3)
!829 = distinct !DILexicalBlock(scope: !817, file: !2, line: 129, column: 3)
!830 = !DILocation(line: 129, column: 14, scope: !828)
!831 = !DILocation(line: 129, column: 3, scope: !829)
!832 = !DILocation(line: 130, column: 20, scope: !828)
!833 = !DILocation(line: 130, column: 24, scope: !828)
!834 = !DILocation(line: 130, column: 17, scope: !828)
!835 = !DILocation(line: 130, column: 13, scope: !828)
!836 = !DILocation(line: 130, column: 5, scope: !828)
!837 = !DILocation(line: 130, column: 11, scope: !828)
!838 = !DILocation(line: 130, column: 4, scope: !828)
!839 = !DILocation(line: 129, column: 24, scope: !828)
!840 = !DILocation(line: 129, column: 3, scope: !828)
!841 = distinct !{!841, !831, !842, !417, !418}
!842 = !DILocation(line: 130, column: 28, scope: !829)
!843 = !DILocation(line: 131, column: 3, scope: !817)
!844 = !DILocation(line: 133, column: 3, scope: !817)
!845 = !DILocation(line: 133, column: 10, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !2, line: 133, column: 3)
!847 = distinct !DILexicalBlock(scope: !817, file: !2, line: 133, column: 3)
!848 = !DILocation(line: 133, column: 14, scope: !846)
!849 = !DILocation(line: 133, column: 3, scope: !847)
!850 = !DILocation(line: 134, column: 20, scope: !846)
!851 = !DILocation(line: 134, column: 24, scope: !846)
!852 = !DILocation(line: 134, column: 13, scope: !846)
!853 = !DILocation(line: 134, column: 33, scope: !846)
!854 = !DILocation(line: 134, column: 31, scope: !846)
!855 = !DILocation(line: 134, column: 5, scope: !846)
!856 = !DILocation(line: 134, column: 11, scope: !846)
!857 = !DILocation(line: 134, column: 4, scope: !846)
!858 = !DILocation(line: 133, column: 24, scope: !846)
!859 = !DILocation(line: 133, column: 3, scope: !846)
!860 = distinct !{!860, !849, !861, !417, !418}
!861 = !DILocation(line: 134, column: 33, scope: !847)
!862 = !DILocation(line: 135, column: 3, scope: !817)
!863 = !DILocation(line: 137, column: 3, scope: !817)
!864 = !DILocation(line: 137, column: 3, scope: !865)
!865 = distinct !DILexicalBlock(scope: !866, file: !2, line: 137, column: 3)
!866 = distinct !DILexicalBlock(scope: !817, file: !2, line: 137, column: 3)
!867 = !{i64 2148126401, i64 2148126234, i64 2148126285, i64 2148126337, i64 2148126365}
!868 = !DILocation(line: 137, column: 3, scope: !866)
!869 = !DILocation(line: 138, column: 2, scope: !817)
!870 = !DILocation(line: 140, column: 9, scope: !14)
!871 = !DILocation(line: 140, column: 2, scope: !14)
!872 = distinct !DISubprogram(name: "utf16_to_utf32", scope: !2, file: !2, line: 274, type: !873, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !876)
!873 = !DISubroutineType(types: !874)
!874 = !{!111, !875}
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!876 = !{!877, !878, !879}
!877 = !DILocalVariable(name: "s16", arg: 1, scope: !872, file: !2, line: 274, type: !875)
!878 = !DILocalVariable(name: "c0", scope: !872, file: !2, line: 276, type: !22)
!879 = !DILocalVariable(name: "c1", scope: !872, file: !2, line: 276, type: !22)
!880 = !DILocation(line: 274, column: 32, scope: !872)
!881 = !DILocation(line: 276, column: 2, scope: !872)
!882 = !DILocation(line: 276, column: 6, scope: !872)
!883 = !DILocation(line: 276, column: 10, scope: !872)
!884 = !DILocation(line: 278, column: 10, scope: !872)
!885 = !DILocation(line: 278, column: 14, scope: !872)
!886 = !DILocation(line: 278, column: 7, scope: !872)
!887 = !DILocation(line: 278, column: 5, scope: !872)
!888 = !DILocation(line: 280, column: 7, scope: !889)
!889 = distinct !DILexicalBlock(scope: !872, file: !2, line: 280, column: 6)
!890 = !DILocation(line: 280, column: 10, scope: !889)
!891 = !DILocation(line: 280, column: 20, scope: !889)
!892 = !DILocation(line: 280, column: 6, scope: !872)
!893 = !DILocation(line: 281, column: 10, scope: !889)
!894 = !DILocation(line: 281, column: 3, scope: !889)
!895 = !DILocation(line: 283, column: 6, scope: !896)
!896 = distinct !DILexicalBlock(scope: !872, file: !2, line: 283, column: 6)
!897 = !DILocation(line: 283, column: 9, scope: !896)
!898 = !DILocation(line: 283, column: 6, scope: !872)
!899 = !DILocation(line: 284, column: 3, scope: !896)
!900 = !DILocation(line: 285, column: 9, scope: !872)
!901 = !DILocation(line: 285, column: 8, scope: !872)
!902 = !DILocation(line: 285, column: 7, scope: !872)
!903 = !DILocation(line: 285, column: 5, scope: !872)
!904 = !DILocation(line: 287, column: 7, scope: !905)
!905 = distinct !DILexicalBlock(scope: !872, file: !2, line: 287, column: 6)
!906 = !DILocation(line: 287, column: 10, scope: !905)
!907 = !DILocation(line: 287, column: 20, scope: !905)
!908 = !DILocation(line: 287, column: 6, scope: !872)
!909 = !DILocation(line: 288, column: 3, scope: !905)
!910 = !DILocation(line: 290, column: 6, scope: !872)
!911 = !DILocation(line: 290, column: 2, scope: !872)
!912 = !DILocation(line: 291, column: 48, scope: !872)
!913 = !DILocation(line: 291, column: 51, scope: !872)
!914 = !DILocation(line: 291, column: 45, scope: !872)
!915 = !DILocation(line: 291, column: 60, scope: !872)
!916 = !DILocation(line: 291, column: 58, scope: !872)
!917 = !DILocation(line: 291, column: 2, scope: !872)
!918 = !DILocation(line: 292, column: 1, scope: !872)
!919 = distinct !DISubprogram(name: "snprintf", scope: !2, file: !2, line: 555, type: !920, scopeLine: 556, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !922)
!920 = !DISubroutineType(types: !921)
!921 = !{!19, !17, !57, !62, null}
!922 = !{!923, !924, !925, !926, !927}
!923 = !DILocalVariable(name: "buf", arg: 1, scope: !919, file: !2, line: 555, type: !17)
!924 = !DILocalVariable(name: "size", arg: 2, scope: !919, file: !2, line: 555, type: !57)
!925 = !DILocalVariable(name: "fmt", arg: 3, scope: !919, file: !2, line: 555, type: !62)
!926 = !DILocalVariable(name: "args", scope: !919, file: !2, line: 557, type: !93)
!927 = !DILocalVariable(name: "i", scope: !919, file: !2, line: 558, type: !19)
!928 = !DILocation(line: 555, column: 20, scope: !919)
!929 = !DILocation(line: 555, column: 32, scope: !919)
!930 = !DILocation(line: 555, column: 50, scope: !919)
!931 = !DILocation(line: 557, column: 2, scope: !919)
!932 = !DILocation(line: 557, column: 10, scope: !919)
!933 = !DILocation(line: 558, column: 2, scope: !919)
!934 = !DILocation(line: 558, column: 6, scope: !919)
!935 = !DILocation(line: 560, column: 2, scope: !919)
!936 = !DILocation(line: 561, column: 16, scope: !919)
!937 = !DILocation(line: 561, column: 21, scope: !919)
!938 = !DILocation(line: 561, column: 27, scope: !919)
!939 = !DILocation(line: 561, column: 32, scope: !919)
!940 = !DILocation(line: 561, column: 6, scope: !919)
!941 = !DILocation(line: 561, column: 4, scope: !919)
!942 = !DILocation(line: 562, column: 2, scope: !919)
!943 = !DILocation(line: 563, column: 9, scope: !919)
!944 = !DILocation(line: 564, column: 1, scope: !919)
!945 = !DILocation(line: 563, column: 2, scope: !919)
!946 = distinct !DISubprogram(name: "isdigit", scope: !947, file: !947, line: 43, type: !948, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !950)
!947 = !DIFile(filename: "./include/linux/ctype.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16ff466080305de3b83767ab84129dc0")
!948 = !DISubroutineType(types: !949)
!949 = !{!19, !19}
!950 = !{!951}
!951 = !DILocalVariable(name: "c", arg: 1, scope: !946, file: !947, line: 43, type: !19)
!952 = !DILocation(line: 43, column: 31, scope: !946)
!953 = !DILocation(line: 45, column: 16, scope: !946)
!954 = !DILocation(line: 45, column: 13, scope: !946)
!955 = !DILocation(line: 45, column: 18, scope: !946)
!956 = !DILocation(line: 45, column: 21, scope: !946)
!957 = !DILocation(line: 45, column: 23, scope: !946)
!958 = !DILocation(line: 0, scope: !946)
!959 = !DILocation(line: 45, column: 2, scope: !946)
!960 = distinct !DISubprogram(name: "skip_atoi", scope: !2, file: !2, line: 23, type: !574, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !961)
!961 = !{!962, !963}
!962 = !DILocalVariable(name: "s", arg: 1, scope: !960, file: !2, line: 23, type: !576)
!963 = !DILocalVariable(name: "i", scope: !960, file: !2, line: 25, type: !19)
!964 = !DILocation(line: 23, column: 28, scope: !960)
!965 = !DILocation(line: 25, column: 2, scope: !960)
!966 = !DILocation(line: 25, column: 6, scope: !960)
!967 = !DILocation(line: 27, column: 2, scope: !960)
!968 = !DILocation(line: 27, column: 19, scope: !960)
!969 = !DILocation(line: 27, column: 18, scope: !960)
!970 = !DILocation(line: 27, column: 17, scope: !960)
!971 = !DILocation(line: 27, column: 9, scope: !960)
!972 = !DILocation(line: 28, column: 7, scope: !960)
!973 = !DILocation(line: 28, column: 9, scope: !960)
!974 = !DILocation(line: 28, column: 20, scope: !960)
!975 = !DILocation(line: 28, column: 22, scope: !960)
!976 = !DILocation(line: 28, column: 16, scope: !960)
!977 = !DILocation(line: 28, column: 14, scope: !960)
!978 = !DILocation(line: 28, column: 26, scope: !960)
!979 = !DILocation(line: 28, column: 5, scope: !960)
!980 = distinct !{!980, !967, !981, !417, !418}
!981 = !DILocation(line: 28, column: 28, scope: !960)
!982 = !DILocation(line: 29, column: 9, scope: !960)
!983 = !DILocation(line: 30, column: 1, scope: !960)
!984 = !DILocation(line: 29, column: 2, scope: !960)
!985 = distinct !DISubprogram(name: "put_dec", scope: !2, file: !2, line: 74, type: !986, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !988)
!986 = !DISubroutineType(types: !987)
!987 = !{!17, !17, !18}
!988 = !{!989, !990, !991, !992, !993, !994, !995, !996}
!989 = !DILocalVariable(name: "end", arg: 1, scope: !985, file: !2, line: 74, type: !17)
!990 = !DILocalVariable(name: "n", arg: 2, scope: !985, file: !2, line: 74, type: !18)
!991 = !DILocalVariable(name: "d3", scope: !985, file: !2, line: 76, type: !37)
!992 = !DILocalVariable(name: "d2", scope: !985, file: !2, line: 76, type: !37)
!993 = !DILocalVariable(name: "d1", scope: !985, file: !2, line: 76, type: !37)
!994 = !DILocalVariable(name: "q", scope: !985, file: !2, line: 76, type: !37)
!995 = !DILocalVariable(name: "h", scope: !985, file: !2, line: 76, type: !37)
!996 = !DILocalVariable(name: "p", scope: !985, file: !2, line: 77, type: !17)
!997 = !DILocation(line: 74, column: 21, scope: !985)
!998 = !DILocation(line: 74, column: 45, scope: !985)
!999 = !DILocation(line: 76, column: 2, scope: !985)
!1000 = !DILocation(line: 76, column: 15, scope: !985)
!1001 = !DILocation(line: 76, column: 19, scope: !985)
!1002 = !DILocation(line: 76, column: 23, scope: !985)
!1003 = !DILocation(line: 76, column: 27, scope: !985)
!1004 = !DILocation(line: 76, column: 30, scope: !985)
!1005 = !DILocation(line: 77, column: 2, scope: !985)
!1006 = !DILocation(line: 77, column: 8, scope: !985)
!1007 = !DILocation(line: 77, column: 12, scope: !985)
!1008 = !DILocation(line: 79, column: 23, scope: !985)
!1009 = !DILocation(line: 79, column: 9, scope: !985)
!1010 = !DILocation(line: 79, column: 25, scope: !985)
!1011 = !DILocation(line: 79, column: 6, scope: !985)
!1012 = !DILocation(line: 80, column: 9, scope: !985)
!1013 = !DILocation(line: 80, column: 11, scope: !985)
!1014 = !DILocation(line: 80, column: 8, scope: !985)
!1015 = !DILocation(line: 80, column: 6, scope: !985)
!1016 = !DILocation(line: 81, column: 9, scope: !985)
!1017 = !DILocation(line: 81, column: 18, scope: !985)
!1018 = !DILocation(line: 81, column: 6, scope: !985)
!1019 = !DILocation(line: 82, column: 9, scope: !985)
!1020 = !DILocation(line: 82, column: 11, scope: !985)
!1021 = !DILocation(line: 82, column: 6, scope: !985)
!1022 = !DILocation(line: 86, column: 12, scope: !985)
!1023 = !DILocation(line: 86, column: 10, scope: !985)
!1024 = !DILocation(line: 86, column: 24, scope: !985)
!1025 = !DILocation(line: 86, column: 22, scope: !985)
!1026 = !DILocation(line: 86, column: 15, scope: !985)
!1027 = !DILocation(line: 86, column: 36, scope: !985)
!1028 = !DILocation(line: 86, column: 34, scope: !985)
!1029 = !DILocation(line: 86, column: 27, scope: !985)
!1030 = !DILocation(line: 86, column: 56, scope: !985)
!1031 = !DILocation(line: 86, column: 42, scope: !985)
!1032 = !DILocation(line: 86, column: 58, scope: !985)
!1033 = !DILocation(line: 86, column: 39, scope: !985)
!1034 = !DILocation(line: 86, column: 4, scope: !985)
!1035 = !DILocation(line: 87, column: 22, scope: !985)
!1036 = !DILocation(line: 87, column: 25, scope: !985)
!1037 = !DILocation(line: 87, column: 6, scope: !985)
!1038 = !DILocation(line: 87, column: 4, scope: !985)
!1039 = !DILocation(line: 88, column: 4, scope: !985)
!1040 = !DILocation(line: 90, column: 14, scope: !985)
!1041 = !DILocation(line: 90, column: 12, scope: !985)
!1042 = !DILocation(line: 90, column: 26, scope: !985)
!1043 = !DILocation(line: 90, column: 24, scope: !985)
!1044 = !DILocation(line: 90, column: 17, scope: !985)
!1045 = !DILocation(line: 90, column: 35, scope: !985)
!1046 = !DILocation(line: 90, column: 33, scope: !985)
!1047 = !DILocation(line: 90, column: 29, scope: !985)
!1048 = !DILocation(line: 90, column: 4, scope: !985)
!1049 = !DILocation(line: 91, column: 22, scope: !985)
!1050 = !DILocation(line: 91, column: 25, scope: !985)
!1051 = !DILocation(line: 91, column: 6, scope: !985)
!1052 = !DILocation(line: 91, column: 4, scope: !985)
!1053 = !DILocation(line: 92, column: 4, scope: !985)
!1054 = !DILocation(line: 94, column: 14, scope: !985)
!1055 = !DILocation(line: 94, column: 12, scope: !985)
!1056 = !DILocation(line: 94, column: 24, scope: !985)
!1057 = !DILocation(line: 94, column: 22, scope: !985)
!1058 = !DILocation(line: 94, column: 17, scope: !985)
!1059 = !DILocation(line: 94, column: 4, scope: !985)
!1060 = !DILocation(line: 95, column: 22, scope: !985)
!1061 = !DILocation(line: 95, column: 25, scope: !985)
!1062 = !DILocation(line: 95, column: 6, scope: !985)
!1063 = !DILocation(line: 95, column: 4, scope: !985)
!1064 = !DILocation(line: 96, column: 4, scope: !985)
!1065 = !DILocation(line: 98, column: 13, scope: !985)
!1066 = !DILocation(line: 98, column: 11, scope: !985)
!1067 = !DILocation(line: 98, column: 4, scope: !985)
!1068 = !DILocation(line: 99, column: 22, scope: !985)
!1069 = !DILocation(line: 99, column: 25, scope: !985)
!1070 = !DILocation(line: 99, column: 6, scope: !985)
!1071 = !DILocation(line: 99, column: 4, scope: !985)
!1072 = !DILocation(line: 100, column: 4, scope: !985)
!1073 = !DILocation(line: 102, column: 16, scope: !985)
!1074 = !DILocation(line: 102, column: 19, scope: !985)
!1075 = !DILocation(line: 102, column: 2, scope: !985)
!1076 = !DILocation(line: 103, column: 4, scope: !985)
!1077 = !DILocation(line: 106, column: 2, scope: !985)
!1078 = !DILocation(line: 106, column: 9, scope: !985)
!1079 = !DILocation(line: 106, column: 13, scope: !985)
!1080 = !DILocation(line: 106, column: 11, scope: !985)
!1081 = !DILocation(line: 106, column: 17, scope: !985)
!1082 = !DILocation(line: 106, column: 21, scope: !985)
!1083 = !DILocation(line: 106, column: 20, scope: !985)
!1084 = !DILocation(line: 106, column: 23, scope: !985)
!1085 = !DILocation(line: 0, scope: !985)
!1086 = !DILocation(line: 107, column: 3, scope: !985)
!1087 = distinct !{!1087, !1077, !1088, !417, !418}
!1088 = !DILocation(line: 107, column: 5, scope: !985)
!1089 = !DILocation(line: 109, column: 9, scope: !985)
!1090 = !DILocation(line: 110, column: 1, scope: !985)
!1091 = !DILocation(line: 109, column: 2, scope: !985)
!1092 = distinct !DISubprogram(name: "put_dec_helper4", scope: !2, file: !2, line: 60, type: !1093, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1095)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!37, !17, !37}
!1095 = !{!1096, !1097, !1098}
!1096 = !DILocalVariable(name: "end", arg: 1, scope: !1092, file: !2, line: 60, type: !17)
!1097 = !DILocalVariable(name: "x", arg: 2, scope: !1092, file: !2, line: 60, type: !37)
!1098 = !DILocalVariable(name: "q", scope: !1092, file: !2, line: 62, type: !37)
!1099 = !DILocation(line: 60, column: 36, scope: !1092)
!1100 = !DILocation(line: 60, column: 54, scope: !1092)
!1101 = !DILocation(line: 62, column: 2, scope: !1092)
!1102 = !DILocation(line: 62, column: 15, scope: !1092)
!1103 = !DILocation(line: 62, column: 20, scope: !1092)
!1104 = !DILocation(line: 62, column: 22, scope: !1092)
!1105 = !DILocation(line: 62, column: 39, scope: !1092)
!1106 = !DILocation(line: 62, column: 19, scope: !1092)
!1107 = !DILocation(line: 64, column: 16, scope: !1092)
!1108 = !DILocation(line: 64, column: 21, scope: !1092)
!1109 = !DILocation(line: 64, column: 25, scope: !1092)
!1110 = !DILocation(line: 64, column: 27, scope: !1092)
!1111 = !DILocation(line: 64, column: 23, scope: !1092)
!1112 = !DILocation(line: 64, column: 2, scope: !1092)
!1113 = !DILocation(line: 65, column: 9, scope: !1092)
!1114 = !DILocation(line: 66, column: 1, scope: !1092)
!1115 = !DILocation(line: 65, column: 2, scope: !1092)
!1116 = distinct !DISubprogram(name: "put_dec_full4", scope: !2, file: !2, line: 38, type: !1117, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1119)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{null, !17, !37}
!1119 = !{!1120, !1121, !1122, !1123}
!1120 = !DILocalVariable(name: "end", arg: 1, scope: !1116, file: !2, line: 38, type: !17)
!1121 = !DILocalVariable(name: "r", arg: 2, scope: !1116, file: !2, line: 38, type: !37)
!1122 = !DILocalVariable(name: "i", scope: !1116, file: !2, line: 40, type: !19)
!1123 = !DILocalVariable(name: "q", scope: !1124, file: !2, line: 43, type: !37)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !2, line: 42, column: 26)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 42, column: 2)
!1126 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 42, column: 2)
!1127 = !DILocation(line: 38, column: 26, scope: !1116)
!1128 = !DILocation(line: 38, column: 44, scope: !1116)
!1129 = !DILocation(line: 40, column: 2, scope: !1116)
!1130 = !DILocation(line: 40, column: 6, scope: !1116)
!1131 = !DILocation(line: 42, column: 9, scope: !1126)
!1132 = !DILocation(line: 42, column: 7, scope: !1126)
!1133 = !DILocation(line: 42, column: 14, scope: !1125)
!1134 = !DILocation(line: 42, column: 16, scope: !1125)
!1135 = !DILocation(line: 42, column: 2, scope: !1126)
!1136 = !DILocation(line: 43, column: 3, scope: !1124)
!1137 = !DILocation(line: 43, column: 16, scope: !1124)
!1138 = !DILocation(line: 43, column: 21, scope: !1124)
!1139 = !DILocation(line: 43, column: 23, scope: !1124)
!1140 = !DILocation(line: 43, column: 32, scope: !1124)
!1141 = !DILocation(line: 44, column: 19, scope: !1124)
!1142 = !DILocation(line: 44, column: 23, scope: !1124)
!1143 = !DILocation(line: 44, column: 25, scope: !1124)
!1144 = !DILocation(line: 44, column: 21, scope: !1124)
!1145 = !DILocation(line: 44, column: 16, scope: !1124)
!1146 = !DILocation(line: 44, column: 12, scope: !1124)
!1147 = !DILocation(line: 44, column: 4, scope: !1124)
!1148 = !DILocation(line: 44, column: 10, scope: !1124)
!1149 = !DILocation(line: 45, column: 7, scope: !1124)
!1150 = !DILocation(line: 45, column: 5, scope: !1124)
!1151 = !DILocation(line: 46, column: 2, scope: !1125)
!1152 = !DILocation(line: 46, column: 2, scope: !1124)
!1153 = !DILocation(line: 42, column: 22, scope: !1125)
!1154 = !DILocation(line: 42, column: 2, scope: !1125)
!1155 = distinct !{!1155, !1135, !1156, !417, !418}
!1156 = !DILocation(line: 46, column: 2, scope: !1126)
!1157 = !DILocation(line: 47, column: 17, scope: !1116)
!1158 = !DILocation(line: 47, column: 15, scope: !1116)
!1159 = !DILocation(line: 47, column: 11, scope: !1116)
!1160 = !DILocation(line: 47, column: 3, scope: !1116)
!1161 = !DILocation(line: 47, column: 9, scope: !1116)
!1162 = !DILocation(line: 48, column: 1, scope: !1116)

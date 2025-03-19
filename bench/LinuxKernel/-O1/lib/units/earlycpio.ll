; ModuleID = 'lib/earlycpio.c'
source_filename = "lib/earlycpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpio_data = type { ptr, i64, [18 x i8] }

@.str = private unnamed_addr constant [45 x i8] c"\014File %s exceeding MAX_CPIO_FILE_NAME [%d]\0A\00", align 1, !dbg !0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @find_cpio_data(ptr dead_on_unwind noalias writable sret(%struct.cpio_data) align 8 %agg.result, ptr noundef %path, ptr noundef %data, i64 noundef %len, ptr noundef %nextoff) #0 align 16 !dbg !43 {
entry:
  %path.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %nextoff.addr = alloca ptr, align 8
  %cpio_header_len = alloca i64, align 8
  %p = alloca ptr, align 8
  %dptr = alloca ptr, align 8
  %nptr = alloca ptr, align 8
  %ch = alloca [14 x i32], align 16
  %chp = alloca ptr, align 8
  %v = alloca i32, align 4
  %c = alloca i8, align 1
  %x = alloca i8, align 1
  %mypathsize = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !62, metadata !DIExpression()), !dbg !87
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !63, metadata !DIExpression()), !dbg !88
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !64, metadata !DIExpression()), !dbg !89
  store ptr %nextoff, ptr %nextoff.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nextoff.addr, metadata !65, metadata !DIExpression()), !dbg !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpio_header_len) #6, !dbg !91
  call void @llvm.dbg.declare(metadata ptr %cpio_header_len, metadata !66, metadata !DIExpression()), !dbg !92
  store i64 110, ptr %cpio_header_len, align 8, !dbg !92
  call void @llvm.dbg.declare(metadata ptr %agg.result, metadata !68, metadata !DIExpression()), !dbg !93
  call void @llvm.memset.p0.i64(ptr align 8 %agg.result, i8 0, i64 40, i1 false), !dbg !93
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6, !dbg !94
  call void @llvm.dbg.declare(metadata ptr %p, metadata !69, metadata !DIExpression()), !dbg !95
  call void @llvm.lifetime.start.p0(i64 8, ptr %dptr) #6, !dbg !94
  call void @llvm.dbg.declare(metadata ptr %dptr, metadata !70, metadata !DIExpression()), !dbg !96
  call void @llvm.lifetime.start.p0(i64 8, ptr %nptr) #6, !dbg !94
  call void @llvm.dbg.declare(metadata ptr %nptr, metadata !71, metadata !DIExpression()), !dbg !97
  call void @llvm.lifetime.start.p0(i64 56, ptr %ch) #6, !dbg !98
  call void @llvm.dbg.declare(metadata ptr %ch, metadata !72, metadata !DIExpression()), !dbg !99
  call void @llvm.lifetime.start.p0(i64 8, ptr %chp) #6, !dbg !98
  call void @llvm.dbg.declare(metadata ptr %chp, metadata !76, metadata !DIExpression()), !dbg !100
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #6, !dbg !98
  call void @llvm.dbg.declare(metadata ptr %v, metadata !78, metadata !DIExpression()), !dbg !101
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #6, !dbg !102
  call void @llvm.dbg.declare(metadata ptr %c, metadata !79, metadata !DIExpression()), !dbg !103
  call void @llvm.lifetime.start.p0(i64 1, ptr %x) #6, !dbg !102
  call void @llvm.dbg.declare(metadata ptr %x, metadata !81, metadata !DIExpression()), !dbg !104
  call void @llvm.lifetime.start.p0(i64 8, ptr %mypathsize) #6, !dbg !105
  call void @llvm.dbg.declare(metadata ptr %mypathsize, metadata !82, metadata !DIExpression()), !dbg !106
  %0 = load ptr, ptr %path.addr, align 8, !dbg !107
  %call = call i64 @strlen(ptr noundef %0) #7, !dbg !108
  store i64 %call, ptr %mypathsize, align 8, !dbg !106
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !109
  call void @llvm.dbg.declare(metadata ptr %i, metadata !83, metadata !DIExpression()), !dbg !110
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6, !dbg !109
  call void @llvm.dbg.declare(metadata ptr %j, metadata !85, metadata !DIExpression()), !dbg !111
  %1 = load ptr, ptr %data.addr, align 8, !dbg !112
  store ptr %1, ptr %p, align 8, !dbg !113
  br label %while.cond, !dbg !114

while.cond:                                       ; preds = %if.end80, %if.then, %entry
  %2 = load i64, ptr %len.addr, align 8, !dbg !115
  %cmp = icmp ugt i64 %2, 110, !dbg !116
  br i1 %cmp, label %while.body, label %while.end82, !dbg !114

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %p, align 8, !dbg !117
  %4 = load i8, ptr %3, align 1, !dbg !120
  %tobool = icmp ne i8 %4, 0, !dbg !120
  br i1 %tobool, label %if.end, label %if.then, !dbg !121

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %p, align 8, !dbg !122
  %add.ptr = getelementptr i8, ptr %5, i64 4, !dbg !122
  store ptr %add.ptr, ptr %p, align 8, !dbg !122
  %6 = load i64, ptr %len.addr, align 8, !dbg !124
  %sub = sub i64 %6, 4, !dbg !124
  store i64 %sub, ptr %len.addr, align 8, !dbg !124
  br label %while.cond, !dbg !125, !llvm.loop !126

if.end:                                           ; preds = %while.body
  store i32 6, ptr %j, align 4, !dbg !130
  %arraydecay = getelementptr inbounds [14 x i32], ptr %ch, i64 0, i64 0, !dbg !131
  store ptr %arraydecay, ptr %chp, align 8, !dbg !132
  store i32 14, ptr %i, align 4, !dbg !133
  br label %for.cond, !dbg !135

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %i, align 4, !dbg !136
  %tobool1 = icmp ne i32 %7, 0, !dbg !138
  br i1 %tobool1, label %for.body, label %for.end, !dbg !138

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %v, align 4, !dbg !139
  br label %while.cond2, !dbg !141

while.cond2:                                      ; preds = %if.then19, %if.then10, %for.body
  %8 = load i32, ptr %j, align 4, !dbg !142
  %dec = add i32 %8, -1, !dbg !142
  store i32 %dec, ptr %j, align 4, !dbg !142
  %tobool3 = icmp ne i32 %8, 0, !dbg !141
  br i1 %tobool3, label %while.body4, label %while.end, !dbg !141

while.body4:                                      ; preds = %while.cond2
  %9 = load i32, ptr %v, align 4, !dbg !143
  %shl = shl i32 %9, 4, !dbg !143
  store i32 %shl, ptr %v, align 4, !dbg !143
  %10 = load ptr, ptr %p, align 8, !dbg !145
  %incdec.ptr = getelementptr i8, ptr %10, i32 1, !dbg !145
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !145
  %11 = load i8, ptr %10, align 1, !dbg !146
  store i8 %11, ptr %c, align 1, !dbg !147
  %12 = load i8, ptr %c, align 1, !dbg !148
  %conv = zext i8 %12 to i32, !dbg !148
  %sub5 = sub i32 %conv, 48, !dbg !149
  %conv6 = trunc i32 %sub5 to i8, !dbg !148
  store i8 %conv6, ptr %x, align 1, !dbg !150
  %13 = load i8, ptr %x, align 1, !dbg !151
  %conv7 = zext i8 %13 to i32, !dbg !151
  %cmp8 = icmp slt i32 %conv7, 10, !dbg !153
  br i1 %cmp8, label %if.then10, label %if.end12, !dbg !154

if.then10:                                        ; preds = %while.body4
  %14 = load i8, ptr %x, align 1, !dbg !155
  %conv11 = zext i8 %14 to i32, !dbg !155
  %15 = load i32, ptr %v, align 4, !dbg !157
  %add = add i32 %15, %conv11, !dbg !157
  store i32 %add, ptr %v, align 4, !dbg !157
  br label %while.cond2, !dbg !158, !llvm.loop !159

if.end12:                                         ; preds = %while.body4
  %16 = load i8, ptr %c, align 1, !dbg !161
  %conv13 = zext i8 %16 to i32, !dbg !161
  %or = or i32 %conv13, 32, !dbg !162
  %sub14 = sub i32 %or, 97, !dbg !163
  %conv15 = trunc i32 %sub14 to i8, !dbg !164
  store i8 %conv15, ptr %x, align 1, !dbg !165
  %17 = load i8, ptr %x, align 1, !dbg !166
  %conv16 = zext i8 %17 to i32, !dbg !166
  %cmp17 = icmp slt i32 %conv16, 6, !dbg !168
  br i1 %cmp17, label %if.then19, label %if.end23, !dbg !169

if.then19:                                        ; preds = %if.end12
  %18 = load i8, ptr %x, align 1, !dbg !170
  %conv20 = zext i8 %18 to i32, !dbg !170
  %add21 = add i32 %conv20, 10, !dbg !172
  %19 = load i32, ptr %v, align 4, !dbg !173
  %add22 = add i32 %19, %add21, !dbg !173
  store i32 %add22, ptr %v, align 4, !dbg !173
  br label %while.cond2, !dbg !174, !llvm.loop !159

if.end23:                                         ; preds = %if.end12
  br label %quit, !dbg !175

while.end:                                        ; preds = %while.cond2
  %20 = load i32, ptr %v, align 4, !dbg !176
  %21 = load ptr, ptr %chp, align 8, !dbg !177
  %incdec.ptr24 = getelementptr i32, ptr %21, i32 1, !dbg !177
  store ptr %incdec.ptr24, ptr %chp, align 8, !dbg !177
  store i32 %20, ptr %21, align 4, !dbg !178
  store i32 8, ptr %j, align 4, !dbg !179
  br label %for.inc, !dbg !180

for.inc:                                          ; preds = %while.end
  %22 = load i32, ptr %i, align 4, !dbg !181
  %dec25 = add i32 %22, -1, !dbg !181
  store i32 %dec25, ptr %i, align 4, !dbg !181
  br label %for.cond, !dbg !182, !llvm.loop !183

for.end:                                          ; preds = %for.cond
  %arrayidx = getelementptr [14 x i32], ptr %ch, i64 0, i64 0, !dbg !185
  %23 = load i32, ptr %arrayidx, align 16, !dbg !185
  %sub26 = sub i32 %23, 460545, !dbg !187
  %cmp27 = icmp ugt i32 %sub26, 1, !dbg !188
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !189

if.then29:                                        ; preds = %for.end
  br label %quit, !dbg !190

if.end30:                                         ; preds = %for.end
  %24 = load i64, ptr %len.addr, align 8, !dbg !191
  %sub31 = sub i64 %24, 110, !dbg !191
  store i64 %sub31, ptr %len.addr, align 8, !dbg !191
  %25 = load ptr, ptr %p, align 8, !dbg !192
  %arrayidx32 = getelementptr [14 x i32], ptr %ch, i64 0, i64 12, !dbg !192
  %26 = load i32, ptr %arrayidx32, align 16, !dbg !192
  %idx.ext = zext i32 %26 to i64, !dbg !192
  %add.ptr33 = getelementptr i8, ptr %25, i64 %idx.ext, !dbg !192
  %27 = ptrtoint ptr %add.ptr33 to i64, !dbg !192
  %add34 = add i64 %27, 3, !dbg !192
  %and = and i64 %add34, -4, !dbg !192
  %28 = inttoptr i64 %and to ptr, !dbg !192
  store ptr %28, ptr %dptr, align 8, !dbg !193
  %29 = load ptr, ptr %dptr, align 8, !dbg !194
  %arrayidx35 = getelementptr [14 x i32], ptr %ch, i64 0, i64 7, !dbg !194
  %30 = load i32, ptr %arrayidx35, align 4, !dbg !194
  %idx.ext36 = zext i32 %30 to i64, !dbg !194
  %add.ptr37 = getelementptr i8, ptr %29, i64 %idx.ext36, !dbg !194
  %31 = ptrtoint ptr %add.ptr37 to i64, !dbg !194
  %add38 = add i64 %31, 3, !dbg !194
  %and39 = and i64 %add38, -4, !dbg !194
  %32 = inttoptr i64 %and39 to ptr, !dbg !194
  store ptr %32, ptr %nptr, align 8, !dbg !195
  %33 = load ptr, ptr %nptr, align 8, !dbg !196
  %34 = load ptr, ptr %p, align 8, !dbg !198
  %35 = load i64, ptr %len.addr, align 8, !dbg !199
  %add.ptr40 = getelementptr i8, ptr %34, i64 %35, !dbg !200
  %cmp41 = icmp ugt ptr %33, %add.ptr40, !dbg !201
  br i1 %cmp41, label %if.then48, label %lor.lhs.false, !dbg !202

lor.lhs.false:                                    ; preds = %if.end30
  %36 = load ptr, ptr %dptr, align 8, !dbg !203
  %37 = load ptr, ptr %p, align 8, !dbg !204
  %cmp43 = icmp ult ptr %36, %37, !dbg !205
  br i1 %cmp43, label %if.then48, label %lor.lhs.false45, !dbg !206

lor.lhs.false45:                                  ; preds = %lor.lhs.false
  %38 = load ptr, ptr %nptr, align 8, !dbg !207
  %39 = load ptr, ptr %dptr, align 8, !dbg !208
  %cmp46 = icmp ult ptr %38, %39, !dbg !209
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !210

if.then48:                                        ; preds = %lor.lhs.false45, %lor.lhs.false, %if.end30
  br label %quit, !dbg !211

if.end49:                                         ; preds = %lor.lhs.false45
  %arrayidx50 = getelementptr [14 x i32], ptr %ch, i64 0, i64 2, !dbg !212
  %40 = load i32, ptr %arrayidx50, align 8, !dbg !212
  %and51 = and i32 %40, 61440, !dbg !214
  %cmp52 = icmp eq i32 %and51, 32768, !dbg !215
  br i1 %cmp52, label %land.lhs.true, label %if.end80, !dbg !216

land.lhs.true:                                    ; preds = %if.end49
  %arrayidx54 = getelementptr [14 x i32], ptr %ch, i64 0, i64 12, !dbg !217
  %41 = load i32, ptr %arrayidx54, align 16, !dbg !217
  %conv55 = zext i32 %41 to i64, !dbg !217
  %42 = load i64, ptr %mypathsize, align 8, !dbg !218
  %cmp56 = icmp uge i64 %conv55, %42, !dbg !219
  br i1 %cmp56, label %land.lhs.true58, label %if.end80, !dbg !220

land.lhs.true58:                                  ; preds = %land.lhs.true
  %43 = load ptr, ptr %p, align 8, !dbg !221
  %44 = load ptr, ptr %path.addr, align 8, !dbg !222
  %45 = load i64, ptr %mypathsize, align 8, !dbg !223
  %call59 = call i32 @memcmp(ptr noundef %43, ptr noundef %44, i64 noundef %45) #7, !dbg !224
  %tobool60 = icmp ne i32 %call59, 0, !dbg !224
  br i1 %tobool60, label %if.end80, label %if.then61, !dbg !225

if.then61:                                        ; preds = %land.lhs.true58
  %46 = load ptr, ptr %nextoff.addr, align 8, !dbg !226
  %tobool62 = icmp ne ptr %46, null, !dbg !226
  br i1 %tobool62, label %if.then63, label %if.end65, !dbg !229

if.then63:                                        ; preds = %if.then61
  %47 = load ptr, ptr %nptr, align 8, !dbg !230
  %48 = ptrtoint ptr %47 to i64, !dbg !231
  %49 = load ptr, ptr %data.addr, align 8, !dbg !232
  %50 = ptrtoint ptr %49 to i64, !dbg !233
  %sub64 = sub i64 %48, %50, !dbg !234
  %51 = load ptr, ptr %nextoff.addr, align 8, !dbg !235
  store i64 %sub64, ptr %51, align 8, !dbg !236
  br label %if.end65, !dbg !237

if.end65:                                         ; preds = %if.then63, %if.then61
  %arrayidx66 = getelementptr [14 x i32], ptr %ch, i64 0, i64 12, !dbg !238
  %52 = load i32, ptr %arrayidx66, align 16, !dbg !238
  %conv67 = zext i32 %52 to i64, !dbg !238
  %53 = load i64, ptr %mypathsize, align 8, !dbg !240
  %sub68 = sub i64 %conv67, %53, !dbg !241
  %cmp69 = icmp uge i64 %sub68, 18, !dbg !242
  br i1 %cmp69, label %if.then71, label %if.end73, !dbg !243

if.then71:                                        ; preds = %if.end65
  br label %do.body, !dbg !244

do.body:                                          ; preds = %if.then71
  br label %do.cond, !dbg !247

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !247

do.end:                                           ; preds = %do.cond
  %54 = load ptr, ptr %p, align 8, !dbg !244
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef %54, i32 noundef 18) #8, !dbg !244
  store i32 %call72, ptr %tmp, align 4, !dbg !247
  %55 = load i32, ptr %tmp, align 4, !dbg !244
  br label %if.end73, !dbg !249

if.end73:                                         ; preds = %do.end, %if.end65
  %name = getelementptr inbounds %struct.cpio_data, ptr %agg.result, i32 0, i32 2, !dbg !250
  %arraydecay74 = getelementptr inbounds [18 x i8], ptr %name, i64 0, i64 0, !dbg !251
  %56 = load ptr, ptr %p, align 8, !dbg !252
  %57 = load i64, ptr %mypathsize, align 8, !dbg !253
  %add.ptr75 = getelementptr i8, ptr %56, i64 %57, !dbg !254
  %call76 = call i64 @strscpy(ptr noundef %arraydecay74, ptr noundef %add.ptr75, i64 noundef 18) #7, !dbg !255
  %58 = load ptr, ptr %dptr, align 8, !dbg !256
  %data77 = getelementptr inbounds %struct.cpio_data, ptr %agg.result, i32 0, i32 0, !dbg !257
  store ptr %58, ptr %data77, align 8, !dbg !258
  %arrayidx78 = getelementptr [14 x i32], ptr %ch, i64 0, i64 7, !dbg !259
  %59 = load i32, ptr %arrayidx78, align 4, !dbg !259
  %conv79 = zext i32 %59 to i64, !dbg !259
  %size = getelementptr inbounds %struct.cpio_data, ptr %agg.result, i32 0, i32 1, !dbg !260
  store i64 %conv79, ptr %size, align 8, !dbg !261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !262

if.end80:                                         ; preds = %land.lhs.true58, %land.lhs.true, %if.end49
  %60 = load ptr, ptr %nptr, align 8, !dbg !263
  %61 = load ptr, ptr %p, align 8, !dbg !264
  %sub.ptr.lhs.cast = ptrtoint ptr %60 to i64, !dbg !265
  %sub.ptr.rhs.cast = ptrtoint ptr %61 to i64, !dbg !265
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !265
  %62 = load i64, ptr %len.addr, align 8, !dbg !266
  %sub81 = sub i64 %62, %sub.ptr.sub, !dbg !266
  store i64 %sub81, ptr %len.addr, align 8, !dbg !266
  %63 = load ptr, ptr %nptr, align 8, !dbg !267
  store ptr %63, ptr %p, align 8, !dbg !268
  br label %while.cond, !dbg !114, !llvm.loop !126

while.end82:                                      ; preds = %while.cond
  br label %quit, !dbg !114

quit:                                             ; preds = %while.end82, %if.then48, %if.then29, %if.end23
  call void @llvm.dbg.label(metadata !86), !dbg !269
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !270

cleanup:                                          ; preds = %quit, %if.end73
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6, !dbg !271
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !271
  call void @llvm.lifetime.end.p0(i64 8, ptr %mypathsize) #6, !dbg !271
  call void @llvm.lifetime.end.p0(i64 1, ptr %x) #6, !dbg !271
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #6, !dbg !271
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #6, !dbg !271
  call void @llvm.lifetime.end.p0(i64 8, ptr %chp) #6, !dbg !271
  call void @llvm.lifetime.end.p0(i64 56, ptr %ch) #6, !dbg !271
  call void @llvm.lifetime.end.p0(i64 8, ptr %nptr) #6, !dbg !271
  call void @llvm.lifetime.end.p0(i64 8, ptr %dptr) #6, !dbg !271
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6, !dbg !271
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpio_header_len) #6, !dbg !271
  ret void, !dbg !271
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !272 dso_local i64 @strlen(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !276 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !281 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !285 dso_local i64 @strscpy(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/earlycpio.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef2aa2f6d3705f3d915202c39193e850")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 45)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.earlycpio.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/earlycpio\22 -D KBUILD_BASENAME=\22earlycpio\22 -D KBUILD_MODNAME=\22earlycpio\22 -D __KBUILD_MODNAME=kmod_earlycpio -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/earlycpio.ll lib/earlycpio.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !8, retainedTypes: !27, globals: !33, splitDebugInlining: false, nameTableKind: None)
!8 = !{!9}
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpio_fields", file: !2, line: 24, baseType: !10, size: 32, elements: !11)
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!12 = !DIEnumerator(name: "C_MAGIC", value: 0)
!13 = !DIEnumerator(name: "C_INO", value: 1)
!14 = !DIEnumerator(name: "C_MODE", value: 2)
!15 = !DIEnumerator(name: "C_UID", value: 3)
!16 = !DIEnumerator(name: "C_GID", value: 4)
!17 = !DIEnumerator(name: "C_NLINK", value: 5)
!18 = !DIEnumerator(name: "C_MTIME", value: 6)
!19 = !DIEnumerator(name: "C_FILESIZE", value: 7)
!20 = !DIEnumerator(name: "C_MAJ", value: 8)
!21 = !DIEnumerator(name: "C_MIN", value: 9)
!22 = !DIEnumerator(name: "C_RMAJ", value: 10)
!23 = !DIEnumerator(name: "C_RMIN", value: 11)
!24 = !DIEnumerator(name: "C_NAMESIZE", value: 12)
!25 = !DIEnumerator(name: "C_CHKSUM", value: 13)
!26 = !DIEnumerator(name: "C_NFIELDS", value: 14)
!27 = !{!28, !29, !31, !32}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!33 = !{!0}
!34 = !{i32 7, !"Dwarf Version", i32 5}
!35 = !{i32 2, !"Debug Info Version", i32 3}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 8, !"cf-protection-branch", i32 1}
!38 = !{i32 4, !"function_return_thunk_extern", i32 1}
!39 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!40 = !{i32 1, !"Code Model", i32 2}
!41 = !{i32 1, !"override-stack-alignment", i32 8}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = distinct !DISubprogram(name: "find_cpio_data", scope: !2, file: !2, line: 59, type: !44, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !61)
!44 = !DISubroutineType(types: !45)
!45 = !{!46, !29, !28, !51, !60}
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpio_data", file: !47, line: 9, size: 320, elements: !48)
!47 = !DIFile(filename: "./include/linux/earlycpio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c701ce9fd3d94067c5868d60432fc97e")
!48 = !{!49, !50, !56}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !46, file: !47, line: 10, baseType: !28, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !46, file: !47, line: 11, baseType: !51, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !52, line: 61, baseType: !53)
!52 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !54, line: 72, baseType: !55)
!54 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !54, line: 16, baseType: !31)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !46, file: !47, line: 12, baseType: !57, size: 144, offset: 128)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 18)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!61 = !{!62, !63, !64, !65, !66, !68, !69, !70, !71, !72, !76, !78, !79, !81, !82, !83, !85, !86}
!62 = !DILocalVariable(name: "path", arg: 1, scope: !43, file: !2, line: 59, type: !29)
!63 = !DILocalVariable(name: "data", arg: 2, scope: !43, file: !2, line: 59, type: !28)
!64 = !DILocalVariable(name: "len", arg: 3, scope: !43, file: !2, line: 60, type: !51)
!65 = !DILocalVariable(name: "nextoff", arg: 4, scope: !43, file: !2, line: 60, type: !60)
!66 = !DILocalVariable(name: "cpio_header_len", scope: !43, file: !2, line: 62, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!68 = !DILocalVariable(name: "cd", scope: !43, file: !2, line: 63, type: !46)
!69 = !DILocalVariable(name: "p", scope: !43, file: !2, line: 64, type: !29)
!70 = !DILocalVariable(name: "dptr", scope: !43, file: !2, line: 64, type: !29)
!71 = !DILocalVariable(name: "nptr", scope: !43, file: !2, line: 64, type: !29)
!72 = !DILocalVariable(name: "ch", scope: !43, file: !2, line: 65, type: !73)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 448, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 14)
!76 = !DILocalVariable(name: "chp", scope: !43, file: !2, line: 65, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!78 = !DILocalVariable(name: "v", scope: !43, file: !2, line: 65, type: !10)
!79 = !DILocalVariable(name: "c", scope: !43, file: !2, line: 66, type: !80)
!80 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!81 = !DILocalVariable(name: "x", scope: !43, file: !2, line: 66, type: !80)
!82 = !DILocalVariable(name: "mypathsize", scope: !43, file: !2, line: 67, type: !51)
!83 = !DILocalVariable(name: "i", scope: !43, file: !2, line: 68, type: !84)
!84 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!85 = !DILocalVariable(name: "j", scope: !43, file: !2, line: 68, type: !84)
!86 = !DILabel(scope: !43, name: "quit", file: !2, line: 139)
!87 = !DILocation(line: 59, column: 45, scope: !43)
!88 = !DILocation(line: 59, column: 57, scope: !43)
!89 = !DILocation(line: 60, column: 12, scope: !43)
!90 = !DILocation(line: 60, column: 24, scope: !43)
!91 = !DILocation(line: 62, column: 2, scope: !43)
!92 = !DILocation(line: 62, column: 15, scope: !43)
!93 = !DILocation(line: 63, column: 19, scope: !43)
!94 = !DILocation(line: 64, column: 2, scope: !43)
!95 = !DILocation(line: 64, column: 14, scope: !43)
!96 = !DILocation(line: 64, column: 18, scope: !43)
!97 = !DILocation(line: 64, column: 25, scope: !43)
!98 = !DILocation(line: 65, column: 2, scope: !43)
!99 = !DILocation(line: 65, column: 15, scope: !43)
!100 = !DILocation(line: 65, column: 31, scope: !43)
!101 = !DILocation(line: 65, column: 36, scope: !43)
!102 = !DILocation(line: 66, column: 2, scope: !43)
!103 = !DILocation(line: 66, column: 16, scope: !43)
!104 = !DILocation(line: 66, column: 19, scope: !43)
!105 = !DILocation(line: 67, column: 2, scope: !43)
!106 = !DILocation(line: 67, column: 9, scope: !43)
!107 = !DILocation(line: 67, column: 29, scope: !43)
!108 = !DILocation(line: 67, column: 22, scope: !43)
!109 = !DILocation(line: 68, column: 2, scope: !43)
!110 = !DILocation(line: 68, column: 6, scope: !43)
!111 = !DILocation(line: 68, column: 9, scope: !43)
!112 = !DILocation(line: 70, column: 6, scope: !43)
!113 = !DILocation(line: 70, column: 4, scope: !43)
!114 = !DILocation(line: 72, column: 2, scope: !43)
!115 = !DILocation(line: 72, column: 9, scope: !43)
!116 = !DILocation(line: 72, column: 13, scope: !43)
!117 = !DILocation(line: 73, column: 9, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !2, line: 73, column: 7)
!119 = distinct !DILexicalBlock(scope: !43, file: !2, line: 72, column: 32)
!120 = !DILocation(line: 73, column: 8, scope: !118)
!121 = !DILocation(line: 73, column: 7, scope: !119)
!122 = !DILocation(line: 75, column: 6, scope: !123)
!123 = distinct !DILexicalBlock(scope: !118, file: !2, line: 73, column: 12)
!124 = !DILocation(line: 76, column: 8, scope: !123)
!125 = !DILocation(line: 77, column: 4, scope: !123)
!126 = distinct !{!126, !114, !127, !128, !129}
!127 = !DILocation(line: 137, column: 2, scope: !43)
!128 = !{!"llvm.loop.mustprogress"}
!129 = !{!"llvm.loop.unroll.disable"}
!130 = !DILocation(line: 80, column: 5, scope: !119)
!131 = !DILocation(line: 81, column: 9, scope: !119)
!132 = !DILocation(line: 81, column: 7, scope: !119)
!133 = !DILocation(line: 82, column: 10, scope: !134)
!134 = distinct !DILexicalBlock(scope: !119, file: !2, line: 82, column: 3)
!135 = !DILocation(line: 82, column: 8, scope: !134)
!136 = !DILocation(line: 82, column: 23, scope: !137)
!137 = distinct !DILexicalBlock(scope: !134, file: !2, line: 82, column: 3)
!138 = !DILocation(line: 82, column: 3, scope: !134)
!139 = !DILocation(line: 83, column: 6, scope: !140)
!140 = distinct !DILexicalBlock(scope: !137, file: !2, line: 82, column: 31)
!141 = !DILocation(line: 84, column: 4, scope: !140)
!142 = !DILocation(line: 84, column: 12, scope: !140)
!143 = !DILocation(line: 85, column: 7, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !2, line: 84, column: 16)
!145 = !DILocation(line: 86, column: 11, scope: !144)
!146 = !DILocation(line: 86, column: 9, scope: !144)
!147 = !DILocation(line: 86, column: 7, scope: !144)
!148 = !DILocation(line: 88, column: 9, scope: !144)
!149 = !DILocation(line: 88, column: 11, scope: !144)
!150 = !DILocation(line: 88, column: 7, scope: !144)
!151 = !DILocation(line: 89, column: 9, scope: !152)
!152 = distinct !DILexicalBlock(scope: !144, file: !2, line: 89, column: 9)
!153 = !DILocation(line: 89, column: 11, scope: !152)
!154 = !DILocation(line: 89, column: 9, scope: !144)
!155 = !DILocation(line: 90, column: 11, scope: !156)
!156 = distinct !DILexicalBlock(scope: !152, file: !2, line: 89, column: 17)
!157 = !DILocation(line: 90, column: 8, scope: !156)
!158 = !DILocation(line: 91, column: 6, scope: !156)
!159 = distinct !{!159, !141, !160, !128, !129}
!160 = !DILocation(line: 101, column: 4, scope: !140)
!161 = !DILocation(line: 94, column: 10, scope: !144)
!162 = !DILocation(line: 94, column: 12, scope: !144)
!163 = !DILocation(line: 94, column: 20, scope: !144)
!164 = !DILocation(line: 94, column: 9, scope: !144)
!165 = !DILocation(line: 94, column: 7, scope: !144)
!166 = !DILocation(line: 95, column: 9, scope: !167)
!167 = distinct !DILexicalBlock(scope: !144, file: !2, line: 95, column: 9)
!168 = !DILocation(line: 95, column: 11, scope: !167)
!169 = !DILocation(line: 95, column: 9, scope: !144)
!170 = !DILocation(line: 96, column: 11, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !2, line: 95, column: 16)
!172 = !DILocation(line: 96, column: 13, scope: !171)
!173 = !DILocation(line: 96, column: 8, scope: !171)
!174 = !DILocation(line: 97, column: 6, scope: !171)
!175 = !DILocation(line: 100, column: 5, scope: !144)
!176 = !DILocation(line: 102, column: 13, scope: !140)
!177 = !DILocation(line: 102, column: 8, scope: !140)
!178 = !DILocation(line: 102, column: 11, scope: !140)
!179 = !DILocation(line: 103, column: 6, scope: !140)
!180 = !DILocation(line: 104, column: 3, scope: !140)
!181 = !DILocation(line: 82, column: 27, scope: !137)
!182 = !DILocation(line: 82, column: 3, scope: !137)
!183 = distinct !{!183, !138, !184, !128, !129}
!184 = !DILocation(line: 104, column: 3, scope: !134)
!185 = !DILocation(line: 106, column: 8, scope: !186)
!186 = distinct !DILexicalBlock(scope: !119, file: !2, line: 106, column: 7)
!187 = !DILocation(line: 106, column: 20, scope: !186)
!188 = !DILocation(line: 106, column: 32, scope: !186)
!189 = !DILocation(line: 106, column: 7, scope: !119)
!190 = !DILocation(line: 107, column: 4, scope: !186)
!191 = !DILocation(line: 109, column: 7, scope: !119)
!192 = !DILocation(line: 111, column: 10, scope: !119)
!193 = !DILocation(line: 111, column: 8, scope: !119)
!194 = !DILocation(line: 112, column: 10, scope: !119)
!195 = !DILocation(line: 112, column: 8, scope: !119)
!196 = !DILocation(line: 114, column: 7, scope: !197)
!197 = distinct !DILexicalBlock(scope: !119, file: !2, line: 114, column: 7)
!198 = !DILocation(line: 114, column: 14, scope: !197)
!199 = !DILocation(line: 114, column: 18, scope: !197)
!200 = !DILocation(line: 114, column: 16, scope: !197)
!201 = !DILocation(line: 114, column: 12, scope: !197)
!202 = !DILocation(line: 114, column: 22, scope: !197)
!203 = !DILocation(line: 114, column: 25, scope: !197)
!204 = !DILocation(line: 114, column: 32, scope: !197)
!205 = !DILocation(line: 114, column: 30, scope: !197)
!206 = !DILocation(line: 114, column: 34, scope: !197)
!207 = !DILocation(line: 114, column: 37, scope: !197)
!208 = !DILocation(line: 114, column: 44, scope: !197)
!209 = !DILocation(line: 114, column: 42, scope: !197)
!210 = !DILocation(line: 114, column: 7, scope: !119)
!211 = !DILocation(line: 115, column: 4, scope: !197)
!212 = !DILocation(line: 117, column: 8, scope: !213)
!213 = distinct !DILexicalBlock(scope: !119, file: !2, line: 117, column: 7)
!214 = !DILocation(line: 117, column: 19, scope: !213)
!215 = !DILocation(line: 117, column: 30, scope: !213)
!216 = !DILocation(line: 117, column: 41, scope: !213)
!217 = !DILocation(line: 118, column: 7, scope: !213)
!218 = !DILocation(line: 118, column: 25, scope: !213)
!219 = !DILocation(line: 118, column: 22, scope: !213)
!220 = !DILocation(line: 118, column: 36, scope: !213)
!221 = !DILocation(line: 119, column: 15, scope: !213)
!222 = !DILocation(line: 119, column: 18, scope: !213)
!223 = !DILocation(line: 119, column: 24, scope: !213)
!224 = !DILocation(line: 119, column: 8, scope: !213)
!225 = !DILocation(line: 117, column: 7, scope: !119)
!226 = !DILocation(line: 121, column: 8, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !2, line: 121, column: 8)
!228 = distinct !DILexicalBlock(scope: !213, file: !2, line: 119, column: 37)
!229 = !DILocation(line: 121, column: 8, scope: !228)
!230 = !DILocation(line: 122, column: 22, scope: !227)
!231 = !DILocation(line: 122, column: 16, scope: !227)
!232 = !DILocation(line: 122, column: 35, scope: !227)
!233 = !DILocation(line: 122, column: 29, scope: !227)
!234 = !DILocation(line: 122, column: 27, scope: !227)
!235 = !DILocation(line: 122, column: 6, scope: !227)
!236 = !DILocation(line: 122, column: 14, scope: !227)
!237 = !DILocation(line: 122, column: 5, scope: !227)
!238 = !DILocation(line: 124, column: 8, scope: !239)
!239 = distinct !DILexicalBlock(scope: !228, file: !2, line: 124, column: 8)
!240 = !DILocation(line: 124, column: 25, scope: !239)
!241 = !DILocation(line: 124, column: 23, scope: !239)
!242 = !DILocation(line: 124, column: 36, scope: !239)
!243 = !DILocation(line: 124, column: 8, scope: !228)
!244 = !DILocation(line: 125, column: 5, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !2, line: 125, column: 5)
!246 = distinct !DILexicalBlock(scope: !239, file: !2, line: 124, column: 59)
!247 = !DILocation(line: 125, column: 5, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !2, line: 125, column: 5)
!249 = !DILocation(line: 128, column: 4, scope: !246)
!250 = !DILocation(line: 129, column: 15, scope: !228)
!251 = !DILocation(line: 129, column: 12, scope: !228)
!252 = !DILocation(line: 129, column: 21, scope: !228)
!253 = !DILocation(line: 129, column: 25, scope: !228)
!254 = !DILocation(line: 129, column: 23, scope: !228)
!255 = !DILocation(line: 129, column: 4, scope: !228)
!256 = !DILocation(line: 131, column: 22, scope: !228)
!257 = !DILocation(line: 131, column: 7, scope: !228)
!258 = !DILocation(line: 131, column: 12, scope: !228)
!259 = !DILocation(line: 132, column: 14, scope: !228)
!260 = !DILocation(line: 132, column: 7, scope: !228)
!261 = !DILocation(line: 132, column: 12, scope: !228)
!262 = !DILocation(line: 133, column: 4, scope: !228)
!263 = !DILocation(line: 135, column: 11, scope: !119)
!264 = !DILocation(line: 135, column: 18, scope: !119)
!265 = !DILocation(line: 135, column: 16, scope: !119)
!266 = !DILocation(line: 135, column: 7, scope: !119)
!267 = !DILocation(line: 136, column: 7, scope: !119)
!268 = !DILocation(line: 136, column: 5, scope: !119)
!269 = !DILocation(line: 139, column: 1, scope: !43)
!270 = !DILocation(line: 140, column: 2, scope: !43)
!271 = !DILocation(line: 141, column: 1, scope: !43)
!272 = !DISubprogram(name: "strlen", scope: !273, file: !273, line: 128, type: !274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!273 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!274 = !DISubroutineType(types: !275)
!275 = !{!31, !29}
!276 = !DISubprogram(name: "memcmp", scope: !273, file: !273, line: 196, type: !277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!277 = !DISubroutineType(types: !278)
!278 = !{!84, !279, !279, !53}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!281 = !DISubprogram(name: "_printk", scope: !282, file: !282, line: 153, type: !283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!282 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!283 = !DISubroutineType(types: !284)
!284 = !{!84, !29, null}
!285 = !DISubprogram(name: "strscpy", scope: !273, file: !273, line: 72, type: !286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!286 = !DISubroutineType(types: !287)
!287 = !{!288, !291, !29, !51}
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !52, line: 66, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !54, line: 73, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !54, line: 15, baseType: !32)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)

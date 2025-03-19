; ModuleID = 'drivers/gpu/drm/drm_displayid.c'
source_filename = "drivers/gpu/drm/drm_displayid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.displayid_iter = type { ptr, ptr, i32, i32, i32, i8, i8 }
%struct.displayid_block = type { i8, i8, i8 }
%struct.displayid_header = type { i8, i8, i8, i8 }

@.str = private unnamed_addr constant [32 x i8] c"drivers/gpu/drm/drm_displayid.c\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [38 x i8] c"base revision 0x%x, length %d, %d %d\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [53 x i8] c"\015[drm] DisplayID checksum invalid, remainder is %d\0A\00", align 1, !dbg !12

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @displayid_iter_edid_begin(ptr noundef %drm_edid, ptr noundef %iter) #0 align 16 !dbg !67 {
entry:
  %drm_edid.addr = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  store ptr %drm_edid, ptr %drm_edid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drm_edid.addr, metadata !87, metadata !DIExpression()), !dbg !89
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !88, metadata !DIExpression()), !dbg !90
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !91
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 32, i1 false), !dbg !92
  %1 = load ptr, ptr %drm_edid.addr, align 8, !dbg !93
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !94
  %drm_edid1 = getelementptr inbounds %struct.displayid_iter, ptr %2, i32 0, i32 0, !dbg !95
  store ptr %1, ptr %drm_edid1, align 8, !dbg !96
  ret void, !dbg !97
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @__displayid_iter_next(ptr noundef %iter) #0 align 16 !dbg !98 {
entry:
  %retval = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  %block = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %base_section = alloca i8, align 1
  %base = alloca ptr, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !102, metadata !DIExpression()), !dbg !122
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #8, !dbg !123
  call void @llvm.dbg.declare(metadata ptr %block, metadata !103, metadata !DIExpression()), !dbg !124
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !125
  %drm_edid = getelementptr inbounds %struct.displayid_iter, ptr %0, i32 0, i32 0, !dbg !127
  %1 = load ptr, ptr %drm_edid, align 8, !dbg !127
  %tobool = icmp ne ptr %1, null, !dbg !125
  br i1 %tobool, label %if.end, label %if.then, !dbg !128

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !129
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup75, !dbg !129

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !130
  %section = getelementptr inbounds %struct.displayid_iter, ptr %2, i32 0, i32 1, !dbg !131
  %3 = load ptr, ptr %section, align 8, !dbg !131
  %tobool1 = icmp ne ptr %3, null, !dbg !130
  br i1 %tobool1, label %if.then2, label %if.end43, !dbg !132

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !133
  %call = call ptr @displayid_iter_block(ptr noundef %4) #9, !dbg !134
  store ptr %call, ptr %block, align 8, !dbg !135
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !136
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !104, metadata !DIExpression()), !dbg !136
  %5 = load ptr, ptr %block, align 8, !dbg !136
  %tobool3 = icmp ne ptr %5, null, !dbg !136
  %lnot = xor i1 %tobool3, true, !dbg !136
  %lnot4 = xor i1 %lnot, true, !dbg !136
  %lnot5 = xor i1 %lnot4, true, !dbg !136
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !136
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !136
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !137
  %tobool6 = icmp ne i32 %6, 0, !dbg !137
  %lnot7 = xor i1 %tobool6, true, !dbg !137
  %lnot9 = xor i1 %lnot7, true, !dbg !137
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !137
  %conv = sext i32 %lnot.ext10 to i64, !dbg !137
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !137
  %tobool11 = icmp ne i64 %expval, 0, !dbg !137
  br i1 %tobool11, label %if.then12, label %if.end22, !dbg !136

if.then12:                                        ; preds = %if.then2
  br label %do.body, !dbg !137

do.body:                                          ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #8, !dbg !138
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !109, metadata !DIExpression()), !dbg !138
  store i32 2305, ptr %__flags, align 4, !dbg !138
  br label %do.body13, !dbg !138

do.body13:                                        ; preds = %do.body
  br label %do.cond, !dbg !139

do.cond:                                          ; preds = %do.body13
  br label %do.end, !dbg !139

do.end:                                           ; preds = %do.cond
  br label %do.body14, !dbg !138

do.body14:                                        ; preds = %do.end
  %7 = load i32, ptr %__flags, align 4, !dbg !141
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 111, i32 %7, i64 12) #8, !dbg !141, !srcloc !143
  br label %do.cond15, !dbg !141

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !141

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !138

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !144

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !144

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #8, !dbg !137
  br label %do.cond20, !dbg !138

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !138

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !138

if.end22:                                         ; preds = %do.end21, %if.then2
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !136
  %tobool23 = icmp ne i32 %8, 0, !dbg !136
  %lnot24 = xor i1 %tobool23, true, !dbg !136
  %lnot26 = xor i1 %lnot24, true, !dbg !136
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !136
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !136
  %expval29 = call i64 @llvm.expect.i64(i64 %conv28, i64 0), !dbg !136
  store i64 %expval29, ptr %tmp, align 8, !dbg !137
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !146
  %9 = load i64, ptr %tmp, align 8, !dbg !136
  %tobool30 = icmp ne i64 %9, 0, !dbg !146
  br i1 %tobool30, label %if.then31, label %if.end34, !dbg !147

if.then31:                                        ; preds = %if.end22
  %10 = load ptr, ptr %iter.addr, align 8, !dbg !148
  %section32 = getelementptr inbounds %struct.displayid_iter, ptr %10, i32 0, i32 1, !dbg !150
  store ptr null, ptr %section32, align 8, !dbg !151
  %11 = load ptr, ptr %iter.addr, align 8, !dbg !152
  %drm_edid33 = getelementptr inbounds %struct.displayid_iter, ptr %11, i32 0, i32 0, !dbg !153
  store ptr null, ptr %drm_edid33, align 8, !dbg !154
  store ptr null, ptr %retval, align 8, !dbg !155
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup75, !dbg !155

if.end34:                                         ; preds = %if.end22
  %12 = load ptr, ptr %block, align 8, !dbg !156
  %num_bytes = getelementptr inbounds %struct.displayid_block, ptr %12, i32 0, i32 2, !dbg !157
  %13 = load i8, ptr %num_bytes, align 1, !dbg !157
  %conv35 = zext i8 %13 to i64, !dbg !156
  %add = add i64 3, %conv35, !dbg !158
  %14 = load ptr, ptr %iter.addr, align 8, !dbg !159
  %idx = getelementptr inbounds %struct.displayid_iter, ptr %14, i32 0, i32 3, !dbg !160
  %15 = load i32, ptr %idx, align 4, !dbg !161
  %conv36 = sext i32 %15 to i64, !dbg !161
  %add37 = add i64 %conv36, %add, !dbg !161
  %conv38 = trunc i64 %add37 to i32, !dbg !161
  store i32 %conv38, ptr %idx, align 4, !dbg !161
  %16 = load ptr, ptr %iter.addr, align 8, !dbg !162
  %call39 = call ptr @displayid_iter_block(ptr noundef %16) #9, !dbg !163
  store ptr %call39, ptr %block, align 8, !dbg !164
  %17 = load ptr, ptr %block, align 8, !dbg !165
  %tobool40 = icmp ne ptr %17, null, !dbg !165
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !167

if.then41:                                        ; preds = %if.end34
  %18 = load ptr, ptr %block, align 8, !dbg !168
  store ptr %18, ptr %retval, align 8, !dbg !169
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup75, !dbg !169

if.end42:                                         ; preds = %if.end34
  br label %if.end43, !dbg !170

if.end43:                                         ; preds = %if.end42, %if.end
  br label %for.cond, !dbg !171

for.cond:                                         ; preds = %cleanup.cont, %if.end43
  call void @llvm.lifetime.start.p0(i64 1, ptr %base_section) #8, !dbg !172
  call void @llvm.dbg.declare(metadata ptr %base_section, metadata !112, metadata !DIExpression()), !dbg !173
  %19 = load ptr, ptr %iter.addr, align 8, !dbg !174
  %section44 = getelementptr inbounds %struct.displayid_iter, ptr %19, i32 0, i32 1, !dbg !175
  %20 = load ptr, ptr %section44, align 8, !dbg !175
  %tobool45 = icmp ne ptr %20, null, !dbg !176
  %lnot46 = xor i1 %tobool45, true, !dbg !176
  %frombool = zext i1 %lnot46 to i8, !dbg !173
  store i8 %frombool, ptr %base_section, align 1, !dbg !173
  %21 = load ptr, ptr %iter.addr, align 8, !dbg !177
  %drm_edid48 = getelementptr inbounds %struct.displayid_iter, ptr %21, i32 0, i32 0, !dbg !178
  %22 = load ptr, ptr %drm_edid48, align 8, !dbg !178
  %23 = load ptr, ptr %iter.addr, align 8, !dbg !179
  %length = getelementptr inbounds %struct.displayid_iter, ptr %23, i32 0, i32 2, !dbg !180
  %24 = load ptr, ptr %iter.addr, align 8, !dbg !181
  %idx49 = getelementptr inbounds %struct.displayid_iter, ptr %24, i32 0, i32 3, !dbg !182
  %25 = load ptr, ptr %iter.addr, align 8, !dbg !183
  %ext_index = getelementptr inbounds %struct.displayid_iter, ptr %25, i32 0, i32 4, !dbg !184
  %call50 = call ptr @drm_find_displayid_extension(ptr noundef %22, ptr noundef %length, ptr noundef %idx49, ptr noundef %ext_index) #9, !dbg !185
  %26 = load ptr, ptr %iter.addr, align 8, !dbg !186
  %section51 = getelementptr inbounds %struct.displayid_iter, ptr %26, i32 0, i32 1, !dbg !187
  store ptr %call50, ptr %section51, align 8, !dbg !188
  %27 = load ptr, ptr %iter.addr, align 8, !dbg !189
  %section52 = getelementptr inbounds %struct.displayid_iter, ptr %27, i32 0, i32 1, !dbg !191
  %28 = load ptr, ptr %section52, align 8, !dbg !191
  %tobool53 = icmp ne ptr %28, null, !dbg !189
  br i1 %tobool53, label %if.end56, label %if.then54, !dbg !192

if.then54:                                        ; preds = %for.cond
  %29 = load ptr, ptr %iter.addr, align 8, !dbg !193
  %drm_edid55 = getelementptr inbounds %struct.displayid_iter, ptr %29, i32 0, i32 0, !dbg !195
  store ptr null, ptr %drm_edid55, align 8, !dbg !196
  store ptr null, ptr %retval, align 8, !dbg !197
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !197

if.end56:                                         ; preds = %for.cond
  %30 = load i8, ptr %base_section, align 1, !dbg !198, !range !199, !noundef !200
  %tobool57 = trunc i8 %30 to i1, !dbg !198
  br i1 %tobool57, label %if.then58, label %if.end66, !dbg !201

if.then58:                                        ; preds = %if.end56
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #8, !dbg !202
  call void @llvm.dbg.declare(metadata ptr %base, metadata !119, metadata !DIExpression()), !dbg !203
  %31 = load ptr, ptr %iter.addr, align 8, !dbg !204
  %section59 = getelementptr inbounds %struct.displayid_iter, ptr %31, i32 0, i32 1, !dbg !205
  %32 = load ptr, ptr %section59, align 8, !dbg !205
  %33 = load ptr, ptr %iter.addr, align 8, !dbg !206
  %length60 = getelementptr inbounds %struct.displayid_iter, ptr %33, i32 0, i32 2, !dbg !207
  %34 = load i32, ptr %length60, align 8, !dbg !207
  %35 = load ptr, ptr %iter.addr, align 8, !dbg !208
  %idx61 = getelementptr inbounds %struct.displayid_iter, ptr %35, i32 0, i32 3, !dbg !209
  %36 = load i32, ptr %idx61, align 4, !dbg !209
  %call62 = call ptr @displayid_get_header(ptr noundef %32, i32 noundef %34, i32 noundef %36) #9, !dbg !210
  store ptr %call62, ptr %base, align 8, !dbg !211
  %37 = load ptr, ptr %base, align 8, !dbg !212
  %call63 = call zeroext i1 @IS_ERR(ptr noundef %37) #9, !dbg !214
  br i1 %call63, label %if.end65, label %if.then64, !dbg !215

if.then64:                                        ; preds = %if.then58
  %38 = load ptr, ptr %base, align 8, !dbg !216
  %rev = getelementptr inbounds %struct.displayid_header, ptr %38, i32 0, i32 0, !dbg !218
  %39 = load i8, ptr %rev, align 1, !dbg !218
  %40 = load ptr, ptr %iter.addr, align 8, !dbg !219
  %version = getelementptr inbounds %struct.displayid_iter, ptr %40, i32 0, i32 5, !dbg !220
  store i8 %39, ptr %version, align 4, !dbg !221
  %41 = load ptr, ptr %base, align 8, !dbg !222
  %prod_id = getelementptr inbounds %struct.displayid_header, ptr %41, i32 0, i32 2, !dbg !223
  %42 = load i8, ptr %prod_id, align 1, !dbg !223
  %43 = load ptr, ptr %iter.addr, align 8, !dbg !224
  %primary_use = getelementptr inbounds %struct.displayid_iter, ptr %43, i32 0, i32 6, !dbg !225
  store i8 %42, ptr %primary_use, align 1, !dbg !226
  br label %if.end65, !dbg !227

if.end65:                                         ; preds = %if.then64, %if.then58
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #8, !dbg !228
  br label %if.end66, !dbg !229

if.end66:                                         ; preds = %if.end65, %if.end56
  %44 = load ptr, ptr %iter.addr, align 8, !dbg !230
  %idx67 = getelementptr inbounds %struct.displayid_iter, ptr %44, i32 0, i32 3, !dbg !231
  %45 = load i32, ptr %idx67, align 4, !dbg !232
  %conv68 = sext i32 %45 to i64, !dbg !232
  %add69 = add i64 %conv68, 4, !dbg !232
  %conv70 = trunc i64 %add69 to i32, !dbg !232
  store i32 %conv70, ptr %idx67, align 4, !dbg !232
  %46 = load ptr, ptr %iter.addr, align 8, !dbg !233
  %call71 = call ptr @displayid_iter_block(ptr noundef %46) #9, !dbg !234
  store ptr %call71, ptr %block, align 8, !dbg !235
  %47 = load ptr, ptr %block, align 8, !dbg !236
  %tobool72 = icmp ne ptr %47, null, !dbg !236
  br i1 %tobool72, label %if.then73, label %if.end74, !dbg !238

if.then73:                                        ; preds = %if.end66
  %48 = load ptr, ptr %block, align 8, !dbg !239
  store ptr %48, ptr %retval, align 8, !dbg !240
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !240

if.end74:                                         ; preds = %if.end66
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !241
  br label %cleanup, !dbg !241

cleanup:                                          ; preds = %if.end74, %if.then73, %if.then54
  call void @llvm.lifetime.end.p0(i64 1, ptr %base_section) #8, !dbg !241
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup75 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !242, !llvm.loop !243

cleanup75:                                        ; preds = %cleanup, %if.then41, %if.then31, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #8, !dbg !247
  %49 = load ptr, ptr %retval, align 8, !dbg !247
  ret ptr %49, !dbg !247
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @displayid_iter_block(ptr noundef %iter) #0 align 16 !dbg !248 {
entry:
  %retval = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  %block = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !254, metadata !DIExpression()), !dbg !256
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #8, !dbg !257
  call void @llvm.dbg.declare(metadata ptr %block, metadata !255, metadata !DIExpression()), !dbg !258
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !259
  %section = getelementptr inbounds %struct.displayid_iter, ptr %0, i32 0, i32 1, !dbg !261
  %1 = load ptr, ptr %section, align 8, !dbg !261
  %tobool = icmp ne ptr %1, null, !dbg !259
  br i1 %tobool, label %if.end, label %if.then, !dbg !262

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !263
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !263

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !264
  %section1 = getelementptr inbounds %struct.displayid_iter, ptr %2, i32 0, i32 1, !dbg !265
  %3 = load ptr, ptr %section1, align 8, !dbg !265
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !266
  %idx = getelementptr inbounds %struct.displayid_iter, ptr %4, i32 0, i32 3, !dbg !267
  %5 = load i32, ptr %idx, align 4, !dbg !267
  %idxprom = sext i32 %5 to i64, !dbg !264
  %arrayidx = getelementptr i8, ptr %3, i64 %idxprom, !dbg !264
  store ptr %arrayidx, ptr %block, align 8, !dbg !268
  %6 = load ptr, ptr %iter.addr, align 8, !dbg !269
  %idx2 = getelementptr inbounds %struct.displayid_iter, ptr %6, i32 0, i32 3, !dbg !271
  %7 = load i32, ptr %idx2, align 4, !dbg !271
  %conv = sext i32 %7 to i64, !dbg !269
  %add = add i64 %conv, 3, !dbg !272
  %8 = load ptr, ptr %iter.addr, align 8, !dbg !273
  %length = getelementptr inbounds %struct.displayid_iter, ptr %8, i32 0, i32 2, !dbg !274
  %9 = load i32, ptr %length, align 8, !dbg !274
  %conv3 = sext i32 %9 to i64, !dbg !273
  %cmp = icmp ule i64 %add, %conv3, !dbg !275
  br i1 %cmp, label %land.lhs.true, label %if.end15, !dbg !276

land.lhs.true:                                    ; preds = %if.end
  %10 = load ptr, ptr %iter.addr, align 8, !dbg !277
  %idx5 = getelementptr inbounds %struct.displayid_iter, ptr %10, i32 0, i32 3, !dbg !278
  %11 = load i32, ptr %idx5, align 4, !dbg !278
  %conv6 = sext i32 %11 to i64, !dbg !277
  %add7 = add i64 %conv6, 3, !dbg !279
  %12 = load ptr, ptr %block, align 8, !dbg !280
  %num_bytes = getelementptr inbounds %struct.displayid_block, ptr %12, i32 0, i32 2, !dbg !281
  %13 = load i8, ptr %num_bytes, align 1, !dbg !281
  %conv8 = zext i8 %13 to i64, !dbg !280
  %add9 = add i64 %add7, %conv8, !dbg !282
  %14 = load ptr, ptr %iter.addr, align 8, !dbg !283
  %length10 = getelementptr inbounds %struct.displayid_iter, ptr %14, i32 0, i32 2, !dbg !284
  %15 = load i32, ptr %length10, align 8, !dbg !284
  %conv11 = sext i32 %15 to i64, !dbg !283
  %cmp12 = icmp ule i64 %add9, %conv11, !dbg !285
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !286

if.then14:                                        ; preds = %land.lhs.true
  %16 = load ptr, ptr %block, align 8, !dbg !287
  store ptr %16, ptr %retval, align 8, !dbg !288
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !288

if.end15:                                         ; preds = %land.lhs.true, %if.end
  store ptr null, ptr %retval, align 8, !dbg !289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !289

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #8, !dbg !290
  %17 = load ptr, ptr %retval, align 8, !dbg !290
  ret ptr %17, !dbg !290
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @drm_find_displayid_extension(ptr noundef %drm_edid, ptr noundef %length, ptr noundef %idx, ptr noundef %ext_index) #0 align 16 !dbg !291 {
entry:
  %retval = alloca ptr, align 8
  %drm_edid.addr = alloca ptr, align 8
  %length.addr = alloca ptr, align 8
  %idx.addr = alloca ptr, align 8
  %ext_index.addr = alloca ptr, align 8
  %displayid = alloca ptr, align 8
  %base = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %drm_edid, ptr %drm_edid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drm_edid.addr, metadata !296, metadata !DIExpression()), !dbg !302
  store ptr %length, ptr %length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !297, metadata !DIExpression()), !dbg !303
  store ptr %idx, ptr %idx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !298, metadata !DIExpression()), !dbg !304
  store ptr %ext_index, ptr %ext_index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ext_index.addr, metadata !299, metadata !DIExpression()), !dbg !305
  call void @llvm.lifetime.start.p0(i64 8, ptr %displayid) #8, !dbg !306
  call void @llvm.dbg.declare(metadata ptr %displayid, metadata !300, metadata !DIExpression()), !dbg !307
  %0 = load ptr, ptr %drm_edid.addr, align 8, !dbg !308
  %1 = load ptr, ptr %ext_index.addr, align 8, !dbg !309
  %call = call ptr @drm_find_edid_extension(ptr noundef %0, i32 noundef 112, ptr noundef %1) #9, !dbg !310
  store ptr %call, ptr %displayid, align 8, !dbg !307
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #8, !dbg !311
  call void @llvm.dbg.declare(metadata ptr %base, metadata !301, metadata !DIExpression()), !dbg !312
  %2 = load ptr, ptr %displayid, align 8, !dbg !313
  %tobool = icmp ne ptr %2, null, !dbg !313
  br i1 %tobool, label %if.end, label %if.then, !dbg !315

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !316

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %length.addr, align 8, !dbg !317
  store i32 127, ptr %3, align 4, !dbg !318
  %4 = load ptr, ptr %idx.addr, align 8, !dbg !319
  store i32 1, ptr %4, align 4, !dbg !320
  %5 = load ptr, ptr %displayid, align 8, !dbg !321
  %6 = load ptr, ptr %length.addr, align 8, !dbg !322
  %7 = load i32, ptr %6, align 4, !dbg !323
  %8 = load ptr, ptr %idx.addr, align 8, !dbg !324
  %9 = load i32, ptr %8, align 4, !dbg !325
  %call1 = call ptr @validate_displayid(ptr noundef %5, i32 noundef %7, i32 noundef %9) #9, !dbg !326
  store ptr %call1, ptr %base, align 8, !dbg !327
  %10 = load ptr, ptr %base, align 8, !dbg !328
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %10) #9, !dbg !330
  br i1 %call2, label %if.then3, label %if.end4, !dbg !331

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !332

if.end4:                                          ; preds = %if.end
  %11 = load ptr, ptr %idx.addr, align 8, !dbg !333
  %12 = load i32, ptr %11, align 4, !dbg !334
  %conv = sext i32 %12 to i64, !dbg !334
  %add = add i64 %conv, 4, !dbg !335
  %13 = load ptr, ptr %base, align 8, !dbg !336
  %bytes = getelementptr inbounds %struct.displayid_header, ptr %13, i32 0, i32 1, !dbg !337
  %14 = load i8, ptr %bytes, align 1, !dbg !337
  %conv5 = zext i8 %14 to i64, !dbg !336
  %add6 = add i64 %add, %conv5, !dbg !338
  %conv7 = trunc i64 %add6 to i32, !dbg !334
  %15 = load ptr, ptr %length.addr, align 8, !dbg !339
  store i32 %conv7, ptr %15, align 4, !dbg !340
  %16 = load ptr, ptr %displayid, align 8, !dbg !341
  store ptr %16, ptr %retval, align 8, !dbg !342
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !342

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #8, !dbg !343
  call void @llvm.lifetime.end.p0(i64 8, ptr %displayid) #8, !dbg !343
  %17 = load ptr, ptr %retval, align 8, !dbg !343
  ret ptr %17, !dbg !343
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @displayid_get_header(ptr noundef %displayid, i32 noundef %length, i32 noundef %index) #0 align 16 !dbg !344 {
entry:
  %retval = alloca ptr, align 8
  %displayid.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %base = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %displayid, ptr %displayid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %displayid.addr, metadata !348, metadata !DIExpression()), !dbg !352
  store i32 %length, ptr %length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !349, metadata !DIExpression()), !dbg !353
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !350, metadata !DIExpression()), !dbg !354
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #8, !dbg !355
  call void @llvm.dbg.declare(metadata ptr %base, metadata !351, metadata !DIExpression()), !dbg !356
  %0 = load i32, ptr %length.addr, align 4, !dbg !357
  %1 = load i32, ptr %index.addr, align 4, !dbg !359
  %sub = sub i32 %0, %1, !dbg !360
  %conv = sext i32 %sub to i64, !dbg !357
  %cmp = icmp ugt i64 4, %conv, !dbg !361
  br i1 %cmp, label %if.then, label %if.end, !dbg !362

if.then:                                          ; preds = %entry
  %call = call ptr @ERR_PTR(i64 noundef -22) #9, !dbg !363
  store ptr %call, ptr %retval, align 8, !dbg !364
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !364

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %displayid.addr, align 8, !dbg !365
  %3 = load i32, ptr %index.addr, align 4, !dbg !366
  %idxprom = sext i32 %3 to i64, !dbg !365
  %arrayidx = getelementptr i8, ptr %2, i64 %idxprom, !dbg !365
  store ptr %arrayidx, ptr %base, align 8, !dbg !367
  %4 = load ptr, ptr %base, align 8, !dbg !368
  store ptr %4, ptr %retval, align 8, !dbg !369
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !369

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #8, !dbg !370
  %5 = load ptr, ptr %retval, align 8, !dbg !370
  ret ptr %5, !dbg !370
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #5 align 16 !dbg !371 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !378, metadata !DIExpression()), !dbg !379
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !380
  %1 = ptrtoint ptr %0 to i64, !dbg !380
  %2 = inttoptr i64 %1 to ptr, !dbg !380
  %3 = ptrtoint ptr %2 to i64, !dbg !380
  %cmp = icmp uge i64 %3, -4095, !dbg !380
  %lnot = xor i1 %cmp, true, !dbg !380
  %lnot1 = xor i1 %lnot, true, !dbg !380
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !380
  %conv = sext i32 %lnot.ext to i64, !dbg !380
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !380
  %tobool = icmp ne i64 %expval, 0, !dbg !380
  ret i1 %tobool, !dbg !381
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @displayid_iter_end(ptr noundef %iter) #0 align 16 !dbg !382 {
entry:
  %iter.addr = alloca ptr, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !386, metadata !DIExpression()), !dbg !387
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !388
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 32, i1 false), !dbg !389
  ret void, !dbg !390
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @displayid_version(ptr noundef %iter) #0 align 16 !dbg !391 {
entry:
  %iter.addr = alloca ptr, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !395, metadata !DIExpression()), !dbg !396
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !397
  %version = getelementptr inbounds %struct.displayid_iter, ptr %0, i32 0, i32 5, !dbg !398
  %1 = load i8, ptr %version, align 4, !dbg !398
  ret i8 %1, !dbg !399
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @displayid_primary_use(ptr noundef %iter) #0 align 16 !dbg !400 {
entry:
  %iter.addr = alloca ptr, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !402, metadata !DIExpression()), !dbg !403
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !404
  %primary_use = getelementptr inbounds %struct.displayid_iter, ptr %0, i32 0, i32 6, !dbg !405
  %1 = load i8, ptr %primary_use, align 1, !dbg !405
  ret i8 %1, !dbg !406
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !407 dso_local ptr @drm_find_edid_extension(ptr noundef, i32 noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @validate_displayid(ptr noundef %displayid, i32 noundef %length, i32 noundef %idx) #0 align 16 !dbg !411 {
entry:
  %retval = alloca ptr, align 8
  %displayid.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %idx.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %dispid_length = alloca i32, align 4
  %csum = alloca i8, align 1
  %base = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %displayid, ptr %displayid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %displayid.addr, metadata !413, metadata !DIExpression()), !dbg !420
  store i32 %length, ptr %length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !414, metadata !DIExpression()), !dbg !421
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !415, metadata !DIExpression()), !dbg !422
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !423
  call void @llvm.dbg.declare(metadata ptr %i, metadata !416, metadata !DIExpression()), !dbg !424
  call void @llvm.lifetime.start.p0(i64 4, ptr %dispid_length) #8, !dbg !423
  call void @llvm.dbg.declare(metadata ptr %dispid_length, metadata !417, metadata !DIExpression()), !dbg !425
  call void @llvm.lifetime.start.p0(i64 1, ptr %csum) #8, !dbg !426
  call void @llvm.dbg.declare(metadata ptr %csum, metadata !418, metadata !DIExpression()), !dbg !427
  store i8 0, ptr %csum, align 1, !dbg !427
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #8, !dbg !428
  call void @llvm.dbg.declare(metadata ptr %base, metadata !419, metadata !DIExpression()), !dbg !429
  %0 = load ptr, ptr %displayid.addr, align 8, !dbg !430
  %1 = load i32, ptr %length.addr, align 4, !dbg !431
  %2 = load i32, ptr %idx.addr, align 4, !dbg !432
  %call = call ptr @displayid_get_header(ptr noundef %0, i32 noundef %1, i32 noundef %2) #9, !dbg !433
  store ptr %call, ptr %base, align 8, !dbg !434
  %3 = load ptr, ptr %base, align 8, !dbg !435
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %3) #9, !dbg !437
  br i1 %call1, label %if.then, label %if.end, !dbg !438

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %base, align 8, !dbg !439
  store ptr %4, ptr %retval, align 8, !dbg !440
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !440

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %base, align 8, !dbg !441
  %rev = getelementptr inbounds %struct.displayid_header, ptr %5, i32 0, i32 0, !dbg !441
  %6 = load i8, ptr %rev, align 1, !dbg !441
  %conv = zext i8 %6 to i32, !dbg !441
  %7 = load ptr, ptr %base, align 8, !dbg !441
  %bytes = getelementptr inbounds %struct.displayid_header, ptr %7, i32 0, i32 1, !dbg !441
  %8 = load i8, ptr %bytes, align 1, !dbg !441
  %conv2 = zext i8 %8 to i32, !dbg !441
  %9 = load ptr, ptr %base, align 8, !dbg !441
  %prod_id = getelementptr inbounds %struct.displayid_header, ptr %9, i32 0, i32 2, !dbg !441
  %10 = load i8, ptr %prod_id, align 1, !dbg !441
  %conv3 = zext i8 %10 to i32, !dbg !441
  %11 = load ptr, ptr %base, align 8, !dbg !441
  %ext_count = getelementptr inbounds %struct.displayid_header, ptr %11, i32 0, i32 3, !dbg !441
  %12 = load i8, ptr %ext_count, align 1, !dbg !441
  %conv4 = zext i8 %12 to i32, !dbg !441
  call void (ptr, i32, ptr, ...) @___drm_dbg(ptr noundef null, i32 noundef 2, ptr noundef @.str.1, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4) #9, !dbg !441
  %13 = load ptr, ptr %base, align 8, !dbg !442
  %bytes5 = getelementptr inbounds %struct.displayid_header, ptr %13, i32 0, i32 1, !dbg !443
  %14 = load i8, ptr %bytes5, align 1, !dbg !443
  %conv6 = zext i8 %14 to i64, !dbg !442
  %add = add i64 4, %conv6, !dbg !444
  %add7 = add i64 %add, 1, !dbg !445
  %conv8 = trunc i64 %add7 to i32, !dbg !446
  store i32 %conv8, ptr %dispid_length, align 4, !dbg !447
  %15 = load i32, ptr %dispid_length, align 4, !dbg !448
  %16 = load i32, ptr %length.addr, align 4, !dbg !450
  %17 = load i32, ptr %idx.addr, align 4, !dbg !451
  %sub = sub i32 %16, %17, !dbg !452
  %cmp = icmp sgt i32 %15, %sub, !dbg !453
  br i1 %cmp, label %if.then10, label %if.end12, !dbg !454

if.then10:                                        ; preds = %if.end
  %call11 = call ptr @ERR_PTR(i64 noundef -22) #9, !dbg !455
  store ptr %call11, ptr %retval, align 8, !dbg !456
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !456

if.end12:                                         ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !457
  br label %for.cond, !dbg !459

for.cond:                                         ; preds = %for.inc, %if.end12
  %18 = load i32, ptr %i, align 4, !dbg !460
  %19 = load i32, ptr %dispid_length, align 4, !dbg !462
  %cmp13 = icmp slt i32 %18, %19, !dbg !463
  br i1 %cmp13, label %for.body, label %for.end, !dbg !464

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %displayid.addr, align 8, !dbg !465
  %21 = load i32, ptr %idx.addr, align 4, !dbg !466
  %22 = load i32, ptr %i, align 4, !dbg !467
  %add15 = add i32 %21, %22, !dbg !468
  %idxprom = sext i32 %add15 to i64, !dbg !465
  %arrayidx = getelementptr i8, ptr %20, i64 %idxprom, !dbg !465
  %23 = load i8, ptr %arrayidx, align 1, !dbg !465
  %conv16 = zext i8 %23 to i32, !dbg !465
  %24 = load i8, ptr %csum, align 1, !dbg !469
  %conv17 = zext i8 %24 to i32, !dbg !469
  %add18 = add i32 %conv17, %conv16, !dbg !469
  %conv19 = trunc i32 %add18 to i8, !dbg !469
  store i8 %conv19, ptr %csum, align 1, !dbg !469
  br label %for.inc, !dbg !470

for.inc:                                          ; preds = %for.body
  %25 = load i32, ptr %i, align 4, !dbg !471
  %inc = add i32 %25, 1, !dbg !471
  store i32 %inc, ptr %i, align 4, !dbg !471
  br label %for.cond, !dbg !472, !llvm.loop !473

for.end:                                          ; preds = %for.cond
  %26 = load i8, ptr %csum, align 1, !dbg !476
  %tobool = icmp ne i8 %26, 0, !dbg !476
  br i1 %tobool, label %if.then20, label %if.end24, !dbg !478

if.then20:                                        ; preds = %for.end
  br label %do.body, !dbg !479

do.body:                                          ; preds = %if.then20
  br label %do.cond, !dbg !482

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !482

do.end:                                           ; preds = %do.cond
  %27 = load i8, ptr %csum, align 1, !dbg !479
  %conv21 = zext i8 %27 to i32, !dbg !479
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %conv21) #10, !dbg !479
  store i32 %call22, ptr %tmp, align 4, !dbg !482
  %28 = load i32, ptr %tmp, align 4, !dbg !479
  %call23 = call ptr @ERR_PTR(i64 noundef -22) #9, !dbg !484
  store ptr %call23, ptr %retval, align 8, !dbg !485
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !485

if.end24:                                         ; preds = %for.end
  %29 = load ptr, ptr %base, align 8, !dbg !486
  store ptr %29, ptr %retval, align 8, !dbg !487
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !487

cleanup:                                          ; preds = %if.end24, %do.end, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #8, !dbg !488
  call void @llvm.lifetime.end.p0(i64 1, ptr %csum) #8, !dbg !488
  call void @llvm.lifetime.end.p0(i64 4, ptr %dispid_length) #8, !dbg !488
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !488
  %30 = load ptr, ptr %retval, align 8, !dbg !488
  ret ptr %30, !dbg !488
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !489 dso_local void @___drm_dbg(ptr noundef, i32 noundef, ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #5 align 16 !dbg !541 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !545, metadata !DIExpression()), !dbg !546
  %0 = load i64, ptr %error.addr, align 8, !dbg !547
  %1 = inttoptr i64 %0 to ptr, !dbg !548
  ret ptr %1, !dbg !549
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !550 dso_local i32 @_printk(ptr noundef, ...) #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/gpu/drm/drm_displayid.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cea5c9cbb11d874edac58e83028fc2f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 32)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 38)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 53)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/.drm_displayid.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/drm\22 -D KBUILD_BASENAME=\22drm_displayid\22 -D KBUILD_MODNAME=\22drm\22 -D __KBUILD_MODNAME=kmod_drm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/drm_displayid.ll drivers/gpu/drm/drm_displayid.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !33, globals: !57, splitDebugInlining: false, nameTableKind: None)
!18 = !{!19}
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_debug_category", file: !20, line: 330, baseType: !21, size: 32, elements: !22)
!20 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!23 = !DIEnumerator(name: "DRM_UT_CORE", value: 0)
!24 = !DIEnumerator(name: "DRM_UT_DRIVER", value: 1)
!25 = !DIEnumerator(name: "DRM_UT_KMS", value: 2)
!26 = !DIEnumerator(name: "DRM_UT_PRIME", value: 3)
!27 = !DIEnumerator(name: "DRM_UT_ATOMIC", value: 4)
!28 = !DIEnumerator(name: "DRM_UT_VBL", value: 5)
!29 = !DIEnumerator(name: "DRM_UT_STATE", value: 6)
!30 = !DIEnumerator(name: "DRM_UT_LEASE", value: 7)
!31 = !DIEnumerator(name: "DRM_UT_DP", value: 8)
!32 = !DIEnumerator(name: "DRM_UT_DRMRES", value: 9)
!33 = !{!34, !47, !48, !56}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "displayid_block", file: !37, line: 98, size: 24, elements: !38)
!37 = !DIFile(filename: "./include/drm/drm_displayid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51bbd8f8fcb29d58abbb8378207b9992")
!38 = !{!39, !45, !46}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !36, file: !37, line: 99, baseType: !40, size: 8)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !41, line: 17, baseType: !42)
!41 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !43, line: 21, baseType: !44)
!43 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !36, file: !37, line: 100, baseType: !40, size: 8, offset: 8)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "num_bytes", scope: !36, file: !37, line: 101, baseType: !40, size: 8, offset: 16)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "displayid_header", file: !37, line: 91, size: 32, elements: !51)
!51 = !{!52, !53, !54, !55}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !50, file: !37, line: 92, baseType: !40, size: 8)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !50, file: !37, line: 93, baseType: !40, size: 8, offset: 8)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "prod_id", scope: !50, file: !37, line: 94, baseType: !40, size: 8, offset: 16)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "ext_count", scope: !50, file: !37, line: 95, baseType: !40, size: 8, offset: 24)
!56 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!57 = !{!0, !7, !12}
!58 = !{i32 7, !"Dwarf Version", i32 5}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 8, !"cf-protection-branch", i32 1}
!62 = !{i32 4, !"function_return_thunk_extern", i32 1}
!63 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!64 = !{i32 1, !"Code Model", i32 2}
!65 = !{i32 1, !"override-stack-alignment", i32 8}
!66 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!67 = distinct !DISubprogram(name: "displayid_iter_edid_begin", scope: !2, file: !2, line: 75, type: !68, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !86)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70, !73}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_edid", file: !37, line: 28, flags: DIFlagFwdDecl)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "displayid_iter", file: !37, line: 146, size: 256, elements: !75)
!75 = !{!76, !77, !80, !82, !83, !84, !85}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "drm_edid", scope: !74, file: !37, line: 147, baseType: !70, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !74, file: !37, line: 149, baseType: !78, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !74, file: !37, line: 150, baseType: !81, size: 32, offset: 128)
!81 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !74, file: !37, line: 151, baseType: !81, size: 32, offset: 160)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "ext_index", scope: !74, file: !37, line: 152, baseType: !81, size: 32, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !74, file: !37, line: 154, baseType: !40, size: 8, offset: 224)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "primary_use", scope: !74, file: !37, line: 155, baseType: !40, size: 8, offset: 232)
!86 = !{!87, !88}
!87 = !DILocalVariable(name: "drm_edid", arg: 1, scope: !67, file: !2, line: 75, type: !70)
!88 = !DILocalVariable(name: "iter", arg: 2, scope: !67, file: !2, line: 76, type: !73)
!89 = !DILocation(line: 75, column: 55, scope: !67)
!90 = !DILocation(line: 76, column: 34, scope: !67)
!91 = !DILocation(line: 78, column: 9, scope: !67)
!92 = !DILocation(line: 78, column: 2, scope: !67)
!93 = !DILocation(line: 80, column: 19, scope: !67)
!94 = !DILocation(line: 80, column: 2, scope: !67)
!95 = !DILocation(line: 80, column: 8, scope: !67)
!96 = !DILocation(line: 80, column: 17, scope: !67)
!97 = !DILocation(line: 81, column: 1, scope: !67)
!98 = distinct !DISubprogram(name: "__displayid_iter_next", scope: !2, file: !2, line: 101, type: !99, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !101)
!99 = !DISubroutineType(types: !100)
!100 = !{!34, !73}
!101 = !{!102, !103, !104, !109, !112, !119}
!102 = !DILocalVariable(name: "iter", arg: 1, scope: !98, file: !2, line: 101, type: !73)
!103 = !DILocalVariable(name: "block", scope: !98, file: !2, line: 103, type: !34)
!104 = !DILocalVariable(name: "__ret_warn_on", scope: !105, file: !2, line: 111, type: !81)
!105 = distinct !DILexicalBlock(scope: !106, file: !2, line: 111, column: 7)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 111, column: 7)
!107 = distinct !DILexicalBlock(scope: !108, file: !2, line: 108, column: 21)
!108 = distinct !DILexicalBlock(scope: !98, file: !2, line: 108, column: 6)
!109 = !DILocalVariable(name: "__flags", scope: !110, file: !2, line: 111, type: !81)
!110 = distinct !DILexicalBlock(scope: !111, file: !2, line: 111, column: 7)
!111 = distinct !DILexicalBlock(scope: !105, file: !2, line: 111, column: 7)
!112 = !DILocalVariable(name: "base_section", scope: !113, file: !2, line: 127, type: !116)
!113 = distinct !DILexicalBlock(scope: !114, file: !2, line: 125, column: 11)
!114 = distinct !DILexicalBlock(scope: !115, file: !2, line: 125, column: 2)
!115 = distinct !DILexicalBlock(scope: !98, file: !2, line: 125, column: 2)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !117, line: 35, baseType: !118)
!117 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!118 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!119 = !DILocalVariable(name: "base", scope: !120, file: !2, line: 140, type: !48)
!120 = distinct !DILexicalBlock(scope: !121, file: !2, line: 139, column: 21)
!121 = distinct !DILexicalBlock(scope: !113, file: !2, line: 139, column: 7)
!122 = !DILocation(line: 101, column: 46, scope: !98)
!123 = !DILocation(line: 103, column: 2, scope: !98)
!124 = !DILocation(line: 103, column: 32, scope: !98)
!125 = !DILocation(line: 105, column: 7, scope: !126)
!126 = distinct !DILexicalBlock(scope: !98, file: !2, line: 105, column: 6)
!127 = !DILocation(line: 105, column: 13, scope: !126)
!128 = !DILocation(line: 105, column: 6, scope: !98)
!129 = !DILocation(line: 106, column: 3, scope: !126)
!130 = !DILocation(line: 108, column: 6, scope: !108)
!131 = !DILocation(line: 108, column: 12, scope: !108)
!132 = !DILocation(line: 108, column: 6, scope: !98)
!133 = !DILocation(line: 110, column: 32, scope: !107)
!134 = !DILocation(line: 110, column: 11, scope: !107)
!135 = !DILocation(line: 110, column: 9, scope: !107)
!136 = !DILocation(line: 111, column: 7, scope: !105)
!137 = !DILocation(line: 111, column: 7, scope: !111)
!138 = !DILocation(line: 111, column: 7, scope: !110)
!139 = !DILocation(line: 111, column: 7, scope: !140)
!140 = distinct !DILexicalBlock(scope: !110, file: !2, line: 111, column: 7)
!141 = !DILocation(line: 111, column: 7, scope: !142)
!142 = distinct !DILexicalBlock(scope: !110, file: !2, line: 111, column: 7)
!143 = !{i64 2154102542, i64 2154102571, i64 2154102617, i64 2154102675, i64 2154102729, i64 2154102783, i64 2154102838, i64 2154102869, i64 2154103177, i64 2154103183, i64 2154103230, i64 2154103253, i64 2154103279}
!144 = !DILocation(line: 111, column: 7, scope: !145)
!145 = distinct !DILexicalBlock(scope: !110, file: !2, line: 111, column: 7)
!146 = !DILocation(line: 111, column: 7, scope: !106)
!147 = !DILocation(line: 111, column: 7, scope: !107)
!148 = !DILocation(line: 112, column: 4, scope: !149)
!149 = distinct !DILexicalBlock(scope: !106, file: !2, line: 111, column: 24)
!150 = !DILocation(line: 112, column: 10, scope: !149)
!151 = !DILocation(line: 112, column: 18, scope: !149)
!152 = !DILocation(line: 113, column: 4, scope: !149)
!153 = !DILocation(line: 113, column: 10, scope: !149)
!154 = !DILocation(line: 113, column: 19, scope: !149)
!155 = !DILocation(line: 114, column: 4, scope: !149)
!156 = !DILocation(line: 118, column: 33, scope: !107)
!157 = !DILocation(line: 118, column: 40, scope: !107)
!158 = !DILocation(line: 118, column: 31, scope: !107)
!159 = !DILocation(line: 118, column: 3, scope: !107)
!160 = !DILocation(line: 118, column: 9, scope: !107)
!161 = !DILocation(line: 118, column: 13, scope: !107)
!162 = !DILocation(line: 120, column: 32, scope: !107)
!163 = !DILocation(line: 120, column: 11, scope: !107)
!164 = !DILocation(line: 120, column: 9, scope: !107)
!165 = !DILocation(line: 121, column: 7, scope: !166)
!166 = distinct !DILexicalBlock(scope: !107, file: !2, line: 121, column: 7)
!167 = !DILocation(line: 121, column: 7, scope: !107)
!168 = !DILocation(line: 122, column: 11, scope: !166)
!169 = !DILocation(line: 122, column: 4, scope: !166)
!170 = !DILocation(line: 123, column: 2, scope: !107)
!171 = !DILocation(line: 125, column: 2, scope: !98)
!172 = !DILocation(line: 127, column: 3, scope: !113)
!173 = !DILocation(line: 127, column: 8, scope: !113)
!174 = !DILocation(line: 127, column: 24, scope: !113)
!175 = !DILocation(line: 127, column: 30, scope: !113)
!176 = !DILocation(line: 127, column: 23, scope: !113)
!177 = !DILocation(line: 129, column: 48, scope: !113)
!178 = !DILocation(line: 129, column: 54, scope: !113)
!179 = !DILocation(line: 130, column: 14, scope: !113)
!180 = !DILocation(line: 130, column: 20, scope: !113)
!181 = !DILocation(line: 131, column: 14, scope: !113)
!182 = !DILocation(line: 131, column: 20, scope: !113)
!183 = !DILocation(line: 132, column: 14, scope: !113)
!184 = !DILocation(line: 132, column: 20, scope: !113)
!185 = !DILocation(line: 129, column: 19, scope: !113)
!186 = !DILocation(line: 129, column: 3, scope: !113)
!187 = !DILocation(line: 129, column: 9, scope: !113)
!188 = !DILocation(line: 129, column: 17, scope: !113)
!189 = !DILocation(line: 133, column: 8, scope: !190)
!190 = distinct !DILexicalBlock(scope: !113, file: !2, line: 133, column: 7)
!191 = !DILocation(line: 133, column: 14, scope: !190)
!192 = !DILocation(line: 133, column: 7, scope: !113)
!193 = !DILocation(line: 134, column: 4, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !2, line: 133, column: 23)
!195 = !DILocation(line: 134, column: 10, scope: !194)
!196 = !DILocation(line: 134, column: 19, scope: !194)
!197 = !DILocation(line: 135, column: 4, scope: !194)
!198 = !DILocation(line: 139, column: 7, scope: !121)
!199 = !{i8 0, i8 2}
!200 = !{}
!201 = !DILocation(line: 139, column: 7, scope: !113)
!202 = !DILocation(line: 140, column: 4, scope: !120)
!203 = !DILocation(line: 140, column: 35, scope: !120)
!204 = !DILocation(line: 142, column: 32, scope: !120)
!205 = !DILocation(line: 142, column: 38, scope: !120)
!206 = !DILocation(line: 142, column: 47, scope: !120)
!207 = !DILocation(line: 142, column: 53, scope: !120)
!208 = !DILocation(line: 143, column: 11, scope: !120)
!209 = !DILocation(line: 143, column: 17, scope: !120)
!210 = !DILocation(line: 142, column: 11, scope: !120)
!211 = !DILocation(line: 142, column: 9, scope: !120)
!212 = !DILocation(line: 144, column: 16, scope: !213)
!213 = distinct !DILexicalBlock(scope: !120, file: !2, line: 144, column: 8)
!214 = !DILocation(line: 144, column: 9, scope: !213)
!215 = !DILocation(line: 144, column: 8, scope: !120)
!216 = !DILocation(line: 145, column: 21, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !2, line: 144, column: 23)
!218 = !DILocation(line: 145, column: 27, scope: !217)
!219 = !DILocation(line: 145, column: 5, scope: !217)
!220 = !DILocation(line: 145, column: 11, scope: !217)
!221 = !DILocation(line: 145, column: 19, scope: !217)
!222 = !DILocation(line: 146, column: 25, scope: !217)
!223 = !DILocation(line: 146, column: 31, scope: !217)
!224 = !DILocation(line: 146, column: 5, scope: !217)
!225 = !DILocation(line: 146, column: 11, scope: !217)
!226 = !DILocation(line: 146, column: 23, scope: !217)
!227 = !DILocation(line: 147, column: 4, scope: !217)
!228 = !DILocation(line: 148, column: 3, scope: !121)
!229 = !DILocation(line: 148, column: 3, scope: !120)
!230 = !DILocation(line: 150, column: 3, scope: !113)
!231 = !DILocation(line: 150, column: 9, scope: !113)
!232 = !DILocation(line: 150, column: 13, scope: !113)
!233 = !DILocation(line: 152, column: 32, scope: !113)
!234 = !DILocation(line: 152, column: 11, scope: !113)
!235 = !DILocation(line: 152, column: 9, scope: !113)
!236 = !DILocation(line: 153, column: 7, scope: !237)
!237 = distinct !DILexicalBlock(scope: !113, file: !2, line: 153, column: 7)
!238 = !DILocation(line: 153, column: 7, scope: !113)
!239 = !DILocation(line: 154, column: 11, scope: !237)
!240 = !DILocation(line: 154, column: 4, scope: !237)
!241 = !DILocation(line: 155, column: 2, scope: !114)
!242 = !DILocation(line: 125, column: 2, scope: !114)
!243 = distinct !{!243, !244, !245, !246}
!244 = !DILocation(line: 125, column: 2, scope: !115)
!245 = !DILocation(line: 155, column: 2, scope: !115)
!246 = !{!"llvm.loop.unroll.disable"}
!247 = !DILocation(line: 156, column: 1, scope: !98)
!248 = distinct !DISubprogram(name: "displayid_iter_block", scope: !2, file: !2, line: 84, type: !249, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !253)
!249 = !DISubroutineType(types: !250)
!250 = !{!34, !251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!253 = !{!254, !255}
!254 = !DILocalVariable(name: "iter", arg: 1, scope: !248, file: !2, line: 84, type: !251)
!255 = !DILocalVariable(name: "block", scope: !248, file: !2, line: 86, type: !34)
!256 = !DILocation(line: 84, column: 51, scope: !248)
!257 = !DILocation(line: 86, column: 2, scope: !248)
!258 = !DILocation(line: 86, column: 32, scope: !248)
!259 = !DILocation(line: 88, column: 7, scope: !260)
!260 = distinct !DILexicalBlock(scope: !248, file: !2, line: 88, column: 6)
!261 = !DILocation(line: 88, column: 13, scope: !260)
!262 = !DILocation(line: 88, column: 6, scope: !248)
!263 = !DILocation(line: 89, column: 3, scope: !260)
!264 = !DILocation(line: 91, column: 43, scope: !248)
!265 = !DILocation(line: 91, column: 49, scope: !248)
!266 = !DILocation(line: 91, column: 57, scope: !248)
!267 = !DILocation(line: 91, column: 63, scope: !248)
!268 = !DILocation(line: 91, column: 8, scope: !248)
!269 = !DILocation(line: 93, column: 6, scope: !270)
!270 = distinct !DILexicalBlock(scope: !248, file: !2, line: 93, column: 6)
!271 = !DILocation(line: 93, column: 12, scope: !270)
!272 = !DILocation(line: 93, column: 16, scope: !270)
!273 = !DILocation(line: 93, column: 36, scope: !270)
!274 = !DILocation(line: 93, column: 42, scope: !270)
!275 = !DILocation(line: 93, column: 33, scope: !270)
!276 = !DILocation(line: 93, column: 49, scope: !270)
!277 = !DILocation(line: 94, column: 6, scope: !270)
!278 = !DILocation(line: 94, column: 12, scope: !270)
!279 = !DILocation(line: 94, column: 16, scope: !270)
!280 = !DILocation(line: 94, column: 35, scope: !270)
!281 = !DILocation(line: 94, column: 42, scope: !270)
!282 = !DILocation(line: 94, column: 33, scope: !270)
!283 = !DILocation(line: 94, column: 55, scope: !270)
!284 = !DILocation(line: 94, column: 61, scope: !270)
!285 = !DILocation(line: 94, column: 52, scope: !270)
!286 = !DILocation(line: 93, column: 6, scope: !248)
!287 = !DILocation(line: 95, column: 10, scope: !270)
!288 = !DILocation(line: 95, column: 3, scope: !270)
!289 = !DILocation(line: 97, column: 2, scope: !248)
!290 = !DILocation(line: 98, column: 1, scope: !248)
!291 = distinct !DISubprogram(name: "drm_find_displayid_extension", scope: !2, file: !2, line: 52, type: !292, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !295)
!292 = !DISubroutineType(types: !293)
!293 = !{!78, !70, !294, !294, !294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!295 = !{!296, !297, !298, !299, !300, !301}
!296 = !DILocalVariable(name: "drm_edid", arg: 1, scope: !291, file: !2, line: 52, type: !70)
!297 = !DILocalVariable(name: "length", arg: 2, scope: !291, file: !2, line: 53, type: !294)
!298 = !DILocalVariable(name: "idx", arg: 3, scope: !291, file: !2, line: 53, type: !294)
!299 = !DILocalVariable(name: "ext_index", arg: 4, scope: !291, file: !2, line: 54, type: !294)
!300 = !DILocalVariable(name: "displayid", scope: !291, file: !2, line: 56, type: !78)
!301 = !DILocalVariable(name: "base", scope: !291, file: !2, line: 57, type: !48)
!302 = !DILocation(line: 52, column: 70, scope: !291)
!303 = !DILocation(line: 53, column: 17, scope: !291)
!304 = !DILocation(line: 53, column: 30, scope: !291)
!305 = !DILocation(line: 54, column: 17, scope: !291)
!306 = !DILocation(line: 56, column: 2, scope: !291)
!307 = !DILocation(line: 56, column: 12, scope: !291)
!308 = !DILocation(line: 56, column: 48, scope: !291)
!309 = !DILocation(line: 56, column: 73, scope: !291)
!310 = !DILocation(line: 56, column: 24, scope: !291)
!311 = !DILocation(line: 57, column: 2, scope: !291)
!312 = !DILocation(line: 57, column: 33, scope: !291)
!313 = !DILocation(line: 59, column: 7, scope: !314)
!314 = distinct !DILexicalBlock(scope: !291, file: !2, line: 59, column: 6)
!315 = !DILocation(line: 59, column: 6, scope: !291)
!316 = !DILocation(line: 60, column: 3, scope: !314)
!317 = !DILocation(line: 63, column: 3, scope: !291)
!318 = !DILocation(line: 63, column: 10, scope: !291)
!319 = !DILocation(line: 64, column: 3, scope: !291)
!320 = !DILocation(line: 64, column: 7, scope: !291)
!321 = !DILocation(line: 66, column: 28, scope: !291)
!322 = !DILocation(line: 66, column: 40, scope: !291)
!323 = !DILocation(line: 66, column: 39, scope: !291)
!324 = !DILocation(line: 66, column: 49, scope: !291)
!325 = !DILocation(line: 66, column: 48, scope: !291)
!326 = !DILocation(line: 66, column: 9, scope: !291)
!327 = !DILocation(line: 66, column: 7, scope: !291)
!328 = !DILocation(line: 67, column: 13, scope: !329)
!329 = distinct !DILexicalBlock(scope: !291, file: !2, line: 67, column: 6)
!330 = !DILocation(line: 67, column: 6, scope: !329)
!331 = !DILocation(line: 67, column: 6, scope: !291)
!332 = !DILocation(line: 68, column: 3, scope: !329)
!333 = !DILocation(line: 70, column: 13, scope: !291)
!334 = !DILocation(line: 70, column: 12, scope: !291)
!335 = !DILocation(line: 70, column: 17, scope: !291)
!336 = !DILocation(line: 70, column: 35, scope: !291)
!337 = !DILocation(line: 70, column: 41, scope: !291)
!338 = !DILocation(line: 70, column: 33, scope: !291)
!339 = !DILocation(line: 70, column: 3, scope: !291)
!340 = !DILocation(line: 70, column: 10, scope: !291)
!341 = !DILocation(line: 72, column: 9, scope: !291)
!342 = !DILocation(line: 72, column: 2, scope: !291)
!343 = !DILocation(line: 73, column: 1, scope: !291)
!344 = distinct !DISubprogram(name: "displayid_get_header", scope: !2, file: !2, line: 11, type: !345, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !347)
!345 = !DISubroutineType(types: !346)
!346 = !{!48, !78, !81, !81}
!347 = !{!348, !349, !350, !351}
!348 = !DILocalVariable(name: "displayid", arg: 1, scope: !344, file: !2, line: 11, type: !78)
!349 = !DILocalVariable(name: "length", arg: 2, scope: !344, file: !2, line: 11, type: !81)
!350 = !DILocalVariable(name: "index", arg: 3, scope: !344, file: !2, line: 11, type: !81)
!351 = !DILocalVariable(name: "base", scope: !344, file: !2, line: 13, type: !48)
!352 = !DILocation(line: 11, column: 32, scope: !344)
!353 = !DILocation(line: 11, column: 47, scope: !344)
!354 = !DILocation(line: 11, column: 59, scope: !344)
!355 = !DILocation(line: 13, column: 2, scope: !344)
!356 = !DILocation(line: 13, column: 33, scope: !344)
!357 = !DILocation(line: 15, column: 22, scope: !358)
!358 = distinct !DILexicalBlock(scope: !344, file: !2, line: 15, column: 6)
!359 = !DILocation(line: 15, column: 31, scope: !358)
!360 = !DILocation(line: 15, column: 29, scope: !358)
!361 = !DILocation(line: 15, column: 20, scope: !358)
!362 = !DILocation(line: 15, column: 6, scope: !344)
!363 = !DILocation(line: 16, column: 10, scope: !358)
!364 = !DILocation(line: 16, column: 3, scope: !358)
!365 = !DILocation(line: 18, column: 43, scope: !344)
!366 = !DILocation(line: 18, column: 53, scope: !344)
!367 = !DILocation(line: 18, column: 7, scope: !344)
!368 = !DILocation(line: 20, column: 9, scope: !344)
!369 = !DILocation(line: 20, column: 2, scope: !344)
!370 = !DILocation(line: 21, column: 1, scope: !344)
!371 = distinct !DISubprogram(name: "IS_ERR", scope: !372, file: !372, line: 59, type: !373, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !377)
!372 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!373 = !DISubroutineType(types: !374)
!374 = !{!116, !375}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!377 = !{!378}
!378 = !DILocalVariable(name: "ptr", arg: 1, scope: !371, file: !372, line: 59, type: !375)
!379 = !DILocation(line: 59, column: 60, scope: !371)
!380 = !DILocation(line: 61, column: 9, scope: !371)
!381 = !DILocation(line: 61, column: 2, scope: !371)
!382 = distinct !DISubprogram(name: "displayid_iter_end", scope: !2, file: !2, line: 158, type: !383, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !385)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !73}
!385 = !{!386}
!386 = !DILocalVariable(name: "iter", arg: 1, scope: !382, file: !2, line: 158, type: !73)
!387 = !DILocation(line: 158, column: 48, scope: !382)
!388 = !DILocation(line: 160, column: 9, scope: !382)
!389 = !DILocation(line: 160, column: 2, scope: !382)
!390 = !DILocation(line: 161, column: 1, scope: !382)
!391 = distinct !DISubprogram(name: "displayid_version", scope: !2, file: !2, line: 164, type: !392, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !394)
!392 = !DISubroutineType(types: !393)
!393 = !{!40, !251}
!394 = !{!395}
!395 = !DILocalVariable(name: "iter", arg: 1, scope: !391, file: !2, line: 164, type: !251)
!396 = !DILocation(line: 164, column: 51, scope: !391)
!397 = !DILocation(line: 166, column: 9, scope: !391)
!398 = !DILocation(line: 166, column: 15, scope: !391)
!399 = !DILocation(line: 166, column: 2, scope: !391)
!400 = distinct !DISubprogram(name: "displayid_primary_use", scope: !2, file: !2, line: 173, type: !392, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !401)
!401 = !{!402}
!402 = !DILocalVariable(name: "iter", arg: 1, scope: !400, file: !2, line: 173, type: !251)
!403 = !DILocation(line: 173, column: 55, scope: !400)
!404 = !DILocation(line: 175, column: 9, scope: !400)
!405 = !DILocation(line: 175, column: 15, scope: !400)
!406 = !DILocation(line: 175, column: 2, scope: !400)
!407 = !DISubprogram(name: "drm_find_edid_extension", scope: !408, file: !408, line: 616, type: !409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!408 = !DIFile(filename: "./include/drm/drm_edid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccafb00fa943dce1ee025d005643e53a")
!409 = !DISubroutineType(types: !410)
!410 = !{!78, !70, !81, !294}
!411 = distinct !DISubprogram(name: "validate_displayid", scope: !2, file: !2, line: 24, type: !345, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !412)
!412 = !{!413, !414, !415, !416, !417, !418, !419}
!413 = !DILocalVariable(name: "displayid", arg: 1, scope: !411, file: !2, line: 24, type: !78)
!414 = !DILocalVariable(name: "length", arg: 2, scope: !411, file: !2, line: 24, type: !81)
!415 = !DILocalVariable(name: "idx", arg: 3, scope: !411, file: !2, line: 24, type: !81)
!416 = !DILocalVariable(name: "i", scope: !411, file: !2, line: 26, type: !81)
!417 = !DILocalVariable(name: "dispid_length", scope: !411, file: !2, line: 26, type: !81)
!418 = !DILocalVariable(name: "csum", scope: !411, file: !2, line: 27, type: !40)
!419 = !DILocalVariable(name: "base", scope: !411, file: !2, line: 28, type: !48)
!420 = !DILocation(line: 24, column: 30, scope: !411)
!421 = !DILocation(line: 24, column: 45, scope: !411)
!422 = !DILocation(line: 24, column: 57, scope: !411)
!423 = !DILocation(line: 26, column: 2, scope: !411)
!424 = !DILocation(line: 26, column: 6, scope: !411)
!425 = !DILocation(line: 26, column: 9, scope: !411)
!426 = !DILocation(line: 27, column: 2, scope: !411)
!427 = !DILocation(line: 27, column: 5, scope: !411)
!428 = !DILocation(line: 28, column: 2, scope: !411)
!429 = !DILocation(line: 28, column: 33, scope: !411)
!430 = !DILocation(line: 30, column: 30, scope: !411)
!431 = !DILocation(line: 30, column: 41, scope: !411)
!432 = !DILocation(line: 30, column: 49, scope: !411)
!433 = !DILocation(line: 30, column: 9, scope: !411)
!434 = !DILocation(line: 30, column: 7, scope: !411)
!435 = !DILocation(line: 31, column: 13, scope: !436)
!436 = distinct !DILexicalBlock(scope: !411, file: !2, line: 31, column: 6)
!437 = !DILocation(line: 31, column: 6, scope: !436)
!438 = !DILocation(line: 31, column: 6, scope: !411)
!439 = !DILocation(line: 32, column: 10, scope: !436)
!440 = !DILocation(line: 32, column: 3, scope: !436)
!441 = !DILocation(line: 34, column: 2, scope: !411)
!442 = !DILocation(line: 38, column: 34, scope: !411)
!443 = !DILocation(line: 38, column: 40, scope: !411)
!444 = !DILocation(line: 38, column: 32, scope: !411)
!445 = !DILocation(line: 38, column: 46, scope: !411)
!446 = !DILocation(line: 38, column: 18, scope: !411)
!447 = !DILocation(line: 38, column: 16, scope: !411)
!448 = !DILocation(line: 39, column: 6, scope: !449)
!449 = distinct !DILexicalBlock(scope: !411, file: !2, line: 39, column: 6)
!450 = !DILocation(line: 39, column: 22, scope: !449)
!451 = !DILocation(line: 39, column: 31, scope: !449)
!452 = !DILocation(line: 39, column: 29, scope: !449)
!453 = !DILocation(line: 39, column: 20, scope: !449)
!454 = !DILocation(line: 39, column: 6, scope: !411)
!455 = !DILocation(line: 40, column: 10, scope: !449)
!456 = !DILocation(line: 40, column: 3, scope: !449)
!457 = !DILocation(line: 42, column: 9, scope: !458)
!458 = distinct !DILexicalBlock(scope: !411, file: !2, line: 42, column: 2)
!459 = !DILocation(line: 42, column: 7, scope: !458)
!460 = !DILocation(line: 42, column: 14, scope: !461)
!461 = distinct !DILexicalBlock(scope: !458, file: !2, line: 42, column: 2)
!462 = !DILocation(line: 42, column: 18, scope: !461)
!463 = !DILocation(line: 42, column: 16, scope: !461)
!464 = !DILocation(line: 42, column: 2, scope: !458)
!465 = !DILocation(line: 43, column: 11, scope: !461)
!466 = !DILocation(line: 43, column: 21, scope: !461)
!467 = !DILocation(line: 43, column: 27, scope: !461)
!468 = !DILocation(line: 43, column: 25, scope: !461)
!469 = !DILocation(line: 43, column: 8, scope: !461)
!470 = !DILocation(line: 43, column: 3, scope: !461)
!471 = !DILocation(line: 42, column: 34, scope: !461)
!472 = !DILocation(line: 42, column: 2, scope: !461)
!473 = distinct !{!473, !464, !474, !475, !246}
!474 = !DILocation(line: 43, column: 28, scope: !458)
!475 = !{!"llvm.loop.mustprogress"}
!476 = !DILocation(line: 44, column: 6, scope: !477)
!477 = distinct !DILexicalBlock(scope: !411, file: !2, line: 44, column: 6)
!478 = !DILocation(line: 44, column: 6, scope: !411)
!479 = !DILocation(line: 45, column: 3, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !2, line: 45, column: 3)
!481 = distinct !DILexicalBlock(scope: !477, file: !2, line: 44, column: 12)
!482 = !DILocation(line: 45, column: 3, scope: !483)
!483 = distinct !DILexicalBlock(scope: !480, file: !2, line: 45, column: 3)
!484 = !DILocation(line: 46, column: 10, scope: !481)
!485 = !DILocation(line: 46, column: 3, scope: !481)
!486 = !DILocation(line: 49, column: 9, scope: !411)
!487 = !DILocation(line: 49, column: 2, scope: !411)
!488 = !DILocation(line: 50, column: 1, scope: !411)
!489 = !DISubprogram(name: "___drm_dbg", scope: !20, file: !20, line: 571, type: !490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !492, !19, !497, null}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ddebug", file: !494, line: 16, size: 448, align: 64, elements: !495)
!494 = !DIFile(filename: "./include/linux/dynamic_debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5870bc31a25115f490bd43a8eae18abb")
!495 = !{!496, !499, !500, !501, !502, !503, !504, !505}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "modname", scope: !493, file: !494, line: 21, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !493, file: !494, line: 22, baseType: !497, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !493, file: !494, line: 23, baseType: !497, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !493, file: !494, line: 24, baseType: !497, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !493, file: !494, line: 25, baseType: !21, size: 18, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "class_id", scope: !493, file: !494, line: 27, baseType: !21, size: 6, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !493, file: !494, line: 52, baseType: !21, size: 8, offset: 280, flags: DIFlagBitField, extraData: i64 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !493, file: !494, line: 57, baseType: !506, size: 128, offset: 320)
!506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !493, file: !494, line: 54, size: 128, elements: !507)
!507 = !{!508, !537}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_true", scope: !506, file: !494, line: 55, baseType: !509, size: 128)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_true", file: !510, line: 359, size: 128, elements: !511)
!510 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !509, file: !510, line: 360, baseType: !513, size: 128)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !510, line: 85, size: 128, elements: !514)
!514 = !{!515, !520}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !513, file: !510, line: 86, baseType: !516, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !117, line: 174, baseType: !517)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 172, size: 32, elements: !518)
!518 = !{!519}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !517, file: !117, line: 173, baseType: !81, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, scope: !513, file: !510, line: 101, baseType: !521, size: 64, offset: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !513, file: !510, line: 101, size: 64, elements: !522)
!522 = !{!523, !524, !534}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !521, file: !510, line: 102, baseType: !56, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !521, file: !510, line: 103, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !510, line: 117, size: 128, elements: !527)
!527 = !{!528, !531, !532}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !526, file: !510, line: 118, baseType: !529, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !41, line: 20, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !43, line: 26, baseType: !81)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !526, file: !510, line: 119, baseType: !529, size: 32, offset: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !526, file: !510, line: 120, baseType: !533, size: 64, offset: 64)
!533 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !521, file: !510, line: 104, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !510, line: 104, flags: DIFlagFwdDecl)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_false", scope: !506, file: !494, line: 56, baseType: !538, size: 128)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_false", file: !510, line: 363, size: 128, elements: !539)
!539 = !{!540}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !538, file: !510, line: 364, baseType: !513, size: 128)
!541 = distinct !DISubprogram(name: "ERR_PTR", scope: !372, file: !372, line: 39, type: !542, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !544)
!542 = !DISubroutineType(types: !543)
!543 = !{!47, !533}
!544 = !{!545}
!545 = !DILocalVariable(name: "error", arg: 1, scope: !541, file: !372, line: 39, type: !533)
!546 = !DILocation(line: 39, column: 48, scope: !541)
!547 = !DILocation(line: 41, column: 18, scope: !541)
!548 = !DILocation(line: 41, column: 9, scope: !541)
!549 = !DILocation(line: 41, column: 2, scope: !541)
!550 = !DISubprogram(name: "_printk", scope: !551, file: !551, line: 153, type: !552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!551 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!552 = !DISubroutineType(types: !553)
!553 = !{!81, !497, null}

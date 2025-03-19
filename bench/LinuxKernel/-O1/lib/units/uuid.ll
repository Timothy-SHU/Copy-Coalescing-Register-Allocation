; ModuleID = 'lib/uuid.c'
source_filename = "lib/uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_guid_null: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad guid_null ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_uuid_null: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad uuid_null ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_generate_random_uuid: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad generate_random_uuid ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_generate_random_guid: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad generate_random_guid ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_guid_gen: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad guid_gen ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_uuid_gen: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad uuid_gen ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_uuid_is_valid: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad uuid_is_valid ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_guid_parse: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad guid_parse ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_uuid_parse: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad uuid_parse ; .previous"

%struct.guid_t = type { [16 x i8] }
%struct.uuid_t = type { [16 x i8] }

@guid_null = hidden constant %struct.guid_t zeroinitializer, align 1, !dbg !0
@__UNIQUE_ID___addressable_guid_null46 = internal global ptr @guid_null, section ".discard.addressable", align 8, !dbg !16
@uuid_null = hidden constant %struct.uuid_t zeroinitializer, align 1, !dbg !46
@__UNIQUE_ID___addressable_uuid_null47 = internal global ptr @uuid_null, section ".discard.addressable", align 8, !dbg !18
@guid_index = hidden constant [16 x i8] c"\03\02\01\00\05\04\07\06\08\09\0A\0B\0C\0D\0E\0F", align 16, !dbg !20
@uuid_index = hidden constant [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", align 16, !dbg !30
@__UNIQUE_ID___addressable_generate_random_uuid48 = internal global ptr @generate_random_uuid, section ".discard.addressable", align 8, !dbg !32
@__UNIQUE_ID___addressable_generate_random_guid49 = internal global ptr @generate_random_guid, section ".discard.addressable", align 8, !dbg !34
@__UNIQUE_ID___addressable_guid_gen50 = internal global ptr @guid_gen, section ".discard.addressable", align 8, !dbg !36
@__UNIQUE_ID___addressable_uuid_gen51 = internal global ptr @uuid_gen, section ".discard.addressable", align 8, !dbg !38
@_ctype = external dso_local constant [0 x i8], align 1
@__UNIQUE_ID___addressable_uuid_is_valid52 = internal global ptr @uuid_is_valid, section ".discard.addressable", align 8, !dbg !40
@__UNIQUE_ID___addressable_guid_parse53 = internal global ptr @guid_parse, section ".discard.addressable", align 8, !dbg !42
@__UNIQUE_ID___addressable_uuid_parse54 = internal global ptr @uuid_parse, section ".discard.addressable", align 8, !dbg !44
@__uuid_parse.si = internal constant [16 x i8] c"\00\02\04\06\09\0B\0E\10\13\15\18\1A\1C\1E \22", align 16, !dbg !55
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID___addressable_guid_null46, ptr @__UNIQUE_ID___addressable_uuid_null47, ptr @__UNIQUE_ID___addressable_generate_random_uuid48, ptr @__UNIQUE_ID___addressable_generate_random_guid49, ptr @__UNIQUE_ID___addressable_guid_gen50, ptr @__UNIQUE_ID___addressable_uuid_gen51, ptr @__UNIQUE_ID___addressable_uuid_is_valid52, ptr @__UNIQUE_ID___addressable_guid_parse53, ptr @__UNIQUE_ID___addressable_uuid_parse54], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @generate_random_uuid(ptr noundef %uuid) #0 align 16 !dbg !89 {
entry:
  %uuid.addr = alloca ptr, align 8
  store ptr %uuid, ptr %uuid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uuid.addr, metadata !94, metadata !DIExpression()), !dbg !95
  %0 = load ptr, ptr %uuid.addr, align 8, !dbg !96
  call void @get_random_bytes(ptr noundef %0, i64 noundef 16) #4, !dbg !97
  %1 = load ptr, ptr %uuid.addr, align 8, !dbg !98
  %arrayidx = getelementptr i8, ptr %1, i64 6, !dbg !98
  %2 = load i8, ptr %arrayidx, align 1, !dbg !98
  %conv = zext i8 %2 to i32, !dbg !98
  %and = and i32 %conv, 15, !dbg !99
  %or = or i32 %and, 64, !dbg !100
  %conv1 = trunc i32 %or to i8, !dbg !101
  %3 = load ptr, ptr %uuid.addr, align 8, !dbg !102
  %arrayidx2 = getelementptr i8, ptr %3, i64 6, !dbg !102
  store i8 %conv1, ptr %arrayidx2, align 1, !dbg !103
  %4 = load ptr, ptr %uuid.addr, align 8, !dbg !104
  %arrayidx3 = getelementptr i8, ptr %4, i64 8, !dbg !104
  %5 = load i8, ptr %arrayidx3, align 1, !dbg !104
  %conv4 = zext i8 %5 to i32, !dbg !104
  %and5 = and i32 %conv4, 63, !dbg !105
  %or6 = or i32 %and5, 128, !dbg !106
  %conv7 = trunc i32 %or6 to i8, !dbg !107
  %6 = load ptr, ptr %uuid.addr, align 8, !dbg !108
  %arrayidx8 = getelementptr i8, ptr %6, i64 8, !dbg !108
  store i8 %conv7, ptr %arrayidx8, align 1, !dbg !109
  ret void, !dbg !110
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !111 dso_local void @get_random_bytes(ptr noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @generate_random_guid(ptr noundef %guid) #0 align 16 !dbg !121 {
entry:
  %guid.addr = alloca ptr, align 8
  store ptr %guid, ptr %guid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %guid.addr, metadata !123, metadata !DIExpression()), !dbg !124
  %0 = load ptr, ptr %guid.addr, align 8, !dbg !125
  call void @get_random_bytes(ptr noundef %0, i64 noundef 16) #4, !dbg !126
  %1 = load ptr, ptr %guid.addr, align 8, !dbg !127
  %arrayidx = getelementptr i8, ptr %1, i64 7, !dbg !127
  %2 = load i8, ptr %arrayidx, align 1, !dbg !127
  %conv = zext i8 %2 to i32, !dbg !127
  %and = and i32 %conv, 15, !dbg !128
  %or = or i32 %and, 64, !dbg !129
  %conv1 = trunc i32 %or to i8, !dbg !130
  %3 = load ptr, ptr %guid.addr, align 8, !dbg !131
  %arrayidx2 = getelementptr i8, ptr %3, i64 7, !dbg !131
  store i8 %conv1, ptr %arrayidx2, align 1, !dbg !132
  %4 = load ptr, ptr %guid.addr, align 8, !dbg !133
  %arrayidx3 = getelementptr i8, ptr %4, i64 8, !dbg !133
  %5 = load i8, ptr %arrayidx3, align 1, !dbg !133
  %conv4 = zext i8 %5 to i32, !dbg !133
  %and5 = and i32 %conv4, 63, !dbg !134
  %or6 = or i32 %and5, 128, !dbg !135
  %conv7 = trunc i32 %or6 to i8, !dbg !136
  %6 = load ptr, ptr %guid.addr, align 8, !dbg !137
  %arrayidx8 = getelementptr i8, ptr %6, i64 8, !dbg !137
  store i8 %conv7, ptr %arrayidx8, align 1, !dbg !138
  ret void, !dbg !139
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @guid_gen(ptr noundef %lu) #0 align 16 !dbg !140 {
entry:
  %lu.addr = alloca ptr, align 8
  store ptr %lu, ptr %lu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lu.addr, metadata !145, metadata !DIExpression()), !dbg !146
  %0 = load ptr, ptr %lu.addr, align 8, !dbg !147
  %b = getelementptr inbounds %struct.guid_t, ptr %0, i32 0, i32 0, !dbg !148
  %arraydecay = getelementptr inbounds [16 x i8], ptr %b, i64 0, i64 0, !dbg !147
  call void @__uuid_gen_common(ptr noundef %arraydecay) #4, !dbg !149
  %1 = load ptr, ptr %lu.addr, align 8, !dbg !150
  %b1 = getelementptr inbounds %struct.guid_t, ptr %1, i32 0, i32 0, !dbg !151
  %arrayidx = getelementptr [16 x i8], ptr %b1, i64 0, i64 7, !dbg !150
  %2 = load i8, ptr %arrayidx, align 1, !dbg !150
  %conv = zext i8 %2 to i32, !dbg !150
  %and = and i32 %conv, 15, !dbg !152
  %or = or i32 %and, 64, !dbg !153
  %conv2 = trunc i32 %or to i8, !dbg !154
  %3 = load ptr, ptr %lu.addr, align 8, !dbg !155
  %b3 = getelementptr inbounds %struct.guid_t, ptr %3, i32 0, i32 0, !dbg !156
  %arrayidx4 = getelementptr [16 x i8], ptr %b3, i64 0, i64 7, !dbg !155
  store i8 %conv2, ptr %arrayidx4, align 1, !dbg !157
  ret void, !dbg !158
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__uuid_gen_common(ptr noundef %b) #0 align 16 !dbg !159 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !163, metadata !DIExpression()), !dbg !164
  %0 = load ptr, ptr %b.addr, align 8, !dbg !165
  call void @get_random_bytes(ptr noundef %0, i64 noundef 16) #4, !dbg !166
  %1 = load ptr, ptr %b.addr, align 8, !dbg !167
  %arrayidx = getelementptr i8, ptr %1, i64 8, !dbg !167
  %2 = load i8, ptr %arrayidx, align 1, !dbg !167
  %conv = zext i8 %2 to i32, !dbg !167
  %and = and i32 %conv, 63, !dbg !168
  %or = or i32 %and, 128, !dbg !169
  %conv1 = trunc i32 %or to i8, !dbg !170
  %3 = load ptr, ptr %b.addr, align 8, !dbg !171
  %arrayidx2 = getelementptr i8, ptr %3, i64 8, !dbg !171
  store i8 %conv1, ptr %arrayidx2, align 1, !dbg !172
  ret void, !dbg !173
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @uuid_gen(ptr noundef %bu) #0 align 16 !dbg !174 {
entry:
  %bu.addr = alloca ptr, align 8
  store ptr %bu, ptr %bu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bu.addr, metadata !179, metadata !DIExpression()), !dbg !180
  %0 = load ptr, ptr %bu.addr, align 8, !dbg !181
  %b = getelementptr inbounds %struct.uuid_t, ptr %0, i32 0, i32 0, !dbg !182
  %arraydecay = getelementptr inbounds [16 x i8], ptr %b, i64 0, i64 0, !dbg !181
  call void @__uuid_gen_common(ptr noundef %arraydecay) #4, !dbg !183
  %1 = load ptr, ptr %bu.addr, align 8, !dbg !184
  %b1 = getelementptr inbounds %struct.uuid_t, ptr %1, i32 0, i32 0, !dbg !185
  %arrayidx = getelementptr [16 x i8], ptr %b1, i64 0, i64 6, !dbg !184
  %2 = load i8, ptr %arrayidx, align 1, !dbg !184
  %conv = zext i8 %2 to i32, !dbg !184
  %and = and i32 %conv, 15, !dbg !186
  %or = or i32 %and, 64, !dbg !187
  %conv2 = trunc i32 %or to i8, !dbg !188
  %3 = load ptr, ptr %bu.addr, align 8, !dbg !189
  %b3 = getelementptr inbounds %struct.uuid_t, ptr %3, i32 0, i32 0, !dbg !190
  %arrayidx4 = getelementptr [16 x i8], ptr %b3, i64 0, i64 6, !dbg !189
  store i8 %conv2, ptr %arrayidx4, align 1, !dbg !191
  ret void, !dbg !192
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @uuid_is_valid(ptr noundef %uuid) #0 align 16 !dbg !193 {
entry:
  %retval = alloca i1, align 1
  %uuid.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uuid, ptr %uuid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uuid.addr, metadata !199, metadata !DIExpression()), !dbg !201
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !202
  call void @llvm.dbg.declare(metadata ptr %i, metadata !200, metadata !DIExpression()), !dbg !203
  store i32 0, ptr %i, align 4, !dbg !204
  br label %for.cond, !dbg !206

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !207
  %cmp = icmp ult i32 %0, 36, !dbg !209
  br i1 %cmp, label %for.body, label %for.end, !dbg !210

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !211
  %cmp1 = icmp eq i32 %1, 8, !dbg !214
  br i1 %cmp1, label %if.then, label %lor.lhs.false, !dbg !215

lor.lhs.false:                                    ; preds = %for.body
  %2 = load i32, ptr %i, align 4, !dbg !216
  %cmp2 = icmp eq i32 %2, 13, !dbg !217
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !218

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load i32, ptr %i, align 4, !dbg !219
  %cmp4 = icmp eq i32 %3, 18, !dbg !220
  br i1 %cmp4, label %if.then, label %lor.lhs.false5, !dbg !221

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %4 = load i32, ptr %i, align 4, !dbg !222
  %cmp6 = icmp eq i32 %4, 23, !dbg !223
  br i1 %cmp6, label %if.then, label %if.else, !dbg !224

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %for.body
  %5 = load ptr, ptr %uuid.addr, align 8, !dbg !225
  %6 = load i32, ptr %i, align 4, !dbg !228
  %idxprom = zext i32 %6 to i64, !dbg !225
  %arrayidx = getelementptr i8, ptr %5, i64 %idxprom, !dbg !225
  %7 = load i8, ptr %arrayidx, align 1, !dbg !225
  %conv = zext i8 %7 to i32, !dbg !225
  %cmp7 = icmp ne i32 %conv, 45, !dbg !229
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !230

if.then9:                                         ; preds = %if.then
  store i1 false, ptr %retval, align 1, !dbg !231
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !231

if.end:                                           ; preds = %if.then
  br label %if.end20, !dbg !232

if.else:                                          ; preds = %lor.lhs.false5
  %8 = load ptr, ptr %uuid.addr, align 8, !dbg !233
  %9 = load i32, ptr %i, align 4, !dbg !233
  %idxprom10 = zext i32 %9 to i64, !dbg !233
  %arrayidx11 = getelementptr i8, ptr %8, i64 %idxprom10, !dbg !233
  %10 = load i8, ptr %arrayidx11, align 1, !dbg !233
  %conv12 = zext i8 %10 to i32, !dbg !233
  %idxprom13 = sext i32 %conv12 to i64, !dbg !233
  %arrayidx14 = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom13, !dbg !233
  %11 = load i8, ptr %arrayidx14, align 1, !dbg !233
  %conv15 = zext i8 %11 to i32, !dbg !233
  %and = and i32 %conv15, 68, !dbg !233
  %cmp16 = icmp ne i32 %and, 0, !dbg !233
  br i1 %cmp16, label %if.end19, label %if.then18, !dbg !235

if.then18:                                        ; preds = %if.else
  store i1 false, ptr %retval, align 1, !dbg !236
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !236

if.end19:                                         ; preds = %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end
  br label %for.inc, !dbg !238

for.inc:                                          ; preds = %if.end20
  %12 = load i32, ptr %i, align 4, !dbg !239
  %inc = add i32 %12, 1, !dbg !239
  store i32 %inc, ptr %i, align 4, !dbg !239
  br label %for.cond, !dbg !240, !llvm.loop !241

for.end:                                          ; preds = %for.cond
  store i1 true, ptr %retval, align 1, !dbg !245
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !245

cleanup:                                          ; preds = %for.end, %if.then18, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !246
  %13 = load i1, ptr %retval, align 1, !dbg !246
  ret i1 %13, !dbg !246
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @guid_parse(ptr noundef %uuid, ptr noundef %u) #0 align 16 !dbg !247 {
entry:
  %uuid.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  store ptr %uuid, ptr %uuid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uuid.addr, metadata !251, metadata !DIExpression()), !dbg !253
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !252, metadata !DIExpression()), !dbg !254
  %0 = load ptr, ptr %uuid.addr, align 8, !dbg !255
  %1 = load ptr, ptr %u.addr, align 8, !dbg !256
  %b = getelementptr inbounds %struct.guid_t, ptr %1, i32 0, i32 0, !dbg !257
  %arraydecay = getelementptr inbounds [16 x i8], ptr %b, i64 0, i64 0, !dbg !256
  %call = call i32 @__uuid_parse(ptr noundef %0, ptr noundef %arraydecay, ptr noundef @guid_index) #4, !dbg !258
  ret i32 %call, !dbg !259
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__uuid_parse(ptr noundef %uuid, ptr noundef %b, ptr noundef %ei) #0 align 16 !dbg !57 {
entry:
  %retval = alloca i32, align 4
  %uuid.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ei.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %hi = alloca i32, align 4
  %lo = alloca i32, align 4
  store ptr %uuid, ptr %uuid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uuid.addr, metadata !66, metadata !DIExpression()), !dbg !260
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !67, metadata !DIExpression()), !dbg !261
  store ptr %ei, ptr %ei.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ei.addr, metadata !68, metadata !DIExpression()), !dbg !262
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !263
  call void @llvm.dbg.declare(metadata ptr %i, metadata !69, metadata !DIExpression()), !dbg !264
  %0 = load ptr, ptr %uuid.addr, align 8, !dbg !265
  %call = call zeroext i1 @uuid_is_valid(ptr noundef %0) #4, !dbg !267
  br i1 %call, label %if.end, label %if.then, !dbg !268

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !269
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !269

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !270
  br label %for.cond, !dbg !271

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4, !dbg !272
  %cmp = icmp ult i32 %1, 16, !dbg !273
  br i1 %cmp, label %for.body, label %for.end, !dbg !274

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %hi) #5, !dbg !275
  call void @llvm.dbg.declare(metadata ptr %hi, metadata !70, metadata !DIExpression()), !dbg !276
  %2 = load ptr, ptr %uuid.addr, align 8, !dbg !277
  %3 = load i32, ptr %i, align 4, !dbg !278
  %idxprom = zext i32 %3 to i64, !dbg !279
  %arrayidx = getelementptr [16 x i8], ptr @__uuid_parse.si, i64 0, i64 %idxprom, !dbg !279
  %4 = load i8, ptr %arrayidx, align 1, !dbg !279
  %conv = zext i8 %4 to i32, !dbg !279
  %add = add i32 %conv, 0, !dbg !280
  %idxprom1 = sext i32 %add to i64, !dbg !277
  %arrayidx2 = getelementptr i8, ptr %2, i64 %idxprom1, !dbg !277
  %5 = load i8, ptr %arrayidx2, align 1, !dbg !277
  %call3 = call i32 @hex_to_bin(i8 noundef zeroext %5) #4, !dbg !281
  store i32 %call3, ptr %hi, align 4, !dbg !276
  call void @llvm.lifetime.start.p0(i64 4, ptr %lo) #5, !dbg !282
  call void @llvm.dbg.declare(metadata ptr %lo, metadata !74, metadata !DIExpression()), !dbg !283
  %6 = load ptr, ptr %uuid.addr, align 8, !dbg !284
  %7 = load i32, ptr %i, align 4, !dbg !285
  %idxprom4 = zext i32 %7 to i64, !dbg !286
  %arrayidx5 = getelementptr [16 x i8], ptr @__uuid_parse.si, i64 0, i64 %idxprom4, !dbg !286
  %8 = load i8, ptr %arrayidx5, align 1, !dbg !286
  %conv6 = zext i8 %8 to i32, !dbg !286
  %add7 = add i32 %conv6, 1, !dbg !287
  %idxprom8 = sext i32 %add7 to i64, !dbg !284
  %arrayidx9 = getelementptr i8, ptr %6, i64 %idxprom8, !dbg !284
  %9 = load i8, ptr %arrayidx9, align 1, !dbg !284
  %call10 = call i32 @hex_to_bin(i8 noundef zeroext %9) #4, !dbg !288
  store i32 %call10, ptr %lo, align 4, !dbg !283
  %10 = load i32, ptr %hi, align 4, !dbg !289
  %shl = shl i32 %10, 4, !dbg !290
  %11 = load i32, ptr %lo, align 4, !dbg !291
  %or = or i32 %shl, %11, !dbg !292
  %conv11 = trunc i32 %or to i8, !dbg !293
  %12 = load ptr, ptr %b.addr, align 8, !dbg !294
  %13 = load ptr, ptr %ei.addr, align 8, !dbg !295
  %14 = load i32, ptr %i, align 4, !dbg !296
  %idxprom12 = zext i32 %14 to i64, !dbg !295
  %arrayidx13 = getelementptr i8, ptr %13, i64 %idxprom12, !dbg !295
  %15 = load i8, ptr %arrayidx13, align 1, !dbg !295
  %idxprom14 = zext i8 %15 to i64, !dbg !294
  %arrayidx15 = getelementptr i8, ptr %12, i64 %idxprom14, !dbg !294
  store i8 %conv11, ptr %arrayidx15, align 1, !dbg !297
  call void @llvm.lifetime.end.p0(i64 4, ptr %lo) #5, !dbg !298
  call void @llvm.lifetime.end.p0(i64 4, ptr %hi) #5, !dbg !298
  br label %for.inc, !dbg !299

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !dbg !300
  %inc = add i32 %16, 1, !dbg !300
  store i32 %inc, ptr %i, align 4, !dbg !300
  br label %for.cond, !dbg !301, !llvm.loop !302

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !304
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !304

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !305
  %17 = load i32, ptr %retval, align 4, !dbg !305
  ret i32 %17, !dbg !305
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @uuid_parse(ptr noundef %uuid, ptr noundef %u) #0 align 16 !dbg !306 {
entry:
  %uuid.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  store ptr %uuid, ptr %uuid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uuid.addr, metadata !310, metadata !DIExpression()), !dbg !312
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !311, metadata !DIExpression()), !dbg !313
  %0 = load ptr, ptr %uuid.addr, align 8, !dbg !314
  %1 = load ptr, ptr %u.addr, align 8, !dbg !315
  %b = getelementptr inbounds %struct.uuid_t, ptr %1, i32 0, i32 0, !dbg !316
  %arraydecay = getelementptr inbounds [16 x i8], ptr %b, i64 0, i64 0, !dbg !315
  %call = call i32 @__uuid_parse(ptr noundef %0, ptr noundef %arraydecay, ptr noundef @uuid_index) #4, !dbg !317
  ret i32 %call, !dbg !318
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !319 dso_local i32 @hex_to_bin(i8 noundef zeroext) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "guid_null", scope: !2, file: !3, line: 16, type: !75, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.uuid.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/uuid\22 -D KBUILD_BASENAME=\22uuid\22 -D KBUILD_MODNAME=\22uuid\22 -D __KBUILD_MODNAME=kmod_uuid -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/uuid.ll lib/uuid.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !15, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/uuid.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "405870bc026654dffb5a2acef26bcbba")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !13, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !{!16, !18, !20, !30, !32, !34, !36, !38, !40, !42, !44, !0, !46, !55}
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_guid_null46", scope: !2, file: !3, line: 17, type: !12, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_uuid_null47", scope: !2, file: !3, line: 19, type: !12, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "guid_index", scope: !2, file: !3, line: 21, type: !22, isLocal: false, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 128, elements: !28)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !25, line: 17, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !27, line: 21, baseType: !14)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!28 = !{!29}
!29 = !DISubrange(count: 16)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "uuid_index", scope: !2, file: !3, line: 22, type: !22, isLocal: false, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_generate_random_uuid48", scope: !2, file: !3, line: 41, type: !12, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_generate_random_guid49", scope: !2, file: !3, line: 51, type: !12, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_guid_gen50", scope: !2, file: !3, line: 66, type: !12, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_uuid_gen51", scope: !2, file: !3, line: 74, type: !12, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_uuid_is_valid52", scope: !2, file: !3, line: 103, type: !12, isLocal: true, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_guid_parse53", scope: !2, file: !3, line: 127, type: !12, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_uuid_parse54", scope: !2, file: !3, line: 133, type: !12, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "uuid_null", scope: !2, file: !3, line: 18, type: !48, isLocal: false, isDefinition: true)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !50, line: 21, baseType: !51)
!50 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 19, size: 128, elements: !52)
!52 = !{!53}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !51, file: !50, line: 20, baseType: !54, size: 128)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 128, elements: !28)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "si", scope: !57, file: !3, line: 107, type: !22, isLocal: true, isDefinition: true)
!57 = distinct !DISubprogram(name: "__uuid_parse", scope: !3, file: !3, line: 105, type: !58, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !65)
!58 = !DISubroutineType(types: !59)
!59 = !{!13, !60, !63, !64}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!65 = !{!66, !67, !68, !69, !70, !74}
!66 = !DILocalVariable(name: "uuid", arg: 1, scope: !57, file: !3, line: 105, type: !60)
!67 = !DILocalVariable(name: "b", arg: 2, scope: !57, file: !3, line: 105, type: !63)
!68 = !DILocalVariable(name: "ei", arg: 3, scope: !57, file: !3, line: 105, type: !64)
!69 = !DILocalVariable(name: "i", scope: !57, file: !3, line: 108, type: !7)
!70 = !DILocalVariable(name: "hi", scope: !71, file: !3, line: 114, type: !13)
!71 = distinct !DILexicalBlock(scope: !72, file: !3, line: 113, column: 27)
!72 = distinct !DILexicalBlock(scope: !73, file: !3, line: 113, column: 2)
!73 = distinct !DILexicalBlock(scope: !57, file: !3, line: 113, column: 2)
!74 = !DILocalVariable(name: "lo", scope: !71, file: !3, line: 115, type: !13)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !50, line: 17, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 15, size: 128, elements: !78)
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !77, file: !50, line: 16, baseType: !54, size: 128)
!80 = !{i32 7, !"Dwarf Version", i32 5}
!81 = !{i32 2, !"Debug Info Version", i32 3}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 8, !"cf-protection-branch", i32 1}
!84 = !{i32 4, !"function_return_thunk_extern", i32 1}
!85 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!86 = !{i32 1, !"Code Model", i32 2}
!87 = !{i32 1, !"override-stack-alignment", i32 8}
!88 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!89 = distinct !DISubprogram(name: "generate_random_uuid", scope: !3, file: !3, line: 33, type: !90, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !93)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !92}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!93 = !{!94}
!94 = !DILocalVariable(name: "uuid", arg: 1, scope: !89, file: !3, line: 33, type: !92)
!95 = !DILocation(line: 33, column: 41, scope: !89)
!96 = !DILocation(line: 35, column: 19, scope: !89)
!97 = !DILocation(line: 35, column: 2, scope: !89)
!98 = !DILocation(line: 37, column: 13, scope: !89)
!99 = !DILocation(line: 37, column: 21, scope: !89)
!100 = !DILocation(line: 37, column: 29, scope: !89)
!101 = !DILocation(line: 37, column: 12, scope: !89)
!102 = !DILocation(line: 37, column: 2, scope: !89)
!103 = !DILocation(line: 37, column: 10, scope: !89)
!104 = !DILocation(line: 39, column: 13, scope: !89)
!105 = !DILocation(line: 39, column: 21, scope: !89)
!106 = !DILocation(line: 39, column: 29, scope: !89)
!107 = !DILocation(line: 39, column: 12, scope: !89)
!108 = !DILocation(line: 39, column: 2, scope: !89)
!109 = !DILocation(line: 39, column: 10, scope: !89)
!110 = !DILocation(line: 40, column: 1, scope: !89)
!111 = !DISubprogram(name: "get_random_bytes", scope: !112, file: !112, line: 39, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!112 = !DIFile(filename: "./include/linux/random.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ff56c5c661379ff0da8775246644d01")
!113 = !DISubroutineType(types: !114)
!114 = !{null, !12, !115}
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !116, line: 61, baseType: !117)
!116 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !118, line: 72, baseType: !119)
!118 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !118, line: 16, baseType: !120)
!120 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!121 = distinct !DISubprogram(name: "generate_random_guid", scope: !3, file: !3, line: 43, type: !90, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !122)
!122 = !{!123}
!123 = !DILocalVariable(name: "guid", arg: 1, scope: !121, file: !3, line: 43, type: !92)
!124 = !DILocation(line: 43, column: 41, scope: !121)
!125 = !DILocation(line: 45, column: 19, scope: !121)
!126 = !DILocation(line: 45, column: 2, scope: !121)
!127 = !DILocation(line: 47, column: 13, scope: !121)
!128 = !DILocation(line: 47, column: 21, scope: !121)
!129 = !DILocation(line: 47, column: 29, scope: !121)
!130 = !DILocation(line: 47, column: 12, scope: !121)
!131 = !DILocation(line: 47, column: 2, scope: !121)
!132 = !DILocation(line: 47, column: 10, scope: !121)
!133 = !DILocation(line: 49, column: 13, scope: !121)
!134 = !DILocation(line: 49, column: 21, scope: !121)
!135 = !DILocation(line: 49, column: 29, scope: !121)
!136 = !DILocation(line: 49, column: 12, scope: !121)
!137 = !DILocation(line: 49, column: 2, scope: !121)
!138 = !DILocation(line: 49, column: 10, scope: !121)
!139 = !DILocation(line: 50, column: 1, scope: !121)
!140 = distinct !DISubprogram(name: "guid_gen", scope: !3, file: !3, line: 60, type: !141, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !144)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !143}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!144 = !{!145}
!145 = !DILocalVariable(name: "lu", arg: 1, scope: !140, file: !3, line: 60, type: !143)
!146 = !DILocation(line: 60, column: 23, scope: !140)
!147 = !DILocation(line: 62, column: 20, scope: !140)
!148 = !DILocation(line: 62, column: 24, scope: !140)
!149 = !DILocation(line: 62, column: 2, scope: !140)
!150 = !DILocation(line: 64, column: 14, scope: !140)
!151 = !DILocation(line: 64, column: 18, scope: !140)
!152 = !DILocation(line: 64, column: 23, scope: !140)
!153 = !DILocation(line: 64, column: 31, scope: !140)
!154 = !DILocation(line: 64, column: 13, scope: !140)
!155 = !DILocation(line: 64, column: 2, scope: !140)
!156 = !DILocation(line: 64, column: 6, scope: !140)
!157 = !DILocation(line: 64, column: 11, scope: !140)
!158 = !DILocation(line: 65, column: 1, scope: !140)
!159 = distinct !DISubprogram(name: "__uuid_gen_common", scope: !3, file: !3, line: 53, type: !160, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !162)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !63}
!162 = !{!163}
!163 = !DILocalVariable(name: "b", arg: 1, scope: !159, file: !3, line: 53, type: !63)
!164 = !DILocation(line: 53, column: 36, scope: !159)
!165 = !DILocation(line: 55, column: 19, scope: !159)
!166 = !DILocation(line: 55, column: 2, scope: !159)
!167 = !DILocation(line: 57, column: 10, scope: !159)
!168 = !DILocation(line: 57, column: 15, scope: !159)
!169 = !DILocation(line: 57, column: 23, scope: !159)
!170 = !DILocation(line: 57, column: 9, scope: !159)
!171 = !DILocation(line: 57, column: 2, scope: !159)
!172 = !DILocation(line: 57, column: 7, scope: !159)
!173 = !DILocation(line: 58, column: 1, scope: !159)
!174 = distinct !DISubprogram(name: "uuid_gen", scope: !3, file: !3, line: 68, type: !175, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !178)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !177}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!178 = !{!179}
!179 = !DILocalVariable(name: "bu", arg: 1, scope: !174, file: !3, line: 68, type: !177)
!180 = !DILocation(line: 68, column: 23, scope: !174)
!181 = !DILocation(line: 70, column: 20, scope: !174)
!182 = !DILocation(line: 70, column: 24, scope: !174)
!183 = !DILocation(line: 70, column: 2, scope: !174)
!184 = !DILocation(line: 72, column: 14, scope: !174)
!185 = !DILocation(line: 72, column: 18, scope: !174)
!186 = !DILocation(line: 72, column: 23, scope: !174)
!187 = !DILocation(line: 72, column: 31, scope: !174)
!188 = !DILocation(line: 72, column: 13, scope: !174)
!189 = !DILocation(line: 72, column: 2, scope: !174)
!190 = !DILocation(line: 72, column: 6, scope: !174)
!191 = !DILocation(line: 72, column: 11, scope: !174)
!192 = !DILocation(line: 73, column: 1, scope: !174)
!193 = distinct !DISubprogram(name: "uuid_is_valid", scope: !3, file: !3, line: 88, type: !194, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !198)
!194 = !DISubroutineType(types: !195)
!195 = !{!196, !60}
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !116, line: 35, baseType: !197)
!197 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!198 = !{!199, !200}
!199 = !DILocalVariable(name: "uuid", arg: 1, scope: !193, file: !3, line: 88, type: !60)
!200 = !DILocalVariable(name: "i", scope: !193, file: !3, line: 90, type: !7)
!201 = !DILocation(line: 88, column: 32, scope: !193)
!202 = !DILocation(line: 90, column: 2, scope: !193)
!203 = !DILocation(line: 90, column: 15, scope: !193)
!204 = !DILocation(line: 92, column: 9, scope: !205)
!205 = distinct !DILexicalBlock(scope: !193, file: !3, line: 92, column: 2)
!206 = !DILocation(line: 92, column: 7, scope: !205)
!207 = !DILocation(line: 92, column: 14, scope: !208)
!208 = distinct !DILexicalBlock(scope: !205, file: !3, line: 92, column: 2)
!209 = !DILocation(line: 92, column: 16, scope: !208)
!210 = !DILocation(line: 92, column: 2, scope: !205)
!211 = !DILocation(line: 93, column: 7, scope: !212)
!212 = distinct !DILexicalBlock(scope: !213, file: !3, line: 93, column: 7)
!213 = distinct !DILexicalBlock(scope: !208, file: !3, line: 92, column: 40)
!214 = !DILocation(line: 93, column: 9, scope: !212)
!215 = !DILocation(line: 93, column: 14, scope: !212)
!216 = !DILocation(line: 93, column: 17, scope: !212)
!217 = !DILocation(line: 93, column: 19, scope: !212)
!218 = !DILocation(line: 93, column: 25, scope: !212)
!219 = !DILocation(line: 93, column: 28, scope: !212)
!220 = !DILocation(line: 93, column: 30, scope: !212)
!221 = !DILocation(line: 93, column: 36, scope: !212)
!222 = !DILocation(line: 93, column: 39, scope: !212)
!223 = !DILocation(line: 93, column: 41, scope: !212)
!224 = !DILocation(line: 93, column: 7, scope: !213)
!225 = !DILocation(line: 94, column: 8, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 94, column: 8)
!227 = distinct !DILexicalBlock(scope: !212, file: !3, line: 93, column: 48)
!228 = !DILocation(line: 94, column: 13, scope: !226)
!229 = !DILocation(line: 94, column: 16, scope: !226)
!230 = !DILocation(line: 94, column: 8, scope: !227)
!231 = !DILocation(line: 95, column: 5, scope: !226)
!232 = !DILocation(line: 96, column: 3, scope: !227)
!233 = !DILocation(line: 96, column: 15, scope: !234)
!234 = distinct !DILexicalBlock(scope: !212, file: !3, line: 96, column: 14)
!235 = !DILocation(line: 96, column: 14, scope: !212)
!236 = !DILocation(line: 97, column: 4, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !3, line: 96, column: 34)
!238 = !DILocation(line: 99, column: 2, scope: !213)
!239 = !DILocation(line: 92, column: 36, scope: !208)
!240 = !DILocation(line: 92, column: 2, scope: !208)
!241 = distinct !{!241, !210, !242, !243, !244}
!242 = !DILocation(line: 99, column: 2, scope: !205)
!243 = !{!"llvm.loop.mustprogress"}
!244 = !{!"llvm.loop.unroll.disable"}
!245 = !DILocation(line: 101, column: 2, scope: !193)
!246 = !DILocation(line: 102, column: 1, scope: !193)
!247 = distinct !DISubprogram(name: "guid_parse", scope: !3, file: !3, line: 123, type: !248, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !250)
!248 = !DISubroutineType(types: !249)
!249 = !{!13, !60, !143}
!250 = !{!251, !252}
!251 = !DILocalVariable(name: "uuid", arg: 1, scope: !247, file: !3, line: 123, type: !60)
!252 = !DILocalVariable(name: "u", arg: 2, scope: !247, file: !3, line: 123, type: !143)
!253 = !DILocation(line: 123, column: 28, scope: !247)
!254 = !DILocation(line: 123, column: 42, scope: !247)
!255 = !DILocation(line: 125, column: 22, scope: !247)
!256 = !DILocation(line: 125, column: 28, scope: !247)
!257 = !DILocation(line: 125, column: 31, scope: !247)
!258 = !DILocation(line: 125, column: 9, scope: !247)
!259 = !DILocation(line: 125, column: 2, scope: !247)
!260 = !DILocation(line: 105, column: 37, scope: !57)
!261 = !DILocation(line: 105, column: 48, scope: !57)
!262 = !DILocation(line: 105, column: 64, scope: !57)
!263 = !DILocation(line: 108, column: 2, scope: !57)
!264 = !DILocation(line: 108, column: 15, scope: !57)
!265 = !DILocation(line: 110, column: 21, scope: !266)
!266 = distinct !DILexicalBlock(scope: !57, file: !3, line: 110, column: 6)
!267 = !DILocation(line: 110, column: 7, scope: !266)
!268 = !DILocation(line: 110, column: 6, scope: !57)
!269 = !DILocation(line: 111, column: 3, scope: !266)
!270 = !DILocation(line: 113, column: 9, scope: !73)
!271 = !DILocation(line: 113, column: 7, scope: !73)
!272 = !DILocation(line: 113, column: 14, scope: !72)
!273 = !DILocation(line: 113, column: 16, scope: !72)
!274 = !DILocation(line: 113, column: 2, scope: !73)
!275 = !DILocation(line: 114, column: 3, scope: !71)
!276 = !DILocation(line: 114, column: 7, scope: !71)
!277 = !DILocation(line: 114, column: 23, scope: !71)
!278 = !DILocation(line: 114, column: 31, scope: !71)
!279 = !DILocation(line: 114, column: 28, scope: !71)
!280 = !DILocation(line: 114, column: 34, scope: !71)
!281 = !DILocation(line: 114, column: 12, scope: !71)
!282 = !DILocation(line: 115, column: 3, scope: !71)
!283 = !DILocation(line: 115, column: 7, scope: !71)
!284 = !DILocation(line: 115, column: 23, scope: !71)
!285 = !DILocation(line: 115, column: 31, scope: !71)
!286 = !DILocation(line: 115, column: 28, scope: !71)
!287 = !DILocation(line: 115, column: 34, scope: !71)
!288 = !DILocation(line: 115, column: 12, scope: !71)
!289 = !DILocation(line: 117, column: 15, scope: !71)
!290 = !DILocation(line: 117, column: 18, scope: !71)
!291 = !DILocation(line: 117, column: 26, scope: !71)
!292 = !DILocation(line: 117, column: 24, scope: !71)
!293 = !DILocation(line: 117, column: 14, scope: !71)
!294 = !DILocation(line: 117, column: 3, scope: !71)
!295 = !DILocation(line: 117, column: 5, scope: !71)
!296 = !DILocation(line: 117, column: 8, scope: !71)
!297 = !DILocation(line: 117, column: 12, scope: !71)
!298 = !DILocation(line: 118, column: 2, scope: !72)
!299 = !DILocation(line: 118, column: 2, scope: !71)
!300 = !DILocation(line: 113, column: 23, scope: !72)
!301 = !DILocation(line: 113, column: 2, scope: !72)
!302 = distinct !{!302, !274, !303, !243, !244}
!303 = !DILocation(line: 118, column: 2, scope: !73)
!304 = !DILocation(line: 120, column: 2, scope: !57)
!305 = !DILocation(line: 121, column: 1, scope: !57)
!306 = distinct !DISubprogram(name: "uuid_parse", scope: !3, file: !3, line: 129, type: !307, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !309)
!307 = !DISubroutineType(types: !308)
!308 = !{!13, !60, !177}
!309 = !{!310, !311}
!310 = !DILocalVariable(name: "uuid", arg: 1, scope: !306, file: !3, line: 129, type: !60)
!311 = !DILocalVariable(name: "u", arg: 2, scope: !306, file: !3, line: 129, type: !177)
!312 = !DILocation(line: 129, column: 28, scope: !306)
!313 = !DILocation(line: 129, column: 42, scope: !306)
!314 = !DILocation(line: 131, column: 22, scope: !306)
!315 = !DILocation(line: 131, column: 28, scope: !306)
!316 = !DILocation(line: 131, column: 31, scope: !306)
!317 = !DILocation(line: 131, column: 9, scope: !306)
!318 = !DILocation(line: 131, column: 2, scope: !306)
!319 = !DISubprogram(name: "hex_to_bin", scope: !320, file: !320, line: 29, type: !321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!320 = !DIFile(filename: "./include/linux/hex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6eb26d4dbd04841a1512df2f8e16e7dd")
!321 = !DISubroutineType(types: !322)
!322 = !{!13, !14}

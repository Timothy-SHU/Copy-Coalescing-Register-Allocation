; ModuleID = 'fs/quota/kqid.c'
source_filename = "fs/quota/kqid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_qid_eq: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad qid_eq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_qid_lt: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad qid_lt ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_from_kqid: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad from_kqid ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_from_kqid_munged: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad from_kqid_munged ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_qid_valid: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad qid_valid ; .previous"

%struct.kqid = type { %union.anon, i32 }
%union.anon = type { %struct.kuid_t }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kprojid_t = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"fs/quota/kqid.c\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_qid_eq249 = internal global ptr @qid_eq, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_qid_lt250 = internal global ptr @qid_lt, section ".discard.addressable", align 8, !dbg !34
@__UNIQUE_ID___addressable_from_kqid251 = internal global ptr @from_kqid, section ".discard.addressable", align 8, !dbg !36
@__UNIQUE_ID___addressable_from_kqid_munged252 = internal global ptr @from_kqid_munged, section ".discard.addressable", align 8, !dbg !38
@__UNIQUE_ID___addressable_qid_valid253 = internal global ptr @qid_valid, section ".discard.addressable", align 8, !dbg !40
@overflowuid = external dso_local global i32, align 4
@overflowgid = external dso_local global i32, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID___addressable_qid_eq249, ptr @__UNIQUE_ID___addressable_qid_lt250, ptr @__UNIQUE_ID___addressable_from_kqid251, ptr @__UNIQUE_ID___addressable_from_kqid_munged252, ptr @__UNIQUE_ID___addressable_qid_valid253], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @qid_eq(i64 %left.coerce, i64 %right.coerce) #0 align 16 !dbg !51 {
entry:
  %retval = alloca i1, align 1
  %left = alloca %struct.kqid, align 4
  %right = alloca %struct.kqid, align 4
  store i64 %left.coerce, ptr %left, align 4
  store i64 %right.coerce, ptr %right, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !79, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata ptr %right, metadata !80, metadata !DIExpression()), !dbg !82
  %type = getelementptr inbounds %struct.kqid, ptr %left, i32 0, i32 1, !dbg !83
  %0 = load i32, ptr %type, align 4, !dbg !83
  %type1 = getelementptr inbounds %struct.kqid, ptr %right, i32 0, i32 1, !dbg !85
  %1 = load i32, ptr %type1, align 4, !dbg !85
  %cmp = icmp ne i32 %0, %1, !dbg !86
  br i1 %cmp, label %if.then, label %if.end, !dbg !87

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !88
  br label %sw.epilog, !dbg !88

if.end:                                           ; preds = %entry
  %type2 = getelementptr inbounds %struct.kqid, ptr %left, i32 0, i32 1, !dbg !89
  %2 = load i32, ptr %type2, align 4, !dbg !89
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb8
  ], !dbg !90

sw.bb:                                            ; preds = %if.end
  %3 = getelementptr inbounds %struct.kqid, ptr %left, i32 0, i32 0, !dbg !91
  %4 = getelementptr inbounds %struct.kqid, ptr %right, i32 0, i32 0, !dbg !93
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %3, i32 0, i32 0, !dbg !94
  %5 = load i32, ptr %coerce.dive, align 4, !dbg !94
  %coerce.dive3 = getelementptr inbounds %struct.kuid_t, ptr %4, i32 0, i32 0, !dbg !94
  %6 = load i32, ptr %coerce.dive3, align 4, !dbg !94
  %call = call zeroext i1 @uid_eq(i32 %5, i32 %6) #4, !dbg !94
  store i1 %call, ptr %retval, align 1, !dbg !95
  br label %sw.epilog, !dbg !95

sw.bb4:                                           ; preds = %if.end
  %7 = getelementptr inbounds %struct.kqid, ptr %left, i32 0, i32 0, !dbg !96
  %8 = getelementptr inbounds %struct.kqid, ptr %right, i32 0, i32 0, !dbg !97
  %coerce.dive5 = getelementptr inbounds %struct.kgid_t, ptr %7, i32 0, i32 0, !dbg !98
  %9 = load i32, ptr %coerce.dive5, align 4, !dbg !98
  %coerce.dive6 = getelementptr inbounds %struct.kgid_t, ptr %8, i32 0, i32 0, !dbg !98
  %10 = load i32, ptr %coerce.dive6, align 4, !dbg !98
  %call7 = call zeroext i1 @gid_eq(i32 %9, i32 %10) #4, !dbg !98
  store i1 %call7, ptr %retval, align 1, !dbg !99
  br label %sw.epilog, !dbg !99

sw.bb8:                                           ; preds = %if.end
  %11 = getelementptr inbounds %struct.kqid, ptr %left, i32 0, i32 0, !dbg !100
  %12 = getelementptr inbounds %struct.kqid, ptr %right, i32 0, i32 0, !dbg !101
  %coerce.dive9 = getelementptr inbounds %struct.kprojid_t, ptr %11, i32 0, i32 0, !dbg !102
  %13 = load i32, ptr %coerce.dive9, align 4, !dbg !102
  %coerce.dive10 = getelementptr inbounds %struct.kprojid_t, ptr %12, i32 0, i32 0, !dbg !102
  %14 = load i32, ptr %coerce.dive10, align 4, !dbg !102
  %call11 = call zeroext i1 @projid_eq(i32 %13, i32 %14) #4, !dbg !102
  store i1 %call11, ptr %retval, align 1, !dbg !103
  br label %sw.epilog, !dbg !103

sw.default:                                       ; preds = %if.end
  br label %do.body, !dbg !104

do.body:                                          ; preds = %sw.default
  br label %do.body12, !dbg !105

do.body12:                                        ; preds = %do.body
  br label %do.end, !dbg !107

do.end:                                           ; preds = %do.body12
  br label %do.body13, !dbg !105

do.body13:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 25, i32 0, i64 12) #5, !dbg !109, !srcloc !111
  br label %do.end14, !dbg !109

do.end14:                                         ; preds = %do.body13
  unreachable, !dbg !105

do.end15:                                         ; No predecessors!
  br label %sw.epilog, !dbg !112

sw.epilog:                                        ; preds = %if.then, %sw.bb, %sw.bb4, %sw.bb8, %do.end15
  %15 = load i1, ptr %retval, align 1, !dbg !113
  ret i1 %15, !dbg !113
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_eq(i32 %left.coerce, i32 %right.coerce) #2 align 16 !dbg !114 {
entry:
  %left = alloca %struct.kuid_t, align 4
  %right = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !118, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata ptr %right, metadata !119, metadata !DIExpression()), !dbg !121
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0, !dbg !122
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !122
  %call = call i32 @__kuid_val(i32 %0) #4, !dbg !122
  %coerce.dive3 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0, !dbg !123
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !123
  %call4 = call i32 @__kuid_val(i32 %1) #4, !dbg !123
  %cmp = icmp eq i32 %call, %call4, !dbg !124
  ret i1 %cmp, !dbg !125
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_eq(i32 %left.coerce, i32 %right.coerce) #2 align 16 !dbg !126 {
entry:
  %left = alloca %struct.kgid_t, align 4
  %right = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !130, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata ptr %right, metadata !131, metadata !DIExpression()), !dbg !133
  %coerce.dive2 = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0, !dbg !134
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !134
  %call = call i32 @__kgid_val(i32 %0) #4, !dbg !134
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0, !dbg !135
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !135
  %call4 = call i32 @__kgid_val(i32 %1) #4, !dbg !135
  %cmp = icmp eq i32 %call, %call4, !dbg !136
  ret i1 %cmp, !dbg !137
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @projid_eq(i32 %left.coerce, i32 %right.coerce) #2 align 16 !dbg !138 {
entry:
  %left = alloca %struct.kprojid_t, align 4
  %right = alloca %struct.kprojid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kprojid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kprojid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !142, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata ptr %right, metadata !143, metadata !DIExpression()), !dbg !145
  %coerce.dive2 = getelementptr inbounds %struct.kprojid_t, ptr %left, i32 0, i32 0, !dbg !146
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !146
  %call = call i32 @__kprojid_val(i32 %0) #4, !dbg !146
  %coerce.dive3 = getelementptr inbounds %struct.kprojid_t, ptr %right, i32 0, i32 0, !dbg !147
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !147
  %call4 = call i32 @__kprojid_val(i32 %1) #4, !dbg !147
  %cmp = icmp eq i32 %call, %call4, !dbg !148
  ret i1 %cmp, !dbg !149
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @qid_lt(i64 %left.coerce, i64 %right.coerce) #0 align 16 !dbg !150 {
entry:
  %retval = alloca i1, align 1
  %left = alloca %struct.kqid, align 4
  %right = alloca %struct.kqid, align 4
  store i64 %left.coerce, ptr %left, align 4
  store i64 %right.coerce, ptr %right, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !152, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata ptr %right, metadata !153, metadata !DIExpression()), !dbg !155
  %type = getelementptr inbounds %struct.kqid, ptr %left, i32 0, i32 1, !dbg !156
  %0 = load i32, ptr %type, align 4, !dbg !156
  %type1 = getelementptr inbounds %struct.kqid, ptr %right, i32 0, i32 1, !dbg !158
  %1 = load i32, ptr %type1, align 4, !dbg !158
  %cmp = icmp ult i32 %0, %1, !dbg !159
  br i1 %cmp, label %if.then, label %if.end, !dbg !160

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !161
  br label %sw.epilog, !dbg !161

if.end:                                           ; preds = %entry
  %type2 = getelementptr inbounds %struct.kqid, ptr %left, i32 0, i32 1, !dbg !162
  %2 = load i32, ptr %type2, align 4, !dbg !162
  %type3 = getelementptr inbounds %struct.kqid, ptr %right, i32 0, i32 1, !dbg !164
  %3 = load i32, ptr %type3, align 4, !dbg !164
  %cmp4 = icmp ugt i32 %2, %3, !dbg !165
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !166

if.then5:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !167
  br label %sw.epilog, !dbg !167

if.end6:                                          ; preds = %if.end
  %type7 = getelementptr inbounds %struct.kqid, ptr %left, i32 0, i32 1, !dbg !168
  %4 = load i32, ptr %type7, align 4, !dbg !168
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb13
  ], !dbg !169

sw.bb:                                            ; preds = %if.end6
  %5 = getelementptr inbounds %struct.kqid, ptr %left, i32 0, i32 0, !dbg !170
  %6 = getelementptr inbounds %struct.kqid, ptr %right, i32 0, i32 0, !dbg !172
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %5, i32 0, i32 0, !dbg !173
  %7 = load i32, ptr %coerce.dive, align 4, !dbg !173
  %coerce.dive8 = getelementptr inbounds %struct.kuid_t, ptr %6, i32 0, i32 0, !dbg !173
  %8 = load i32, ptr %coerce.dive8, align 4, !dbg !173
  %call = call zeroext i1 @uid_lt(i32 %7, i32 %8) #4, !dbg !173
  store i1 %call, ptr %retval, align 1, !dbg !174
  br label %sw.epilog, !dbg !174

sw.bb9:                                           ; preds = %if.end6
  %9 = getelementptr inbounds %struct.kqid, ptr %left, i32 0, i32 0, !dbg !175
  %10 = getelementptr inbounds %struct.kqid, ptr %right, i32 0, i32 0, !dbg !176
  %coerce.dive10 = getelementptr inbounds %struct.kgid_t, ptr %9, i32 0, i32 0, !dbg !177
  %11 = load i32, ptr %coerce.dive10, align 4, !dbg !177
  %coerce.dive11 = getelementptr inbounds %struct.kgid_t, ptr %10, i32 0, i32 0, !dbg !177
  %12 = load i32, ptr %coerce.dive11, align 4, !dbg !177
  %call12 = call zeroext i1 @gid_lt(i32 %11, i32 %12) #4, !dbg !177
  store i1 %call12, ptr %retval, align 1, !dbg !178
  br label %sw.epilog, !dbg !178

sw.bb13:                                          ; preds = %if.end6
  %13 = getelementptr inbounds %struct.kqid, ptr %left, i32 0, i32 0, !dbg !179
  %14 = getelementptr inbounds %struct.kqid, ptr %right, i32 0, i32 0, !dbg !180
  %coerce.dive14 = getelementptr inbounds %struct.kprojid_t, ptr %13, i32 0, i32 0, !dbg !181
  %15 = load i32, ptr %coerce.dive14, align 4, !dbg !181
  %coerce.dive15 = getelementptr inbounds %struct.kprojid_t, ptr %14, i32 0, i32 0, !dbg !181
  %16 = load i32, ptr %coerce.dive15, align 4, !dbg !181
  %call16 = call zeroext i1 @projid_lt(i32 %15, i32 %16) #4, !dbg !181
  store i1 %call16, ptr %retval, align 1, !dbg !182
  br label %sw.epilog, !dbg !182

sw.default:                                       ; preds = %if.end6
  br label %do.body, !dbg !183

do.body:                                          ; preds = %sw.default
  br label %do.body17, !dbg !184

do.body17:                                        ; preds = %do.body
  br label %do.end, !dbg !186

do.end:                                           ; preds = %do.body17
  br label %do.body18, !dbg !184

do.body18:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 51, i32 0, i64 12) #5, !dbg !188, !srcloc !190
  br label %do.end19, !dbg !188

do.end19:                                         ; preds = %do.body18
  unreachable, !dbg !184

do.end20:                                         ; No predecessors!
  br label %sw.epilog, !dbg !191

sw.epilog:                                        ; preds = %if.then, %if.then5, %sw.bb, %sw.bb9, %sw.bb13, %do.end20
  %17 = load i1, ptr %retval, align 1, !dbg !192
  ret i1 %17, !dbg !192
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_lt(i32 %left.coerce, i32 %right.coerce) #2 align 16 !dbg !193 {
entry:
  %left = alloca %struct.kuid_t, align 4
  %right = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !195, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.declare(metadata ptr %right, metadata !196, metadata !DIExpression()), !dbg !198
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0, !dbg !199
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !199
  %call = call i32 @__kuid_val(i32 %0) #4, !dbg !199
  %coerce.dive3 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0, !dbg !200
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !200
  %call4 = call i32 @__kuid_val(i32 %1) #4, !dbg !200
  %cmp = icmp ult i32 %call, %call4, !dbg !201
  ret i1 %cmp, !dbg !202
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_lt(i32 %left.coerce, i32 %right.coerce) #2 align 16 !dbg !203 {
entry:
  %left = alloca %struct.kgid_t, align 4
  %right = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !205, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata ptr %right, metadata !206, metadata !DIExpression()), !dbg !208
  %coerce.dive2 = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0, !dbg !209
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !209
  %call = call i32 @__kgid_val(i32 %0) #4, !dbg !209
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0, !dbg !210
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !210
  %call4 = call i32 @__kgid_val(i32 %1) #4, !dbg !210
  %cmp = icmp ult i32 %call, %call4, !dbg !211
  ret i1 %cmp, !dbg !212
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @projid_lt(i32 %left.coerce, i32 %right.coerce) #2 align 16 !dbg !213 {
entry:
  %left = alloca %struct.kprojid_t, align 4
  %right = alloca %struct.kprojid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kprojid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kprojid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !215, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata ptr %right, metadata !216, metadata !DIExpression()), !dbg !218
  %coerce.dive2 = getelementptr inbounds %struct.kprojid_t, ptr %left, i32 0, i32 0, !dbg !219
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !219
  %call = call i32 @__kprojid_val(i32 %0) #4, !dbg !219
  %coerce.dive3 = getelementptr inbounds %struct.kprojid_t, ptr %right, i32 0, i32 0, !dbg !220
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !220
  %call4 = call i32 @__kprojid_val(i32 %1) #4, !dbg !220
  %cmp = icmp ult i32 %call, %call4, !dbg !221
  ret i1 %cmp, !dbg !222
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @from_kqid(ptr noundef %targ, i64 %kqid.coerce) #0 align 16 !dbg !223 {
entry:
  %retval = alloca i32, align 4
  %kqid = alloca %struct.kqid, align 4
  %targ.addr = alloca ptr, align 8
  store i64 %kqid.coerce, ptr %kqid, align 4
  store ptr %targ, ptr %targ.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %targ.addr, metadata !230, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.declare(metadata ptr %kqid, metadata !231, metadata !DIExpression()), !dbg !233
  %type = getelementptr inbounds %struct.kqid, ptr %kqid, i32 0, i32 1, !dbg !234
  %0 = load i32, ptr %type, align 4, !dbg !234
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
  ], !dbg !235

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %targ.addr, align 8, !dbg !236
  %2 = getelementptr inbounds %struct.kqid, ptr %kqid, i32 0, i32 0, !dbg !238
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %2, i32 0, i32 0, !dbg !239
  %3 = load i32, ptr %coerce.dive, align 4, !dbg !239
  %call = call i32 @from_kuid(ptr noundef %1, i32 %3) #4, !dbg !239
  store i32 %call, ptr %retval, align 4, !dbg !240
  br label %sw.epilog, !dbg !240

sw.bb1:                                           ; preds = %entry
  %4 = load ptr, ptr %targ.addr, align 8, !dbg !241
  %5 = getelementptr inbounds %struct.kqid, ptr %kqid, i32 0, i32 0, !dbg !242
  %coerce.dive2 = getelementptr inbounds %struct.kgid_t, ptr %5, i32 0, i32 0, !dbg !243
  %6 = load i32, ptr %coerce.dive2, align 4, !dbg !243
  %call3 = call i32 @from_kgid(ptr noundef %4, i32 %6) #4, !dbg !243
  store i32 %call3, ptr %retval, align 4, !dbg !244
  br label %sw.epilog, !dbg !244

sw.bb4:                                           ; preds = %entry
  %7 = load ptr, ptr %targ.addr, align 8, !dbg !245
  %8 = getelementptr inbounds %struct.kqid, ptr %kqid, i32 0, i32 0, !dbg !246
  %coerce.dive5 = getelementptr inbounds %struct.kprojid_t, ptr %8, i32 0, i32 0, !dbg !247
  %9 = load i32, ptr %coerce.dive5, align 4, !dbg !247
  %call6 = call i32 @from_kprojid(ptr noundef %7, i32 %9) #4, !dbg !247
  store i32 %call6, ptr %retval, align 4, !dbg !248
  br label %sw.epilog, !dbg !248

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !249

do.body:                                          ; preds = %sw.default
  br label %do.body7, !dbg !250

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !252

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !250

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 78, i32 0, i64 12) #5, !dbg !254, !srcloc !256
  br label %do.end9, !dbg !254

do.end9:                                          ; preds = %do.body8
  unreachable, !dbg !250

do.end10:                                         ; No predecessors!
  br label %sw.epilog, !dbg !257

sw.epilog:                                        ; preds = %sw.bb, %sw.bb1, %sw.bb4, %do.end10
  %10 = load i32, ptr %retval, align 4, !dbg !258
  ret i32 %10, !dbg !258
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid(ptr noundef %to, i32 %kuid.coerce) #2 align 16 !dbg !259 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !263, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !264, metadata !DIExpression()), !dbg !266
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !267
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !267
  %call = call i32 @__kuid_val(i32 %0) #4, !dbg !267
  ret i32 %call, !dbg !268
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid(ptr noundef %to, i32 %kgid.coerce) #2 align 16 !dbg !269 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !273, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !274, metadata !DIExpression()), !dbg !276
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !277
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !277
  %call = call i32 @__kgid_val(i32 %0) #4, !dbg !277
  ret i32 %call, !dbg !278
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kprojid(ptr noundef %to, i32 %kprojid.coerce) #2 align 16 !dbg !279 {
entry:
  %kprojid = alloca %struct.kprojid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kprojid_t, ptr %kprojid, i32 0, i32 0
  store i32 %kprojid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.declare(metadata ptr %kprojid, metadata !284, metadata !DIExpression()), !dbg !286
  %coerce.dive1 = getelementptr inbounds %struct.kprojid_t, ptr %kprojid, i32 0, i32 0, !dbg !287
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !287
  %call = call i32 @__kprojid_val(i32 %0) #4, !dbg !287
  ret i32 %call, !dbg !288
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @from_kqid_munged(ptr noundef %targ, i64 %kqid.coerce) #0 align 16 !dbg !289 {
entry:
  %retval = alloca i32, align 4
  %kqid = alloca %struct.kqid, align 4
  %targ.addr = alloca ptr, align 8
  store i64 %kqid.coerce, ptr %kqid, align 4
  store ptr %targ, ptr %targ.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %targ.addr, metadata !291, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.declare(metadata ptr %kqid, metadata !292, metadata !DIExpression()), !dbg !294
  %type = getelementptr inbounds %struct.kqid, ptr %kqid, i32 0, i32 1, !dbg !295
  %0 = load i32, ptr %type, align 4, !dbg !295
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
  ], !dbg !296

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %targ.addr, align 8, !dbg !297
  %2 = getelementptr inbounds %struct.kqid, ptr %kqid, i32 0, i32 0, !dbg !299
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %2, i32 0, i32 0, !dbg !300
  %3 = load i32, ptr %coerce.dive, align 4, !dbg !300
  %call = call i32 @from_kuid_munged(ptr noundef %1, i32 %3) #4, !dbg !300
  store i32 %call, ptr %retval, align 4, !dbg !301
  br label %sw.epilog, !dbg !301

sw.bb1:                                           ; preds = %entry
  %4 = load ptr, ptr %targ.addr, align 8, !dbg !302
  %5 = getelementptr inbounds %struct.kqid, ptr %kqid, i32 0, i32 0, !dbg !303
  %coerce.dive2 = getelementptr inbounds %struct.kgid_t, ptr %5, i32 0, i32 0, !dbg !304
  %6 = load i32, ptr %coerce.dive2, align 4, !dbg !304
  %call3 = call i32 @from_kgid_munged(ptr noundef %4, i32 %6) #4, !dbg !304
  store i32 %call3, ptr %retval, align 4, !dbg !305
  br label %sw.epilog, !dbg !305

sw.bb4:                                           ; preds = %entry
  %7 = load ptr, ptr %targ.addr, align 8, !dbg !306
  %8 = getelementptr inbounds %struct.kqid, ptr %kqid, i32 0, i32 0, !dbg !307
  %coerce.dive5 = getelementptr inbounds %struct.kprojid_t, ptr %8, i32 0, i32 0, !dbg !308
  %9 = load i32, ptr %coerce.dive5, align 4, !dbg !308
  %call6 = call i32 @from_kprojid_munged(ptr noundef %7, i32 %9) #4, !dbg !308
  store i32 %call6, ptr %retval, align 4, !dbg !309
  br label %sw.epilog, !dbg !309

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !310

do.body:                                          ; preds = %sw.default
  br label %do.body7, !dbg !311

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !313

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !311

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 111, i32 0, i64 12) #5, !dbg !315, !srcloc !317
  br label %do.end9, !dbg !315

do.end9:                                          ; preds = %do.body8
  unreachable, !dbg !311

do.end10:                                         ; No predecessors!
  br label %sw.epilog, !dbg !318

sw.epilog:                                        ; preds = %sw.bb, %sw.bb1, %sw.bb4, %do.end10
  %10 = load i32, ptr %retval, align 4, !dbg !319
  ret i32 %10, !dbg !319
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid_munged(ptr noundef %to, i32 %kuid.coerce) #2 align 16 !dbg !320 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %uid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !322, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !323, metadata !DIExpression()), !dbg !326
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #5, !dbg !327
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !324, metadata !DIExpression()), !dbg !328
  %0 = load ptr, ptr %to.addr, align 8, !dbg !329
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !330
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !330
  %call = call i32 @from_kuid(ptr noundef %0, i32 %1) #4, !dbg !330
  store i32 %call, ptr %uid, align 4, !dbg !328
  %2 = load i32, ptr %uid, align 4, !dbg !331
  %cmp = icmp eq i32 %2, -1, !dbg !333
  br i1 %cmp, label %if.then, label %if.end, !dbg !334

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @overflowuid, align 4, !dbg !335
  store i32 %3, ptr %uid, align 4, !dbg !336
  br label %if.end, !dbg !337

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %uid, align 4, !dbg !338
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #5, !dbg !339
  ret i32 %4, !dbg !340
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid_munged(ptr noundef %to, i32 %kgid.coerce) #2 align 16 !dbg !341 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %gid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !343, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !344, metadata !DIExpression()), !dbg !347
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #5, !dbg !348
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !345, metadata !DIExpression()), !dbg !349
  %0 = load ptr, ptr %to.addr, align 8, !dbg !350
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !351
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !351
  %call = call i32 @from_kgid(ptr noundef %0, i32 %1) #4, !dbg !351
  store i32 %call, ptr %gid, align 4, !dbg !349
  %2 = load i32, ptr %gid, align 4, !dbg !352
  %cmp = icmp eq i32 %2, -1, !dbg !354
  br i1 %cmp, label %if.then, label %if.end, !dbg !355

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @overflowgid, align 4, !dbg !356
  store i32 %3, ptr %gid, align 4, !dbg !357
  br label %if.end, !dbg !358

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %gid, align 4, !dbg !359
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #5, !dbg !360
  ret i32 %4, !dbg !361
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kprojid_munged(ptr noundef %to, i32 %kprojid.coerce) #2 align 16 !dbg !362 {
entry:
  %kprojid = alloca %struct.kprojid_t, align 4
  %to.addr = alloca ptr, align 8
  %projid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kprojid_t, ptr %kprojid, i32 0, i32 0
  store i32 %kprojid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !364, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.declare(metadata ptr %kprojid, metadata !365, metadata !DIExpression()), !dbg !368
  call void @llvm.lifetime.start.p0(i64 4, ptr %projid) #5, !dbg !369
  call void @llvm.dbg.declare(metadata ptr %projid, metadata !366, metadata !DIExpression()), !dbg !370
  %0 = load ptr, ptr %to.addr, align 8, !dbg !371
  %coerce.dive1 = getelementptr inbounds %struct.kprojid_t, ptr %kprojid, i32 0, i32 0, !dbg !372
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !372
  %call = call i32 @from_kprojid(ptr noundef %0, i32 %1) #4, !dbg !372
  store i32 %call, ptr %projid, align 4, !dbg !370
  %2 = load i32, ptr %projid, align 4, !dbg !373
  %cmp = icmp eq i32 %2, -1, !dbg !375
  br i1 %cmp, label %if.then, label %if.end, !dbg !376

if.then:                                          ; preds = %entry
  store i32 65534, ptr %projid, align 4, !dbg !377
  br label %if.end, !dbg !378

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %projid, align 4, !dbg !379
  call void @llvm.lifetime.end.p0(i64 4, ptr %projid) #5, !dbg !380
  ret i32 %3, !dbg !381
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @qid_valid(i64 %qid.coerce) #0 align 16 !dbg !382 {
entry:
  %retval = alloca i1, align 1
  %qid = alloca %struct.kqid, align 4
  store i64 %qid.coerce, ptr %qid, align 4
  call void @llvm.dbg.declare(metadata ptr %qid, metadata !386, metadata !DIExpression()), !dbg !387
  %type = getelementptr inbounds %struct.kqid, ptr %qid, i32 0, i32 1, !dbg !388
  %0 = load i32, ptr %type, align 4, !dbg !388
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
  ], !dbg !389

sw.bb:                                            ; preds = %entry
  %1 = getelementptr inbounds %struct.kqid, ptr %qid, i32 0, i32 0, !dbg !390
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %1, i32 0, i32 0, !dbg !392
  %2 = load i32, ptr %coerce.dive, align 4, !dbg !392
  %call = call zeroext i1 @uid_valid(i32 %2) #4, !dbg !392
  store i1 %call, ptr %retval, align 1, !dbg !393
  br label %sw.epilog, !dbg !393

sw.bb1:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.kqid, ptr %qid, i32 0, i32 0, !dbg !394
  %coerce.dive2 = getelementptr inbounds %struct.kgid_t, ptr %3, i32 0, i32 0, !dbg !395
  %4 = load i32, ptr %coerce.dive2, align 4, !dbg !395
  %call3 = call zeroext i1 @gid_valid(i32 %4) #4, !dbg !395
  store i1 %call3, ptr %retval, align 1, !dbg !396
  br label %sw.epilog, !dbg !396

sw.bb4:                                           ; preds = %entry
  %5 = getelementptr inbounds %struct.kqid, ptr %qid, i32 0, i32 0, !dbg !397
  %coerce.dive5 = getelementptr inbounds %struct.kprojid_t, ptr %5, i32 0, i32 0, !dbg !398
  %6 = load i32, ptr %coerce.dive5, align 4, !dbg !398
  %call6 = call zeroext i1 @projid_valid(i32 %6) #4, !dbg !398
  store i1 %call6, ptr %retval, align 1, !dbg !399
  br label %sw.epilog, !dbg !399

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !400

do.body:                                          ; preds = %sw.default
  br label %do.body7, !dbg !401

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !403

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !401

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 130, i32 0, i64 12) #5, !dbg !405, !srcloc !407
  br label %do.end9, !dbg !405

do.end9:                                          ; preds = %do.body8
  unreachable, !dbg !401

do.end10:                                         ; No predecessors!
  br label %sw.epilog, !dbg !408

sw.epilog:                                        ; preds = %sw.bb, %sw.bb1, %sw.bb4, %do.end10
  %7 = load i1, ptr %retval, align 1, !dbg !409
  ret i1 %7, !dbg !409
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_valid(i32 %uid.coerce) #2 align 16 !dbg !410 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !414, metadata !DIExpression()), !dbg !415
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !416
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !416
  %call = call i32 @__kuid_val(i32 %0) #4, !dbg !416
  %cmp = icmp ne i32 %call, -1, !dbg !417
  ret i1 %cmp, !dbg !418
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_valid(i32 %gid.coerce) #2 align 16 !dbg !419 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !423, metadata !DIExpression()), !dbg !424
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !425
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !425
  %call = call i32 @__kgid_val(i32 %0) #4, !dbg !425
  %cmp = icmp ne i32 %call, -1, !dbg !426
  ret i1 %cmp, !dbg !427
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @projid_valid(i32 %projid.coerce) #2 align 16 !dbg !428 {
entry:
  %projid = alloca %struct.kprojid_t, align 4
  %.compoundliteral = alloca %struct.kprojid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kprojid_t, ptr %projid, i32 0, i32 0
  store i32 %projid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %projid, metadata !432, metadata !DIExpression()), !dbg !433
  %val = getelementptr inbounds %struct.kprojid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !434
  store i32 -1, ptr %val, align 4, !dbg !434
  %coerce.dive1 = getelementptr inbounds %struct.kprojid_t, ptr %projid, i32 0, i32 0, !dbg !435
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !435
  %coerce.dive2 = getelementptr inbounds %struct.kprojid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !435
  %1 = load i32, ptr %coerce.dive2, align 4, !dbg !435
  %call = call zeroext i1 @projid_eq(i32 %0, i32 %1) #4, !dbg !435
  %lnot = xor i1 %call, true, !dbg !436
  ret i1 %lnot, !dbg !437
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #2 align 16 !dbg !438 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !442, metadata !DIExpression()), !dbg !443
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !444
  %0 = load i32, ptr %val, align 4, !dbg !444
  ret i32 %0, !dbg !445
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kgid_val(i32 %gid.coerce) #2 align 16 !dbg !446 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !450, metadata !DIExpression()), !dbg !451
  %val = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !452
  %0 = load i32, ptr %val, align 4, !dbg !452
  ret i32 %0, !dbg !453
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kprojid_val(i32 %projid.coerce) #2 align 16 !dbg !454 {
entry:
  %projid = alloca %struct.kprojid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kprojid_t, ptr %projid, i32 0, i32 0
  store i32 %projid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %projid, metadata !458, metadata !DIExpression()), !dbg !459
  %val = getelementptr inbounds %struct.kprojid_t, ptr %projid, i32 0, i32 0, !dbg !460
  %0 = load i32, ptr %val, align 4, !dbg !460
  ret i32 %0, !dbg !461
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "fs/quota/kqid.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0b36f574c102ba5fd77fae685d249b9")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 16)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_qid_eq249", scope: !9, file: !2, line: 28, type: !24, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/quota/.kqid.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/quota/kqid\22 -D KBUILD_BASENAME=\22kqid\22 -D KBUILD_MODNAME=\22kqid\22 -D __KBUILD_MODNAME=kmod_kqid -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/quota/kqid.ll fs/quota/kqid.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !23, globals: !33, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !18}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !12, line: 54, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "USRQUOTA", value: 0)
!16 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!17 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 10, baseType: !13, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "false", value: 0)
!22 = !DIEnumerator(name: "true", value: 1)
!23 = !{!24, !25, !29, !31}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !26, line: 37, baseType: !27)
!26 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !28, line: 49, baseType: !13)
!28 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !26, line: 38, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !28, line: 50, baseType: !13)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !32, line: 20, baseType: !27)
!32 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!33 = !{!0, !7, !34, !36, !38, !40}
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_qid_lt250", scope: !9, file: !2, line: 54, type: !24, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_from_kqid251", scope: !9, file: !2, line: 81, type: !24, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_from_kqid_munged252", scope: !9, file: !2, line: 114, type: !24, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_qid_valid253", scope: !9, file: !2, line: 133, type: !24, isLocal: true, isDefinition: true)
!42 = !{i32 7, !"Dwarf Version", i32 5}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 8, !"cf-protection-branch", i32 1}
!46 = !{i32 4, !"function_return_thunk_extern", i32 1}
!47 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!48 = !{i32 1, !"Code Model", i32 2}
!49 = !{i32 1, !"override-stack-alignment", i32 8}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = distinct !DISubprogram(name: "qid_eq", scope: !2, file: !2, line: 13, type: !52, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !78)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !56, !56}
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !26, line: 35, baseType: !55)
!55 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !12, line: 68, size: 64, elements: !57)
!57 = !{!58, !77}
!58 = !DIDerivedType(tag: DW_TAG_member, scope: !56, file: !12, line: 69, baseType: !59, size: 32)
!59 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !56, file: !12, line: 69, size: 32, elements: !60)
!60 = !{!61, !67, !72}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !59, file: !12, line: 70, baseType: !62, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !63, line: 23, baseType: !64)
!63 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 21, size: 32, elements: !65)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !64, file: !63, line: 22, baseType: !25, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !59, file: !12, line: 71, baseType: !68, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !63, line: 28, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 26, size: 32, elements: !70)
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !69, file: !63, line: 27, baseType: !29, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !59, file: !12, line: 72, baseType: !73, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !32, line: 24, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 22, size: 32, elements: !75)
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !74, file: !32, line: 23, baseType: !31, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !56, file: !12, line: 74, baseType: !11, size: 32, offset: 32)
!78 = !{!79, !80}
!79 = !DILocalVariable(name: "left", arg: 1, scope: !51, file: !2, line: 13, type: !56)
!80 = !DILocalVariable(name: "right", arg: 2, scope: !51, file: !2, line: 13, type: !56)
!81 = !DILocation(line: 13, column: 25, scope: !51)
!82 = !DILocation(line: 13, column: 43, scope: !51)
!83 = !DILocation(line: 15, column: 11, scope: !84)
!84 = distinct !DILexicalBlock(scope: !51, file: !2, line: 15, column: 6)
!85 = !DILocation(line: 15, column: 25, scope: !84)
!86 = !DILocation(line: 15, column: 16, scope: !84)
!87 = !DILocation(line: 15, column: 6, scope: !51)
!88 = !DILocation(line: 16, column: 3, scope: !84)
!89 = !DILocation(line: 17, column: 14, scope: !51)
!90 = !DILocation(line: 17, column: 2, scope: !51)
!91 = !DILocation(line: 19, column: 22, scope: !92)
!92 = distinct !DILexicalBlock(scope: !51, file: !2, line: 17, column: 20)
!93 = !DILocation(line: 19, column: 33, scope: !92)
!94 = !DILocation(line: 19, column: 10, scope: !92)
!95 = !DILocation(line: 19, column: 3, scope: !92)
!96 = !DILocation(line: 21, column: 22, scope: !92)
!97 = !DILocation(line: 21, column: 33, scope: !92)
!98 = !DILocation(line: 21, column: 10, scope: !92)
!99 = !DILocation(line: 21, column: 3, scope: !92)
!100 = !DILocation(line: 23, column: 25, scope: !92)
!101 = !DILocation(line: 23, column: 39, scope: !92)
!102 = !DILocation(line: 23, column: 10, scope: !92)
!103 = !DILocation(line: 23, column: 3, scope: !92)
!104 = !DILocation(line: 25, column: 3, scope: !92)
!105 = !DILocation(line: 25, column: 3, scope: !106)
!106 = distinct !DILexicalBlock(scope: !92, file: !2, line: 25, column: 3)
!107 = !DILocation(line: 25, column: 3, scope: !108)
!108 = distinct !DILexicalBlock(scope: !106, file: !2, line: 25, column: 3)
!109 = !DILocation(line: 25, column: 3, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !2, line: 25, column: 3)
!111 = !{i64 2153357189, i64 2153357218, i64 2153357264, i64 2153357322, i64 2153357376, i64 2153357430, i64 2153357485, i64 2153357516}
!112 = !DILocation(line: 26, column: 2, scope: !92)
!113 = !DILocation(line: 27, column: 1, scope: !51)
!114 = distinct !DISubprogram(name: "uid_eq", scope: !63, file: !63, line: 61, type: !115, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !117)
!115 = !DISubroutineType(types: !116)
!116 = !{!54, !62, !62}
!117 = !{!118, !119}
!118 = !DILocalVariable(name: "left", arg: 1, scope: !114, file: !63, line: 61, type: !62)
!119 = !DILocalVariable(name: "right", arg: 2, scope: !114, file: !63, line: 61, type: !62)
!120 = !DILocation(line: 61, column: 34, scope: !114)
!121 = !DILocation(line: 61, column: 47, scope: !114)
!122 = !DILocation(line: 63, column: 9, scope: !114)
!123 = !DILocation(line: 63, column: 29, scope: !114)
!124 = !DILocation(line: 63, column: 26, scope: !114)
!125 = !DILocation(line: 63, column: 2, scope: !114)
!126 = distinct !DISubprogram(name: "gid_eq", scope: !63, file: !63, line: 66, type: !127, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !129)
!127 = !DISubroutineType(types: !128)
!128 = !{!54, !68, !68}
!129 = !{!130, !131}
!130 = !DILocalVariable(name: "left", arg: 1, scope: !126, file: !63, line: 66, type: !68)
!131 = !DILocalVariable(name: "right", arg: 2, scope: !126, file: !63, line: 66, type: !68)
!132 = !DILocation(line: 66, column: 34, scope: !126)
!133 = !DILocation(line: 66, column: 47, scope: !126)
!134 = !DILocation(line: 68, column: 9, scope: !126)
!135 = !DILocation(line: 68, column: 29, scope: !126)
!136 = !DILocation(line: 68, column: 26, scope: !126)
!137 = !DILocation(line: 68, column: 2, scope: !126)
!138 = distinct !DISubprogram(name: "projid_eq", scope: !32, file: !32, line: 36, type: !139, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !141)
!139 = !DISubroutineType(types: !140)
!140 = !{!54, !73, !73}
!141 = !{!142, !143}
!142 = !DILocalVariable(name: "left", arg: 1, scope: !138, file: !32, line: 36, type: !73)
!143 = !DILocalVariable(name: "right", arg: 2, scope: !138, file: !32, line: 36, type: !73)
!144 = !DILocation(line: 36, column: 40, scope: !138)
!145 = !DILocation(line: 36, column: 56, scope: !138)
!146 = !DILocation(line: 38, column: 9, scope: !138)
!147 = !DILocation(line: 38, column: 32, scope: !138)
!148 = !DILocation(line: 38, column: 29, scope: !138)
!149 = !DILocation(line: 38, column: 2, scope: !138)
!150 = distinct !DISubprogram(name: "qid_lt", scope: !2, file: !2, line: 37, type: !52, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !151)
!151 = !{!152, !153}
!152 = !DILocalVariable(name: "left", arg: 1, scope: !150, file: !2, line: 37, type: !56)
!153 = !DILocalVariable(name: "right", arg: 2, scope: !150, file: !2, line: 37, type: !56)
!154 = !DILocation(line: 37, column: 25, scope: !150)
!155 = !DILocation(line: 37, column: 43, scope: !150)
!156 = !DILocation(line: 39, column: 11, scope: !157)
!157 = distinct !DILexicalBlock(scope: !150, file: !2, line: 39, column: 6)
!158 = !DILocation(line: 39, column: 24, scope: !157)
!159 = !DILocation(line: 39, column: 16, scope: !157)
!160 = !DILocation(line: 39, column: 6, scope: !150)
!161 = !DILocation(line: 40, column: 3, scope: !157)
!162 = !DILocation(line: 41, column: 11, scope: !163)
!163 = distinct !DILexicalBlock(scope: !150, file: !2, line: 41, column: 6)
!164 = !DILocation(line: 41, column: 24, scope: !163)
!165 = !DILocation(line: 41, column: 16, scope: !163)
!166 = !DILocation(line: 41, column: 6, scope: !150)
!167 = !DILocation(line: 42, column: 3, scope: !163)
!168 = !DILocation(line: 43, column: 15, scope: !150)
!169 = !DILocation(line: 43, column: 2, scope: !150)
!170 = !DILocation(line: 45, column: 22, scope: !171)
!171 = distinct !DILexicalBlock(scope: !150, file: !2, line: 43, column: 21)
!172 = !DILocation(line: 45, column: 33, scope: !171)
!173 = !DILocation(line: 45, column: 10, scope: !171)
!174 = !DILocation(line: 45, column: 3, scope: !171)
!175 = !DILocation(line: 47, column: 22, scope: !171)
!176 = !DILocation(line: 47, column: 33, scope: !171)
!177 = !DILocation(line: 47, column: 10, scope: !171)
!178 = !DILocation(line: 47, column: 3, scope: !171)
!179 = !DILocation(line: 49, column: 25, scope: !171)
!180 = !DILocation(line: 49, column: 39, scope: !171)
!181 = !DILocation(line: 49, column: 10, scope: !171)
!182 = !DILocation(line: 49, column: 3, scope: !171)
!183 = !DILocation(line: 51, column: 3, scope: !171)
!184 = !DILocation(line: 51, column: 3, scope: !185)
!185 = distinct !DILexicalBlock(scope: !171, file: !2, line: 51, column: 3)
!186 = !DILocation(line: 51, column: 3, scope: !187)
!187 = distinct !DILexicalBlock(scope: !185, file: !2, line: 51, column: 3)
!188 = !DILocation(line: 51, column: 3, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !2, line: 51, column: 3)
!190 = !{i64 2153363604, i64 2153363633, i64 2153363679, i64 2153363737, i64 2153363791, i64 2153363845, i64 2153363900, i64 2153363931}
!191 = !DILocation(line: 52, column: 2, scope: !171)
!192 = !DILocation(line: 53, column: 1, scope: !150)
!193 = distinct !DISubprogram(name: "uid_lt", scope: !63, file: !63, line: 91, type: !115, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !194)
!194 = !{!195, !196}
!195 = !DILocalVariable(name: "left", arg: 1, scope: !193, file: !63, line: 91, type: !62)
!196 = !DILocalVariable(name: "right", arg: 2, scope: !193, file: !63, line: 91, type: !62)
!197 = !DILocation(line: 91, column: 34, scope: !193)
!198 = !DILocation(line: 91, column: 47, scope: !193)
!199 = !DILocation(line: 93, column: 9, scope: !193)
!200 = !DILocation(line: 93, column: 28, scope: !193)
!201 = !DILocation(line: 93, column: 26, scope: !193)
!202 = !DILocation(line: 93, column: 2, scope: !193)
!203 = distinct !DISubprogram(name: "gid_lt", scope: !63, file: !63, line: 96, type: !127, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !204)
!204 = !{!205, !206}
!205 = !DILocalVariable(name: "left", arg: 1, scope: !203, file: !63, line: 96, type: !68)
!206 = !DILocalVariable(name: "right", arg: 2, scope: !203, file: !63, line: 96, type: !68)
!207 = !DILocation(line: 96, column: 34, scope: !203)
!208 = !DILocation(line: 96, column: 47, scope: !203)
!209 = !DILocation(line: 98, column: 9, scope: !203)
!210 = !DILocation(line: 98, column: 28, scope: !203)
!211 = !DILocation(line: 98, column: 26, scope: !203)
!212 = !DILocation(line: 98, column: 2, scope: !203)
!213 = distinct !DISubprogram(name: "projid_lt", scope: !32, file: !32, line: 41, type: !139, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !214)
!214 = !{!215, !216}
!215 = !DILocalVariable(name: "left", arg: 1, scope: !213, file: !32, line: 41, type: !73)
!216 = !DILocalVariable(name: "right", arg: 2, scope: !213, file: !32, line: 41, type: !73)
!217 = !DILocation(line: 41, column: 40, scope: !213)
!218 = !DILocation(line: 41, column: 56, scope: !213)
!219 = !DILocation(line: 43, column: 9, scope: !213)
!220 = !DILocation(line: 43, column: 31, scope: !213)
!221 = !DILocation(line: 43, column: 29, scope: !213)
!222 = !DILocation(line: 43, column: 2, scope: !213)
!223 = distinct !DISubprogram(name: "from_kqid", scope: !2, file: !2, line: 68, type: !224, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !229)
!224 = !DISubroutineType(types: !225)
!225 = !{!226, !227, !56}
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "qid_t", file: !12, line: 65, baseType: !27)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !63, line: 18, flags: DIFlagFwdDecl)
!229 = !{!230, !231}
!230 = !DILocalVariable(name: "targ", arg: 1, scope: !223, file: !2, line: 68, type: !227)
!231 = !DILocalVariable(name: "kqid", arg: 2, scope: !223, file: !2, line: 68, type: !56)
!232 = !DILocation(line: 68, column: 40, scope: !223)
!233 = !DILocation(line: 68, column: 58, scope: !223)
!234 = !DILocation(line: 70, column: 15, scope: !223)
!235 = !DILocation(line: 70, column: 2, scope: !223)
!236 = !DILocation(line: 72, column: 20, scope: !237)
!237 = distinct !DILexicalBlock(scope: !223, file: !2, line: 70, column: 21)
!238 = !DILocation(line: 72, column: 31, scope: !237)
!239 = !DILocation(line: 72, column: 10, scope: !237)
!240 = !DILocation(line: 72, column: 3, scope: !237)
!241 = !DILocation(line: 74, column: 20, scope: !237)
!242 = !DILocation(line: 74, column: 31, scope: !237)
!243 = !DILocation(line: 74, column: 10, scope: !237)
!244 = !DILocation(line: 74, column: 3, scope: !237)
!245 = !DILocation(line: 76, column: 23, scope: !237)
!246 = !DILocation(line: 76, column: 34, scope: !237)
!247 = !DILocation(line: 76, column: 10, scope: !237)
!248 = !DILocation(line: 76, column: 3, scope: !237)
!249 = !DILocation(line: 78, column: 3, scope: !237)
!250 = !DILocation(line: 78, column: 3, scope: !251)
!251 = distinct !DILexicalBlock(scope: !237, file: !2, line: 78, column: 3)
!252 = !DILocation(line: 78, column: 3, scope: !253)
!253 = distinct !DILexicalBlock(scope: !251, file: !2, line: 78, column: 3)
!254 = !DILocation(line: 78, column: 3, scope: !255)
!255 = distinct !DILexicalBlock(scope: !251, file: !2, line: 78, column: 3)
!256 = !{i64 2153365958, i64 2153365987, i64 2153366033, i64 2153366091, i64 2153366145, i64 2153366199, i64 2153366254, i64 2153366285}
!257 = !DILocation(line: 79, column: 2, scope: !237)
!258 = !DILocation(line: 80, column: 1, scope: !223)
!259 = distinct !DISubprogram(name: "from_kuid", scope: !63, file: !63, line: 153, type: !260, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !262)
!260 = !DISubroutineType(types: !261)
!261 = !{!25, !227, !62}
!262 = !{!263, !264}
!263 = !DILocalVariable(name: "to", arg: 1, scope: !259, file: !63, line: 153, type: !227)
!264 = !DILocalVariable(name: "kuid", arg: 2, scope: !259, file: !63, line: 153, type: !62)
!265 = !DILocation(line: 153, column: 54, scope: !259)
!266 = !DILocation(line: 153, column: 65, scope: !259)
!267 = !DILocation(line: 155, column: 9, scope: !259)
!268 = !DILocation(line: 155, column: 2, scope: !259)
!269 = distinct !DISubprogram(name: "from_kgid", scope: !63, file: !63, line: 158, type: !270, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !272)
!270 = !DISubroutineType(types: !271)
!271 = !{!29, !227, !68}
!272 = !{!273, !274}
!273 = !DILocalVariable(name: "to", arg: 1, scope: !269, file: !63, line: 158, type: !227)
!274 = !DILocalVariable(name: "kgid", arg: 2, scope: !269, file: !63, line: 158, type: !68)
!275 = !DILocation(line: 158, column: 54, scope: !269)
!276 = !DILocation(line: 158, column: 65, scope: !269)
!277 = !DILocation(line: 160, column: 9, scope: !269)
!278 = !DILocation(line: 160, column: 2, scope: !269)
!279 = distinct !DISubprogram(name: "from_kprojid", scope: !32, file: !32, line: 70, type: !280, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !282)
!280 = !DISubroutineType(types: !281)
!281 = !{!31, !227, !73}
!282 = !{!283, !284}
!283 = !DILocalVariable(name: "to", arg: 1, scope: !279, file: !32, line: 70, type: !227)
!284 = !DILocalVariable(name: "kprojid", arg: 2, scope: !279, file: !32, line: 70, type: !73)
!285 = !DILocation(line: 70, column: 60, scope: !279)
!286 = !DILocation(line: 70, column: 74, scope: !279)
!287 = !DILocation(line: 72, column: 9, scope: !279)
!288 = !DILocation(line: 72, column: 2, scope: !279)
!289 = distinct !DISubprogram(name: "from_kqid_munged", scope: !2, file: !2, line: 101, type: !224, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !290)
!290 = !{!291, !292}
!291 = !DILocalVariable(name: "targ", arg: 1, scope: !289, file: !2, line: 101, type: !227)
!292 = !DILocalVariable(name: "kqid", arg: 2, scope: !289, file: !2, line: 101, type: !56)
!293 = !DILocation(line: 101, column: 47, scope: !289)
!294 = !DILocation(line: 101, column: 65, scope: !289)
!295 = !DILocation(line: 103, column: 15, scope: !289)
!296 = !DILocation(line: 103, column: 2, scope: !289)
!297 = !DILocation(line: 105, column: 27, scope: !298)
!298 = distinct !DILexicalBlock(scope: !289, file: !2, line: 103, column: 21)
!299 = !DILocation(line: 105, column: 38, scope: !298)
!300 = !DILocation(line: 105, column: 10, scope: !298)
!301 = !DILocation(line: 105, column: 3, scope: !298)
!302 = !DILocation(line: 107, column: 27, scope: !298)
!303 = !DILocation(line: 107, column: 38, scope: !298)
!304 = !DILocation(line: 107, column: 10, scope: !298)
!305 = !DILocation(line: 107, column: 3, scope: !298)
!306 = !DILocation(line: 109, column: 30, scope: !298)
!307 = !DILocation(line: 109, column: 41, scope: !298)
!308 = !DILocation(line: 109, column: 10, scope: !298)
!309 = !DILocation(line: 109, column: 3, scope: !298)
!310 = !DILocation(line: 111, column: 3, scope: !298)
!311 = !DILocation(line: 111, column: 3, scope: !312)
!312 = distinct !DILexicalBlock(scope: !298, file: !2, line: 111, column: 3)
!313 = !DILocation(line: 111, column: 3, scope: !314)
!314 = distinct !DILexicalBlock(scope: !312, file: !2, line: 111, column: 3)
!315 = !DILocation(line: 111, column: 3, scope: !316)
!316 = distinct !DILexicalBlock(scope: !312, file: !2, line: 111, column: 3)
!317 = !{i64 2153368393, i64 2153368422, i64 2153368468, i64 2153368526, i64 2153368580, i64 2153368634, i64 2153368689, i64 2153368720}
!318 = !DILocation(line: 112, column: 2, scope: !298)
!319 = !DILocation(line: 113, column: 1, scope: !289)
!320 = distinct !DISubprogram(name: "from_kuid_munged", scope: !63, file: !63, line: 163, type: !260, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !321)
!321 = !{!322, !323, !324}
!322 = !DILocalVariable(name: "to", arg: 1, scope: !320, file: !63, line: 163, type: !227)
!323 = !DILocalVariable(name: "kuid", arg: 2, scope: !320, file: !63, line: 163, type: !62)
!324 = !DILocalVariable(name: "uid", scope: !320, file: !63, line: 165, type: !25)
!325 = !DILocation(line: 163, column: 61, scope: !320)
!326 = !DILocation(line: 163, column: 72, scope: !320)
!327 = !DILocation(line: 165, column: 2, scope: !320)
!328 = !DILocation(line: 165, column: 8, scope: !320)
!329 = !DILocation(line: 165, column: 24, scope: !320)
!330 = !DILocation(line: 165, column: 14, scope: !320)
!331 = !DILocation(line: 166, column: 6, scope: !332)
!332 = distinct !DILexicalBlock(scope: !320, file: !63, line: 166, column: 6)
!333 = !DILocation(line: 166, column: 10, scope: !332)
!334 = !DILocation(line: 166, column: 6, scope: !320)
!335 = !DILocation(line: 167, column: 9, scope: !332)
!336 = !DILocation(line: 167, column: 7, scope: !332)
!337 = !DILocation(line: 167, column: 3, scope: !332)
!338 = !DILocation(line: 168, column: 9, scope: !320)
!339 = !DILocation(line: 169, column: 1, scope: !320)
!340 = !DILocation(line: 168, column: 2, scope: !320)
!341 = distinct !DISubprogram(name: "from_kgid_munged", scope: !63, file: !63, line: 171, type: !270, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !342)
!342 = !{!343, !344, !345}
!343 = !DILocalVariable(name: "to", arg: 1, scope: !341, file: !63, line: 171, type: !227)
!344 = !DILocalVariable(name: "kgid", arg: 2, scope: !341, file: !63, line: 171, type: !68)
!345 = !DILocalVariable(name: "gid", scope: !341, file: !63, line: 173, type: !29)
!346 = !DILocation(line: 171, column: 61, scope: !341)
!347 = !DILocation(line: 171, column: 72, scope: !341)
!348 = !DILocation(line: 173, column: 2, scope: !341)
!349 = !DILocation(line: 173, column: 8, scope: !341)
!350 = !DILocation(line: 173, column: 24, scope: !341)
!351 = !DILocation(line: 173, column: 14, scope: !341)
!352 = !DILocation(line: 174, column: 6, scope: !353)
!353 = distinct !DILexicalBlock(scope: !341, file: !63, line: 174, column: 6)
!354 = !DILocation(line: 174, column: 10, scope: !353)
!355 = !DILocation(line: 174, column: 6, scope: !341)
!356 = !DILocation(line: 175, column: 9, scope: !353)
!357 = !DILocation(line: 175, column: 7, scope: !353)
!358 = !DILocation(line: 175, column: 3, scope: !353)
!359 = !DILocation(line: 176, column: 9, scope: !341)
!360 = !DILocation(line: 177, column: 1, scope: !341)
!361 = !DILocation(line: 176, column: 2, scope: !341)
!362 = distinct !DISubprogram(name: "from_kprojid_munged", scope: !32, file: !32, line: 75, type: !280, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !363)
!363 = !{!364, !365, !366}
!364 = !DILocalVariable(name: "to", arg: 1, scope: !362, file: !32, line: 75, type: !227)
!365 = !DILocalVariable(name: "kprojid", arg: 2, scope: !362, file: !32, line: 75, type: !73)
!366 = !DILocalVariable(name: "projid", scope: !362, file: !32, line: 77, type: !31)
!367 = !DILocation(line: 75, column: 67, scope: !362)
!368 = !DILocation(line: 75, column: 81, scope: !362)
!369 = !DILocation(line: 77, column: 2, scope: !362)
!370 = !DILocation(line: 77, column: 11, scope: !362)
!371 = !DILocation(line: 77, column: 33, scope: !362)
!372 = !DILocation(line: 77, column: 20, scope: !362)
!373 = !DILocation(line: 78, column: 6, scope: !374)
!374 = distinct !DILexicalBlock(scope: !362, file: !32, line: 78, column: 6)
!375 = !DILocation(line: 78, column: 13, scope: !374)
!376 = !DILocation(line: 78, column: 6, scope: !362)
!377 = !DILocation(line: 79, column: 10, scope: !374)
!378 = !DILocation(line: 79, column: 3, scope: !374)
!379 = !DILocation(line: 80, column: 9, scope: !362)
!380 = !DILocation(line: 81, column: 1, scope: !362)
!381 = !DILocation(line: 80, column: 2, scope: !362)
!382 = distinct !DISubprogram(name: "qid_valid", scope: !2, file: !2, line: 120, type: !383, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !385)
!383 = !DISubroutineType(types: !384)
!384 = !{!54, !56}
!385 = !{!386}
!386 = !DILocalVariable(name: "qid", arg: 1, scope: !382, file: !2, line: 120, type: !56)
!387 = !DILocation(line: 120, column: 28, scope: !382)
!388 = !DILocation(line: 122, column: 14, scope: !382)
!389 = !DILocation(line: 122, column: 2, scope: !382)
!390 = !DILocation(line: 124, column: 24, scope: !391)
!391 = distinct !DILexicalBlock(scope: !382, file: !2, line: 122, column: 20)
!392 = !DILocation(line: 124, column: 10, scope: !391)
!393 = !DILocation(line: 124, column: 3, scope: !391)
!394 = !DILocation(line: 126, column: 24, scope: !391)
!395 = !DILocation(line: 126, column: 10, scope: !391)
!396 = !DILocation(line: 126, column: 3, scope: !391)
!397 = !DILocation(line: 128, column: 27, scope: !391)
!398 = !DILocation(line: 128, column: 10, scope: !391)
!399 = !DILocation(line: 128, column: 3, scope: !391)
!400 = !DILocation(line: 130, column: 3, scope: !391)
!401 = !DILocation(line: 130, column: 3, scope: !402)
!402 = distinct !DILexicalBlock(scope: !391, file: !2, line: 130, column: 3)
!403 = !DILocation(line: 130, column: 3, scope: !404)
!404 = distinct !DILexicalBlock(scope: !402, file: !2, line: 130, column: 3)
!405 = !DILocation(line: 130, column: 3, scope: !406)
!406 = distinct !DILexicalBlock(scope: !402, file: !2, line: 130, column: 3)
!407 = !{i64 2153371018, i64 2153371047, i64 2153371093, i64 2153371151, i64 2153371205, i64 2153371259, i64 2153371314, i64 2153371345}
!408 = !DILocation(line: 131, column: 2, scope: !391)
!409 = !DILocation(line: 132, column: 1, scope: !382)
!410 = distinct !DISubprogram(name: "uid_valid", scope: !63, file: !63, line: 111, type: !411, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !413)
!411 = !DISubroutineType(types: !412)
!412 = !{!54, !62}
!413 = !{!414}
!414 = !DILocalVariable(name: "uid", arg: 1, scope: !410, file: !63, line: 111, type: !62)
!415 = !DILocation(line: 111, column: 37, scope: !410)
!416 = !DILocation(line: 113, column: 9, scope: !410)
!417 = !DILocation(line: 113, column: 25, scope: !410)
!418 = !DILocation(line: 113, column: 2, scope: !410)
!419 = distinct !DISubprogram(name: "gid_valid", scope: !63, file: !63, line: 116, type: !420, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !422)
!420 = !DISubroutineType(types: !421)
!421 = !{!54, !68}
!422 = !{!423}
!423 = !DILocalVariable(name: "gid", arg: 1, scope: !419, file: !63, line: 116, type: !68)
!424 = !DILocation(line: 116, column: 37, scope: !419)
!425 = !DILocation(line: 118, column: 9, scope: !419)
!426 = !DILocation(line: 118, column: 25, scope: !419)
!427 = !DILocation(line: 118, column: 2, scope: !419)
!428 = distinct !DISubprogram(name: "projid_valid", scope: !32, file: !32, line: 46, type: !429, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{!54, !73}
!431 = !{!432}
!432 = !DILocalVariable(name: "projid", arg: 1, scope: !428, file: !32, line: 46, type: !73)
!433 = !DILocation(line: 46, column: 43, scope: !428)
!434 = !DILocation(line: 48, column: 28, scope: !428)
!435 = !DILocation(line: 48, column: 10, scope: !428)
!436 = !DILocation(line: 48, column: 9, scope: !428)
!437 = !DILocation(line: 48, column: 2, scope: !428)
!438 = distinct !DISubprogram(name: "__kuid_val", scope: !63, file: !63, line: 34, type: !439, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !441)
!439 = !DISubroutineType(types: !440)
!440 = !{!25, !62}
!441 = !{!442}
!442 = !DILocalVariable(name: "uid", arg: 1, scope: !438, file: !63, line: 34, type: !62)
!443 = !DILocation(line: 34, column: 39, scope: !438)
!444 = !DILocation(line: 36, column: 13, scope: !438)
!445 = !DILocation(line: 36, column: 2, scope: !438)
!446 = distinct !DISubprogram(name: "__kgid_val", scope: !63, file: !63, line: 39, type: !447, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !449)
!447 = !DISubroutineType(types: !448)
!448 = !{!29, !68}
!449 = !{!450}
!450 = !DILocalVariable(name: "gid", arg: 1, scope: !446, file: !63, line: 39, type: !68)
!451 = !DILocation(line: 39, column: 39, scope: !446)
!452 = !DILocation(line: 41, column: 13, scope: !446)
!453 = !DILocation(line: 41, column: 2, scope: !446)
!454 = distinct !DISubprogram(name: "__kprojid_val", scope: !32, file: !32, line: 26, type: !455, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !457)
!455 = !DISubroutineType(types: !456)
!456 = !{!31, !73}
!457 = !{!458}
!458 = !DILocalVariable(name: "projid", arg: 1, scope: !454, file: !32, line: 26, type: !73)
!459 = !DILocation(line: 26, column: 48, scope: !454)
!460 = !DILocation(line: 28, column: 16, scope: !454)
!461 = !DILocation(line: 28, column: 2, scope: !454)

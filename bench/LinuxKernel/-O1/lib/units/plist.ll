; ModuleID = 'lib/plist.c'
source_filename = "lib/plist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plist_head = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }

@.str = private unnamed_addr constant [12 x i8] c"lib/plist.c\00", align 1, !dbg !0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @plist_add(ptr noundef %node, ptr noundef %head) #0 align 16 !dbg !45 {
entry:
  %node.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %node_next = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on28 = alloca i32, align 4
  %__flags47 = alloca i32, align 4
  %tmp60 = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp80 = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !53, metadata !DIExpression()), !dbg !73
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !54, metadata !DIExpression()), !dbg !74
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #5, !dbg !75
  call void @llvm.dbg.declare(metadata ptr %first, metadata !55, metadata !DIExpression()), !dbg !76
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #5, !dbg !75
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !56, metadata !DIExpression()), !dbg !77
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #5, !dbg !75
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !57, metadata !DIExpression()), !dbg !78
  store ptr null, ptr %prev, align 8, !dbg !78
  call void @llvm.lifetime.start.p0(i64 8, ptr %node_next) #5, !dbg !79
  call void @llvm.dbg.declare(metadata ptr %node_next, metadata !58, metadata !DIExpression()), !dbg !80
  %0 = load ptr, ptr %head.addr, align 8, !dbg !81
  %node_list = getelementptr inbounds %struct.plist_head, ptr %0, i32 0, i32 0, !dbg !82
  store ptr %node_list, ptr %node_next, align 8, !dbg !80
  br label %do.body, !dbg !83

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !84

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !84

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #5, !dbg !86
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !59, metadata !DIExpression()), !dbg !86
  %1 = load ptr, ptr %node.addr, align 8, !dbg !86
  %call = call i32 @plist_node_empty(ptr noundef %1) #6, !dbg !86
  %tobool = icmp ne i32 %call, 0, !dbg !86
  %lnot = xor i1 %tobool, true, !dbg !86
  %lnot1 = xor i1 %lnot, true, !dbg !86
  %lnot2 = xor i1 %lnot1, true, !dbg !86
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !86
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !86
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !87
  %tobool3 = icmp ne i32 %2, 0, !dbg !87
  %lnot4 = xor i1 %tobool3, true, !dbg !87
  %lnot6 = xor i1 %lnot4, true, !dbg !87
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !87
  %conv = sext i32 %lnot.ext7 to i64, !dbg !87
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !87
  %tobool8 = icmp ne i64 %expval, 0, !dbg !87
  br i1 %tobool8, label %if.then, label %if.end, !dbg !86

if.then:                                          ; preds = %do.end
  br label %do.body9, !dbg !87

do.body9:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #5, !dbg !88
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !61, metadata !DIExpression()), !dbg !88
  store i32 2305, ptr %__flags, align 4, !dbg !88
  br label %do.body10, !dbg !88

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !89

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !89

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !88

do.body13:                                        ; preds = %do.end12
  %3 = load i32, ptr %__flags, align 4, !dbg !91
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 79, i32 %3, i64 12) #5, !dbg !91, !srcloc !93
  br label %do.cond14, !dbg !91

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !91

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !88

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !94

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !94

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #5, !dbg !87
  br label %do.cond19, !dbg !88

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !88

do.end20:                                         ; preds = %do.cond19
  br label %if.end, !dbg !88

if.end:                                           ; preds = %do.end20, %do.end
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !86
  %tobool21 = icmp ne i32 %4, 0, !dbg !86
  %lnot22 = xor i1 %tobool21, true, !dbg !86
  %lnot24 = xor i1 %lnot22, true, !dbg !86
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !86
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !86
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !86
  store i64 %expval27, ptr %tmp, align 8, !dbg !87
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #5, !dbg !96
  %5 = load i64, ptr %tmp, align 8, !dbg !86
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on28) #5, !dbg !97
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on28, metadata !64, metadata !DIExpression()), !dbg !97
  %6 = load ptr, ptr %node.addr, align 8, !dbg !97
  %prio_list = getelementptr inbounds %struct.plist_node, ptr %6, i32 0, i32 1, !dbg !97
  %call29 = call i32 @list_empty(ptr noundef %prio_list) #6, !dbg !97
  %tobool30 = icmp ne i32 %call29, 0, !dbg !97
  %lnot31 = xor i1 %tobool30, true, !dbg !97
  %lnot33 = xor i1 %lnot31, true, !dbg !97
  %lnot35 = xor i1 %lnot33, true, !dbg !97
  %lnot.ext36 = zext i1 %lnot35 to i32, !dbg !97
  store i32 %lnot.ext36, ptr %__ret_warn_on28, align 4, !dbg !97
  %7 = load i32, ptr %__ret_warn_on28, align 4, !dbg !98
  %tobool37 = icmp ne i32 %7, 0, !dbg !98
  %lnot38 = xor i1 %tobool37, true, !dbg !98
  %lnot40 = xor i1 %lnot38, true, !dbg !98
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !98
  %conv42 = sext i32 %lnot.ext41 to i64, !dbg !98
  %expval43 = call i64 @llvm.expect.i64(i64 %conv42, i64 0), !dbg !98
  %tobool44 = icmp ne i64 %expval43, 0, !dbg !98
  br i1 %tobool44, label %if.then45, label %if.end59, !dbg !97

if.then45:                                        ; preds = %if.end
  br label %do.body46, !dbg !98

do.body46:                                        ; preds = %if.then45
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags47) #5, !dbg !99
  call void @llvm.dbg.declare(metadata ptr %__flags47, metadata !66, metadata !DIExpression()), !dbg !99
  store i32 2305, ptr %__flags47, align 4, !dbg !99
  br label %do.body48, !dbg !99

do.body48:                                        ; preds = %do.body46
  br label %do.cond49, !dbg !100

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !100

do.end50:                                         ; preds = %do.cond49
  br label %do.body51, !dbg !99

do.body51:                                        ; preds = %do.end50
  %8 = load i32, ptr %__flags47, align 4, !dbg !102
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 80, i32 %8, i64 12) #5, !dbg !102, !srcloc !104
  br label %do.cond52, !dbg !102

do.cond52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !102

do.end53:                                         ; preds = %do.cond52
  br label %do.body54, !dbg !99

do.body54:                                        ; preds = %do.end53
  br label %do.cond55, !dbg !105

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !105

do.end56:                                         ; preds = %do.cond55
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags47) #5, !dbg !98
  br label %do.cond57, !dbg !99

do.cond57:                                        ; preds = %do.end56
  br label %do.end58, !dbg !99

do.end58:                                         ; preds = %do.cond57
  br label %if.end59, !dbg !99

if.end59:                                         ; preds = %do.end58, %if.end
  %9 = load i32, ptr %__ret_warn_on28, align 4, !dbg !97
  %tobool61 = icmp ne i32 %9, 0, !dbg !97
  %lnot62 = xor i1 %tobool61, true, !dbg !97
  %lnot64 = xor i1 %lnot62, true, !dbg !97
  %lnot.ext65 = zext i1 %lnot64 to i32, !dbg !97
  %conv66 = sext i32 %lnot.ext65 to i64, !dbg !97
  %expval67 = call i64 @llvm.expect.i64(i64 %conv66, i64 0), !dbg !97
  store i64 %expval67, ptr %tmp60, align 8, !dbg !98
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on28) #5, !dbg !107
  %10 = load i64, ptr %tmp60, align 8, !dbg !97
  %11 = load ptr, ptr %head.addr, align 8, !dbg !108
  %call68 = call i32 @plist_head_empty(ptr noundef %11) #6, !dbg !110
  %tobool69 = icmp ne i32 %call68, 0, !dbg !110
  br i1 %tobool69, label %if.then70, label %if.end71, !dbg !111

if.then70:                                        ; preds = %if.end59
  br label %ins_node, !dbg !112

if.end71:                                         ; preds = %if.end59
  %12 = load ptr, ptr %head.addr, align 8, !dbg !113
  %call72 = call ptr @plist_first(ptr noundef %12) #6, !dbg !114
  store ptr %call72, ptr %iter, align 8, !dbg !115
  store ptr %call72, ptr %first, align 8, !dbg !116
  br label %do.body73, !dbg !117

do.body73:                                        ; preds = %do.cond81, %if.end71
  %13 = load ptr, ptr %node.addr, align 8, !dbg !118
  %prio = getelementptr inbounds %struct.plist_node, ptr %13, i32 0, i32 0, !dbg !120
  %14 = load i32, ptr %prio, align 8, !dbg !120
  %15 = load ptr, ptr %iter, align 8, !dbg !121
  %prio74 = getelementptr inbounds %struct.plist_node, ptr %15, i32 0, i32 0, !dbg !122
  %16 = load i32, ptr %prio74, align 8, !dbg !122
  %cmp = icmp slt i32 %14, %16, !dbg !123
  br i1 %cmp, label %if.then76, label %if.end78, !dbg !124

if.then76:                                        ; preds = %do.body73
  %17 = load ptr, ptr %iter, align 8, !dbg !125
  %node_list77 = getelementptr inbounds %struct.plist_node, ptr %17, i32 0, i32 2, !dbg !127
  store ptr %node_list77, ptr %node_next, align 8, !dbg !128
  br label %do.end84, !dbg !129

if.end78:                                         ; preds = %do.body73
  %18 = load ptr, ptr %iter, align 8, !dbg !130
  store ptr %18, ptr %prev, align 8, !dbg !131
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #5, !dbg !132
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !69, metadata !DIExpression()), !dbg !132
  %19 = load ptr, ptr %iter, align 8, !dbg !132
  %prio_list79 = getelementptr inbounds %struct.plist_node, ptr %19, i32 0, i32 1, !dbg !132
  %next = getelementptr inbounds %struct.list_head, ptr %prio_list79, i32 0, i32 0, !dbg !132
  %20 = load ptr, ptr %next, align 8, !dbg !132
  store ptr %20, ptr %__mptr, align 8, !dbg !132
  %21 = load ptr, ptr %__mptr, align 8, !dbg !132
  %add.ptr = getelementptr i8, ptr %21, i64 -8, !dbg !132
  store ptr %add.ptr, ptr %tmp80, align 8, !dbg !132
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #5, !dbg !133
  %22 = load ptr, ptr %tmp80, align 8, !dbg !132
  store ptr %22, ptr %iter, align 8, !dbg !134
  br label %do.cond81, !dbg !135

do.cond81:                                        ; preds = %if.end78
  %23 = load ptr, ptr %iter, align 8, !dbg !136
  %24 = load ptr, ptr %first, align 8, !dbg !137
  %cmp82 = icmp ne ptr %23, %24, !dbg !138
  br i1 %cmp82, label %do.body73, label %do.end84, !dbg !135, !llvm.loop !139

do.end84:                                         ; preds = %do.cond81, %if.then76
  %25 = load ptr, ptr %prev, align 8, !dbg !143
  %tobool85 = icmp ne ptr %25, null, !dbg !143
  br i1 %tobool85, label %lor.lhs.false, label %if.then90, !dbg !145

lor.lhs.false:                                    ; preds = %do.end84
  %26 = load ptr, ptr %prev, align 8, !dbg !146
  %prio86 = getelementptr inbounds %struct.plist_node, ptr %26, i32 0, i32 0, !dbg !147
  %27 = load i32, ptr %prio86, align 8, !dbg !147
  %28 = load ptr, ptr %node.addr, align 8, !dbg !148
  %prio87 = getelementptr inbounds %struct.plist_node, ptr %28, i32 0, i32 0, !dbg !149
  %29 = load i32, ptr %prio87, align 8, !dbg !149
  %cmp88 = icmp ne i32 %27, %29, !dbg !150
  br i1 %cmp88, label %if.then90, label %if.end93, !dbg !151

if.then90:                                        ; preds = %lor.lhs.false, %do.end84
  %30 = load ptr, ptr %node.addr, align 8, !dbg !152
  %prio_list91 = getelementptr inbounds %struct.plist_node, ptr %30, i32 0, i32 1, !dbg !153
  %31 = load ptr, ptr %iter, align 8, !dbg !154
  %prio_list92 = getelementptr inbounds %struct.plist_node, ptr %31, i32 0, i32 1, !dbg !155
  call void @list_add_tail(ptr noundef %prio_list91, ptr noundef %prio_list92) #6, !dbg !156
  br label %if.end93, !dbg !156

if.end93:                                         ; preds = %if.then90, %lor.lhs.false
  br label %ins_node, !dbg !149

ins_node:                                         ; preds = %if.end93, %if.then70
  call void @llvm.dbg.label(metadata !72), !dbg !157
  %32 = load ptr, ptr %node.addr, align 8, !dbg !158
  %node_list94 = getelementptr inbounds %struct.plist_node, ptr %32, i32 0, i32 2, !dbg !159
  %33 = load ptr, ptr %node_next, align 8, !dbg !160
  call void @list_add_tail(ptr noundef %node_list94, ptr noundef %33) #6, !dbg !161
  br label %do.body95, !dbg !162

do.body95:                                        ; preds = %ins_node
  br label %do.cond96, !dbg !163

do.cond96:                                        ; preds = %do.body95
  br label %do.end97, !dbg !163

do.end97:                                         ; preds = %do.cond96
  call void @llvm.lifetime.end.p0(i64 8, ptr %node_next) #5, !dbg !165
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #5, !dbg !165
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #5, !dbg !165
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #5, !dbg !165
  ret void, !dbg !165
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @plist_node_empty(ptr noundef %node) #3 align 16 !dbg !166 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !172, metadata !DIExpression()), !dbg !173
  %0 = load ptr, ptr %node.addr, align 8, !dbg !174
  %node_list = getelementptr inbounds %struct.plist_node, ptr %0, i32 0, i32 2, !dbg !175
  %call = call i32 @list_empty(ptr noundef %node_list) #6, !dbg !176
  ret i32 %call, !dbg !177
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #3 align 16 !dbg !178 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !185, metadata !DIExpression()), !dbg !186
  br label %do.body, !dbg !187

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !189

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !187
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !187
  %1 = load volatile ptr, ptr %next, align 8, !dbg !187
  store ptr %1, ptr %tmp, align 8, !dbg !189
  %2 = load ptr, ptr %tmp, align 8, !dbg !187
  %3 = load ptr, ptr %head.addr, align 8, !dbg !191
  %cmp = icmp eq ptr %2, %3, !dbg !192
  %conv = zext i1 %cmp to i32, !dbg !192
  ret i32 %conv, !dbg !193
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @plist_head_empty(ptr noundef %head) #3 align 16 !dbg !194 {
entry:
  %head.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !200, metadata !DIExpression()), !dbg !201
  %0 = load ptr, ptr %head.addr, align 8, !dbg !202
  %node_list = getelementptr inbounds %struct.plist_head, ptr %0, i32 0, i32 0, !dbg !203
  %call = call i32 @list_empty(ptr noundef %node_list) #6, !dbg !204
  ret i32 %call, !dbg !205
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @plist_first(ptr noundef %head) #3 align 16 !dbg !206 {
entry:
  %head.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !210, metadata !DIExpression()), !dbg !213
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #5, !dbg !214
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !211, metadata !DIExpression()), !dbg !214
  %0 = load ptr, ptr %head.addr, align 8, !dbg !214
  %node_list = getelementptr inbounds %struct.plist_head, ptr %0, i32 0, i32 0, !dbg !214
  %next = getelementptr inbounds %struct.list_head, ptr %node_list, i32 0, i32 0, !dbg !214
  %1 = load ptr, ptr %next, align 8, !dbg !214
  store ptr %1, ptr %__mptr, align 8, !dbg !214
  %2 = load ptr, ptr %__mptr, align 8, !dbg !214
  %add.ptr = getelementptr i8, ptr %2, i64 -24, !dbg !214
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !214
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #5, !dbg !215
  %3 = load ptr, ptr %tmp, align 8, !dbg !214
  ret ptr %3, !dbg !216
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !217 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !221, metadata !DIExpression()), !dbg !223
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !222, metadata !DIExpression()), !dbg !224
  %0 = load ptr, ptr %new.addr, align 8, !dbg !225
  %1 = load ptr, ptr %head.addr, align 8, !dbg !226
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !227
  %2 = load ptr, ptr %prev, align 8, !dbg !227
  %3 = load ptr, ptr %head.addr, align 8, !dbg !228
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #6, !dbg !229
  ret void, !dbg !230
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @plist_del(ptr noundef %node, ptr noundef %head) #0 align 16 !dbg !231 {
entry:
  %node.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %next3 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !233, metadata !DIExpression()), !dbg !242
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !234, metadata !DIExpression()), !dbg !243
  br label %do.body, !dbg !244

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !245

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %node.addr, align 8, !dbg !247
  %prio_list = getelementptr inbounds %struct.plist_node, ptr %0, i32 0, i32 1, !dbg !248
  %call = call i32 @list_empty(ptr noundef %prio_list) #6, !dbg !249
  %tobool = icmp ne i32 %call, 0, !dbg !249
  br i1 %tobool, label %if.end14, label %if.then, !dbg !250

if.then:                                          ; preds = %do.end
  %1 = load ptr, ptr %node.addr, align 8, !dbg !251
  %node_list = getelementptr inbounds %struct.plist_node, ptr %1, i32 0, i32 2, !dbg !252
  %next = getelementptr inbounds %struct.list_head, ptr %node_list, i32 0, i32 0, !dbg !253
  %2 = load ptr, ptr %next, align 8, !dbg !253
  %3 = load ptr, ptr %head.addr, align 8, !dbg !254
  %node_list1 = getelementptr inbounds %struct.plist_head, ptr %3, i32 0, i32 0, !dbg !255
  %cmp = icmp ne ptr %2, %node_list1, !dbg !256
  br i1 %cmp, label %if.then2, label %if.end12, !dbg !257

if.then2:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %next3) #5, !dbg !258
  call void @llvm.dbg.declare(metadata ptr %next3, metadata !235, metadata !DIExpression()), !dbg !259
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #5, !dbg !260
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !240, metadata !DIExpression()), !dbg !260
  %4 = load ptr, ptr %node.addr, align 8, !dbg !260
  %node_list4 = getelementptr inbounds %struct.plist_node, ptr %4, i32 0, i32 2, !dbg !260
  %next5 = getelementptr inbounds %struct.list_head, ptr %node_list4, i32 0, i32 0, !dbg !260
  %5 = load ptr, ptr %next5, align 8, !dbg !260
  store ptr %5, ptr %__mptr, align 8, !dbg !260
  %6 = load ptr, ptr %__mptr, align 8, !dbg !260
  %add.ptr = getelementptr i8, ptr %6, i64 -24, !dbg !260
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !260
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #5, !dbg !261
  %7 = load ptr, ptr %tmp, align 8, !dbg !260
  store ptr %7, ptr %next3, align 8, !dbg !262
  %8 = load ptr, ptr %next3, align 8, !dbg !263
  %prio_list6 = getelementptr inbounds %struct.plist_node, ptr %8, i32 0, i32 1, !dbg !265
  %call7 = call i32 @list_empty(ptr noundef %prio_list6) #6, !dbg !266
  %tobool8 = icmp ne i32 %call7, 0, !dbg !266
  br i1 %tobool8, label %if.then9, label %if.end, !dbg !267

if.then9:                                         ; preds = %if.then2
  %9 = load ptr, ptr %next3, align 8, !dbg !268
  %prio_list10 = getelementptr inbounds %struct.plist_node, ptr %9, i32 0, i32 1, !dbg !269
  %10 = load ptr, ptr %node.addr, align 8, !dbg !270
  %prio_list11 = getelementptr inbounds %struct.plist_node, ptr %10, i32 0, i32 1, !dbg !271
  call void @list_add(ptr noundef %prio_list10, ptr noundef %prio_list11) #6, !dbg !272
  br label %if.end, !dbg !272

if.end:                                           ; preds = %if.then9, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %next3) #5, !dbg !273
  br label %if.end12, !dbg !274

if.end12:                                         ; preds = %if.end, %if.then
  %11 = load ptr, ptr %node.addr, align 8, !dbg !275
  %prio_list13 = getelementptr inbounds %struct.plist_node, ptr %11, i32 0, i32 1, !dbg !276
  call void @list_del_init(ptr noundef %prio_list13) #6, !dbg !277
  br label %if.end14, !dbg !278

if.end14:                                         ; preds = %if.end12, %do.end
  %12 = load ptr, ptr %node.addr, align 8, !dbg !279
  %node_list15 = getelementptr inbounds %struct.plist_node, ptr %12, i32 0, i32 2, !dbg !280
  call void @list_del_init(ptr noundef %node_list15) #6, !dbg !281
  br label %do.body16, !dbg !282

do.body16:                                        ; preds = %if.end14
  br label %do.end17, !dbg !283

do.end17:                                         ; preds = %do.body16
  ret void, !dbg !285
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !286 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !288, metadata !DIExpression()), !dbg !290
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !289, metadata !DIExpression()), !dbg !291
  %0 = load ptr, ptr %new.addr, align 8, !dbg !292
  %1 = load ptr, ptr %head.addr, align 8, !dbg !293
  %2 = load ptr, ptr %head.addr, align 8, !dbg !294
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !295
  %3 = load ptr, ptr %next, align 8, !dbg !295
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #6, !dbg !296
  ret void, !dbg !297
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #3 align 16 !dbg !298 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !302, metadata !DIExpression()), !dbg !303
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !304
  call void @__list_del_entry(ptr noundef %0) #6, !dbg !305
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !306
  call void @INIT_LIST_HEAD(ptr noundef %1) #6, !dbg !307
  ret void, !dbg !308
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @plist_requeue(ptr noundef %node, ptr noundef %head) #0 align 16 !dbg !309 {
entry:
  %node.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %node_next = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr48 = alloca ptr, align 8
  %tmp51 = alloca ptr, align 8
  %__mptr66 = alloca ptr, align 8
  %tmp69 = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !311, metadata !DIExpression()), !dbg !323
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !312, metadata !DIExpression()), !dbg !324
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #5, !dbg !325
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !313, metadata !DIExpression()), !dbg !326
  call void @llvm.lifetime.start.p0(i64 8, ptr %node_next) #5, !dbg !327
  call void @llvm.dbg.declare(metadata ptr %node_next, metadata !314, metadata !DIExpression()), !dbg !328
  %0 = load ptr, ptr %head.addr, align 8, !dbg !329
  %node_list = getelementptr inbounds %struct.plist_head, ptr %0, i32 0, i32 0, !dbg !330
  store ptr %node_list, ptr %node_next, align 8, !dbg !328
  br label %do.body, !dbg !331

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !332

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !332

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !334

do.body1:                                         ; preds = %do.end
  %1 = load ptr, ptr %head.addr, align 8, !dbg !335
  %call = call i32 @plist_head_empty(ptr noundef %1) #6, !dbg !335
  %tobool = icmp ne i32 %call, 0, !dbg !335
  %lnot = xor i1 %tobool, true, !dbg !335
  %lnot2 = xor i1 %lnot, true, !dbg !335
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !335
  %conv = sext i32 %lnot.ext to i64, !dbg !335
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !335
  %tobool3 = icmp ne i64 %expval, 0, !dbg !335
  br i1 %tobool3, label %if.then, label %if.end, !dbg !338

if.then:                                          ; preds = %do.body1
  br label %do.body4, !dbg !335

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !339

do.body5:                                         ; preds = %do.body4
  br label %do.cond6, !dbg !341

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !341

do.end7:                                          ; preds = %do.cond6
  br label %do.body8, !dbg !339

do.body8:                                         ; preds = %do.end7
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 151, i32 0, i64 12) #5, !dbg !343, !srcloc !345
  br label %do.cond9, !dbg !343

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !343

do.end10:                                         ; preds = %do.cond9
  unreachable, !dbg !339

do.cond11:                                        ; No predecessors!
  br label %do.end12, !dbg !339

do.end12:                                         ; preds = %do.cond11
  br label %if.end, !dbg !339

if.end:                                           ; preds = %do.end12, %do.body1
  br label %do.cond13, !dbg !338

do.cond13:                                        ; preds = %if.end
  br label %do.end14, !dbg !338

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !346

do.body15:                                        ; preds = %do.end14
  %2 = load ptr, ptr %node.addr, align 8, !dbg !347
  %call16 = call i32 @plist_node_empty(ptr noundef %2) #6, !dbg !347
  %tobool17 = icmp ne i32 %call16, 0, !dbg !347
  %lnot18 = xor i1 %tobool17, true, !dbg !347
  %lnot20 = xor i1 %lnot18, true, !dbg !347
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !347
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !347
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !347
  %tobool24 = icmp ne i64 %expval23, 0, !dbg !347
  br i1 %tobool24, label %if.then25, label %if.end35, !dbg !350

if.then25:                                        ; preds = %do.body15
  br label %do.body26, !dbg !347

do.body26:                                        ; preds = %if.then25
  br label %do.body27, !dbg !351

do.body27:                                        ; preds = %do.body26
  br label %do.cond28, !dbg !353

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !353

do.end29:                                         ; preds = %do.cond28
  br label %do.body30, !dbg !351

do.body30:                                        ; preds = %do.end29
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 152, i32 0, i64 12) #5, !dbg !355, !srcloc !357
  br label %do.cond31, !dbg !355

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !355

do.end32:                                         ; preds = %do.cond31
  unreachable, !dbg !351

do.cond33:                                        ; No predecessors!
  br label %do.end34, !dbg !351

do.end34:                                         ; preds = %do.cond33
  br label %if.end35, !dbg !351

if.end35:                                         ; preds = %do.end34, %do.body15
  br label %do.cond36, !dbg !350

do.cond36:                                        ; preds = %if.end35
  br label %do.end37, !dbg !350

do.end37:                                         ; preds = %do.cond36
  %3 = load ptr, ptr %node.addr, align 8, !dbg !358
  %4 = load ptr, ptr %head.addr, align 8, !dbg !360
  %call38 = call ptr @plist_last(ptr noundef %4) #6, !dbg !361
  %cmp = icmp eq ptr %3, %call38, !dbg !362
  br i1 %cmp, label %if.then40, label %if.end41, !dbg !363

if.then40:                                        ; preds = %do.end37
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !364

if.end41:                                         ; preds = %do.end37
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #5, !dbg !365
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !315, metadata !DIExpression()), !dbg !365
  %5 = load ptr, ptr %node.addr, align 8, !dbg !365
  %node_list42 = getelementptr inbounds %struct.plist_node, ptr %5, i32 0, i32 2, !dbg !365
  %next = getelementptr inbounds %struct.list_head, ptr %node_list42, i32 0, i32 0, !dbg !365
  %6 = load ptr, ptr %next, align 8, !dbg !365
  store ptr %6, ptr %__mptr, align 8, !dbg !365
  %7 = load ptr, ptr %__mptr, align 8, !dbg !365
  %add.ptr = getelementptr i8, ptr %7, i64 -24, !dbg !365
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !365
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #5, !dbg !366
  %8 = load ptr, ptr %tmp, align 8, !dbg !365
  store ptr %8, ptr %iter, align 8, !dbg !367
  %9 = load ptr, ptr %node.addr, align 8, !dbg !368
  %prio = getelementptr inbounds %struct.plist_node, ptr %9, i32 0, i32 0, !dbg !370
  %10 = load i32, ptr %prio, align 8, !dbg !370
  %11 = load ptr, ptr %iter, align 8, !dbg !371
  %prio43 = getelementptr inbounds %struct.plist_node, ptr %11, i32 0, i32 0, !dbg !372
  %12 = load i32, ptr %prio43, align 8, !dbg !372
  %cmp44 = icmp ne i32 %10, %12, !dbg !373
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !374

if.then46:                                        ; preds = %if.end41
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !375

if.end47:                                         ; preds = %if.end41
  %13 = load ptr, ptr %node.addr, align 8, !dbg !376
  %14 = load ptr, ptr %head.addr, align 8, !dbg !377
  call void @plist_del(ptr noundef %13, ptr noundef %14) #6, !dbg !378
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr48) #5, !dbg !379
  call void @llvm.dbg.declare(metadata ptr %__mptr48, metadata !317, metadata !DIExpression()), !dbg !379
  %15 = load ptr, ptr %iter, align 8, !dbg !379
  %node_list49 = getelementptr inbounds %struct.plist_node, ptr %15, i32 0, i32 2, !dbg !379
  %next50 = getelementptr inbounds %struct.list_head, ptr %node_list49, i32 0, i32 0, !dbg !379
  %16 = load ptr, ptr %next50, align 8, !dbg !379
  store ptr %16, ptr %__mptr48, align 8, !dbg !379
  %17 = load ptr, ptr %__mptr48, align 8, !dbg !379
  %add.ptr52 = getelementptr i8, ptr %17, i64 -24, !dbg !379
  store ptr %add.ptr52, ptr %tmp51, align 8, !dbg !379
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr48) #5, !dbg !380
  %18 = load ptr, ptr %tmp51, align 8, !dbg !379
  store ptr %18, ptr %iter, align 8, !dbg !380
  br label %for.cond, !dbg !380

for.cond:                                         ; preds = %for.inc, %if.end47
  %19 = load ptr, ptr %iter, align 8, !dbg !381
  %node_list53 = getelementptr inbounds %struct.plist_node, ptr %19, i32 0, i32 2, !dbg !381
  %20 = load ptr, ptr %head.addr, align 8, !dbg !381
  %node_list54 = getelementptr inbounds %struct.plist_head, ptr %20, i32 0, i32 0, !dbg !381
  %cmp55 = icmp eq ptr %node_list53, %node_list54, !dbg !381
  %lnot57 = xor i1 %cmp55, true, !dbg !381
  br i1 %lnot57, label %for.body, label %for.end, !dbg !380

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %node.addr, align 8, !dbg !382
  %prio59 = getelementptr inbounds %struct.plist_node, ptr %21, i32 0, i32 0, !dbg !385
  %22 = load i32, ptr %prio59, align 8, !dbg !385
  %23 = load ptr, ptr %iter, align 8, !dbg !386
  %prio60 = getelementptr inbounds %struct.plist_node, ptr %23, i32 0, i32 0, !dbg !387
  %24 = load i32, ptr %prio60, align 8, !dbg !387
  %cmp61 = icmp ne i32 %22, %24, !dbg !388
  br i1 %cmp61, label %if.then63, label %if.end65, !dbg !389

if.then63:                                        ; preds = %for.body
  %25 = load ptr, ptr %iter, align 8, !dbg !390
  %node_list64 = getelementptr inbounds %struct.plist_node, ptr %25, i32 0, i32 2, !dbg !392
  store ptr %node_list64, ptr %node_next, align 8, !dbg !393
  br label %for.end, !dbg !394

if.end65:                                         ; preds = %for.body
  br label %for.inc, !dbg !395

for.inc:                                          ; preds = %if.end65
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr66) #5, !dbg !396
  call void @llvm.dbg.declare(metadata ptr %__mptr66, metadata !320, metadata !DIExpression()), !dbg !396
  %26 = load ptr, ptr %iter, align 8, !dbg !396
  %node_list67 = getelementptr inbounds %struct.plist_node, ptr %26, i32 0, i32 2, !dbg !396
  %next68 = getelementptr inbounds %struct.list_head, ptr %node_list67, i32 0, i32 0, !dbg !396
  %27 = load ptr, ptr %next68, align 8, !dbg !396
  store ptr %27, ptr %__mptr66, align 8, !dbg !396
  %28 = load ptr, ptr %__mptr66, align 8, !dbg !396
  %add.ptr70 = getelementptr i8, ptr %28, i64 -24, !dbg !396
  store ptr %add.ptr70, ptr %tmp69, align 8, !dbg !396
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr66) #5, !dbg !381
  %29 = load ptr, ptr %tmp69, align 8, !dbg !396
  store ptr %29, ptr %iter, align 8, !dbg !381
  br label %for.cond, !dbg !381, !llvm.loop !397

for.end:                                          ; preds = %if.then63, %for.cond
  %30 = load ptr, ptr %node.addr, align 8, !dbg !399
  %node_list71 = getelementptr inbounds %struct.plist_node, ptr %30, i32 0, i32 2, !dbg !400
  %31 = load ptr, ptr %node_next, align 8, !dbg !401
  call void @list_add_tail(ptr noundef %node_list71, ptr noundef %31) #6, !dbg !402
  br label %do.body72, !dbg !403

do.body72:                                        ; preds = %for.end
  br label %do.cond73, !dbg !404

do.cond73:                                        ; preds = %do.body72
  br label %do.end74, !dbg !404

do.end74:                                         ; preds = %do.cond73
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !406
  br label %cleanup, !dbg !406

cleanup:                                          ; preds = %do.end74, %if.then46, %if.then40
  call void @llvm.lifetime.end.p0(i64 8, ptr %node_next) #5, !dbg !406
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #5, !dbg !406
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !406

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @plist_last(ptr noundef %head) #3 align 16 !dbg !407 {
entry:
  %head.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !409, metadata !DIExpression()), !dbg !412
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #5, !dbg !413
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !410, metadata !DIExpression()), !dbg !413
  %0 = load ptr, ptr %head.addr, align 8, !dbg !413
  %node_list = getelementptr inbounds %struct.plist_head, ptr %0, i32 0, i32 0, !dbg !413
  %prev = getelementptr inbounds %struct.list_head, ptr %node_list, i32 0, i32 1, !dbg !413
  %1 = load ptr, ptr %prev, align 8, !dbg !413
  store ptr %1, ptr %__mptr, align 8, !dbg !413
  %2 = load ptr, ptr %__mptr, align 8, !dbg !413
  %add.ptr = getelementptr i8, ptr %2, i64 -24, !dbg !413
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !413
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #5, !dbg !414
  %3 = load ptr, ptr %tmp, align 8, !dbg !413
  ret ptr %3, !dbg !415
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !416 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !420, metadata !DIExpression()), !dbg !423
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !421, metadata !DIExpression()), !dbg !424
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !422, metadata !DIExpression()), !dbg !425
  %0 = load ptr, ptr %new.addr, align 8, !dbg !426
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !428
  %2 = load ptr, ptr %next.addr, align 8, !dbg !429
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6, !dbg !430
  br i1 %call, label %if.end, label %if.then, !dbg !431

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !432

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !433
  %4 = load ptr, ptr %next.addr, align 8, !dbg !434
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !435
  store ptr %3, ptr %prev1, align 8, !dbg !436
  %5 = load ptr, ptr %next.addr, align 8, !dbg !437
  %6 = load ptr, ptr %new.addr, align 8, !dbg !438
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !439
  store ptr %5, ptr %next2, align 8, !dbg !440
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !441
  %8 = load ptr, ptr %new.addr, align 8, !dbg !442
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !443
  store ptr %7, ptr %prev3, align 8, !dbg !444
  br label %do.body, !dbg !445

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !446

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !448

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !446

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !450
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !450
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !450
  store volatile ptr %9, ptr %next6, align 8, !dbg !450
  br label %do.end7, !dbg !450

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !446

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !452
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !453 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !459, metadata !DIExpression()), !dbg !462
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !460, metadata !DIExpression()), !dbg !463
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !461, metadata !DIExpression()), !dbg !464
  ret i1 true, !dbg !465
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !466 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !468, metadata !DIExpression()), !dbg !469
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !470
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #6, !dbg !472
  br i1 %call, label %if.end, label %if.then, !dbg !473

if.then:                                          ; preds = %entry
  br label %return, !dbg !474

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !475
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !476
  %2 = load ptr, ptr %prev, align 8, !dbg !476
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !477
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !478
  %4 = load ptr, ptr %next, align 8, !dbg !478
  call void @__list_del(ptr noundef %2, ptr noundef %4) #6, !dbg !479
  br label %return, !dbg !480

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !480
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !481 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !483, metadata !DIExpression()), !dbg !484
  br label %do.body, !dbg !485

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !486

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !488

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !486

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !490
  %1 = load ptr, ptr %list.addr, align 8, !dbg !490
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !490
  store volatile ptr %0, ptr %next, align 8, !dbg !490
  br label %do.end3, !dbg !490

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !486

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !492

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !493

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !495

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !493

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !497
  %3 = load ptr, ptr %list.addr, align 8, !dbg !497
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !497
  store volatile ptr %2, ptr %prev, align 8, !dbg !497
  br label %do.end9, !dbg !497

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !493

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !499
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !500 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !504, metadata !DIExpression()), !dbg !505
  ret i1 true, !dbg !506
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !507 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !509, metadata !DIExpression()), !dbg !511
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !510, metadata !DIExpression()), !dbg !512
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !513
  %1 = load ptr, ptr %next.addr, align 8, !dbg !514
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !515
  store ptr %0, ptr %prev1, align 8, !dbg !516
  br label %do.body, !dbg !517

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !518

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !520

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !518

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !522
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !522
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !522
  store volatile ptr %2, ptr %next4, align 8, !dbg !522
  br label %do.end5, !dbg !522

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !518

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !524
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/plist.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b8481c16c19668dd190d6539ec5a9d7")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 12)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.plist.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/plist\22 -D KBUILD_BASENAME=\22plist\22 -D KBUILD_MODNAME=\22plist\22 -D __KBUILD_MODNAME=kmod_plist -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/plist.ll lib/plist.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !8, retainedTypes: !15, globals: !35, splitDebugInlining: false, nameTableKind: None)
!8 = !{!9}
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 10, baseType: !11, size: 32, elements: !12)
!10 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !14}
!13 = !DIEnumerator(name: "false", value: 0)
!14 = !DIEnumerator(name: "true", value: 1)
!15 = !{!16, !17, !31, !34}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !19, line: 86, size: 320, elements: !20)
!19 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!20 = !{!21, !23, !30}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !18, file: !19, line: 87, baseType: !22, size: 32)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !18, file: !19, line: 88, baseType: !24, size: 128, offset: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !25, line: 190, size: 128, elements: !26)
!25 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!26 = !{!27, !29}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !24, file: !25, line: 191, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !24, file: !25, line: 191, baseType: !28, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !18, file: !19, line: 89, baseType: !24, size: 128, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !28)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!35 = !{!0}
!36 = !{i32 7, !"Dwarf Version", i32 5}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 8, !"cf-protection-branch", i32 1}
!40 = !{i32 4, !"function_return_thunk_extern", i32 1}
!41 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!42 = !{i32 1, !"Code Model", i32 2}
!43 = !{i32 1, !"override-stack-alignment", i32 8}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = distinct !DISubprogram(name: "plist_add", scope: !2, file: !2, line: 73, type: !46, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !52)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !17, !48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !19, line: 82, size: 128, elements: !50)
!50 = !{!51}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !49, file: !19, line: 83, baseType: !24, size: 128)
!52 = !{!53, !54, !55, !56, !57, !58, !59, !61, !64, !66, !69, !72}
!53 = !DILocalVariable(name: "node", arg: 1, scope: !45, file: !2, line: 73, type: !17)
!54 = !DILocalVariable(name: "head", arg: 2, scope: !45, file: !2, line: 73, type: !48)
!55 = !DILocalVariable(name: "first", scope: !45, file: !2, line: 75, type: !17)
!56 = !DILocalVariable(name: "iter", scope: !45, file: !2, line: 75, type: !17)
!57 = !DILocalVariable(name: "prev", scope: !45, file: !2, line: 75, type: !17)
!58 = !DILocalVariable(name: "node_next", scope: !45, file: !2, line: 76, type: !28)
!59 = !DILocalVariable(name: "__ret_warn_on", scope: !60, file: !2, line: 79, type: !22)
!60 = distinct !DILexicalBlock(scope: !45, file: !2, line: 79, column: 2)
!61 = !DILocalVariable(name: "__flags", scope: !62, file: !2, line: 79, type: !22)
!62 = distinct !DILexicalBlock(scope: !63, file: !2, line: 79, column: 2)
!63 = distinct !DILexicalBlock(scope: !60, file: !2, line: 79, column: 2)
!64 = !DILocalVariable(name: "__ret_warn_on", scope: !65, file: !2, line: 80, type: !22)
!65 = distinct !DILexicalBlock(scope: !45, file: !2, line: 80, column: 2)
!66 = !DILocalVariable(name: "__flags", scope: !67, file: !2, line: 80, type: !22)
!67 = distinct !DILexicalBlock(scope: !68, file: !2, line: 80, column: 2)
!68 = distinct !DILexicalBlock(scope: !65, file: !2, line: 80, column: 2)
!69 = !DILocalVariable(name: "__mptr", scope: !70, file: !2, line: 94, type: !16)
!70 = distinct !DILexicalBlock(scope: !71, file: !2, line: 94, column: 10)
!71 = distinct !DILexicalBlock(scope: !45, file: !2, line: 87, column: 5)
!72 = !DILabel(scope: !45, name: "ins_node", file: !2, line: 100)
!73 = !DILocation(line: 73, column: 35, scope: !45)
!74 = !DILocation(line: 73, column: 60, scope: !45)
!75 = !DILocation(line: 75, column: 2, scope: !45)
!76 = !DILocation(line: 75, column: 21, scope: !45)
!77 = !DILocation(line: 75, column: 29, scope: !45)
!78 = !DILocation(line: 75, column: 36, scope: !45)
!79 = !DILocation(line: 76, column: 2, scope: !45)
!80 = !DILocation(line: 76, column: 20, scope: !45)
!81 = !DILocation(line: 76, column: 33, scope: !45)
!82 = !DILocation(line: 76, column: 39, scope: !45)
!83 = !DILocation(line: 78, column: 2, scope: !45)
!84 = !DILocation(line: 78, column: 2, scope: !85)
!85 = distinct !DILexicalBlock(scope: !45, file: !2, line: 78, column: 2)
!86 = !DILocation(line: 79, column: 2, scope: !60)
!87 = !DILocation(line: 79, column: 2, scope: !63)
!88 = !DILocation(line: 79, column: 2, scope: !62)
!89 = !DILocation(line: 79, column: 2, scope: !90)
!90 = distinct !DILexicalBlock(scope: !62, file: !2, line: 79, column: 2)
!91 = !DILocation(line: 79, column: 2, scope: !92)
!92 = distinct !DILexicalBlock(scope: !62, file: !2, line: 79, column: 2)
!93 = !{i64 2147959816, i64 2147959845, i64 2147959891, i64 2147959949, i64 2147960003, i64 2147960057, i64 2147960112, i64 2147960143, i64 2147960451, i64 2147960457, i64 2147960504, i64 2147960527, i64 2147960553}
!94 = !DILocation(line: 79, column: 2, scope: !95)
!95 = distinct !DILexicalBlock(scope: !62, file: !2, line: 79, column: 2)
!96 = !DILocation(line: 79, column: 2, scope: !45)
!97 = !DILocation(line: 80, column: 2, scope: !65)
!98 = !DILocation(line: 80, column: 2, scope: !68)
!99 = !DILocation(line: 80, column: 2, scope: !67)
!100 = !DILocation(line: 80, column: 2, scope: !101)
!101 = distinct !DILexicalBlock(scope: !67, file: !2, line: 80, column: 2)
!102 = !DILocation(line: 80, column: 2, scope: !103)
!103 = distinct !DILexicalBlock(scope: !67, file: !2, line: 80, column: 2)
!104 = !{i64 2147961319, i64 2147961348, i64 2147961394, i64 2147961452, i64 2147961506, i64 2147961560, i64 2147961615, i64 2147961646, i64 2147961954, i64 2147961960, i64 2147962007, i64 2147962030, i64 2147962056}
!105 = !DILocation(line: 80, column: 2, scope: !106)
!106 = distinct !DILexicalBlock(scope: !67, file: !2, line: 80, column: 2)
!107 = !DILocation(line: 80, column: 2, scope: !45)
!108 = !DILocation(line: 82, column: 23, scope: !109)
!109 = distinct !DILexicalBlock(scope: !45, file: !2, line: 82, column: 6)
!110 = !DILocation(line: 82, column: 6, scope: !109)
!111 = !DILocation(line: 82, column: 6, scope: !45)
!112 = !DILocation(line: 83, column: 3, scope: !109)
!113 = !DILocation(line: 85, column: 29, scope: !45)
!114 = !DILocation(line: 85, column: 17, scope: !45)
!115 = !DILocation(line: 85, column: 15, scope: !45)
!116 = !DILocation(line: 85, column: 8, scope: !45)
!117 = !DILocation(line: 87, column: 2, scope: !45)
!118 = !DILocation(line: 88, column: 7, scope: !119)
!119 = distinct !DILexicalBlock(scope: !71, file: !2, line: 88, column: 7)
!120 = !DILocation(line: 88, column: 13, scope: !119)
!121 = !DILocation(line: 88, column: 20, scope: !119)
!122 = !DILocation(line: 88, column: 26, scope: !119)
!123 = !DILocation(line: 88, column: 18, scope: !119)
!124 = !DILocation(line: 88, column: 7, scope: !71)
!125 = !DILocation(line: 89, column: 17, scope: !126)
!126 = distinct !DILexicalBlock(scope: !119, file: !2, line: 88, column: 32)
!127 = !DILocation(line: 89, column: 23, scope: !126)
!128 = !DILocation(line: 89, column: 14, scope: !126)
!129 = !DILocation(line: 90, column: 4, scope: !126)
!130 = !DILocation(line: 93, column: 10, scope: !71)
!131 = !DILocation(line: 93, column: 8, scope: !71)
!132 = !DILocation(line: 94, column: 10, scope: !70)
!133 = !DILocation(line: 94, column: 10, scope: !71)
!134 = !DILocation(line: 94, column: 8, scope: !71)
!135 = !DILocation(line: 96, column: 2, scope: !71)
!136 = !DILocation(line: 96, column: 11, scope: !45)
!137 = !DILocation(line: 96, column: 19, scope: !45)
!138 = !DILocation(line: 96, column: 16, scope: !45)
!139 = distinct !{!139, !117, !140, !141, !142}
!140 = !DILocation(line: 96, column: 24, scope: !45)
!141 = !{!"llvm.loop.mustprogress"}
!142 = !{!"llvm.loop.unroll.disable"}
!143 = !DILocation(line: 98, column: 7, scope: !144)
!144 = distinct !DILexicalBlock(scope: !45, file: !2, line: 98, column: 6)
!145 = !DILocation(line: 98, column: 12, scope: !144)
!146 = !DILocation(line: 98, column: 15, scope: !144)
!147 = !DILocation(line: 98, column: 21, scope: !144)
!148 = !DILocation(line: 98, column: 29, scope: !144)
!149 = !DILocation(line: 98, column: 35, scope: !144)
!150 = !DILocation(line: 98, column: 26, scope: !144)
!151 = !DILocation(line: 98, column: 6, scope: !45)
!152 = !DILocation(line: 99, column: 18, scope: !144)
!153 = !DILocation(line: 99, column: 24, scope: !144)
!154 = !DILocation(line: 99, column: 36, scope: !144)
!155 = !DILocation(line: 99, column: 42, scope: !144)
!156 = !DILocation(line: 99, column: 3, scope: !144)
!157 = !DILocation(line: 100, column: 1, scope: !45)
!158 = !DILocation(line: 101, column: 17, scope: !45)
!159 = !DILocation(line: 101, column: 23, scope: !45)
!160 = !DILocation(line: 101, column: 34, scope: !45)
!161 = !DILocation(line: 101, column: 2, scope: !45)
!162 = !DILocation(line: 103, column: 2, scope: !45)
!163 = !DILocation(line: 103, column: 2, scope: !164)
!164 = distinct !DILexicalBlock(scope: !45, file: !2, line: 103, column: 2)
!165 = !DILocation(line: 104, column: 1, scope: !45)
!166 = distinct !DISubprogram(name: "plist_node_empty", scope: !19, file: !19, line: 222, type: !167, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !171)
!167 = !DISubroutineType(types: !168)
!168 = !{!22, !169}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!171 = !{!172}
!172 = !DILocalVariable(name: "node", arg: 1, scope: !166, file: !19, line: 222, type: !169)
!173 = !DILocation(line: 222, column: 61, scope: !166)
!174 = !DILocation(line: 224, column: 21, scope: !166)
!175 = !DILocation(line: 224, column: 27, scope: !166)
!176 = !DILocation(line: 224, column: 9, scope: !166)
!177 = !DILocation(line: 224, column: 2, scope: !166)
!178 = distinct !DISubprogram(name: "list_empty", scope: !179, file: !179, line: 371, type: !180, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !184)
!179 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!180 = !DISubroutineType(types: !181)
!181 = !{!22, !182}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!184 = !{!185}
!185 = !DILocalVariable(name: "head", arg: 1, scope: !178, file: !179, line: 371, type: !182)
!186 = !DILocation(line: 371, column: 54, scope: !178)
!187 = !DILocation(line: 373, column: 9, scope: !188)
!188 = distinct !DILexicalBlock(scope: !178, file: !179, line: 373, column: 9)
!189 = !DILocation(line: 373, column: 9, scope: !190)
!190 = distinct !DILexicalBlock(scope: !188, file: !179, line: 373, column: 9)
!191 = !DILocation(line: 373, column: 34, scope: !178)
!192 = !DILocation(line: 373, column: 31, scope: !178)
!193 = !DILocation(line: 373, column: 2, scope: !178)
!194 = distinct !DISubprogram(name: "plist_head_empty", scope: !19, file: !19, line: 213, type: !195, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !199)
!195 = !DISubroutineType(types: !196)
!196 = !{!22, !197}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!199 = !{!200}
!200 = !DILocalVariable(name: "head", arg: 1, scope: !194, file: !19, line: 213, type: !197)
!201 = !DILocation(line: 213, column: 61, scope: !194)
!202 = !DILocation(line: 215, column: 21, scope: !194)
!203 = !DILocation(line: 215, column: 27, scope: !194)
!204 = !DILocation(line: 215, column: 9, scope: !194)
!205 = !DILocation(line: 215, column: 2, scope: !194)
!206 = distinct !DISubprogram(name: "plist_first", scope: !19, file: !19, line: 283, type: !207, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !209)
!207 = !DISubroutineType(types: !208)
!208 = !{!17, !197}
!209 = !{!210, !211}
!210 = !DILocalVariable(name: "head", arg: 1, scope: !206, file: !19, line: 283, type: !197)
!211 = !DILocalVariable(name: "__mptr", scope: !212, file: !19, line: 285, type: !16)
!212 = distinct !DILexicalBlock(scope: !206, file: !19, line: 285, column: 9)
!213 = !DILocation(line: 283, column: 71, scope: !206)
!214 = !DILocation(line: 285, column: 9, scope: !212)
!215 = !DILocation(line: 285, column: 9, scope: !206)
!216 = !DILocation(line: 285, column: 2, scope: !206)
!217 = distinct !DISubprogram(name: "list_add_tail", scope: !179, file: !179, line: 181, type: !218, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !220)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !28, !28}
!220 = !{!221, !222}
!221 = !DILocalVariable(name: "new", arg: 1, scope: !217, file: !179, line: 181, type: !28)
!222 = !DILocalVariable(name: "head", arg: 2, scope: !217, file: !179, line: 181, type: !28)
!223 = !DILocation(line: 181, column: 52, scope: !217)
!224 = !DILocation(line: 181, column: 75, scope: !217)
!225 = !DILocation(line: 183, column: 13, scope: !217)
!226 = !DILocation(line: 183, column: 18, scope: !217)
!227 = !DILocation(line: 183, column: 24, scope: !217)
!228 = !DILocation(line: 183, column: 30, scope: !217)
!229 = !DILocation(line: 183, column: 2, scope: !217)
!230 = !DILocation(line: 184, column: 1, scope: !217)
!231 = distinct !DISubprogram(name: "plist_del", scope: !2, file: !2, line: 112, type: !46, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !232)
!232 = !{!233, !234, !235, !240}
!233 = !DILocalVariable(name: "node", arg: 1, scope: !231, file: !2, line: 112, type: !17)
!234 = !DILocalVariable(name: "head", arg: 2, scope: !231, file: !2, line: 112, type: !48)
!235 = !DILocalVariable(name: "next", scope: !236, file: !2, line: 118, type: !17)
!236 = distinct !DILexicalBlock(scope: !237, file: !2, line: 117, column: 49)
!237 = distinct !DILexicalBlock(scope: !238, file: !2, line: 117, column: 7)
!238 = distinct !DILexicalBlock(scope: !239, file: !2, line: 116, column: 37)
!239 = distinct !DILexicalBlock(scope: !231, file: !2, line: 116, column: 6)
!240 = !DILocalVariable(name: "__mptr", scope: !241, file: !2, line: 120, type: !16)
!241 = distinct !DILexicalBlock(scope: !236, file: !2, line: 120, column: 11)
!242 = !DILocation(line: 112, column: 35, scope: !231)
!243 = !DILocation(line: 112, column: 60, scope: !231)
!244 = !DILocation(line: 114, column: 2, scope: !231)
!245 = !DILocation(line: 114, column: 2, scope: !246)
!246 = distinct !DILexicalBlock(scope: !231, file: !2, line: 114, column: 2)
!247 = !DILocation(line: 116, column: 19, scope: !239)
!248 = !DILocation(line: 116, column: 25, scope: !239)
!249 = !DILocation(line: 116, column: 7, scope: !239)
!250 = !DILocation(line: 116, column: 6, scope: !231)
!251 = !DILocation(line: 117, column: 7, scope: !237)
!252 = !DILocation(line: 117, column: 13, scope: !237)
!253 = !DILocation(line: 117, column: 23, scope: !237)
!254 = !DILocation(line: 117, column: 32, scope: !237)
!255 = !DILocation(line: 117, column: 38, scope: !237)
!256 = !DILocation(line: 117, column: 28, scope: !237)
!257 = !DILocation(line: 117, column: 7, scope: !238)
!258 = !DILocation(line: 118, column: 4, scope: !236)
!259 = !DILocation(line: 118, column: 23, scope: !236)
!260 = !DILocation(line: 120, column: 11, scope: !241)
!261 = !DILocation(line: 120, column: 11, scope: !236)
!262 = !DILocation(line: 120, column: 9, scope: !236)
!263 = !DILocation(line: 124, column: 20, scope: !264)
!264 = distinct !DILexicalBlock(scope: !236, file: !2, line: 124, column: 8)
!265 = !DILocation(line: 124, column: 26, scope: !264)
!266 = !DILocation(line: 124, column: 8, scope: !264)
!267 = !DILocation(line: 124, column: 8, scope: !236)
!268 = !DILocation(line: 125, column: 15, scope: !264)
!269 = !DILocation(line: 125, column: 21, scope: !264)
!270 = !DILocation(line: 125, column: 33, scope: !264)
!271 = !DILocation(line: 125, column: 39, scope: !264)
!272 = !DILocation(line: 125, column: 5, scope: !264)
!273 = !DILocation(line: 126, column: 3, scope: !237)
!274 = !DILocation(line: 126, column: 3, scope: !236)
!275 = !DILocation(line: 127, column: 18, scope: !238)
!276 = !DILocation(line: 127, column: 24, scope: !238)
!277 = !DILocation(line: 127, column: 3, scope: !238)
!278 = !DILocation(line: 128, column: 2, scope: !238)
!279 = !DILocation(line: 130, column: 17, scope: !231)
!280 = !DILocation(line: 130, column: 23, scope: !231)
!281 = !DILocation(line: 130, column: 2, scope: !231)
!282 = !DILocation(line: 132, column: 2, scope: !231)
!283 = !DILocation(line: 132, column: 2, scope: !284)
!284 = distinct !DILexicalBlock(scope: !231, file: !2, line: 132, column: 2)
!285 = !DILocation(line: 133, column: 1, scope: !231)
!286 = distinct !DISubprogram(name: "list_add", scope: !179, file: !179, line: 167, type: !218, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !287)
!287 = !{!288, !289}
!288 = !DILocalVariable(name: "new", arg: 1, scope: !286, file: !179, line: 167, type: !28)
!289 = !DILocalVariable(name: "head", arg: 2, scope: !286, file: !179, line: 167, type: !28)
!290 = !DILocation(line: 167, column: 47, scope: !286)
!291 = !DILocation(line: 167, column: 70, scope: !286)
!292 = !DILocation(line: 169, column: 13, scope: !286)
!293 = !DILocation(line: 169, column: 18, scope: !286)
!294 = !DILocation(line: 169, column: 24, scope: !286)
!295 = !DILocation(line: 169, column: 30, scope: !286)
!296 = !DILocation(line: 169, column: 2, scope: !286)
!297 = !DILocation(line: 170, column: 1, scope: !286)
!298 = distinct !DISubprogram(name: "list_del_init", scope: !179, file: !179, line: 285, type: !299, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !301)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !28}
!301 = !{!302}
!302 = !DILocalVariable(name: "entry", arg: 1, scope: !298, file: !179, line: 285, type: !28)
!303 = !DILocation(line: 285, column: 52, scope: !298)
!304 = !DILocation(line: 287, column: 19, scope: !298)
!305 = !DILocation(line: 287, column: 2, scope: !298)
!306 = !DILocation(line: 288, column: 17, scope: !298)
!307 = !DILocation(line: 288, column: 2, scope: !298)
!308 = !DILocation(line: 289, column: 1, scope: !298)
!309 = distinct !DISubprogram(name: "plist_requeue", scope: !2, file: !2, line: 145, type: !46, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !310)
!310 = !{!311, !312, !313, !314, !315, !317, !320}
!311 = !DILocalVariable(name: "node", arg: 1, scope: !309, file: !2, line: 145, type: !17)
!312 = !DILocalVariable(name: "head", arg: 2, scope: !309, file: !2, line: 145, type: !48)
!313 = !DILocalVariable(name: "iter", scope: !309, file: !2, line: 147, type: !17)
!314 = !DILocalVariable(name: "node_next", scope: !309, file: !2, line: 148, type: !28)
!315 = !DILocalVariable(name: "__mptr", scope: !316, file: !2, line: 157, type: !16)
!316 = distinct !DILexicalBlock(scope: !309, file: !2, line: 157, column: 9)
!317 = !DILocalVariable(name: "__mptr", scope: !318, file: !2, line: 164, type: !16)
!318 = distinct !DILexicalBlock(scope: !319, file: !2, line: 164, column: 2)
!319 = distinct !DILexicalBlock(scope: !309, file: !2, line: 164, column: 2)
!320 = !DILocalVariable(name: "__mptr", scope: !321, file: !2, line: 164, type: !16)
!321 = distinct !DILexicalBlock(scope: !322, file: !2, line: 164, column: 2)
!322 = distinct !DILexicalBlock(scope: !319, file: !2, line: 164, column: 2)
!323 = !DILocation(line: 145, column: 39, scope: !309)
!324 = !DILocation(line: 145, column: 64, scope: !309)
!325 = !DILocation(line: 147, column: 2, scope: !309)
!326 = !DILocation(line: 147, column: 21, scope: !309)
!327 = !DILocation(line: 148, column: 2, scope: !309)
!328 = !DILocation(line: 148, column: 20, scope: !309)
!329 = !DILocation(line: 148, column: 33, scope: !309)
!330 = !DILocation(line: 148, column: 39, scope: !309)
!331 = !DILocation(line: 150, column: 2, scope: !309)
!332 = !DILocation(line: 150, column: 2, scope: !333)
!333 = distinct !DILexicalBlock(scope: !309, file: !2, line: 150, column: 2)
!334 = !DILocation(line: 151, column: 2, scope: !309)
!335 = !DILocation(line: 151, column: 2, scope: !336)
!336 = distinct !DILexicalBlock(scope: !337, file: !2, line: 151, column: 2)
!337 = distinct !DILexicalBlock(scope: !309, file: !2, line: 151, column: 2)
!338 = !DILocation(line: 151, column: 2, scope: !337)
!339 = !DILocation(line: 151, column: 2, scope: !340)
!340 = distinct !DILexicalBlock(scope: !336, file: !2, line: 151, column: 2)
!341 = !DILocation(line: 151, column: 2, scope: !342)
!342 = distinct !DILexicalBlock(scope: !340, file: !2, line: 151, column: 2)
!343 = !DILocation(line: 151, column: 2, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !2, line: 151, column: 2)
!345 = !{i64 2147965454, i64 2147965483, i64 2147965529, i64 2147965587, i64 2147965641, i64 2147965695, i64 2147965750, i64 2147965781}
!346 = !DILocation(line: 152, column: 2, scope: !309)
!347 = !DILocation(line: 152, column: 2, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !2, line: 152, column: 2)
!349 = distinct !DILexicalBlock(scope: !309, file: !2, line: 152, column: 2)
!350 = !DILocation(line: 152, column: 2, scope: !349)
!351 = !DILocation(line: 152, column: 2, scope: !352)
!352 = distinct !DILexicalBlock(scope: !348, file: !2, line: 152, column: 2)
!353 = !DILocation(line: 152, column: 2, scope: !354)
!354 = distinct !DILexicalBlock(scope: !352, file: !2, line: 152, column: 2)
!355 = !DILocation(line: 152, column: 2, scope: !356)
!356 = distinct !DILexicalBlock(scope: !352, file: !2, line: 152, column: 2)
!357 = !{i64 2147966448, i64 2147966477, i64 2147966523, i64 2147966581, i64 2147966635, i64 2147966689, i64 2147966744, i64 2147966775}
!358 = !DILocation(line: 154, column: 6, scope: !359)
!359 = distinct !DILexicalBlock(scope: !309, file: !2, line: 154, column: 6)
!360 = !DILocation(line: 154, column: 25, scope: !359)
!361 = !DILocation(line: 154, column: 14, scope: !359)
!362 = !DILocation(line: 154, column: 11, scope: !359)
!363 = !DILocation(line: 154, column: 6, scope: !309)
!364 = !DILocation(line: 155, column: 3, scope: !359)
!365 = !DILocation(line: 157, column: 9, scope: !316)
!366 = !DILocation(line: 157, column: 9, scope: !309)
!367 = !DILocation(line: 157, column: 7, scope: !309)
!368 = !DILocation(line: 159, column: 6, scope: !369)
!369 = distinct !DILexicalBlock(scope: !309, file: !2, line: 159, column: 6)
!370 = !DILocation(line: 159, column: 12, scope: !369)
!371 = !DILocation(line: 159, column: 20, scope: !369)
!372 = !DILocation(line: 159, column: 26, scope: !369)
!373 = !DILocation(line: 159, column: 17, scope: !369)
!374 = !DILocation(line: 159, column: 6, scope: !309)
!375 = !DILocation(line: 160, column: 3, scope: !369)
!376 = !DILocation(line: 162, column: 12, scope: !309)
!377 = !DILocation(line: 162, column: 18, scope: !309)
!378 = !DILocation(line: 162, column: 2, scope: !309)
!379 = !DILocation(line: 164, column: 2, scope: !318)
!380 = !DILocation(line: 164, column: 2, scope: !319)
!381 = !DILocation(line: 164, column: 2, scope: !322)
!382 = !DILocation(line: 165, column: 7, scope: !383)
!383 = distinct !DILexicalBlock(scope: !384, file: !2, line: 165, column: 7)
!384 = distinct !DILexicalBlock(scope: !322, file: !2, line: 164, column: 38)
!385 = !DILocation(line: 165, column: 13, scope: !383)
!386 = !DILocation(line: 165, column: 21, scope: !383)
!387 = !DILocation(line: 165, column: 27, scope: !383)
!388 = !DILocation(line: 165, column: 18, scope: !383)
!389 = !DILocation(line: 165, column: 7, scope: !384)
!390 = !DILocation(line: 166, column: 17, scope: !391)
!391 = distinct !DILexicalBlock(scope: !383, file: !2, line: 165, column: 33)
!392 = !DILocation(line: 166, column: 23, scope: !391)
!393 = !DILocation(line: 166, column: 14, scope: !391)
!394 = !DILocation(line: 167, column: 4, scope: !391)
!395 = !DILocation(line: 169, column: 2, scope: !384)
!396 = !DILocation(line: 164, column: 2, scope: !321)
!397 = distinct !{!397, !380, !398, !141, !142}
!398 = !DILocation(line: 169, column: 2, scope: !319)
!399 = !DILocation(line: 170, column: 17, scope: !309)
!400 = !DILocation(line: 170, column: 23, scope: !309)
!401 = !DILocation(line: 170, column: 34, scope: !309)
!402 = !DILocation(line: 170, column: 2, scope: !309)
!403 = !DILocation(line: 172, column: 2, scope: !309)
!404 = !DILocation(line: 172, column: 2, scope: !405)
!405 = distinct !DILexicalBlock(scope: !309, file: !2, line: 172, column: 2)
!406 = !DILocation(line: 173, column: 1, scope: !309)
!407 = distinct !DISubprogram(name: "plist_last", scope: !19, file: !19, line: 295, type: !207, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !408)
!408 = !{!409, !410}
!409 = !DILocalVariable(name: "head", arg: 1, scope: !407, file: !19, line: 295, type: !197)
!410 = !DILocalVariable(name: "__mptr", scope: !411, file: !19, line: 297, type: !16)
!411 = distinct !DILexicalBlock(scope: !407, file: !19, line: 297, column: 9)
!412 = !DILocation(line: 295, column: 70, scope: !407)
!413 = !DILocation(line: 297, column: 9, scope: !411)
!414 = !DILocation(line: 297, column: 9, scope: !407)
!415 = !DILocation(line: 297, column: 2, scope: !407)
!416 = distinct !DISubprogram(name: "__list_add", scope: !179, file: !179, line: 146, type: !417, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !419)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !28, !28, !28}
!419 = !{!420, !421, !422}
!420 = !DILocalVariable(name: "new", arg: 1, scope: !416, file: !179, line: 146, type: !28)
!421 = !DILocalVariable(name: "prev", arg: 2, scope: !416, file: !179, line: 147, type: !28)
!422 = !DILocalVariable(name: "next", arg: 3, scope: !416, file: !179, line: 148, type: !28)
!423 = !DILocation(line: 146, column: 49, scope: !416)
!424 = !DILocation(line: 147, column: 28, scope: !416)
!425 = !DILocation(line: 148, column: 28, scope: !416)
!426 = !DILocation(line: 150, column: 24, scope: !427)
!427 = distinct !DILexicalBlock(scope: !416, file: !179, line: 150, column: 6)
!428 = !DILocation(line: 150, column: 29, scope: !427)
!429 = !DILocation(line: 150, column: 35, scope: !427)
!430 = !DILocation(line: 150, column: 7, scope: !427)
!431 = !DILocation(line: 150, column: 6, scope: !416)
!432 = !DILocation(line: 151, column: 3, scope: !427)
!433 = !DILocation(line: 153, column: 15, scope: !416)
!434 = !DILocation(line: 153, column: 2, scope: !416)
!435 = !DILocation(line: 153, column: 8, scope: !416)
!436 = !DILocation(line: 153, column: 13, scope: !416)
!437 = !DILocation(line: 154, column: 14, scope: !416)
!438 = !DILocation(line: 154, column: 2, scope: !416)
!439 = !DILocation(line: 154, column: 7, scope: !416)
!440 = !DILocation(line: 154, column: 12, scope: !416)
!441 = !DILocation(line: 155, column: 14, scope: !416)
!442 = !DILocation(line: 155, column: 2, scope: !416)
!443 = !DILocation(line: 155, column: 7, scope: !416)
!444 = !DILocation(line: 155, column: 12, scope: !416)
!445 = !DILocation(line: 156, column: 2, scope: !416)
!446 = !DILocation(line: 156, column: 2, scope: !447)
!447 = distinct !DILexicalBlock(scope: !416, file: !179, line: 156, column: 2)
!448 = !DILocation(line: 156, column: 2, scope: !449)
!449 = distinct !DILexicalBlock(scope: !447, file: !179, line: 156, column: 2)
!450 = !DILocation(line: 156, column: 2, scope: !451)
!451 = distinct !DILexicalBlock(scope: !447, file: !179, line: 156, column: 2)
!452 = !DILocation(line: 157, column: 1, scope: !416)
!453 = distinct !DISubprogram(name: "__list_add_valid", scope: !179, file: !179, line: 128, type: !454, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !458)
!454 = !DISubroutineType(types: !455)
!455 = !{!456, !28, !28, !28}
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !25, line: 35, baseType: !457)
!457 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!458 = !{!459, !460, !461}
!459 = !DILocalVariable(name: "new", arg: 1, scope: !453, file: !179, line: 128, type: !28)
!460 = !DILocalVariable(name: "prev", arg: 2, scope: !453, file: !179, line: 129, type: !28)
!461 = !DILocalVariable(name: "next", arg: 3, scope: !453, file: !179, line: 130, type: !28)
!462 = !DILocation(line: 128, column: 55, scope: !453)
!463 = !DILocation(line: 129, column: 23, scope: !453)
!464 = !DILocation(line: 130, column: 23, scope: !453)
!465 = !DILocation(line: 132, column: 2, scope: !453)
!466 = distinct !DISubprogram(name: "__list_del_entry", scope: !179, file: !179, line: 213, type: !299, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !467)
!467 = !{!468}
!468 = !DILocalVariable(name: "entry", arg: 1, scope: !466, file: !179, line: 213, type: !28)
!469 = !DILocation(line: 213, column: 55, scope: !466)
!470 = !DILocation(line: 215, column: 30, scope: !471)
!471 = distinct !DILexicalBlock(scope: !466, file: !179, line: 215, column: 6)
!472 = !DILocation(line: 215, column: 7, scope: !471)
!473 = !DILocation(line: 215, column: 6, scope: !466)
!474 = !DILocation(line: 216, column: 3, scope: !471)
!475 = !DILocation(line: 218, column: 13, scope: !466)
!476 = !DILocation(line: 218, column: 20, scope: !466)
!477 = !DILocation(line: 218, column: 26, scope: !466)
!478 = !DILocation(line: 218, column: 33, scope: !466)
!479 = !DILocation(line: 218, column: 2, scope: !466)
!480 = !DILocation(line: 219, column: 1, scope: !466)
!481 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !179, file: !179, line: 35, type: !299, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !482)
!482 = !{!483}
!483 = !DILocalVariable(name: "list", arg: 1, scope: !481, file: !179, line: 35, type: !28)
!484 = !DILocation(line: 35, column: 53, scope: !481)
!485 = !DILocation(line: 37, column: 2, scope: !481)
!486 = !DILocation(line: 37, column: 2, scope: !487)
!487 = distinct !DILexicalBlock(scope: !481, file: !179, line: 37, column: 2)
!488 = !DILocation(line: 37, column: 2, scope: !489)
!489 = distinct !DILexicalBlock(scope: !487, file: !179, line: 37, column: 2)
!490 = !DILocation(line: 37, column: 2, scope: !491)
!491 = distinct !DILexicalBlock(scope: !487, file: !179, line: 37, column: 2)
!492 = !DILocation(line: 38, column: 2, scope: !481)
!493 = !DILocation(line: 38, column: 2, scope: !494)
!494 = distinct !DILexicalBlock(scope: !481, file: !179, line: 38, column: 2)
!495 = !DILocation(line: 38, column: 2, scope: !496)
!496 = distinct !DILexicalBlock(scope: !494, file: !179, line: 38, column: 2)
!497 = !DILocation(line: 38, column: 2, scope: !498)
!498 = distinct !DILexicalBlock(scope: !494, file: !179, line: 38, column: 2)
!499 = !DILocation(line: 39, column: 1, scope: !481)
!500 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !179, file: !179, line: 134, type: !501, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !503)
!501 = !DISubroutineType(types: !502)
!502 = !{!456, !28}
!503 = !{!504}
!504 = !DILocalVariable(name: "entry", arg: 1, scope: !500, file: !179, line: 134, type: !28)
!505 = !DILocation(line: 134, column: 61, scope: !500)
!506 = !DILocation(line: 136, column: 2, scope: !500)
!507 = distinct !DISubprogram(name: "__list_del", scope: !179, file: !179, line: 193, type: !218, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !508)
!508 = !{!509, !510}
!509 = !DILocalVariable(name: "prev", arg: 1, scope: !507, file: !179, line: 193, type: !28)
!510 = !DILocalVariable(name: "next", arg: 2, scope: !507, file: !179, line: 193, type: !28)
!511 = !DILocation(line: 193, column: 50, scope: !507)
!512 = !DILocation(line: 193, column: 75, scope: !507)
!513 = !DILocation(line: 195, column: 15, scope: !507)
!514 = !DILocation(line: 195, column: 2, scope: !507)
!515 = !DILocation(line: 195, column: 8, scope: !507)
!516 = !DILocation(line: 195, column: 13, scope: !507)
!517 = !DILocation(line: 196, column: 2, scope: !507)
!518 = !DILocation(line: 196, column: 2, scope: !519)
!519 = distinct !DILexicalBlock(scope: !507, file: !179, line: 196, column: 2)
!520 = !DILocation(line: 196, column: 2, scope: !521)
!521 = distinct !DILexicalBlock(scope: !519, file: !179, line: 196, column: 2)
!522 = !DILocation(line: 196, column: 2, scope: !523)
!523 = distinct !DILexicalBlock(scope: !519, file: !179, line: 196, column: 2)
!524 = !DILocation(line: 197, column: 1, scope: !507)

; ModuleID = 'lib/timerqueue.c'
source_filename = "lib/timerqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_timerqueue_add: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad timerqueue_add ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_timerqueue_del: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad timerqueue_del ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_timerqueue_iterate_next: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad timerqueue_iterate_next ; .previous"

%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@.str = private unnamed_addr constant [17 x i8] c"lib/timerqueue.c\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_timerqueue_add53 = internal global ptr @timerqueue_add, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_timerqueue_del55 = internal global ptr @timerqueue_del, section ".discard.addressable", align 8, !dbg !44
@__UNIQUE_ID___addressable_timerqueue_iterate_next56 = internal global ptr @timerqueue_iterate_next, section ".discard.addressable", align 8, !dbg !46
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_timerqueue_add53, ptr @__UNIQUE_ID___addressable_timerqueue_del55, ptr @__UNIQUE_ID___addressable_timerqueue_iterate_next56], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @timerqueue_add(ptr noundef %head, ptr noundef %node) #0 align 16 !dbg !57 {
entry:
  %head.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !75, metadata !DIExpression()), !dbg !83
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !76, metadata !DIExpression()), !dbg !84
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !85
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !77, metadata !DIExpression()), !dbg !85
  %0 = load ptr, ptr %node.addr, align 8, !dbg !85
  %node1 = getelementptr inbounds %struct.timerqueue_node, ptr %0, i32 0, i32 0, !dbg !85
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %node1, i32 0, i32 0, !dbg !85
  %1 = load i64, ptr %__rb_parent_color, align 8, !dbg !85
  %2 = load ptr, ptr %node.addr, align 8, !dbg !85
  %node2 = getelementptr inbounds %struct.timerqueue_node, ptr %2, i32 0, i32 0, !dbg !85
  %3 = ptrtoint ptr %node2 to i64, !dbg !85
  %cmp = icmp eq i64 %1, %3, !dbg !85
  %lnot = xor i1 %cmp, true, !dbg !85
  %lnot3 = xor i1 %lnot, true, !dbg !85
  %lnot4 = xor i1 %lnot3, true, !dbg !85
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !85
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !85
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !86
  %tobool = icmp ne i32 %4, 0, !dbg !86
  %lnot5 = xor i1 %tobool, true, !dbg !86
  %lnot7 = xor i1 %lnot5, true, !dbg !86
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !86
  %conv = sext i32 %lnot.ext8 to i64, !dbg !86
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !86
  %tobool9 = icmp ne i64 %expval, 0, !dbg !86
  br i1 %tobool9, label %if.then, label %if.end, !dbg !85

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !86

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !87
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !80, metadata !DIExpression()), !dbg !87
  store i32 2307, ptr %__flags, align 4, !dbg !87
  br label %do.body10, !dbg !87

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !88

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !88

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !87

do.body11:                                        ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !90
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 38, i32 %5, i64 12) #7, !dbg !90, !srcloc !92
  br label %do.cond12, !dbg !90

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !90

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !87

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !93

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !93

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !86
  br label %do.cond17, !dbg !87

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !87

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !87

if.end:                                           ; preds = %do.end18, %entry
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !85
  %tobool19 = icmp ne i32 %6, 0, !dbg !85
  %lnot20 = xor i1 %tobool19, true, !dbg !85
  %lnot22 = xor i1 %lnot20, true, !dbg !85
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !85
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !85
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !85
  store i64 %expval25, ptr %tmp, align 8, !dbg !86
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !95
  %7 = load i64, ptr %tmp, align 8, !dbg !85
  %8 = load ptr, ptr %node.addr, align 8, !dbg !96
  %node26 = getelementptr inbounds %struct.timerqueue_node, ptr %8, i32 0, i32 0, !dbg !97
  %9 = load ptr, ptr %head.addr, align 8, !dbg !98
  %rb_root = getelementptr inbounds %struct.timerqueue_head, ptr %9, i32 0, i32 0, !dbg !99
  %call = call ptr @rb_add_cached(ptr noundef %node26, ptr noundef %rb_root, ptr noundef @__timerqueue_less) #8, !dbg !100
  %tobool27 = icmp ne ptr %call, null, !dbg !100
  ret i1 %tobool27, !dbg !101
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rb_add_cached(ptr noundef %node, ptr noundef %tree, ptr noundef %less) #4 align 16 !dbg !102 {
entry:
  %node.addr = alloca ptr, align 8
  %tree.addr = alloca ptr, align 8
  %less.addr = alloca ptr, align 8
  %link = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %leftmost = alloca i8, align 1
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !113, metadata !DIExpression()), !dbg !120
  store ptr %tree, ptr %tree.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tree.addr, metadata !114, metadata !DIExpression()), !dbg !121
  store ptr %less, ptr %less.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %less.addr, metadata !115, metadata !DIExpression()), !dbg !122
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #7, !dbg !123
  call void @llvm.dbg.declare(metadata ptr %link, metadata !116, metadata !DIExpression()), !dbg !124
  %0 = load ptr, ptr %tree.addr, align 8, !dbg !125
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %0, i32 0, i32 0, !dbg !126
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %rb_root, i32 0, i32 0, !dbg !127
  store ptr %rb_node, ptr %link, align 8, !dbg !124
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #7, !dbg !128
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !118, metadata !DIExpression()), !dbg !129
  store ptr null, ptr %parent, align 8, !dbg !129
  call void @llvm.lifetime.start.p0(i64 1, ptr %leftmost) #7, !dbg !130
  call void @llvm.dbg.declare(metadata ptr %leftmost, metadata !119, metadata !DIExpression()), !dbg !131
  store i8 1, ptr %leftmost, align 1, !dbg !131
  br label %while.cond, !dbg !132

while.cond:                                       ; preds = %if.end, %entry
  %1 = load ptr, ptr %link, align 8, !dbg !133
  %2 = load ptr, ptr %1, align 8, !dbg !134
  %tobool = icmp ne ptr %2, null, !dbg !132
  br i1 %tobool, label %while.body, label %while.end, !dbg !132

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %link, align 8, !dbg !135
  %4 = load ptr, ptr %3, align 8, !dbg !137
  store ptr %4, ptr %parent, align 8, !dbg !138
  %5 = load ptr, ptr %less.addr, align 8, !dbg !139
  %6 = load ptr, ptr %node.addr, align 8, !dbg !141
  %7 = load ptr, ptr %parent, align 8, !dbg !142
  %call = call zeroext i1 %5(ptr noundef %6, ptr noundef %7) #8, !dbg !139
  br i1 %call, label %if.then, label %if.else, !dbg !143

if.then:                                          ; preds = %while.body
  %8 = load ptr, ptr %parent, align 8, !dbg !144
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 2, !dbg !146
  store ptr %rb_left, ptr %link, align 8, !dbg !147
  br label %if.end, !dbg !148

if.else:                                          ; preds = %while.body
  %9 = load ptr, ptr %parent, align 8, !dbg !149
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1, !dbg !151
  store ptr %rb_right, ptr %link, align 8, !dbg !152
  store i8 0, ptr %leftmost, align 1, !dbg !153
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !dbg !132, !llvm.loop !154

while.end:                                        ; preds = %while.cond
  %10 = load ptr, ptr %node.addr, align 8, !dbg !158
  %11 = load ptr, ptr %parent, align 8, !dbg !159
  %12 = load ptr, ptr %link, align 8, !dbg !160
  call void @rb_link_node(ptr noundef %10, ptr noundef %11, ptr noundef %12) #8, !dbg !161
  %13 = load ptr, ptr %node.addr, align 8, !dbg !162
  %14 = load ptr, ptr %tree.addr, align 8, !dbg !163
  %15 = load i8, ptr %leftmost, align 1, !dbg !164, !range !165, !noundef !166
  %tobool1 = trunc i8 %15 to i1, !dbg !164
  call void @rb_insert_color_cached(ptr noundef %13, ptr noundef %14, i1 noundef zeroext %tobool1) #8, !dbg !167
  %16 = load i8, ptr %leftmost, align 1, !dbg !168, !range !165, !noundef !166
  %tobool2 = trunc i8 %16 to i1, !dbg !168
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !168

cond.true:                                        ; preds = %while.end
  %17 = load ptr, ptr %node.addr, align 8, !dbg !169
  br label %cond.end, !dbg !168

cond.false:                                       ; preds = %while.end
  br label %cond.end, !dbg !168

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %17, %cond.true ], [ null, %cond.false ], !dbg !168
  call void @llvm.lifetime.end.p0(i64 1, ptr %leftmost) #7, !dbg !170
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #7, !dbg !170
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #7, !dbg !170
  ret ptr %cond, !dbg !171
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__timerqueue_less(ptr noundef %a, ptr noundef %b) #5 align 16 !dbg !172 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !174, metadata !DIExpression()), !dbg !180
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !175, metadata !DIExpression()), !dbg !181
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !182
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !176, metadata !DIExpression()), !dbg !182
  %0 = load ptr, ptr %a.addr, align 8, !dbg !182
  store ptr %0, ptr %__mptr, align 8, !dbg !182
  %1 = load ptr, ptr %__mptr, align 8, !dbg !182
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !182
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !182
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !183
  %2 = load ptr, ptr %tmp, align 8, !dbg !182
  %expires = getelementptr inbounds %struct.timerqueue_node, ptr %2, i32 0, i32 1, !dbg !184
  %3 = load i64, ptr %expires, align 8, !dbg !184
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #7, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !178, metadata !DIExpression()), !dbg !185
  %4 = load ptr, ptr %b.addr, align 8, !dbg !185
  store ptr %4, ptr %__mptr1, align 8, !dbg !185
  %5 = load ptr, ptr %__mptr1, align 8, !dbg !185
  %add.ptr3 = getelementptr i8, ptr %5, i64 0, !dbg !185
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !185
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #7, !dbg !186
  %6 = load ptr, ptr %tmp2, align 8, !dbg !185
  %expires4 = getelementptr inbounds %struct.timerqueue_node, ptr %6, i32 0, i32 1, !dbg !187
  %7 = load i64, ptr %expires4, align 8, !dbg !187
  %cmp = icmp slt i64 %3, %7, !dbg !188
  ret i1 %cmp, !dbg !189
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @timerqueue_del(ptr noundef %head, ptr noundef %node) #0 align 16 !dbg !190 {
entry:
  %head.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp32 = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !192, metadata !DIExpression()), !dbg !199
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !201
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !194, metadata !DIExpression()), !dbg !201
  %0 = load ptr, ptr %node.addr, align 8, !dbg !201
  %node1 = getelementptr inbounds %struct.timerqueue_node, ptr %0, i32 0, i32 0, !dbg !201
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %node1, i32 0, i32 0, !dbg !201
  %1 = load i64, ptr %__rb_parent_color, align 8, !dbg !201
  %2 = load ptr, ptr %node.addr, align 8, !dbg !201
  %node2 = getelementptr inbounds %struct.timerqueue_node, ptr %2, i32 0, i32 0, !dbg !201
  %3 = ptrtoint ptr %node2 to i64, !dbg !201
  %cmp = icmp eq i64 %1, %3, !dbg !201
  %lnot = xor i1 %cmp, true, !dbg !201
  %lnot3 = xor i1 %lnot, true, !dbg !201
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !201
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !201
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !202
  %tobool = icmp ne i32 %4, 0, !dbg !202
  %lnot4 = xor i1 %tobool, true, !dbg !202
  %lnot6 = xor i1 %lnot4, true, !dbg !202
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !202
  %conv = sext i32 %lnot.ext7 to i64, !dbg !202
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !202
  %tobool8 = icmp ne i64 %expval, 0, !dbg !202
  br i1 %tobool8, label %if.then, label %if.end, !dbg !201

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !202

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !203
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !196, metadata !DIExpression()), !dbg !203
  store i32 2307, ptr %__flags, align 4, !dbg !203
  br label %do.body9, !dbg !203

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !204

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !204

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !203

do.body10:                                        ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !206
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 55, i32 %5, i64 12) #7, !dbg !206, !srcloc !208
  br label %do.cond11, !dbg !206

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !206

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !203

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !209

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !209

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !202
  br label %do.cond16, !dbg !203

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !203

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !203

if.end:                                           ; preds = %do.end17, %entry
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !201
  %tobool18 = icmp ne i32 %6, 0, !dbg !201
  %lnot19 = xor i1 %tobool18, true, !dbg !201
  %lnot21 = xor i1 %lnot19, true, !dbg !201
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !201
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !201
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !201
  store i64 %expval24, ptr %tmp, align 8, !dbg !202
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !211
  %7 = load i64, ptr %tmp, align 8, !dbg !201
  %8 = load ptr, ptr %node.addr, align 8, !dbg !212
  %node25 = getelementptr inbounds %struct.timerqueue_node, ptr %8, i32 0, i32 0, !dbg !213
  %9 = load ptr, ptr %head.addr, align 8, !dbg !214
  %rb_root = getelementptr inbounds %struct.timerqueue_head, ptr %9, i32 0, i32 0, !dbg !215
  %call = call ptr @rb_erase_cached(ptr noundef %node25, ptr noundef %rb_root) #8, !dbg !216
  %10 = load ptr, ptr %node.addr, align 8, !dbg !217
  %node26 = getelementptr inbounds %struct.timerqueue_node, ptr %10, i32 0, i32 0, !dbg !217
  %11 = ptrtoint ptr %node26 to i64, !dbg !217
  %12 = load ptr, ptr %node.addr, align 8, !dbg !217
  %node27 = getelementptr inbounds %struct.timerqueue_node, ptr %12, i32 0, i32 0, !dbg !217
  %__rb_parent_color28 = getelementptr inbounds %struct.rb_node, ptr %node27, i32 0, i32 0, !dbg !217
  store i64 %11, ptr %__rb_parent_color28, align 8, !dbg !217
  br label %do.body29, !dbg !218

do.body29:                                        ; preds = %if.end
  br label %do.end31, !dbg !220

do.end31:                                         ; preds = %do.body29
  %13 = load ptr, ptr %head.addr, align 8, !dbg !218
  %rb_root33 = getelementptr inbounds %struct.timerqueue_head, ptr %13, i32 0, i32 0, !dbg !218
  %rb_root34 = getelementptr inbounds %struct.rb_root_cached, ptr %rb_root33, i32 0, i32 0, !dbg !218
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %rb_root34, i32 0, i32 0, !dbg !218
  %14 = load volatile ptr, ptr %rb_node, align 8, !dbg !218
  store ptr %14, ptr %tmp32, align 8, !dbg !220
  %15 = load ptr, ptr %tmp32, align 8, !dbg !218
  %cmp35 = icmp eq ptr %15, null, !dbg !222
  %lnot37 = xor i1 %cmp35, true, !dbg !223
  ret i1 %lnot37, !dbg !224
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rb_erase_cached(ptr noundef %node, ptr noundef %root) #5 align 16 !dbg !225 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %leftmost = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !229, metadata !DIExpression()), !dbg !232
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !230, metadata !DIExpression()), !dbg !233
  call void @llvm.lifetime.start.p0(i64 8, ptr %leftmost) #7, !dbg !234
  call void @llvm.dbg.declare(metadata ptr %leftmost, metadata !231, metadata !DIExpression()), !dbg !235
  store ptr null, ptr %leftmost, align 8, !dbg !235
  %0 = load ptr, ptr %root.addr, align 8, !dbg !236
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %0, i32 0, i32 1, !dbg !238
  %1 = load ptr, ptr %rb_leftmost, align 8, !dbg !238
  %2 = load ptr, ptr %node.addr, align 8, !dbg !239
  %cmp = icmp eq ptr %1, %2, !dbg !240
  br i1 %cmp, label %if.then, label %if.end, !dbg !241

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %node.addr, align 8, !dbg !242
  %call = call ptr @rb_next(ptr noundef %3) #8, !dbg !243
  %4 = load ptr, ptr %root.addr, align 8, !dbg !244
  %rb_leftmost1 = getelementptr inbounds %struct.rb_root_cached, ptr %4, i32 0, i32 1, !dbg !245
  store ptr %call, ptr %rb_leftmost1, align 8, !dbg !246
  store ptr %call, ptr %leftmost, align 8, !dbg !247
  br label %if.end, !dbg !248

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %node.addr, align 8, !dbg !249
  %6 = load ptr, ptr %root.addr, align 8, !dbg !250
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %6, i32 0, i32 0, !dbg !251
  call void @rb_erase(ptr noundef %5, ptr noundef %rb_root) #8, !dbg !252
  %7 = load ptr, ptr %leftmost, align 8, !dbg !253
  call void @llvm.lifetime.end.p0(i64 8, ptr %leftmost) #7, !dbg !254
  ret ptr %7, !dbg !255
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @timerqueue_iterate_next(ptr noundef %node) #0 align 16 !dbg !256 {
entry:
  %retval = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !260, metadata !DIExpression()), !dbg !264
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #7, !dbg !265
  call void @llvm.dbg.declare(metadata ptr %next, metadata !261, metadata !DIExpression()), !dbg !266
  %0 = load ptr, ptr %node.addr, align 8, !dbg !267
  %tobool = icmp ne ptr %0, null, !dbg !267
  br i1 %tobool, label %if.end, label %if.then, !dbg !269

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !270
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !270

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %node.addr, align 8, !dbg !271
  %node1 = getelementptr inbounds %struct.timerqueue_node, ptr %1, i32 0, i32 0, !dbg !272
  %call = call ptr @rb_next(ptr noundef %node1) #8, !dbg !273
  store ptr %call, ptr %next, align 8, !dbg !274
  %2 = load ptr, ptr %next, align 8, !dbg !275
  %tobool2 = icmp ne ptr %2, null, !dbg !275
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !277

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !278

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !279
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !262, metadata !DIExpression()), !dbg !279
  %3 = load ptr, ptr %next, align 8, !dbg !279
  store ptr %3, ptr %__mptr, align 8, !dbg !279
  %4 = load ptr, ptr %__mptr, align 8, !dbg !279
  %add.ptr = getelementptr i8, ptr %4, i64 0, !dbg !279
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !279
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !280
  %5 = load ptr, ptr %tmp, align 8, !dbg !279
  store ptr %5, ptr %retval, align 8, !dbg !281
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !281

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #7, !dbg !282
  %6 = load ptr, ptr %retval, align 8, !dbg !282
  ret ptr %6, !dbg !282
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !283 dso_local ptr @rb_next(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_link_node(ptr noundef %node, ptr noundef %parent, ptr noundef %rb_link) #5 align 16 !dbg !286 {
entry:
  %node.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %rb_link.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !290, metadata !DIExpression()), !dbg !293
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !291, metadata !DIExpression()), !dbg !294
  store ptr %rb_link, ptr %rb_link.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_link.addr, metadata !292, metadata !DIExpression()), !dbg !295
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !296
  %1 = ptrtoint ptr %0 to i64, !dbg !297
  %2 = load ptr, ptr %node.addr, align 8, !dbg !298
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 0, !dbg !299
  store i64 %1, ptr %__rb_parent_color, align 8, !dbg !300
  %3 = load ptr, ptr %node.addr, align 8, !dbg !301
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 1, !dbg !302
  store ptr null, ptr %rb_right, align 8, !dbg !303
  %4 = load ptr, ptr %node.addr, align 8, !dbg !304
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2, !dbg !305
  store ptr null, ptr %rb_left, align 8, !dbg !306
  %5 = load ptr, ptr %node.addr, align 8, !dbg !307
  %6 = load ptr, ptr %rb_link.addr, align 8, !dbg !308
  store ptr %5, ptr %6, align 8, !dbg !309
  ret void, !dbg !310
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_insert_color_cached(ptr noundef %node, ptr noundef %root, i1 noundef zeroext %leftmost) #5 align 16 !dbg !311 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %leftmost.addr = alloca i8, align 1
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !315, metadata !DIExpression()), !dbg !318
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !316, metadata !DIExpression()), !dbg !319
  %frombool = zext i1 %leftmost to i8
  store i8 %frombool, ptr %leftmost.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %leftmost.addr, metadata !317, metadata !DIExpression()), !dbg !320
  %0 = load i8, ptr %leftmost.addr, align 1, !dbg !321, !range !165, !noundef !166
  %tobool = trunc i8 %0 to i1, !dbg !321
  br i1 %tobool, label %if.then, label %if.end, !dbg !323

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %node.addr, align 8, !dbg !324
  %2 = load ptr, ptr %root.addr, align 8, !dbg !325
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %2, i32 0, i32 1, !dbg !326
  store ptr %1, ptr %rb_leftmost, align 8, !dbg !327
  br label %if.end, !dbg !325

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %node.addr, align 8, !dbg !328
  %4 = load ptr, ptr %root.addr, align 8, !dbg !329
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %4, i32 0, i32 0, !dbg !330
  call void @rb_insert_color(ptr noundef %3, ptr noundef %rb_root) #8, !dbg !331
  ret void, !dbg !332
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !333 dso_local void @rb_insert_color(ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !337 dso_local void @rb_erase(ptr noundef, ptr noundef) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/timerqueue.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6db9583bcc495b2aa4bae4116ee60b90")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_timerqueue_add53", scope: !9, file: !2, line: 42, type: !19, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.timerqueue.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/timerqueue\22 -D KBUILD_BASENAME=\22timerqueue\22 -D KBUILD_MODNAME=\22timerqueue\22 -D __KBUILD_MODNAME=kmod_timerqueue -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/timerqueue.ll lib/timerqueue.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !17, globals: !43, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 10, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "false", value: 0)
!16 = !DIEnumerator(name: "true", value: 1)
!17 = !{!18, !19, !20, !30}
!18 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !25, line: 5, size: 192, align: 64, elements: !26)
!25 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!26 = !{!27, !28, !29}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !24, file: !25, line: 6, baseType: !18, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !24, file: !25, line: 7, baseType: !23, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !24, file: !25, line: 8, baseType: !23, size: 64, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !32, line: 9, size: 256, elements: !33)
!32 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !31, file: !32, line: 10, baseType: !24, size: 192, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !31, file: !32, line: 11, baseType: !36, size: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !37, line: 29, baseType: !38)
!37 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !39, line: 22, baseType: !40)
!39 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !41, line: 30, baseType: !42)
!41 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!42 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!43 = !{!0, !7, !44, !46}
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_timerqueue_del55", scope: !9, file: !2, line: 62, type: !19, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_timerqueue_iterate_next56", scope: !9, file: !2, line: 84, type: !19, isLocal: true, isDefinition: true)
!48 = !{i32 7, !"Dwarf Version", i32 5}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 8, !"cf-protection-branch", i32 1}
!52 = !{i32 4, !"function_return_thunk_extern", i32 1}
!53 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!54 = !{i32 1, !"Code Model", i32 2}
!55 = !{i32 1, !"override-stack-alignment", i32 8}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = distinct !DISubprogram(name: "timerqueue_add", scope: !2, file: !2, line: 35, type: !58, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !74)
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !63, !30}
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !61, line: 35, baseType: !62)
!61 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!62 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !32, line: 14, size: 128, elements: !65)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !64, file: !32, line: 15, baseType: !67, size: 128)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !25, line: 26, size: 128, elements: !68)
!68 = !{!69, !73}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !67, file: !25, line: 27, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !25, line: 12, size: 64, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !70, file: !25, line: 13, baseType: !23, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !67, file: !25, line: 28, baseType: !23, size: 64, offset: 64)
!74 = !{!75, !76, !77, !80}
!75 = !DILocalVariable(name: "head", arg: 1, scope: !57, file: !2, line: 35, type: !63)
!76 = !DILocalVariable(name: "node", arg: 2, scope: !57, file: !2, line: 35, type: !30)
!77 = !DILocalVariable(name: "__ret_warn_on", scope: !78, file: !2, line: 38, type: !79)
!78 = distinct !DILexicalBlock(scope: !57, file: !2, line: 38, column: 2)
!79 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!80 = !DILocalVariable(name: "__flags", scope: !81, file: !2, line: 38, type: !79)
!81 = distinct !DILexicalBlock(scope: !82, file: !2, line: 38, column: 2)
!82 = distinct !DILexicalBlock(scope: !78, file: !2, line: 38, column: 2)
!83 = !DILocation(line: 35, column: 45, scope: !57)
!84 = !DILocation(line: 35, column: 75, scope: !57)
!85 = !DILocation(line: 38, column: 2, scope: !78)
!86 = !DILocation(line: 38, column: 2, scope: !82)
!87 = !DILocation(line: 38, column: 2, scope: !81)
!88 = !DILocation(line: 38, column: 2, scope: !89)
!89 = distinct !DILexicalBlock(scope: !81, file: !2, line: 38, column: 2)
!90 = !DILocation(line: 38, column: 2, scope: !91)
!91 = distinct !DILexicalBlock(scope: !81, file: !2, line: 38, column: 2)
!92 = !{i64 2149737835, i64 2149737864, i64 2149737910, i64 2149737968, i64 2149738022, i64 2149738076, i64 2149738131, i64 2149738162, i64 2149738470, i64 2149738476, i64 2149738523, i64 2149738546, i64 2149738572}
!93 = !DILocation(line: 38, column: 2, scope: !94)
!94 = distinct !DILexicalBlock(scope: !81, file: !2, line: 38, column: 2)
!95 = !DILocation(line: 38, column: 2, scope: !57)
!96 = !DILocation(line: 40, column: 24, scope: !57)
!97 = !DILocation(line: 40, column: 30, scope: !57)
!98 = !DILocation(line: 40, column: 37, scope: !57)
!99 = !DILocation(line: 40, column: 43, scope: !57)
!100 = !DILocation(line: 40, column: 9, scope: !57)
!101 = !DILocation(line: 40, column: 2, scope: !57)
!102 = distinct !DISubprogram(name: "rb_add_cached", scope: !103, file: !103, line: 165, type: !104, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !112)
!103 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e0facf00d8c55244f0fbd487ce02705")
!104 = !DISubroutineType(types: !105)
!105 = !{!23, !23, !106, !107}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!60, !23, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!112 = !{!113, !114, !115, !116, !118, !119}
!113 = !DILocalVariable(name: "node", arg: 1, scope: !102, file: !103, line: 165, type: !23)
!114 = !DILocalVariable(name: "tree", arg: 2, scope: !102, file: !103, line: 165, type: !106)
!115 = !DILocalVariable(name: "less", arg: 3, scope: !102, file: !103, line: 166, type: !107)
!116 = !DILocalVariable(name: "link", scope: !102, file: !103, line: 168, type: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!118 = !DILocalVariable(name: "parent", scope: !102, file: !103, line: 169, type: !23)
!119 = !DILocalVariable(name: "leftmost", scope: !102, file: !103, line: 170, type: !60)
!120 = !DILocation(line: 165, column: 31, scope: !102)
!121 = !DILocation(line: 165, column: 60, scope: !102)
!122 = !DILocation(line: 166, column: 15, scope: !102)
!123 = !DILocation(line: 168, column: 2, scope: !102)
!124 = !DILocation(line: 168, column: 19, scope: !102)
!125 = !DILocation(line: 168, column: 27, scope: !102)
!126 = !DILocation(line: 168, column: 33, scope: !102)
!127 = !DILocation(line: 168, column: 41, scope: !102)
!128 = !DILocation(line: 169, column: 2, scope: !102)
!129 = !DILocation(line: 169, column: 18, scope: !102)
!130 = !DILocation(line: 170, column: 2, scope: !102)
!131 = !DILocation(line: 170, column: 7, scope: !102)
!132 = !DILocation(line: 172, column: 2, scope: !102)
!133 = !DILocation(line: 172, column: 10, scope: !102)
!134 = !DILocation(line: 172, column: 9, scope: !102)
!135 = !DILocation(line: 173, column: 13, scope: !136)
!136 = distinct !DILexicalBlock(scope: !102, file: !103, line: 172, column: 16)
!137 = !DILocation(line: 173, column: 12, scope: !136)
!138 = !DILocation(line: 173, column: 10, scope: !136)
!139 = !DILocation(line: 174, column: 7, scope: !140)
!140 = distinct !DILexicalBlock(scope: !136, file: !103, line: 174, column: 7)
!141 = !DILocation(line: 174, column: 12, scope: !140)
!142 = !DILocation(line: 174, column: 18, scope: !140)
!143 = !DILocation(line: 174, column: 7, scope: !136)
!144 = !DILocation(line: 175, column: 12, scope: !145)
!145 = distinct !DILexicalBlock(scope: !140, file: !103, line: 174, column: 27)
!146 = !DILocation(line: 175, column: 20, scope: !145)
!147 = !DILocation(line: 175, column: 9, scope: !145)
!148 = !DILocation(line: 176, column: 3, scope: !145)
!149 = !DILocation(line: 177, column: 12, scope: !150)
!150 = distinct !DILexicalBlock(scope: !140, file: !103, line: 176, column: 10)
!151 = !DILocation(line: 177, column: 20, scope: !150)
!152 = !DILocation(line: 177, column: 9, scope: !150)
!153 = !DILocation(line: 178, column: 13, scope: !150)
!154 = distinct !{!154, !132, !155, !156, !157}
!155 = !DILocation(line: 180, column: 2, scope: !102)
!156 = !{!"llvm.loop.mustprogress"}
!157 = !{!"llvm.loop.unroll.disable"}
!158 = !DILocation(line: 182, column: 15, scope: !102)
!159 = !DILocation(line: 182, column: 21, scope: !102)
!160 = !DILocation(line: 182, column: 29, scope: !102)
!161 = !DILocation(line: 182, column: 2, scope: !102)
!162 = !DILocation(line: 183, column: 25, scope: !102)
!163 = !DILocation(line: 183, column: 31, scope: !102)
!164 = !DILocation(line: 183, column: 37, scope: !102)
!165 = !{i8 0, i8 2}
!166 = !{}
!167 = !DILocation(line: 183, column: 2, scope: !102)
!168 = !DILocation(line: 185, column: 9, scope: !102)
!169 = !DILocation(line: 185, column: 20, scope: !102)
!170 = !DILocation(line: 186, column: 1, scope: !102)
!171 = !DILocation(line: 185, column: 2, scope: !102)
!172 = distinct !DISubprogram(name: "__timerqueue_less", scope: !2, file: !2, line: 20, type: !108, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !173)
!173 = !{!174, !175, !176, !178}
!174 = !DILocalVariable(name: "a", arg: 1, scope: !172, file: !2, line: 20, type: !23)
!175 = !DILocalVariable(name: "b", arg: 2, scope: !172, file: !2, line: 20, type: !110)
!176 = !DILocalVariable(name: "__mptr", scope: !177, file: !2, line: 22, type: !19)
!177 = distinct !DILexicalBlock(scope: !172, file: !2, line: 22, column: 9)
!178 = !DILocalVariable(name: "__mptr", scope: !179, file: !2, line: 22, type: !19)
!179 = distinct !DILexicalBlock(scope: !172, file: !2, line: 22, column: 35)
!180 = !DILocation(line: 20, column: 54, scope: !172)
!181 = !DILocation(line: 20, column: 79, scope: !172)
!182 = !DILocation(line: 22, column: 9, scope: !177)
!183 = !DILocation(line: 22, column: 9, scope: !172)
!184 = !DILocation(line: 22, column: 25, scope: !172)
!185 = !DILocation(line: 22, column: 35, scope: !179)
!186 = !DILocation(line: 22, column: 35, scope: !172)
!187 = !DILocation(line: 22, column: 51, scope: !172)
!188 = !DILocation(line: 22, column: 33, scope: !172)
!189 = !DILocation(line: 22, column: 2, scope: !172)
!190 = distinct !DISubprogram(name: "timerqueue_del", scope: !2, file: !2, line: 53, type: !58, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !191)
!191 = !{!192, !193, !194, !196}
!192 = !DILocalVariable(name: "head", arg: 1, scope: !190, file: !2, line: 53, type: !63)
!193 = !DILocalVariable(name: "node", arg: 2, scope: !190, file: !2, line: 53, type: !30)
!194 = !DILocalVariable(name: "__ret_warn_on", scope: !195, file: !2, line: 55, type: !79)
!195 = distinct !DILexicalBlock(scope: !190, file: !2, line: 55, column: 2)
!196 = !DILocalVariable(name: "__flags", scope: !197, file: !2, line: 55, type: !79)
!197 = distinct !DILexicalBlock(scope: !198, file: !2, line: 55, column: 2)
!198 = distinct !DILexicalBlock(scope: !195, file: !2, line: 55, column: 2)
!199 = !DILocation(line: 53, column: 45, scope: !190)
!200 = !DILocation(line: 53, column: 75, scope: !190)
!201 = !DILocation(line: 55, column: 2, scope: !195)
!202 = !DILocation(line: 55, column: 2, scope: !198)
!203 = !DILocation(line: 55, column: 2, scope: !197)
!204 = !DILocation(line: 55, column: 2, scope: !205)
!205 = distinct !DILexicalBlock(scope: !197, file: !2, line: 55, column: 2)
!206 = !DILocation(line: 55, column: 2, scope: !207)
!207 = distinct !DILexicalBlock(scope: !197, file: !2, line: 55, column: 2)
!208 = !{i64 2149741198, i64 2149741227, i64 2149741273, i64 2149741331, i64 2149741385, i64 2149741439, i64 2149741494, i64 2149741525, i64 2149741833, i64 2149741839, i64 2149741886, i64 2149741909, i64 2149741935}
!209 = !DILocation(line: 55, column: 2, scope: !210)
!210 = distinct !DILexicalBlock(scope: !197, file: !2, line: 55, column: 2)
!211 = !DILocation(line: 55, column: 2, scope: !190)
!212 = !DILocation(line: 57, column: 19, scope: !190)
!213 = !DILocation(line: 57, column: 25, scope: !190)
!214 = !DILocation(line: 57, column: 32, scope: !190)
!215 = !DILocation(line: 57, column: 38, scope: !190)
!216 = !DILocation(line: 57, column: 2, scope: !190)
!217 = !DILocation(line: 58, column: 2, scope: !190)
!218 = !DILocation(line: 60, column: 10, scope: !219)
!219 = distinct !DILexicalBlock(scope: !190, file: !2, line: 60, column: 10)
!220 = !DILocation(line: 60, column: 10, scope: !221)
!221 = distinct !DILexicalBlock(scope: !219, file: !2, line: 60, column: 10)
!222 = !DILocation(line: 60, column: 10, scope: !190)
!223 = !DILocation(line: 60, column: 9, scope: !190)
!224 = !DILocation(line: 60, column: 2, scope: !190)
!225 = distinct !DISubprogram(name: "rb_erase_cached", scope: !103, file: !103, line: 119, type: !226, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !228)
!226 = !DISubroutineType(types: !227)
!227 = !{!23, !23, !106}
!228 = !{!229, !230, !231}
!229 = !DILocalVariable(name: "node", arg: 1, scope: !225, file: !103, line: 119, type: !23)
!230 = !DILocalVariable(name: "root", arg: 2, scope: !225, file: !103, line: 119, type: !106)
!231 = !DILocalVariable(name: "leftmost", scope: !225, file: !103, line: 121, type: !23)
!232 = !DILocation(line: 119, column: 33, scope: !225)
!233 = !DILocation(line: 119, column: 62, scope: !225)
!234 = !DILocation(line: 121, column: 2, scope: !225)
!235 = !DILocation(line: 121, column: 18, scope: !225)
!236 = !DILocation(line: 123, column: 6, scope: !237)
!237 = distinct !DILexicalBlock(scope: !225, file: !103, line: 123, column: 6)
!238 = !DILocation(line: 123, column: 12, scope: !237)
!239 = !DILocation(line: 123, column: 27, scope: !237)
!240 = !DILocation(line: 123, column: 24, scope: !237)
!241 = !DILocation(line: 123, column: 6, scope: !225)
!242 = !DILocation(line: 124, column: 42, scope: !237)
!243 = !DILocation(line: 124, column: 34, scope: !237)
!244 = !DILocation(line: 124, column: 14, scope: !237)
!245 = !DILocation(line: 124, column: 20, scope: !237)
!246 = !DILocation(line: 124, column: 32, scope: !237)
!247 = !DILocation(line: 124, column: 12, scope: !237)
!248 = !DILocation(line: 124, column: 3, scope: !237)
!249 = !DILocation(line: 126, column: 11, scope: !225)
!250 = !DILocation(line: 126, column: 18, scope: !225)
!251 = !DILocation(line: 126, column: 24, scope: !225)
!252 = !DILocation(line: 126, column: 2, scope: !225)
!253 = !DILocation(line: 128, column: 9, scope: !225)
!254 = !DILocation(line: 129, column: 1, scope: !225)
!255 = !DILocation(line: 128, column: 2, scope: !225)
!256 = distinct !DISubprogram(name: "timerqueue_iterate_next", scope: !2, file: !2, line: 73, type: !257, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !259)
!257 = !DISubroutineType(types: !258)
!258 = !{!30, !30}
!259 = !{!260, !261, !262}
!260 = !DILocalVariable(name: "node", arg: 1, scope: !256, file: !2, line: 73, type: !30)
!261 = !DILocalVariable(name: "next", scope: !256, file: !2, line: 75, type: !23)
!262 = !DILocalVariable(name: "__mptr", scope: !263, file: !2, line: 82, type: !19)
!263 = distinct !DILexicalBlock(scope: !256, file: !2, line: 82, column: 9)
!264 = !DILocation(line: 73, column: 73, scope: !256)
!265 = !DILocation(line: 75, column: 2, scope: !256)
!266 = !DILocation(line: 75, column: 18, scope: !256)
!267 = !DILocation(line: 77, column: 7, scope: !268)
!268 = distinct !DILexicalBlock(scope: !256, file: !2, line: 77, column: 6)
!269 = !DILocation(line: 77, column: 6, scope: !256)
!270 = !DILocation(line: 78, column: 3, scope: !268)
!271 = !DILocation(line: 79, column: 18, scope: !256)
!272 = !DILocation(line: 79, column: 24, scope: !256)
!273 = !DILocation(line: 79, column: 9, scope: !256)
!274 = !DILocation(line: 79, column: 7, scope: !256)
!275 = !DILocation(line: 80, column: 7, scope: !276)
!276 = distinct !DILexicalBlock(scope: !256, file: !2, line: 80, column: 6)
!277 = !DILocation(line: 80, column: 6, scope: !256)
!278 = !DILocation(line: 81, column: 3, scope: !276)
!279 = !DILocation(line: 82, column: 9, scope: !263)
!280 = !DILocation(line: 82, column: 9, scope: !256)
!281 = !DILocation(line: 82, column: 2, scope: !256)
!282 = !DILocation(line: 83, column: 1, scope: !256)
!283 = !DISubprogram(name: "rb_next", scope: !103, file: !103, line: 44, type: !284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!284 = !DISubroutineType(types: !285)
!285 = !{!23, !110}
!286 = distinct !DISubprogram(name: "rb_link_node", scope: !103, file: !103, line: 59, type: !287, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !289)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !23, !23, !117}
!289 = !{!290, !291, !292}
!290 = !DILocalVariable(name: "node", arg: 1, scope: !286, file: !103, line: 59, type: !23)
!291 = !DILocalVariable(name: "parent", arg: 2, scope: !286, file: !103, line: 59, type: !23)
!292 = !DILocalVariable(name: "rb_link", arg: 3, scope: !286, file: !103, line: 60, type: !117)
!293 = !DILocation(line: 59, column: 49, scope: !286)
!294 = !DILocation(line: 59, column: 71, scope: !286)
!295 = !DILocation(line: 60, column: 22, scope: !286)
!296 = !DILocation(line: 62, column: 43, scope: !286)
!297 = !DILocation(line: 62, column: 28, scope: !286)
!298 = !DILocation(line: 62, column: 2, scope: !286)
!299 = !DILocation(line: 62, column: 8, scope: !286)
!300 = !DILocation(line: 62, column: 26, scope: !286)
!301 = !DILocation(line: 63, column: 18, scope: !286)
!302 = !DILocation(line: 63, column: 24, scope: !286)
!303 = !DILocation(line: 63, column: 33, scope: !286)
!304 = !DILocation(line: 63, column: 2, scope: !286)
!305 = !DILocation(line: 63, column: 8, scope: !286)
!306 = !DILocation(line: 63, column: 16, scope: !286)
!307 = !DILocation(line: 65, column: 13, scope: !286)
!308 = !DILocation(line: 65, column: 3, scope: !286)
!309 = !DILocation(line: 65, column: 11, scope: !286)
!310 = !DILocation(line: 66, column: 1, scope: !286)
!311 = distinct !DISubprogram(name: "rb_insert_color_cached", scope: !103, file: !103, line: 108, type: !312, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !314)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !23, !106, !60}
!314 = !{!315, !316, !317}
!315 = !DILocalVariable(name: "node", arg: 1, scope: !311, file: !103, line: 108, type: !23)
!316 = !DILocalVariable(name: "root", arg: 2, scope: !311, file: !103, line: 109, type: !106)
!317 = !DILocalVariable(name: "leftmost", arg: 3, scope: !311, file: !103, line: 110, type: !60)
!318 = !DILocation(line: 108, column: 59, scope: !311)
!319 = !DILocation(line: 109, column: 31, scope: !311)
!320 = !DILocation(line: 110, column: 13, scope: !311)
!321 = !DILocation(line: 112, column: 6, scope: !322)
!322 = distinct !DILexicalBlock(scope: !311, file: !103, line: 112, column: 6)
!323 = !DILocation(line: 112, column: 6, scope: !311)
!324 = !DILocation(line: 113, column: 23, scope: !322)
!325 = !DILocation(line: 113, column: 3, scope: !322)
!326 = !DILocation(line: 113, column: 9, scope: !322)
!327 = !DILocation(line: 113, column: 21, scope: !322)
!328 = !DILocation(line: 114, column: 18, scope: !311)
!329 = !DILocation(line: 114, column: 25, scope: !311)
!330 = !DILocation(line: 114, column: 31, scope: !311)
!331 = !DILocation(line: 114, column: 2, scope: !311)
!332 = !DILocation(line: 115, column: 1, scope: !311)
!333 = !DISubprogram(name: "rb_insert_color", scope: !103, file: !103, line: 39, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !23, !336}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!337 = !DISubprogram(name: "rb_erase", scope: !103, file: !103, line: 40, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)

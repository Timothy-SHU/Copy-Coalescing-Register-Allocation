; ModuleID = 'lib/rbtree.c'
source_filename = "lib/rbtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___rb_erase_color: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __rb_erase_color ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rb_insert_color: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rb_insert_color ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rb_erase: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rb_erase ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___rb_insert_augmented: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __rb_insert_augmented ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rb_first: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rb_first ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rb_last: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rb_last ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rb_next: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rb_next ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rb_prev: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rb_prev ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rb_replace_node: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rb_replace_node ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rb_replace_node_rcu: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rb_replace_node_rcu ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rb_next_postorder: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rb_next_postorder ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rb_first_postorder: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rb_first_postorder ; .previous"

%struct.rb_augment_callbacks = type { ptr, ptr, ptr }
%struct.rb_node = type { i64, ptr, ptr }
%struct.rb_root = type { ptr }

@__UNIQUE_ID___addressable___rb_erase_color86 = internal global ptr @__rb_erase_color, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_rb_insert_color87 = internal global ptr @rb_insert_color, section ".discard.addressable", align 8, !dbg !26
@dummy_callbacks = internal constant %struct.rb_augment_callbacks { ptr @dummy_propagate, ptr @dummy_copy, ptr @dummy_rotate }, align 8, !dbg !48
@__UNIQUE_ID___addressable_rb_erase88 = internal global ptr @rb_erase, section ".discard.addressable", align 8, !dbg !28
@__UNIQUE_ID___addressable___rb_insert_augmented89 = internal global ptr @__rb_insert_augmented, section ".discard.addressable", align 8, !dbg !30
@__UNIQUE_ID___addressable_rb_first90 = internal global ptr @rb_first, section ".discard.addressable", align 8, !dbg !32
@__UNIQUE_ID___addressable_rb_last91 = internal global ptr @rb_last, section ".discard.addressable", align 8, !dbg !34
@__UNIQUE_ID___addressable_rb_next92 = internal global ptr @rb_next, section ".discard.addressable", align 8, !dbg !36
@__UNIQUE_ID___addressable_rb_prev93 = internal global ptr @rb_prev, section ".discard.addressable", align 8, !dbg !38
@__UNIQUE_ID___addressable_rb_replace_node94 = internal global ptr @rb_replace_node, section ".discard.addressable", align 8, !dbg !40
@__UNIQUE_ID___addressable_rb_replace_node_rcu95 = internal global ptr @rb_replace_node_rcu, section ".discard.addressable", align 8, !dbg !42
@__UNIQUE_ID___addressable_rb_next_postorder96 = internal global ptr @rb_next_postorder, section ".discard.addressable", align 8, !dbg !44
@__UNIQUE_ID___addressable_rb_first_postorder97 = internal global ptr @rb_first_postorder, section ".discard.addressable", align 8, !dbg !46
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID___addressable___rb_erase_color86, ptr @__UNIQUE_ID___addressable_rb_insert_color87, ptr @__UNIQUE_ID___addressable_rb_erase88, ptr @__UNIQUE_ID___addressable___rb_insert_augmented89, ptr @__UNIQUE_ID___addressable_rb_first90, ptr @__UNIQUE_ID___addressable_rb_last91, ptr @__UNIQUE_ID___addressable_rb_next92, ptr @__UNIQUE_ID___addressable_rb_prev93, ptr @__UNIQUE_ID___addressable_rb_replace_node94, ptr @__UNIQUE_ID___addressable_rb_replace_node_rcu95, ptr @__UNIQUE_ID___addressable_rb_next_postorder96, ptr @__UNIQUE_ID___addressable_rb_first_postorder97], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__rb_erase_color(ptr noundef %parent, ptr noundef %root, ptr noundef %augment_rotate) #0 align 16 !dbg !69 {
entry:
  %parent.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %augment_rotate.addr = alloca ptr, align 8
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !77, metadata !DIExpression()), !dbg !80
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !78, metadata !DIExpression()), !dbg !81
  store ptr %augment_rotate, ptr %augment_rotate.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %augment_rotate.addr, metadata !79, metadata !DIExpression()), !dbg !82
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !83
  %1 = load ptr, ptr %root.addr, align 8, !dbg !84
  %2 = load ptr, ptr %augment_rotate.addr, align 8, !dbg !85
  call void @____rb_erase_color(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7, !dbg !86
  ret void, !dbg !87
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @____rb_erase_color(ptr noundef %parent, ptr noundef %root, ptr noundef %augment_rotate) #2 align 16 !dbg !88 {
entry:
  %parent.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %augment_rotate.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %sibling = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !90, metadata !DIExpression()), !dbg !97
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !91, metadata !DIExpression()), !dbg !98
  store ptr %augment_rotate, ptr %augment_rotate.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %augment_rotate.addr, metadata !92, metadata !DIExpression()), !dbg !99
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #8, !dbg !100
  call void @llvm.dbg.declare(metadata ptr %node, metadata !93, metadata !DIExpression()), !dbg !101
  store ptr null, ptr %node, align 8, !dbg !101
  call void @llvm.lifetime.start.p0(i64 8, ptr %sibling) #8, !dbg !100
  call void @llvm.dbg.declare(metadata ptr %sibling, metadata !94, metadata !DIExpression()), !dbg !102
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp1) #8, !dbg !100
  call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !95, metadata !DIExpression()), !dbg !103
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp2) #8, !dbg !100
  call void @llvm.dbg.declare(metadata ptr %tmp2, metadata !96, metadata !DIExpression()), !dbg !104
  br label %while.cond, !dbg !105

while.cond:                                       ; preds = %if.then152, %if.then39, %entry
  br label %while.body, !dbg !105

while.body:                                       ; preds = %while.cond
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !106
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 1, !dbg !108
  %1 = load ptr, ptr %rb_right, align 8, !dbg !108
  store ptr %1, ptr %sibling, align 8, !dbg !109
  %2 = load ptr, ptr %node, align 8, !dbg !110
  %3 = load ptr, ptr %sibling, align 8, !dbg !112
  %cmp = icmp ne ptr %2, %3, !dbg !113
  br i1 %cmp, label %if.then, label %if.else102, !dbg !114

if.then:                                          ; preds = %while.body
  %4 = load ptr, ptr %sibling, align 8, !dbg !115
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 0, !dbg !115
  %5 = load i64, ptr %__rb_parent_color, align 8, !dbg !115
  %and = and i64 %5, 1, !dbg !115
  %tobool = icmp ne i64 %and, 0, !dbg !115
  br i1 %tobool, label %if.end, label %if.then1, !dbg !118

if.then1:                                         ; preds = %if.then
  %6 = load ptr, ptr %sibling, align 8, !dbg !119
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 2, !dbg !121
  %7 = load ptr, ptr %rb_left, align 8, !dbg !121
  store ptr %7, ptr %tmp1, align 8, !dbg !122
  br label %do.body, !dbg !123

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !124

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !126

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !126

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !124

do.body3:                                         ; preds = %do.end
  %8 = load ptr, ptr %tmp1, align 8, !dbg !128
  %9 = load ptr, ptr %parent.addr, align 8, !dbg !128
  %rb_right4 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1, !dbg !128
  store volatile ptr %8, ptr %rb_right4, align 8, !dbg !128
  br label %do.cond5, !dbg !128

do.cond5:                                         ; preds = %do.body3
  br label %do.end6, !dbg !128

do.end6:                                          ; preds = %do.cond5
  br label %do.cond7, !dbg !124

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !124

do.end8:                                          ; preds = %do.cond7
  br label %do.body9, !dbg !130

do.body9:                                         ; preds = %do.end8
  br label %do.body10, !dbg !131

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !133

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !133

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !131

do.body13:                                        ; preds = %do.end12
  %10 = load ptr, ptr %parent.addr, align 8, !dbg !135
  %11 = load ptr, ptr %sibling, align 8, !dbg !135
  %rb_left14 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 2, !dbg !135
  store volatile ptr %10, ptr %rb_left14, align 8, !dbg !135
  br label %do.cond15, !dbg !135

do.cond15:                                        ; preds = %do.body13
  br label %do.end16, !dbg !135

do.end16:                                         ; preds = %do.cond15
  br label %do.cond17, !dbg !131

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !131

do.end18:                                         ; preds = %do.cond17
  %12 = load ptr, ptr %tmp1, align 8, !dbg !137
  %13 = load ptr, ptr %parent.addr, align 8, !dbg !138
  call void @rb_set_parent_color(ptr noundef %12, ptr noundef %13, i32 noundef 1) #7, !dbg !139
  %14 = load ptr, ptr %parent.addr, align 8, !dbg !140
  %15 = load ptr, ptr %sibling, align 8, !dbg !141
  %16 = load ptr, ptr %root.addr, align 8, !dbg !142
  call void @__rb_rotate_set_parents(ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef 0) #7, !dbg !143
  %17 = load ptr, ptr %augment_rotate.addr, align 8, !dbg !144
  %18 = load ptr, ptr %parent.addr, align 8, !dbg !145
  %19 = load ptr, ptr %sibling, align 8, !dbg !146
  call void %17(ptr noundef %18, ptr noundef %19) #7, !dbg !144
  %20 = load ptr, ptr %tmp1, align 8, !dbg !147
  store ptr %20, ptr %sibling, align 8, !dbg !148
  br label %if.end, !dbg !149

if.end:                                           ; preds = %do.end18, %if.then
  %21 = load ptr, ptr %sibling, align 8, !dbg !150
  %rb_right19 = getelementptr inbounds %struct.rb_node, ptr %21, i32 0, i32 1, !dbg !151
  %22 = load ptr, ptr %rb_right19, align 8, !dbg !151
  store ptr %22, ptr %tmp1, align 8, !dbg !152
  %23 = load ptr, ptr %tmp1, align 8, !dbg !153
  %tobool20 = icmp ne ptr %23, null, !dbg !153
  br i1 %tobool20, label %lor.lhs.false, label %if.then24, !dbg !155

lor.lhs.false:                                    ; preds = %if.end
  %24 = load ptr, ptr %tmp1, align 8, !dbg !156
  %__rb_parent_color21 = getelementptr inbounds %struct.rb_node, ptr %24, i32 0, i32 0, !dbg !156
  %25 = load i64, ptr %__rb_parent_color21, align 8, !dbg !156
  %and22 = and i64 %25, 1, !dbg !156
  %tobool23 = icmp ne i64 %and22, 0, !dbg !156
  br i1 %tobool23, label %if.then24, label %if.end77, !dbg !157

if.then24:                                        ; preds = %lor.lhs.false, %if.end
  %26 = load ptr, ptr %sibling, align 8, !dbg !158
  %rb_left25 = getelementptr inbounds %struct.rb_node, ptr %26, i32 0, i32 2, !dbg !160
  %27 = load ptr, ptr %rb_left25, align 8, !dbg !160
  store ptr %27, ptr %tmp2, align 8, !dbg !161
  %28 = load ptr, ptr %tmp2, align 8, !dbg !162
  %tobool26 = icmp ne ptr %28, null, !dbg !162
  br i1 %tobool26, label %lor.lhs.false27, label %if.then31, !dbg !164

lor.lhs.false27:                                  ; preds = %if.then24
  %29 = load ptr, ptr %tmp2, align 8, !dbg !165
  %__rb_parent_color28 = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 0, !dbg !165
  %30 = load i64, ptr %__rb_parent_color28, align 8, !dbg !165
  %and29 = and i64 %30, 1, !dbg !165
  %tobool30 = icmp ne i64 %and29, 0, !dbg !165
  br i1 %tobool30, label %if.then31, label %if.end42, !dbg !166

if.then31:                                        ; preds = %lor.lhs.false27, %if.then24
  %31 = load ptr, ptr %sibling, align 8, !dbg !167
  %32 = load ptr, ptr %parent.addr, align 8, !dbg !169
  call void @rb_set_parent_color(ptr noundef %31, ptr noundef %32, i32 noundef 0) #7, !dbg !170
  %33 = load ptr, ptr %parent.addr, align 8, !dbg !171
  %__rb_parent_color32 = getelementptr inbounds %struct.rb_node, ptr %33, i32 0, i32 0, !dbg !171
  %34 = load i64, ptr %__rb_parent_color32, align 8, !dbg !171
  %and33 = and i64 %34, 1, !dbg !171
  %tobool34 = icmp ne i64 %and33, 0, !dbg !171
  br i1 %tobool34, label %if.else, label %if.then35, !dbg !173

if.then35:                                        ; preds = %if.then31
  %35 = load ptr, ptr %parent.addr, align 8, !dbg !174
  call void @rb_set_black(ptr noundef %35) #7, !dbg !175
  br label %if.end41, !dbg !175

if.else:                                          ; preds = %if.then31
  %36 = load ptr, ptr %parent.addr, align 8, !dbg !176
  store ptr %36, ptr %node, align 8, !dbg !178
  %37 = load ptr, ptr %node, align 8, !dbg !179
  %__rb_parent_color36 = getelementptr inbounds %struct.rb_node, ptr %37, i32 0, i32 0, !dbg !179
  %38 = load i64, ptr %__rb_parent_color36, align 8, !dbg !179
  %and37 = and i64 %38, -4, !dbg !179
  %39 = inttoptr i64 %and37 to ptr, !dbg !179
  store ptr %39, ptr %parent.addr, align 8, !dbg !180
  %40 = load ptr, ptr %parent.addr, align 8, !dbg !181
  %tobool38 = icmp ne ptr %40, null, !dbg !181
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !183

if.then39:                                        ; preds = %if.else
  br label %while.cond, !dbg !184, !llvm.loop !185

if.end40:                                         ; preds = %if.else
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then35
  br label %while.end, !dbg !188

if.end42:                                         ; preds = %lor.lhs.false27
  %41 = load ptr, ptr %tmp2, align 8, !dbg !189
  %rb_right43 = getelementptr inbounds %struct.rb_node, ptr %41, i32 0, i32 1, !dbg !190
  %42 = load ptr, ptr %rb_right43, align 8, !dbg !190
  store ptr %42, ptr %tmp1, align 8, !dbg !191
  br label %do.body44, !dbg !192

do.body44:                                        ; preds = %if.end42
  br label %do.body45, !dbg !193

do.body45:                                        ; preds = %do.body44
  br label %do.cond46, !dbg !195

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !195

do.end47:                                         ; preds = %do.cond46
  br label %do.body48, !dbg !193

do.body48:                                        ; preds = %do.end47
  %43 = load ptr, ptr %tmp1, align 8, !dbg !197
  %44 = load ptr, ptr %sibling, align 8, !dbg !197
  %rb_left49 = getelementptr inbounds %struct.rb_node, ptr %44, i32 0, i32 2, !dbg !197
  store volatile ptr %43, ptr %rb_left49, align 8, !dbg !197
  br label %do.cond50, !dbg !197

do.cond50:                                        ; preds = %do.body48
  br label %do.end51, !dbg !197

do.end51:                                         ; preds = %do.cond50
  br label %do.cond52, !dbg !193

do.cond52:                                        ; preds = %do.end51
  br label %do.end53, !dbg !193

do.end53:                                         ; preds = %do.cond52
  br label %do.body54, !dbg !199

do.body54:                                        ; preds = %do.end53
  br label %do.body55, !dbg !200

do.body55:                                        ; preds = %do.body54
  br label %do.cond56, !dbg !202

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !202

do.end57:                                         ; preds = %do.cond56
  br label %do.body58, !dbg !200

do.body58:                                        ; preds = %do.end57
  %45 = load ptr, ptr %sibling, align 8, !dbg !204
  %46 = load ptr, ptr %tmp2, align 8, !dbg !204
  %rb_right59 = getelementptr inbounds %struct.rb_node, ptr %46, i32 0, i32 1, !dbg !204
  store volatile ptr %45, ptr %rb_right59, align 8, !dbg !204
  br label %do.cond60, !dbg !204

do.cond60:                                        ; preds = %do.body58
  br label %do.end61, !dbg !204

do.end61:                                         ; preds = %do.cond60
  br label %do.cond62, !dbg !200

do.cond62:                                        ; preds = %do.end61
  br label %do.end63, !dbg !200

do.end63:                                         ; preds = %do.cond62
  br label %do.body64, !dbg !206

do.body64:                                        ; preds = %do.end63
  br label %do.body65, !dbg !207

do.body65:                                        ; preds = %do.body64
  br label %do.cond66, !dbg !209

do.cond66:                                        ; preds = %do.body65
  br label %do.end67, !dbg !209

do.end67:                                         ; preds = %do.cond66
  br label %do.body68, !dbg !207

do.body68:                                        ; preds = %do.end67
  %47 = load ptr, ptr %tmp2, align 8, !dbg !211
  %48 = load ptr, ptr %parent.addr, align 8, !dbg !211
  %rb_right69 = getelementptr inbounds %struct.rb_node, ptr %48, i32 0, i32 1, !dbg !211
  store volatile ptr %47, ptr %rb_right69, align 8, !dbg !211
  br label %do.cond70, !dbg !211

do.cond70:                                        ; preds = %do.body68
  br label %do.end71, !dbg !211

do.end71:                                         ; preds = %do.cond70
  br label %do.cond72, !dbg !207

do.cond72:                                        ; preds = %do.end71
  br label %do.end73, !dbg !207

do.end73:                                         ; preds = %do.cond72
  %49 = load ptr, ptr %tmp1, align 8, !dbg !213
  %tobool74 = icmp ne ptr %49, null, !dbg !213
  br i1 %tobool74, label %if.then75, label %if.end76, !dbg !215

if.then75:                                        ; preds = %do.end73
  %50 = load ptr, ptr %tmp1, align 8, !dbg !216
  %51 = load ptr, ptr %sibling, align 8, !dbg !217
  call void @rb_set_parent_color(ptr noundef %50, ptr noundef %51, i32 noundef 1) #7, !dbg !218
  br label %if.end76, !dbg !218

if.end76:                                         ; preds = %if.then75, %do.end73
  %52 = load ptr, ptr %augment_rotate.addr, align 8, !dbg !219
  %53 = load ptr, ptr %sibling, align 8, !dbg !220
  %54 = load ptr, ptr %tmp2, align 8, !dbg !221
  call void %52(ptr noundef %53, ptr noundef %54) #7, !dbg !219
  %55 = load ptr, ptr %sibling, align 8, !dbg !222
  store ptr %55, ptr %tmp1, align 8, !dbg !223
  %56 = load ptr, ptr %tmp2, align 8, !dbg !224
  store ptr %56, ptr %sibling, align 8, !dbg !225
  br label %if.end77, !dbg !226

if.end77:                                         ; preds = %if.end76, %lor.lhs.false
  %57 = load ptr, ptr %sibling, align 8, !dbg !227
  %rb_left78 = getelementptr inbounds %struct.rb_node, ptr %57, i32 0, i32 2, !dbg !228
  %58 = load ptr, ptr %rb_left78, align 8, !dbg !228
  store ptr %58, ptr %tmp2, align 8, !dbg !229
  br label %do.body79, !dbg !230

do.body79:                                        ; preds = %if.end77
  br label %do.body80, !dbg !231

do.body80:                                        ; preds = %do.body79
  br label %do.cond81, !dbg !233

do.cond81:                                        ; preds = %do.body80
  br label %do.end82, !dbg !233

do.end82:                                         ; preds = %do.cond81
  br label %do.body83, !dbg !231

do.body83:                                        ; preds = %do.end82
  %59 = load ptr, ptr %tmp2, align 8, !dbg !235
  %60 = load ptr, ptr %parent.addr, align 8, !dbg !235
  %rb_right84 = getelementptr inbounds %struct.rb_node, ptr %60, i32 0, i32 1, !dbg !235
  store volatile ptr %59, ptr %rb_right84, align 8, !dbg !235
  br label %do.cond85, !dbg !235

do.cond85:                                        ; preds = %do.body83
  br label %do.end86, !dbg !235

do.end86:                                         ; preds = %do.cond85
  br label %do.cond87, !dbg !231

do.cond87:                                        ; preds = %do.end86
  br label %do.end88, !dbg !231

do.end88:                                         ; preds = %do.cond87
  br label %do.body89, !dbg !237

do.body89:                                        ; preds = %do.end88
  br label %do.body90, !dbg !238

do.body90:                                        ; preds = %do.body89
  br label %do.cond91, !dbg !240

do.cond91:                                        ; preds = %do.body90
  br label %do.end92, !dbg !240

do.end92:                                         ; preds = %do.cond91
  br label %do.body93, !dbg !238

do.body93:                                        ; preds = %do.end92
  %61 = load ptr, ptr %parent.addr, align 8, !dbg !242
  %62 = load ptr, ptr %sibling, align 8, !dbg !242
  %rb_left94 = getelementptr inbounds %struct.rb_node, ptr %62, i32 0, i32 2, !dbg !242
  store volatile ptr %61, ptr %rb_left94, align 8, !dbg !242
  br label %do.cond95, !dbg !242

do.cond95:                                        ; preds = %do.body93
  br label %do.end96, !dbg !242

do.end96:                                         ; preds = %do.cond95
  br label %do.cond97, !dbg !238

do.cond97:                                        ; preds = %do.end96
  br label %do.end98, !dbg !238

do.end98:                                         ; preds = %do.cond97
  %63 = load ptr, ptr %tmp1, align 8, !dbg !244
  %64 = load ptr, ptr %sibling, align 8, !dbg !245
  call void @rb_set_parent_color(ptr noundef %63, ptr noundef %64, i32 noundef 1) #7, !dbg !246
  %65 = load ptr, ptr %tmp2, align 8, !dbg !247
  %tobool99 = icmp ne ptr %65, null, !dbg !247
  br i1 %tobool99, label %if.then100, label %if.end101, !dbg !249

if.then100:                                       ; preds = %do.end98
  %66 = load ptr, ptr %tmp2, align 8, !dbg !250
  %67 = load ptr, ptr %parent.addr, align 8, !dbg !251
  call void @rb_set_parent(ptr noundef %66, ptr noundef %67) #7, !dbg !252
  br label %if.end101, !dbg !252

if.end101:                                        ; preds = %if.then100, %do.end98
  %68 = load ptr, ptr %parent.addr, align 8, !dbg !253
  %69 = load ptr, ptr %sibling, align 8, !dbg !254
  %70 = load ptr, ptr %root.addr, align 8, !dbg !255
  call void @__rb_rotate_set_parents(ptr noundef %68, ptr noundef %69, ptr noundef %70, i32 noundef 1) #7, !dbg !256
  %71 = load ptr, ptr %augment_rotate.addr, align 8, !dbg !257
  %72 = load ptr, ptr %parent.addr, align 8, !dbg !258
  %73 = load ptr, ptr %sibling, align 8, !dbg !259
  call void %71(ptr noundef %72, ptr noundef %73) #7, !dbg !257
  br label %while.end, !dbg !260

if.else102:                                       ; preds = %while.body
  %74 = load ptr, ptr %parent.addr, align 8, !dbg !261
  %rb_left103 = getelementptr inbounds %struct.rb_node, ptr %74, i32 0, i32 2, !dbg !263
  %75 = load ptr, ptr %rb_left103, align 8, !dbg !263
  store ptr %75, ptr %sibling, align 8, !dbg !264
  %76 = load ptr, ptr %sibling, align 8, !dbg !265
  %__rb_parent_color104 = getelementptr inbounds %struct.rb_node, ptr %76, i32 0, i32 0, !dbg !265
  %77 = load i64, ptr %__rb_parent_color104, align 8, !dbg !265
  %and105 = and i64 %77, 1, !dbg !265
  %tobool106 = icmp ne i64 %and105, 0, !dbg !265
  br i1 %tobool106, label %if.end129, label %if.then107, !dbg !267

if.then107:                                       ; preds = %if.else102
  %78 = load ptr, ptr %sibling, align 8, !dbg !268
  %rb_right108 = getelementptr inbounds %struct.rb_node, ptr %78, i32 0, i32 1, !dbg !270
  %79 = load ptr, ptr %rb_right108, align 8, !dbg !270
  store ptr %79, ptr %tmp1, align 8, !dbg !271
  br label %do.body109, !dbg !272

do.body109:                                       ; preds = %if.then107
  br label %do.body110, !dbg !273

do.body110:                                       ; preds = %do.body109
  br label %do.cond111, !dbg !275

do.cond111:                                       ; preds = %do.body110
  br label %do.end112, !dbg !275

do.end112:                                        ; preds = %do.cond111
  br label %do.body113, !dbg !273

do.body113:                                       ; preds = %do.end112
  %80 = load ptr, ptr %tmp1, align 8, !dbg !277
  %81 = load ptr, ptr %parent.addr, align 8, !dbg !277
  %rb_left114 = getelementptr inbounds %struct.rb_node, ptr %81, i32 0, i32 2, !dbg !277
  store volatile ptr %80, ptr %rb_left114, align 8, !dbg !277
  br label %do.cond115, !dbg !277

do.cond115:                                       ; preds = %do.body113
  br label %do.end116, !dbg !277

do.end116:                                        ; preds = %do.cond115
  br label %do.cond117, !dbg !273

do.cond117:                                       ; preds = %do.end116
  br label %do.end118, !dbg !273

do.end118:                                        ; preds = %do.cond117
  br label %do.body119, !dbg !279

do.body119:                                       ; preds = %do.end118
  br label %do.body120, !dbg !280

do.body120:                                       ; preds = %do.body119
  br label %do.cond121, !dbg !282

do.cond121:                                       ; preds = %do.body120
  br label %do.end122, !dbg !282

do.end122:                                        ; preds = %do.cond121
  br label %do.body123, !dbg !280

do.body123:                                       ; preds = %do.end122
  %82 = load ptr, ptr %parent.addr, align 8, !dbg !284
  %83 = load ptr, ptr %sibling, align 8, !dbg !284
  %rb_right124 = getelementptr inbounds %struct.rb_node, ptr %83, i32 0, i32 1, !dbg !284
  store volatile ptr %82, ptr %rb_right124, align 8, !dbg !284
  br label %do.cond125, !dbg !284

do.cond125:                                       ; preds = %do.body123
  br label %do.end126, !dbg !284

do.end126:                                        ; preds = %do.cond125
  br label %do.cond127, !dbg !280

do.cond127:                                       ; preds = %do.end126
  br label %do.end128, !dbg !280

do.end128:                                        ; preds = %do.cond127
  %84 = load ptr, ptr %tmp1, align 8, !dbg !286
  %85 = load ptr, ptr %parent.addr, align 8, !dbg !287
  call void @rb_set_parent_color(ptr noundef %84, ptr noundef %85, i32 noundef 1) #7, !dbg !288
  %86 = load ptr, ptr %parent.addr, align 8, !dbg !289
  %87 = load ptr, ptr %sibling, align 8, !dbg !290
  %88 = load ptr, ptr %root.addr, align 8, !dbg !291
  call void @__rb_rotate_set_parents(ptr noundef %86, ptr noundef %87, ptr noundef %88, i32 noundef 0) #7, !dbg !292
  %89 = load ptr, ptr %augment_rotate.addr, align 8, !dbg !293
  %90 = load ptr, ptr %parent.addr, align 8, !dbg !294
  %91 = load ptr, ptr %sibling, align 8, !dbg !295
  call void %89(ptr noundef %90, ptr noundef %91) #7, !dbg !293
  %92 = load ptr, ptr %tmp1, align 8, !dbg !296
  store ptr %92, ptr %sibling, align 8, !dbg !297
  br label %if.end129, !dbg !298

if.end129:                                        ; preds = %do.end128, %if.else102
  %93 = load ptr, ptr %sibling, align 8, !dbg !299
  %rb_left130 = getelementptr inbounds %struct.rb_node, ptr %93, i32 0, i32 2, !dbg !300
  %94 = load ptr, ptr %rb_left130, align 8, !dbg !300
  store ptr %94, ptr %tmp1, align 8, !dbg !301
  %95 = load ptr, ptr %tmp1, align 8, !dbg !302
  %tobool131 = icmp ne ptr %95, null, !dbg !302
  br i1 %tobool131, label %lor.lhs.false132, label %if.then136, !dbg !304

lor.lhs.false132:                                 ; preds = %if.end129
  %96 = load ptr, ptr %tmp1, align 8, !dbg !305
  %__rb_parent_color133 = getelementptr inbounds %struct.rb_node, ptr %96, i32 0, i32 0, !dbg !305
  %97 = load i64, ptr %__rb_parent_color133, align 8, !dbg !305
  %and134 = and i64 %97, 1, !dbg !305
  %tobool135 = icmp ne i64 %and134, 0, !dbg !305
  br i1 %tobool135, label %if.then136, label %if.end190, !dbg !306

if.then136:                                       ; preds = %lor.lhs.false132, %if.end129
  %98 = load ptr, ptr %sibling, align 8, !dbg !307
  %rb_right137 = getelementptr inbounds %struct.rb_node, ptr %98, i32 0, i32 1, !dbg !309
  %99 = load ptr, ptr %rb_right137, align 8, !dbg !309
  store ptr %99, ptr %tmp2, align 8, !dbg !310
  %100 = load ptr, ptr %tmp2, align 8, !dbg !311
  %tobool138 = icmp ne ptr %100, null, !dbg !311
  br i1 %tobool138, label %lor.lhs.false139, label %if.then143, !dbg !313

lor.lhs.false139:                                 ; preds = %if.then136
  %101 = load ptr, ptr %tmp2, align 8, !dbg !314
  %__rb_parent_color140 = getelementptr inbounds %struct.rb_node, ptr %101, i32 0, i32 0, !dbg !314
  %102 = load i64, ptr %__rb_parent_color140, align 8, !dbg !314
  %and141 = and i64 %102, 1, !dbg !314
  %tobool142 = icmp ne i64 %and141, 0, !dbg !314
  br i1 %tobool142, label %if.then143, label %if.end155, !dbg !315

if.then143:                                       ; preds = %lor.lhs.false139, %if.then136
  %103 = load ptr, ptr %sibling, align 8, !dbg !316
  %104 = load ptr, ptr %parent.addr, align 8, !dbg !318
  call void @rb_set_parent_color(ptr noundef %103, ptr noundef %104, i32 noundef 0) #7, !dbg !319
  %105 = load ptr, ptr %parent.addr, align 8, !dbg !320
  %__rb_parent_color144 = getelementptr inbounds %struct.rb_node, ptr %105, i32 0, i32 0, !dbg !320
  %106 = load i64, ptr %__rb_parent_color144, align 8, !dbg !320
  %and145 = and i64 %106, 1, !dbg !320
  %tobool146 = icmp ne i64 %and145, 0, !dbg !320
  br i1 %tobool146, label %if.else148, label %if.then147, !dbg !322

if.then147:                                       ; preds = %if.then143
  %107 = load ptr, ptr %parent.addr, align 8, !dbg !323
  call void @rb_set_black(ptr noundef %107) #7, !dbg !324
  br label %if.end154, !dbg !324

if.else148:                                       ; preds = %if.then143
  %108 = load ptr, ptr %parent.addr, align 8, !dbg !325
  store ptr %108, ptr %node, align 8, !dbg !327
  %109 = load ptr, ptr %node, align 8, !dbg !328
  %__rb_parent_color149 = getelementptr inbounds %struct.rb_node, ptr %109, i32 0, i32 0, !dbg !328
  %110 = load i64, ptr %__rb_parent_color149, align 8, !dbg !328
  %and150 = and i64 %110, -4, !dbg !328
  %111 = inttoptr i64 %and150 to ptr, !dbg !328
  store ptr %111, ptr %parent.addr, align 8, !dbg !329
  %112 = load ptr, ptr %parent.addr, align 8, !dbg !330
  %tobool151 = icmp ne ptr %112, null, !dbg !330
  br i1 %tobool151, label %if.then152, label %if.end153, !dbg !332

if.then152:                                       ; preds = %if.else148
  br label %while.cond, !dbg !333, !llvm.loop !185

if.end153:                                        ; preds = %if.else148
  br label %if.end154

if.end154:                                        ; preds = %if.end153, %if.then147
  br label %while.end, !dbg !334

if.end155:                                        ; preds = %lor.lhs.false139
  %113 = load ptr, ptr %tmp2, align 8, !dbg !335
  %rb_left156 = getelementptr inbounds %struct.rb_node, ptr %113, i32 0, i32 2, !dbg !336
  %114 = load ptr, ptr %rb_left156, align 8, !dbg !336
  store ptr %114, ptr %tmp1, align 8, !dbg !337
  br label %do.body157, !dbg !338

do.body157:                                       ; preds = %if.end155
  br label %do.body158, !dbg !339

do.body158:                                       ; preds = %do.body157
  br label %do.cond159, !dbg !341

do.cond159:                                       ; preds = %do.body158
  br label %do.end160, !dbg !341

do.end160:                                        ; preds = %do.cond159
  br label %do.body161, !dbg !339

do.body161:                                       ; preds = %do.end160
  %115 = load ptr, ptr %tmp1, align 8, !dbg !343
  %116 = load ptr, ptr %sibling, align 8, !dbg !343
  %rb_right162 = getelementptr inbounds %struct.rb_node, ptr %116, i32 0, i32 1, !dbg !343
  store volatile ptr %115, ptr %rb_right162, align 8, !dbg !343
  br label %do.cond163, !dbg !343

do.cond163:                                       ; preds = %do.body161
  br label %do.end164, !dbg !343

do.end164:                                        ; preds = %do.cond163
  br label %do.cond165, !dbg !339

do.cond165:                                       ; preds = %do.end164
  br label %do.end166, !dbg !339

do.end166:                                        ; preds = %do.cond165
  br label %do.body167, !dbg !345

do.body167:                                       ; preds = %do.end166
  br label %do.body168, !dbg !346

do.body168:                                       ; preds = %do.body167
  br label %do.cond169, !dbg !348

do.cond169:                                       ; preds = %do.body168
  br label %do.end170, !dbg !348

do.end170:                                        ; preds = %do.cond169
  br label %do.body171, !dbg !346

do.body171:                                       ; preds = %do.end170
  %117 = load ptr, ptr %sibling, align 8, !dbg !350
  %118 = load ptr, ptr %tmp2, align 8, !dbg !350
  %rb_left172 = getelementptr inbounds %struct.rb_node, ptr %118, i32 0, i32 2, !dbg !350
  store volatile ptr %117, ptr %rb_left172, align 8, !dbg !350
  br label %do.cond173, !dbg !350

do.cond173:                                       ; preds = %do.body171
  br label %do.end174, !dbg !350

do.end174:                                        ; preds = %do.cond173
  br label %do.cond175, !dbg !346

do.cond175:                                       ; preds = %do.end174
  br label %do.end176, !dbg !346

do.end176:                                        ; preds = %do.cond175
  br label %do.body177, !dbg !352

do.body177:                                       ; preds = %do.end176
  br label %do.body178, !dbg !353

do.body178:                                       ; preds = %do.body177
  br label %do.cond179, !dbg !355

do.cond179:                                       ; preds = %do.body178
  br label %do.end180, !dbg !355

do.end180:                                        ; preds = %do.cond179
  br label %do.body181, !dbg !353

do.body181:                                       ; preds = %do.end180
  %119 = load ptr, ptr %tmp2, align 8, !dbg !357
  %120 = load ptr, ptr %parent.addr, align 8, !dbg !357
  %rb_left182 = getelementptr inbounds %struct.rb_node, ptr %120, i32 0, i32 2, !dbg !357
  store volatile ptr %119, ptr %rb_left182, align 8, !dbg !357
  br label %do.cond183, !dbg !357

do.cond183:                                       ; preds = %do.body181
  br label %do.end184, !dbg !357

do.end184:                                        ; preds = %do.cond183
  br label %do.cond185, !dbg !353

do.cond185:                                       ; preds = %do.end184
  br label %do.end186, !dbg !353

do.end186:                                        ; preds = %do.cond185
  %121 = load ptr, ptr %tmp1, align 8, !dbg !359
  %tobool187 = icmp ne ptr %121, null, !dbg !359
  br i1 %tobool187, label %if.then188, label %if.end189, !dbg !361

if.then188:                                       ; preds = %do.end186
  %122 = load ptr, ptr %tmp1, align 8, !dbg !362
  %123 = load ptr, ptr %sibling, align 8, !dbg !363
  call void @rb_set_parent_color(ptr noundef %122, ptr noundef %123, i32 noundef 1) #7, !dbg !364
  br label %if.end189, !dbg !364

if.end189:                                        ; preds = %if.then188, %do.end186
  %124 = load ptr, ptr %augment_rotate.addr, align 8, !dbg !365
  %125 = load ptr, ptr %sibling, align 8, !dbg !366
  %126 = load ptr, ptr %tmp2, align 8, !dbg !367
  call void %124(ptr noundef %125, ptr noundef %126) #7, !dbg !365
  %127 = load ptr, ptr %sibling, align 8, !dbg !368
  store ptr %127, ptr %tmp1, align 8, !dbg !369
  %128 = load ptr, ptr %tmp2, align 8, !dbg !370
  store ptr %128, ptr %sibling, align 8, !dbg !371
  br label %if.end190, !dbg !372

if.end190:                                        ; preds = %if.end189, %lor.lhs.false132
  %129 = load ptr, ptr %sibling, align 8, !dbg !373
  %rb_right191 = getelementptr inbounds %struct.rb_node, ptr %129, i32 0, i32 1, !dbg !374
  %130 = load ptr, ptr %rb_right191, align 8, !dbg !374
  store ptr %130, ptr %tmp2, align 8, !dbg !375
  br label %do.body192, !dbg !376

do.body192:                                       ; preds = %if.end190
  br label %do.body193, !dbg !377

do.body193:                                       ; preds = %do.body192
  br label %do.cond194, !dbg !379

do.cond194:                                       ; preds = %do.body193
  br label %do.end195, !dbg !379

do.end195:                                        ; preds = %do.cond194
  br label %do.body196, !dbg !377

do.body196:                                       ; preds = %do.end195
  %131 = load ptr, ptr %tmp2, align 8, !dbg !381
  %132 = load ptr, ptr %parent.addr, align 8, !dbg !381
  %rb_left197 = getelementptr inbounds %struct.rb_node, ptr %132, i32 0, i32 2, !dbg !381
  store volatile ptr %131, ptr %rb_left197, align 8, !dbg !381
  br label %do.cond198, !dbg !381

do.cond198:                                       ; preds = %do.body196
  br label %do.end199, !dbg !381

do.end199:                                        ; preds = %do.cond198
  br label %do.cond200, !dbg !377

do.cond200:                                       ; preds = %do.end199
  br label %do.end201, !dbg !377

do.end201:                                        ; preds = %do.cond200
  br label %do.body202, !dbg !383

do.body202:                                       ; preds = %do.end201
  br label %do.body203, !dbg !384

do.body203:                                       ; preds = %do.body202
  br label %do.cond204, !dbg !386

do.cond204:                                       ; preds = %do.body203
  br label %do.end205, !dbg !386

do.end205:                                        ; preds = %do.cond204
  br label %do.body206, !dbg !384

do.body206:                                       ; preds = %do.end205
  %133 = load ptr, ptr %parent.addr, align 8, !dbg !388
  %134 = load ptr, ptr %sibling, align 8, !dbg !388
  %rb_right207 = getelementptr inbounds %struct.rb_node, ptr %134, i32 0, i32 1, !dbg !388
  store volatile ptr %133, ptr %rb_right207, align 8, !dbg !388
  br label %do.cond208, !dbg !388

do.cond208:                                       ; preds = %do.body206
  br label %do.end209, !dbg !388

do.end209:                                        ; preds = %do.cond208
  br label %do.cond210, !dbg !384

do.cond210:                                       ; preds = %do.end209
  br label %do.end211, !dbg !384

do.end211:                                        ; preds = %do.cond210
  %135 = load ptr, ptr %tmp1, align 8, !dbg !390
  %136 = load ptr, ptr %sibling, align 8, !dbg !391
  call void @rb_set_parent_color(ptr noundef %135, ptr noundef %136, i32 noundef 1) #7, !dbg !392
  %137 = load ptr, ptr %tmp2, align 8, !dbg !393
  %tobool212 = icmp ne ptr %137, null, !dbg !393
  br i1 %tobool212, label %if.then213, label %if.end214, !dbg !395

if.then213:                                       ; preds = %do.end211
  %138 = load ptr, ptr %tmp2, align 8, !dbg !396
  %139 = load ptr, ptr %parent.addr, align 8, !dbg !397
  call void @rb_set_parent(ptr noundef %138, ptr noundef %139) #7, !dbg !398
  br label %if.end214, !dbg !398

if.end214:                                        ; preds = %if.then213, %do.end211
  %140 = load ptr, ptr %parent.addr, align 8, !dbg !399
  %141 = load ptr, ptr %sibling, align 8, !dbg !400
  %142 = load ptr, ptr %root.addr, align 8, !dbg !401
  call void @__rb_rotate_set_parents(ptr noundef %140, ptr noundef %141, ptr noundef %142, i32 noundef 1) #7, !dbg !402
  %143 = load ptr, ptr %augment_rotate.addr, align 8, !dbg !403
  %144 = load ptr, ptr %parent.addr, align 8, !dbg !404
  %145 = load ptr, ptr %sibling, align 8, !dbg !405
  call void %143(ptr noundef %144, ptr noundef %145) #7, !dbg !403
  br label %while.end, !dbg !406

while.end:                                        ; preds = %if.end214, %if.end154, %if.end101, %if.end41
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp2) #8, !dbg !407
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp1) #8, !dbg !407
  call void @llvm.lifetime.end.p0(i64 8, ptr %sibling) #8, !dbg !407
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #8, !dbg !407
  ret void, !dbg !407
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rb_insert_color(ptr noundef %node, ptr noundef %root) #0 align 16 !dbg !408 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !412, metadata !DIExpression()), !dbg !414
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !413, metadata !DIExpression()), !dbg !415
  %0 = load ptr, ptr %node.addr, align 8, !dbg !416
  %1 = load ptr, ptr %root.addr, align 8, !dbg !417
  call void @__rb_insert(ptr noundef %0, ptr noundef %1, ptr noundef @dummy_rotate) #7, !dbg !418
  ret void, !dbg !419
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__rb_insert(ptr noundef %node, ptr noundef %root, ptr noundef %augment_rotate) #2 align 16 !dbg !420 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %augment_rotate.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %gparent = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !422, metadata !DIExpression()), !dbg !428
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !423, metadata !DIExpression()), !dbg !429
  store ptr %augment_rotate, ptr %augment_rotate.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %augment_rotate.addr, metadata !424, metadata !DIExpression()), !dbg !430
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #8, !dbg !431
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !425, metadata !DIExpression()), !dbg !432
  %0 = load ptr, ptr %node.addr, align 8, !dbg !433
  %call = call ptr @rb_red_parent(ptr noundef %0) #7, !dbg !434
  store ptr %call, ptr %parent, align 8, !dbg !432
  call void @llvm.lifetime.start.p0(i64 8, ptr %gparent) #8, !dbg !431
  call void @llvm.dbg.declare(metadata ptr %gparent, metadata !426, metadata !DIExpression()), !dbg !435
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #8, !dbg !431
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !427, metadata !DIExpression()), !dbg !436
  br label %while.cond, !dbg !437

while.cond:                                       ; preds = %if.then73, %if.then14, %entry
  br label %while.body, !dbg !437

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %parent, align 8, !dbg !438
  %tobool = icmp ne ptr %1, null, !dbg !438
  %lnot = xor i1 %tobool, true, !dbg !438
  %lnot1 = xor i1 %lnot, true, !dbg !438
  %lnot2 = xor i1 %lnot1, true, !dbg !438
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !438
  %conv = sext i32 %lnot.ext to i64, !dbg !438
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !438
  %tobool3 = icmp ne i64 %expval, 0, !dbg !438
  br i1 %tobool3, label %if.then, label %if.end, !dbg !441

if.then:                                          ; preds = %while.body
  %2 = load ptr, ptr %node.addr, align 8, !dbg !442
  call void @rb_set_parent_color(ptr noundef %2, ptr noundef null, i32 noundef 1) #7, !dbg !444
  br label %while.end, !dbg !445

if.end:                                           ; preds = %while.body
  %3 = load ptr, ptr %parent, align 8, !dbg !446
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 0, !dbg !446
  %4 = load i64, ptr %__rb_parent_color, align 8, !dbg !446
  %and = and i64 %4, 1, !dbg !446
  %tobool4 = icmp ne i64 %and, 0, !dbg !446
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !448

if.then5:                                         ; preds = %if.end
  br label %while.end, !dbg !449

if.end6:                                          ; preds = %if.end
  %5 = load ptr, ptr %parent, align 8, !dbg !450
  %call7 = call ptr @rb_red_parent(ptr noundef %5) #7, !dbg !451
  store ptr %call7, ptr %gparent, align 8, !dbg !452
  %6 = load ptr, ptr %gparent, align 8, !dbg !453
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 1, !dbg !454
  %7 = load ptr, ptr %rb_right, align 8, !dbg !454
  store ptr %7, ptr %tmp, align 8, !dbg !455
  %8 = load ptr, ptr %parent, align 8, !dbg !456
  %9 = load ptr, ptr %tmp, align 8, !dbg !458
  %cmp = icmp ne ptr %8, %9, !dbg !459
  br i1 %cmp, label %if.then9, label %if.else, !dbg !460

if.then9:                                         ; preds = %if.end6
  %10 = load ptr, ptr %tmp, align 8, !dbg !461
  %tobool10 = icmp ne ptr %10, null, !dbg !461
  br i1 %tobool10, label %land.lhs.true, label %if.end17, !dbg !464

land.lhs.true:                                    ; preds = %if.then9
  %11 = load ptr, ptr %tmp, align 8, !dbg !465
  %__rb_parent_color11 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 0, !dbg !465
  %12 = load i64, ptr %__rb_parent_color11, align 8, !dbg !465
  %and12 = and i64 %12, 1, !dbg !465
  %tobool13 = icmp ne i64 %and12, 0, !dbg !465
  br i1 %tobool13, label %if.end17, label %if.then14, !dbg !466

if.then14:                                        ; preds = %land.lhs.true
  %13 = load ptr, ptr %tmp, align 8, !dbg !467
  %14 = load ptr, ptr %gparent, align 8, !dbg !469
  call void @rb_set_parent_color(ptr noundef %13, ptr noundef %14, i32 noundef 1) #7, !dbg !470
  %15 = load ptr, ptr %parent, align 8, !dbg !471
  %16 = load ptr, ptr %gparent, align 8, !dbg !472
  call void @rb_set_parent_color(ptr noundef %15, ptr noundef %16, i32 noundef 1) #7, !dbg !473
  %17 = load ptr, ptr %gparent, align 8, !dbg !474
  store ptr %17, ptr %node.addr, align 8, !dbg !475
  %18 = load ptr, ptr %node.addr, align 8, !dbg !476
  %__rb_parent_color15 = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 0, !dbg !476
  %19 = load i64, ptr %__rb_parent_color15, align 8, !dbg !476
  %and16 = and i64 %19, -4, !dbg !476
  %20 = inttoptr i64 %and16 to ptr, !dbg !476
  store ptr %20, ptr %parent, align 8, !dbg !477
  %21 = load ptr, ptr %node.addr, align 8, !dbg !478
  %22 = load ptr, ptr %parent, align 8, !dbg !479
  call void @rb_set_parent_color(ptr noundef %21, ptr noundef %22, i32 noundef 0) #7, !dbg !480
  br label %while.cond, !dbg !481, !llvm.loop !482

if.end17:                                         ; preds = %land.lhs.true, %if.then9
  %23 = load ptr, ptr %parent, align 8, !dbg !484
  %rb_right18 = getelementptr inbounds %struct.rb_node, ptr %23, i32 0, i32 1, !dbg !485
  %24 = load ptr, ptr %rb_right18, align 8, !dbg !485
  store ptr %24, ptr %tmp, align 8, !dbg !486
  %25 = load ptr, ptr %node.addr, align 8, !dbg !487
  %26 = load ptr, ptr %tmp, align 8, !dbg !489
  %cmp19 = icmp eq ptr %25, %26, !dbg !490
  br i1 %cmp19, label %if.then21, label %if.end43, !dbg !491

if.then21:                                        ; preds = %if.end17
  %27 = load ptr, ptr %node.addr, align 8, !dbg !492
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %27, i32 0, i32 2, !dbg !494
  %28 = load ptr, ptr %rb_left, align 8, !dbg !494
  store ptr %28, ptr %tmp, align 8, !dbg !495
  br label %do.body, !dbg !496

do.body:                                          ; preds = %if.then21
  br label %do.body22, !dbg !497

do.body22:                                        ; preds = %do.body
  br label %do.cond, !dbg !499

do.cond:                                          ; preds = %do.body22
  br label %do.end, !dbg !499

do.end:                                           ; preds = %do.cond
  br label %do.body23, !dbg !497

do.body23:                                        ; preds = %do.end
  %29 = load ptr, ptr %tmp, align 8, !dbg !501
  %30 = load ptr, ptr %parent, align 8, !dbg !501
  %rb_right24 = getelementptr inbounds %struct.rb_node, ptr %30, i32 0, i32 1, !dbg !501
  store volatile ptr %29, ptr %rb_right24, align 8, !dbg !501
  br label %do.cond25, !dbg !501

do.cond25:                                        ; preds = %do.body23
  br label %do.end26, !dbg !501

do.end26:                                         ; preds = %do.cond25
  br label %do.cond27, !dbg !497

do.cond27:                                        ; preds = %do.end26
  br label %do.end28, !dbg !497

do.end28:                                         ; preds = %do.cond27
  br label %do.body29, !dbg !503

do.body29:                                        ; preds = %do.end28
  br label %do.body30, !dbg !504

do.body30:                                        ; preds = %do.body29
  br label %do.cond31, !dbg !506

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !506

do.end32:                                         ; preds = %do.cond31
  br label %do.body33, !dbg !504

do.body33:                                        ; preds = %do.end32
  %31 = load ptr, ptr %parent, align 8, !dbg !508
  %32 = load ptr, ptr %node.addr, align 8, !dbg !508
  %rb_left34 = getelementptr inbounds %struct.rb_node, ptr %32, i32 0, i32 2, !dbg !508
  store volatile ptr %31, ptr %rb_left34, align 8, !dbg !508
  br label %do.cond35, !dbg !508

do.cond35:                                        ; preds = %do.body33
  br label %do.end36, !dbg !508

do.end36:                                         ; preds = %do.cond35
  br label %do.cond37, !dbg !504

do.cond37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !504

do.end38:                                         ; preds = %do.cond37
  %33 = load ptr, ptr %tmp, align 8, !dbg !510
  %tobool39 = icmp ne ptr %33, null, !dbg !510
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !512

if.then40:                                        ; preds = %do.end38
  %34 = load ptr, ptr %tmp, align 8, !dbg !513
  %35 = load ptr, ptr %parent, align 8, !dbg !514
  call void @rb_set_parent_color(ptr noundef %34, ptr noundef %35, i32 noundef 1) #7, !dbg !515
  br label %if.end41, !dbg !515

if.end41:                                         ; preds = %if.then40, %do.end38
  %36 = load ptr, ptr %parent, align 8, !dbg !516
  %37 = load ptr, ptr %node.addr, align 8, !dbg !517
  call void @rb_set_parent_color(ptr noundef %36, ptr noundef %37, i32 noundef 0) #7, !dbg !518
  %38 = load ptr, ptr %augment_rotate.addr, align 8, !dbg !519
  %39 = load ptr, ptr %parent, align 8, !dbg !520
  %40 = load ptr, ptr %node.addr, align 8, !dbg !521
  call void %38(ptr noundef %39, ptr noundef %40) #7, !dbg !519
  %41 = load ptr, ptr %node.addr, align 8, !dbg !522
  store ptr %41, ptr %parent, align 8, !dbg !523
  %42 = load ptr, ptr %node.addr, align 8, !dbg !524
  %rb_right42 = getelementptr inbounds %struct.rb_node, ptr %42, i32 0, i32 1, !dbg !525
  %43 = load ptr, ptr %rb_right42, align 8, !dbg !525
  store ptr %43, ptr %tmp, align 8, !dbg !526
  br label %if.end43, !dbg !527

if.end43:                                         ; preds = %if.end41, %if.end17
  br label %do.body44, !dbg !528

do.body44:                                        ; preds = %if.end43
  br label %do.body45, !dbg !529

do.body45:                                        ; preds = %do.body44
  br label %do.cond46, !dbg !531

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !531

do.end47:                                         ; preds = %do.cond46
  br label %do.body48, !dbg !529

do.body48:                                        ; preds = %do.end47
  %44 = load ptr, ptr %tmp, align 8, !dbg !533
  %45 = load ptr, ptr %gparent, align 8, !dbg !533
  %rb_left49 = getelementptr inbounds %struct.rb_node, ptr %45, i32 0, i32 2, !dbg !533
  store volatile ptr %44, ptr %rb_left49, align 8, !dbg !533
  br label %do.cond50, !dbg !533

do.cond50:                                        ; preds = %do.body48
  br label %do.end51, !dbg !533

do.end51:                                         ; preds = %do.cond50
  br label %do.cond52, !dbg !529

do.cond52:                                        ; preds = %do.end51
  br label %do.end53, !dbg !529

do.end53:                                         ; preds = %do.cond52
  br label %do.body54, !dbg !535

do.body54:                                        ; preds = %do.end53
  br label %do.body55, !dbg !536

do.body55:                                        ; preds = %do.body54
  br label %do.cond56, !dbg !538

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !538

do.end57:                                         ; preds = %do.cond56
  br label %do.body58, !dbg !536

do.body58:                                        ; preds = %do.end57
  %46 = load ptr, ptr %gparent, align 8, !dbg !540
  %47 = load ptr, ptr %parent, align 8, !dbg !540
  %rb_right59 = getelementptr inbounds %struct.rb_node, ptr %47, i32 0, i32 1, !dbg !540
  store volatile ptr %46, ptr %rb_right59, align 8, !dbg !540
  br label %do.cond60, !dbg !540

do.cond60:                                        ; preds = %do.body58
  br label %do.end61, !dbg !540

do.end61:                                         ; preds = %do.cond60
  br label %do.cond62, !dbg !536

do.cond62:                                        ; preds = %do.end61
  br label %do.end63, !dbg !536

do.end63:                                         ; preds = %do.cond62
  %48 = load ptr, ptr %tmp, align 8, !dbg !542
  %tobool64 = icmp ne ptr %48, null, !dbg !542
  br i1 %tobool64, label %if.then65, label %if.end66, !dbg !544

if.then65:                                        ; preds = %do.end63
  %49 = load ptr, ptr %tmp, align 8, !dbg !545
  %50 = load ptr, ptr %gparent, align 8, !dbg !546
  call void @rb_set_parent_color(ptr noundef %49, ptr noundef %50, i32 noundef 1) #7, !dbg !547
  br label %if.end66, !dbg !547

if.end66:                                         ; preds = %if.then65, %do.end63
  %51 = load ptr, ptr %gparent, align 8, !dbg !548
  %52 = load ptr, ptr %parent, align 8, !dbg !549
  %53 = load ptr, ptr %root.addr, align 8, !dbg !550
  call void @__rb_rotate_set_parents(ptr noundef %51, ptr noundef %52, ptr noundef %53, i32 noundef 0) #7, !dbg !551
  %54 = load ptr, ptr %augment_rotate.addr, align 8, !dbg !552
  %55 = load ptr, ptr %gparent, align 8, !dbg !553
  %56 = load ptr, ptr %parent, align 8, !dbg !554
  call void %54(ptr noundef %55, ptr noundef %56) #7, !dbg !552
  br label %while.end, !dbg !555

if.else:                                          ; preds = %if.end6
  %57 = load ptr, ptr %gparent, align 8, !dbg !556
  %rb_left67 = getelementptr inbounds %struct.rb_node, ptr %57, i32 0, i32 2, !dbg !558
  %58 = load ptr, ptr %rb_left67, align 8, !dbg !558
  store ptr %58, ptr %tmp, align 8, !dbg !559
  %59 = load ptr, ptr %tmp, align 8, !dbg !560
  %tobool68 = icmp ne ptr %59, null, !dbg !560
  br i1 %tobool68, label %land.lhs.true69, label %if.end76, !dbg !562

land.lhs.true69:                                  ; preds = %if.else
  %60 = load ptr, ptr %tmp, align 8, !dbg !563
  %__rb_parent_color70 = getelementptr inbounds %struct.rb_node, ptr %60, i32 0, i32 0, !dbg !563
  %61 = load i64, ptr %__rb_parent_color70, align 8, !dbg !563
  %and71 = and i64 %61, 1, !dbg !563
  %tobool72 = icmp ne i64 %and71, 0, !dbg !563
  br i1 %tobool72, label %if.end76, label %if.then73, !dbg !564

if.then73:                                        ; preds = %land.lhs.true69
  %62 = load ptr, ptr %tmp, align 8, !dbg !565
  %63 = load ptr, ptr %gparent, align 8, !dbg !567
  call void @rb_set_parent_color(ptr noundef %62, ptr noundef %63, i32 noundef 1) #7, !dbg !568
  %64 = load ptr, ptr %parent, align 8, !dbg !569
  %65 = load ptr, ptr %gparent, align 8, !dbg !570
  call void @rb_set_parent_color(ptr noundef %64, ptr noundef %65, i32 noundef 1) #7, !dbg !571
  %66 = load ptr, ptr %gparent, align 8, !dbg !572
  store ptr %66, ptr %node.addr, align 8, !dbg !573
  %67 = load ptr, ptr %node.addr, align 8, !dbg !574
  %__rb_parent_color74 = getelementptr inbounds %struct.rb_node, ptr %67, i32 0, i32 0, !dbg !574
  %68 = load i64, ptr %__rb_parent_color74, align 8, !dbg !574
  %and75 = and i64 %68, -4, !dbg !574
  %69 = inttoptr i64 %and75 to ptr, !dbg !574
  store ptr %69, ptr %parent, align 8, !dbg !575
  %70 = load ptr, ptr %node.addr, align 8, !dbg !576
  %71 = load ptr, ptr %parent, align 8, !dbg !577
  call void @rb_set_parent_color(ptr noundef %70, ptr noundef %71, i32 noundef 0) #7, !dbg !578
  br label %while.cond, !dbg !579, !llvm.loop !482

if.end76:                                         ; preds = %land.lhs.true69, %if.else
  %72 = load ptr, ptr %parent, align 8, !dbg !580
  %rb_left77 = getelementptr inbounds %struct.rb_node, ptr %72, i32 0, i32 2, !dbg !581
  %73 = load ptr, ptr %rb_left77, align 8, !dbg !581
  store ptr %73, ptr %tmp, align 8, !dbg !582
  %74 = load ptr, ptr %node.addr, align 8, !dbg !583
  %75 = load ptr, ptr %tmp, align 8, !dbg !585
  %cmp78 = icmp eq ptr %74, %75, !dbg !586
  br i1 %cmp78, label %if.then80, label %if.end106, !dbg !587

if.then80:                                        ; preds = %if.end76
  %76 = load ptr, ptr %node.addr, align 8, !dbg !588
  %rb_right81 = getelementptr inbounds %struct.rb_node, ptr %76, i32 0, i32 1, !dbg !590
  %77 = load ptr, ptr %rb_right81, align 8, !dbg !590
  store ptr %77, ptr %tmp, align 8, !dbg !591
  br label %do.body82, !dbg !592

do.body82:                                        ; preds = %if.then80
  br label %do.body83, !dbg !593

do.body83:                                        ; preds = %do.body82
  br label %do.cond84, !dbg !595

do.cond84:                                        ; preds = %do.body83
  br label %do.end85, !dbg !595

do.end85:                                         ; preds = %do.cond84
  br label %do.body86, !dbg !593

do.body86:                                        ; preds = %do.end85
  %78 = load ptr, ptr %tmp, align 8, !dbg !597
  %79 = load ptr, ptr %parent, align 8, !dbg !597
  %rb_left87 = getelementptr inbounds %struct.rb_node, ptr %79, i32 0, i32 2, !dbg !597
  store volatile ptr %78, ptr %rb_left87, align 8, !dbg !597
  br label %do.cond88, !dbg !597

do.cond88:                                        ; preds = %do.body86
  br label %do.end89, !dbg !597

do.end89:                                         ; preds = %do.cond88
  br label %do.cond90, !dbg !593

do.cond90:                                        ; preds = %do.end89
  br label %do.end91, !dbg !593

do.end91:                                         ; preds = %do.cond90
  br label %do.body92, !dbg !599

do.body92:                                        ; preds = %do.end91
  br label %do.body93, !dbg !600

do.body93:                                        ; preds = %do.body92
  br label %do.cond94, !dbg !602

do.cond94:                                        ; preds = %do.body93
  br label %do.end95, !dbg !602

do.end95:                                         ; preds = %do.cond94
  br label %do.body96, !dbg !600

do.body96:                                        ; preds = %do.end95
  %80 = load ptr, ptr %parent, align 8, !dbg !604
  %81 = load ptr, ptr %node.addr, align 8, !dbg !604
  %rb_right97 = getelementptr inbounds %struct.rb_node, ptr %81, i32 0, i32 1, !dbg !604
  store volatile ptr %80, ptr %rb_right97, align 8, !dbg !604
  br label %do.cond98, !dbg !604

do.cond98:                                        ; preds = %do.body96
  br label %do.end99, !dbg !604

do.end99:                                         ; preds = %do.cond98
  br label %do.cond100, !dbg !600

do.cond100:                                       ; preds = %do.end99
  br label %do.end101, !dbg !600

do.end101:                                        ; preds = %do.cond100
  %82 = load ptr, ptr %tmp, align 8, !dbg !606
  %tobool102 = icmp ne ptr %82, null, !dbg !606
  br i1 %tobool102, label %if.then103, label %if.end104, !dbg !608

if.then103:                                       ; preds = %do.end101
  %83 = load ptr, ptr %tmp, align 8, !dbg !609
  %84 = load ptr, ptr %parent, align 8, !dbg !610
  call void @rb_set_parent_color(ptr noundef %83, ptr noundef %84, i32 noundef 1) #7, !dbg !611
  br label %if.end104, !dbg !611

if.end104:                                        ; preds = %if.then103, %do.end101
  %85 = load ptr, ptr %parent, align 8, !dbg !612
  %86 = load ptr, ptr %node.addr, align 8, !dbg !613
  call void @rb_set_parent_color(ptr noundef %85, ptr noundef %86, i32 noundef 0) #7, !dbg !614
  %87 = load ptr, ptr %augment_rotate.addr, align 8, !dbg !615
  %88 = load ptr, ptr %parent, align 8, !dbg !616
  %89 = load ptr, ptr %node.addr, align 8, !dbg !617
  call void %87(ptr noundef %88, ptr noundef %89) #7, !dbg !615
  %90 = load ptr, ptr %node.addr, align 8, !dbg !618
  store ptr %90, ptr %parent, align 8, !dbg !619
  %91 = load ptr, ptr %node.addr, align 8, !dbg !620
  %rb_left105 = getelementptr inbounds %struct.rb_node, ptr %91, i32 0, i32 2, !dbg !621
  %92 = load ptr, ptr %rb_left105, align 8, !dbg !621
  store ptr %92, ptr %tmp, align 8, !dbg !622
  br label %if.end106, !dbg !623

if.end106:                                        ; preds = %if.end104, %if.end76
  br label %do.body107, !dbg !624

do.body107:                                       ; preds = %if.end106
  br label %do.body108, !dbg !625

do.body108:                                       ; preds = %do.body107
  br label %do.cond109, !dbg !627

do.cond109:                                       ; preds = %do.body108
  br label %do.end110, !dbg !627

do.end110:                                        ; preds = %do.cond109
  br label %do.body111, !dbg !625

do.body111:                                       ; preds = %do.end110
  %93 = load ptr, ptr %tmp, align 8, !dbg !629
  %94 = load ptr, ptr %gparent, align 8, !dbg !629
  %rb_right112 = getelementptr inbounds %struct.rb_node, ptr %94, i32 0, i32 1, !dbg !629
  store volatile ptr %93, ptr %rb_right112, align 8, !dbg !629
  br label %do.cond113, !dbg !629

do.cond113:                                       ; preds = %do.body111
  br label %do.end114, !dbg !629

do.end114:                                        ; preds = %do.cond113
  br label %do.cond115, !dbg !625

do.cond115:                                       ; preds = %do.end114
  br label %do.end116, !dbg !625

do.end116:                                        ; preds = %do.cond115
  br label %do.body117, !dbg !631

do.body117:                                       ; preds = %do.end116
  br label %do.body118, !dbg !632

do.body118:                                       ; preds = %do.body117
  br label %do.cond119, !dbg !634

do.cond119:                                       ; preds = %do.body118
  br label %do.end120, !dbg !634

do.end120:                                        ; preds = %do.cond119
  br label %do.body121, !dbg !632

do.body121:                                       ; preds = %do.end120
  %95 = load ptr, ptr %gparent, align 8, !dbg !636
  %96 = load ptr, ptr %parent, align 8, !dbg !636
  %rb_left122 = getelementptr inbounds %struct.rb_node, ptr %96, i32 0, i32 2, !dbg !636
  store volatile ptr %95, ptr %rb_left122, align 8, !dbg !636
  br label %do.cond123, !dbg !636

do.cond123:                                       ; preds = %do.body121
  br label %do.end124, !dbg !636

do.end124:                                        ; preds = %do.cond123
  br label %do.cond125, !dbg !632

do.cond125:                                       ; preds = %do.end124
  br label %do.end126, !dbg !632

do.end126:                                        ; preds = %do.cond125
  %97 = load ptr, ptr %tmp, align 8, !dbg !638
  %tobool127 = icmp ne ptr %97, null, !dbg !638
  br i1 %tobool127, label %if.then128, label %if.end129, !dbg !640

if.then128:                                       ; preds = %do.end126
  %98 = load ptr, ptr %tmp, align 8, !dbg !641
  %99 = load ptr, ptr %gparent, align 8, !dbg !642
  call void @rb_set_parent_color(ptr noundef %98, ptr noundef %99, i32 noundef 1) #7, !dbg !643
  br label %if.end129, !dbg !643

if.end129:                                        ; preds = %if.then128, %do.end126
  %100 = load ptr, ptr %gparent, align 8, !dbg !644
  %101 = load ptr, ptr %parent, align 8, !dbg !645
  %102 = load ptr, ptr %root.addr, align 8, !dbg !646
  call void @__rb_rotate_set_parents(ptr noundef %100, ptr noundef %101, ptr noundef %102, i32 noundef 0) #7, !dbg !647
  %103 = load ptr, ptr %augment_rotate.addr, align 8, !dbg !648
  %104 = load ptr, ptr %gparent, align 8, !dbg !649
  %105 = load ptr, ptr %parent, align 8, !dbg !650
  call void %103(ptr noundef %104, ptr noundef %105) #7, !dbg !648
  br label %while.end, !dbg !651

while.end:                                        ; preds = %if.end129, %if.end66, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #8, !dbg !652
  call void @llvm.lifetime.end.p0(i64 8, ptr %gparent) #8, !dbg !652
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #8, !dbg !652
  ret void, !dbg !652
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dummy_rotate(ptr noundef %old, ptr noundef %new) #3 align 16 !dbg !653 {
entry:
  %old.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !655, metadata !DIExpression()), !dbg !657
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !656, metadata !DIExpression()), !dbg !658
  ret void, !dbg !659
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rb_erase(ptr noundef %node, ptr noundef %root) #0 align 16 !dbg !660 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %rebalance = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !662, metadata !DIExpression()), !dbg !665
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !663, metadata !DIExpression()), !dbg !666
  call void @llvm.lifetime.start.p0(i64 8, ptr %rebalance) #8, !dbg !667
  call void @llvm.dbg.declare(metadata ptr %rebalance, metadata !664, metadata !DIExpression()), !dbg !668
  %0 = load ptr, ptr %node.addr, align 8, !dbg !669
  %1 = load ptr, ptr %root.addr, align 8, !dbg !670
  %call = call ptr @__rb_erase_augmented(ptr noundef %0, ptr noundef %1, ptr noundef @dummy_callbacks) #7, !dbg !671
  store ptr %call, ptr %rebalance, align 8, !dbg !672
  %2 = load ptr, ptr %rebalance, align 8, !dbg !673
  %tobool = icmp ne ptr %2, null, !dbg !673
  br i1 %tobool, label %if.then, label %if.end, !dbg !675

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %rebalance, align 8, !dbg !676
  %4 = load ptr, ptr %root.addr, align 8, !dbg !677
  call void @____rb_erase_color(ptr noundef %3, ptr noundef %4, ptr noundef @dummy_rotate) #7, !dbg !678
  br label %if.end, !dbg !678

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %rebalance) #8, !dbg !679
  ret void, !dbg !679
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__rb_erase_augmented(ptr noundef %node, ptr noundef %root, ptr noundef %augment) #2 align 16 !dbg !680 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %augment.addr = alloca ptr, align 8
  %child = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %rebalance = alloca ptr, align 8
  %pc = alloca i64, align 8
  %successor = alloca ptr, align 8
  %child2 = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !685, metadata !DIExpression()), !dbg !698
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !686, metadata !DIExpression()), !dbg !699
  store ptr %augment, ptr %augment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %augment.addr, metadata !687, metadata !DIExpression()), !dbg !700
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #8, !dbg !701
  call void @llvm.dbg.declare(metadata ptr %child, metadata !688, metadata !DIExpression()), !dbg !702
  %0 = load ptr, ptr %node.addr, align 8, !dbg !703
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 1, !dbg !704
  %1 = load ptr, ptr %rb_right, align 8, !dbg !704
  store ptr %1, ptr %child, align 8, !dbg !702
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #8, !dbg !705
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !689, metadata !DIExpression()), !dbg !706
  %2 = load ptr, ptr %node.addr, align 8, !dbg !707
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 2, !dbg !708
  %3 = load ptr, ptr %rb_left, align 8, !dbg !708
  store ptr %3, ptr %tmp, align 8, !dbg !706
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #8, !dbg !709
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !690, metadata !DIExpression()), !dbg !710
  call void @llvm.lifetime.start.p0(i64 8, ptr %rebalance) #8, !dbg !709
  call void @llvm.dbg.declare(metadata ptr %rebalance, metadata !691, metadata !DIExpression()), !dbg !711
  call void @llvm.lifetime.start.p0(i64 8, ptr %pc) #8, !dbg !712
  call void @llvm.dbg.declare(metadata ptr %pc, metadata !692, metadata !DIExpression()), !dbg !713
  %4 = load ptr, ptr %tmp, align 8, !dbg !714
  %tobool = icmp ne ptr %4, null, !dbg !714
  br i1 %tobool, label %if.else6, label %if.then, !dbg !715

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %node.addr, align 8, !dbg !716
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 0, !dbg !718
  %6 = load i64, ptr %__rb_parent_color, align 8, !dbg !718
  store i64 %6, ptr %pc, align 8, !dbg !719
  %7 = load i64, ptr %pc, align 8, !dbg !720
  %and = and i64 %7, -4, !dbg !720
  %8 = inttoptr i64 %and to ptr, !dbg !720
  store ptr %8, ptr %parent, align 8, !dbg !721
  %9 = load ptr, ptr %node.addr, align 8, !dbg !722
  %10 = load ptr, ptr %child, align 8, !dbg !723
  %11 = load ptr, ptr %parent, align 8, !dbg !724
  %12 = load ptr, ptr %root.addr, align 8, !dbg !725
  call void @__rb_change_child(ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) #7, !dbg !726
  %13 = load ptr, ptr %child, align 8, !dbg !727
  %tobool1 = icmp ne ptr %13, null, !dbg !727
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !729

if.then2:                                         ; preds = %if.then
  %14 = load i64, ptr %pc, align 8, !dbg !730
  %15 = load ptr, ptr %child, align 8, !dbg !732
  %__rb_parent_color3 = getelementptr inbounds %struct.rb_node, ptr %15, i32 0, i32 0, !dbg !733
  store i64 %14, ptr %__rb_parent_color3, align 8, !dbg !734
  store ptr null, ptr %rebalance, align 8, !dbg !735
  br label %if.end, !dbg !736

if.else:                                          ; preds = %if.then
  %16 = load i64, ptr %pc, align 8, !dbg !737
  %and4 = and i64 %16, 1, !dbg !737
  %tobool5 = icmp ne i64 %and4, 0, !dbg !737
  br i1 %tobool5, label %cond.true, label %cond.false, !dbg !737

cond.true:                                        ; preds = %if.else
  %17 = load ptr, ptr %parent, align 8, !dbg !738
  br label %cond.end, !dbg !737

cond.false:                                       ; preds = %if.else
  br label %cond.end, !dbg !737

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %17, %cond.true ], [ null, %cond.false ], !dbg !737
  store ptr %cond, ptr %rebalance, align 8, !dbg !739
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then2
  %18 = load ptr, ptr %parent, align 8, !dbg !740
  store ptr %18, ptr %tmp, align 8, !dbg !741
  br label %if.end69, !dbg !742

if.else6:                                         ; preds = %entry
  %19 = load ptr, ptr %child, align 8, !dbg !743
  %tobool7 = icmp ne ptr %19, null, !dbg !743
  br i1 %tobool7, label %if.else12, label %if.then8, !dbg !744

if.then8:                                         ; preds = %if.else6
  %20 = load ptr, ptr %node.addr, align 8, !dbg !745
  %__rb_parent_color9 = getelementptr inbounds %struct.rb_node, ptr %20, i32 0, i32 0, !dbg !747
  %21 = load i64, ptr %__rb_parent_color9, align 8, !dbg !747
  store i64 %21, ptr %pc, align 8, !dbg !748
  %22 = load ptr, ptr %tmp, align 8, !dbg !749
  %__rb_parent_color10 = getelementptr inbounds %struct.rb_node, ptr %22, i32 0, i32 0, !dbg !750
  store i64 %21, ptr %__rb_parent_color10, align 8, !dbg !751
  %23 = load i64, ptr %pc, align 8, !dbg !752
  %and11 = and i64 %23, -4, !dbg !752
  %24 = inttoptr i64 %and11 to ptr, !dbg !752
  store ptr %24, ptr %parent, align 8, !dbg !753
  %25 = load ptr, ptr %node.addr, align 8, !dbg !754
  %26 = load ptr, ptr %tmp, align 8, !dbg !755
  %27 = load ptr, ptr %parent, align 8, !dbg !756
  %28 = load ptr, ptr %root.addr, align 8, !dbg !757
  call void @__rb_change_child(ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28) #7, !dbg !758
  store ptr null, ptr %rebalance, align 8, !dbg !759
  %29 = load ptr, ptr %parent, align 8, !dbg !760
  store ptr %29, ptr %tmp, align 8, !dbg !761
  br label %if.end68, !dbg !762

if.else12:                                        ; preds = %if.else6
  call void @llvm.lifetime.start.p0(i64 8, ptr %successor) #8, !dbg !763
  call void @llvm.dbg.declare(metadata ptr %successor, metadata !693, metadata !DIExpression()), !dbg !764
  %30 = load ptr, ptr %child, align 8, !dbg !765
  store ptr %30, ptr %successor, align 8, !dbg !764
  call void @llvm.lifetime.start.p0(i64 8, ptr %child2) #8, !dbg !763
  call void @llvm.dbg.declare(metadata ptr %child2, metadata !697, metadata !DIExpression()), !dbg !766
  %31 = load ptr, ptr %child, align 8, !dbg !767
  %rb_left13 = getelementptr inbounds %struct.rb_node, ptr %31, i32 0, i32 2, !dbg !768
  %32 = load ptr, ptr %rb_left13, align 8, !dbg !768
  store ptr %32, ptr %tmp, align 8, !dbg !769
  %33 = load ptr, ptr %tmp, align 8, !dbg !770
  %tobool14 = icmp ne ptr %33, null, !dbg !770
  br i1 %tobool14, label %if.else17, label %if.then15, !dbg !772

if.then15:                                        ; preds = %if.else12
  %34 = load ptr, ptr %successor, align 8, !dbg !773
  store ptr %34, ptr %parent, align 8, !dbg !775
  %35 = load ptr, ptr %successor, align 8, !dbg !776
  %rb_right16 = getelementptr inbounds %struct.rb_node, ptr %35, i32 0, i32 1, !dbg !777
  %36 = load ptr, ptr %rb_right16, align 8, !dbg !777
  store ptr %36, ptr %child2, align 8, !dbg !778
  %37 = load ptr, ptr %augment.addr, align 8, !dbg !779
  %copy = getelementptr inbounds %struct.rb_augment_callbacks, ptr %37, i32 0, i32 1, !dbg !780
  %38 = load ptr, ptr %copy, align 8, !dbg !780
  %39 = load ptr, ptr %node.addr, align 8, !dbg !781
  %40 = load ptr, ptr %successor, align 8, !dbg !782
  call void %38(ptr noundef %39, ptr noundef %40) #7, !dbg !779
  br label %if.end42, !dbg !783

if.else17:                                        ; preds = %if.else12
  br label %do.body, !dbg !784

do.body:                                          ; preds = %do.cond, %if.else17
  %41 = load ptr, ptr %successor, align 8, !dbg !786
  store ptr %41, ptr %parent, align 8, !dbg !788
  %42 = load ptr, ptr %tmp, align 8, !dbg !789
  store ptr %42, ptr %successor, align 8, !dbg !790
  %43 = load ptr, ptr %tmp, align 8, !dbg !791
  %rb_left18 = getelementptr inbounds %struct.rb_node, ptr %43, i32 0, i32 2, !dbg !792
  %44 = load ptr, ptr %rb_left18, align 8, !dbg !792
  store ptr %44, ptr %tmp, align 8, !dbg !793
  br label %do.cond, !dbg !794

do.cond:                                          ; preds = %do.body
  %45 = load ptr, ptr %tmp, align 8, !dbg !795
  %tobool19 = icmp ne ptr %45, null, !dbg !794
  br i1 %tobool19, label %do.body, label %do.end, !dbg !794, !llvm.loop !796

do.end:                                           ; preds = %do.cond
  %46 = load ptr, ptr %successor, align 8, !dbg !799
  %rb_right20 = getelementptr inbounds %struct.rb_node, ptr %46, i32 0, i32 1, !dbg !800
  %47 = load ptr, ptr %rb_right20, align 8, !dbg !800
  store ptr %47, ptr %child2, align 8, !dbg !801
  br label %do.body21, !dbg !802

do.body21:                                        ; preds = %do.end
  br label %do.body22, !dbg !803

do.body22:                                        ; preds = %do.body21
  br label %do.cond23, !dbg !805

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !805

do.end24:                                         ; preds = %do.cond23
  br label %do.body25, !dbg !803

do.body25:                                        ; preds = %do.end24
  %48 = load ptr, ptr %child2, align 8, !dbg !807
  %49 = load ptr, ptr %parent, align 8, !dbg !807
  %rb_left26 = getelementptr inbounds %struct.rb_node, ptr %49, i32 0, i32 2, !dbg !807
  store volatile ptr %48, ptr %rb_left26, align 8, !dbg !807
  br label %do.cond27, !dbg !807

do.cond27:                                        ; preds = %do.body25
  br label %do.end28, !dbg !807

do.end28:                                         ; preds = %do.cond27
  br label %do.cond29, !dbg !803

do.cond29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !803

do.end30:                                         ; preds = %do.cond29
  br label %do.body31, !dbg !809

do.body31:                                        ; preds = %do.end30
  br label %do.body32, !dbg !810

do.body32:                                        ; preds = %do.body31
  br label %do.cond33, !dbg !812

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !812

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !810

do.body35:                                        ; preds = %do.end34
  %50 = load ptr, ptr %child, align 8, !dbg !814
  %51 = load ptr, ptr %successor, align 8, !dbg !814
  %rb_right36 = getelementptr inbounds %struct.rb_node, ptr %51, i32 0, i32 1, !dbg !814
  store volatile ptr %50, ptr %rb_right36, align 8, !dbg !814
  br label %do.cond37, !dbg !814

do.cond37:                                        ; preds = %do.body35
  br label %do.end38, !dbg !814

do.end38:                                         ; preds = %do.cond37
  br label %do.cond39, !dbg !810

do.cond39:                                        ; preds = %do.end38
  br label %do.end40, !dbg !810

do.end40:                                         ; preds = %do.cond39
  %52 = load ptr, ptr %child, align 8, !dbg !816
  %53 = load ptr, ptr %successor, align 8, !dbg !817
  call void @rb_set_parent(ptr noundef %52, ptr noundef %53) #7, !dbg !818
  %54 = load ptr, ptr %augment.addr, align 8, !dbg !819
  %copy41 = getelementptr inbounds %struct.rb_augment_callbacks, ptr %54, i32 0, i32 1, !dbg !820
  %55 = load ptr, ptr %copy41, align 8, !dbg !820
  %56 = load ptr, ptr %node.addr, align 8, !dbg !821
  %57 = load ptr, ptr %successor, align 8, !dbg !822
  call void %55(ptr noundef %56, ptr noundef %57) #7, !dbg !819
  %58 = load ptr, ptr %augment.addr, align 8, !dbg !823
  %propagate = getelementptr inbounds %struct.rb_augment_callbacks, ptr %58, i32 0, i32 0, !dbg !824
  %59 = load ptr, ptr %propagate, align 8, !dbg !824
  %60 = load ptr, ptr %parent, align 8, !dbg !825
  %61 = load ptr, ptr %successor, align 8, !dbg !826
  call void %59(ptr noundef %60, ptr noundef %61) #7, !dbg !823
  br label %if.end42

if.end42:                                         ; preds = %do.end40, %if.then15
  %62 = load ptr, ptr %node.addr, align 8, !dbg !827
  %rb_left43 = getelementptr inbounds %struct.rb_node, ptr %62, i32 0, i32 2, !dbg !828
  %63 = load ptr, ptr %rb_left43, align 8, !dbg !828
  store ptr %63, ptr %tmp, align 8, !dbg !829
  br label %do.body44, !dbg !830

do.body44:                                        ; preds = %if.end42
  br label %do.body45, !dbg !831

do.body45:                                        ; preds = %do.body44
  br label %do.cond46, !dbg !833

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !833

do.end47:                                         ; preds = %do.cond46
  br label %do.body48, !dbg !831

do.body48:                                        ; preds = %do.end47
  %64 = load ptr, ptr %tmp, align 8, !dbg !835
  %65 = load ptr, ptr %successor, align 8, !dbg !835
  %rb_left49 = getelementptr inbounds %struct.rb_node, ptr %65, i32 0, i32 2, !dbg !835
  store volatile ptr %64, ptr %rb_left49, align 8, !dbg !835
  br label %do.cond50, !dbg !835

do.cond50:                                        ; preds = %do.body48
  br label %do.end51, !dbg !835

do.end51:                                         ; preds = %do.cond50
  br label %do.cond52, !dbg !831

do.cond52:                                        ; preds = %do.end51
  br label %do.end53, !dbg !831

do.end53:                                         ; preds = %do.cond52
  %66 = load ptr, ptr %tmp, align 8, !dbg !837
  %67 = load ptr, ptr %successor, align 8, !dbg !838
  call void @rb_set_parent(ptr noundef %66, ptr noundef %67) #7, !dbg !839
  %68 = load ptr, ptr %node.addr, align 8, !dbg !840
  %__rb_parent_color54 = getelementptr inbounds %struct.rb_node, ptr %68, i32 0, i32 0, !dbg !841
  %69 = load i64, ptr %__rb_parent_color54, align 8, !dbg !841
  store i64 %69, ptr %pc, align 8, !dbg !842
  %70 = load i64, ptr %pc, align 8, !dbg !843
  %and55 = and i64 %70, -4, !dbg !843
  %71 = inttoptr i64 %and55 to ptr, !dbg !843
  store ptr %71, ptr %tmp, align 8, !dbg !844
  %72 = load ptr, ptr %node.addr, align 8, !dbg !845
  %73 = load ptr, ptr %successor, align 8, !dbg !846
  %74 = load ptr, ptr %tmp, align 8, !dbg !847
  %75 = load ptr, ptr %root.addr, align 8, !dbg !848
  call void @__rb_change_child(ptr noundef %72, ptr noundef %73, ptr noundef %74, ptr noundef %75) #7, !dbg !849
  %76 = load ptr, ptr %child2, align 8, !dbg !850
  %tobool56 = icmp ne ptr %76, null, !dbg !850
  br i1 %tobool56, label %if.then57, label %if.else58, !dbg !852

if.then57:                                        ; preds = %do.end53
  %77 = load ptr, ptr %child2, align 8, !dbg !853
  %78 = load ptr, ptr %parent, align 8, !dbg !855
  call void @rb_set_parent_color(ptr noundef %77, ptr noundef %78, i32 noundef 1) #7, !dbg !856
  store ptr null, ptr %rebalance, align 8, !dbg !857
  br label %if.end66, !dbg !858

if.else58:                                        ; preds = %do.end53
  %79 = load ptr, ptr %successor, align 8, !dbg !859
  %__rb_parent_color59 = getelementptr inbounds %struct.rb_node, ptr %79, i32 0, i32 0, !dbg !859
  %80 = load i64, ptr %__rb_parent_color59, align 8, !dbg !859
  %and60 = and i64 %80, 1, !dbg !859
  %tobool61 = icmp ne i64 %and60, 0, !dbg !859
  br i1 %tobool61, label %cond.true62, label %cond.false63, !dbg !859

cond.true62:                                      ; preds = %if.else58
  %81 = load ptr, ptr %parent, align 8, !dbg !861
  br label %cond.end64, !dbg !859

cond.false63:                                     ; preds = %if.else58
  br label %cond.end64, !dbg !859

cond.end64:                                       ; preds = %cond.false63, %cond.true62
  %cond65 = phi ptr [ %81, %cond.true62 ], [ null, %cond.false63 ], !dbg !859
  store ptr %cond65, ptr %rebalance, align 8, !dbg !862
  br label %if.end66

if.end66:                                         ; preds = %cond.end64, %if.then57
  %82 = load i64, ptr %pc, align 8, !dbg !863
  %83 = load ptr, ptr %successor, align 8, !dbg !864
  %__rb_parent_color67 = getelementptr inbounds %struct.rb_node, ptr %83, i32 0, i32 0, !dbg !865
  store i64 %82, ptr %__rb_parent_color67, align 8, !dbg !866
  %84 = load ptr, ptr %successor, align 8, !dbg !867
  store ptr %84, ptr %tmp, align 8, !dbg !868
  call void @llvm.lifetime.end.p0(i64 8, ptr %child2) #8, !dbg !869
  call void @llvm.lifetime.end.p0(i64 8, ptr %successor) #8, !dbg !869
  br label %if.end68

if.end68:                                         ; preds = %if.end66, %if.then8
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end
  %85 = load ptr, ptr %augment.addr, align 8, !dbg !870
  %propagate70 = getelementptr inbounds %struct.rb_augment_callbacks, ptr %85, i32 0, i32 0, !dbg !871
  %86 = load ptr, ptr %propagate70, align 8, !dbg !871
  %87 = load ptr, ptr %tmp, align 8, !dbg !872
  call void %86(ptr noundef %87, ptr noundef null) #7, !dbg !870
  %88 = load ptr, ptr %rebalance, align 8, !dbg !873
  call void @llvm.lifetime.end.p0(i64 8, ptr %pc) #8, !dbg !874
  call void @llvm.lifetime.end.p0(i64 8, ptr %rebalance) #8, !dbg !874
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #8, !dbg !874
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #8, !dbg !874
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #8, !dbg !874
  ret ptr %88, !dbg !875
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__rb_insert_augmented(ptr noundef %node, ptr noundef %root, ptr noundef %augment_rotate) #0 align 16 !dbg !876 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %augment_rotate.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !878, metadata !DIExpression()), !dbg !881
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !879, metadata !DIExpression()), !dbg !882
  store ptr %augment_rotate, ptr %augment_rotate.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %augment_rotate.addr, metadata !880, metadata !DIExpression()), !dbg !883
  %0 = load ptr, ptr %node.addr, align 8, !dbg !884
  %1 = load ptr, ptr %root.addr, align 8, !dbg !885
  %2 = load ptr, ptr %augment_rotate.addr, align 8, !dbg !886
  call void @__rb_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7, !dbg !887
  ret void, !dbg !888
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @rb_first(ptr noundef %root) #0 align 16 !dbg !889 {
entry:
  %retval = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !895, metadata !DIExpression()), !dbg !897
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8, !dbg !898
  call void @llvm.dbg.declare(metadata ptr %n, metadata !896, metadata !DIExpression()), !dbg !899
  %0 = load ptr, ptr %root.addr, align 8, !dbg !900
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %0, i32 0, i32 0, !dbg !901
  %1 = load ptr, ptr %rb_node, align 8, !dbg !901
  store ptr %1, ptr %n, align 8, !dbg !902
  %2 = load ptr, ptr %n, align 8, !dbg !903
  %tobool = icmp ne ptr %2, null, !dbg !903
  br i1 %tobool, label %if.end, label %if.then, !dbg !905

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !906
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !906

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !907

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load ptr, ptr %n, align 8, !dbg !908
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 2, !dbg !909
  %4 = load ptr, ptr %rb_left, align 8, !dbg !909
  %tobool1 = icmp ne ptr %4, null, !dbg !907
  br i1 %tobool1, label %while.body, label %while.end, !dbg !907

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %n, align 8, !dbg !910
  %rb_left2 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 2, !dbg !911
  %6 = load ptr, ptr %rb_left2, align 8, !dbg !911
  store ptr %6, ptr %n, align 8, !dbg !912
  br label %while.cond, !dbg !907, !llvm.loop !913

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %n, align 8, !dbg !914
  store ptr %7, ptr %retval, align 8, !dbg !915
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !915

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8, !dbg !916
  %8 = load ptr, ptr %retval, align 8, !dbg !916
  ret ptr %8, !dbg !916
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @rb_last(ptr noundef %root) #0 align 16 !dbg !917 {
entry:
  %retval = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !919, metadata !DIExpression()), !dbg !921
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8, !dbg !922
  call void @llvm.dbg.declare(metadata ptr %n, metadata !920, metadata !DIExpression()), !dbg !923
  %0 = load ptr, ptr %root.addr, align 8, !dbg !924
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %0, i32 0, i32 0, !dbg !925
  %1 = load ptr, ptr %rb_node, align 8, !dbg !925
  store ptr %1, ptr %n, align 8, !dbg !926
  %2 = load ptr, ptr %n, align 8, !dbg !927
  %tobool = icmp ne ptr %2, null, !dbg !927
  br i1 %tobool, label %if.end, label %if.then, !dbg !929

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !930
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !930

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !931

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load ptr, ptr %n, align 8, !dbg !932
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 1, !dbg !933
  %4 = load ptr, ptr %rb_right, align 8, !dbg !933
  %tobool1 = icmp ne ptr %4, null, !dbg !931
  br i1 %tobool1, label %while.body, label %while.end, !dbg !931

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %n, align 8, !dbg !934
  %rb_right2 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 1, !dbg !935
  %6 = load ptr, ptr %rb_right2, align 8, !dbg !935
  store ptr %6, ptr %n, align 8, !dbg !936
  br label %while.cond, !dbg !931, !llvm.loop !937

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %n, align 8, !dbg !938
  store ptr %7, ptr %retval, align 8, !dbg !939
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !939

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8, !dbg !940
  %8 = load ptr, ptr %retval, align 8, !dbg !940
  ret ptr %8, !dbg !940
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @rb_next(ptr noundef %node) #0 align 16 !dbg !941 {
entry:
  %retval = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !947, metadata !DIExpression()), !dbg !949
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #8, !dbg !950
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !948, metadata !DIExpression()), !dbg !951
  %0 = load ptr, ptr %node.addr, align 8, !dbg !952
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 0, !dbg !952
  %1 = load i64, ptr %__rb_parent_color, align 8, !dbg !952
  %2 = load ptr, ptr %node.addr, align 8, !dbg !952
  %3 = ptrtoint ptr %2 to i64, !dbg !952
  %cmp = icmp eq i64 %1, %3, !dbg !952
  br i1 %cmp, label %if.then, label %if.end, !dbg !954

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !955
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !955

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %node.addr, align 8, !dbg !956
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 1, !dbg !958
  %5 = load ptr, ptr %rb_right, align 8, !dbg !958
  %tobool = icmp ne ptr %5, null, !dbg !956
  br i1 %tobool, label %if.then1, label %if.end5, !dbg !959

if.then1:                                         ; preds = %if.end
  %6 = load ptr, ptr %node.addr, align 8, !dbg !960
  %rb_right2 = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 1, !dbg !962
  %7 = load ptr, ptr %rb_right2, align 8, !dbg !962
  store ptr %7, ptr %node.addr, align 8, !dbg !963
  br label %while.cond, !dbg !964

while.cond:                                       ; preds = %while.body, %if.then1
  %8 = load ptr, ptr %node.addr, align 8, !dbg !965
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 2, !dbg !966
  %9 = load ptr, ptr %rb_left, align 8, !dbg !966
  %tobool3 = icmp ne ptr %9, null, !dbg !964
  br i1 %tobool3, label %while.body, label %while.end, !dbg !964

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %node.addr, align 8, !dbg !967
  %rb_left4 = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 2, !dbg !968
  %11 = load ptr, ptr %rb_left4, align 8, !dbg !968
  store ptr %11, ptr %node.addr, align 8, !dbg !969
  br label %while.cond, !dbg !964, !llvm.loop !970

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %node.addr, align 8, !dbg !971
  store ptr %12, ptr %retval, align 8, !dbg !972
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !972

if.end5:                                          ; preds = %if.end
  br label %while.cond6, !dbg !973

while.cond6:                                      ; preds = %while.body11, %if.end5
  %13 = load ptr, ptr %node.addr, align 8, !dbg !974
  %__rb_parent_color7 = getelementptr inbounds %struct.rb_node, ptr %13, i32 0, i32 0, !dbg !974
  %14 = load i64, ptr %__rb_parent_color7, align 8, !dbg !974
  %and = and i64 %14, -4, !dbg !974
  %15 = inttoptr i64 %and to ptr, !dbg !974
  store ptr %15, ptr %parent, align 8, !dbg !975
  %tobool8 = icmp ne ptr %15, null, !dbg !975
  br i1 %tobool8, label %land.rhs, label %land.end, !dbg !976

land.rhs:                                         ; preds = %while.cond6
  %16 = load ptr, ptr %node.addr, align 8, !dbg !977
  %17 = load ptr, ptr %parent, align 8, !dbg !978
  %rb_right9 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 1, !dbg !979
  %18 = load ptr, ptr %rb_right9, align 8, !dbg !979
  %cmp10 = icmp eq ptr %16, %18, !dbg !980
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond6
  %19 = phi i1 [ false, %while.cond6 ], [ %cmp10, %land.rhs ], !dbg !981
  br i1 %19, label %while.body11, label %while.end12, !dbg !973

while.body11:                                     ; preds = %land.end
  %20 = load ptr, ptr %parent, align 8, !dbg !982
  store ptr %20, ptr %node.addr, align 8, !dbg !983
  br label %while.cond6, !dbg !973, !llvm.loop !984

while.end12:                                      ; preds = %land.end
  %21 = load ptr, ptr %parent, align 8, !dbg !985
  store ptr %21, ptr %retval, align 8, !dbg !986
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !986

cleanup:                                          ; preds = %while.end12, %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #8, !dbg !987
  %22 = load ptr, ptr %retval, align 8, !dbg !987
  ret ptr %22, !dbg !987
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @rb_prev(ptr noundef %node) #0 align 16 !dbg !988 {
entry:
  %retval = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !990, metadata !DIExpression()), !dbg !992
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #8, !dbg !993
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !991, metadata !DIExpression()), !dbg !994
  %0 = load ptr, ptr %node.addr, align 8, !dbg !995
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 0, !dbg !995
  %1 = load i64, ptr %__rb_parent_color, align 8, !dbg !995
  %2 = load ptr, ptr %node.addr, align 8, !dbg !995
  %3 = ptrtoint ptr %2 to i64, !dbg !995
  %cmp = icmp eq i64 %1, %3, !dbg !995
  br i1 %cmp, label %if.then, label %if.end, !dbg !997

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !998
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !998

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %node.addr, align 8, !dbg !999
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2, !dbg !1001
  %5 = load ptr, ptr %rb_left, align 8, !dbg !1001
  %tobool = icmp ne ptr %5, null, !dbg !999
  br i1 %tobool, label %if.then1, label %if.end5, !dbg !1002

if.then1:                                         ; preds = %if.end
  %6 = load ptr, ptr %node.addr, align 8, !dbg !1003
  %rb_left2 = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 2, !dbg !1005
  %7 = load ptr, ptr %rb_left2, align 8, !dbg !1005
  store ptr %7, ptr %node.addr, align 8, !dbg !1006
  br label %while.cond, !dbg !1007

while.cond:                                       ; preds = %while.body, %if.then1
  %8 = load ptr, ptr %node.addr, align 8, !dbg !1008
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 1, !dbg !1009
  %9 = load ptr, ptr %rb_right, align 8, !dbg !1009
  %tobool3 = icmp ne ptr %9, null, !dbg !1007
  br i1 %tobool3, label %while.body, label %while.end, !dbg !1007

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %node.addr, align 8, !dbg !1010
  %rb_right4 = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 1, !dbg !1011
  %11 = load ptr, ptr %rb_right4, align 8, !dbg !1011
  store ptr %11, ptr %node.addr, align 8, !dbg !1012
  br label %while.cond, !dbg !1007, !llvm.loop !1013

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %node.addr, align 8, !dbg !1014
  store ptr %12, ptr %retval, align 8, !dbg !1015
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1015

if.end5:                                          ; preds = %if.end
  br label %while.cond6, !dbg !1016

while.cond6:                                      ; preds = %while.body11, %if.end5
  %13 = load ptr, ptr %node.addr, align 8, !dbg !1017
  %__rb_parent_color7 = getelementptr inbounds %struct.rb_node, ptr %13, i32 0, i32 0, !dbg !1017
  %14 = load i64, ptr %__rb_parent_color7, align 8, !dbg !1017
  %and = and i64 %14, -4, !dbg !1017
  %15 = inttoptr i64 %and to ptr, !dbg !1017
  store ptr %15, ptr %parent, align 8, !dbg !1018
  %tobool8 = icmp ne ptr %15, null, !dbg !1018
  br i1 %tobool8, label %land.rhs, label %land.end, !dbg !1019

land.rhs:                                         ; preds = %while.cond6
  %16 = load ptr, ptr %node.addr, align 8, !dbg !1020
  %17 = load ptr, ptr %parent, align 8, !dbg !1021
  %rb_left9 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 2, !dbg !1022
  %18 = load ptr, ptr %rb_left9, align 8, !dbg !1022
  %cmp10 = icmp eq ptr %16, %18, !dbg !1023
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond6
  %19 = phi i1 [ false, %while.cond6 ], [ %cmp10, %land.rhs ], !dbg !1024
  br i1 %19, label %while.body11, label %while.end12, !dbg !1016

while.body11:                                     ; preds = %land.end
  %20 = load ptr, ptr %parent, align 8, !dbg !1025
  store ptr %20, ptr %node.addr, align 8, !dbg !1026
  br label %while.cond6, !dbg !1016, !llvm.loop !1027

while.end12:                                      ; preds = %land.end
  %21 = load ptr, ptr %parent, align 8, !dbg !1028
  store ptr %21, ptr %retval, align 8, !dbg !1029
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1029

cleanup:                                          ; preds = %while.end12, %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #8, !dbg !1030
  %22 = load ptr, ptr %retval, align 8, !dbg !1030
  ret ptr %22, !dbg !1030
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rb_replace_node(ptr noundef %victim, ptr noundef %new, ptr noundef %root) #0 align 16 !dbg !1031 {
entry:
  %victim.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  store ptr %victim, ptr %victim.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %victim.addr, metadata !1035, metadata !DIExpression()), !dbg !1039
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1036, metadata !DIExpression()), !dbg !1040
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1037, metadata !DIExpression()), !dbg !1041
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #8, !dbg !1042
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !1038, metadata !DIExpression()), !dbg !1043
  %0 = load ptr, ptr %victim.addr, align 8, !dbg !1044
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 0, !dbg !1044
  %1 = load i64, ptr %__rb_parent_color, align 8, !dbg !1044
  %and = and i64 %1, -4, !dbg !1044
  %2 = inttoptr i64 %and to ptr, !dbg !1044
  store ptr %2, ptr %parent, align 8, !dbg !1043
  %3 = load ptr, ptr %new.addr, align 8, !dbg !1045
  %4 = load ptr, ptr %victim.addr, align 8, !dbg !1046
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %4, i64 24, i1 false), !dbg !1047
  %5 = load ptr, ptr %victim.addr, align 8, !dbg !1048
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 2, !dbg !1050
  %6 = load ptr, ptr %rb_left, align 8, !dbg !1050
  %tobool = icmp ne ptr %6, null, !dbg !1048
  br i1 %tobool, label %if.then, label %if.end, !dbg !1051

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %victim.addr, align 8, !dbg !1052
  %rb_left1 = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 2, !dbg !1053
  %8 = load ptr, ptr %rb_left1, align 8, !dbg !1053
  %9 = load ptr, ptr %new.addr, align 8, !dbg !1054
  call void @rb_set_parent(ptr noundef %8, ptr noundef %9) #7, !dbg !1055
  br label %if.end, !dbg !1055

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %victim.addr, align 8, !dbg !1056
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 1, !dbg !1058
  %11 = load ptr, ptr %rb_right, align 8, !dbg !1058
  %tobool2 = icmp ne ptr %11, null, !dbg !1056
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !1059

if.then3:                                         ; preds = %if.end
  %12 = load ptr, ptr %victim.addr, align 8, !dbg !1060
  %rb_right4 = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 1, !dbg !1061
  %13 = load ptr, ptr %rb_right4, align 8, !dbg !1061
  %14 = load ptr, ptr %new.addr, align 8, !dbg !1062
  call void @rb_set_parent(ptr noundef %13, ptr noundef %14) #7, !dbg !1063
  br label %if.end5, !dbg !1063

if.end5:                                          ; preds = %if.then3, %if.end
  %15 = load ptr, ptr %victim.addr, align 8, !dbg !1064
  %16 = load ptr, ptr %new.addr, align 8, !dbg !1065
  %17 = load ptr, ptr %parent, align 8, !dbg !1066
  %18 = load ptr, ptr %root.addr, align 8, !dbg !1067
  call void @__rb_change_child(ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18) #7, !dbg !1068
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #8, !dbg !1069
  ret void, !dbg !1069
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_set_parent(ptr noundef %rb, ptr noundef %p) #3 align 16 !dbg !1070 {
entry:
  %rb.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !1072, metadata !DIExpression()), !dbg !1074
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1073, metadata !DIExpression()), !dbg !1075
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !1076
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 0, !dbg !1076
  %1 = load i64, ptr %__rb_parent_color, align 8, !dbg !1076
  %and = and i64 %1, 1, !dbg !1076
  %2 = load ptr, ptr %p.addr, align 8, !dbg !1077
  %3 = ptrtoint ptr %2 to i64, !dbg !1078
  %add = add i64 %and, %3, !dbg !1079
  %4 = load ptr, ptr %rb.addr, align 8, !dbg !1080
  %__rb_parent_color1 = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 0, !dbg !1081
  store i64 %add, ptr %__rb_parent_color1, align 8, !dbg !1082
  ret void, !dbg !1083
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__rb_change_child(ptr noundef %old, ptr noundef %new, ptr noundef %parent, ptr noundef %root) #3 align 16 !dbg !1084 {
entry:
  %old.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1088, metadata !DIExpression()), !dbg !1092
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1089, metadata !DIExpression()), !dbg !1093
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !1090, metadata !DIExpression()), !dbg !1094
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1091, metadata !DIExpression()), !dbg !1095
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !1096
  %tobool = icmp ne ptr %0, null, !dbg !1096
  br i1 %tobool, label %if.then, label %if.else13, !dbg !1098

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !1099
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 2, !dbg !1102
  %2 = load ptr, ptr %rb_left, align 8, !dbg !1102
  %3 = load ptr, ptr %old.addr, align 8, !dbg !1103
  %cmp = icmp eq ptr %2, %3, !dbg !1104
  br i1 %cmp, label %if.then1, label %if.else, !dbg !1105

if.then1:                                         ; preds = %if.then
  br label %do.body, !dbg !1106

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !1107

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !1109

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !1107

do.body3:                                         ; preds = %do.end
  %4 = load ptr, ptr %new.addr, align 8, !dbg !1111
  %5 = load ptr, ptr %parent.addr, align 8, !dbg !1111
  %rb_left4 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 2, !dbg !1111
  store volatile ptr %4, ptr %rb_left4, align 8, !dbg !1111
  br label %do.end5, !dbg !1111

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !1107

do.end6:                                          ; preds = %do.end5
  br label %if.end, !dbg !1107

if.else:                                          ; preds = %if.then
  br label %do.body7, !dbg !1113

do.body7:                                         ; preds = %if.else
  br label %do.body8, !dbg !1114

do.body8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !1116

do.end9:                                          ; preds = %do.body8
  br label %do.body10, !dbg !1114

do.body10:                                        ; preds = %do.end9
  %6 = load ptr, ptr %new.addr, align 8, !dbg !1118
  %7 = load ptr, ptr %parent.addr, align 8, !dbg !1118
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 1, !dbg !1118
  store volatile ptr %6, ptr %rb_right, align 8, !dbg !1118
  br label %do.end11, !dbg !1118

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !1114

do.end12:                                         ; preds = %do.end11
  br label %if.end

if.end:                                           ; preds = %do.end12, %do.end6
  br label %if.end20, !dbg !1120

if.else13:                                        ; preds = %entry
  br label %do.body14, !dbg !1121

do.body14:                                        ; preds = %if.else13
  br label %do.body15, !dbg !1122

do.body15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !1124

do.end16:                                         ; preds = %do.body15
  br label %do.body17, !dbg !1122

do.body17:                                        ; preds = %do.end16
  %8 = load ptr, ptr %new.addr, align 8, !dbg !1126
  %9 = load ptr, ptr %root.addr, align 8, !dbg !1126
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %9, i32 0, i32 0, !dbg !1126
  store volatile ptr %8, ptr %rb_node, align 8, !dbg !1126
  br label %do.end18, !dbg !1126

do.end18:                                         ; preds = %do.body17
  br label %do.end19, !dbg !1122

do.end19:                                         ; preds = %do.end18
  br label %if.end20

if.end20:                                         ; preds = %do.end19, %if.end
  ret void, !dbg !1128
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rb_replace_node_rcu(ptr noundef %victim, ptr noundef %new, ptr noundef %root) #0 align 16 !dbg !1129 {
entry:
  %victim.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  store ptr %victim, ptr %victim.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %victim.addr, metadata !1131, metadata !DIExpression()), !dbg !1135
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1132, metadata !DIExpression()), !dbg !1136
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1133, metadata !DIExpression()), !dbg !1137
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #8, !dbg !1138
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !1134, metadata !DIExpression()), !dbg !1139
  %0 = load ptr, ptr %victim.addr, align 8, !dbg !1140
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 0, !dbg !1140
  %1 = load i64, ptr %__rb_parent_color, align 8, !dbg !1140
  %and = and i64 %1, -4, !dbg !1140
  %2 = inttoptr i64 %and to ptr, !dbg !1140
  store ptr %2, ptr %parent, align 8, !dbg !1139
  %3 = load ptr, ptr %new.addr, align 8, !dbg !1141
  %4 = load ptr, ptr %victim.addr, align 8, !dbg !1142
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %4, i64 24, i1 false), !dbg !1143
  %5 = load ptr, ptr %victim.addr, align 8, !dbg !1144
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 2, !dbg !1146
  %6 = load ptr, ptr %rb_left, align 8, !dbg !1146
  %tobool = icmp ne ptr %6, null, !dbg !1144
  br i1 %tobool, label %if.then, label %if.end, !dbg !1147

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %victim.addr, align 8, !dbg !1148
  %rb_left1 = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 2, !dbg !1149
  %8 = load ptr, ptr %rb_left1, align 8, !dbg !1149
  %9 = load ptr, ptr %new.addr, align 8, !dbg !1150
  call void @rb_set_parent(ptr noundef %8, ptr noundef %9) #7, !dbg !1151
  br label %if.end, !dbg !1151

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %victim.addr, align 8, !dbg !1152
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 1, !dbg !1154
  %11 = load ptr, ptr %rb_right, align 8, !dbg !1154
  %tobool2 = icmp ne ptr %11, null, !dbg !1152
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !1155

if.then3:                                         ; preds = %if.end
  %12 = load ptr, ptr %victim.addr, align 8, !dbg !1156
  %rb_right4 = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 1, !dbg !1157
  %13 = load ptr, ptr %rb_right4, align 8, !dbg !1157
  %14 = load ptr, ptr %new.addr, align 8, !dbg !1158
  call void @rb_set_parent(ptr noundef %13, ptr noundef %14) #7, !dbg !1159
  br label %if.end5, !dbg !1159

if.end5:                                          ; preds = %if.then3, %if.end
  %15 = load ptr, ptr %victim.addr, align 8, !dbg !1160
  %16 = load ptr, ptr %new.addr, align 8, !dbg !1161
  %17 = load ptr, ptr %parent, align 8, !dbg !1162
  %18 = load ptr, ptr %root.addr, align 8, !dbg !1163
  call void @__rb_change_child_rcu(ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18) #7, !dbg !1164
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #8, !dbg !1165
  ret void, !dbg !1165
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__rb_change_child_rcu(ptr noundef %old, ptr noundef %new, ptr noundef %parent, ptr noundef %root) #3 align 16 !dbg !1166 {
entry:
  %old.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  %_r_a_p__v38 = alloca i64, align 8
  %_r_a_p__v80 = alloca i64, align 8
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1168, metadata !DIExpression()), !dbg !1181
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1169, metadata !DIExpression()), !dbg !1182
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !1170, metadata !DIExpression()), !dbg !1183
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1171, metadata !DIExpression()), !dbg !1184
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !1185
  %tobool = icmp ne ptr %0, null, !dbg !1185
  br i1 %tobool, label %if.then, label %if.else78, !dbg !1186

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !1187
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 2, !dbg !1188
  %2 = load ptr, ptr %rb_left, align 8, !dbg !1188
  %3 = load ptr, ptr %old.addr, align 8, !dbg !1189
  %cmp = icmp eq ptr %2, %3, !dbg !1190
  br i1 %cmp, label %if.then1, label %if.else36, !dbg !1191

if.then1:                                         ; preds = %if.then
  br label %do.body, !dbg !1192

do.body:                                          ; preds = %if.then1
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #8, !dbg !1193
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !1172, metadata !DIExpression()), !dbg !1193
  %4 = load ptr, ptr %new.addr, align 8, !dbg !1193
  %5 = ptrtoint ptr %4 to i64, !dbg !1193
  store i64 %5, ptr %_r_a_p__v, align 8, !dbg !1193
  br i1 false, label %land.lhs.true, label %if.else, !dbg !1194

land.lhs.true:                                    ; preds = %do.body
  %6 = load i64, ptr %_r_a_p__v, align 8, !dbg !1194
  %cmp2 = icmp eq i64 %6, 0, !dbg !1194
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !1193

if.then3:                                         ; preds = %land.lhs.true
  br label %do.body4, !dbg !1194

do.body4:                                         ; preds = %if.then3
  br label %do.body5, !dbg !1196

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !1198

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !1198

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !1196

do.body6:                                         ; preds = %do.end
  %7 = load i64, ptr %_r_a_p__v, align 8, !dbg !1200
  %8 = inttoptr i64 %7 to ptr, !dbg !1200
  %9 = load ptr, ptr %parent.addr, align 8, !dbg !1200
  %rb_left7 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2, !dbg !1200
  store volatile ptr %8, ptr %rb_left7, align 8, !dbg !1200
  br label %do.cond8, !dbg !1200

do.cond8:                                         ; preds = %do.body6
  br label %do.end9, !dbg !1200

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !1196

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !1196

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !1196

if.else:                                          ; preds = %land.lhs.true, %do.body
  br label %do.body12, !dbg !1194

do.body12:                                        ; preds = %if.else
  br label %do.body13, !dbg !1202

do.body13:                                        ; preds = %do.body12
  br label %do.cond14, !dbg !1204

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !1204

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !1202

do.body16:                                        ; preds = %do.end15
  br label %do.body17, !dbg !1206

do.body17:                                        ; preds = %do.body16
  br label %do.cond18, !dbg !1208

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !1208

do.end19:                                         ; preds = %do.cond18
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1206, !srcloc !1210
  br label %do.body20, !dbg !1206

do.body20:                                        ; preds = %do.end19
  br label %do.body21, !dbg !1211

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !1213

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !1213

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !1211

do.body24:                                        ; preds = %do.end23
  %10 = load i64, ptr %_r_a_p__v, align 8, !dbg !1215
  %11 = inttoptr i64 %10 to ptr, !dbg !1215
  %12 = load ptr, ptr %parent.addr, align 8, !dbg !1215
  %rb_left25 = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 2, !dbg !1215
  store volatile ptr %11, ptr %rb_left25, align 8, !dbg !1215
  br label %do.cond26, !dbg !1215

do.cond26:                                        ; preds = %do.body24
  br label %do.end27, !dbg !1215

do.end27:                                         ; preds = %do.cond26
  br label %do.cond28, !dbg !1211

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !1211

do.end29:                                         ; preds = %do.cond28
  br label %do.cond30, !dbg !1206

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !1206

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !1202

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !1202

do.end33:                                         ; preds = %do.cond32
  br label %if.end

if.end:                                           ; preds = %do.end33, %do.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #8, !dbg !1192
  br label %do.end35, !dbg !1193

do.end35:                                         ; preds = %if.end
  br label %if.end77, !dbg !1193

if.else36:                                        ; preds = %if.then
  br label %do.body37, !dbg !1217

do.body37:                                        ; preds = %if.else36
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v38) #8, !dbg !1218
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v38, metadata !1177, metadata !DIExpression()), !dbg !1218
  %13 = load ptr, ptr %new.addr, align 8, !dbg !1218
  %14 = ptrtoint ptr %13 to i64, !dbg !1218
  store i64 %14, ptr %_r_a_p__v38, align 8, !dbg !1218
  br i1 false, label %land.lhs.true39, label %if.else51, !dbg !1219

land.lhs.true39:                                  ; preds = %do.body37
  %15 = load i64, ptr %_r_a_p__v38, align 8, !dbg !1219
  %cmp40 = icmp eq i64 %15, 0, !dbg !1219
  br i1 %cmp40, label %if.then41, label %if.else51, !dbg !1218

if.then41:                                        ; preds = %land.lhs.true39
  br label %do.body42, !dbg !1219

do.body42:                                        ; preds = %if.then41
  br label %do.body43, !dbg !1221

do.body43:                                        ; preds = %do.body42
  br label %do.cond44, !dbg !1223

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !1223

do.end45:                                         ; preds = %do.cond44
  br label %do.body46, !dbg !1221

do.body46:                                        ; preds = %do.end45
  %16 = load i64, ptr %_r_a_p__v38, align 8, !dbg !1225
  %17 = inttoptr i64 %16 to ptr, !dbg !1225
  %18 = load ptr, ptr %parent.addr, align 8, !dbg !1225
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 1, !dbg !1225
  store volatile ptr %17, ptr %rb_right, align 8, !dbg !1225
  br label %do.cond47, !dbg !1225

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !1225

do.end48:                                         ; preds = %do.cond47
  br label %do.cond49, !dbg !1221

do.cond49:                                        ; preds = %do.end48
  br label %do.end50, !dbg !1221

do.end50:                                         ; preds = %do.cond49
  br label %if.end74, !dbg !1221

if.else51:                                        ; preds = %land.lhs.true39, %do.body37
  br label %do.body52, !dbg !1219

do.body52:                                        ; preds = %if.else51
  br label %do.body53, !dbg !1227

do.body53:                                        ; preds = %do.body52
  br label %do.cond54, !dbg !1229

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !1229

do.end55:                                         ; preds = %do.cond54
  br label %do.body56, !dbg !1227

do.body56:                                        ; preds = %do.end55
  br label %do.body57, !dbg !1231

do.body57:                                        ; preds = %do.body56
  br label %do.cond58, !dbg !1233

do.cond58:                                        ; preds = %do.body57
  br label %do.end59, !dbg !1233

do.end59:                                         ; preds = %do.cond58
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1231, !srcloc !1235
  br label %do.body60, !dbg !1231

do.body60:                                        ; preds = %do.end59
  br label %do.body61, !dbg !1236

do.body61:                                        ; preds = %do.body60
  br label %do.cond62, !dbg !1238

do.cond62:                                        ; preds = %do.body61
  br label %do.end63, !dbg !1238

do.end63:                                         ; preds = %do.cond62
  br label %do.body64, !dbg !1236

do.body64:                                        ; preds = %do.end63
  %19 = load i64, ptr %_r_a_p__v38, align 8, !dbg !1240
  %20 = inttoptr i64 %19 to ptr, !dbg !1240
  %21 = load ptr, ptr %parent.addr, align 8, !dbg !1240
  %rb_right65 = getelementptr inbounds %struct.rb_node, ptr %21, i32 0, i32 1, !dbg !1240
  store volatile ptr %20, ptr %rb_right65, align 8, !dbg !1240
  br label %do.cond66, !dbg !1240

do.cond66:                                        ; preds = %do.body64
  br label %do.end67, !dbg !1240

do.end67:                                         ; preds = %do.cond66
  br label %do.cond68, !dbg !1236

do.cond68:                                        ; preds = %do.end67
  br label %do.end69, !dbg !1236

do.end69:                                         ; preds = %do.cond68
  br label %do.cond70, !dbg !1231

do.cond70:                                        ; preds = %do.end69
  br label %do.end71, !dbg !1231

do.end71:                                         ; preds = %do.cond70
  br label %do.cond72, !dbg !1227

do.cond72:                                        ; preds = %do.end71
  br label %do.end73, !dbg !1227

do.end73:                                         ; preds = %do.cond72
  br label %if.end74

if.end74:                                         ; preds = %do.end73, %do.end50
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v38) #8, !dbg !1217
  br label %do.end76, !dbg !1218

do.end76:                                         ; preds = %if.end74
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end35
  br label %if.end119, !dbg !1242

if.else78:                                        ; preds = %entry
  br label %do.body79, !dbg !1243

do.body79:                                        ; preds = %if.else78
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v80) #8, !dbg !1244
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v80, metadata !1179, metadata !DIExpression()), !dbg !1244
  %22 = load ptr, ptr %new.addr, align 8, !dbg !1244
  %23 = ptrtoint ptr %22 to i64, !dbg !1244
  store i64 %23, ptr %_r_a_p__v80, align 8, !dbg !1244
  br i1 false, label %land.lhs.true81, label %if.else93, !dbg !1245

land.lhs.true81:                                  ; preds = %do.body79
  %24 = load i64, ptr %_r_a_p__v80, align 8, !dbg !1245
  %cmp82 = icmp eq i64 %24, 0, !dbg !1245
  br i1 %cmp82, label %if.then83, label %if.else93, !dbg !1244

if.then83:                                        ; preds = %land.lhs.true81
  br label %do.body84, !dbg !1245

do.body84:                                        ; preds = %if.then83
  br label %do.body85, !dbg !1247

do.body85:                                        ; preds = %do.body84
  br label %do.cond86, !dbg !1249

do.cond86:                                        ; preds = %do.body85
  br label %do.end87, !dbg !1249

do.end87:                                         ; preds = %do.cond86
  br label %do.body88, !dbg !1247

do.body88:                                        ; preds = %do.end87
  %25 = load i64, ptr %_r_a_p__v80, align 8, !dbg !1251
  %26 = inttoptr i64 %25 to ptr, !dbg !1251
  %27 = load ptr, ptr %root.addr, align 8, !dbg !1251
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %27, i32 0, i32 0, !dbg !1251
  store volatile ptr %26, ptr %rb_node, align 8, !dbg !1251
  br label %do.cond89, !dbg !1251

do.cond89:                                        ; preds = %do.body88
  br label %do.end90, !dbg !1251

do.end90:                                         ; preds = %do.cond89
  br label %do.cond91, !dbg !1247

do.cond91:                                        ; preds = %do.end90
  br label %do.end92, !dbg !1247

do.end92:                                         ; preds = %do.cond91
  br label %if.end116, !dbg !1247

if.else93:                                        ; preds = %land.lhs.true81, %do.body79
  br label %do.body94, !dbg !1245

do.body94:                                        ; preds = %if.else93
  br label %do.body95, !dbg !1253

do.body95:                                        ; preds = %do.body94
  br label %do.cond96, !dbg !1255

do.cond96:                                        ; preds = %do.body95
  br label %do.end97, !dbg !1255

do.end97:                                         ; preds = %do.cond96
  br label %do.body98, !dbg !1253

do.body98:                                        ; preds = %do.end97
  br label %do.body99, !dbg !1257

do.body99:                                        ; preds = %do.body98
  br label %do.cond100, !dbg !1259

do.cond100:                                       ; preds = %do.body99
  br label %do.end101, !dbg !1259

do.end101:                                        ; preds = %do.cond100
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1257, !srcloc !1261
  br label %do.body102, !dbg !1257

do.body102:                                       ; preds = %do.end101
  br label %do.body103, !dbg !1262

do.body103:                                       ; preds = %do.body102
  br label %do.cond104, !dbg !1264

do.cond104:                                       ; preds = %do.body103
  br label %do.end105, !dbg !1264

do.end105:                                        ; preds = %do.cond104
  br label %do.body106, !dbg !1262

do.body106:                                       ; preds = %do.end105
  %28 = load i64, ptr %_r_a_p__v80, align 8, !dbg !1266
  %29 = inttoptr i64 %28 to ptr, !dbg !1266
  %30 = load ptr, ptr %root.addr, align 8, !dbg !1266
  %rb_node107 = getelementptr inbounds %struct.rb_root, ptr %30, i32 0, i32 0, !dbg !1266
  store volatile ptr %29, ptr %rb_node107, align 8, !dbg !1266
  br label %do.cond108, !dbg !1266

do.cond108:                                       ; preds = %do.body106
  br label %do.end109, !dbg !1266

do.end109:                                        ; preds = %do.cond108
  br label %do.cond110, !dbg !1262

do.cond110:                                       ; preds = %do.end109
  br label %do.end111, !dbg !1262

do.end111:                                        ; preds = %do.cond110
  br label %do.cond112, !dbg !1257

do.cond112:                                       ; preds = %do.end111
  br label %do.end113, !dbg !1257

do.end113:                                        ; preds = %do.cond112
  br label %do.cond114, !dbg !1253

do.cond114:                                       ; preds = %do.end113
  br label %do.end115, !dbg !1253

do.end115:                                        ; preds = %do.cond114
  br label %if.end116

if.end116:                                        ; preds = %do.end115, %do.end92
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v80) #8, !dbg !1243
  br label %do.end118, !dbg !1244

do.end118:                                        ; preds = %if.end116
  br label %if.end119

if.end119:                                        ; preds = %do.end118, %if.end77
  ret void, !dbg !1268
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @rb_next_postorder(ptr noundef %node) #0 align 16 !dbg !1269 {
entry:
  %retval = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1271, metadata !DIExpression()), !dbg !1273
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #8, !dbg !1274
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !1272, metadata !DIExpression()), !dbg !1275
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1276
  %tobool = icmp ne ptr %0, null, !dbg !1276
  br i1 %tobool, label %if.end, label %if.then, !dbg !1278

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1279
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1279

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %node.addr, align 8, !dbg !1280
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 0, !dbg !1280
  %2 = load i64, ptr %__rb_parent_color, align 8, !dbg !1280
  %and = and i64 %2, -4, !dbg !1280
  %3 = inttoptr i64 %and to ptr, !dbg !1280
  store ptr %3, ptr %parent, align 8, !dbg !1281
  %4 = load ptr, ptr %parent, align 8, !dbg !1282
  %tobool1 = icmp ne ptr %4, null, !dbg !1282
  br i1 %tobool1, label %land.lhs.true, label %if.else, !dbg !1284

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %node.addr, align 8, !dbg !1285
  %6 = load ptr, ptr %parent, align 8, !dbg !1286
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 2, !dbg !1287
  %7 = load ptr, ptr %rb_left, align 8, !dbg !1287
  %cmp = icmp eq ptr %5, %7, !dbg !1288
  br i1 %cmp, label %land.lhs.true2, label %if.else, !dbg !1289

land.lhs.true2:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %parent, align 8, !dbg !1290
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 1, !dbg !1291
  %9 = load ptr, ptr %rb_right, align 8, !dbg !1291
  %tobool3 = icmp ne ptr %9, null, !dbg !1290
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !1292

if.then4:                                         ; preds = %land.lhs.true2
  %10 = load ptr, ptr %parent, align 8, !dbg !1293
  %rb_right5 = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 1, !dbg !1295
  %11 = load ptr, ptr %rb_right5, align 8, !dbg !1295
  %call = call ptr @rb_left_deepest_node(ptr noundef %11) #7, !dbg !1296
  store ptr %call, ptr %retval, align 8, !dbg !1297
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1297

if.else:                                          ; preds = %land.lhs.true2, %land.lhs.true, %if.end
  %12 = load ptr, ptr %parent, align 8, !dbg !1298
  store ptr %12, ptr %retval, align 8, !dbg !1299
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1299

cleanup:                                          ; preds = %if.else, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #8, !dbg !1300
  %13 = load ptr, ptr %retval, align 8, !dbg !1300
  ret ptr %13, !dbg !1300
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rb_left_deepest_node(ptr noundef %node) #0 align 16 !dbg !1301 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1303, metadata !DIExpression()), !dbg !1304
  br label %for.cond, !dbg !1305

for.cond:                                         ; preds = %if.end6, %entry
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1306
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 2, !dbg !1311
  %1 = load ptr, ptr %rb_left, align 8, !dbg !1311
  %tobool = icmp ne ptr %1, null, !dbg !1306
  br i1 %tobool, label %if.then, label %if.else, !dbg !1312

if.then:                                          ; preds = %for.cond
  %2 = load ptr, ptr %node.addr, align 8, !dbg !1313
  %rb_left1 = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 2, !dbg !1314
  %3 = load ptr, ptr %rb_left1, align 8, !dbg !1314
  store ptr %3, ptr %node.addr, align 8, !dbg !1315
  br label %if.end6, !dbg !1316

if.else:                                          ; preds = %for.cond
  %4 = load ptr, ptr %node.addr, align 8, !dbg !1317
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 1, !dbg !1319
  %5 = load ptr, ptr %rb_right, align 8, !dbg !1319
  %tobool2 = icmp ne ptr %5, null, !dbg !1317
  br i1 %tobool2, label %if.then3, label %if.else5, !dbg !1320

if.then3:                                         ; preds = %if.else
  %6 = load ptr, ptr %node.addr, align 8, !dbg !1321
  %rb_right4 = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 1, !dbg !1322
  %7 = load ptr, ptr %rb_right4, align 8, !dbg !1322
  store ptr %7, ptr %node.addr, align 8, !dbg !1323
  br label %if.end, !dbg !1324

if.else5:                                         ; preds = %if.else
  %8 = load ptr, ptr %node.addr, align 8, !dbg !1325
  ret ptr %8, !dbg !1326

if.end:                                           ; preds = %if.then3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  br label %for.cond, !dbg !1327, !llvm.loop !1328
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @rb_first_postorder(ptr noundef %root) #0 align 16 !dbg !1331 {
entry:
  %retval = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1333, metadata !DIExpression()), !dbg !1334
  %0 = load ptr, ptr %root.addr, align 8, !dbg !1335
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %0, i32 0, i32 0, !dbg !1337
  %1 = load ptr, ptr %rb_node, align 8, !dbg !1337
  %tobool = icmp ne ptr %1, null, !dbg !1335
  br i1 %tobool, label %if.end, label %if.then, !dbg !1338

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1339
  br label %return, !dbg !1339

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %root.addr, align 8, !dbg !1340
  %rb_node1 = getelementptr inbounds %struct.rb_root, ptr %2, i32 0, i32 0, !dbg !1341
  %3 = load ptr, ptr %rb_node1, align 8, !dbg !1341
  %call = call ptr @rb_left_deepest_node(ptr noundef %3) #7, !dbg !1342
  store ptr %call, ptr %retval, align 8, !dbg !1343
  br label %return, !dbg !1343

return:                                           ; preds = %if.end, %if.then
  %4 = load ptr, ptr %retval, align 8, !dbg !1344
  ret ptr %4, !dbg !1344
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_set_parent_color(ptr noundef %rb, ptr noundef %p, i32 noundef %color) #3 align 16 !dbg !1345 {
entry:
  %rb.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %color.addr = alloca i32, align 4
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !1350, metadata !DIExpression()), !dbg !1353
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1351, metadata !DIExpression()), !dbg !1354
  store i32 %color, ptr %color.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %color.addr, metadata !1352, metadata !DIExpression()), !dbg !1355
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1356
  %1 = ptrtoint ptr %0 to i64, !dbg !1357
  %2 = load i32, ptr %color.addr, align 4, !dbg !1358
  %conv = sext i32 %2 to i64, !dbg !1358
  %add = add i64 %1, %conv, !dbg !1359
  %3 = load ptr, ptr %rb.addr, align 8, !dbg !1360
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 0, !dbg !1361
  store i64 %add, ptr %__rb_parent_color, align 8, !dbg !1362
  ret void, !dbg !1363
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__rb_rotate_set_parents(ptr noundef %old, ptr noundef %new, ptr noundef %root, i32 noundef %color) #3 align 16 !dbg !1364 {
entry:
  %old.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %color.addr = alloca i32, align 4
  %parent = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1368, metadata !DIExpression()), !dbg !1373
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1369, metadata !DIExpression()), !dbg !1374
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1370, metadata !DIExpression()), !dbg !1375
  store i32 %color, ptr %color.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %color.addr, metadata !1371, metadata !DIExpression()), !dbg !1376
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #8, !dbg !1377
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !1372, metadata !DIExpression()), !dbg !1378
  %0 = load ptr, ptr %old.addr, align 8, !dbg !1379
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 0, !dbg !1379
  %1 = load i64, ptr %__rb_parent_color, align 8, !dbg !1379
  %and = and i64 %1, -4, !dbg !1379
  %2 = inttoptr i64 %and to ptr, !dbg !1379
  store ptr %2, ptr %parent, align 8, !dbg !1378
  %3 = load ptr, ptr %old.addr, align 8, !dbg !1380
  %__rb_parent_color1 = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 0, !dbg !1381
  %4 = load i64, ptr %__rb_parent_color1, align 8, !dbg !1381
  %5 = load ptr, ptr %new.addr, align 8, !dbg !1382
  %__rb_parent_color2 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 0, !dbg !1383
  store i64 %4, ptr %__rb_parent_color2, align 8, !dbg !1384
  %6 = load ptr, ptr %old.addr, align 8, !dbg !1385
  %7 = load ptr, ptr %new.addr, align 8, !dbg !1386
  %8 = load i32, ptr %color.addr, align 4, !dbg !1387
  call void @rb_set_parent_color(ptr noundef %6, ptr noundef %7, i32 noundef %8) #7, !dbg !1388
  %9 = load ptr, ptr %old.addr, align 8, !dbg !1389
  %10 = load ptr, ptr %new.addr, align 8, !dbg !1390
  %11 = load ptr, ptr %parent, align 8, !dbg !1391
  %12 = load ptr, ptr %root.addr, align 8, !dbg !1392
  call void @__rb_change_child(ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) #7, !dbg !1393
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #8, !dbg !1394
  ret void, !dbg !1394
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_set_black(ptr noundef %rb) #3 align 16 !dbg !1395 {
entry:
  %rb.addr = alloca ptr, align 8
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !1399, metadata !DIExpression()), !dbg !1400
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !1401
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 0, !dbg !1402
  %1 = load i64, ptr %__rb_parent_color, align 8, !dbg !1403
  %add = add i64 %1, 1, !dbg !1403
  store i64 %add, ptr %__rb_parent_color, align 8, !dbg !1403
  ret void, !dbg !1404
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rb_red_parent(ptr noundef %red) #3 align 16 !dbg !1405 {
entry:
  %red.addr = alloca ptr, align 8
  store ptr %red, ptr %red.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %red.addr, metadata !1409, metadata !DIExpression()), !dbg !1410
  %0 = load ptr, ptr %red.addr, align 8, !dbg !1411
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 0, !dbg !1412
  %1 = load i64, ptr %__rb_parent_color, align 8, !dbg !1412
  %2 = inttoptr i64 %1 to ptr, !dbg !1413
  ret ptr %2, !dbg !1414
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dummy_propagate(ptr noundef %node, ptr noundef %stop) #3 align 16 !dbg !1415 {
entry:
  %node.addr = alloca ptr, align 8
  %stop.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1417, metadata !DIExpression()), !dbg !1419
  store ptr %stop, ptr %stop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stop.addr, metadata !1418, metadata !DIExpression()), !dbg !1420
  ret void, !dbg !1421
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dummy_copy(ptr noundef %old, ptr noundef %new) #3 align 16 !dbg !1422 {
entry:
  %old.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1424, metadata !DIExpression()), !dbg !1426
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1425, metadata !DIExpression()), !dbg !1427
  ret void, !dbg !1428
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { noredzone }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___rb_erase_color86", scope: !2, file: !3, line: 415, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.rbtree.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/rbtree\22 -D KBUILD_BASENAME=\22rbtree\22 -D KBUILD_MODNAME=\22rbtree\22 -D __KBUILD_MODNAME=kmod_rbtree -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/rbtree.ll lib/rbtree.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !25, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/rbtree.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "82f467b137d55d40a588e3a173887bbb")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !13, !14, !21, !23}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !16, line: 5, size: 192, align: 64, elements: !17)
!16 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!17 = !{!18, !19, !20}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !15, file: !16, line: 6, baseType: !13, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !15, file: !16, line: 7, baseType: !14, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !15, file: !16, line: 8, baseType: !14, size: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !24, line: 42, baseType: !13)
!24 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!25 = !{!0, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48}
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rb_insert_color87", scope: !2, file: !3, line: 438, type: !12, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rb_erase88", scope: !2, file: !3, line: 447, type: !12, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___rb_insert_augmented89", scope: !2, file: !3, line: 461, type: !12, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rb_first90", scope: !2, file: !3, line: 477, type: !12, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rb_last91", scope: !2, file: !3, line: 490, type: !12, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rb_next92", scope: !2, file: !3, line: 522, type: !12, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rb_prev93", scope: !2, file: !3, line: 551, type: !12, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rb_replace_node94", scope: !2, file: !3, line: 568, type: !12, isLocal: true, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rb_replace_node_rcu95", scope: !2, file: !3, line: 590, type: !12, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rb_next_postorder96", scope: !2, file: !3, line: 621, type: !12, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rb_first_postorder97", scope: !2, file: !3, line: 630, type: !12, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "dummy_callbacks", scope: !2, file: !3, line: 428, type: !50, isLocal: true, isDefinition: true)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_augment_callbacks", file: !52, line: 27, size: 192, elements: !53)
!52 = !DIFile(filename: "./include/linux/rbtree_augmented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6ddc521985c4f988291280d937ba9ac7")
!53 = !{!54, !58, !59}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "propagate", scope: !51, file: !52, line: 28, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !14, !14}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !51, file: !52, line: 29, baseType: !55, size: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "rotate", scope: !51, file: !52, line: 30, baseType: !55, size: 64, offset: 128)
!60 = !{i32 7, !"Dwarf Version", i32 5}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 8, !"cf-protection-branch", i32 1}
!64 = !{i32 4, !"function_return_thunk_extern", i32 1}
!65 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!66 = !{i32 1, !"Code Model", i32 2}
!67 = !{i32 1, !"override-stack-alignment", i32 8}
!68 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!69 = distinct !DISubprogram(name: "__rb_erase_color", scope: !3, file: !3, line: 410, type: !70, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !76)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !14, !72, !55}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !16, line: 12, size: 64, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !73, file: !16, line: 13, baseType: !14, size: 64)
!76 = !{!77, !78, !79}
!77 = !DILocalVariable(name: "parent", arg: 1, scope: !69, file: !3, line: 410, type: !14)
!78 = !DILocalVariable(name: "root", arg: 2, scope: !69, file: !3, line: 410, type: !72)
!79 = !DILocalVariable(name: "augment_rotate", arg: 3, scope: !69, file: !3, line: 411, type: !55)
!80 = !DILocation(line: 410, column: 39, scope: !69)
!81 = !DILocation(line: 410, column: 63, scope: !69)
!82 = !DILocation(line: 411, column: 9, scope: !69)
!83 = !DILocation(line: 413, column: 21, scope: !69)
!84 = !DILocation(line: 413, column: 29, scope: !69)
!85 = !DILocation(line: 413, column: 35, scope: !69)
!86 = !DILocation(line: 413, column: 2, scope: !69)
!87 = !DILocation(line: 414, column: 1, scope: !69)
!88 = distinct !DISubprogram(name: "____rb_erase_color", scope: !3, file: !3, line: 227, type: !70, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !89)
!89 = !{!90, !91, !92, !93, !94, !95, !96}
!90 = !DILocalVariable(name: "parent", arg: 1, scope: !88, file: !3, line: 227, type: !14)
!91 = !DILocalVariable(name: "root", arg: 2, scope: !88, file: !3, line: 227, type: !72)
!92 = !DILocalVariable(name: "augment_rotate", arg: 3, scope: !88, file: !3, line: 228, type: !55)
!93 = !DILocalVariable(name: "node", scope: !88, file: !3, line: 230, type: !14)
!94 = !DILocalVariable(name: "sibling", scope: !88, file: !3, line: 230, type: !14)
!95 = !DILocalVariable(name: "tmp1", scope: !88, file: !3, line: 230, type: !14)
!96 = !DILocalVariable(name: "tmp2", scope: !88, file: !3, line: 230, type: !14)
!97 = !DILocation(line: 227, column: 36, scope: !88)
!98 = !DILocation(line: 227, column: 60, scope: !88)
!99 = !DILocation(line: 228, column: 9, scope: !88)
!100 = !DILocation(line: 230, column: 2, scope: !88)
!101 = !DILocation(line: 230, column: 18, scope: !88)
!102 = !DILocation(line: 230, column: 32, scope: !88)
!103 = !DILocation(line: 230, column: 42, scope: !88)
!104 = !DILocation(line: 230, column: 49, scope: !88)
!105 = !DILocation(line: 232, column: 2, scope: !88)
!106 = !DILocation(line: 240, column: 13, scope: !107)
!107 = distinct !DILexicalBlock(scope: !88, file: !3, line: 232, column: 15)
!108 = !DILocation(line: 240, column: 21, scope: !107)
!109 = !DILocation(line: 240, column: 11, scope: !107)
!110 = !DILocation(line: 241, column: 7, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !3, line: 241, column: 7)
!112 = !DILocation(line: 241, column: 15, scope: !111)
!113 = !DILocation(line: 241, column: 12, scope: !111)
!114 = !DILocation(line: 241, column: 7, scope: !107)
!115 = !DILocation(line: 242, column: 8, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !3, line: 242, column: 8)
!117 = distinct !DILexicalBlock(scope: !111, file: !3, line: 241, column: 24)
!118 = !DILocation(line: 242, column: 8, scope: !117)
!119 = !DILocation(line: 252, column: 12, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !3, line: 242, column: 28)
!121 = !DILocation(line: 252, column: 21, scope: !120)
!122 = !DILocation(line: 252, column: 10, scope: !120)
!123 = !DILocation(line: 253, column: 5, scope: !120)
!124 = !DILocation(line: 253, column: 5, scope: !125)
!125 = distinct !DILexicalBlock(scope: !120, file: !3, line: 253, column: 5)
!126 = !DILocation(line: 253, column: 5, scope: !127)
!127 = distinct !DILexicalBlock(scope: !125, file: !3, line: 253, column: 5)
!128 = !DILocation(line: 253, column: 5, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !3, line: 253, column: 5)
!130 = !DILocation(line: 254, column: 5, scope: !120)
!131 = !DILocation(line: 254, column: 5, scope: !132)
!132 = distinct !DILexicalBlock(scope: !120, file: !3, line: 254, column: 5)
!133 = !DILocation(line: 254, column: 5, scope: !134)
!134 = distinct !DILexicalBlock(scope: !132, file: !3, line: 254, column: 5)
!135 = !DILocation(line: 254, column: 5, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !3, line: 254, column: 5)
!137 = !DILocation(line: 255, column: 25, scope: !120)
!138 = !DILocation(line: 255, column: 31, scope: !120)
!139 = !DILocation(line: 255, column: 5, scope: !120)
!140 = !DILocation(line: 256, column: 29, scope: !120)
!141 = !DILocation(line: 256, column: 37, scope: !120)
!142 = !DILocation(line: 256, column: 46, scope: !120)
!143 = !DILocation(line: 256, column: 5, scope: !120)
!144 = !DILocation(line: 258, column: 5, scope: !120)
!145 = !DILocation(line: 258, column: 20, scope: !120)
!146 = !DILocation(line: 258, column: 28, scope: !120)
!147 = !DILocation(line: 259, column: 15, scope: !120)
!148 = !DILocation(line: 259, column: 13, scope: !120)
!149 = !DILocation(line: 260, column: 4, scope: !120)
!150 = !DILocation(line: 261, column: 11, scope: !117)
!151 = !DILocation(line: 261, column: 20, scope: !117)
!152 = !DILocation(line: 261, column: 9, scope: !117)
!153 = !DILocation(line: 262, column: 9, scope: !154)
!154 = distinct !DILexicalBlock(scope: !117, file: !3, line: 262, column: 8)
!155 = !DILocation(line: 262, column: 14, scope: !154)
!156 = !DILocation(line: 262, column: 17, scope: !154)
!157 = !DILocation(line: 262, column: 8, scope: !117)
!158 = !DILocation(line: 263, column: 12, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !3, line: 262, column: 36)
!160 = !DILocation(line: 263, column: 21, scope: !159)
!161 = !DILocation(line: 263, column: 10, scope: !159)
!162 = !DILocation(line: 264, column: 10, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !3, line: 264, column: 9)
!164 = !DILocation(line: 264, column: 15, scope: !163)
!165 = !DILocation(line: 264, column: 18, scope: !163)
!166 = !DILocation(line: 264, column: 9, scope: !159)
!167 = !DILocation(line: 280, column: 26, scope: !168)
!168 = distinct !DILexicalBlock(scope: !163, file: !3, line: 264, column: 37)
!169 = !DILocation(line: 280, column: 35, scope: !168)
!170 = !DILocation(line: 280, column: 6, scope: !168)
!171 = !DILocation(line: 282, column: 10, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !3, line: 282, column: 10)
!173 = !DILocation(line: 282, column: 10, scope: !168)
!174 = !DILocation(line: 283, column: 20, scope: !172)
!175 = !DILocation(line: 283, column: 7, scope: !172)
!176 = !DILocation(line: 285, column: 14, scope: !177)
!177 = distinct !DILexicalBlock(scope: !172, file: !3, line: 284, column: 11)
!178 = !DILocation(line: 285, column: 12, scope: !177)
!179 = !DILocation(line: 286, column: 16, scope: !177)
!180 = !DILocation(line: 286, column: 14, scope: !177)
!181 = !DILocation(line: 287, column: 11, scope: !182)
!182 = distinct !DILexicalBlock(scope: !177, file: !3, line: 287, column: 11)
!183 = !DILocation(line: 287, column: 11, scope: !177)
!184 = !DILocation(line: 288, column: 8, scope: !182)
!185 = distinct !{!185, !105, !186, !187}
!186 = !DILocation(line: 406, column: 2, scope: !88)
!187 = !{!"llvm.loop.unroll.disable"}
!188 = !DILocation(line: 290, column: 6, scope: !168)
!189 = !DILocation(line: 319, column: 12, scope: !159)
!190 = !DILocation(line: 319, column: 18, scope: !159)
!191 = !DILocation(line: 319, column: 10, scope: !159)
!192 = !DILocation(line: 320, column: 5, scope: !159)
!193 = !DILocation(line: 320, column: 5, scope: !194)
!194 = distinct !DILexicalBlock(scope: !159, file: !3, line: 320, column: 5)
!195 = !DILocation(line: 320, column: 5, scope: !196)
!196 = distinct !DILexicalBlock(scope: !194, file: !3, line: 320, column: 5)
!197 = !DILocation(line: 320, column: 5, scope: !198)
!198 = distinct !DILexicalBlock(scope: !194, file: !3, line: 320, column: 5)
!199 = !DILocation(line: 321, column: 5, scope: !159)
!200 = !DILocation(line: 321, column: 5, scope: !201)
!201 = distinct !DILexicalBlock(scope: !159, file: !3, line: 321, column: 5)
!202 = !DILocation(line: 321, column: 5, scope: !203)
!203 = distinct !DILexicalBlock(scope: !201, file: !3, line: 321, column: 5)
!204 = !DILocation(line: 321, column: 5, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !3, line: 321, column: 5)
!206 = !DILocation(line: 322, column: 5, scope: !159)
!207 = !DILocation(line: 322, column: 5, scope: !208)
!208 = distinct !DILexicalBlock(scope: !159, file: !3, line: 322, column: 5)
!209 = !DILocation(line: 322, column: 5, scope: !210)
!210 = distinct !DILexicalBlock(scope: !208, file: !3, line: 322, column: 5)
!211 = !DILocation(line: 322, column: 5, scope: !212)
!212 = distinct !DILexicalBlock(scope: !208, file: !3, line: 322, column: 5)
!213 = !DILocation(line: 323, column: 9, scope: !214)
!214 = distinct !DILexicalBlock(scope: !159, file: !3, line: 323, column: 9)
!215 = !DILocation(line: 323, column: 9, scope: !159)
!216 = !DILocation(line: 324, column: 26, scope: !214)
!217 = !DILocation(line: 324, column: 32, scope: !214)
!218 = !DILocation(line: 324, column: 6, scope: !214)
!219 = !DILocation(line: 326, column: 5, scope: !159)
!220 = !DILocation(line: 326, column: 20, scope: !159)
!221 = !DILocation(line: 326, column: 29, scope: !159)
!222 = !DILocation(line: 327, column: 12, scope: !159)
!223 = !DILocation(line: 327, column: 10, scope: !159)
!224 = !DILocation(line: 328, column: 15, scope: !159)
!225 = !DILocation(line: 328, column: 13, scope: !159)
!226 = !DILocation(line: 329, column: 4, scope: !159)
!227 = !DILocation(line: 342, column: 11, scope: !117)
!228 = !DILocation(line: 342, column: 20, scope: !117)
!229 = !DILocation(line: 342, column: 9, scope: !117)
!230 = !DILocation(line: 343, column: 4, scope: !117)
!231 = !DILocation(line: 343, column: 4, scope: !232)
!232 = distinct !DILexicalBlock(scope: !117, file: !3, line: 343, column: 4)
!233 = !DILocation(line: 343, column: 4, scope: !234)
!234 = distinct !DILexicalBlock(scope: !232, file: !3, line: 343, column: 4)
!235 = !DILocation(line: 343, column: 4, scope: !236)
!236 = distinct !DILexicalBlock(scope: !232, file: !3, line: 343, column: 4)
!237 = !DILocation(line: 344, column: 4, scope: !117)
!238 = !DILocation(line: 344, column: 4, scope: !239)
!239 = distinct !DILexicalBlock(scope: !117, file: !3, line: 344, column: 4)
!240 = !DILocation(line: 344, column: 4, scope: !241)
!241 = distinct !DILexicalBlock(scope: !239, file: !3, line: 344, column: 4)
!242 = !DILocation(line: 344, column: 4, scope: !243)
!243 = distinct !DILexicalBlock(scope: !239, file: !3, line: 344, column: 4)
!244 = !DILocation(line: 345, column: 24, scope: !117)
!245 = !DILocation(line: 345, column: 30, scope: !117)
!246 = !DILocation(line: 345, column: 4, scope: !117)
!247 = !DILocation(line: 346, column: 8, scope: !248)
!248 = distinct !DILexicalBlock(scope: !117, file: !3, line: 346, column: 8)
!249 = !DILocation(line: 346, column: 8, scope: !117)
!250 = !DILocation(line: 347, column: 19, scope: !248)
!251 = !DILocation(line: 347, column: 25, scope: !248)
!252 = !DILocation(line: 347, column: 5, scope: !248)
!253 = !DILocation(line: 348, column: 28, scope: !117)
!254 = !DILocation(line: 348, column: 36, scope: !117)
!255 = !DILocation(line: 348, column: 45, scope: !117)
!256 = !DILocation(line: 348, column: 4, scope: !117)
!257 = !DILocation(line: 350, column: 4, scope: !117)
!258 = !DILocation(line: 350, column: 19, scope: !117)
!259 = !DILocation(line: 350, column: 27, scope: !117)
!260 = !DILocation(line: 351, column: 4, scope: !117)
!261 = !DILocation(line: 353, column: 14, scope: !262)
!262 = distinct !DILexicalBlock(scope: !111, file: !3, line: 352, column: 10)
!263 = !DILocation(line: 353, column: 22, scope: !262)
!264 = !DILocation(line: 353, column: 12, scope: !262)
!265 = !DILocation(line: 354, column: 8, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !3, line: 354, column: 8)
!267 = !DILocation(line: 354, column: 8, scope: !262)
!268 = !DILocation(line: 356, column: 12, scope: !269)
!269 = distinct !DILexicalBlock(scope: !266, file: !3, line: 354, column: 28)
!270 = !DILocation(line: 356, column: 21, scope: !269)
!271 = !DILocation(line: 356, column: 10, scope: !269)
!272 = !DILocation(line: 357, column: 5, scope: !269)
!273 = !DILocation(line: 357, column: 5, scope: !274)
!274 = distinct !DILexicalBlock(scope: !269, file: !3, line: 357, column: 5)
!275 = !DILocation(line: 357, column: 5, scope: !276)
!276 = distinct !DILexicalBlock(scope: !274, file: !3, line: 357, column: 5)
!277 = !DILocation(line: 357, column: 5, scope: !278)
!278 = distinct !DILexicalBlock(scope: !274, file: !3, line: 357, column: 5)
!279 = !DILocation(line: 358, column: 5, scope: !269)
!280 = !DILocation(line: 358, column: 5, scope: !281)
!281 = distinct !DILexicalBlock(scope: !269, file: !3, line: 358, column: 5)
!282 = !DILocation(line: 358, column: 5, scope: !283)
!283 = distinct !DILexicalBlock(scope: !281, file: !3, line: 358, column: 5)
!284 = !DILocation(line: 358, column: 5, scope: !285)
!285 = distinct !DILexicalBlock(scope: !281, file: !3, line: 358, column: 5)
!286 = !DILocation(line: 359, column: 25, scope: !269)
!287 = !DILocation(line: 359, column: 31, scope: !269)
!288 = !DILocation(line: 359, column: 5, scope: !269)
!289 = !DILocation(line: 360, column: 29, scope: !269)
!290 = !DILocation(line: 360, column: 37, scope: !269)
!291 = !DILocation(line: 360, column: 46, scope: !269)
!292 = !DILocation(line: 360, column: 5, scope: !269)
!293 = !DILocation(line: 362, column: 5, scope: !269)
!294 = !DILocation(line: 362, column: 20, scope: !269)
!295 = !DILocation(line: 362, column: 28, scope: !269)
!296 = !DILocation(line: 363, column: 15, scope: !269)
!297 = !DILocation(line: 363, column: 13, scope: !269)
!298 = !DILocation(line: 364, column: 4, scope: !269)
!299 = !DILocation(line: 365, column: 11, scope: !262)
!300 = !DILocation(line: 365, column: 20, scope: !262)
!301 = !DILocation(line: 365, column: 9, scope: !262)
!302 = !DILocation(line: 366, column: 9, scope: !303)
!303 = distinct !DILexicalBlock(scope: !262, file: !3, line: 366, column: 8)
!304 = !DILocation(line: 366, column: 14, scope: !303)
!305 = !DILocation(line: 366, column: 17, scope: !303)
!306 = !DILocation(line: 366, column: 8, scope: !262)
!307 = !DILocation(line: 367, column: 12, scope: !308)
!308 = distinct !DILexicalBlock(scope: !303, file: !3, line: 366, column: 36)
!309 = !DILocation(line: 367, column: 21, scope: !308)
!310 = !DILocation(line: 367, column: 10, scope: !308)
!311 = !DILocation(line: 368, column: 10, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !3, line: 368, column: 9)
!313 = !DILocation(line: 368, column: 15, scope: !312)
!314 = !DILocation(line: 368, column: 18, scope: !312)
!315 = !DILocation(line: 368, column: 9, scope: !308)
!316 = !DILocation(line: 370, column: 26, scope: !317)
!317 = distinct !DILexicalBlock(scope: !312, file: !3, line: 368, column: 37)
!318 = !DILocation(line: 370, column: 35, scope: !317)
!319 = !DILocation(line: 370, column: 6, scope: !317)
!320 = !DILocation(line: 372, column: 10, scope: !321)
!321 = distinct !DILexicalBlock(scope: !317, file: !3, line: 372, column: 10)
!322 = !DILocation(line: 372, column: 10, scope: !317)
!323 = !DILocation(line: 373, column: 20, scope: !321)
!324 = !DILocation(line: 373, column: 7, scope: !321)
!325 = !DILocation(line: 375, column: 14, scope: !326)
!326 = distinct !DILexicalBlock(scope: !321, file: !3, line: 374, column: 11)
!327 = !DILocation(line: 375, column: 12, scope: !326)
!328 = !DILocation(line: 376, column: 16, scope: !326)
!329 = !DILocation(line: 376, column: 14, scope: !326)
!330 = !DILocation(line: 377, column: 11, scope: !331)
!331 = distinct !DILexicalBlock(scope: !326, file: !3, line: 377, column: 11)
!332 = !DILocation(line: 377, column: 11, scope: !326)
!333 = !DILocation(line: 378, column: 8, scope: !331)
!334 = !DILocation(line: 380, column: 6, scope: !317)
!335 = !DILocation(line: 383, column: 12, scope: !308)
!336 = !DILocation(line: 383, column: 18, scope: !308)
!337 = !DILocation(line: 383, column: 10, scope: !308)
!338 = !DILocation(line: 384, column: 5, scope: !308)
!339 = !DILocation(line: 384, column: 5, scope: !340)
!340 = distinct !DILexicalBlock(scope: !308, file: !3, line: 384, column: 5)
!341 = !DILocation(line: 384, column: 5, scope: !342)
!342 = distinct !DILexicalBlock(scope: !340, file: !3, line: 384, column: 5)
!343 = !DILocation(line: 384, column: 5, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !3, line: 384, column: 5)
!345 = !DILocation(line: 385, column: 5, scope: !308)
!346 = !DILocation(line: 385, column: 5, scope: !347)
!347 = distinct !DILexicalBlock(scope: !308, file: !3, line: 385, column: 5)
!348 = !DILocation(line: 385, column: 5, scope: !349)
!349 = distinct !DILexicalBlock(scope: !347, file: !3, line: 385, column: 5)
!350 = !DILocation(line: 385, column: 5, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !3, line: 385, column: 5)
!352 = !DILocation(line: 386, column: 5, scope: !308)
!353 = !DILocation(line: 386, column: 5, scope: !354)
!354 = distinct !DILexicalBlock(scope: !308, file: !3, line: 386, column: 5)
!355 = !DILocation(line: 386, column: 5, scope: !356)
!356 = distinct !DILexicalBlock(scope: !354, file: !3, line: 386, column: 5)
!357 = !DILocation(line: 386, column: 5, scope: !358)
!358 = distinct !DILexicalBlock(scope: !354, file: !3, line: 386, column: 5)
!359 = !DILocation(line: 387, column: 9, scope: !360)
!360 = distinct !DILexicalBlock(scope: !308, file: !3, line: 387, column: 9)
!361 = !DILocation(line: 387, column: 9, scope: !308)
!362 = !DILocation(line: 388, column: 26, scope: !360)
!363 = !DILocation(line: 388, column: 32, scope: !360)
!364 = !DILocation(line: 388, column: 6, scope: !360)
!365 = !DILocation(line: 390, column: 5, scope: !308)
!366 = !DILocation(line: 390, column: 20, scope: !308)
!367 = !DILocation(line: 390, column: 29, scope: !308)
!368 = !DILocation(line: 391, column: 12, scope: !308)
!369 = !DILocation(line: 391, column: 10, scope: !308)
!370 = !DILocation(line: 392, column: 15, scope: !308)
!371 = !DILocation(line: 392, column: 13, scope: !308)
!372 = !DILocation(line: 393, column: 4, scope: !308)
!373 = !DILocation(line: 395, column: 11, scope: !262)
!374 = !DILocation(line: 395, column: 20, scope: !262)
!375 = !DILocation(line: 395, column: 9, scope: !262)
!376 = !DILocation(line: 396, column: 4, scope: !262)
!377 = !DILocation(line: 396, column: 4, scope: !378)
!378 = distinct !DILexicalBlock(scope: !262, file: !3, line: 396, column: 4)
!379 = !DILocation(line: 396, column: 4, scope: !380)
!380 = distinct !DILexicalBlock(scope: !378, file: !3, line: 396, column: 4)
!381 = !DILocation(line: 396, column: 4, scope: !382)
!382 = distinct !DILexicalBlock(scope: !378, file: !3, line: 396, column: 4)
!383 = !DILocation(line: 397, column: 4, scope: !262)
!384 = !DILocation(line: 397, column: 4, scope: !385)
!385 = distinct !DILexicalBlock(scope: !262, file: !3, line: 397, column: 4)
!386 = !DILocation(line: 397, column: 4, scope: !387)
!387 = distinct !DILexicalBlock(scope: !385, file: !3, line: 397, column: 4)
!388 = !DILocation(line: 397, column: 4, scope: !389)
!389 = distinct !DILexicalBlock(scope: !385, file: !3, line: 397, column: 4)
!390 = !DILocation(line: 398, column: 24, scope: !262)
!391 = !DILocation(line: 398, column: 30, scope: !262)
!392 = !DILocation(line: 398, column: 4, scope: !262)
!393 = !DILocation(line: 399, column: 8, scope: !394)
!394 = distinct !DILexicalBlock(scope: !262, file: !3, line: 399, column: 8)
!395 = !DILocation(line: 399, column: 8, scope: !262)
!396 = !DILocation(line: 400, column: 19, scope: !394)
!397 = !DILocation(line: 400, column: 25, scope: !394)
!398 = !DILocation(line: 400, column: 5, scope: !394)
!399 = !DILocation(line: 401, column: 28, scope: !262)
!400 = !DILocation(line: 401, column: 36, scope: !262)
!401 = !DILocation(line: 401, column: 45, scope: !262)
!402 = !DILocation(line: 401, column: 4, scope: !262)
!403 = !DILocation(line: 403, column: 4, scope: !262)
!404 = !DILocation(line: 403, column: 19, scope: !262)
!405 = !DILocation(line: 403, column: 27, scope: !262)
!406 = !DILocation(line: 404, column: 4, scope: !262)
!407 = !DILocation(line: 407, column: 1, scope: !88)
!408 = distinct !DISubprogram(name: "rb_insert_color", scope: !3, file: !3, line: 434, type: !409, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !411)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !14, !72}
!411 = !{!412, !413}
!412 = !DILocalVariable(name: "node", arg: 1, scope: !408, file: !3, line: 434, type: !14)
!413 = !DILocalVariable(name: "root", arg: 2, scope: !408, file: !3, line: 434, type: !72)
!414 = !DILocation(line: 434, column: 38, scope: !408)
!415 = !DILocation(line: 434, column: 60, scope: !408)
!416 = !DILocation(line: 436, column: 14, scope: !408)
!417 = !DILocation(line: 436, column: 20, scope: !408)
!418 = !DILocation(line: 436, column: 2, scope: !408)
!419 = !DILocation(line: 437, column: 1, scope: !408)
!420 = distinct !DISubprogram(name: "__rb_insert", scope: !3, file: !3, line: 85, type: !70, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !421)
!421 = !{!422, !423, !424, !425, !426, !427}
!422 = !DILocalVariable(name: "node", arg: 1, scope: !420, file: !3, line: 85, type: !14)
!423 = !DILocalVariable(name: "root", arg: 2, scope: !420, file: !3, line: 85, type: !72)
!424 = !DILocalVariable(name: "augment_rotate", arg: 3, scope: !420, file: !3, line: 86, type: !55)
!425 = !DILocalVariable(name: "parent", scope: !420, file: !3, line: 88, type: !14)
!426 = !DILocalVariable(name: "gparent", scope: !420, file: !3, line: 88, type: !14)
!427 = !DILocalVariable(name: "tmp", scope: !420, file: !3, line: 88, type: !14)
!428 = !DILocation(line: 85, column: 29, scope: !420)
!429 = !DILocation(line: 85, column: 51, scope: !420)
!430 = !DILocation(line: 86, column: 13, scope: !420)
!431 = !DILocation(line: 88, column: 2, scope: !420)
!432 = !DILocation(line: 88, column: 18, scope: !420)
!433 = !DILocation(line: 88, column: 41, scope: !420)
!434 = !DILocation(line: 88, column: 27, scope: !420)
!435 = !DILocation(line: 88, column: 49, scope: !420)
!436 = !DILocation(line: 88, column: 59, scope: !420)
!437 = !DILocation(line: 90, column: 2, scope: !420)
!438 = !DILocation(line: 94, column: 7, scope: !439)
!439 = distinct !DILexicalBlock(scope: !440, file: !3, line: 94, column: 7)
!440 = distinct !DILexicalBlock(scope: !420, file: !3, line: 90, column: 15)
!441 = !DILocation(line: 94, column: 7, scope: !440)
!442 = !DILocation(line: 100, column: 24, scope: !443)
!443 = distinct !DILexicalBlock(scope: !439, file: !3, line: 94, column: 26)
!444 = !DILocation(line: 100, column: 4, scope: !443)
!445 = !DILocation(line: 101, column: 4, scope: !443)
!446 = !DILocation(line: 110, column: 6, scope: !447)
!447 = distinct !DILexicalBlock(scope: !440, file: !3, line: 110, column: 6)
!448 = !DILocation(line: 110, column: 6, scope: !440)
!449 = !DILocation(line: 111, column: 4, scope: !447)
!450 = !DILocation(line: 113, column: 27, scope: !440)
!451 = !DILocation(line: 113, column: 13, scope: !440)
!452 = !DILocation(line: 113, column: 11, scope: !440)
!453 = !DILocation(line: 115, column: 9, scope: !440)
!454 = !DILocation(line: 115, column: 18, scope: !440)
!455 = !DILocation(line: 115, column: 7, scope: !440)
!456 = !DILocation(line: 116, column: 7, scope: !457)
!457 = distinct !DILexicalBlock(scope: !440, file: !3, line: 116, column: 7)
!458 = !DILocation(line: 116, column: 17, scope: !457)
!459 = !DILocation(line: 116, column: 14, scope: !457)
!460 = !DILocation(line: 116, column: 7, scope: !440)
!461 = !DILocation(line: 117, column: 8, scope: !462)
!462 = distinct !DILexicalBlock(scope: !463, file: !3, line: 117, column: 8)
!463 = distinct !DILexicalBlock(scope: !457, file: !3, line: 116, column: 22)
!464 = !DILocation(line: 117, column: 12, scope: !462)
!465 = !DILocation(line: 117, column: 15, scope: !462)
!466 = !DILocation(line: 117, column: 8, scope: !463)
!467 = !DILocation(line: 131, column: 25, scope: !468)
!468 = distinct !DILexicalBlock(scope: !462, file: !3, line: 117, column: 31)
!469 = !DILocation(line: 131, column: 30, scope: !468)
!470 = !DILocation(line: 131, column: 5, scope: !468)
!471 = !DILocation(line: 132, column: 25, scope: !468)
!472 = !DILocation(line: 132, column: 33, scope: !468)
!473 = !DILocation(line: 132, column: 5, scope: !468)
!474 = !DILocation(line: 133, column: 12, scope: !468)
!475 = !DILocation(line: 133, column: 10, scope: !468)
!476 = !DILocation(line: 134, column: 14, scope: !468)
!477 = !DILocation(line: 134, column: 12, scope: !468)
!478 = !DILocation(line: 135, column: 25, scope: !468)
!479 = !DILocation(line: 135, column: 31, scope: !468)
!480 = !DILocation(line: 135, column: 5, scope: !468)
!481 = !DILocation(line: 136, column: 5, scope: !468)
!482 = distinct !{!482, !437, !483, !187}
!483 = !DILocation(line: 219, column: 2, scope: !420)
!484 = !DILocation(line: 139, column: 10, scope: !463)
!485 = !DILocation(line: 139, column: 18, scope: !463)
!486 = !DILocation(line: 139, column: 8, scope: !463)
!487 = !DILocation(line: 140, column: 8, scope: !488)
!488 = distinct !DILexicalBlock(scope: !463, file: !3, line: 140, column: 8)
!489 = !DILocation(line: 140, column: 16, scope: !488)
!490 = !DILocation(line: 140, column: 13, scope: !488)
!491 = !DILocation(line: 140, column: 8, scope: !463)
!492 = !DILocation(line: 154, column: 11, scope: !493)
!493 = distinct !DILexicalBlock(scope: !488, file: !3, line: 140, column: 21)
!494 = !DILocation(line: 154, column: 17, scope: !493)
!495 = !DILocation(line: 154, column: 9, scope: !493)
!496 = !DILocation(line: 155, column: 5, scope: !493)
!497 = !DILocation(line: 155, column: 5, scope: !498)
!498 = distinct !DILexicalBlock(scope: !493, file: !3, line: 155, column: 5)
!499 = !DILocation(line: 155, column: 5, scope: !500)
!500 = distinct !DILexicalBlock(scope: !498, file: !3, line: 155, column: 5)
!501 = !DILocation(line: 155, column: 5, scope: !502)
!502 = distinct !DILexicalBlock(scope: !498, file: !3, line: 155, column: 5)
!503 = !DILocation(line: 156, column: 5, scope: !493)
!504 = !DILocation(line: 156, column: 5, scope: !505)
!505 = distinct !DILexicalBlock(scope: !493, file: !3, line: 156, column: 5)
!506 = !DILocation(line: 156, column: 5, scope: !507)
!507 = distinct !DILexicalBlock(scope: !505, file: !3, line: 156, column: 5)
!508 = !DILocation(line: 156, column: 5, scope: !509)
!509 = distinct !DILexicalBlock(scope: !505, file: !3, line: 156, column: 5)
!510 = !DILocation(line: 157, column: 9, scope: !511)
!511 = distinct !DILexicalBlock(scope: !493, file: !3, line: 157, column: 9)
!512 = !DILocation(line: 157, column: 9, scope: !493)
!513 = !DILocation(line: 158, column: 26, scope: !511)
!514 = !DILocation(line: 158, column: 31, scope: !511)
!515 = !DILocation(line: 158, column: 6, scope: !511)
!516 = !DILocation(line: 160, column: 25, scope: !493)
!517 = !DILocation(line: 160, column: 33, scope: !493)
!518 = !DILocation(line: 160, column: 5, scope: !493)
!519 = !DILocation(line: 161, column: 5, scope: !493)
!520 = !DILocation(line: 161, column: 20, scope: !493)
!521 = !DILocation(line: 161, column: 28, scope: !493)
!522 = !DILocation(line: 162, column: 14, scope: !493)
!523 = !DILocation(line: 162, column: 12, scope: !493)
!524 = !DILocation(line: 163, column: 11, scope: !493)
!525 = !DILocation(line: 163, column: 17, scope: !493)
!526 = !DILocation(line: 163, column: 9, scope: !493)
!527 = !DILocation(line: 164, column: 4, scope: !493)
!528 = !DILocation(line: 176, column: 4, scope: !463)
!529 = !DILocation(line: 176, column: 4, scope: !530)
!530 = distinct !DILexicalBlock(scope: !463, file: !3, line: 176, column: 4)
!531 = !DILocation(line: 176, column: 4, scope: !532)
!532 = distinct !DILexicalBlock(scope: !530, file: !3, line: 176, column: 4)
!533 = !DILocation(line: 176, column: 4, scope: !534)
!534 = distinct !DILexicalBlock(scope: !530, file: !3, line: 176, column: 4)
!535 = !DILocation(line: 177, column: 4, scope: !463)
!536 = !DILocation(line: 177, column: 4, scope: !537)
!537 = distinct !DILexicalBlock(scope: !463, file: !3, line: 177, column: 4)
!538 = !DILocation(line: 177, column: 4, scope: !539)
!539 = distinct !DILexicalBlock(scope: !537, file: !3, line: 177, column: 4)
!540 = !DILocation(line: 177, column: 4, scope: !541)
!541 = distinct !DILexicalBlock(scope: !537, file: !3, line: 177, column: 4)
!542 = !DILocation(line: 178, column: 8, scope: !543)
!543 = distinct !DILexicalBlock(scope: !463, file: !3, line: 178, column: 8)
!544 = !DILocation(line: 178, column: 8, scope: !463)
!545 = !DILocation(line: 179, column: 25, scope: !543)
!546 = !DILocation(line: 179, column: 30, scope: !543)
!547 = !DILocation(line: 179, column: 5, scope: !543)
!548 = !DILocation(line: 180, column: 28, scope: !463)
!549 = !DILocation(line: 180, column: 37, scope: !463)
!550 = !DILocation(line: 180, column: 45, scope: !463)
!551 = !DILocation(line: 180, column: 4, scope: !463)
!552 = !DILocation(line: 181, column: 4, scope: !463)
!553 = !DILocation(line: 181, column: 19, scope: !463)
!554 = !DILocation(line: 181, column: 28, scope: !463)
!555 = !DILocation(line: 182, column: 4, scope: !463)
!556 = !DILocation(line: 184, column: 10, scope: !557)
!557 = distinct !DILexicalBlock(scope: !457, file: !3, line: 183, column: 10)
!558 = !DILocation(line: 184, column: 19, scope: !557)
!559 = !DILocation(line: 184, column: 8, scope: !557)
!560 = !DILocation(line: 185, column: 8, scope: !561)
!561 = distinct !DILexicalBlock(scope: !557, file: !3, line: 185, column: 8)
!562 = !DILocation(line: 185, column: 12, scope: !561)
!563 = !DILocation(line: 185, column: 15, scope: !561)
!564 = !DILocation(line: 185, column: 8, scope: !557)
!565 = !DILocation(line: 187, column: 25, scope: !566)
!566 = distinct !DILexicalBlock(scope: !561, file: !3, line: 185, column: 31)
!567 = !DILocation(line: 187, column: 30, scope: !566)
!568 = !DILocation(line: 187, column: 5, scope: !566)
!569 = !DILocation(line: 188, column: 25, scope: !566)
!570 = !DILocation(line: 188, column: 33, scope: !566)
!571 = !DILocation(line: 188, column: 5, scope: !566)
!572 = !DILocation(line: 189, column: 12, scope: !566)
!573 = !DILocation(line: 189, column: 10, scope: !566)
!574 = !DILocation(line: 190, column: 14, scope: !566)
!575 = !DILocation(line: 190, column: 12, scope: !566)
!576 = !DILocation(line: 191, column: 25, scope: !566)
!577 = !DILocation(line: 191, column: 31, scope: !566)
!578 = !DILocation(line: 191, column: 5, scope: !566)
!579 = !DILocation(line: 192, column: 5, scope: !566)
!580 = !DILocation(line: 195, column: 10, scope: !557)
!581 = !DILocation(line: 195, column: 18, scope: !557)
!582 = !DILocation(line: 195, column: 8, scope: !557)
!583 = !DILocation(line: 196, column: 8, scope: !584)
!584 = distinct !DILexicalBlock(scope: !557, file: !3, line: 196, column: 8)
!585 = !DILocation(line: 196, column: 16, scope: !584)
!586 = !DILocation(line: 196, column: 13, scope: !584)
!587 = !DILocation(line: 196, column: 8, scope: !557)
!588 = !DILocation(line: 198, column: 11, scope: !589)
!589 = distinct !DILexicalBlock(scope: !584, file: !3, line: 196, column: 21)
!590 = !DILocation(line: 198, column: 17, scope: !589)
!591 = !DILocation(line: 198, column: 9, scope: !589)
!592 = !DILocation(line: 199, column: 5, scope: !589)
!593 = !DILocation(line: 199, column: 5, scope: !594)
!594 = distinct !DILexicalBlock(scope: !589, file: !3, line: 199, column: 5)
!595 = !DILocation(line: 199, column: 5, scope: !596)
!596 = distinct !DILexicalBlock(scope: !594, file: !3, line: 199, column: 5)
!597 = !DILocation(line: 199, column: 5, scope: !598)
!598 = distinct !DILexicalBlock(scope: !594, file: !3, line: 199, column: 5)
!599 = !DILocation(line: 200, column: 5, scope: !589)
!600 = !DILocation(line: 200, column: 5, scope: !601)
!601 = distinct !DILexicalBlock(scope: !589, file: !3, line: 200, column: 5)
!602 = !DILocation(line: 200, column: 5, scope: !603)
!603 = distinct !DILexicalBlock(scope: !601, file: !3, line: 200, column: 5)
!604 = !DILocation(line: 200, column: 5, scope: !605)
!605 = distinct !DILexicalBlock(scope: !601, file: !3, line: 200, column: 5)
!606 = !DILocation(line: 201, column: 9, scope: !607)
!607 = distinct !DILexicalBlock(scope: !589, file: !3, line: 201, column: 9)
!608 = !DILocation(line: 201, column: 9, scope: !589)
!609 = !DILocation(line: 202, column: 26, scope: !607)
!610 = !DILocation(line: 202, column: 31, scope: !607)
!611 = !DILocation(line: 202, column: 6, scope: !607)
!612 = !DILocation(line: 204, column: 25, scope: !589)
!613 = !DILocation(line: 204, column: 33, scope: !589)
!614 = !DILocation(line: 204, column: 5, scope: !589)
!615 = !DILocation(line: 205, column: 5, scope: !589)
!616 = !DILocation(line: 205, column: 20, scope: !589)
!617 = !DILocation(line: 205, column: 28, scope: !589)
!618 = !DILocation(line: 206, column: 14, scope: !589)
!619 = !DILocation(line: 206, column: 12, scope: !589)
!620 = !DILocation(line: 207, column: 11, scope: !589)
!621 = !DILocation(line: 207, column: 17, scope: !589)
!622 = !DILocation(line: 207, column: 9, scope: !589)
!623 = !DILocation(line: 208, column: 4, scope: !589)
!624 = !DILocation(line: 211, column: 4, scope: !557)
!625 = !DILocation(line: 211, column: 4, scope: !626)
!626 = distinct !DILexicalBlock(scope: !557, file: !3, line: 211, column: 4)
!627 = !DILocation(line: 211, column: 4, scope: !628)
!628 = distinct !DILexicalBlock(scope: !626, file: !3, line: 211, column: 4)
!629 = !DILocation(line: 211, column: 4, scope: !630)
!630 = distinct !DILexicalBlock(scope: !626, file: !3, line: 211, column: 4)
!631 = !DILocation(line: 212, column: 4, scope: !557)
!632 = !DILocation(line: 212, column: 4, scope: !633)
!633 = distinct !DILexicalBlock(scope: !557, file: !3, line: 212, column: 4)
!634 = !DILocation(line: 212, column: 4, scope: !635)
!635 = distinct !DILexicalBlock(scope: !633, file: !3, line: 212, column: 4)
!636 = !DILocation(line: 212, column: 4, scope: !637)
!637 = distinct !DILexicalBlock(scope: !633, file: !3, line: 212, column: 4)
!638 = !DILocation(line: 213, column: 8, scope: !639)
!639 = distinct !DILexicalBlock(scope: !557, file: !3, line: 213, column: 8)
!640 = !DILocation(line: 213, column: 8, scope: !557)
!641 = !DILocation(line: 214, column: 25, scope: !639)
!642 = !DILocation(line: 214, column: 30, scope: !639)
!643 = !DILocation(line: 214, column: 5, scope: !639)
!644 = !DILocation(line: 215, column: 28, scope: !557)
!645 = !DILocation(line: 215, column: 37, scope: !557)
!646 = !DILocation(line: 215, column: 45, scope: !557)
!647 = !DILocation(line: 215, column: 4, scope: !557)
!648 = !DILocation(line: 216, column: 4, scope: !557)
!649 = !DILocation(line: 216, column: 19, scope: !557)
!650 = !DILocation(line: 216, column: 28, scope: !557)
!651 = !DILocation(line: 217, column: 4, scope: !557)
!652 = !DILocation(line: 220, column: 1, scope: !420)
!653 = distinct !DISubprogram(name: "dummy_rotate", scope: !3, file: !3, line: 426, type: !56, scopeLine: 426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !654)
!654 = !{!655, !656}
!655 = !DILocalVariable(name: "old", arg: 1, scope: !653, file: !3, line: 426, type: !14)
!656 = !DILocalVariable(name: "new", arg: 2, scope: !653, file: !3, line: 426, type: !14)
!657 = !DILocation(line: 426, column: 49, scope: !653)
!658 = !DILocation(line: 426, column: 70, scope: !653)
!659 = !DILocation(line: 426, column: 76, scope: !653)
!660 = distinct !DISubprogram(name: "rb_erase", scope: !3, file: !3, line: 440, type: !409, scopeLine: 441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !661)
!661 = !{!662, !663, !664}
!662 = !DILocalVariable(name: "node", arg: 1, scope: !660, file: !3, line: 440, type: !14)
!663 = !DILocalVariable(name: "root", arg: 2, scope: !660, file: !3, line: 440, type: !72)
!664 = !DILocalVariable(name: "rebalance", scope: !660, file: !3, line: 442, type: !14)
!665 = !DILocation(line: 440, column: 31, scope: !660)
!666 = !DILocation(line: 440, column: 53, scope: !660)
!667 = !DILocation(line: 442, column: 2, scope: !660)
!668 = !DILocation(line: 442, column: 18, scope: !660)
!669 = !DILocation(line: 443, column: 35, scope: !660)
!670 = !DILocation(line: 443, column: 41, scope: !660)
!671 = !DILocation(line: 443, column: 14, scope: !660)
!672 = !DILocation(line: 443, column: 12, scope: !660)
!673 = !DILocation(line: 444, column: 6, scope: !674)
!674 = distinct !DILexicalBlock(scope: !660, file: !3, line: 444, column: 6)
!675 = !DILocation(line: 444, column: 6, scope: !660)
!676 = !DILocation(line: 445, column: 22, scope: !674)
!677 = !DILocation(line: 445, column: 33, scope: !674)
!678 = !DILocation(line: 445, column: 3, scope: !674)
!679 = !DILocation(line: 446, column: 1, scope: !660)
!680 = distinct !DISubprogram(name: "__rb_erase_augmented", scope: !52, file: !52, line: 224, type: !681, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !684)
!681 = !DISubroutineType(types: !682)
!682 = !{!14, !14, !72, !683}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!684 = !{!685, !686, !687, !688, !689, !690, !691, !692, !693, !697}
!685 = !DILocalVariable(name: "node", arg: 1, scope: !680, file: !52, line: 224, type: !14)
!686 = !DILocalVariable(name: "root", arg: 2, scope: !680, file: !52, line: 224, type: !72)
!687 = !DILocalVariable(name: "augment", arg: 3, scope: !680, file: !52, line: 225, type: !683)
!688 = !DILocalVariable(name: "child", scope: !680, file: !52, line: 227, type: !14)
!689 = !DILocalVariable(name: "tmp", scope: !680, file: !52, line: 228, type: !14)
!690 = !DILocalVariable(name: "parent", scope: !680, file: !52, line: 229, type: !14)
!691 = !DILocalVariable(name: "rebalance", scope: !680, file: !52, line: 229, type: !14)
!692 = !DILocalVariable(name: "pc", scope: !680, file: !52, line: 230, type: !13)
!693 = !DILocalVariable(name: "successor", scope: !694, file: !52, line: 257, type: !14)
!694 = distinct !DILexicalBlock(scope: !695, file: !52, line: 256, column: 9)
!695 = distinct !DILexicalBlock(scope: !696, file: !52, line: 249, column: 13)
!696 = distinct !DILexicalBlock(scope: !680, file: !52, line: 232, column: 6)
!697 = !DILocalVariable(name: "child2", scope: !694, file: !52, line: 257, type: !14)
!698 = !DILocation(line: 224, column: 38, scope: !680)
!699 = !DILocation(line: 224, column: 60, scope: !680)
!700 = !DILocation(line: 225, column: 43, scope: !680)
!701 = !DILocation(line: 227, column: 2, scope: !680)
!702 = !DILocation(line: 227, column: 18, scope: !680)
!703 = !DILocation(line: 227, column: 26, scope: !680)
!704 = !DILocation(line: 227, column: 32, scope: !680)
!705 = !DILocation(line: 228, column: 2, scope: !680)
!706 = !DILocation(line: 228, column: 18, scope: !680)
!707 = !DILocation(line: 228, column: 24, scope: !680)
!708 = !DILocation(line: 228, column: 30, scope: !680)
!709 = !DILocation(line: 229, column: 2, scope: !680)
!710 = !DILocation(line: 229, column: 18, scope: !680)
!711 = !DILocation(line: 229, column: 27, scope: !680)
!712 = !DILocation(line: 230, column: 2, scope: !680)
!713 = !DILocation(line: 230, column: 16, scope: !680)
!714 = !DILocation(line: 232, column: 7, scope: !696)
!715 = !DILocation(line: 232, column: 6, scope: !680)
!716 = !DILocation(line: 240, column: 8, scope: !717)
!717 = distinct !DILexicalBlock(scope: !696, file: !52, line: 232, column: 12)
!718 = !DILocation(line: 240, column: 14, scope: !717)
!719 = !DILocation(line: 240, column: 6, scope: !717)
!720 = !DILocation(line: 241, column: 12, scope: !717)
!721 = !DILocation(line: 241, column: 10, scope: !717)
!722 = !DILocation(line: 242, column: 21, scope: !717)
!723 = !DILocation(line: 242, column: 27, scope: !717)
!724 = !DILocation(line: 242, column: 34, scope: !717)
!725 = !DILocation(line: 242, column: 42, scope: !717)
!726 = !DILocation(line: 242, column: 3, scope: !717)
!727 = !DILocation(line: 243, column: 7, scope: !728)
!728 = distinct !DILexicalBlock(scope: !717, file: !52, line: 243, column: 7)
!729 = !DILocation(line: 243, column: 7, scope: !717)
!730 = !DILocation(line: 244, column: 31, scope: !731)
!731 = distinct !DILexicalBlock(scope: !728, file: !52, line: 243, column: 14)
!732 = !DILocation(line: 244, column: 4, scope: !731)
!733 = !DILocation(line: 244, column: 11, scope: !731)
!734 = !DILocation(line: 244, column: 29, scope: !731)
!735 = !DILocation(line: 245, column: 14, scope: !731)
!736 = !DILocation(line: 246, column: 3, scope: !731)
!737 = !DILocation(line: 247, column: 16, scope: !728)
!738 = !DILocation(line: 247, column: 36, scope: !728)
!739 = !DILocation(line: 247, column: 14, scope: !728)
!740 = !DILocation(line: 248, column: 9, scope: !717)
!741 = !DILocation(line: 248, column: 7, scope: !717)
!742 = !DILocation(line: 249, column: 2, scope: !717)
!743 = !DILocation(line: 249, column: 14, scope: !695)
!744 = !DILocation(line: 249, column: 13, scope: !696)
!745 = !DILocation(line: 251, column: 33, scope: !746)
!746 = distinct !DILexicalBlock(scope: !695, file: !52, line: 249, column: 21)
!747 = !DILocation(line: 251, column: 39, scope: !746)
!748 = !DILocation(line: 251, column: 31, scope: !746)
!749 = !DILocation(line: 251, column: 3, scope: !746)
!750 = !DILocation(line: 251, column: 8, scope: !746)
!751 = !DILocation(line: 251, column: 26, scope: !746)
!752 = !DILocation(line: 252, column: 12, scope: !746)
!753 = !DILocation(line: 252, column: 10, scope: !746)
!754 = !DILocation(line: 253, column: 21, scope: !746)
!755 = !DILocation(line: 253, column: 27, scope: !746)
!756 = !DILocation(line: 253, column: 32, scope: !746)
!757 = !DILocation(line: 253, column: 40, scope: !746)
!758 = !DILocation(line: 253, column: 3, scope: !746)
!759 = !DILocation(line: 254, column: 13, scope: !746)
!760 = !DILocation(line: 255, column: 9, scope: !746)
!761 = !DILocation(line: 255, column: 7, scope: !746)
!762 = !DILocation(line: 256, column: 2, scope: !746)
!763 = !DILocation(line: 257, column: 3, scope: !694)
!764 = !DILocation(line: 257, column: 19, scope: !694)
!765 = !DILocation(line: 257, column: 31, scope: !694)
!766 = !DILocation(line: 257, column: 39, scope: !694)
!767 = !DILocation(line: 259, column: 9, scope: !694)
!768 = !DILocation(line: 259, column: 16, scope: !694)
!769 = !DILocation(line: 259, column: 7, scope: !694)
!770 = !DILocation(line: 260, column: 8, scope: !771)
!771 = distinct !DILexicalBlock(scope: !694, file: !52, line: 260, column: 7)
!772 = !DILocation(line: 260, column: 7, scope: !694)
!773 = !DILocation(line: 270, column: 13, scope: !774)
!774 = distinct !DILexicalBlock(scope: !771, file: !52, line: 260, column: 13)
!775 = !DILocation(line: 270, column: 11, scope: !774)
!776 = !DILocation(line: 271, column: 13, scope: !774)
!777 = !DILocation(line: 271, column: 24, scope: !774)
!778 = !DILocation(line: 271, column: 11, scope: !774)
!779 = !DILocation(line: 273, column: 4, scope: !774)
!780 = !DILocation(line: 273, column: 13, scope: !774)
!781 = !DILocation(line: 273, column: 18, scope: !774)
!782 = !DILocation(line: 273, column: 24, scope: !774)
!783 = !DILocation(line: 274, column: 3, scope: !774)
!784 = !DILocation(line: 289, column: 4, scope: !785)
!785 = distinct !DILexicalBlock(scope: !771, file: !52, line: 274, column: 10)
!786 = !DILocation(line: 290, column: 14, scope: !787)
!787 = distinct !DILexicalBlock(scope: !785, file: !52, line: 289, column: 7)
!788 = !DILocation(line: 290, column: 12, scope: !787)
!789 = !DILocation(line: 291, column: 17, scope: !787)
!790 = !DILocation(line: 291, column: 15, scope: !787)
!791 = !DILocation(line: 292, column: 11, scope: !787)
!792 = !DILocation(line: 292, column: 16, scope: !787)
!793 = !DILocation(line: 292, column: 9, scope: !787)
!794 = !DILocation(line: 293, column: 4, scope: !787)
!795 = !DILocation(line: 293, column: 13, scope: !785)
!796 = distinct !{!796, !784, !797, !798, !187}
!797 = !DILocation(line: 293, column: 16, scope: !785)
!798 = !{!"llvm.loop.mustprogress"}
!799 = !DILocation(line: 294, column: 13, scope: !785)
!800 = !DILocation(line: 294, column: 24, scope: !785)
!801 = !DILocation(line: 294, column: 11, scope: !785)
!802 = !DILocation(line: 295, column: 4, scope: !785)
!803 = !DILocation(line: 295, column: 4, scope: !804)
!804 = distinct !DILexicalBlock(scope: !785, file: !52, line: 295, column: 4)
!805 = !DILocation(line: 295, column: 4, scope: !806)
!806 = distinct !DILexicalBlock(scope: !804, file: !52, line: 295, column: 4)
!807 = !DILocation(line: 295, column: 4, scope: !808)
!808 = distinct !DILexicalBlock(scope: !804, file: !52, line: 295, column: 4)
!809 = !DILocation(line: 296, column: 4, scope: !785)
!810 = !DILocation(line: 296, column: 4, scope: !811)
!811 = distinct !DILexicalBlock(scope: !785, file: !52, line: 296, column: 4)
!812 = !DILocation(line: 296, column: 4, scope: !813)
!813 = distinct !DILexicalBlock(scope: !811, file: !52, line: 296, column: 4)
!814 = !DILocation(line: 296, column: 4, scope: !815)
!815 = distinct !DILexicalBlock(scope: !811, file: !52, line: 296, column: 4)
!816 = !DILocation(line: 297, column: 18, scope: !785)
!817 = !DILocation(line: 297, column: 25, scope: !785)
!818 = !DILocation(line: 297, column: 4, scope: !785)
!819 = !DILocation(line: 299, column: 4, scope: !785)
!820 = !DILocation(line: 299, column: 13, scope: !785)
!821 = !DILocation(line: 299, column: 18, scope: !785)
!822 = !DILocation(line: 299, column: 24, scope: !785)
!823 = !DILocation(line: 300, column: 4, scope: !785)
!824 = !DILocation(line: 300, column: 13, scope: !785)
!825 = !DILocation(line: 300, column: 23, scope: !785)
!826 = !DILocation(line: 300, column: 31, scope: !785)
!827 = !DILocation(line: 303, column: 9, scope: !694)
!828 = !DILocation(line: 303, column: 15, scope: !694)
!829 = !DILocation(line: 303, column: 7, scope: !694)
!830 = !DILocation(line: 304, column: 3, scope: !694)
!831 = !DILocation(line: 304, column: 3, scope: !832)
!832 = distinct !DILexicalBlock(scope: !694, file: !52, line: 304, column: 3)
!833 = !DILocation(line: 304, column: 3, scope: !834)
!834 = distinct !DILexicalBlock(scope: !832, file: !52, line: 304, column: 3)
!835 = !DILocation(line: 304, column: 3, scope: !836)
!836 = distinct !DILexicalBlock(scope: !832, file: !52, line: 304, column: 3)
!837 = !DILocation(line: 305, column: 17, scope: !694)
!838 = !DILocation(line: 305, column: 22, scope: !694)
!839 = !DILocation(line: 305, column: 3, scope: !694)
!840 = !DILocation(line: 307, column: 8, scope: !694)
!841 = !DILocation(line: 307, column: 14, scope: !694)
!842 = !DILocation(line: 307, column: 6, scope: !694)
!843 = !DILocation(line: 308, column: 9, scope: !694)
!844 = !DILocation(line: 308, column: 7, scope: !694)
!845 = !DILocation(line: 309, column: 21, scope: !694)
!846 = !DILocation(line: 309, column: 27, scope: !694)
!847 = !DILocation(line: 309, column: 38, scope: !694)
!848 = !DILocation(line: 309, column: 43, scope: !694)
!849 = !DILocation(line: 309, column: 3, scope: !694)
!850 = !DILocation(line: 311, column: 7, scope: !851)
!851 = distinct !DILexicalBlock(scope: !694, file: !52, line: 311, column: 7)
!852 = !DILocation(line: 311, column: 7, scope: !694)
!853 = !DILocation(line: 312, column: 24, scope: !854)
!854 = distinct !DILexicalBlock(scope: !851, file: !52, line: 311, column: 15)
!855 = !DILocation(line: 312, column: 32, scope: !854)
!856 = !DILocation(line: 312, column: 4, scope: !854)
!857 = !DILocation(line: 313, column: 14, scope: !854)
!858 = !DILocation(line: 314, column: 3, scope: !854)
!859 = !DILocation(line: 315, column: 16, scope: !860)
!860 = distinct !DILexicalBlock(scope: !851, file: !52, line: 314, column: 10)
!861 = !DILocation(line: 315, column: 41, scope: !860)
!862 = !DILocation(line: 315, column: 14, scope: !860)
!863 = !DILocation(line: 317, column: 34, scope: !694)
!864 = !DILocation(line: 317, column: 3, scope: !694)
!865 = !DILocation(line: 317, column: 14, scope: !694)
!866 = !DILocation(line: 317, column: 32, scope: !694)
!867 = !DILocation(line: 318, column: 9, scope: !694)
!868 = !DILocation(line: 318, column: 7, scope: !694)
!869 = !DILocation(line: 319, column: 2, scope: !695)
!870 = !DILocation(line: 321, column: 2, scope: !680)
!871 = !DILocation(line: 321, column: 11, scope: !680)
!872 = !DILocation(line: 321, column: 21, scope: !680)
!873 = !DILocation(line: 322, column: 9, scope: !680)
!874 = !DILocation(line: 323, column: 1, scope: !680)
!875 = !DILocation(line: 322, column: 2, scope: !680)
!876 = distinct !DISubprogram(name: "__rb_insert_augmented", scope: !3, file: !3, line: 456, type: !70, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !877)
!877 = !{!878, !879, !880}
!878 = !DILocalVariable(name: "node", arg: 1, scope: !876, file: !3, line: 456, type: !14)
!879 = !DILocalVariable(name: "root", arg: 2, scope: !876, file: !3, line: 456, type: !72)
!880 = !DILocalVariable(name: "augment_rotate", arg: 3, scope: !876, file: !3, line: 457, type: !55)
!881 = !DILocation(line: 456, column: 44, scope: !876)
!882 = !DILocation(line: 456, column: 66, scope: !876)
!883 = !DILocation(line: 457, column: 9, scope: !876)
!884 = !DILocation(line: 459, column: 14, scope: !876)
!885 = !DILocation(line: 459, column: 20, scope: !876)
!886 = !DILocation(line: 459, column: 26, scope: !876)
!887 = !DILocation(line: 459, column: 2, scope: !876)
!888 = !DILocation(line: 460, column: 1, scope: !876)
!889 = distinct !DISubprogram(name: "rb_first", scope: !3, file: !3, line: 466, type: !890, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !894)
!890 = !DISubroutineType(types: !891)
!891 = !{!14, !892}
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!894 = !{!895, !896}
!895 = !DILocalVariable(name: "root", arg: 1, scope: !889, file: !3, line: 466, type: !892)
!896 = !DILocalVariable(name: "n", scope: !889, file: !3, line: 468, type: !14)
!897 = !DILocation(line: 466, column: 48, scope: !889)
!898 = !DILocation(line: 468, column: 2, scope: !889)
!899 = !DILocation(line: 468, column: 18, scope: !889)
!900 = !DILocation(line: 470, column: 6, scope: !889)
!901 = !DILocation(line: 470, column: 12, scope: !889)
!902 = !DILocation(line: 470, column: 4, scope: !889)
!903 = !DILocation(line: 471, column: 7, scope: !904)
!904 = distinct !DILexicalBlock(scope: !889, file: !3, line: 471, column: 6)
!905 = !DILocation(line: 471, column: 6, scope: !889)
!906 = !DILocation(line: 472, column: 3, scope: !904)
!907 = !DILocation(line: 473, column: 2, scope: !889)
!908 = !DILocation(line: 473, column: 9, scope: !889)
!909 = !DILocation(line: 473, column: 12, scope: !889)
!910 = !DILocation(line: 474, column: 7, scope: !889)
!911 = !DILocation(line: 474, column: 10, scope: !889)
!912 = !DILocation(line: 474, column: 5, scope: !889)
!913 = distinct !{!913, !907, !911, !798, !187}
!914 = !DILocation(line: 475, column: 9, scope: !889)
!915 = !DILocation(line: 475, column: 2, scope: !889)
!916 = !DILocation(line: 476, column: 1, scope: !889)
!917 = distinct !DISubprogram(name: "rb_last", scope: !3, file: !3, line: 479, type: !890, scopeLine: 480, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !918)
!918 = !{!919, !920}
!919 = !DILocalVariable(name: "root", arg: 1, scope: !917, file: !3, line: 479, type: !892)
!920 = !DILocalVariable(name: "n", scope: !917, file: !3, line: 481, type: !14)
!921 = !DILocation(line: 479, column: 47, scope: !917)
!922 = !DILocation(line: 481, column: 2, scope: !917)
!923 = !DILocation(line: 481, column: 18, scope: !917)
!924 = !DILocation(line: 483, column: 6, scope: !917)
!925 = !DILocation(line: 483, column: 12, scope: !917)
!926 = !DILocation(line: 483, column: 4, scope: !917)
!927 = !DILocation(line: 484, column: 7, scope: !928)
!928 = distinct !DILexicalBlock(scope: !917, file: !3, line: 484, column: 6)
!929 = !DILocation(line: 484, column: 6, scope: !917)
!930 = !DILocation(line: 485, column: 3, scope: !928)
!931 = !DILocation(line: 486, column: 2, scope: !917)
!932 = !DILocation(line: 486, column: 9, scope: !917)
!933 = !DILocation(line: 486, column: 12, scope: !917)
!934 = !DILocation(line: 487, column: 7, scope: !917)
!935 = !DILocation(line: 487, column: 10, scope: !917)
!936 = !DILocation(line: 487, column: 5, scope: !917)
!937 = distinct !{!937, !931, !935, !798, !187}
!938 = !DILocation(line: 488, column: 9, scope: !917)
!939 = !DILocation(line: 488, column: 2, scope: !917)
!940 = !DILocation(line: 489, column: 1, scope: !917)
!941 = distinct !DISubprogram(name: "rb_next", scope: !3, file: !3, line: 492, type: !942, scopeLine: 493, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !946)
!942 = !DISubroutineType(types: !943)
!943 = !{!14, !944}
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!946 = !{!947, !948}
!947 = !DILocalVariable(name: "node", arg: 1, scope: !941, file: !3, line: 492, type: !944)
!948 = !DILocalVariable(name: "parent", scope: !941, file: !3, line: 494, type: !14)
!949 = !DILocation(line: 492, column: 47, scope: !941)
!950 = !DILocation(line: 494, column: 2, scope: !941)
!951 = !DILocation(line: 494, column: 18, scope: !941)
!952 = !DILocation(line: 496, column: 6, scope: !953)
!953 = distinct !DILexicalBlock(scope: !941, file: !3, line: 496, column: 6)
!954 = !DILocation(line: 496, column: 6, scope: !941)
!955 = !DILocation(line: 497, column: 3, scope: !953)
!956 = !DILocation(line: 503, column: 6, scope: !957)
!957 = distinct !DILexicalBlock(scope: !941, file: !3, line: 503, column: 6)
!958 = !DILocation(line: 503, column: 12, scope: !957)
!959 = !DILocation(line: 503, column: 6, scope: !941)
!960 = !DILocation(line: 504, column: 10, scope: !961)
!961 = distinct !DILexicalBlock(scope: !957, file: !3, line: 503, column: 22)
!962 = !DILocation(line: 504, column: 16, scope: !961)
!963 = !DILocation(line: 504, column: 8, scope: !961)
!964 = !DILocation(line: 505, column: 3, scope: !961)
!965 = !DILocation(line: 505, column: 10, scope: !961)
!966 = !DILocation(line: 505, column: 16, scope: !961)
!967 = !DILocation(line: 506, column: 11, scope: !961)
!968 = !DILocation(line: 506, column: 17, scope: !961)
!969 = !DILocation(line: 506, column: 9, scope: !961)
!970 = distinct !{!970, !964, !968, !798, !187}
!971 = !DILocation(line: 507, column: 28, scope: !961)
!972 = !DILocation(line: 507, column: 3, scope: !961)
!973 = !DILocation(line: 517, column: 2, scope: !941)
!974 = !DILocation(line: 517, column: 19, scope: !941)
!975 = !DILocation(line: 517, column: 17, scope: !941)
!976 = !DILocation(line: 517, column: 36, scope: !941)
!977 = !DILocation(line: 517, column: 39, scope: !941)
!978 = !DILocation(line: 517, column: 47, scope: !941)
!979 = !DILocation(line: 517, column: 55, scope: !941)
!980 = !DILocation(line: 517, column: 44, scope: !941)
!981 = !DILocation(line: 0, scope: !941)
!982 = !DILocation(line: 518, column: 10, scope: !941)
!983 = !DILocation(line: 518, column: 8, scope: !941)
!984 = distinct !{!984, !973, !982, !798, !187}
!985 = !DILocation(line: 520, column: 9, scope: !941)
!986 = !DILocation(line: 520, column: 2, scope: !941)
!987 = !DILocation(line: 521, column: 1, scope: !941)
!988 = distinct !DISubprogram(name: "rb_prev", scope: !3, file: !3, line: 524, type: !942, scopeLine: 525, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !989)
!989 = !{!990, !991}
!990 = !DILocalVariable(name: "node", arg: 1, scope: !988, file: !3, line: 524, type: !944)
!991 = !DILocalVariable(name: "parent", scope: !988, file: !3, line: 526, type: !14)
!992 = !DILocation(line: 524, column: 47, scope: !988)
!993 = !DILocation(line: 526, column: 2, scope: !988)
!994 = !DILocation(line: 526, column: 18, scope: !988)
!995 = !DILocation(line: 528, column: 6, scope: !996)
!996 = distinct !DILexicalBlock(scope: !988, file: !3, line: 528, column: 6)
!997 = !DILocation(line: 528, column: 6, scope: !988)
!998 = !DILocation(line: 529, column: 3, scope: !996)
!999 = !DILocation(line: 535, column: 6, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !988, file: !3, line: 535, column: 6)
!1001 = !DILocation(line: 535, column: 12, scope: !1000)
!1002 = !DILocation(line: 535, column: 6, scope: !988)
!1003 = !DILocation(line: 536, column: 10, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 535, column: 21)
!1005 = !DILocation(line: 536, column: 16, scope: !1004)
!1006 = !DILocation(line: 536, column: 8, scope: !1004)
!1007 = !DILocation(line: 537, column: 3, scope: !1004)
!1008 = !DILocation(line: 537, column: 10, scope: !1004)
!1009 = !DILocation(line: 537, column: 16, scope: !1004)
!1010 = !DILocation(line: 538, column: 11, scope: !1004)
!1011 = !DILocation(line: 538, column: 17, scope: !1004)
!1012 = !DILocation(line: 538, column: 9, scope: !1004)
!1013 = distinct !{!1013, !1007, !1011, !798, !187}
!1014 = !DILocation(line: 539, column: 28, scope: !1004)
!1015 = !DILocation(line: 539, column: 3, scope: !1004)
!1016 = !DILocation(line: 546, column: 2, scope: !988)
!1017 = !DILocation(line: 546, column: 19, scope: !988)
!1018 = !DILocation(line: 546, column: 17, scope: !988)
!1019 = !DILocation(line: 546, column: 36, scope: !988)
!1020 = !DILocation(line: 546, column: 39, scope: !988)
!1021 = !DILocation(line: 546, column: 47, scope: !988)
!1022 = !DILocation(line: 546, column: 55, scope: !988)
!1023 = !DILocation(line: 546, column: 44, scope: !988)
!1024 = !DILocation(line: 0, scope: !988)
!1025 = !DILocation(line: 547, column: 10, scope: !988)
!1026 = !DILocation(line: 547, column: 8, scope: !988)
!1027 = distinct !{!1027, !1016, !1025, !798, !187}
!1028 = !DILocation(line: 549, column: 9, scope: !988)
!1029 = !DILocation(line: 549, column: 2, scope: !988)
!1030 = !DILocation(line: 550, column: 1, scope: !988)
!1031 = distinct !DISubprogram(name: "rb_replace_node", scope: !3, file: !3, line: 553, type: !1032, scopeLine: 555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1034)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{null, !14, !14, !72}
!1034 = !{!1035, !1036, !1037, !1038}
!1035 = !DILocalVariable(name: "victim", arg: 1, scope: !1031, file: !3, line: 553, type: !14)
!1036 = !DILocalVariable(name: "new", arg: 2, scope: !1031, file: !3, line: 553, type: !14)
!1037 = !DILocalVariable(name: "root", arg: 3, scope: !1031, file: !3, line: 554, type: !72)
!1038 = !DILocalVariable(name: "parent", scope: !1031, file: !3, line: 556, type: !14)
!1039 = !DILocation(line: 553, column: 38, scope: !1031)
!1040 = !DILocation(line: 553, column: 62, scope: !1031)
!1041 = !DILocation(line: 554, column: 24, scope: !1031)
!1042 = !DILocation(line: 556, column: 2, scope: !1031)
!1043 = !DILocation(line: 556, column: 18, scope: !1031)
!1044 = !DILocation(line: 556, column: 27, scope: !1031)
!1045 = !DILocation(line: 559, column: 3, scope: !1031)
!1046 = !DILocation(line: 559, column: 10, scope: !1031)
!1047 = !DILocation(line: 559, column: 9, scope: !1031)
!1048 = !DILocation(line: 562, column: 6, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 562, column: 6)
!1050 = !DILocation(line: 562, column: 14, scope: !1049)
!1051 = !DILocation(line: 562, column: 6, scope: !1031)
!1052 = !DILocation(line: 563, column: 17, scope: !1049)
!1053 = !DILocation(line: 563, column: 25, scope: !1049)
!1054 = !DILocation(line: 563, column: 34, scope: !1049)
!1055 = !DILocation(line: 563, column: 3, scope: !1049)
!1056 = !DILocation(line: 564, column: 6, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 564, column: 6)
!1058 = !DILocation(line: 564, column: 14, scope: !1057)
!1059 = !DILocation(line: 564, column: 6, scope: !1031)
!1060 = !DILocation(line: 565, column: 17, scope: !1057)
!1061 = !DILocation(line: 565, column: 25, scope: !1057)
!1062 = !DILocation(line: 565, column: 35, scope: !1057)
!1063 = !DILocation(line: 565, column: 3, scope: !1057)
!1064 = !DILocation(line: 566, column: 20, scope: !1031)
!1065 = !DILocation(line: 566, column: 28, scope: !1031)
!1066 = !DILocation(line: 566, column: 33, scope: !1031)
!1067 = !DILocation(line: 566, column: 41, scope: !1031)
!1068 = !DILocation(line: 566, column: 2, scope: !1031)
!1069 = !DILocation(line: 567, column: 1, scope: !1031)
!1070 = distinct !DISubprogram(name: "rb_set_parent", scope: !52, file: !52, line: 183, type: !56, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1071)
!1071 = !{!1072, !1073}
!1072 = !DILocalVariable(name: "rb", arg: 1, scope: !1070, file: !52, line: 183, type: !14)
!1073 = !DILocalVariable(name: "p", arg: 2, scope: !1070, file: !52, line: 183, type: !14)
!1074 = !DILocation(line: 183, column: 50, scope: !1070)
!1075 = !DILocation(line: 183, column: 70, scope: !1070)
!1076 = !DILocation(line: 185, column: 26, scope: !1070)
!1077 = !DILocation(line: 185, column: 56, scope: !1070)
!1078 = !DILocation(line: 185, column: 41, scope: !1070)
!1079 = !DILocation(line: 185, column: 39, scope: !1070)
!1080 = !DILocation(line: 185, column: 2, scope: !1070)
!1081 = !DILocation(line: 185, column: 6, scope: !1070)
!1082 = !DILocation(line: 185, column: 24, scope: !1070)
!1083 = !DILocation(line: 186, column: 1, scope: !1070)
!1084 = distinct !DISubprogram(name: "__rb_change_child", scope: !52, file: !52, line: 195, type: !1085, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1087)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !14, !14, !14, !72}
!1087 = !{!1088, !1089, !1090, !1091}
!1088 = !DILocalVariable(name: "old", arg: 1, scope: !1084, file: !52, line: 195, type: !14)
!1089 = !DILocalVariable(name: "new", arg: 2, scope: !1084, file: !52, line: 195, type: !14)
!1090 = !DILocalVariable(name: "parent", arg: 3, scope: !1084, file: !52, line: 196, type: !14)
!1091 = !DILocalVariable(name: "root", arg: 4, scope: !1084, file: !52, line: 196, type: !72)
!1092 = !DILocation(line: 195, column: 35, scope: !1084)
!1093 = !DILocation(line: 195, column: 56, scope: !1084)
!1094 = !DILocation(line: 196, column: 21, scope: !1084)
!1095 = !DILocation(line: 196, column: 45, scope: !1084)
!1096 = !DILocation(line: 198, column: 6, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1084, file: !52, line: 198, column: 6)
!1098 = !DILocation(line: 198, column: 6, scope: !1084)
!1099 = !DILocation(line: 199, column: 7, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !52, line: 199, column: 7)
!1101 = distinct !DILexicalBlock(scope: !1097, file: !52, line: 198, column: 14)
!1102 = !DILocation(line: 199, column: 15, scope: !1100)
!1103 = !DILocation(line: 199, column: 26, scope: !1100)
!1104 = !DILocation(line: 199, column: 23, scope: !1100)
!1105 = !DILocation(line: 199, column: 7, scope: !1101)
!1106 = !DILocation(line: 200, column: 4, scope: !1100)
!1107 = !DILocation(line: 200, column: 4, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1100, file: !52, line: 200, column: 4)
!1109 = !DILocation(line: 200, column: 4, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1108, file: !52, line: 200, column: 4)
!1111 = !DILocation(line: 200, column: 4, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1108, file: !52, line: 200, column: 4)
!1113 = !DILocation(line: 202, column: 4, scope: !1100)
!1114 = !DILocation(line: 202, column: 4, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1100, file: !52, line: 202, column: 4)
!1116 = !DILocation(line: 202, column: 4, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1115, file: !52, line: 202, column: 4)
!1118 = !DILocation(line: 202, column: 4, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1115, file: !52, line: 202, column: 4)
!1120 = !DILocation(line: 203, column: 2, scope: !1101)
!1121 = !DILocation(line: 204, column: 3, scope: !1097)
!1122 = !DILocation(line: 204, column: 3, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1097, file: !52, line: 204, column: 3)
!1124 = !DILocation(line: 204, column: 3, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1123, file: !52, line: 204, column: 3)
!1126 = !DILocation(line: 204, column: 3, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1123, file: !52, line: 204, column: 3)
!1128 = !DILocation(line: 205, column: 1, scope: !1084)
!1129 = distinct !DISubprogram(name: "rb_replace_node_rcu", scope: !3, file: !3, line: 570, type: !1032, scopeLine: 572, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1130)
!1130 = !{!1131, !1132, !1133, !1134}
!1131 = !DILocalVariable(name: "victim", arg: 1, scope: !1129, file: !3, line: 570, type: !14)
!1132 = !DILocalVariable(name: "new", arg: 2, scope: !1129, file: !3, line: 570, type: !14)
!1133 = !DILocalVariable(name: "root", arg: 3, scope: !1129, file: !3, line: 571, type: !72)
!1134 = !DILocalVariable(name: "parent", scope: !1129, file: !3, line: 573, type: !14)
!1135 = !DILocation(line: 570, column: 42, scope: !1129)
!1136 = !DILocation(line: 570, column: 66, scope: !1129)
!1137 = !DILocation(line: 571, column: 21, scope: !1129)
!1138 = !DILocation(line: 573, column: 2, scope: !1129)
!1139 = !DILocation(line: 573, column: 18, scope: !1129)
!1140 = !DILocation(line: 573, column: 27, scope: !1129)
!1141 = !DILocation(line: 576, column: 3, scope: !1129)
!1142 = !DILocation(line: 576, column: 10, scope: !1129)
!1143 = !DILocation(line: 576, column: 9, scope: !1129)
!1144 = !DILocation(line: 579, column: 6, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 579, column: 6)
!1146 = !DILocation(line: 579, column: 14, scope: !1145)
!1147 = !DILocation(line: 579, column: 6, scope: !1129)
!1148 = !DILocation(line: 580, column: 17, scope: !1145)
!1149 = !DILocation(line: 580, column: 25, scope: !1145)
!1150 = !DILocation(line: 580, column: 34, scope: !1145)
!1151 = !DILocation(line: 580, column: 3, scope: !1145)
!1152 = !DILocation(line: 581, column: 6, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 581, column: 6)
!1154 = !DILocation(line: 581, column: 14, scope: !1153)
!1155 = !DILocation(line: 581, column: 6, scope: !1129)
!1156 = !DILocation(line: 582, column: 17, scope: !1153)
!1157 = !DILocation(line: 582, column: 25, scope: !1153)
!1158 = !DILocation(line: 582, column: 35, scope: !1153)
!1159 = !DILocation(line: 582, column: 3, scope: !1153)
!1160 = !DILocation(line: 588, column: 24, scope: !1129)
!1161 = !DILocation(line: 588, column: 32, scope: !1129)
!1162 = !DILocation(line: 588, column: 37, scope: !1129)
!1163 = !DILocation(line: 588, column: 45, scope: !1129)
!1164 = !DILocation(line: 588, column: 2, scope: !1129)
!1165 = !DILocation(line: 589, column: 1, scope: !1129)
!1166 = distinct !DISubprogram(name: "__rb_change_child_rcu", scope: !52, file: !52, line: 208, type: !1085, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1167)
!1167 = !{!1168, !1169, !1170, !1171, !1172, !1177, !1179}
!1168 = !DILocalVariable(name: "old", arg: 1, scope: !1166, file: !52, line: 208, type: !14)
!1169 = !DILocalVariable(name: "new", arg: 2, scope: !1166, file: !52, line: 208, type: !14)
!1170 = !DILocalVariable(name: "parent", arg: 3, scope: !1166, file: !52, line: 209, type: !14)
!1171 = !DILocalVariable(name: "root", arg: 4, scope: !1166, file: !52, line: 209, type: !72)
!1172 = !DILocalVariable(name: "_r_a_p__v", scope: !1173, file: !52, line: 213, type: !23)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !52, line: 213, column: 4)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !52, line: 212, column: 7)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !52, line: 211, column: 14)
!1176 = distinct !DILexicalBlock(scope: !1166, file: !52, line: 211, column: 6)
!1177 = !DILocalVariable(name: "_r_a_p__v", scope: !1178, file: !52, line: 215, type: !23)
!1178 = distinct !DILexicalBlock(scope: !1174, file: !52, line: 215, column: 4)
!1179 = !DILocalVariable(name: "_r_a_p__v", scope: !1180, file: !52, line: 217, type: !23)
!1180 = distinct !DILexicalBlock(scope: !1176, file: !52, line: 217, column: 3)
!1181 = !DILocation(line: 208, column: 39, scope: !1166)
!1182 = !DILocation(line: 208, column: 60, scope: !1166)
!1183 = !DILocation(line: 209, column: 25, scope: !1166)
!1184 = !DILocation(line: 209, column: 49, scope: !1166)
!1185 = !DILocation(line: 211, column: 6, scope: !1176)
!1186 = !DILocation(line: 211, column: 6, scope: !1166)
!1187 = !DILocation(line: 212, column: 7, scope: !1174)
!1188 = !DILocation(line: 212, column: 15, scope: !1174)
!1189 = !DILocation(line: 212, column: 26, scope: !1174)
!1190 = !DILocation(line: 212, column: 23, scope: !1174)
!1191 = !DILocation(line: 212, column: 7, scope: !1175)
!1192 = !DILocation(line: 213, column: 4, scope: !1174)
!1193 = !DILocation(line: 213, column: 4, scope: !1173)
!1194 = !DILocation(line: 213, column: 4, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1173, file: !52, line: 213, column: 4)
!1196 = !DILocation(line: 213, column: 4, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1195, file: !52, line: 213, column: 4)
!1198 = !DILocation(line: 213, column: 4, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1197, file: !52, line: 213, column: 4)
!1200 = !DILocation(line: 213, column: 4, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1197, file: !52, line: 213, column: 4)
!1202 = !DILocation(line: 213, column: 4, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1195, file: !52, line: 213, column: 4)
!1204 = !DILocation(line: 213, column: 4, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1203, file: !52, line: 213, column: 4)
!1206 = !DILocation(line: 213, column: 4, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1203, file: !52, line: 213, column: 4)
!1208 = !DILocation(line: 213, column: 4, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1207, file: !52, line: 213, column: 4)
!1210 = !{i64 2149649773}
!1211 = !DILocation(line: 213, column: 4, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1207, file: !52, line: 213, column: 4)
!1213 = !DILocation(line: 213, column: 4, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1212, file: !52, line: 213, column: 4)
!1215 = !DILocation(line: 213, column: 4, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1212, file: !52, line: 213, column: 4)
!1217 = !DILocation(line: 215, column: 4, scope: !1174)
!1218 = !DILocation(line: 215, column: 4, scope: !1178)
!1219 = !DILocation(line: 215, column: 4, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1178, file: !52, line: 215, column: 4)
!1221 = !DILocation(line: 215, column: 4, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1220, file: !52, line: 215, column: 4)
!1223 = !DILocation(line: 215, column: 4, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1222, file: !52, line: 215, column: 4)
!1225 = !DILocation(line: 215, column: 4, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1222, file: !52, line: 215, column: 4)
!1227 = !DILocation(line: 215, column: 4, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1220, file: !52, line: 215, column: 4)
!1229 = !DILocation(line: 215, column: 4, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1228, file: !52, line: 215, column: 4)
!1231 = !DILocation(line: 215, column: 4, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1228, file: !52, line: 215, column: 4)
!1233 = !DILocation(line: 215, column: 4, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1232, file: !52, line: 215, column: 4)
!1235 = !{i64 2149657513}
!1236 = !DILocation(line: 215, column: 4, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1232, file: !52, line: 215, column: 4)
!1238 = !DILocation(line: 215, column: 4, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1237, file: !52, line: 215, column: 4)
!1240 = !DILocation(line: 215, column: 4, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1237, file: !52, line: 215, column: 4)
!1242 = !DILocation(line: 216, column: 2, scope: !1175)
!1243 = !DILocation(line: 217, column: 3, scope: !1176)
!1244 = !DILocation(line: 217, column: 3, scope: !1180)
!1245 = !DILocation(line: 217, column: 3, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1180, file: !52, line: 217, column: 3)
!1247 = !DILocation(line: 217, column: 3, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1246, file: !52, line: 217, column: 3)
!1249 = !DILocation(line: 217, column: 3, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1248, file: !52, line: 217, column: 3)
!1251 = !DILocation(line: 217, column: 3, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1248, file: !52, line: 217, column: 3)
!1253 = !DILocation(line: 217, column: 3, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1246, file: !52, line: 217, column: 3)
!1255 = !DILocation(line: 217, column: 3, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1254, file: !52, line: 217, column: 3)
!1257 = !DILocation(line: 217, column: 3, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1254, file: !52, line: 217, column: 3)
!1259 = !DILocation(line: 217, column: 3, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1258, file: !52, line: 217, column: 3)
!1261 = !{i64 2149665108}
!1262 = !DILocation(line: 217, column: 3, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1258, file: !52, line: 217, column: 3)
!1264 = !DILocation(line: 217, column: 3, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1263, file: !52, line: 217, column: 3)
!1266 = !DILocation(line: 217, column: 3, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1263, file: !52, line: 217, column: 3)
!1268 = !DILocation(line: 218, column: 1, scope: !1166)
!1269 = distinct !DISubprogram(name: "rb_next_postorder", scope: !3, file: !3, line: 604, type: !942, scopeLine: 605, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1270)
!1270 = !{!1271, !1272}
!1271 = !DILocalVariable(name: "node", arg: 1, scope: !1269, file: !3, line: 604, type: !944)
!1272 = !DILocalVariable(name: "parent", scope: !1269, file: !3, line: 606, type: !944)
!1273 = !DILocation(line: 604, column: 57, scope: !1269)
!1274 = !DILocation(line: 606, column: 2, scope: !1269)
!1275 = !DILocation(line: 606, column: 24, scope: !1269)
!1276 = !DILocation(line: 607, column: 7, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 607, column: 6)
!1278 = !DILocation(line: 607, column: 6, scope: !1269)
!1279 = !DILocation(line: 608, column: 3, scope: !1277)
!1280 = !DILocation(line: 609, column: 11, scope: !1269)
!1281 = !DILocation(line: 609, column: 9, scope: !1269)
!1282 = !DILocation(line: 612, column: 6, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 612, column: 6)
!1284 = !DILocation(line: 612, column: 13, scope: !1283)
!1285 = !DILocation(line: 612, column: 16, scope: !1283)
!1286 = !DILocation(line: 612, column: 24, scope: !1283)
!1287 = !DILocation(line: 612, column: 32, scope: !1283)
!1288 = !DILocation(line: 612, column: 21, scope: !1283)
!1289 = !DILocation(line: 612, column: 40, scope: !1283)
!1290 = !DILocation(line: 612, column: 43, scope: !1283)
!1291 = !DILocation(line: 612, column: 51, scope: !1283)
!1292 = !DILocation(line: 612, column: 6, scope: !1269)
!1293 = !DILocation(line: 615, column: 31, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 612, column: 61)
!1295 = !DILocation(line: 615, column: 39, scope: !1294)
!1296 = !DILocation(line: 615, column: 10, scope: !1294)
!1297 = !DILocation(line: 615, column: 3, scope: !1294)
!1298 = !DILocation(line: 619, column: 28, scope: !1283)
!1299 = !DILocation(line: 619, column: 3, scope: !1283)
!1300 = !DILocation(line: 620, column: 1, scope: !1269)
!1301 = distinct !DISubprogram(name: "rb_left_deepest_node", scope: !3, file: !3, line: 592, type: !942, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1302)
!1302 = !{!1303}
!1303 = !DILocalVariable(name: "node", arg: 1, scope: !1301, file: !3, line: 592, type: !944)
!1304 = !DILocation(line: 592, column: 67, scope: !1301)
!1305 = !DILocation(line: 594, column: 2, scope: !1301)
!1306 = !DILocation(line: 595, column: 7, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 595, column: 7)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 594, column: 11)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 594, column: 2)
!1310 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 594, column: 2)
!1311 = !DILocation(line: 595, column: 13, scope: !1307)
!1312 = !DILocation(line: 595, column: 7, scope: !1308)
!1313 = !DILocation(line: 596, column: 11, scope: !1307)
!1314 = !DILocation(line: 596, column: 17, scope: !1307)
!1315 = !DILocation(line: 596, column: 9, scope: !1307)
!1316 = !DILocation(line: 596, column: 4, scope: !1307)
!1317 = !DILocation(line: 597, column: 12, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 597, column: 12)
!1319 = !DILocation(line: 597, column: 18, scope: !1318)
!1320 = !DILocation(line: 597, column: 12, scope: !1307)
!1321 = !DILocation(line: 598, column: 11, scope: !1318)
!1322 = !DILocation(line: 598, column: 17, scope: !1318)
!1323 = !DILocation(line: 598, column: 9, scope: !1318)
!1324 = !DILocation(line: 598, column: 4, scope: !1318)
!1325 = !DILocation(line: 600, column: 29, scope: !1318)
!1326 = !DILocation(line: 600, column: 4, scope: !1318)
!1327 = !DILocation(line: 594, column: 2, scope: !1309)
!1328 = distinct !{!1328, !1329, !1330, !187}
!1329 = !DILocation(line: 594, column: 2, scope: !1310)
!1330 = !DILocation(line: 601, column: 2, scope: !1310)
!1331 = distinct !DISubprogram(name: "rb_first_postorder", scope: !3, file: !3, line: 623, type: !890, scopeLine: 624, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1332)
!1332 = !{!1333}
!1333 = !DILocalVariable(name: "root", arg: 1, scope: !1331, file: !3, line: 623, type: !892)
!1334 = !DILocation(line: 623, column: 58, scope: !1331)
!1335 = !DILocation(line: 625, column: 7, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 625, column: 6)
!1337 = !DILocation(line: 625, column: 13, scope: !1336)
!1338 = !DILocation(line: 625, column: 6, scope: !1331)
!1339 = !DILocation(line: 626, column: 3, scope: !1336)
!1340 = !DILocation(line: 628, column: 30, scope: !1331)
!1341 = !DILocation(line: 628, column: 36, scope: !1331)
!1342 = !DILocation(line: 628, column: 9, scope: !1331)
!1343 = !DILocation(line: 628, column: 2, scope: !1331)
!1344 = !DILocation(line: 629, column: 1, scope: !1331)
!1345 = distinct !DISubprogram(name: "rb_set_parent_color", scope: !52, file: !52, line: 188, type: !1346, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1349)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{null, !14, !14, !1348}
!1348 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1349 = !{!1350, !1351, !1352}
!1350 = !DILocalVariable(name: "rb", arg: 1, scope: !1345, file: !52, line: 188, type: !14)
!1351 = !DILocalVariable(name: "p", arg: 2, scope: !1345, file: !52, line: 189, type: !14)
!1352 = !DILocalVariable(name: "color", arg: 3, scope: !1345, file: !52, line: 189, type: !1348)
!1353 = !DILocation(line: 188, column: 56, scope: !1345)
!1354 = !DILocation(line: 189, column: 28, scope: !1345)
!1355 = !DILocation(line: 189, column: 35, scope: !1345)
!1356 = !DILocation(line: 191, column: 41, scope: !1345)
!1357 = !DILocation(line: 191, column: 26, scope: !1345)
!1358 = !DILocation(line: 191, column: 45, scope: !1345)
!1359 = !DILocation(line: 191, column: 43, scope: !1345)
!1360 = !DILocation(line: 191, column: 2, scope: !1345)
!1361 = !DILocation(line: 191, column: 6, scope: !1345)
!1362 = !DILocation(line: 191, column: 24, scope: !1345)
!1363 = !DILocation(line: 192, column: 1, scope: !1345)
!1364 = distinct !DISubprogram(name: "__rb_rotate_set_parents", scope: !3, file: !3, line: 75, type: !1365, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1367)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{null, !14, !14, !72, !1348}
!1367 = !{!1368, !1369, !1370, !1371, !1372}
!1368 = !DILocalVariable(name: "old", arg: 1, scope: !1364, file: !3, line: 75, type: !14)
!1369 = !DILocalVariable(name: "new", arg: 2, scope: !1364, file: !3, line: 75, type: !14)
!1370 = !DILocalVariable(name: "root", arg: 3, scope: !1364, file: !3, line: 76, type: !72)
!1371 = !DILocalVariable(name: "color", arg: 4, scope: !1364, file: !3, line: 76, type: !1348)
!1372 = !DILocalVariable(name: "parent", scope: !1364, file: !3, line: 78, type: !14)
!1373 = !DILocation(line: 75, column: 41, scope: !1364)
!1374 = !DILocation(line: 75, column: 62, scope: !1364)
!1375 = !DILocation(line: 76, column: 20, scope: !1364)
!1376 = !DILocation(line: 76, column: 30, scope: !1364)
!1377 = !DILocation(line: 78, column: 2, scope: !1364)
!1378 = !DILocation(line: 78, column: 18, scope: !1364)
!1379 = !DILocation(line: 78, column: 27, scope: !1364)
!1380 = !DILocation(line: 79, column: 27, scope: !1364)
!1381 = !DILocation(line: 79, column: 32, scope: !1364)
!1382 = !DILocation(line: 79, column: 2, scope: !1364)
!1383 = !DILocation(line: 79, column: 7, scope: !1364)
!1384 = !DILocation(line: 79, column: 25, scope: !1364)
!1385 = !DILocation(line: 80, column: 22, scope: !1364)
!1386 = !DILocation(line: 80, column: 27, scope: !1364)
!1387 = !DILocation(line: 80, column: 32, scope: !1364)
!1388 = !DILocation(line: 80, column: 2, scope: !1364)
!1389 = !DILocation(line: 81, column: 20, scope: !1364)
!1390 = !DILocation(line: 81, column: 25, scope: !1364)
!1391 = !DILocation(line: 81, column: 30, scope: !1364)
!1392 = !DILocation(line: 81, column: 38, scope: !1364)
!1393 = !DILocation(line: 81, column: 2, scope: !1364)
!1394 = !DILocation(line: 82, column: 1, scope: !1364)
!1395 = distinct !DISubprogram(name: "rb_set_black", scope: !3, file: !3, line: 59, type: !1396, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1398)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{null, !14}
!1398 = !{!1399}
!1399 = !DILocalVariable(name: "rb", arg: 1, scope: !1395, file: !3, line: 59, type: !14)
!1400 = !DILocation(line: 59, column: 49, scope: !1395)
!1401 = !DILocation(line: 61, column: 2, scope: !1395)
!1402 = !DILocation(line: 61, column: 6, scope: !1395)
!1403 = !DILocation(line: 61, column: 24, scope: !1395)
!1404 = !DILocation(line: 62, column: 1, scope: !1395)
!1405 = distinct !DISubprogram(name: "rb_red_parent", scope: !3, file: !3, line: 64, type: !1406, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1408)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!14, !14}
!1408 = !{!1409}
!1409 = !DILocalVariable(name: "red", arg: 1, scope: !1405, file: !3, line: 64, type: !14)
!1410 = !DILocation(line: 64, column: 61, scope: !1405)
!1411 = !DILocation(line: 66, column: 27, scope: !1405)
!1412 = !DILocation(line: 66, column: 32, scope: !1405)
!1413 = !DILocation(line: 66, column: 9, scope: !1405)
!1414 = !DILocation(line: 66, column: 2, scope: !1405)
!1415 = distinct !DISubprogram(name: "dummy_propagate", scope: !3, file: !3, line: 424, type: !56, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1416)
!1416 = !{!1417, !1418}
!1417 = !DILocalVariable(name: "node", arg: 1, scope: !1415, file: !3, line: 424, type: !14)
!1418 = !DILocalVariable(name: "stop", arg: 2, scope: !1415, file: !3, line: 424, type: !14)
!1419 = !DILocation(line: 424, column: 52, scope: !1415)
!1420 = !DILocation(line: 424, column: 74, scope: !1415)
!1421 = !DILocation(line: 424, column: 81, scope: !1415)
!1422 = distinct !DISubprogram(name: "dummy_copy", scope: !3, file: !3, line: 425, type: !56, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1423)
!1423 = !{!1424, !1425}
!1424 = !DILocalVariable(name: "old", arg: 1, scope: !1422, file: !3, line: 425, type: !14)
!1425 = !DILocalVariable(name: "new", arg: 2, scope: !1422, file: !3, line: 425, type: !14)
!1426 = !DILocation(line: 425, column: 47, scope: !1422)
!1427 = !DILocation(line: 425, column: 68, scope: !1422)
!1428 = !DILocation(line: 425, column: 74, scope: !1422)

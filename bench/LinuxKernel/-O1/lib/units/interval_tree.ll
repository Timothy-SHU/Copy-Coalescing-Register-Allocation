; ModuleID = 'lib/interval_tree.c'
source_filename = "lib/interval_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_interval_tree_insert: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad interval_tree_insert ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_interval_tree_remove: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad interval_tree_remove ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_interval_tree_iter_first: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad interval_tree_iter_first ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_interval_tree_iter_next: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad interval_tree_iter_next ; .previous"

%struct.rb_augment_callbacks = type { ptr, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.interval_tree_node = type { %struct.rb_node, i64, i64, i64 }
%struct.rb_node = type { i64, ptr, ptr }

@interval_tree_augment = internal constant %struct.rb_augment_callbacks { ptr @interval_tree_augment_propagate, ptr @interval_tree_augment_copy, ptr @interval_tree_augment_rotate }, align 8, !dbg !0
@__UNIQUE_ID___addressable_interval_tree_insert64 = internal global ptr @interval_tree_insert, section ".discard.addressable", align 8, !dbg !32
@__UNIQUE_ID___addressable_interval_tree_remove65 = internal global ptr @interval_tree_remove, section ".discard.addressable", align 8, !dbg !34
@__UNIQUE_ID___addressable_interval_tree_iter_first66 = internal global ptr @interval_tree_iter_first, section ".discard.addressable", align 8, !dbg !36
@__UNIQUE_ID___addressable_interval_tree_iter_next67 = internal global ptr @interval_tree_iter_next, section ".discard.addressable", align 8, !dbg !38
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_interval_tree_insert64, ptr @__UNIQUE_ID___addressable_interval_tree_remove65, ptr @__UNIQUE_ID___addressable_interval_tree_iter_first66, ptr @__UNIQUE_ID___addressable_interval_tree_iter_next67], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @interval_tree_insert(ptr noundef %node, ptr noundef %root) #0 align 16 !dbg !59 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %link = alloca ptr, align 8
  %rb_parent = alloca ptr, align 8
  %start = alloca i64, align 8
  %last = alloca i64, align 8
  %parent = alloca ptr, align 8
  %leftmost = alloca i8, align 1
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !71, metadata !DIExpression()), !dbg !86
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !72, metadata !DIExpression()), !dbg !86
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #6, !dbg !86
  call void @llvm.dbg.declare(metadata ptr %link, metadata !73, metadata !DIExpression()), !dbg !86
  %0 = load ptr, ptr %root.addr, align 8, !dbg !86
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %0, i32 0, i32 0, !dbg !86
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %rb_root, i32 0, i32 0, !dbg !86
  store ptr %rb_node, ptr %link, align 8, !dbg !86
  call void @llvm.lifetime.start.p0(i64 8, ptr %rb_parent) #6, !dbg !86
  call void @llvm.dbg.declare(metadata ptr %rb_parent, metadata !75, metadata !DIExpression()), !dbg !86
  store ptr null, ptr %rb_parent, align 8, !dbg !86
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #6, !dbg !86
  call void @llvm.dbg.declare(metadata ptr %start, metadata !76, metadata !DIExpression()), !dbg !86
  %1 = load ptr, ptr %node.addr, align 8, !dbg !86
  %start1 = getelementptr inbounds %struct.interval_tree_node, ptr %1, i32 0, i32 1, !dbg !86
  %2 = load i64, ptr %start1, align 8, !dbg !86
  store i64 %2, ptr %start, align 8, !dbg !86
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #6, !dbg !86
  call void @llvm.dbg.declare(metadata ptr %last, metadata !77, metadata !DIExpression()), !dbg !86
  %3 = load ptr, ptr %node.addr, align 8, !dbg !86
  %last2 = getelementptr inbounds %struct.interval_tree_node, ptr %3, i32 0, i32 2, !dbg !86
  %4 = load i64, ptr %last2, align 8, !dbg !86
  store i64 %4, ptr %last, align 8, !dbg !86
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #6, !dbg !86
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !78, metadata !DIExpression()), !dbg !86
  call void @llvm.lifetime.start.p0(i64 1, ptr %leftmost) #6, !dbg !86
  call void @llvm.dbg.declare(metadata ptr %leftmost, metadata !79, metadata !DIExpression()), !dbg !86
  store i8 1, ptr %leftmost, align 1, !dbg !86
  br label %while.cond, !dbg !86

while.cond:                                       ; preds = %if.end8, %entry
  %5 = load ptr, ptr %link, align 8, !dbg !86
  %6 = load ptr, ptr %5, align 8, !dbg !86
  %tobool = icmp ne ptr %6, null, !dbg !86
  br i1 %tobool, label %while.body, label %while.end, !dbg !86

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %link, align 8, !dbg !87
  %8 = load ptr, ptr %7, align 8, !dbg !87
  store ptr %8, ptr %rb_parent, align 8, !dbg !87
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !88
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !83, metadata !DIExpression()), !dbg !88
  %9 = load ptr, ptr %rb_parent, align 8, !dbg !88
  store ptr %9, ptr %__mptr, align 8, !dbg !88
  %10 = load ptr, ptr %__mptr, align 8, !dbg !88
  %add.ptr = getelementptr i8, ptr %10, i64 0, !dbg !88
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !88
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !87
  %11 = load ptr, ptr %tmp, align 8, !dbg !88
  store ptr %11, ptr %parent, align 8, !dbg !87
  %12 = load ptr, ptr %parent, align 8, !dbg !89
  %__subtree_last = getelementptr inbounds %struct.interval_tree_node, ptr %12, i32 0, i32 3, !dbg !89
  %13 = load i64, ptr %__subtree_last, align 8, !dbg !89
  %14 = load i64, ptr %last, align 8, !dbg !89
  %cmp = icmp ult i64 %13, %14, !dbg !89
  br i1 %cmp, label %if.then, label %if.end, !dbg !87

if.then:                                          ; preds = %while.body
  %15 = load i64, ptr %last, align 8, !dbg !89
  %16 = load ptr, ptr %parent, align 8, !dbg !89
  %__subtree_last3 = getelementptr inbounds %struct.interval_tree_node, ptr %16, i32 0, i32 3, !dbg !89
  store i64 %15, ptr %__subtree_last3, align 8, !dbg !89
  br label %if.end, !dbg !89

if.end:                                           ; preds = %if.then, %while.body
  %17 = load i64, ptr %start, align 8, !dbg !91
  %18 = load ptr, ptr %parent, align 8, !dbg !91
  %start4 = getelementptr inbounds %struct.interval_tree_node, ptr %18, i32 0, i32 1, !dbg !91
  %19 = load i64, ptr %start4, align 8, !dbg !91
  %cmp5 = icmp ult i64 %17, %19, !dbg !91
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !87

if.then6:                                         ; preds = %if.end
  %20 = load ptr, ptr %parent, align 8, !dbg !91
  %rb = getelementptr inbounds %struct.interval_tree_node, ptr %20, i32 0, i32 0, !dbg !91
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rb, i32 0, i32 2, !dbg !91
  store ptr %rb_left, ptr %link, align 8, !dbg !91
  br label %if.end8, !dbg !91

if.else:                                          ; preds = %if.end
  %21 = load ptr, ptr %parent, align 8, !dbg !93
  %rb7 = getelementptr inbounds %struct.interval_tree_node, ptr %21, i32 0, i32 0, !dbg !93
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb7, i32 0, i32 1, !dbg !93
  store ptr %rb_right, ptr %link, align 8, !dbg !93
  store i8 0, ptr %leftmost, align 1, !dbg !93
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  br label %while.cond, !dbg !86, !llvm.loop !95

while.end:                                        ; preds = %while.cond
  %22 = load i64, ptr %last, align 8, !dbg !86
  %23 = load ptr, ptr %node.addr, align 8, !dbg !86
  %__subtree_last9 = getelementptr inbounds %struct.interval_tree_node, ptr %23, i32 0, i32 3, !dbg !86
  store i64 %22, ptr %__subtree_last9, align 8, !dbg !86
  %24 = load ptr, ptr %node.addr, align 8, !dbg !86
  %rb10 = getelementptr inbounds %struct.interval_tree_node, ptr %24, i32 0, i32 0, !dbg !86
  %25 = load ptr, ptr %rb_parent, align 8, !dbg !86
  %26 = load ptr, ptr %link, align 8, !dbg !86
  call void @rb_link_node(ptr noundef %rb10, ptr noundef %25, ptr noundef %26) #7, !dbg !86
  %27 = load ptr, ptr %node.addr, align 8, !dbg !86
  %rb11 = getelementptr inbounds %struct.interval_tree_node, ptr %27, i32 0, i32 0, !dbg !86
  %28 = load ptr, ptr %root.addr, align 8, !dbg !86
  %29 = load i8, ptr %leftmost, align 1, !dbg !86, !range !98, !noundef !99
  %tobool12 = trunc i8 %29 to i1, !dbg !86
  call void @rb_insert_augmented_cached(ptr noundef %rb11, ptr noundef %28, i1 noundef zeroext %tobool12, ptr noundef @interval_tree_augment) #7, !dbg !86
  call void @llvm.lifetime.end.p0(i64 1, ptr %leftmost) #6, !dbg !86
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #6, !dbg !86
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #6, !dbg !86
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #6, !dbg !86
  call void @llvm.lifetime.end.p0(i64 8, ptr %rb_parent) #6, !dbg !86
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #6, !dbg !86
  ret void, !dbg !86
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_link_node(ptr noundef %node, ptr noundef %parent, ptr noundef %rb_link) #3 align 16 !dbg !100 {
entry:
  %node.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %rb_link.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !105, metadata !DIExpression()), !dbg !108
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !106, metadata !DIExpression()), !dbg !109
  store ptr %rb_link, ptr %rb_link.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_link.addr, metadata !107, metadata !DIExpression()), !dbg !110
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !111
  %1 = ptrtoint ptr %0 to i64, !dbg !112
  %2 = load ptr, ptr %node.addr, align 8, !dbg !113
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 0, !dbg !114
  store i64 %1, ptr %__rb_parent_color, align 8, !dbg !115
  %3 = load ptr, ptr %node.addr, align 8, !dbg !116
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 1, !dbg !117
  store ptr null, ptr %rb_right, align 8, !dbg !118
  %4 = load ptr, ptr %node.addr, align 8, !dbg !119
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2, !dbg !120
  store ptr null, ptr %rb_left, align 8, !dbg !121
  %5 = load ptr, ptr %node.addr, align 8, !dbg !122
  %6 = load ptr, ptr %rb_link.addr, align 8, !dbg !123
  store ptr %5, ptr %6, align 8, !dbg !124
  ret void, !dbg !125
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_insert_augmented_cached(ptr noundef %node, ptr noundef %root, i1 noundef zeroext %newleft, ptr noundef %augment) #3 align 16 !dbg !126 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %newleft.addr = alloca i8, align 1
  %augment.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !131, metadata !DIExpression()), !dbg !135
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !132, metadata !DIExpression()), !dbg !136
  %frombool = zext i1 %newleft to i8
  store i8 %frombool, ptr %newleft.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %newleft.addr, metadata !133, metadata !DIExpression()), !dbg !137
  store ptr %augment, ptr %augment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %augment.addr, metadata !134, metadata !DIExpression()), !dbg !138
  %0 = load i8, ptr %newleft.addr, align 1, !dbg !139, !range !98, !noundef !99
  %tobool = trunc i8 %0 to i1, !dbg !139
  br i1 %tobool, label %if.then, label %if.end, !dbg !141

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %node.addr, align 8, !dbg !142
  %2 = load ptr, ptr %root.addr, align 8, !dbg !143
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %2, i32 0, i32 1, !dbg !144
  store ptr %1, ptr %rb_leftmost, align 8, !dbg !145
  br label %if.end, !dbg !143

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %node.addr, align 8, !dbg !146
  %4 = load ptr, ptr %root.addr, align 8, !dbg !147
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %4, i32 0, i32 0, !dbg !148
  %5 = load ptr, ptr %augment.addr, align 8, !dbg !149
  call void @rb_insert_augmented(ptr noundef %3, ptr noundef %rb_root, ptr noundef %5) #7, !dbg !150
  ret void, !dbg !151
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @interval_tree_remove(ptr noundef %node, ptr noundef %root) #0 align 16 !dbg !152 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !154, metadata !DIExpression()), !dbg !156
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !155, metadata !DIExpression()), !dbg !156
  %0 = load ptr, ptr %node.addr, align 8, !dbg !156
  %rb = getelementptr inbounds %struct.interval_tree_node, ptr %0, i32 0, i32 0, !dbg !156
  %1 = load ptr, ptr %root.addr, align 8, !dbg !156
  call void @rb_erase_augmented_cached(ptr noundef %rb, ptr noundef %1, ptr noundef @interval_tree_augment) #7, !dbg !156
  ret void, !dbg !156
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_erase_augmented_cached(ptr noundef %node, ptr noundef %root, ptr noundef %augment) #4 align 16 !dbg !157 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %augment.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !161, metadata !DIExpression()), !dbg !164
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !162, metadata !DIExpression()), !dbg !165
  store ptr %augment, ptr %augment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %augment.addr, metadata !163, metadata !DIExpression()), !dbg !166
  %0 = load ptr, ptr %root.addr, align 8, !dbg !167
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %0, i32 0, i32 1, !dbg !169
  %1 = load ptr, ptr %rb_leftmost, align 8, !dbg !169
  %2 = load ptr, ptr %node.addr, align 8, !dbg !170
  %cmp = icmp eq ptr %1, %2, !dbg !171
  br i1 %cmp, label %if.then, label %if.end, !dbg !172

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %node.addr, align 8, !dbg !173
  %call = call ptr @rb_next(ptr noundef %3) #7, !dbg !174
  %4 = load ptr, ptr %root.addr, align 8, !dbg !175
  %rb_leftmost1 = getelementptr inbounds %struct.rb_root_cached, ptr %4, i32 0, i32 1, !dbg !176
  store ptr %call, ptr %rb_leftmost1, align 8, !dbg !177
  br label %if.end, !dbg !175

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %node.addr, align 8, !dbg !178
  %6 = load ptr, ptr %root.addr, align 8, !dbg !179
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %6, i32 0, i32 0, !dbg !180
  %7 = load ptr, ptr %augment.addr, align 8, !dbg !181
  call void @rb_erase_augmented(ptr noundef %5, ptr noundef %rb_root, ptr noundef %7) #7, !dbg !182
  ret void, !dbg !183
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @interval_tree_iter_first(ptr noundef %root, i64 noundef %start, i64 noundef %last) #0 align 16 !dbg !184 {
entry:
  %retval = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %last.addr = alloca i64, align 8
  %node = alloca ptr, align 8
  %leftmost = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr5 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !188, metadata !DIExpression()), !dbg !197
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !189, metadata !DIExpression()), !dbg !197
  store i64 %last, ptr %last.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !190, metadata !DIExpression()), !dbg !197
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #6, !dbg !197
  call void @llvm.dbg.declare(metadata ptr %node, metadata !191, metadata !DIExpression()), !dbg !197
  call void @llvm.lifetime.start.p0(i64 8, ptr %leftmost) #6, !dbg !197
  call void @llvm.dbg.declare(metadata ptr %leftmost, metadata !192, metadata !DIExpression()), !dbg !197
  %0 = load ptr, ptr %root.addr, align 8, !dbg !198
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %0, i32 0, i32 0, !dbg !198
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %rb_root, i32 0, i32 0, !dbg !198
  %1 = load ptr, ptr %rb_node, align 8, !dbg !198
  %tobool = icmp ne ptr %1, null, !dbg !198
  br i1 %tobool, label %if.end, label %if.then, !dbg !197

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !198

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !200
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !193, metadata !DIExpression()), !dbg !200
  %2 = load ptr, ptr %root.addr, align 8, !dbg !200
  %rb_root1 = getelementptr inbounds %struct.rb_root_cached, ptr %2, i32 0, i32 0, !dbg !200
  %rb_node2 = getelementptr inbounds %struct.rb_root, ptr %rb_root1, i32 0, i32 0, !dbg !200
  %3 = load ptr, ptr %rb_node2, align 8, !dbg !200
  store ptr %3, ptr %__mptr, align 8, !dbg !200
  %4 = load ptr, ptr %__mptr, align 8, !dbg !200
  %add.ptr = getelementptr i8, ptr %4, i64 0, !dbg !200
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !200
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !197
  %5 = load ptr, ptr %tmp, align 8, !dbg !200
  store ptr %5, ptr %node, align 8, !dbg !197
  %6 = load ptr, ptr %node, align 8, !dbg !201
  %__subtree_last = getelementptr inbounds %struct.interval_tree_node, ptr %6, i32 0, i32 3, !dbg !201
  %7 = load i64, ptr %__subtree_last, align 8, !dbg !201
  %8 = load i64, ptr %start.addr, align 8, !dbg !201
  %cmp = icmp ult i64 %7, %8, !dbg !201
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !197

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !201
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !201

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #6, !dbg !203
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !195, metadata !DIExpression()), !dbg !203
  %9 = load ptr, ptr %root.addr, align 8, !dbg !203
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %9, i32 0, i32 1, !dbg !203
  %10 = load ptr, ptr %rb_leftmost, align 8, !dbg !203
  store ptr %10, ptr %__mptr5, align 8, !dbg !203
  %11 = load ptr, ptr %__mptr5, align 8, !dbg !203
  %add.ptr7 = getelementptr i8, ptr %11, i64 0, !dbg !203
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !203
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #6, !dbg !197
  %12 = load ptr, ptr %tmp6, align 8, !dbg !203
  store ptr %12, ptr %leftmost, align 8, !dbg !197
  %13 = load ptr, ptr %leftmost, align 8, !dbg !204
  %start8 = getelementptr inbounds %struct.interval_tree_node, ptr %13, i32 0, i32 1, !dbg !204
  %14 = load i64, ptr %start8, align 8, !dbg !204
  %15 = load i64, ptr %last.addr, align 8, !dbg !204
  %cmp9 = icmp ugt i64 %14, %15, !dbg !204
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !197

if.then10:                                        ; preds = %if.end4
  store ptr null, ptr %retval, align 8, !dbg !204
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !204

if.end11:                                         ; preds = %if.end4
  %16 = load ptr, ptr %node, align 8, !dbg !197
  %17 = load i64, ptr %start.addr, align 8, !dbg !197
  %18 = load i64, ptr %last.addr, align 8, !dbg !197
  %call = call ptr @interval_tree_subtree_search(ptr noundef %16, i64 noundef %17, i64 noundef %18) #7, !dbg !197
  store ptr %call, ptr %retval, align 8, !dbg !197
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !197

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %leftmost) #6, !dbg !197
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #6, !dbg !197
  %19 = load ptr, ptr %retval, align 8, !dbg !197
  ret ptr %19, !dbg !197
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @interval_tree_subtree_search(ptr noundef %node, i64 noundef %start, i64 noundef %last) #0 align 16 !dbg !206 {
entry:
  %retval = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %last.addr = alloca i64, align 8
  %left = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr15 = alloca ptr, align 8
  %tmp18 = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !210, metadata !DIExpression()), !dbg !225
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !211, metadata !DIExpression()), !dbg !225
  store i64 %last, ptr %last.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !212, metadata !DIExpression()), !dbg !225
  br label %while.body, !dbg !225

while.body:                                       ; preds = %entry, %cleanup, %if.then22
  %0 = load ptr, ptr %node.addr, align 8, !dbg !226
  %rb = getelementptr inbounds %struct.interval_tree_node, ptr %0, i32 0, i32 0, !dbg !226
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rb, i32 0, i32 2, !dbg !226
  %1 = load ptr, ptr %rb_left, align 8, !dbg !226
  %tobool = icmp ne ptr %1, null, !dbg !226
  br i1 %tobool, label %if.then, label %if.end4, !dbg !227

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #6, !dbg !228
  call void @llvm.dbg.declare(metadata ptr %left, metadata !213, metadata !DIExpression()), !dbg !228
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !229
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !217, metadata !DIExpression()), !dbg !229
  %2 = load ptr, ptr %node.addr, align 8, !dbg !229
  %rb1 = getelementptr inbounds %struct.interval_tree_node, ptr %2, i32 0, i32 0, !dbg !229
  %rb_left2 = getelementptr inbounds %struct.rb_node, ptr %rb1, i32 0, i32 2, !dbg !229
  %3 = load ptr, ptr %rb_left2, align 8, !dbg !229
  store ptr %3, ptr %__mptr, align 8, !dbg !229
  %4 = load ptr, ptr %__mptr, align 8, !dbg !229
  %add.ptr = getelementptr i8, ptr %4, i64 0, !dbg !229
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !229
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !228
  %5 = load ptr, ptr %tmp, align 8, !dbg !229
  store ptr %5, ptr %left, align 8, !dbg !228
  %6 = load i64, ptr %start.addr, align 8, !dbg !230
  %7 = load ptr, ptr %left, align 8, !dbg !230
  %__subtree_last = getelementptr inbounds %struct.interval_tree_node, ptr %7, i32 0, i32 3, !dbg !230
  %8 = load i64, ptr %__subtree_last, align 8, !dbg !230
  %cmp = icmp ule i64 %6, %8, !dbg !230
  br i1 %cmp, label %if.then3, label %if.end, !dbg !228

if.then3:                                         ; preds = %if.then
  %9 = load ptr, ptr %left, align 8, !dbg !232
  store ptr %9, ptr %node.addr, align 8, !dbg !232
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !232, !llvm.loop !234

if.end:                                           ; preds = %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !226
  br label %cleanup, !dbg !226

cleanup:                                          ; preds = %if.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #6, !dbg !226
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %while.body
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end4, !dbg !228

if.end4:                                          ; preds = %cleanup.cont, %while.body
  %10 = load ptr, ptr %node.addr, align 8, !dbg !235
  %start5 = getelementptr inbounds %struct.interval_tree_node, ptr %10, i32 0, i32 1, !dbg !235
  %11 = load i64, ptr %start5, align 8, !dbg !235
  %12 = load i64, ptr %last.addr, align 8, !dbg !235
  %cmp6 = icmp ule i64 %11, %12, !dbg !235
  br i1 %cmp6, label %if.then7, label %if.end25, !dbg !227

if.then7:                                         ; preds = %if.end4
  %13 = load i64, ptr %start.addr, align 8, !dbg !236
  %14 = load ptr, ptr %node.addr, align 8, !dbg !236
  %last8 = getelementptr inbounds %struct.interval_tree_node, ptr %14, i32 0, i32 2, !dbg !236
  %15 = load i64, ptr %last8, align 8, !dbg !236
  %cmp9 = icmp ule i64 %13, %15, !dbg !236
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !238

if.then10:                                        ; preds = %if.then7
  %16 = load ptr, ptr %node.addr, align 8, !dbg !236
  store ptr %16, ptr %retval, align 8, !dbg !236
  br label %return, !dbg !236

if.end11:                                         ; preds = %if.then7
  %17 = load ptr, ptr %node.addr, align 8, !dbg !239
  %rb12 = getelementptr inbounds %struct.interval_tree_node, ptr %17, i32 0, i32 0, !dbg !239
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb12, i32 0, i32 1, !dbg !239
  %18 = load ptr, ptr %rb_right, align 8, !dbg !239
  %tobool13 = icmp ne ptr %18, null, !dbg !239
  br i1 %tobool13, label %if.then14, label %if.end24, !dbg !238

if.then14:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr15) #6, !dbg !240
  call void @llvm.dbg.declare(metadata ptr %__mptr15, metadata !219, metadata !DIExpression()), !dbg !240
  %19 = load ptr, ptr %node.addr, align 8, !dbg !240
  %rb16 = getelementptr inbounds %struct.interval_tree_node, ptr %19, i32 0, i32 0, !dbg !240
  %rb_right17 = getelementptr inbounds %struct.rb_node, ptr %rb16, i32 0, i32 1, !dbg !240
  %20 = load ptr, ptr %rb_right17, align 8, !dbg !240
  store ptr %20, ptr %__mptr15, align 8, !dbg !240
  %21 = load ptr, ptr %__mptr15, align 8, !dbg !240
  %add.ptr19 = getelementptr i8, ptr %21, i64 0, !dbg !240
  store ptr %add.ptr19, ptr %tmp18, align 8, !dbg !240
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr15) #6, !dbg !241
  %22 = load ptr, ptr %tmp18, align 8, !dbg !240
  store ptr %22, ptr %node.addr, align 8, !dbg !241
  %23 = load i64, ptr %start.addr, align 8, !dbg !242
  %24 = load ptr, ptr %node.addr, align 8, !dbg !242
  %__subtree_last20 = getelementptr inbounds %struct.interval_tree_node, ptr %24, i32 0, i32 3, !dbg !242
  %25 = load i64, ptr %__subtree_last20, align 8, !dbg !242
  %cmp21 = icmp ule i64 %23, %25, !dbg !242
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !241

if.then22:                                        ; preds = %if.then14
  br label %while.body, !dbg !242, !llvm.loop !234

if.end23:                                         ; preds = %if.then14
  br label %if.end24, !dbg !241

if.end24:                                         ; preds = %if.end23, %if.end11
  br label %if.end25, !dbg !238

if.end25:                                         ; preds = %if.end24, %if.end4
  store ptr null, ptr %retval, align 8, !dbg !227
  br label %return, !dbg !227

return:                                           ; preds = %if.end25, %if.then10
  %26 = load ptr, ptr %retval, align 8, !dbg !225
  ret ptr %26, !dbg !225

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @interval_tree_iter_next(ptr noundef %node, i64 noundef %start, i64 noundef %last) #0 align 16 !dbg !244 {
entry:
  %retval = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %last.addr = alloca i64, align 8
  %rb = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %right = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr9 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !246, metadata !DIExpression()), !dbg !260
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !247, metadata !DIExpression()), !dbg !260
  store i64 %last, ptr %last.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !248, metadata !DIExpression()), !dbg !260
  call void @llvm.lifetime.start.p0(i64 8, ptr %rb) #6, !dbg !260
  call void @llvm.dbg.declare(metadata ptr %rb, metadata !249, metadata !DIExpression()), !dbg !260
  %0 = load ptr, ptr %node.addr, align 8, !dbg !260
  %rb1 = getelementptr inbounds %struct.interval_tree_node, ptr %0, i32 0, i32 0, !dbg !260
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb1, i32 0, i32 1, !dbg !260
  %1 = load ptr, ptr %rb_right, align 8, !dbg !260
  store ptr %1, ptr %rb, align 8, !dbg !260
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #6, !dbg !260
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !250, metadata !DIExpression()), !dbg !260
  br label %while.cond, !dbg !260

while.cond:                                       ; preds = %if.end22, %entry
  br label %while.body, !dbg !260

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %rb, align 8, !dbg !261
  %tobool = icmp ne ptr %2, null, !dbg !261
  br i1 %tobool, label %if.then, label %if.end3, !dbg !262

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %right) #6, !dbg !263
  call void @llvm.dbg.declare(metadata ptr %right, metadata !251, metadata !DIExpression()), !dbg !263
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !264
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !255, metadata !DIExpression()), !dbg !264
  %3 = load ptr, ptr %rb, align 8, !dbg !264
  store ptr %3, ptr %__mptr, align 8, !dbg !264
  %4 = load ptr, ptr %__mptr, align 8, !dbg !264
  %add.ptr = getelementptr i8, ptr %4, i64 0, !dbg !264
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !264
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !263
  %5 = load ptr, ptr %tmp, align 8, !dbg !264
  store ptr %5, ptr %right, align 8, !dbg !263
  %6 = load i64, ptr %start.addr, align 8, !dbg !265
  %7 = load ptr, ptr %right, align 8, !dbg !265
  %__subtree_last = getelementptr inbounds %struct.interval_tree_node, ptr %7, i32 0, i32 3, !dbg !265
  %8 = load i64, ptr %__subtree_last, align 8, !dbg !265
  %cmp = icmp ule i64 %6, %8, !dbg !265
  br i1 %cmp, label %if.then2, label %if.end, !dbg !263

if.then2:                                         ; preds = %if.then
  %9 = load ptr, ptr %right, align 8, !dbg !265
  %10 = load i64, ptr %start.addr, align 8, !dbg !265
  %11 = load i64, ptr %last.addr, align 8, !dbg !265
  %call = call ptr @interval_tree_subtree_search(ptr noundef %9, i64 noundef %10, i64 noundef %11) #7, !dbg !265
  store ptr %call, ptr %retval, align 8, !dbg !265
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !265

if.end:                                           ; preds = %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !261
  br label %cleanup, !dbg !261

cleanup:                                          ; preds = %if.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %right) #6, !dbg !261
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup23 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end3, !dbg !263

if.end3:                                          ; preds = %cleanup.cont, %while.body
  br label %do.body, !dbg !262

do.body:                                          ; preds = %do.cond, %if.end3
  %12 = load ptr, ptr %node.addr, align 8, !dbg !267
  %rb4 = getelementptr inbounds %struct.interval_tree_node, ptr %12, i32 0, i32 0, !dbg !267
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %rb4, i32 0, i32 0, !dbg !267
  %13 = load i64, ptr %__rb_parent_color, align 8, !dbg !267
  %and = and i64 %13, -4, !dbg !267
  %14 = inttoptr i64 %and to ptr, !dbg !267
  store ptr %14, ptr %rb, align 8, !dbg !267
  %15 = load ptr, ptr %rb, align 8, !dbg !268
  %tobool5 = icmp ne ptr %15, null, !dbg !268
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !267

if.then6:                                         ; preds = %do.body
  store ptr null, ptr %retval, align 8, !dbg !268
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23, !dbg !268

if.end7:                                          ; preds = %do.body
  %16 = load ptr, ptr %node.addr, align 8, !dbg !267
  %rb8 = getelementptr inbounds %struct.interval_tree_node, ptr %16, i32 0, i32 0, !dbg !267
  store ptr %rb8, ptr %prev, align 8, !dbg !267
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #6, !dbg !270
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !257, metadata !DIExpression()), !dbg !270
  %17 = load ptr, ptr %rb, align 8, !dbg !270
  store ptr %17, ptr %__mptr9, align 8, !dbg !270
  %18 = load ptr, ptr %__mptr9, align 8, !dbg !270
  %add.ptr11 = getelementptr i8, ptr %18, i64 0, !dbg !270
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !270
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #6, !dbg !267
  %19 = load ptr, ptr %tmp10, align 8, !dbg !270
  store ptr %19, ptr %node.addr, align 8, !dbg !267
  %20 = load ptr, ptr %node.addr, align 8, !dbg !267
  %rb12 = getelementptr inbounds %struct.interval_tree_node, ptr %20, i32 0, i32 0, !dbg !267
  %rb_right13 = getelementptr inbounds %struct.rb_node, ptr %rb12, i32 0, i32 1, !dbg !267
  %21 = load ptr, ptr %rb_right13, align 8, !dbg !267
  store ptr %21, ptr %rb, align 8, !dbg !267
  br label %do.cond, !dbg !267

do.cond:                                          ; preds = %if.end7
  %22 = load ptr, ptr %prev, align 8, !dbg !262
  %23 = load ptr, ptr %rb, align 8, !dbg !262
  %cmp14 = icmp eq ptr %22, %23, !dbg !262
  br i1 %cmp14, label %do.body, label %do.end, !dbg !267, !llvm.loop !271

do.end:                                           ; preds = %do.cond
  %24 = load i64, ptr %last.addr, align 8, !dbg !272
  %25 = load ptr, ptr %node.addr, align 8, !dbg !272
  %start15 = getelementptr inbounds %struct.interval_tree_node, ptr %25, i32 0, i32 1, !dbg !272
  %26 = load i64, ptr %start15, align 8, !dbg !272
  %cmp16 = icmp ult i64 %24, %26, !dbg !272
  br i1 %cmp16, label %if.then17, label %if.else, !dbg !262

if.then17:                                        ; preds = %do.end
  store ptr null, ptr %retval, align 8, !dbg !272
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23, !dbg !272

if.else:                                          ; preds = %do.end
  %27 = load i64, ptr %start.addr, align 8, !dbg !274
  %28 = load ptr, ptr %node.addr, align 8, !dbg !274
  %last18 = getelementptr inbounds %struct.interval_tree_node, ptr %28, i32 0, i32 2, !dbg !274
  %29 = load i64, ptr %last18, align 8, !dbg !274
  %cmp19 = icmp ule i64 %27, %29, !dbg !274
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !272

if.then20:                                        ; preds = %if.else
  %30 = load ptr, ptr %node.addr, align 8, !dbg !274
  store ptr %30, ptr %retval, align 8, !dbg !274
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23, !dbg !274

if.end21:                                         ; preds = %if.else
  br label %if.end22

if.end22:                                         ; preds = %if.end21
  br label %while.cond, !dbg !260, !llvm.loop !276

cleanup23:                                        ; preds = %if.then20, %if.then17, %if.then6, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #6, !dbg !260
  call void @llvm.lifetime.end.p0(i64 8, ptr %rb) #6, !dbg !260
  %31 = load ptr, ptr %retval, align 8, !dbg !260
  ret ptr %31, !dbg !260
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_insert_augmented(ptr noundef %node, ptr noundef %root, ptr noundef %augment) #3 align 16 !dbg !277 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %augment.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !282, metadata !DIExpression()), !dbg !285
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !283, metadata !DIExpression()), !dbg !286
  store ptr %augment, ptr %augment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %augment.addr, metadata !284, metadata !DIExpression()), !dbg !287
  %0 = load ptr, ptr %node.addr, align 8, !dbg !288
  %1 = load ptr, ptr %root.addr, align 8, !dbg !289
  %2 = load ptr, ptr %augment.addr, align 8, !dbg !290
  %rotate = getelementptr inbounds %struct.rb_augment_callbacks, ptr %2, i32 0, i32 2, !dbg !291
  %3 = load ptr, ptr %rotate, align 8, !dbg !291
  call void @__rb_insert_augmented(ptr noundef %0, ptr noundef %1, ptr noundef %3) #7, !dbg !292
  ret void, !dbg !293
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !294 dso_local void @__rb_insert_augmented(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @interval_tree_augment_propagate(ptr noundef %rb, ptr noundef %stop) #3 align 16 !dbg !297 {
entry:
  %rb.addr = alloca ptr, align 8
  %stop.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !299, metadata !DIExpression()), !dbg !305
  store ptr %stop, ptr %stop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stop.addr, metadata !300, metadata !DIExpression()), !dbg !305
  br label %while.cond, !dbg !305

while.cond:                                       ; preds = %cleanup.cont, %entry
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !305
  %1 = load ptr, ptr %stop.addr, align 8, !dbg !305
  %cmp = icmp ne ptr %0, %1, !dbg !305
  br i1 %cmp, label %while.body, label %while.end, !dbg !305

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #6, !dbg !306
  call void @llvm.dbg.declare(metadata ptr %node, metadata !301, metadata !DIExpression()), !dbg !306
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !307
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !303, metadata !DIExpression()), !dbg !307
  %2 = load ptr, ptr %rb.addr, align 8, !dbg !307
  store ptr %2, ptr %__mptr, align 8, !dbg !307
  %3 = load ptr, ptr %__mptr, align 8, !dbg !307
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !307
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !307
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !306
  %4 = load ptr, ptr %tmp, align 8, !dbg !307
  store ptr %4, ptr %node, align 8, !dbg !306
  %5 = load ptr, ptr %node, align 8, !dbg !308
  %call = call zeroext i1 @interval_tree_augment_compute_max(ptr noundef %5, i1 noundef zeroext true) #7, !dbg !308
  br i1 %call, label %if.then, label %if.end, !dbg !306

if.then:                                          ; preds = %while.body
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !308

if.end:                                           ; preds = %while.body
  %6 = load ptr, ptr %node, align 8, !dbg !306
  %rb1 = getelementptr inbounds %struct.interval_tree_node, ptr %6, i32 0, i32 0, !dbg !306
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %rb1, i32 0, i32 0, !dbg !306
  %7 = load i64, ptr %__rb_parent_color, align 8, !dbg !306
  %and = and i64 %7, -4, !dbg !306
  %8 = inttoptr i64 %and to ptr, !dbg !306
  store ptr %8, ptr %rb.addr, align 8, !dbg !306
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !305
  br label %cleanup, !dbg !305

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #6, !dbg !305
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !305, !llvm.loop !310

while.end:                                        ; preds = %cleanup, %while.cond
  ret void, !dbg !305

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @interval_tree_augment_copy(ptr noundef %rb_old, ptr noundef %rb_new) #3 align 16 !dbg !311 {
entry:
  %rb_old.addr = alloca ptr, align 8
  %rb_new.addr = alloca ptr, align 8
  %old = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %new = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %rb_old, ptr %rb_old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_old.addr, metadata !313, metadata !DIExpression()), !dbg !321
  store ptr %rb_new, ptr %rb_new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_new.addr, metadata !314, metadata !DIExpression()), !dbg !321
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #6, !dbg !321
  call void @llvm.dbg.declare(metadata ptr %old, metadata !315, metadata !DIExpression()), !dbg !321
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !322
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !316, metadata !DIExpression()), !dbg !322
  %0 = load ptr, ptr %rb_old.addr, align 8, !dbg !322
  store ptr %0, ptr %__mptr, align 8, !dbg !322
  %1 = load ptr, ptr %__mptr, align 8, !dbg !322
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !322
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !322
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !321
  %2 = load ptr, ptr %tmp, align 8, !dbg !322
  store ptr %2, ptr %old, align 8, !dbg !321
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #6, !dbg !321
  call void @llvm.dbg.declare(metadata ptr %new, metadata !318, metadata !DIExpression()), !dbg !321
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #6, !dbg !323
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !319, metadata !DIExpression()), !dbg !323
  %3 = load ptr, ptr %rb_new.addr, align 8, !dbg !323
  store ptr %3, ptr %__mptr1, align 8, !dbg !323
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !323
  %add.ptr3 = getelementptr i8, ptr %4, i64 0, !dbg !323
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !323
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #6, !dbg !321
  %5 = load ptr, ptr %tmp2, align 8, !dbg !323
  store ptr %5, ptr %new, align 8, !dbg !321
  %6 = load ptr, ptr %old, align 8, !dbg !321
  %__subtree_last = getelementptr inbounds %struct.interval_tree_node, ptr %6, i32 0, i32 3, !dbg !321
  %7 = load i64, ptr %__subtree_last, align 8, !dbg !321
  %8 = load ptr, ptr %new, align 8, !dbg !321
  %__subtree_last4 = getelementptr inbounds %struct.interval_tree_node, ptr %8, i32 0, i32 3, !dbg !321
  store i64 %7, ptr %__subtree_last4, align 8, !dbg !321
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #6, !dbg !321
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #6, !dbg !321
  ret void, !dbg !321
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @interval_tree_augment_rotate(ptr noundef %rb_old, ptr noundef %rb_new) #0 align 16 !dbg !324 {
entry:
  %rb_old.addr = alloca ptr, align 8
  %rb_new.addr = alloca ptr, align 8
  %old = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %new = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %rb_old, ptr %rb_old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_old.addr, metadata !326, metadata !DIExpression()), !dbg !334
  store ptr %rb_new, ptr %rb_new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_new.addr, metadata !327, metadata !DIExpression()), !dbg !334
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #6, !dbg !334
  call void @llvm.dbg.declare(metadata ptr %old, metadata !328, metadata !DIExpression()), !dbg !334
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !335
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !329, metadata !DIExpression()), !dbg !335
  %0 = load ptr, ptr %rb_old.addr, align 8, !dbg !335
  store ptr %0, ptr %__mptr, align 8, !dbg !335
  %1 = load ptr, ptr %__mptr, align 8, !dbg !335
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !335
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !335
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !334
  %2 = load ptr, ptr %tmp, align 8, !dbg !335
  store ptr %2, ptr %old, align 8, !dbg !334
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #6, !dbg !334
  call void @llvm.dbg.declare(metadata ptr %new, metadata !331, metadata !DIExpression()), !dbg !334
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #6, !dbg !336
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !332, metadata !DIExpression()), !dbg !336
  %3 = load ptr, ptr %rb_new.addr, align 8, !dbg !336
  store ptr %3, ptr %__mptr1, align 8, !dbg !336
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !336
  %add.ptr3 = getelementptr i8, ptr %4, i64 0, !dbg !336
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !336
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #6, !dbg !334
  %5 = load ptr, ptr %tmp2, align 8, !dbg !336
  store ptr %5, ptr %new, align 8, !dbg !334
  %6 = load ptr, ptr %old, align 8, !dbg !334
  %__subtree_last = getelementptr inbounds %struct.interval_tree_node, ptr %6, i32 0, i32 3, !dbg !334
  %7 = load i64, ptr %__subtree_last, align 8, !dbg !334
  %8 = load ptr, ptr %new, align 8, !dbg !334
  %__subtree_last4 = getelementptr inbounds %struct.interval_tree_node, ptr %8, i32 0, i32 3, !dbg !334
  store i64 %7, ptr %__subtree_last4, align 8, !dbg !334
  %9 = load ptr, ptr %old, align 8, !dbg !334
  %call = call zeroext i1 @interval_tree_augment_compute_max(ptr noundef %9, i1 noundef zeroext false) #7, !dbg !334
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #6, !dbg !334
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #6, !dbg !334
  ret void, !dbg !334
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @interval_tree_augment_compute_max(ptr noundef %node, i1 noundef zeroext %exit) #3 align 16 !dbg !337 {
entry:
  %retval = alloca i1, align 1
  %node.addr = alloca ptr, align 8
  %exit.addr = alloca i8, align 1
  %child = alloca ptr, align 8
  %max = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !341, metadata !DIExpression()), !dbg !353
  %frombool = zext i1 %exit to i8
  store i8 %frombool, ptr %exit.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %exit.addr, metadata !342, metadata !DIExpression()), !dbg !353
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #6, !dbg !353
  call void @llvm.dbg.declare(metadata ptr %child, metadata !343, metadata !DIExpression()), !dbg !353
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #6, !dbg !353
  call void @llvm.dbg.declare(metadata ptr %max, metadata !344, metadata !DIExpression()), !dbg !353
  %0 = load ptr, ptr %node.addr, align 8, !dbg !353
  %last = getelementptr inbounds %struct.interval_tree_node, ptr %0, i32 0, i32 2, !dbg !353
  %1 = load i64, ptr %last, align 8, !dbg !353
  store i64 %1, ptr %max, align 8, !dbg !353
  %2 = load ptr, ptr %node.addr, align 8, !dbg !354
  %rb = getelementptr inbounds %struct.interval_tree_node, ptr %2, i32 0, i32 0, !dbg !354
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rb, i32 0, i32 2, !dbg !354
  %3 = load ptr, ptr %rb_left, align 8, !dbg !354
  %tobool = icmp ne ptr %3, null, !dbg !354
  br i1 %tobool, label %if.then, label %if.end5, !dbg !353

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !355
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !345, metadata !DIExpression()), !dbg !355
  %4 = load ptr, ptr %node.addr, align 8, !dbg !355
  %rb1 = getelementptr inbounds %struct.interval_tree_node, ptr %4, i32 0, i32 0, !dbg !355
  %rb_left2 = getelementptr inbounds %struct.rb_node, ptr %rb1, i32 0, i32 2, !dbg !355
  %5 = load ptr, ptr %rb_left2, align 8, !dbg !355
  store ptr %5, ptr %__mptr, align 8, !dbg !355
  %6 = load ptr, ptr %__mptr, align 8, !dbg !355
  %add.ptr = getelementptr i8, ptr %6, i64 0, !dbg !355
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !355
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !356
  %7 = load ptr, ptr %tmp, align 8, !dbg !355
  store ptr %7, ptr %child, align 8, !dbg !356
  %8 = load ptr, ptr %child, align 8, !dbg !357
  %__subtree_last = getelementptr inbounds %struct.interval_tree_node, ptr %8, i32 0, i32 3, !dbg !357
  %9 = load i64, ptr %__subtree_last, align 8, !dbg !357
  %10 = load i64, ptr %max, align 8, !dbg !357
  %cmp = icmp ugt i64 %9, %10, !dbg !357
  br i1 %cmp, label %if.then3, label %if.end, !dbg !356

if.then3:                                         ; preds = %if.then
  %11 = load ptr, ptr %child, align 8, !dbg !357
  %__subtree_last4 = getelementptr inbounds %struct.interval_tree_node, ptr %11, i32 0, i32 3, !dbg !357
  %12 = load i64, ptr %__subtree_last4, align 8, !dbg !357
  store i64 %12, ptr %max, align 8, !dbg !357
  br label %if.end, !dbg !357

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end5, !dbg !356

if.end5:                                          ; preds = %if.end, %entry
  %13 = load ptr, ptr %node.addr, align 8, !dbg !359
  %rb6 = getelementptr inbounds %struct.interval_tree_node, ptr %13, i32 0, i32 0, !dbg !359
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb6, i32 0, i32 1, !dbg !359
  %14 = load ptr, ptr %rb_right, align 8, !dbg !359
  %tobool7 = icmp ne ptr %14, null, !dbg !359
  br i1 %tobool7, label %if.then8, label %if.end19, !dbg !353

if.then8:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #6, !dbg !360
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !349, metadata !DIExpression()), !dbg !360
  %15 = load ptr, ptr %node.addr, align 8, !dbg !360
  %rb10 = getelementptr inbounds %struct.interval_tree_node, ptr %15, i32 0, i32 0, !dbg !360
  %rb_right11 = getelementptr inbounds %struct.rb_node, ptr %rb10, i32 0, i32 1, !dbg !360
  %16 = load ptr, ptr %rb_right11, align 8, !dbg !360
  store ptr %16, ptr %__mptr9, align 8, !dbg !360
  %17 = load ptr, ptr %__mptr9, align 8, !dbg !360
  %add.ptr13 = getelementptr i8, ptr %17, i64 0, !dbg !360
  store ptr %add.ptr13, ptr %tmp12, align 8, !dbg !360
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #6, !dbg !361
  %18 = load ptr, ptr %tmp12, align 8, !dbg !360
  store ptr %18, ptr %child, align 8, !dbg !361
  %19 = load ptr, ptr %child, align 8, !dbg !362
  %__subtree_last14 = getelementptr inbounds %struct.interval_tree_node, ptr %19, i32 0, i32 3, !dbg !362
  %20 = load i64, ptr %__subtree_last14, align 8, !dbg !362
  %21 = load i64, ptr %max, align 8, !dbg !362
  %cmp15 = icmp ugt i64 %20, %21, !dbg !362
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !361

if.then16:                                        ; preds = %if.then8
  %22 = load ptr, ptr %child, align 8, !dbg !362
  %__subtree_last17 = getelementptr inbounds %struct.interval_tree_node, ptr %22, i32 0, i32 3, !dbg !362
  %23 = load i64, ptr %__subtree_last17, align 8, !dbg !362
  store i64 %23, ptr %max, align 8, !dbg !362
  br label %if.end18, !dbg !362

if.end18:                                         ; preds = %if.then16, %if.then8
  br label %if.end19, !dbg !361

if.end19:                                         ; preds = %if.end18, %if.end5
  %24 = load i8, ptr %exit.addr, align 1, !dbg !364, !range !98, !noundef !99
  %tobool20 = trunc i8 %24 to i1, !dbg !364
  br i1 %tobool20, label %land.lhs.true, label %if.end24, !dbg !364

land.lhs.true:                                    ; preds = %if.end19
  %25 = load ptr, ptr %node.addr, align 8, !dbg !364
  %__subtree_last21 = getelementptr inbounds %struct.interval_tree_node, ptr %25, i32 0, i32 3, !dbg !364
  %26 = load i64, ptr %__subtree_last21, align 8, !dbg !364
  %27 = load i64, ptr %max, align 8, !dbg !364
  %cmp22 = icmp eq i64 %26, %27, !dbg !364
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !353

if.then23:                                        ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !364
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !364

if.end24:                                         ; preds = %land.lhs.true, %if.end19
  %28 = load i64, ptr %max, align 8, !dbg !353
  %29 = load ptr, ptr %node.addr, align 8, !dbg !353
  %__subtree_last25 = getelementptr inbounds %struct.interval_tree_node, ptr %29, i32 0, i32 3, !dbg !353
  store i64 %28, ptr %__subtree_last25, align 8, !dbg !353
  store i1 false, ptr %retval, align 1, !dbg !353
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !353

cleanup:                                          ; preds = %if.end24, %if.then23
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #6, !dbg !353
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #6, !dbg !353
  %30 = load i1, ptr %retval, align 1, !dbg !353
  ret i1 %30, !dbg !353
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !366 dso_local ptr @rb_next(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_erase_augmented(ptr noundef %node, ptr noundef %root, ptr noundef %augment) #4 align 16 !dbg !371 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %augment.addr = alloca ptr, align 8
  %rebalance = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !373, metadata !DIExpression()), !dbg !377
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !374, metadata !DIExpression()), !dbg !378
  store ptr %augment, ptr %augment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %augment.addr, metadata !375, metadata !DIExpression()), !dbg !379
  call void @llvm.lifetime.start.p0(i64 8, ptr %rebalance) #6, !dbg !380
  call void @llvm.dbg.declare(metadata ptr %rebalance, metadata !376, metadata !DIExpression()), !dbg !381
  %0 = load ptr, ptr %node.addr, align 8, !dbg !382
  %1 = load ptr, ptr %root.addr, align 8, !dbg !383
  %2 = load ptr, ptr %augment.addr, align 8, !dbg !384
  %call = call ptr @__rb_erase_augmented(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7, !dbg !385
  store ptr %call, ptr %rebalance, align 8, !dbg !381
  %3 = load ptr, ptr %rebalance, align 8, !dbg !386
  %tobool = icmp ne ptr %3, null, !dbg !386
  br i1 %tobool, label %if.then, label %if.end, !dbg !388

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %rebalance, align 8, !dbg !389
  %5 = load ptr, ptr %root.addr, align 8, !dbg !390
  %6 = load ptr, ptr %augment.addr, align 8, !dbg !391
  %rotate = getelementptr inbounds %struct.rb_augment_callbacks, ptr %6, i32 0, i32 2, !dbg !392
  %7 = load ptr, ptr %rotate, align 8, !dbg !392
  call void @__rb_erase_color(ptr noundef %4, ptr noundef %5, ptr noundef %7) #7, !dbg !393
  br label %if.end, !dbg !393

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %rebalance) #6, !dbg !394
  ret void, !dbg !394
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__rb_erase_augmented(ptr noundef %node, ptr noundef %root, ptr noundef %augment) #4 align 16 !dbg !395 {
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
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !399, metadata !DIExpression()), !dbg !412
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !400, metadata !DIExpression()), !dbg !413
  store ptr %augment, ptr %augment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %augment.addr, metadata !401, metadata !DIExpression()), !dbg !414
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #6, !dbg !415
  call void @llvm.dbg.declare(metadata ptr %child, metadata !402, metadata !DIExpression()), !dbg !416
  %0 = load ptr, ptr %node.addr, align 8, !dbg !417
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 1, !dbg !418
  %1 = load ptr, ptr %rb_right, align 8, !dbg !418
  store ptr %1, ptr %child, align 8, !dbg !416
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #6, !dbg !419
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !403, metadata !DIExpression()), !dbg !420
  %2 = load ptr, ptr %node.addr, align 8, !dbg !421
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 2, !dbg !422
  %3 = load ptr, ptr %rb_left, align 8, !dbg !422
  store ptr %3, ptr %tmp, align 8, !dbg !420
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #6, !dbg !423
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !404, metadata !DIExpression()), !dbg !424
  call void @llvm.lifetime.start.p0(i64 8, ptr %rebalance) #6, !dbg !423
  call void @llvm.dbg.declare(metadata ptr %rebalance, metadata !405, metadata !DIExpression()), !dbg !425
  call void @llvm.lifetime.start.p0(i64 8, ptr %pc) #6, !dbg !426
  call void @llvm.dbg.declare(metadata ptr %pc, metadata !406, metadata !DIExpression()), !dbg !427
  %4 = load ptr, ptr %tmp, align 8, !dbg !428
  %tobool = icmp ne ptr %4, null, !dbg !428
  br i1 %tobool, label %if.else6, label %if.then, !dbg !429

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %node.addr, align 8, !dbg !430
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 0, !dbg !432
  %6 = load i64, ptr %__rb_parent_color, align 8, !dbg !432
  store i64 %6, ptr %pc, align 8, !dbg !433
  %7 = load i64, ptr %pc, align 8, !dbg !434
  %and = and i64 %7, -4, !dbg !434
  %8 = inttoptr i64 %and to ptr, !dbg !434
  store ptr %8, ptr %parent, align 8, !dbg !435
  %9 = load ptr, ptr %node.addr, align 8, !dbg !436
  %10 = load ptr, ptr %child, align 8, !dbg !437
  %11 = load ptr, ptr %parent, align 8, !dbg !438
  %12 = load ptr, ptr %root.addr, align 8, !dbg !439
  call void @__rb_change_child(ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) #7, !dbg !440
  %13 = load ptr, ptr %child, align 8, !dbg !441
  %tobool1 = icmp ne ptr %13, null, !dbg !441
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !443

if.then2:                                         ; preds = %if.then
  %14 = load i64, ptr %pc, align 8, !dbg !444
  %15 = load ptr, ptr %child, align 8, !dbg !446
  %__rb_parent_color3 = getelementptr inbounds %struct.rb_node, ptr %15, i32 0, i32 0, !dbg !447
  store i64 %14, ptr %__rb_parent_color3, align 8, !dbg !448
  store ptr null, ptr %rebalance, align 8, !dbg !449
  br label %if.end, !dbg !450

if.else:                                          ; preds = %if.then
  %16 = load i64, ptr %pc, align 8, !dbg !451
  %and4 = and i64 %16, 1, !dbg !451
  %tobool5 = icmp ne i64 %and4, 0, !dbg !451
  br i1 %tobool5, label %cond.true, label %cond.false, !dbg !451

cond.true:                                        ; preds = %if.else
  %17 = load ptr, ptr %parent, align 8, !dbg !452
  br label %cond.end, !dbg !451

cond.false:                                       ; preds = %if.else
  br label %cond.end, !dbg !451

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %17, %cond.true ], [ null, %cond.false ], !dbg !451
  store ptr %cond, ptr %rebalance, align 8, !dbg !453
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then2
  %18 = load ptr, ptr %parent, align 8, !dbg !454
  store ptr %18, ptr %tmp, align 8, !dbg !455
  br label %if.end69, !dbg !456

if.else6:                                         ; preds = %entry
  %19 = load ptr, ptr %child, align 8, !dbg !457
  %tobool7 = icmp ne ptr %19, null, !dbg !457
  br i1 %tobool7, label %if.else12, label %if.then8, !dbg !458

if.then8:                                         ; preds = %if.else6
  %20 = load ptr, ptr %node.addr, align 8, !dbg !459
  %__rb_parent_color9 = getelementptr inbounds %struct.rb_node, ptr %20, i32 0, i32 0, !dbg !461
  %21 = load i64, ptr %__rb_parent_color9, align 8, !dbg !461
  store i64 %21, ptr %pc, align 8, !dbg !462
  %22 = load ptr, ptr %tmp, align 8, !dbg !463
  %__rb_parent_color10 = getelementptr inbounds %struct.rb_node, ptr %22, i32 0, i32 0, !dbg !464
  store i64 %21, ptr %__rb_parent_color10, align 8, !dbg !465
  %23 = load i64, ptr %pc, align 8, !dbg !466
  %and11 = and i64 %23, -4, !dbg !466
  %24 = inttoptr i64 %and11 to ptr, !dbg !466
  store ptr %24, ptr %parent, align 8, !dbg !467
  %25 = load ptr, ptr %node.addr, align 8, !dbg !468
  %26 = load ptr, ptr %tmp, align 8, !dbg !469
  %27 = load ptr, ptr %parent, align 8, !dbg !470
  %28 = load ptr, ptr %root.addr, align 8, !dbg !471
  call void @__rb_change_child(ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28) #7, !dbg !472
  store ptr null, ptr %rebalance, align 8, !dbg !473
  %29 = load ptr, ptr %parent, align 8, !dbg !474
  store ptr %29, ptr %tmp, align 8, !dbg !475
  br label %if.end68, !dbg !476

if.else12:                                        ; preds = %if.else6
  call void @llvm.lifetime.start.p0(i64 8, ptr %successor) #6, !dbg !477
  call void @llvm.dbg.declare(metadata ptr %successor, metadata !407, metadata !DIExpression()), !dbg !478
  %30 = load ptr, ptr %child, align 8, !dbg !479
  store ptr %30, ptr %successor, align 8, !dbg !478
  call void @llvm.lifetime.start.p0(i64 8, ptr %child2) #6, !dbg !477
  call void @llvm.dbg.declare(metadata ptr %child2, metadata !411, metadata !DIExpression()), !dbg !480
  %31 = load ptr, ptr %child, align 8, !dbg !481
  %rb_left13 = getelementptr inbounds %struct.rb_node, ptr %31, i32 0, i32 2, !dbg !482
  %32 = load ptr, ptr %rb_left13, align 8, !dbg !482
  store ptr %32, ptr %tmp, align 8, !dbg !483
  %33 = load ptr, ptr %tmp, align 8, !dbg !484
  %tobool14 = icmp ne ptr %33, null, !dbg !484
  br i1 %tobool14, label %if.else17, label %if.then15, !dbg !486

if.then15:                                        ; preds = %if.else12
  %34 = load ptr, ptr %successor, align 8, !dbg !487
  store ptr %34, ptr %parent, align 8, !dbg !489
  %35 = load ptr, ptr %successor, align 8, !dbg !490
  %rb_right16 = getelementptr inbounds %struct.rb_node, ptr %35, i32 0, i32 1, !dbg !491
  %36 = load ptr, ptr %rb_right16, align 8, !dbg !491
  store ptr %36, ptr %child2, align 8, !dbg !492
  %37 = load ptr, ptr %augment.addr, align 8, !dbg !493
  %copy = getelementptr inbounds %struct.rb_augment_callbacks, ptr %37, i32 0, i32 1, !dbg !494
  %38 = load ptr, ptr %copy, align 8, !dbg !494
  %39 = load ptr, ptr %node.addr, align 8, !dbg !495
  %40 = load ptr, ptr %successor, align 8, !dbg !496
  call void %38(ptr noundef %39, ptr noundef %40) #7, !dbg !493
  br label %if.end42, !dbg !497

if.else17:                                        ; preds = %if.else12
  br label %do.body, !dbg !498

do.body:                                          ; preds = %do.cond, %if.else17
  %41 = load ptr, ptr %successor, align 8, !dbg !500
  store ptr %41, ptr %parent, align 8, !dbg !502
  %42 = load ptr, ptr %tmp, align 8, !dbg !503
  store ptr %42, ptr %successor, align 8, !dbg !504
  %43 = load ptr, ptr %tmp, align 8, !dbg !505
  %rb_left18 = getelementptr inbounds %struct.rb_node, ptr %43, i32 0, i32 2, !dbg !506
  %44 = load ptr, ptr %rb_left18, align 8, !dbg !506
  store ptr %44, ptr %tmp, align 8, !dbg !507
  br label %do.cond, !dbg !508

do.cond:                                          ; preds = %do.body
  %45 = load ptr, ptr %tmp, align 8, !dbg !509
  %tobool19 = icmp ne ptr %45, null, !dbg !508
  br i1 %tobool19, label %do.body, label %do.end, !dbg !508, !llvm.loop !510

do.end:                                           ; preds = %do.cond
  %46 = load ptr, ptr %successor, align 8, !dbg !512
  %rb_right20 = getelementptr inbounds %struct.rb_node, ptr %46, i32 0, i32 1, !dbg !513
  %47 = load ptr, ptr %rb_right20, align 8, !dbg !513
  store ptr %47, ptr %child2, align 8, !dbg !514
  br label %do.body21, !dbg !515

do.body21:                                        ; preds = %do.end
  br label %do.body22, !dbg !516

do.body22:                                        ; preds = %do.body21
  br label %do.cond23, !dbg !518

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !518

do.end24:                                         ; preds = %do.cond23
  br label %do.body25, !dbg !516

do.body25:                                        ; preds = %do.end24
  %48 = load ptr, ptr %child2, align 8, !dbg !520
  %49 = load ptr, ptr %parent, align 8, !dbg !520
  %rb_left26 = getelementptr inbounds %struct.rb_node, ptr %49, i32 0, i32 2, !dbg !520
  store volatile ptr %48, ptr %rb_left26, align 8, !dbg !520
  br label %do.cond27, !dbg !520

do.cond27:                                        ; preds = %do.body25
  br label %do.end28, !dbg !520

do.end28:                                         ; preds = %do.cond27
  br label %do.cond29, !dbg !516

do.cond29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !516

do.end30:                                         ; preds = %do.cond29
  br label %do.body31, !dbg !522

do.body31:                                        ; preds = %do.end30
  br label %do.body32, !dbg !523

do.body32:                                        ; preds = %do.body31
  br label %do.cond33, !dbg !525

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !525

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !523

do.body35:                                        ; preds = %do.end34
  %50 = load ptr, ptr %child, align 8, !dbg !527
  %51 = load ptr, ptr %successor, align 8, !dbg !527
  %rb_right36 = getelementptr inbounds %struct.rb_node, ptr %51, i32 0, i32 1, !dbg !527
  store volatile ptr %50, ptr %rb_right36, align 8, !dbg !527
  br label %do.cond37, !dbg !527

do.cond37:                                        ; preds = %do.body35
  br label %do.end38, !dbg !527

do.end38:                                         ; preds = %do.cond37
  br label %do.cond39, !dbg !523

do.cond39:                                        ; preds = %do.end38
  br label %do.end40, !dbg !523

do.end40:                                         ; preds = %do.cond39
  %52 = load ptr, ptr %child, align 8, !dbg !529
  %53 = load ptr, ptr %successor, align 8, !dbg !530
  call void @rb_set_parent(ptr noundef %52, ptr noundef %53) #7, !dbg !531
  %54 = load ptr, ptr %augment.addr, align 8, !dbg !532
  %copy41 = getelementptr inbounds %struct.rb_augment_callbacks, ptr %54, i32 0, i32 1, !dbg !533
  %55 = load ptr, ptr %copy41, align 8, !dbg !533
  %56 = load ptr, ptr %node.addr, align 8, !dbg !534
  %57 = load ptr, ptr %successor, align 8, !dbg !535
  call void %55(ptr noundef %56, ptr noundef %57) #7, !dbg !532
  %58 = load ptr, ptr %augment.addr, align 8, !dbg !536
  %propagate = getelementptr inbounds %struct.rb_augment_callbacks, ptr %58, i32 0, i32 0, !dbg !537
  %59 = load ptr, ptr %propagate, align 8, !dbg !537
  %60 = load ptr, ptr %parent, align 8, !dbg !538
  %61 = load ptr, ptr %successor, align 8, !dbg !539
  call void %59(ptr noundef %60, ptr noundef %61) #7, !dbg !536
  br label %if.end42

if.end42:                                         ; preds = %do.end40, %if.then15
  %62 = load ptr, ptr %node.addr, align 8, !dbg !540
  %rb_left43 = getelementptr inbounds %struct.rb_node, ptr %62, i32 0, i32 2, !dbg !541
  %63 = load ptr, ptr %rb_left43, align 8, !dbg !541
  store ptr %63, ptr %tmp, align 8, !dbg !542
  br label %do.body44, !dbg !543

do.body44:                                        ; preds = %if.end42
  br label %do.body45, !dbg !544

do.body45:                                        ; preds = %do.body44
  br label %do.cond46, !dbg !546

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !546

do.end47:                                         ; preds = %do.cond46
  br label %do.body48, !dbg !544

do.body48:                                        ; preds = %do.end47
  %64 = load ptr, ptr %tmp, align 8, !dbg !548
  %65 = load ptr, ptr %successor, align 8, !dbg !548
  %rb_left49 = getelementptr inbounds %struct.rb_node, ptr %65, i32 0, i32 2, !dbg !548
  store volatile ptr %64, ptr %rb_left49, align 8, !dbg !548
  br label %do.cond50, !dbg !548

do.cond50:                                        ; preds = %do.body48
  br label %do.end51, !dbg !548

do.end51:                                         ; preds = %do.cond50
  br label %do.cond52, !dbg !544

do.cond52:                                        ; preds = %do.end51
  br label %do.end53, !dbg !544

do.end53:                                         ; preds = %do.cond52
  %66 = load ptr, ptr %tmp, align 8, !dbg !550
  %67 = load ptr, ptr %successor, align 8, !dbg !551
  call void @rb_set_parent(ptr noundef %66, ptr noundef %67) #7, !dbg !552
  %68 = load ptr, ptr %node.addr, align 8, !dbg !553
  %__rb_parent_color54 = getelementptr inbounds %struct.rb_node, ptr %68, i32 0, i32 0, !dbg !554
  %69 = load i64, ptr %__rb_parent_color54, align 8, !dbg !554
  store i64 %69, ptr %pc, align 8, !dbg !555
  %70 = load i64, ptr %pc, align 8, !dbg !556
  %and55 = and i64 %70, -4, !dbg !556
  %71 = inttoptr i64 %and55 to ptr, !dbg !556
  store ptr %71, ptr %tmp, align 8, !dbg !557
  %72 = load ptr, ptr %node.addr, align 8, !dbg !558
  %73 = load ptr, ptr %successor, align 8, !dbg !559
  %74 = load ptr, ptr %tmp, align 8, !dbg !560
  %75 = load ptr, ptr %root.addr, align 8, !dbg !561
  call void @__rb_change_child(ptr noundef %72, ptr noundef %73, ptr noundef %74, ptr noundef %75) #7, !dbg !562
  %76 = load ptr, ptr %child2, align 8, !dbg !563
  %tobool56 = icmp ne ptr %76, null, !dbg !563
  br i1 %tobool56, label %if.then57, label %if.else58, !dbg !565

if.then57:                                        ; preds = %do.end53
  %77 = load ptr, ptr %child2, align 8, !dbg !566
  %78 = load ptr, ptr %parent, align 8, !dbg !568
  call void @rb_set_parent_color(ptr noundef %77, ptr noundef %78, i32 noundef 1) #7, !dbg !569
  store ptr null, ptr %rebalance, align 8, !dbg !570
  br label %if.end66, !dbg !571

if.else58:                                        ; preds = %do.end53
  %79 = load ptr, ptr %successor, align 8, !dbg !572
  %__rb_parent_color59 = getelementptr inbounds %struct.rb_node, ptr %79, i32 0, i32 0, !dbg !572
  %80 = load i64, ptr %__rb_parent_color59, align 8, !dbg !572
  %and60 = and i64 %80, 1, !dbg !572
  %tobool61 = icmp ne i64 %and60, 0, !dbg !572
  br i1 %tobool61, label %cond.true62, label %cond.false63, !dbg !572

cond.true62:                                      ; preds = %if.else58
  %81 = load ptr, ptr %parent, align 8, !dbg !574
  br label %cond.end64, !dbg !572

cond.false63:                                     ; preds = %if.else58
  br label %cond.end64, !dbg !572

cond.end64:                                       ; preds = %cond.false63, %cond.true62
  %cond65 = phi ptr [ %81, %cond.true62 ], [ null, %cond.false63 ], !dbg !572
  store ptr %cond65, ptr %rebalance, align 8, !dbg !575
  br label %if.end66

if.end66:                                         ; preds = %cond.end64, %if.then57
  %82 = load i64, ptr %pc, align 8, !dbg !576
  %83 = load ptr, ptr %successor, align 8, !dbg !577
  %__rb_parent_color67 = getelementptr inbounds %struct.rb_node, ptr %83, i32 0, i32 0, !dbg !578
  store i64 %82, ptr %__rb_parent_color67, align 8, !dbg !579
  %84 = load ptr, ptr %successor, align 8, !dbg !580
  store ptr %84, ptr %tmp, align 8, !dbg !581
  call void @llvm.lifetime.end.p0(i64 8, ptr %child2) #6, !dbg !582
  call void @llvm.lifetime.end.p0(i64 8, ptr %successor) #6, !dbg !582
  br label %if.end68

if.end68:                                         ; preds = %if.end66, %if.then8
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end
  %85 = load ptr, ptr %augment.addr, align 8, !dbg !583
  %propagate70 = getelementptr inbounds %struct.rb_augment_callbacks, ptr %85, i32 0, i32 0, !dbg !584
  %86 = load ptr, ptr %propagate70, align 8, !dbg !584
  %87 = load ptr, ptr %tmp, align 8, !dbg !585
  call void %86(ptr noundef %87, ptr noundef null) #7, !dbg !583
  %88 = load ptr, ptr %rebalance, align 8, !dbg !586
  call void @llvm.lifetime.end.p0(i64 8, ptr %pc) #6, !dbg !587
  call void @llvm.lifetime.end.p0(i64 8, ptr %rebalance) #6, !dbg !587
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #6, !dbg !587
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #6, !dbg !587
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #6, !dbg !587
  ret ptr %88, !dbg !588
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !589 dso_local void @__rb_erase_color(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__rb_change_child(ptr noundef %old, ptr noundef %new, ptr noundef %parent, ptr noundef %root) #3 align 16 !dbg !590 {
entry:
  %old.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !594, metadata !DIExpression()), !dbg !598
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !595, metadata !DIExpression()), !dbg !599
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !596, metadata !DIExpression()), !dbg !600
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !597, metadata !DIExpression()), !dbg !601
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !602
  %tobool = icmp ne ptr %0, null, !dbg !602
  br i1 %tobool, label %if.then, label %if.else13, !dbg !604

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !605
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 2, !dbg !608
  %2 = load ptr, ptr %rb_left, align 8, !dbg !608
  %3 = load ptr, ptr %old.addr, align 8, !dbg !609
  %cmp = icmp eq ptr %2, %3, !dbg !610
  br i1 %cmp, label %if.then1, label %if.else, !dbg !611

if.then1:                                         ; preds = %if.then
  br label %do.body, !dbg !612

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !613

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !615

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !613

do.body3:                                         ; preds = %do.end
  %4 = load ptr, ptr %new.addr, align 8, !dbg !617
  %5 = load ptr, ptr %parent.addr, align 8, !dbg !617
  %rb_left4 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 2, !dbg !617
  store volatile ptr %4, ptr %rb_left4, align 8, !dbg !617
  br label %do.end5, !dbg !617

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !613

do.end6:                                          ; preds = %do.end5
  br label %if.end, !dbg !613

if.else:                                          ; preds = %if.then
  br label %do.body7, !dbg !619

do.body7:                                         ; preds = %if.else
  br label %do.body8, !dbg !620

do.body8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !622

do.end9:                                          ; preds = %do.body8
  br label %do.body10, !dbg !620

do.body10:                                        ; preds = %do.end9
  %6 = load ptr, ptr %new.addr, align 8, !dbg !624
  %7 = load ptr, ptr %parent.addr, align 8, !dbg !624
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 1, !dbg !624
  store volatile ptr %6, ptr %rb_right, align 8, !dbg !624
  br label %do.end11, !dbg !624

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !620

do.end12:                                         ; preds = %do.end11
  br label %if.end

if.end:                                           ; preds = %do.end12, %do.end6
  br label %if.end20, !dbg !626

if.else13:                                        ; preds = %entry
  br label %do.body14, !dbg !627

do.body14:                                        ; preds = %if.else13
  br label %do.body15, !dbg !628

do.body15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !630

do.end16:                                         ; preds = %do.body15
  br label %do.body17, !dbg !628

do.body17:                                        ; preds = %do.end16
  %8 = load ptr, ptr %new.addr, align 8, !dbg !632
  %9 = load ptr, ptr %root.addr, align 8, !dbg !632
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %9, i32 0, i32 0, !dbg !632
  store volatile ptr %8, ptr %rb_node, align 8, !dbg !632
  br label %do.end18, !dbg !632

do.end18:                                         ; preds = %do.body17
  br label %do.end19, !dbg !628

do.end19:                                         ; preds = %do.end18
  br label %if.end20

if.end20:                                         ; preds = %do.end19, %if.end
  ret void, !dbg !634
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_set_parent(ptr noundef %rb, ptr noundef %p) #3 align 16 !dbg !635 {
entry:
  %rb.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !637, metadata !DIExpression()), !dbg !639
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !638, metadata !DIExpression()), !dbg !640
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !641
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 0, !dbg !641
  %1 = load i64, ptr %__rb_parent_color, align 8, !dbg !641
  %and = and i64 %1, 1, !dbg !641
  %2 = load ptr, ptr %p.addr, align 8, !dbg !642
  %3 = ptrtoint ptr %2 to i64, !dbg !643
  %add = add i64 %and, %3, !dbg !644
  %4 = load ptr, ptr %rb.addr, align 8, !dbg !645
  %__rb_parent_color1 = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 0, !dbg !646
  store i64 %add, ptr %__rb_parent_color1, align 8, !dbg !647
  ret void, !dbg !648
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_set_parent_color(ptr noundef %rb, ptr noundef %p, i32 noundef %color) #3 align 16 !dbg !649 {
entry:
  %rb.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %color.addr = alloca i32, align 4
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !654, metadata !DIExpression()), !dbg !657
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !655, metadata !DIExpression()), !dbg !658
  store i32 %color, ptr %color.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %color.addr, metadata !656, metadata !DIExpression()), !dbg !659
  %0 = load ptr, ptr %p.addr, align 8, !dbg !660
  %1 = ptrtoint ptr %0 to i64, !dbg !661
  %2 = load i32, ptr %color.addr, align 4, !dbg !662
  %conv = sext i32 %2 to i64, !dbg !662
  %add = add i64 %1, %conv, !dbg !663
  %3 = load ptr, ptr %rb.addr, align 8, !dbg !664
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 0, !dbg !665
  store i64 %add, ptr %__rb_parent_color, align 8, !dbg !666
  ret void, !dbg !667
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "interval_tree_augment", scope: !2, file: !3, line: 10, type: !40, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.interval_tree.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/interval_tree\22 -D KBUILD_BASENAME=\22interval_tree\22 -D KBUILD_MODNAME=\22interval_tree\22 -D __KBUILD_MODNAME=kmod_interval_tree -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/interval_tree.ll lib/interval_tree.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !31, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/interval_tree.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "22c3a436678233c86ccd354edaea8297")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !13, !24, !22, !29}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "interval_tree_node", file: !15, line: 7, size: 384, elements: !16)
!15 = !DIFile(filename: "./include/linux/interval_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "94f3524c238b848ebf78105e19d513b3")
!16 = !{!17, !26, !27, !28}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !14, file: !15, line: 8, baseType: !18, size: 192, align: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !19, line: 5, size: 192, align: 64, elements: !20)
!19 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!20 = !{!21, !23, !25}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !18, file: !19, line: 6, baseType: !22, size: 64)
!22 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !18, file: !19, line: 7, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !18, file: !19, line: 8, baseType: !24, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !14, file: !15, line: 9, baseType: !22, size: 64, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !14, file: !15, line: 10, baseType: !22, size: 64, offset: 256)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "__subtree_last", scope: !14, file: !15, line: 11, baseType: !22, size: 64, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!31 = !{!32, !34, !36, !38, !0}
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_interval_tree_insert64", scope: !2, file: !3, line: 14, type: !12, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_interval_tree_remove65", scope: !2, file: !3, line: 15, type: !12, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_interval_tree_iter_first66", scope: !2, file: !3, line: 16, type: !12, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_interval_tree_iter_next67", scope: !2, file: !3, line: 17, type: !12, isLocal: true, isDefinition: true)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_augment_callbacks", file: !42, line: 27, size: 192, elements: !43)
!42 = !DIFile(filename: "./include/linux/rbtree_augmented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6ddc521985c4f988291280d937ba9ac7")
!43 = !{!44, !48, !49}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "propagate", scope: !41, file: !42, line: 28, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !24, !24}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !41, file: !42, line: 29, baseType: !45, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "rotate", scope: !41, file: !42, line: 30, baseType: !45, size: 64, offset: 128)
!50 = !{i32 7, !"Dwarf Version", i32 5}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 8, !"cf-protection-branch", i32 1}
!54 = !{i32 4, !"function_return_thunk_extern", i32 1}
!55 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!56 = !{i32 1, !"Code Model", i32 2}
!57 = !{i32 1, !"override-stack-alignment", i32 8}
!58 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!59 = distinct !DISubprogram(name: "interval_tree_insert", scope: !3, file: !3, line: 10, type: !60, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !70)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !13, !62}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !19, line: 26, size: 128, elements: !64)
!64 = !{!65, !69}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !63, file: !19, line: 27, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !19, line: 12, size: 64, elements: !67)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !66, file: !19, line: 13, baseType: !24, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !63, file: !19, line: 28, baseType: !24, size: 64, offset: 64)
!70 = !{!71, !72, !73, !75, !76, !77, !78, !79, !83}
!71 = !DILocalVariable(name: "node", arg: 1, scope: !59, file: !3, line: 10, type: !13)
!72 = !DILocalVariable(name: "root", arg: 2, scope: !59, file: !3, line: 10, type: !62)
!73 = !DILocalVariable(name: "link", scope: !59, file: !3, line: 10, type: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!75 = !DILocalVariable(name: "rb_parent", scope: !59, file: !3, line: 10, type: !24)
!76 = !DILocalVariable(name: "start", scope: !59, file: !3, line: 10, type: !22)
!77 = !DILocalVariable(name: "last", scope: !59, file: !3, line: 10, type: !22)
!78 = !DILocalVariable(name: "parent", scope: !59, file: !3, line: 10, type: !13)
!79 = !DILocalVariable(name: "leftmost", scope: !59, file: !3, line: 10, type: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !81, line: 35, baseType: !82)
!81 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!82 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!83 = !DILocalVariable(name: "__mptr", scope: !84, file: !3, line: 10, type: !12)
!84 = distinct !DILexicalBlock(scope: !85, file: !3, line: 10, column: 1)
!85 = distinct !DILexicalBlock(scope: !59, file: !3, line: 10, column: 1)
!86 = !DILocation(line: 10, column: 1, scope: !59)
!87 = !DILocation(line: 10, column: 1, scope: !85)
!88 = !DILocation(line: 10, column: 1, scope: !84)
!89 = !DILocation(line: 10, column: 1, scope: !90)
!90 = distinct !DILexicalBlock(scope: !85, file: !3, line: 10, column: 1)
!91 = !DILocation(line: 10, column: 1, scope: !92)
!92 = distinct !DILexicalBlock(scope: !85, file: !3, line: 10, column: 1)
!93 = !DILocation(line: 10, column: 1, scope: !94)
!94 = distinct !DILexicalBlock(scope: !92, file: !3, line: 10, column: 1)
!95 = distinct !{!95, !86, !86, !96, !97}
!96 = !{!"llvm.loop.mustprogress"}
!97 = !{!"llvm.loop.unroll.disable"}
!98 = !{i8 0, i8 2}
!99 = !{}
!100 = distinct !DISubprogram(name: "rb_link_node", scope: !101, file: !101, line: 59, type: !102, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !104)
!101 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e0facf00d8c55244f0fbd487ce02705")
!102 = !DISubroutineType(types: !103)
!103 = !{null, !24, !24, !74}
!104 = !{!105, !106, !107}
!105 = !DILocalVariable(name: "node", arg: 1, scope: !100, file: !101, line: 59, type: !24)
!106 = !DILocalVariable(name: "parent", arg: 2, scope: !100, file: !101, line: 59, type: !24)
!107 = !DILocalVariable(name: "rb_link", arg: 3, scope: !100, file: !101, line: 60, type: !74)
!108 = !DILocation(line: 59, column: 49, scope: !100)
!109 = !DILocation(line: 59, column: 71, scope: !100)
!110 = !DILocation(line: 60, column: 22, scope: !100)
!111 = !DILocation(line: 62, column: 43, scope: !100)
!112 = !DILocation(line: 62, column: 28, scope: !100)
!113 = !DILocation(line: 62, column: 2, scope: !100)
!114 = !DILocation(line: 62, column: 8, scope: !100)
!115 = !DILocation(line: 62, column: 26, scope: !100)
!116 = !DILocation(line: 63, column: 18, scope: !100)
!117 = !DILocation(line: 63, column: 24, scope: !100)
!118 = !DILocation(line: 63, column: 33, scope: !100)
!119 = !DILocation(line: 63, column: 2, scope: !100)
!120 = !DILocation(line: 63, column: 8, scope: !100)
!121 = !DILocation(line: 63, column: 16, scope: !100)
!122 = !DILocation(line: 65, column: 13, scope: !100)
!123 = !DILocation(line: 65, column: 3, scope: !100)
!124 = !DILocation(line: 65, column: 11, scope: !100)
!125 = !DILocation(line: 66, column: 1, scope: !100)
!126 = distinct !DISubprogram(name: "rb_insert_augmented_cached", scope: !42, file: !42, line: 54, type: !127, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !130)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !24, !62, !80, !129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!130 = !{!131, !132, !133, !134}
!131 = !DILocalVariable(name: "node", arg: 1, scope: !126, file: !42, line: 54, type: !24)
!132 = !DILocalVariable(name: "root", arg: 2, scope: !126, file: !42, line: 55, type: !62)
!133 = !DILocalVariable(name: "newleft", arg: 3, scope: !126, file: !42, line: 55, type: !80)
!134 = !DILocalVariable(name: "augment", arg: 4, scope: !126, file: !42, line: 56, type: !129)
!135 = !DILocation(line: 54, column: 44, scope: !126)
!136 = !DILocation(line: 55, column: 30, scope: !126)
!137 = !DILocation(line: 55, column: 41, scope: !126)
!138 = !DILocation(line: 56, column: 42, scope: !126)
!139 = !DILocation(line: 58, column: 6, scope: !140)
!140 = distinct !DILexicalBlock(scope: !126, file: !42, line: 58, column: 6)
!141 = !DILocation(line: 58, column: 6, scope: !126)
!142 = !DILocation(line: 59, column: 23, scope: !140)
!143 = !DILocation(line: 59, column: 3, scope: !140)
!144 = !DILocation(line: 59, column: 9, scope: !140)
!145 = !DILocation(line: 59, column: 21, scope: !140)
!146 = !DILocation(line: 60, column: 22, scope: !126)
!147 = !DILocation(line: 60, column: 29, scope: !126)
!148 = !DILocation(line: 60, column: 35, scope: !126)
!149 = !DILocation(line: 60, column: 44, scope: !126)
!150 = !DILocation(line: 60, column: 2, scope: !126)
!151 = !DILocation(line: 61, column: 1, scope: !126)
!152 = distinct !DISubprogram(name: "interval_tree_remove", scope: !3, file: !3, line: 10, type: !60, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !153)
!153 = !{!154, !155}
!154 = !DILocalVariable(name: "node", arg: 1, scope: !152, file: !3, line: 10, type: !13)
!155 = !DILocalVariable(name: "root", arg: 2, scope: !152, file: !3, line: 10, type: !62)
!156 = !DILocation(line: 10, column: 1, scope: !152)
!157 = distinct !DISubprogram(name: "rb_erase_augmented_cached", scope: !42, file: !42, line: 335, type: !158, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !160)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !24, !62, !129}
!160 = !{!161, !162, !163}
!161 = !DILocalVariable(name: "node", arg: 1, scope: !157, file: !42, line: 335, type: !24)
!162 = !DILocalVariable(name: "root", arg: 2, scope: !157, file: !42, line: 335, type: !62)
!163 = !DILocalVariable(name: "augment", arg: 3, scope: !157, file: !42, line: 336, type: !129)
!164 = !DILocation(line: 335, column: 43, scope: !157)
!165 = !DILocation(line: 335, column: 72, scope: !157)
!166 = !DILocation(line: 336, column: 41, scope: !157)
!167 = !DILocation(line: 338, column: 6, scope: !168)
!168 = distinct !DILexicalBlock(scope: !157, file: !42, line: 338, column: 6)
!169 = !DILocation(line: 338, column: 12, scope: !168)
!170 = !DILocation(line: 338, column: 27, scope: !168)
!171 = !DILocation(line: 338, column: 24, scope: !168)
!172 = !DILocation(line: 338, column: 6, scope: !157)
!173 = !DILocation(line: 339, column: 31, scope: !168)
!174 = !DILocation(line: 339, column: 23, scope: !168)
!175 = !DILocation(line: 339, column: 3, scope: !168)
!176 = !DILocation(line: 339, column: 9, scope: !168)
!177 = !DILocation(line: 339, column: 21, scope: !168)
!178 = !DILocation(line: 340, column: 21, scope: !157)
!179 = !DILocation(line: 340, column: 28, scope: !157)
!180 = !DILocation(line: 340, column: 34, scope: !157)
!181 = !DILocation(line: 340, column: 43, scope: !157)
!182 = !DILocation(line: 340, column: 2, scope: !157)
!183 = !DILocation(line: 341, column: 1, scope: !157)
!184 = distinct !DISubprogram(name: "interval_tree_iter_first", scope: !3, file: !3, line: 10, type: !185, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !187)
!185 = !DISubroutineType(types: !186)
!186 = !{!13, !62, !22, !22}
!187 = !{!188, !189, !190, !191, !192, !193, !195}
!188 = !DILocalVariable(name: "root", arg: 1, scope: !184, file: !3, line: 10, type: !62)
!189 = !DILocalVariable(name: "start", arg: 2, scope: !184, file: !3, line: 10, type: !22)
!190 = !DILocalVariable(name: "last", arg: 3, scope: !184, file: !3, line: 10, type: !22)
!191 = !DILocalVariable(name: "node", scope: !184, file: !3, line: 10, type: !13)
!192 = !DILocalVariable(name: "leftmost", scope: !184, file: !3, line: 10, type: !13)
!193 = !DILocalVariable(name: "__mptr", scope: !194, file: !3, line: 10, type: !12)
!194 = distinct !DILexicalBlock(scope: !184, file: !3, line: 10, column: 1)
!195 = !DILocalVariable(name: "__mptr", scope: !196, file: !3, line: 10, type: !12)
!196 = distinct !DILexicalBlock(scope: !184, file: !3, line: 10, column: 1)
!197 = !DILocation(line: 10, column: 1, scope: !184)
!198 = !DILocation(line: 10, column: 1, scope: !199)
!199 = distinct !DILexicalBlock(scope: !184, file: !3, line: 10, column: 1)
!200 = !DILocation(line: 10, column: 1, scope: !194)
!201 = !DILocation(line: 10, column: 1, scope: !202)
!202 = distinct !DILexicalBlock(scope: !184, file: !3, line: 10, column: 1)
!203 = !DILocation(line: 10, column: 1, scope: !196)
!204 = !DILocation(line: 10, column: 1, scope: !205)
!205 = distinct !DILexicalBlock(scope: !184, file: !3, line: 10, column: 1)
!206 = distinct !DISubprogram(name: "interval_tree_subtree_search", scope: !3, file: !3, line: 10, type: !207, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !209)
!207 = !DISubroutineType(types: !208)
!208 = !{!13, !13, !22, !22}
!209 = !{!210, !211, !212, !213, !217, !219}
!210 = !DILocalVariable(name: "node", arg: 1, scope: !206, file: !3, line: 10, type: !13)
!211 = !DILocalVariable(name: "start", arg: 2, scope: !206, file: !3, line: 10, type: !22)
!212 = !DILocalVariable(name: "last", arg: 3, scope: !206, file: !3, line: 10, type: !22)
!213 = !DILocalVariable(name: "left", scope: !214, file: !3, line: 10, type: !13)
!214 = distinct !DILexicalBlock(scope: !215, file: !3, line: 10, column: 1)
!215 = distinct !DILexicalBlock(scope: !216, file: !3, line: 10, column: 1)
!216 = distinct !DILexicalBlock(scope: !206, file: !3, line: 10, column: 1)
!217 = !DILocalVariable(name: "__mptr", scope: !218, file: !3, line: 10, type: !12)
!218 = distinct !DILexicalBlock(scope: !214, file: !3, line: 10, column: 1)
!219 = !DILocalVariable(name: "__mptr", scope: !220, file: !3, line: 10, type: !12)
!220 = distinct !DILexicalBlock(scope: !221, file: !3, line: 10, column: 1)
!221 = distinct !DILexicalBlock(scope: !222, file: !3, line: 10, column: 1)
!222 = distinct !DILexicalBlock(scope: !223, file: !3, line: 10, column: 1)
!223 = distinct !DILexicalBlock(scope: !224, file: !3, line: 10, column: 1)
!224 = distinct !DILexicalBlock(scope: !216, file: !3, line: 10, column: 1)
!225 = !DILocation(line: 10, column: 1, scope: !206)
!226 = !DILocation(line: 10, column: 1, scope: !215)
!227 = !DILocation(line: 10, column: 1, scope: !216)
!228 = !DILocation(line: 10, column: 1, scope: !214)
!229 = !DILocation(line: 10, column: 1, scope: !218)
!230 = !DILocation(line: 10, column: 1, scope: !231)
!231 = distinct !DILexicalBlock(scope: !214, file: !3, line: 10, column: 1)
!232 = !DILocation(line: 10, column: 1, scope: !233)
!233 = distinct !DILexicalBlock(scope: !231, file: !3, line: 10, column: 1)
!234 = distinct !{!234, !225, !225, !97}
!235 = !DILocation(line: 10, column: 1, scope: !224)
!236 = !DILocation(line: 10, column: 1, scope: !237)
!237 = distinct !DILexicalBlock(scope: !223, file: !3, line: 10, column: 1)
!238 = !DILocation(line: 10, column: 1, scope: !223)
!239 = !DILocation(line: 10, column: 1, scope: !222)
!240 = !DILocation(line: 10, column: 1, scope: !220)
!241 = !DILocation(line: 10, column: 1, scope: !221)
!242 = !DILocation(line: 10, column: 1, scope: !243)
!243 = distinct !DILexicalBlock(scope: !221, file: !3, line: 10, column: 1)
!244 = distinct !DISubprogram(name: "interval_tree_iter_next", scope: !3, file: !3, line: 10, type: !207, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !245)
!245 = !{!246, !247, !248, !249, !250, !251, !255, !257}
!246 = !DILocalVariable(name: "node", arg: 1, scope: !244, file: !3, line: 10, type: !13)
!247 = !DILocalVariable(name: "start", arg: 2, scope: !244, file: !3, line: 10, type: !22)
!248 = !DILocalVariable(name: "last", arg: 3, scope: !244, file: !3, line: 10, type: !22)
!249 = !DILocalVariable(name: "rb", scope: !244, file: !3, line: 10, type: !24)
!250 = !DILocalVariable(name: "prev", scope: !244, file: !3, line: 10, type: !24)
!251 = !DILocalVariable(name: "right", scope: !252, file: !3, line: 10, type: !13)
!252 = distinct !DILexicalBlock(scope: !253, file: !3, line: 10, column: 1)
!253 = distinct !DILexicalBlock(scope: !254, file: !3, line: 10, column: 1)
!254 = distinct !DILexicalBlock(scope: !244, file: !3, line: 10, column: 1)
!255 = !DILocalVariable(name: "__mptr", scope: !256, file: !3, line: 10, type: !12)
!256 = distinct !DILexicalBlock(scope: !252, file: !3, line: 10, column: 1)
!257 = !DILocalVariable(name: "__mptr", scope: !258, file: !3, line: 10, type: !12)
!258 = distinct !DILexicalBlock(scope: !259, file: !3, line: 10, column: 1)
!259 = distinct !DILexicalBlock(scope: !254, file: !3, line: 10, column: 1)
!260 = !DILocation(line: 10, column: 1, scope: !244)
!261 = !DILocation(line: 10, column: 1, scope: !253)
!262 = !DILocation(line: 10, column: 1, scope: !254)
!263 = !DILocation(line: 10, column: 1, scope: !252)
!264 = !DILocation(line: 10, column: 1, scope: !256)
!265 = !DILocation(line: 10, column: 1, scope: !266)
!266 = distinct !DILexicalBlock(scope: !252, file: !3, line: 10, column: 1)
!267 = !DILocation(line: 10, column: 1, scope: !259)
!268 = !DILocation(line: 10, column: 1, scope: !269)
!269 = distinct !DILexicalBlock(scope: !259, file: !3, line: 10, column: 1)
!270 = !DILocation(line: 10, column: 1, scope: !258)
!271 = distinct !{!271, !262, !262, !96, !97}
!272 = !DILocation(line: 10, column: 1, scope: !273)
!273 = distinct !DILexicalBlock(scope: !254, file: !3, line: 10, column: 1)
!274 = !DILocation(line: 10, column: 1, scope: !275)
!275 = distinct !DILexicalBlock(scope: !273, file: !3, line: 10, column: 1)
!276 = distinct !{!276, !260, !260, !97}
!277 = distinct !DISubprogram(name: "rb_insert_augmented", scope: !42, file: !42, line: 47, type: !278, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !281)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !24, !280, !129}
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!281 = !{!282, !283, !284}
!282 = !DILocalVariable(name: "node", arg: 1, scope: !277, file: !42, line: 47, type: !24)
!283 = !DILocalVariable(name: "root", arg: 2, scope: !277, file: !42, line: 47, type: !280)
!284 = !DILocalVariable(name: "augment", arg: 3, scope: !277, file: !42, line: 48, type: !129)
!285 = !DILocation(line: 47, column: 37, scope: !277)
!286 = !DILocation(line: 47, column: 59, scope: !277)
!287 = !DILocation(line: 48, column: 42, scope: !277)
!288 = !DILocation(line: 50, column: 24, scope: !277)
!289 = !DILocation(line: 50, column: 30, scope: !277)
!290 = !DILocation(line: 50, column: 36, scope: !277)
!291 = !DILocation(line: 50, column: 45, scope: !277)
!292 = !DILocation(line: 50, column: 2, scope: !277)
!293 = !DILocation(line: 51, column: 1, scope: !277)
!294 = !DISubprogram(name: "__rb_insert_augmented", scope: !42, file: !42, line: 33, type: !295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !24, !280, !45}
!297 = distinct !DISubprogram(name: "interval_tree_augment_propagate", scope: !3, file: !3, line: 10, type: !46, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !298)
!298 = !{!299, !300, !301, !303}
!299 = !DILocalVariable(name: "rb", arg: 1, scope: !297, file: !3, line: 10, type: !24)
!300 = !DILocalVariable(name: "stop", arg: 2, scope: !297, file: !3, line: 10, type: !24)
!301 = !DILocalVariable(name: "node", scope: !302, file: !3, line: 10, type: !13)
!302 = distinct !DILexicalBlock(scope: !297, file: !3, line: 10, column: 1)
!303 = !DILocalVariable(name: "__mptr", scope: !304, file: !3, line: 10, type: !12)
!304 = distinct !DILexicalBlock(scope: !302, file: !3, line: 10, column: 1)
!305 = !DILocation(line: 10, column: 1, scope: !297)
!306 = !DILocation(line: 10, column: 1, scope: !302)
!307 = !DILocation(line: 10, column: 1, scope: !304)
!308 = !DILocation(line: 10, column: 1, scope: !309)
!309 = distinct !DILexicalBlock(scope: !302, file: !3, line: 10, column: 1)
!310 = distinct !{!310, !305, !305, !96, !97}
!311 = distinct !DISubprogram(name: "interval_tree_augment_copy", scope: !3, file: !3, line: 10, type: !46, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !312)
!312 = !{!313, !314, !315, !316, !318, !319}
!313 = !DILocalVariable(name: "rb_old", arg: 1, scope: !311, file: !3, line: 10, type: !24)
!314 = !DILocalVariable(name: "rb_new", arg: 2, scope: !311, file: !3, line: 10, type: !24)
!315 = !DILocalVariable(name: "old", scope: !311, file: !3, line: 10, type: !13)
!316 = !DILocalVariable(name: "__mptr", scope: !317, file: !3, line: 10, type: !12)
!317 = distinct !DILexicalBlock(scope: !311, file: !3, line: 10, column: 1)
!318 = !DILocalVariable(name: "new", scope: !311, file: !3, line: 10, type: !13)
!319 = !DILocalVariable(name: "__mptr", scope: !320, file: !3, line: 10, type: !12)
!320 = distinct !DILexicalBlock(scope: !311, file: !3, line: 10, column: 1)
!321 = !DILocation(line: 10, column: 1, scope: !311)
!322 = !DILocation(line: 10, column: 1, scope: !317)
!323 = !DILocation(line: 10, column: 1, scope: !320)
!324 = distinct !DISubprogram(name: "interval_tree_augment_rotate", scope: !3, file: !3, line: 10, type: !46, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !325)
!325 = !{!326, !327, !328, !329, !331, !332}
!326 = !DILocalVariable(name: "rb_old", arg: 1, scope: !324, file: !3, line: 10, type: !24)
!327 = !DILocalVariable(name: "rb_new", arg: 2, scope: !324, file: !3, line: 10, type: !24)
!328 = !DILocalVariable(name: "old", scope: !324, file: !3, line: 10, type: !13)
!329 = !DILocalVariable(name: "__mptr", scope: !330, file: !3, line: 10, type: !12)
!330 = distinct !DILexicalBlock(scope: !324, file: !3, line: 10, column: 1)
!331 = !DILocalVariable(name: "new", scope: !324, file: !3, line: 10, type: !13)
!332 = !DILocalVariable(name: "__mptr", scope: !333, file: !3, line: 10, type: !12)
!333 = distinct !DILexicalBlock(scope: !324, file: !3, line: 10, column: 1)
!334 = !DILocation(line: 10, column: 1, scope: !324)
!335 = !DILocation(line: 10, column: 1, scope: !330)
!336 = !DILocation(line: 10, column: 1, scope: !333)
!337 = distinct !DISubprogram(name: "interval_tree_augment_compute_max", scope: !3, file: !3, line: 10, type: !338, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !340)
!338 = !DISubroutineType(types: !339)
!339 = !{!80, !13, !80}
!340 = !{!341, !342, !343, !344, !345, !349}
!341 = !DILocalVariable(name: "node", arg: 1, scope: !337, file: !3, line: 10, type: !13)
!342 = !DILocalVariable(name: "exit", arg: 2, scope: !337, file: !3, line: 10, type: !80)
!343 = !DILocalVariable(name: "child", scope: !337, file: !3, line: 10, type: !13)
!344 = !DILocalVariable(name: "max", scope: !337, file: !3, line: 10, type: !22)
!345 = !DILocalVariable(name: "__mptr", scope: !346, file: !3, line: 10, type: !12)
!346 = distinct !DILexicalBlock(scope: !347, file: !3, line: 10, column: 1)
!347 = distinct !DILexicalBlock(scope: !348, file: !3, line: 10, column: 1)
!348 = distinct !DILexicalBlock(scope: !337, file: !3, line: 10, column: 1)
!349 = !DILocalVariable(name: "__mptr", scope: !350, file: !3, line: 10, type: !12)
!350 = distinct !DILexicalBlock(scope: !351, file: !3, line: 10, column: 1)
!351 = distinct !DILexicalBlock(scope: !352, file: !3, line: 10, column: 1)
!352 = distinct !DILexicalBlock(scope: !337, file: !3, line: 10, column: 1)
!353 = !DILocation(line: 10, column: 1, scope: !337)
!354 = !DILocation(line: 10, column: 1, scope: !348)
!355 = !DILocation(line: 10, column: 1, scope: !346)
!356 = !DILocation(line: 10, column: 1, scope: !347)
!357 = !DILocation(line: 10, column: 1, scope: !358)
!358 = distinct !DILexicalBlock(scope: !347, file: !3, line: 10, column: 1)
!359 = !DILocation(line: 10, column: 1, scope: !352)
!360 = !DILocation(line: 10, column: 1, scope: !350)
!361 = !DILocation(line: 10, column: 1, scope: !351)
!362 = !DILocation(line: 10, column: 1, scope: !363)
!363 = distinct !DILexicalBlock(scope: !351, file: !3, line: 10, column: 1)
!364 = !DILocation(line: 10, column: 1, scope: !365)
!365 = distinct !DILexicalBlock(scope: !337, file: !3, line: 10, column: 1)
!366 = !DISubprogram(name: "rb_next", scope: !101, file: !101, line: 44, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!367 = !DISubroutineType(types: !368)
!368 = !{!24, !369}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!371 = distinct !DISubprogram(name: "rb_erase_augmented", scope: !42, file: !42, line: 326, type: !278, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !372)
!372 = !{!373, !374, !375, !376}
!373 = !DILocalVariable(name: "node", arg: 1, scope: !371, file: !42, line: 326, type: !24)
!374 = !DILocalVariable(name: "root", arg: 2, scope: !371, file: !42, line: 326, type: !280)
!375 = !DILocalVariable(name: "augment", arg: 3, scope: !371, file: !42, line: 327, type: !129)
!376 = !DILocalVariable(name: "rebalance", scope: !371, file: !42, line: 329, type: !24)
!377 = !DILocation(line: 326, column: 36, scope: !371)
!378 = !DILocation(line: 326, column: 58, scope: !371)
!379 = !DILocation(line: 327, column: 41, scope: !371)
!380 = !DILocation(line: 329, column: 2, scope: !371)
!381 = !DILocation(line: 329, column: 18, scope: !371)
!382 = !DILocation(line: 329, column: 51, scope: !371)
!383 = !DILocation(line: 329, column: 57, scope: !371)
!384 = !DILocation(line: 329, column: 63, scope: !371)
!385 = !DILocation(line: 329, column: 30, scope: !371)
!386 = !DILocation(line: 330, column: 6, scope: !387)
!387 = distinct !DILexicalBlock(scope: !371, file: !42, line: 330, column: 6)
!388 = !DILocation(line: 330, column: 6, scope: !371)
!389 = !DILocation(line: 331, column: 20, scope: !387)
!390 = !DILocation(line: 331, column: 31, scope: !387)
!391 = !DILocation(line: 331, column: 37, scope: !387)
!392 = !DILocation(line: 331, column: 46, scope: !387)
!393 = !DILocation(line: 331, column: 3, scope: !387)
!394 = !DILocation(line: 332, column: 1, scope: !371)
!395 = distinct !DISubprogram(name: "__rb_erase_augmented", scope: !42, file: !42, line: 224, type: !396, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !398)
!396 = !DISubroutineType(types: !397)
!397 = !{!24, !24, !280, !129}
!398 = !{!399, !400, !401, !402, !403, !404, !405, !406, !407, !411}
!399 = !DILocalVariable(name: "node", arg: 1, scope: !395, file: !42, line: 224, type: !24)
!400 = !DILocalVariable(name: "root", arg: 2, scope: !395, file: !42, line: 224, type: !280)
!401 = !DILocalVariable(name: "augment", arg: 3, scope: !395, file: !42, line: 225, type: !129)
!402 = !DILocalVariable(name: "child", scope: !395, file: !42, line: 227, type: !24)
!403 = !DILocalVariable(name: "tmp", scope: !395, file: !42, line: 228, type: !24)
!404 = !DILocalVariable(name: "parent", scope: !395, file: !42, line: 229, type: !24)
!405 = !DILocalVariable(name: "rebalance", scope: !395, file: !42, line: 229, type: !24)
!406 = !DILocalVariable(name: "pc", scope: !395, file: !42, line: 230, type: !22)
!407 = !DILocalVariable(name: "successor", scope: !408, file: !42, line: 257, type: !24)
!408 = distinct !DILexicalBlock(scope: !409, file: !42, line: 256, column: 9)
!409 = distinct !DILexicalBlock(scope: !410, file: !42, line: 249, column: 13)
!410 = distinct !DILexicalBlock(scope: !395, file: !42, line: 232, column: 6)
!411 = !DILocalVariable(name: "child2", scope: !408, file: !42, line: 257, type: !24)
!412 = !DILocation(line: 224, column: 38, scope: !395)
!413 = !DILocation(line: 224, column: 60, scope: !395)
!414 = !DILocation(line: 225, column: 43, scope: !395)
!415 = !DILocation(line: 227, column: 2, scope: !395)
!416 = !DILocation(line: 227, column: 18, scope: !395)
!417 = !DILocation(line: 227, column: 26, scope: !395)
!418 = !DILocation(line: 227, column: 32, scope: !395)
!419 = !DILocation(line: 228, column: 2, scope: !395)
!420 = !DILocation(line: 228, column: 18, scope: !395)
!421 = !DILocation(line: 228, column: 24, scope: !395)
!422 = !DILocation(line: 228, column: 30, scope: !395)
!423 = !DILocation(line: 229, column: 2, scope: !395)
!424 = !DILocation(line: 229, column: 18, scope: !395)
!425 = !DILocation(line: 229, column: 27, scope: !395)
!426 = !DILocation(line: 230, column: 2, scope: !395)
!427 = !DILocation(line: 230, column: 16, scope: !395)
!428 = !DILocation(line: 232, column: 7, scope: !410)
!429 = !DILocation(line: 232, column: 6, scope: !395)
!430 = !DILocation(line: 240, column: 8, scope: !431)
!431 = distinct !DILexicalBlock(scope: !410, file: !42, line: 232, column: 12)
!432 = !DILocation(line: 240, column: 14, scope: !431)
!433 = !DILocation(line: 240, column: 6, scope: !431)
!434 = !DILocation(line: 241, column: 12, scope: !431)
!435 = !DILocation(line: 241, column: 10, scope: !431)
!436 = !DILocation(line: 242, column: 21, scope: !431)
!437 = !DILocation(line: 242, column: 27, scope: !431)
!438 = !DILocation(line: 242, column: 34, scope: !431)
!439 = !DILocation(line: 242, column: 42, scope: !431)
!440 = !DILocation(line: 242, column: 3, scope: !431)
!441 = !DILocation(line: 243, column: 7, scope: !442)
!442 = distinct !DILexicalBlock(scope: !431, file: !42, line: 243, column: 7)
!443 = !DILocation(line: 243, column: 7, scope: !431)
!444 = !DILocation(line: 244, column: 31, scope: !445)
!445 = distinct !DILexicalBlock(scope: !442, file: !42, line: 243, column: 14)
!446 = !DILocation(line: 244, column: 4, scope: !445)
!447 = !DILocation(line: 244, column: 11, scope: !445)
!448 = !DILocation(line: 244, column: 29, scope: !445)
!449 = !DILocation(line: 245, column: 14, scope: !445)
!450 = !DILocation(line: 246, column: 3, scope: !445)
!451 = !DILocation(line: 247, column: 16, scope: !442)
!452 = !DILocation(line: 247, column: 36, scope: !442)
!453 = !DILocation(line: 247, column: 14, scope: !442)
!454 = !DILocation(line: 248, column: 9, scope: !431)
!455 = !DILocation(line: 248, column: 7, scope: !431)
!456 = !DILocation(line: 249, column: 2, scope: !431)
!457 = !DILocation(line: 249, column: 14, scope: !409)
!458 = !DILocation(line: 249, column: 13, scope: !410)
!459 = !DILocation(line: 251, column: 33, scope: !460)
!460 = distinct !DILexicalBlock(scope: !409, file: !42, line: 249, column: 21)
!461 = !DILocation(line: 251, column: 39, scope: !460)
!462 = !DILocation(line: 251, column: 31, scope: !460)
!463 = !DILocation(line: 251, column: 3, scope: !460)
!464 = !DILocation(line: 251, column: 8, scope: !460)
!465 = !DILocation(line: 251, column: 26, scope: !460)
!466 = !DILocation(line: 252, column: 12, scope: !460)
!467 = !DILocation(line: 252, column: 10, scope: !460)
!468 = !DILocation(line: 253, column: 21, scope: !460)
!469 = !DILocation(line: 253, column: 27, scope: !460)
!470 = !DILocation(line: 253, column: 32, scope: !460)
!471 = !DILocation(line: 253, column: 40, scope: !460)
!472 = !DILocation(line: 253, column: 3, scope: !460)
!473 = !DILocation(line: 254, column: 13, scope: !460)
!474 = !DILocation(line: 255, column: 9, scope: !460)
!475 = !DILocation(line: 255, column: 7, scope: !460)
!476 = !DILocation(line: 256, column: 2, scope: !460)
!477 = !DILocation(line: 257, column: 3, scope: !408)
!478 = !DILocation(line: 257, column: 19, scope: !408)
!479 = !DILocation(line: 257, column: 31, scope: !408)
!480 = !DILocation(line: 257, column: 39, scope: !408)
!481 = !DILocation(line: 259, column: 9, scope: !408)
!482 = !DILocation(line: 259, column: 16, scope: !408)
!483 = !DILocation(line: 259, column: 7, scope: !408)
!484 = !DILocation(line: 260, column: 8, scope: !485)
!485 = distinct !DILexicalBlock(scope: !408, file: !42, line: 260, column: 7)
!486 = !DILocation(line: 260, column: 7, scope: !408)
!487 = !DILocation(line: 270, column: 13, scope: !488)
!488 = distinct !DILexicalBlock(scope: !485, file: !42, line: 260, column: 13)
!489 = !DILocation(line: 270, column: 11, scope: !488)
!490 = !DILocation(line: 271, column: 13, scope: !488)
!491 = !DILocation(line: 271, column: 24, scope: !488)
!492 = !DILocation(line: 271, column: 11, scope: !488)
!493 = !DILocation(line: 273, column: 4, scope: !488)
!494 = !DILocation(line: 273, column: 13, scope: !488)
!495 = !DILocation(line: 273, column: 18, scope: !488)
!496 = !DILocation(line: 273, column: 24, scope: !488)
!497 = !DILocation(line: 274, column: 3, scope: !488)
!498 = !DILocation(line: 289, column: 4, scope: !499)
!499 = distinct !DILexicalBlock(scope: !485, file: !42, line: 274, column: 10)
!500 = !DILocation(line: 290, column: 14, scope: !501)
!501 = distinct !DILexicalBlock(scope: !499, file: !42, line: 289, column: 7)
!502 = !DILocation(line: 290, column: 12, scope: !501)
!503 = !DILocation(line: 291, column: 17, scope: !501)
!504 = !DILocation(line: 291, column: 15, scope: !501)
!505 = !DILocation(line: 292, column: 11, scope: !501)
!506 = !DILocation(line: 292, column: 16, scope: !501)
!507 = !DILocation(line: 292, column: 9, scope: !501)
!508 = !DILocation(line: 293, column: 4, scope: !501)
!509 = !DILocation(line: 293, column: 13, scope: !499)
!510 = distinct !{!510, !498, !511, !96, !97}
!511 = !DILocation(line: 293, column: 16, scope: !499)
!512 = !DILocation(line: 294, column: 13, scope: !499)
!513 = !DILocation(line: 294, column: 24, scope: !499)
!514 = !DILocation(line: 294, column: 11, scope: !499)
!515 = !DILocation(line: 295, column: 4, scope: !499)
!516 = !DILocation(line: 295, column: 4, scope: !517)
!517 = distinct !DILexicalBlock(scope: !499, file: !42, line: 295, column: 4)
!518 = !DILocation(line: 295, column: 4, scope: !519)
!519 = distinct !DILexicalBlock(scope: !517, file: !42, line: 295, column: 4)
!520 = !DILocation(line: 295, column: 4, scope: !521)
!521 = distinct !DILexicalBlock(scope: !517, file: !42, line: 295, column: 4)
!522 = !DILocation(line: 296, column: 4, scope: !499)
!523 = !DILocation(line: 296, column: 4, scope: !524)
!524 = distinct !DILexicalBlock(scope: !499, file: !42, line: 296, column: 4)
!525 = !DILocation(line: 296, column: 4, scope: !526)
!526 = distinct !DILexicalBlock(scope: !524, file: !42, line: 296, column: 4)
!527 = !DILocation(line: 296, column: 4, scope: !528)
!528 = distinct !DILexicalBlock(scope: !524, file: !42, line: 296, column: 4)
!529 = !DILocation(line: 297, column: 18, scope: !499)
!530 = !DILocation(line: 297, column: 25, scope: !499)
!531 = !DILocation(line: 297, column: 4, scope: !499)
!532 = !DILocation(line: 299, column: 4, scope: !499)
!533 = !DILocation(line: 299, column: 13, scope: !499)
!534 = !DILocation(line: 299, column: 18, scope: !499)
!535 = !DILocation(line: 299, column: 24, scope: !499)
!536 = !DILocation(line: 300, column: 4, scope: !499)
!537 = !DILocation(line: 300, column: 13, scope: !499)
!538 = !DILocation(line: 300, column: 23, scope: !499)
!539 = !DILocation(line: 300, column: 31, scope: !499)
!540 = !DILocation(line: 303, column: 9, scope: !408)
!541 = !DILocation(line: 303, column: 15, scope: !408)
!542 = !DILocation(line: 303, column: 7, scope: !408)
!543 = !DILocation(line: 304, column: 3, scope: !408)
!544 = !DILocation(line: 304, column: 3, scope: !545)
!545 = distinct !DILexicalBlock(scope: !408, file: !42, line: 304, column: 3)
!546 = !DILocation(line: 304, column: 3, scope: !547)
!547 = distinct !DILexicalBlock(scope: !545, file: !42, line: 304, column: 3)
!548 = !DILocation(line: 304, column: 3, scope: !549)
!549 = distinct !DILexicalBlock(scope: !545, file: !42, line: 304, column: 3)
!550 = !DILocation(line: 305, column: 17, scope: !408)
!551 = !DILocation(line: 305, column: 22, scope: !408)
!552 = !DILocation(line: 305, column: 3, scope: !408)
!553 = !DILocation(line: 307, column: 8, scope: !408)
!554 = !DILocation(line: 307, column: 14, scope: !408)
!555 = !DILocation(line: 307, column: 6, scope: !408)
!556 = !DILocation(line: 308, column: 9, scope: !408)
!557 = !DILocation(line: 308, column: 7, scope: !408)
!558 = !DILocation(line: 309, column: 21, scope: !408)
!559 = !DILocation(line: 309, column: 27, scope: !408)
!560 = !DILocation(line: 309, column: 38, scope: !408)
!561 = !DILocation(line: 309, column: 43, scope: !408)
!562 = !DILocation(line: 309, column: 3, scope: !408)
!563 = !DILocation(line: 311, column: 7, scope: !564)
!564 = distinct !DILexicalBlock(scope: !408, file: !42, line: 311, column: 7)
!565 = !DILocation(line: 311, column: 7, scope: !408)
!566 = !DILocation(line: 312, column: 24, scope: !567)
!567 = distinct !DILexicalBlock(scope: !564, file: !42, line: 311, column: 15)
!568 = !DILocation(line: 312, column: 32, scope: !567)
!569 = !DILocation(line: 312, column: 4, scope: !567)
!570 = !DILocation(line: 313, column: 14, scope: !567)
!571 = !DILocation(line: 314, column: 3, scope: !567)
!572 = !DILocation(line: 315, column: 16, scope: !573)
!573 = distinct !DILexicalBlock(scope: !564, file: !42, line: 314, column: 10)
!574 = !DILocation(line: 315, column: 41, scope: !573)
!575 = !DILocation(line: 315, column: 14, scope: !573)
!576 = !DILocation(line: 317, column: 34, scope: !408)
!577 = !DILocation(line: 317, column: 3, scope: !408)
!578 = !DILocation(line: 317, column: 14, scope: !408)
!579 = !DILocation(line: 317, column: 32, scope: !408)
!580 = !DILocation(line: 318, column: 9, scope: !408)
!581 = !DILocation(line: 318, column: 7, scope: !408)
!582 = !DILocation(line: 319, column: 2, scope: !409)
!583 = !DILocation(line: 321, column: 2, scope: !395)
!584 = !DILocation(line: 321, column: 11, scope: !395)
!585 = !DILocation(line: 321, column: 21, scope: !395)
!586 = !DILocation(line: 322, column: 9, scope: !395)
!587 = !DILocation(line: 323, column: 1, scope: !395)
!588 = !DILocation(line: 322, column: 2, scope: !395)
!589 = !DISubprogram(name: "__rb_erase_color", scope: !42, file: !42, line: 220, type: !295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!590 = distinct !DISubprogram(name: "__rb_change_child", scope: !42, file: !42, line: 195, type: !591, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !593)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !24, !24, !24, !280}
!593 = !{!594, !595, !596, !597}
!594 = !DILocalVariable(name: "old", arg: 1, scope: !590, file: !42, line: 195, type: !24)
!595 = !DILocalVariable(name: "new", arg: 2, scope: !590, file: !42, line: 195, type: !24)
!596 = !DILocalVariable(name: "parent", arg: 3, scope: !590, file: !42, line: 196, type: !24)
!597 = !DILocalVariable(name: "root", arg: 4, scope: !590, file: !42, line: 196, type: !280)
!598 = !DILocation(line: 195, column: 35, scope: !590)
!599 = !DILocation(line: 195, column: 56, scope: !590)
!600 = !DILocation(line: 196, column: 21, scope: !590)
!601 = !DILocation(line: 196, column: 45, scope: !590)
!602 = !DILocation(line: 198, column: 6, scope: !603)
!603 = distinct !DILexicalBlock(scope: !590, file: !42, line: 198, column: 6)
!604 = !DILocation(line: 198, column: 6, scope: !590)
!605 = !DILocation(line: 199, column: 7, scope: !606)
!606 = distinct !DILexicalBlock(scope: !607, file: !42, line: 199, column: 7)
!607 = distinct !DILexicalBlock(scope: !603, file: !42, line: 198, column: 14)
!608 = !DILocation(line: 199, column: 15, scope: !606)
!609 = !DILocation(line: 199, column: 26, scope: !606)
!610 = !DILocation(line: 199, column: 23, scope: !606)
!611 = !DILocation(line: 199, column: 7, scope: !607)
!612 = !DILocation(line: 200, column: 4, scope: !606)
!613 = !DILocation(line: 200, column: 4, scope: !614)
!614 = distinct !DILexicalBlock(scope: !606, file: !42, line: 200, column: 4)
!615 = !DILocation(line: 200, column: 4, scope: !616)
!616 = distinct !DILexicalBlock(scope: !614, file: !42, line: 200, column: 4)
!617 = !DILocation(line: 200, column: 4, scope: !618)
!618 = distinct !DILexicalBlock(scope: !614, file: !42, line: 200, column: 4)
!619 = !DILocation(line: 202, column: 4, scope: !606)
!620 = !DILocation(line: 202, column: 4, scope: !621)
!621 = distinct !DILexicalBlock(scope: !606, file: !42, line: 202, column: 4)
!622 = !DILocation(line: 202, column: 4, scope: !623)
!623 = distinct !DILexicalBlock(scope: !621, file: !42, line: 202, column: 4)
!624 = !DILocation(line: 202, column: 4, scope: !625)
!625 = distinct !DILexicalBlock(scope: !621, file: !42, line: 202, column: 4)
!626 = !DILocation(line: 203, column: 2, scope: !607)
!627 = !DILocation(line: 204, column: 3, scope: !603)
!628 = !DILocation(line: 204, column: 3, scope: !629)
!629 = distinct !DILexicalBlock(scope: !603, file: !42, line: 204, column: 3)
!630 = !DILocation(line: 204, column: 3, scope: !631)
!631 = distinct !DILexicalBlock(scope: !629, file: !42, line: 204, column: 3)
!632 = !DILocation(line: 204, column: 3, scope: !633)
!633 = distinct !DILexicalBlock(scope: !629, file: !42, line: 204, column: 3)
!634 = !DILocation(line: 205, column: 1, scope: !590)
!635 = distinct !DISubprogram(name: "rb_set_parent", scope: !42, file: !42, line: 183, type: !46, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !636)
!636 = !{!637, !638}
!637 = !DILocalVariable(name: "rb", arg: 1, scope: !635, file: !42, line: 183, type: !24)
!638 = !DILocalVariable(name: "p", arg: 2, scope: !635, file: !42, line: 183, type: !24)
!639 = !DILocation(line: 183, column: 50, scope: !635)
!640 = !DILocation(line: 183, column: 70, scope: !635)
!641 = !DILocation(line: 185, column: 26, scope: !635)
!642 = !DILocation(line: 185, column: 56, scope: !635)
!643 = !DILocation(line: 185, column: 41, scope: !635)
!644 = !DILocation(line: 185, column: 39, scope: !635)
!645 = !DILocation(line: 185, column: 2, scope: !635)
!646 = !DILocation(line: 185, column: 6, scope: !635)
!647 = !DILocation(line: 185, column: 24, scope: !635)
!648 = !DILocation(line: 186, column: 1, scope: !635)
!649 = distinct !DISubprogram(name: "rb_set_parent_color", scope: !42, file: !42, line: 188, type: !650, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !653)
!650 = !DISubroutineType(types: !651)
!651 = !{null, !24, !24, !652}
!652 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!653 = !{!654, !655, !656}
!654 = !DILocalVariable(name: "rb", arg: 1, scope: !649, file: !42, line: 188, type: !24)
!655 = !DILocalVariable(name: "p", arg: 2, scope: !649, file: !42, line: 189, type: !24)
!656 = !DILocalVariable(name: "color", arg: 3, scope: !649, file: !42, line: 189, type: !652)
!657 = !DILocation(line: 188, column: 56, scope: !649)
!658 = !DILocation(line: 189, column: 28, scope: !649)
!659 = !DILocation(line: 189, column: 35, scope: !649)
!660 = !DILocation(line: 191, column: 41, scope: !649)
!661 = !DILocation(line: 191, column: 26, scope: !649)
!662 = !DILocation(line: 191, column: 45, scope: !649)
!663 = !DILocation(line: 191, column: 43, scope: !649)
!664 = !DILocation(line: 191, column: 2, scope: !649)
!665 = !DILocation(line: 191, column: 6, scope: !649)
!666 = !DILocation(line: 191, column: 24, scope: !649)
!667 = !DILocation(line: 192, column: 1, scope: !649)

; ModuleID = 'mm/interval_tree.c'
source_filename = "mm/interval_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_augment_callbacks = type { ptr, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.vm_area_struct = type { %union.anon.13, ptr, %struct.pgprot, %union.anon.15, i32, ptr, i8, %struct.anon.16, %struct.list_head, ptr, ptr, i64, ptr, ptr, %struct.atomic64_t, ptr, %struct.vm_userfaultfd_ctx }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { i64, i64 }
%struct.pgprot = type { i64 }
%union.anon.15 = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.anon_vma_chain = type { ptr, ptr, %struct.list_head, %struct.rb_node, i64 }

@vma_interval_tree_augment = internal constant %struct.rb_augment_callbacks { ptr @vma_interval_tree_augment_propagate, ptr @vma_interval_tree_augment_copy, ptr @vma_interval_tree_augment_rotate }, align 8, !dbg !0
@__anon_vma_interval_tree_augment = internal constant %struct.rb_augment_callbacks { ptr @__anon_vma_interval_tree_augment_propagate, ptr @__anon_vma_interval_tree_augment_copy, ptr @__anon_vma_interval_tree_augment_rotate }, align 8, !dbg !5119

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @vma_interval_tree_insert(ptr noundef %node, ptr noundef %root) #0 align 16 !dbg !5140 {
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
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5145, metadata !DIExpression()), !dbg !5157
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5146, metadata !DIExpression()), !dbg !5157
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #6, !dbg !5157
  call void @llvm.dbg.declare(metadata ptr %link, metadata !5147, metadata !DIExpression()), !dbg !5157
  %0 = load ptr, ptr %root.addr, align 8, !dbg !5157
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %0, i32 0, i32 0, !dbg !5157
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %rb_root, i32 0, i32 0, !dbg !5157
  store ptr %rb_node, ptr %link, align 8, !dbg !5157
  call void @llvm.lifetime.start.p0(i64 8, ptr %rb_parent) #6, !dbg !5157
  call void @llvm.dbg.declare(metadata ptr %rb_parent, metadata !5149, metadata !DIExpression()), !dbg !5157
  store ptr null, ptr %rb_parent, align 8, !dbg !5157
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #6, !dbg !5157
  call void @llvm.dbg.declare(metadata ptr %start, metadata !5150, metadata !DIExpression()), !dbg !5157
  %1 = load ptr, ptr %node.addr, align 8, !dbg !5157
  %call = call i64 @vma_start_pgoff(ptr noundef %1) #7, !dbg !5157
  store i64 %call, ptr %start, align 8, !dbg !5157
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #6, !dbg !5157
  call void @llvm.dbg.declare(metadata ptr %last, metadata !5151, metadata !DIExpression()), !dbg !5157
  %2 = load ptr, ptr %node.addr, align 8, !dbg !5157
  %call1 = call i64 @vma_last_pgoff(ptr noundef %2) #7, !dbg !5157
  store i64 %call1, ptr %last, align 8, !dbg !5157
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #6, !dbg !5157
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !5152, metadata !DIExpression()), !dbg !5157
  call void @llvm.lifetime.start.p0(i64 1, ptr %leftmost) #6, !dbg !5157
  call void @llvm.dbg.declare(metadata ptr %leftmost, metadata !5153, metadata !DIExpression()), !dbg !5157
  store i8 1, ptr %leftmost, align 1, !dbg !5157
  br label %while.cond, !dbg !5157

while.cond:                                       ; preds = %if.end10, %entry
  %3 = load ptr, ptr %link, align 8, !dbg !5157
  %4 = load ptr, ptr %3, align 8, !dbg !5157
  %tobool = icmp ne ptr %4, null, !dbg !5157
  br i1 %tobool, label %while.body, label %while.end, !dbg !5157

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %link, align 8, !dbg !5158
  %6 = load ptr, ptr %5, align 8, !dbg !5158
  store ptr %6, ptr %rb_parent, align 8, !dbg !5158
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !5159
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5154, metadata !DIExpression()), !dbg !5159
  %7 = load ptr, ptr %rb_parent, align 8, !dbg !5159
  store ptr %7, ptr %__mptr, align 8, !dbg !5159
  %8 = load ptr, ptr %__mptr, align 8, !dbg !5159
  %add.ptr = getelementptr i8, ptr %8, i64 -64, !dbg !5159
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5159
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !5158
  %9 = load ptr, ptr %tmp, align 8, !dbg !5159
  store ptr %9, ptr %parent, align 8, !dbg !5158
  %10 = load ptr, ptr %parent, align 8, !dbg !5160
  %shared = getelementptr inbounds %struct.vm_area_struct, ptr %10, i32 0, i32 7, !dbg !5160
  %rb_subtree_last = getelementptr inbounds %struct.anon.16, ptr %shared, i32 0, i32 1, !dbg !5160
  %11 = load i64, ptr %rb_subtree_last, align 8, !dbg !5160
  %12 = load i64, ptr %last, align 8, !dbg !5160
  %cmp = icmp ult i64 %11, %12, !dbg !5160
  br i1 %cmp, label %if.then, label %if.end, !dbg !5158

if.then:                                          ; preds = %while.body
  %13 = load i64, ptr %last, align 8, !dbg !5160
  %14 = load ptr, ptr %parent, align 8, !dbg !5160
  %shared2 = getelementptr inbounds %struct.vm_area_struct, ptr %14, i32 0, i32 7, !dbg !5160
  %rb_subtree_last3 = getelementptr inbounds %struct.anon.16, ptr %shared2, i32 0, i32 1, !dbg !5160
  store i64 %13, ptr %rb_subtree_last3, align 8, !dbg !5160
  br label %if.end, !dbg !5160

if.end:                                           ; preds = %if.then, %while.body
  %15 = load i64, ptr %start, align 8, !dbg !5162
  %16 = load ptr, ptr %parent, align 8, !dbg !5162
  %call4 = call i64 @vma_start_pgoff(ptr noundef %16) #7, !dbg !5162
  %cmp5 = icmp ult i64 %15, %call4, !dbg !5162
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !5158

if.then6:                                         ; preds = %if.end
  %17 = load ptr, ptr %parent, align 8, !dbg !5162
  %shared7 = getelementptr inbounds %struct.vm_area_struct, ptr %17, i32 0, i32 7, !dbg !5162
  %rb = getelementptr inbounds %struct.anon.16, ptr %shared7, i32 0, i32 0, !dbg !5162
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rb, i32 0, i32 2, !dbg !5162
  store ptr %rb_left, ptr %link, align 8, !dbg !5162
  br label %if.end10, !dbg !5162

if.else:                                          ; preds = %if.end
  %18 = load ptr, ptr %parent, align 8, !dbg !5164
  %shared8 = getelementptr inbounds %struct.vm_area_struct, ptr %18, i32 0, i32 7, !dbg !5164
  %rb9 = getelementptr inbounds %struct.anon.16, ptr %shared8, i32 0, i32 0, !dbg !5164
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb9, i32 0, i32 1, !dbg !5164
  store ptr %rb_right, ptr %link, align 8, !dbg !5164
  store i8 0, ptr %leftmost, align 1, !dbg !5164
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  br label %while.cond, !dbg !5157, !llvm.loop !5166

while.end:                                        ; preds = %while.cond
  %19 = load i64, ptr %last, align 8, !dbg !5157
  %20 = load ptr, ptr %node.addr, align 8, !dbg !5157
  %shared11 = getelementptr inbounds %struct.vm_area_struct, ptr %20, i32 0, i32 7, !dbg !5157
  %rb_subtree_last12 = getelementptr inbounds %struct.anon.16, ptr %shared11, i32 0, i32 1, !dbg !5157
  store i64 %19, ptr %rb_subtree_last12, align 8, !dbg !5157
  %21 = load ptr, ptr %node.addr, align 8, !dbg !5157
  %shared13 = getelementptr inbounds %struct.vm_area_struct, ptr %21, i32 0, i32 7, !dbg !5157
  %rb14 = getelementptr inbounds %struct.anon.16, ptr %shared13, i32 0, i32 0, !dbg !5157
  %22 = load ptr, ptr %rb_parent, align 8, !dbg !5157
  %23 = load ptr, ptr %link, align 8, !dbg !5157
  call void @rb_link_node(ptr noundef %rb14, ptr noundef %22, ptr noundef %23) #7, !dbg !5157
  %24 = load ptr, ptr %node.addr, align 8, !dbg !5157
  %shared15 = getelementptr inbounds %struct.vm_area_struct, ptr %24, i32 0, i32 7, !dbg !5157
  %rb16 = getelementptr inbounds %struct.anon.16, ptr %shared15, i32 0, i32 0, !dbg !5157
  %25 = load ptr, ptr %root.addr, align 8, !dbg !5157
  %26 = load i8, ptr %leftmost, align 1, !dbg !5157, !range !5169, !noundef !301
  %tobool17 = trunc i8 %26 to i1, !dbg !5157
  call void @rb_insert_augmented_cached(ptr noundef %rb16, ptr noundef %25, i1 noundef zeroext %tobool17, ptr noundef @vma_interval_tree_augment) #7, !dbg !5157
  call void @llvm.lifetime.end.p0(i64 1, ptr %leftmost) #6, !dbg !5157
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #6, !dbg !5157
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #6, !dbg !5157
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #6, !dbg !5157
  call void @llvm.lifetime.end.p0(i64 8, ptr %rb_parent) #6, !dbg !5157
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #6, !dbg !5157
  ret void, !dbg !5157
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @vma_start_pgoff(ptr noundef %v) #3 align 16 !dbg !5170 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5172, metadata !DIExpression()), !dbg !5173
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5174
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 11, !dbg !5175
  %1 = load i64, ptr %vm_pgoff, align 8, !dbg !5175
  ret i64 %1, !dbg !5176
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @vma_last_pgoff(ptr noundef %v) #3 align 16 !dbg !5177 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5179, metadata !DIExpression()), !dbg !5180
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5181
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 11, !dbg !5182
  %1 = load i64, ptr %vm_pgoff, align 8, !dbg !5182
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5183
  %call = call i64 @vma_pages(ptr noundef %2) #7, !dbg !5184
  %add = add i64 %1, %call, !dbg !5185
  %sub = sub i64 %add, 1, !dbg !5186
  ret i64 %sub, !dbg !5187
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_link_node(ptr noundef %node, ptr noundef %parent, ptr noundef %rb_link) #3 align 16 !dbg !5188 {
entry:
  %node.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %rb_link.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5193, metadata !DIExpression()), !dbg !5196
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5194, metadata !DIExpression()), !dbg !5197
  store ptr %rb_link, ptr %rb_link.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_link.addr, metadata !5195, metadata !DIExpression()), !dbg !5198
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !5199
  %1 = ptrtoint ptr %0 to i64, !dbg !5200
  %2 = load ptr, ptr %node.addr, align 8, !dbg !5201
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 0, !dbg !5202
  store i64 %1, ptr %__rb_parent_color, align 8, !dbg !5203
  %3 = load ptr, ptr %node.addr, align 8, !dbg !5204
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 1, !dbg !5205
  store ptr null, ptr %rb_right, align 8, !dbg !5206
  %4 = load ptr, ptr %node.addr, align 8, !dbg !5207
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2, !dbg !5208
  store ptr null, ptr %rb_left, align 8, !dbg !5209
  %5 = load ptr, ptr %node.addr, align 8, !dbg !5210
  %6 = load ptr, ptr %rb_link.addr, align 8, !dbg !5211
  store ptr %5, ptr %6, align 8, !dbg !5212
  ret void, !dbg !5213
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_insert_augmented_cached(ptr noundef %node, ptr noundef %root, i1 noundef zeroext %newleft, ptr noundef %augment) #3 align 16 !dbg !5214 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %newleft.addr = alloca i8, align 1
  %augment.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5219, metadata !DIExpression()), !dbg !5223
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5220, metadata !DIExpression()), !dbg !5224
  %frombool = zext i1 %newleft to i8
  store i8 %frombool, ptr %newleft.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %newleft.addr, metadata !5221, metadata !DIExpression()), !dbg !5225
  store ptr %augment, ptr %augment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %augment.addr, metadata !5222, metadata !DIExpression()), !dbg !5226
  %0 = load i8, ptr %newleft.addr, align 1, !dbg !5227, !range !5169, !noundef !301
  %tobool = trunc i8 %0 to i1, !dbg !5227
  br i1 %tobool, label %if.then, label %if.end, !dbg !5229

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %node.addr, align 8, !dbg !5230
  %2 = load ptr, ptr %root.addr, align 8, !dbg !5231
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %2, i32 0, i32 1, !dbg !5232
  store ptr %1, ptr %rb_leftmost, align 8, !dbg !5233
  br label %if.end, !dbg !5231

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %node.addr, align 8, !dbg !5234
  %4 = load ptr, ptr %root.addr, align 8, !dbg !5235
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %4, i32 0, i32 0, !dbg !5236
  %5 = load ptr, ptr %augment.addr, align 8, !dbg !5237
  call void @rb_insert_augmented(ptr noundef %3, ptr noundef %rb_root, ptr noundef %5) #7, !dbg !5238
  ret void, !dbg !5239
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @vma_interval_tree_remove(ptr noundef %node, ptr noundef %root) #0 align 16 !dbg !5240 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5242, metadata !DIExpression()), !dbg !5244
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5243, metadata !DIExpression()), !dbg !5244
  %0 = load ptr, ptr %node.addr, align 8, !dbg !5244
  %shared = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 7, !dbg !5244
  %rb = getelementptr inbounds %struct.anon.16, ptr %shared, i32 0, i32 0, !dbg !5244
  %1 = load ptr, ptr %root.addr, align 8, !dbg !5244
  call void @rb_erase_augmented_cached(ptr noundef %rb, ptr noundef %1, ptr noundef @vma_interval_tree_augment) #7, !dbg !5244
  ret void, !dbg !5244
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_erase_augmented_cached(ptr noundef %node, ptr noundef %root, ptr noundef %augment) #4 align 16 !dbg !5245 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %augment.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5249, metadata !DIExpression()), !dbg !5252
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5250, metadata !DIExpression()), !dbg !5253
  store ptr %augment, ptr %augment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %augment.addr, metadata !5251, metadata !DIExpression()), !dbg !5254
  %0 = load ptr, ptr %root.addr, align 8, !dbg !5255
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %0, i32 0, i32 1, !dbg !5257
  %1 = load ptr, ptr %rb_leftmost, align 8, !dbg !5257
  %2 = load ptr, ptr %node.addr, align 8, !dbg !5258
  %cmp = icmp eq ptr %1, %2, !dbg !5259
  br i1 %cmp, label %if.then, label %if.end, !dbg !5260

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %node.addr, align 8, !dbg !5261
  %call = call ptr @rb_next(ptr noundef %3) #7, !dbg !5262
  %4 = load ptr, ptr %root.addr, align 8, !dbg !5263
  %rb_leftmost1 = getelementptr inbounds %struct.rb_root_cached, ptr %4, i32 0, i32 1, !dbg !5264
  store ptr %call, ptr %rb_leftmost1, align 8, !dbg !5265
  br label %if.end, !dbg !5263

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %node.addr, align 8, !dbg !5266
  %6 = load ptr, ptr %root.addr, align 8, !dbg !5267
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %6, i32 0, i32 0, !dbg !5268
  %7 = load ptr, ptr %augment.addr, align 8, !dbg !5269
  call void @rb_erase_augmented(ptr noundef %5, ptr noundef %rb_root, ptr noundef %7) #7, !dbg !5270
  ret void, !dbg !5271
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @vma_interval_tree_iter_first(ptr noundef %root, i64 noundef %start, i64 noundef %last) #0 align 16 !dbg !5272 {
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
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5276, metadata !DIExpression()), !dbg !5285
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5277, metadata !DIExpression()), !dbg !5285
  store i64 %last, ptr %last.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !5278, metadata !DIExpression()), !dbg !5285
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #6, !dbg !5285
  call void @llvm.dbg.declare(metadata ptr %node, metadata !5279, metadata !DIExpression()), !dbg !5285
  call void @llvm.lifetime.start.p0(i64 8, ptr %leftmost) #6, !dbg !5285
  call void @llvm.dbg.declare(metadata ptr %leftmost, metadata !5280, metadata !DIExpression()), !dbg !5285
  %0 = load ptr, ptr %root.addr, align 8, !dbg !5286
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %0, i32 0, i32 0, !dbg !5286
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %rb_root, i32 0, i32 0, !dbg !5286
  %1 = load ptr, ptr %rb_node, align 8, !dbg !5286
  %tobool = icmp ne ptr %1, null, !dbg !5286
  br i1 %tobool, label %if.end, label %if.then, !dbg !5285

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5286
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5286

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !5288
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5281, metadata !DIExpression()), !dbg !5288
  %2 = load ptr, ptr %root.addr, align 8, !dbg !5288
  %rb_root1 = getelementptr inbounds %struct.rb_root_cached, ptr %2, i32 0, i32 0, !dbg !5288
  %rb_node2 = getelementptr inbounds %struct.rb_root, ptr %rb_root1, i32 0, i32 0, !dbg !5288
  %3 = load ptr, ptr %rb_node2, align 8, !dbg !5288
  store ptr %3, ptr %__mptr, align 8, !dbg !5288
  %4 = load ptr, ptr %__mptr, align 8, !dbg !5288
  %add.ptr = getelementptr i8, ptr %4, i64 -64, !dbg !5288
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5288
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !5285
  %5 = load ptr, ptr %tmp, align 8, !dbg !5288
  store ptr %5, ptr %node, align 8, !dbg !5285
  %6 = load ptr, ptr %node, align 8, !dbg !5289
  %shared = getelementptr inbounds %struct.vm_area_struct, ptr %6, i32 0, i32 7, !dbg !5289
  %rb_subtree_last = getelementptr inbounds %struct.anon.16, ptr %shared, i32 0, i32 1, !dbg !5289
  %7 = load i64, ptr %rb_subtree_last, align 8, !dbg !5289
  %8 = load i64, ptr %start.addr, align 8, !dbg !5289
  %cmp = icmp ult i64 %7, %8, !dbg !5289
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !5285

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !5289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5289

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #6, !dbg !5291
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !5283, metadata !DIExpression()), !dbg !5291
  %9 = load ptr, ptr %root.addr, align 8, !dbg !5291
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %9, i32 0, i32 1, !dbg !5291
  %10 = load ptr, ptr %rb_leftmost, align 8, !dbg !5291
  store ptr %10, ptr %__mptr5, align 8, !dbg !5291
  %11 = load ptr, ptr %__mptr5, align 8, !dbg !5291
  %add.ptr7 = getelementptr i8, ptr %11, i64 -64, !dbg !5291
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !5291
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #6, !dbg !5285
  %12 = load ptr, ptr %tmp6, align 8, !dbg !5291
  store ptr %12, ptr %leftmost, align 8, !dbg !5285
  %13 = load ptr, ptr %leftmost, align 8, !dbg !5292
  %call = call i64 @vma_start_pgoff(ptr noundef %13) #7, !dbg !5292
  %14 = load i64, ptr %last.addr, align 8, !dbg !5292
  %cmp8 = icmp ugt i64 %call, %14, !dbg !5292
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !5285

if.then9:                                         ; preds = %if.end4
  store ptr null, ptr %retval, align 8, !dbg !5292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5292

if.end10:                                         ; preds = %if.end4
  %15 = load ptr, ptr %node, align 8, !dbg !5285
  %16 = load i64, ptr %start.addr, align 8, !dbg !5285
  %17 = load i64, ptr %last.addr, align 8, !dbg !5285
  %call11 = call ptr @vma_interval_tree_subtree_search(ptr noundef %15, i64 noundef %16, i64 noundef %17) #7, !dbg !5285
  store ptr %call11, ptr %retval, align 8, !dbg !5285
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5285

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %leftmost) #6, !dbg !5285
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #6, !dbg !5285
  %18 = load ptr, ptr %retval, align 8, !dbg !5285
  ret ptr %18, !dbg !5285
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @vma_interval_tree_subtree_search(ptr noundef %node, i64 noundef %start, i64 noundef %last) #0 align 16 !dbg !5294 {
entry:
  %retval = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %last.addr = alloca i64, align 8
  %left = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr17 = alloca ptr, align 8
  %tmp21 = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5298, metadata !DIExpression()), !dbg !5313
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5299, metadata !DIExpression()), !dbg !5313
  store i64 %last, ptr %last.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !5300, metadata !DIExpression()), !dbg !5313
  br label %while.body, !dbg !5313

while.body:                                       ; preds = %entry, %cleanup, %if.then26
  %0 = load ptr, ptr %node.addr, align 8, !dbg !5314
  %shared = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 7, !dbg !5314
  %rb = getelementptr inbounds %struct.anon.16, ptr %shared, i32 0, i32 0, !dbg !5314
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rb, i32 0, i32 2, !dbg !5314
  %1 = load ptr, ptr %rb_left, align 8, !dbg !5314
  %tobool = icmp ne ptr %1, null, !dbg !5314
  br i1 %tobool, label %if.then, label %if.end6, !dbg !5315

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #6, !dbg !5316
  call void @llvm.dbg.declare(metadata ptr %left, metadata !5301, metadata !DIExpression()), !dbg !5316
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !5317
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5305, metadata !DIExpression()), !dbg !5317
  %2 = load ptr, ptr %node.addr, align 8, !dbg !5317
  %shared1 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 7, !dbg !5317
  %rb2 = getelementptr inbounds %struct.anon.16, ptr %shared1, i32 0, i32 0, !dbg !5317
  %rb_left3 = getelementptr inbounds %struct.rb_node, ptr %rb2, i32 0, i32 2, !dbg !5317
  %3 = load ptr, ptr %rb_left3, align 8, !dbg !5317
  store ptr %3, ptr %__mptr, align 8, !dbg !5317
  %4 = load ptr, ptr %__mptr, align 8, !dbg !5317
  %add.ptr = getelementptr i8, ptr %4, i64 -64, !dbg !5317
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5317
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !5316
  %5 = load ptr, ptr %tmp, align 8, !dbg !5317
  store ptr %5, ptr %left, align 8, !dbg !5316
  %6 = load i64, ptr %start.addr, align 8, !dbg !5318
  %7 = load ptr, ptr %left, align 8, !dbg !5318
  %shared4 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 7, !dbg !5318
  %rb_subtree_last = getelementptr inbounds %struct.anon.16, ptr %shared4, i32 0, i32 1, !dbg !5318
  %8 = load i64, ptr %rb_subtree_last, align 8, !dbg !5318
  %cmp = icmp ule i64 %6, %8, !dbg !5318
  br i1 %cmp, label %if.then5, label %if.end, !dbg !5316

if.then5:                                         ; preds = %if.then
  %9 = load ptr, ptr %left, align 8, !dbg !5320
  store ptr %9, ptr %node.addr, align 8, !dbg !5320
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5320, !llvm.loop !5322

if.end:                                           ; preds = %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5314
  br label %cleanup, !dbg !5314

cleanup:                                          ; preds = %if.end, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #6, !dbg !5314
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %while.body
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end6, !dbg !5316

if.end6:                                          ; preds = %cleanup.cont, %while.body
  %10 = load ptr, ptr %node.addr, align 8, !dbg !5323
  %call = call i64 @vma_start_pgoff(ptr noundef %10) #7, !dbg !5323
  %11 = load i64, ptr %last.addr, align 8, !dbg !5323
  %cmp7 = icmp ule i64 %call, %11, !dbg !5323
  br i1 %cmp7, label %if.then8, label %if.end29, !dbg !5315

if.then8:                                         ; preds = %if.end6
  %12 = load i64, ptr %start.addr, align 8, !dbg !5324
  %13 = load ptr, ptr %node.addr, align 8, !dbg !5324
  %call9 = call i64 @vma_last_pgoff(ptr noundef %13) #7, !dbg !5324
  %cmp10 = icmp ule i64 %12, %call9, !dbg !5324
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !5326

if.then11:                                        ; preds = %if.then8
  %14 = load ptr, ptr %node.addr, align 8, !dbg !5324
  store ptr %14, ptr %retval, align 8, !dbg !5324
  br label %return, !dbg !5324

if.end12:                                         ; preds = %if.then8
  %15 = load ptr, ptr %node.addr, align 8, !dbg !5327
  %shared13 = getelementptr inbounds %struct.vm_area_struct, ptr %15, i32 0, i32 7, !dbg !5327
  %rb14 = getelementptr inbounds %struct.anon.16, ptr %shared13, i32 0, i32 0, !dbg !5327
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb14, i32 0, i32 1, !dbg !5327
  %16 = load ptr, ptr %rb_right, align 8, !dbg !5327
  %tobool15 = icmp ne ptr %16, null, !dbg !5327
  br i1 %tobool15, label %if.then16, label %if.end28, !dbg !5326

if.then16:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr17) #6, !dbg !5328
  call void @llvm.dbg.declare(metadata ptr %__mptr17, metadata !5307, metadata !DIExpression()), !dbg !5328
  %17 = load ptr, ptr %node.addr, align 8, !dbg !5328
  %shared18 = getelementptr inbounds %struct.vm_area_struct, ptr %17, i32 0, i32 7, !dbg !5328
  %rb19 = getelementptr inbounds %struct.anon.16, ptr %shared18, i32 0, i32 0, !dbg !5328
  %rb_right20 = getelementptr inbounds %struct.rb_node, ptr %rb19, i32 0, i32 1, !dbg !5328
  %18 = load ptr, ptr %rb_right20, align 8, !dbg !5328
  store ptr %18, ptr %__mptr17, align 8, !dbg !5328
  %19 = load ptr, ptr %__mptr17, align 8, !dbg !5328
  %add.ptr22 = getelementptr i8, ptr %19, i64 -64, !dbg !5328
  store ptr %add.ptr22, ptr %tmp21, align 8, !dbg !5328
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr17) #6, !dbg !5329
  %20 = load ptr, ptr %tmp21, align 8, !dbg !5328
  store ptr %20, ptr %node.addr, align 8, !dbg !5329
  %21 = load i64, ptr %start.addr, align 8, !dbg !5330
  %22 = load ptr, ptr %node.addr, align 8, !dbg !5330
  %shared23 = getelementptr inbounds %struct.vm_area_struct, ptr %22, i32 0, i32 7, !dbg !5330
  %rb_subtree_last24 = getelementptr inbounds %struct.anon.16, ptr %shared23, i32 0, i32 1, !dbg !5330
  %23 = load i64, ptr %rb_subtree_last24, align 8, !dbg !5330
  %cmp25 = icmp ule i64 %21, %23, !dbg !5330
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !5329

if.then26:                                        ; preds = %if.then16
  br label %while.body, !dbg !5330, !llvm.loop !5322

if.end27:                                         ; preds = %if.then16
  br label %if.end28, !dbg !5329

if.end28:                                         ; preds = %if.end27, %if.end12
  br label %if.end29, !dbg !5326

if.end29:                                         ; preds = %if.end28, %if.end6
  store ptr null, ptr %retval, align 8, !dbg !5315
  br label %return, !dbg !5315

return:                                           ; preds = %if.end29, %if.then11
  %24 = load ptr, ptr %retval, align 8, !dbg !5313
  ret ptr %24, !dbg !5313

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @vma_interval_tree_iter_next(ptr noundef %node, i64 noundef %start, i64 noundef %last) #0 align 16 !dbg !5332 {
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
  %__mptr12 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5334, metadata !DIExpression()), !dbg !5348
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5335, metadata !DIExpression()), !dbg !5348
  store i64 %last, ptr %last.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !5336, metadata !DIExpression()), !dbg !5348
  call void @llvm.lifetime.start.p0(i64 8, ptr %rb) #6, !dbg !5348
  call void @llvm.dbg.declare(metadata ptr %rb, metadata !5337, metadata !DIExpression()), !dbg !5348
  %0 = load ptr, ptr %node.addr, align 8, !dbg !5348
  %shared = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 7, !dbg !5348
  %rb1 = getelementptr inbounds %struct.anon.16, ptr %shared, i32 0, i32 0, !dbg !5348
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb1, i32 0, i32 1, !dbg !5348
  %1 = load ptr, ptr %rb_right, align 8, !dbg !5348
  store ptr %1, ptr %rb, align 8, !dbg !5348
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #6, !dbg !5348
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !5338, metadata !DIExpression()), !dbg !5348
  br label %while.cond, !dbg !5348

while.cond:                                       ; preds = %if.end26, %entry
  br label %while.body, !dbg !5348

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %rb, align 8, !dbg !5349
  %tobool = icmp ne ptr %2, null, !dbg !5349
  br i1 %tobool, label %if.then, label %if.end4, !dbg !5350

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %right) #6, !dbg !5351
  call void @llvm.dbg.declare(metadata ptr %right, metadata !5339, metadata !DIExpression()), !dbg !5351
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !5352
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5343, metadata !DIExpression()), !dbg !5352
  %3 = load ptr, ptr %rb, align 8, !dbg !5352
  store ptr %3, ptr %__mptr, align 8, !dbg !5352
  %4 = load ptr, ptr %__mptr, align 8, !dbg !5352
  %add.ptr = getelementptr i8, ptr %4, i64 -64, !dbg !5352
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5352
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !5351
  %5 = load ptr, ptr %tmp, align 8, !dbg !5352
  store ptr %5, ptr %right, align 8, !dbg !5351
  %6 = load i64, ptr %start.addr, align 8, !dbg !5353
  %7 = load ptr, ptr %right, align 8, !dbg !5353
  %shared2 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 7, !dbg !5353
  %rb_subtree_last = getelementptr inbounds %struct.anon.16, ptr %shared2, i32 0, i32 1, !dbg !5353
  %8 = load i64, ptr %rb_subtree_last, align 8, !dbg !5353
  %cmp = icmp ule i64 %6, %8, !dbg !5353
  br i1 %cmp, label %if.then3, label %if.end, !dbg !5351

if.then3:                                         ; preds = %if.then
  %9 = load ptr, ptr %right, align 8, !dbg !5353
  %10 = load i64, ptr %start.addr, align 8, !dbg !5353
  %11 = load i64, ptr %last.addr, align 8, !dbg !5353
  %call = call ptr @vma_interval_tree_subtree_search(ptr noundef %9, i64 noundef %10, i64 noundef %11) #7, !dbg !5353
  store ptr %call, ptr %retval, align 8, !dbg !5353
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5353

if.end:                                           ; preds = %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5349
  br label %cleanup, !dbg !5349

cleanup:                                          ; preds = %if.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %right) #6, !dbg !5349
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup27 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end4, !dbg !5351

if.end4:                                          ; preds = %cleanup.cont, %while.body
  br label %do.body, !dbg !5350

do.body:                                          ; preds = %do.cond, %if.end4
  %12 = load ptr, ptr %node.addr, align 8, !dbg !5355
  %shared5 = getelementptr inbounds %struct.vm_area_struct, ptr %12, i32 0, i32 7, !dbg !5355
  %rb6 = getelementptr inbounds %struct.anon.16, ptr %shared5, i32 0, i32 0, !dbg !5355
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %rb6, i32 0, i32 0, !dbg !5355
  %13 = load i64, ptr %__rb_parent_color, align 8, !dbg !5355
  %and = and i64 %13, -4, !dbg !5355
  %14 = inttoptr i64 %and to ptr, !dbg !5355
  store ptr %14, ptr %rb, align 8, !dbg !5355
  %15 = load ptr, ptr %rb, align 8, !dbg !5356
  %tobool7 = icmp ne ptr %15, null, !dbg !5356
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !5355

if.then8:                                         ; preds = %do.body
  store ptr null, ptr %retval, align 8, !dbg !5356
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup27, !dbg !5356

if.end9:                                          ; preds = %do.body
  %16 = load ptr, ptr %node.addr, align 8, !dbg !5355
  %shared10 = getelementptr inbounds %struct.vm_area_struct, ptr %16, i32 0, i32 7, !dbg !5355
  %rb11 = getelementptr inbounds %struct.anon.16, ptr %shared10, i32 0, i32 0, !dbg !5355
  store ptr %rb11, ptr %prev, align 8, !dbg !5355
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr12) #6, !dbg !5358
  call void @llvm.dbg.declare(metadata ptr %__mptr12, metadata !5345, metadata !DIExpression()), !dbg !5358
  %17 = load ptr, ptr %rb, align 8, !dbg !5358
  store ptr %17, ptr %__mptr12, align 8, !dbg !5358
  %18 = load ptr, ptr %__mptr12, align 8, !dbg !5358
  %add.ptr14 = getelementptr i8, ptr %18, i64 -64, !dbg !5358
  store ptr %add.ptr14, ptr %tmp13, align 8, !dbg !5358
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr12) #6, !dbg !5355
  %19 = load ptr, ptr %tmp13, align 8, !dbg !5358
  store ptr %19, ptr %node.addr, align 8, !dbg !5355
  %20 = load ptr, ptr %node.addr, align 8, !dbg !5355
  %shared15 = getelementptr inbounds %struct.vm_area_struct, ptr %20, i32 0, i32 7, !dbg !5355
  %rb16 = getelementptr inbounds %struct.anon.16, ptr %shared15, i32 0, i32 0, !dbg !5355
  %rb_right17 = getelementptr inbounds %struct.rb_node, ptr %rb16, i32 0, i32 1, !dbg !5355
  %21 = load ptr, ptr %rb_right17, align 8, !dbg !5355
  store ptr %21, ptr %rb, align 8, !dbg !5355
  br label %do.cond, !dbg !5355

do.cond:                                          ; preds = %if.end9
  %22 = load ptr, ptr %prev, align 8, !dbg !5350
  %23 = load ptr, ptr %rb, align 8, !dbg !5350
  %cmp18 = icmp eq ptr %22, %23, !dbg !5350
  br i1 %cmp18, label %do.body, label %do.end, !dbg !5355, !llvm.loop !5359

do.end:                                           ; preds = %do.cond
  %24 = load i64, ptr %last.addr, align 8, !dbg !5360
  %25 = load ptr, ptr %node.addr, align 8, !dbg !5360
  %call19 = call i64 @vma_start_pgoff(ptr noundef %25) #7, !dbg !5360
  %cmp20 = icmp ult i64 %24, %call19, !dbg !5360
  br i1 %cmp20, label %if.then21, label %if.else, !dbg !5350

if.then21:                                        ; preds = %do.end
  store ptr null, ptr %retval, align 8, !dbg !5360
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup27, !dbg !5360

if.else:                                          ; preds = %do.end
  %26 = load i64, ptr %start.addr, align 8, !dbg !5362
  %27 = load ptr, ptr %node.addr, align 8, !dbg !5362
  %call22 = call i64 @vma_last_pgoff(ptr noundef %27) #7, !dbg !5362
  %cmp23 = icmp ule i64 %26, %call22, !dbg !5362
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !5360

if.then24:                                        ; preds = %if.else
  %28 = load ptr, ptr %node.addr, align 8, !dbg !5362
  store ptr %28, ptr %retval, align 8, !dbg !5362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup27, !dbg !5362

if.end25:                                         ; preds = %if.else
  br label %if.end26

if.end26:                                         ; preds = %if.end25
  br label %while.cond, !dbg !5348, !llvm.loop !5364

cleanup27:                                        ; preds = %if.then24, %if.then21, %if.then8, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #6, !dbg !5348
  call void @llvm.lifetime.end.p0(i64 8, ptr %rb) #6, !dbg !5348
  %29 = load ptr, ptr %retval, align 8, !dbg !5348
  ret ptr %29, !dbg !5348
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @vma_interval_tree_insert_after(ptr noundef %node, ptr noundef %prev, ptr noundef %root) #0 align 16 !dbg !5365 {
entry:
  %node.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %link = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %last = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr14 = alloca ptr, align 8
  %tmp18 = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5369, metadata !DIExpression()), !dbg !5382
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5370, metadata !DIExpression()), !dbg !5383
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5371, metadata !DIExpression()), !dbg !5384
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #6, !dbg !5385
  call void @llvm.dbg.declare(metadata ptr %link, metadata !5372, metadata !DIExpression()), !dbg !5386
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #6, !dbg !5387
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !5373, metadata !DIExpression()), !dbg !5388
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #6, !dbg !5389
  call void @llvm.dbg.declare(metadata ptr %last, metadata !5374, metadata !DIExpression()), !dbg !5390
  %0 = load ptr, ptr %node.addr, align 8, !dbg !5391
  %call = call i64 @vma_last_pgoff(ptr noundef %0) #7, !dbg !5392
  store i64 %call, ptr %last, align 8, !dbg !5390
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5393
  %shared = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7, !dbg !5394
  %rb = getelementptr inbounds %struct.anon.16, ptr %shared, i32 0, i32 0, !dbg !5395
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb, i32 0, i32 1, !dbg !5396
  %2 = load ptr, ptr %rb_right, align 8, !dbg !5396
  %tobool = icmp ne ptr %2, null, !dbg !5393
  br i1 %tobool, label %if.else, label %if.then, !dbg !5397

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !5398
  store ptr %3, ptr %parent, align 8, !dbg !5400
  %4 = load ptr, ptr %prev.addr, align 8, !dbg !5401
  %shared1 = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 7, !dbg !5402
  %rb2 = getelementptr inbounds %struct.anon.16, ptr %shared1, i32 0, i32 0, !dbg !5403
  %rb_right3 = getelementptr inbounds %struct.rb_node, ptr %rb2, i32 0, i32 1, !dbg !5404
  store ptr %rb_right3, ptr %link, align 8, !dbg !5405
  br label %if.end30, !dbg !5406

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !5407
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5375, metadata !DIExpression()), !dbg !5407
  %5 = load ptr, ptr %prev.addr, align 8, !dbg !5407
  %shared4 = getelementptr inbounds %struct.vm_area_struct, ptr %5, i32 0, i32 7, !dbg !5407
  %rb5 = getelementptr inbounds %struct.anon.16, ptr %shared4, i32 0, i32 0, !dbg !5407
  %rb_right6 = getelementptr inbounds %struct.rb_node, ptr %rb5, i32 0, i32 1, !dbg !5407
  %6 = load ptr, ptr %rb_right6, align 8, !dbg !5407
  store ptr %6, ptr %__mptr, align 8, !dbg !5407
  %7 = load ptr, ptr %__mptr, align 8, !dbg !5407
  %add.ptr = getelementptr i8, ptr %7, i64 -64, !dbg !5407
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5407
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !5408
  %8 = load ptr, ptr %tmp, align 8, !dbg !5407
  store ptr %8, ptr %parent, align 8, !dbg !5409
  %9 = load ptr, ptr %parent, align 8, !dbg !5410
  %shared7 = getelementptr inbounds %struct.vm_area_struct, ptr %9, i32 0, i32 7, !dbg !5412
  %rb_subtree_last = getelementptr inbounds %struct.anon.16, ptr %shared7, i32 0, i32 1, !dbg !5413
  %10 = load i64, ptr %rb_subtree_last, align 8, !dbg !5413
  %11 = load i64, ptr %last, align 8, !dbg !5414
  %cmp = icmp ult i64 %10, %11, !dbg !5415
  br i1 %cmp, label %if.then8, label %if.end, !dbg !5416

if.then8:                                         ; preds = %if.else
  %12 = load i64, ptr %last, align 8, !dbg !5417
  %13 = load ptr, ptr %parent, align 8, !dbg !5418
  %shared9 = getelementptr inbounds %struct.vm_area_struct, ptr %13, i32 0, i32 7, !dbg !5419
  %rb_subtree_last10 = getelementptr inbounds %struct.anon.16, ptr %shared9, i32 0, i32 1, !dbg !5420
  store i64 %12, ptr %rb_subtree_last10, align 8, !dbg !5421
  br label %if.end, !dbg !5418

if.end:                                           ; preds = %if.then8, %if.else
  br label %while.cond, !dbg !5422

while.cond:                                       ; preds = %if.end26, %if.end
  %14 = load ptr, ptr %parent, align 8, !dbg !5423
  %shared11 = getelementptr inbounds %struct.vm_area_struct, ptr %14, i32 0, i32 7, !dbg !5424
  %rb12 = getelementptr inbounds %struct.anon.16, ptr %shared11, i32 0, i32 0, !dbg !5425
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rb12, i32 0, i32 2, !dbg !5426
  %15 = load ptr, ptr %rb_left, align 8, !dbg !5426
  %tobool13 = icmp ne ptr %15, null, !dbg !5422
  br i1 %tobool13, label %while.body, label %while.end, !dbg !5422

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr14) #6, !dbg !5427
  call void @llvm.dbg.declare(metadata ptr %__mptr14, metadata !5379, metadata !DIExpression()), !dbg !5427
  %16 = load ptr, ptr %parent, align 8, !dbg !5427
  %shared15 = getelementptr inbounds %struct.vm_area_struct, ptr %16, i32 0, i32 7, !dbg !5427
  %rb16 = getelementptr inbounds %struct.anon.16, ptr %shared15, i32 0, i32 0, !dbg !5427
  %rb_left17 = getelementptr inbounds %struct.rb_node, ptr %rb16, i32 0, i32 2, !dbg !5427
  %17 = load ptr, ptr %rb_left17, align 8, !dbg !5427
  store ptr %17, ptr %__mptr14, align 8, !dbg !5427
  %18 = load ptr, ptr %__mptr14, align 8, !dbg !5427
  %add.ptr19 = getelementptr i8, ptr %18, i64 -64, !dbg !5427
  store ptr %add.ptr19, ptr %tmp18, align 8, !dbg !5427
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr14) #6, !dbg !5428
  %19 = load ptr, ptr %tmp18, align 8, !dbg !5427
  store ptr %19, ptr %parent, align 8, !dbg !5429
  %20 = load ptr, ptr %parent, align 8, !dbg !5430
  %shared20 = getelementptr inbounds %struct.vm_area_struct, ptr %20, i32 0, i32 7, !dbg !5432
  %rb_subtree_last21 = getelementptr inbounds %struct.anon.16, ptr %shared20, i32 0, i32 1, !dbg !5433
  %21 = load i64, ptr %rb_subtree_last21, align 8, !dbg !5433
  %22 = load i64, ptr %last, align 8, !dbg !5434
  %cmp22 = icmp ult i64 %21, %22, !dbg !5435
  br i1 %cmp22, label %if.then23, label %if.end26, !dbg !5436

if.then23:                                        ; preds = %while.body
  %23 = load i64, ptr %last, align 8, !dbg !5437
  %24 = load ptr, ptr %parent, align 8, !dbg !5438
  %shared24 = getelementptr inbounds %struct.vm_area_struct, ptr %24, i32 0, i32 7, !dbg !5439
  %rb_subtree_last25 = getelementptr inbounds %struct.anon.16, ptr %shared24, i32 0, i32 1, !dbg !5440
  store i64 %23, ptr %rb_subtree_last25, align 8, !dbg !5441
  br label %if.end26, !dbg !5438

if.end26:                                         ; preds = %if.then23, %while.body
  br label %while.cond, !dbg !5422, !llvm.loop !5442

while.end:                                        ; preds = %while.cond
  %25 = load ptr, ptr %parent, align 8, !dbg !5444
  %shared27 = getelementptr inbounds %struct.vm_area_struct, ptr %25, i32 0, i32 7, !dbg !5445
  %rb28 = getelementptr inbounds %struct.anon.16, ptr %shared27, i32 0, i32 0, !dbg !5446
  %rb_left29 = getelementptr inbounds %struct.rb_node, ptr %rb28, i32 0, i32 2, !dbg !5447
  store ptr %rb_left29, ptr %link, align 8, !dbg !5448
  br label %if.end30

if.end30:                                         ; preds = %while.end, %if.then
  %26 = load i64, ptr %last, align 8, !dbg !5449
  %27 = load ptr, ptr %node.addr, align 8, !dbg !5450
  %shared31 = getelementptr inbounds %struct.vm_area_struct, ptr %27, i32 0, i32 7, !dbg !5451
  %rb_subtree_last32 = getelementptr inbounds %struct.anon.16, ptr %shared31, i32 0, i32 1, !dbg !5452
  store i64 %26, ptr %rb_subtree_last32, align 8, !dbg !5453
  %28 = load ptr, ptr %node.addr, align 8, !dbg !5454
  %shared33 = getelementptr inbounds %struct.vm_area_struct, ptr %28, i32 0, i32 7, !dbg !5455
  %rb34 = getelementptr inbounds %struct.anon.16, ptr %shared33, i32 0, i32 0, !dbg !5456
  %29 = load ptr, ptr %parent, align 8, !dbg !5457
  %shared35 = getelementptr inbounds %struct.vm_area_struct, ptr %29, i32 0, i32 7, !dbg !5458
  %rb36 = getelementptr inbounds %struct.anon.16, ptr %shared35, i32 0, i32 0, !dbg !5459
  %30 = load ptr, ptr %link, align 8, !dbg !5460
  call void @rb_link_node(ptr noundef %rb34, ptr noundef %rb36, ptr noundef %30) #7, !dbg !5461
  %31 = load ptr, ptr %node.addr, align 8, !dbg !5462
  %shared37 = getelementptr inbounds %struct.vm_area_struct, ptr %31, i32 0, i32 7, !dbg !5463
  %rb38 = getelementptr inbounds %struct.anon.16, ptr %shared37, i32 0, i32 0, !dbg !5464
  %32 = load ptr, ptr %root.addr, align 8, !dbg !5465
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %32, i32 0, i32 0, !dbg !5466
  call void @rb_insert_augmented(ptr noundef %rb38, ptr noundef %rb_root, ptr noundef @vma_interval_tree_augment) #7, !dbg !5467
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #6, !dbg !5468
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #6, !dbg !5468
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #6, !dbg !5468
  ret void, !dbg !5468
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_insert_augmented(ptr noundef %node, ptr noundef %root, ptr noundef %augment) #3 align 16 !dbg !5469 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %augment.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5474, metadata !DIExpression()), !dbg !5477
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5475, metadata !DIExpression()), !dbg !5478
  store ptr %augment, ptr %augment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %augment.addr, metadata !5476, metadata !DIExpression()), !dbg !5479
  %0 = load ptr, ptr %node.addr, align 8, !dbg !5480
  %1 = load ptr, ptr %root.addr, align 8, !dbg !5481
  %2 = load ptr, ptr %augment.addr, align 8, !dbg !5482
  %rotate = getelementptr inbounds %struct.rb_augment_callbacks, ptr %2, i32 0, i32 2, !dbg !5483
  %3 = load ptr, ptr %rotate, align 8, !dbg !5483
  call void @__rb_insert_augmented(ptr noundef %0, ptr noundef %1, ptr noundef %3) #7, !dbg !5484
  ret void, !dbg !5485
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @anon_vma_interval_tree_insert(ptr noundef %node, ptr noundef %root) #0 align 16 !dbg !5486 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5490, metadata !DIExpression()), !dbg !5492
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5491, metadata !DIExpression()), !dbg !5493
  %0 = load ptr, ptr %node.addr, align 8, !dbg !5494
  %1 = load ptr, ptr %root.addr, align 8, !dbg !5495
  call void @__anon_vma_interval_tree_insert(ptr noundef %0, ptr noundef %1) #7, !dbg !5496
  ret void, !dbg !5497
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__anon_vma_interval_tree_insert(ptr noundef %node, ptr noundef %root) #3 align 16 !dbg !5498 {
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
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5500, metadata !DIExpression()), !dbg !5511
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5501, metadata !DIExpression()), !dbg !5511
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #6, !dbg !5511
  call void @llvm.dbg.declare(metadata ptr %link, metadata !5502, metadata !DIExpression()), !dbg !5511
  %0 = load ptr, ptr %root.addr, align 8, !dbg !5511
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %0, i32 0, i32 0, !dbg !5511
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %rb_root, i32 0, i32 0, !dbg !5511
  store ptr %rb_node, ptr %link, align 8, !dbg !5511
  call void @llvm.lifetime.start.p0(i64 8, ptr %rb_parent) #6, !dbg !5511
  call void @llvm.dbg.declare(metadata ptr %rb_parent, metadata !5503, metadata !DIExpression()), !dbg !5511
  store ptr null, ptr %rb_parent, align 8, !dbg !5511
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #6, !dbg !5511
  call void @llvm.dbg.declare(metadata ptr %start, metadata !5504, metadata !DIExpression()), !dbg !5511
  %1 = load ptr, ptr %node.addr, align 8, !dbg !5511
  %call = call i64 @avc_start_pgoff(ptr noundef %1) #7, !dbg !5511
  store i64 %call, ptr %start, align 8, !dbg !5511
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #6, !dbg !5511
  call void @llvm.dbg.declare(metadata ptr %last, metadata !5505, metadata !DIExpression()), !dbg !5511
  %2 = load ptr, ptr %node.addr, align 8, !dbg !5511
  %call1 = call i64 @avc_last_pgoff(ptr noundef %2) #7, !dbg !5511
  store i64 %call1, ptr %last, align 8, !dbg !5511
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #6, !dbg !5511
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !5506, metadata !DIExpression()), !dbg !5511
  call void @llvm.lifetime.start.p0(i64 1, ptr %leftmost) #6, !dbg !5511
  call void @llvm.dbg.declare(metadata ptr %leftmost, metadata !5507, metadata !DIExpression()), !dbg !5511
  store i8 1, ptr %leftmost, align 1, !dbg !5511
  br label %while.cond, !dbg !5511

while.cond:                                       ; preds = %if.end7, %entry
  %3 = load ptr, ptr %link, align 8, !dbg !5511
  %4 = load ptr, ptr %3, align 8, !dbg !5511
  %tobool = icmp ne ptr %4, null, !dbg !5511
  br i1 %tobool, label %while.body, label %while.end, !dbg !5511

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %link, align 8, !dbg !5512
  %6 = load ptr, ptr %5, align 8, !dbg !5512
  store ptr %6, ptr %rb_parent, align 8, !dbg !5512
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !5513
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5508, metadata !DIExpression()), !dbg !5513
  %7 = load ptr, ptr %rb_parent, align 8, !dbg !5513
  store ptr %7, ptr %__mptr, align 8, !dbg !5513
  %8 = load ptr, ptr %__mptr, align 8, !dbg !5513
  %add.ptr = getelementptr i8, ptr %8, i64 -32, !dbg !5513
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5513
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !5512
  %9 = load ptr, ptr %tmp, align 8, !dbg !5513
  store ptr %9, ptr %parent, align 8, !dbg !5512
  %10 = load ptr, ptr %parent, align 8, !dbg !5514
  %rb_subtree_last = getelementptr inbounds %struct.anon_vma_chain, ptr %10, i32 0, i32 4, !dbg !5514
  %11 = load i64, ptr %rb_subtree_last, align 8, !dbg !5514
  %12 = load i64, ptr %last, align 8, !dbg !5514
  %cmp = icmp ult i64 %11, %12, !dbg !5514
  br i1 %cmp, label %if.then, label %if.end, !dbg !5512

if.then:                                          ; preds = %while.body
  %13 = load i64, ptr %last, align 8, !dbg !5514
  %14 = load ptr, ptr %parent, align 8, !dbg !5514
  %rb_subtree_last2 = getelementptr inbounds %struct.anon_vma_chain, ptr %14, i32 0, i32 4, !dbg !5514
  store i64 %13, ptr %rb_subtree_last2, align 8, !dbg !5514
  br label %if.end, !dbg !5514

if.end:                                           ; preds = %if.then, %while.body
  %15 = load i64, ptr %start, align 8, !dbg !5516
  %16 = load ptr, ptr %parent, align 8, !dbg !5516
  %call3 = call i64 @avc_start_pgoff(ptr noundef %16) #7, !dbg !5516
  %cmp4 = icmp ult i64 %15, %call3, !dbg !5516
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !5512

if.then5:                                         ; preds = %if.end
  %17 = load ptr, ptr %parent, align 8, !dbg !5516
  %rb = getelementptr inbounds %struct.anon_vma_chain, ptr %17, i32 0, i32 3, !dbg !5516
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rb, i32 0, i32 2, !dbg !5516
  store ptr %rb_left, ptr %link, align 8, !dbg !5516
  br label %if.end7, !dbg !5516

if.else:                                          ; preds = %if.end
  %18 = load ptr, ptr %parent, align 8, !dbg !5518
  %rb6 = getelementptr inbounds %struct.anon_vma_chain, ptr %18, i32 0, i32 3, !dbg !5518
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb6, i32 0, i32 1, !dbg !5518
  store ptr %rb_right, ptr %link, align 8, !dbg !5518
  store i8 0, ptr %leftmost, align 1, !dbg !5518
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  br label %while.cond, !dbg !5511, !llvm.loop !5520

while.end:                                        ; preds = %while.cond
  %19 = load i64, ptr %last, align 8, !dbg !5511
  %20 = load ptr, ptr %node.addr, align 8, !dbg !5511
  %rb_subtree_last8 = getelementptr inbounds %struct.anon_vma_chain, ptr %20, i32 0, i32 4, !dbg !5511
  store i64 %19, ptr %rb_subtree_last8, align 8, !dbg !5511
  %21 = load ptr, ptr %node.addr, align 8, !dbg !5511
  %rb9 = getelementptr inbounds %struct.anon_vma_chain, ptr %21, i32 0, i32 3, !dbg !5511
  %22 = load ptr, ptr %rb_parent, align 8, !dbg !5511
  %23 = load ptr, ptr %link, align 8, !dbg !5511
  call void @rb_link_node(ptr noundef %rb9, ptr noundef %22, ptr noundef %23) #7, !dbg !5511
  %24 = load ptr, ptr %node.addr, align 8, !dbg !5511
  %rb10 = getelementptr inbounds %struct.anon_vma_chain, ptr %24, i32 0, i32 3, !dbg !5511
  %25 = load ptr, ptr %root.addr, align 8, !dbg !5511
  %26 = load i8, ptr %leftmost, align 1, !dbg !5511, !range !5169, !noundef !301
  %tobool11 = trunc i8 %26 to i1, !dbg !5511
  call void @rb_insert_augmented_cached(ptr noundef %rb10, ptr noundef %25, i1 noundef zeroext %tobool11, ptr noundef @__anon_vma_interval_tree_augment) #7, !dbg !5511
  call void @llvm.lifetime.end.p0(i64 1, ptr %leftmost) #6, !dbg !5511
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #6, !dbg !5511
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #6, !dbg !5511
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #6, !dbg !5511
  call void @llvm.lifetime.end.p0(i64 8, ptr %rb_parent) #6, !dbg !5511
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #6, !dbg !5511
  ret void, !dbg !5511
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @anon_vma_interval_tree_remove(ptr noundef %node, ptr noundef %root) #0 align 16 !dbg !5521 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5523, metadata !DIExpression()), !dbg !5525
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5524, metadata !DIExpression()), !dbg !5526
  %0 = load ptr, ptr %node.addr, align 8, !dbg !5527
  %1 = load ptr, ptr %root.addr, align 8, !dbg !5528
  call void @__anon_vma_interval_tree_remove(ptr noundef %0, ptr noundef %1) #7, !dbg !5529
  ret void, !dbg !5530
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__anon_vma_interval_tree_remove(ptr noundef %node, ptr noundef %root) #3 align 16 !dbg !5531 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5533, metadata !DIExpression()), !dbg !5535
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5534, metadata !DIExpression()), !dbg !5535
  %0 = load ptr, ptr %node.addr, align 8, !dbg !5535
  %rb = getelementptr inbounds %struct.anon_vma_chain, ptr %0, i32 0, i32 3, !dbg !5535
  %1 = load ptr, ptr %root.addr, align 8, !dbg !5535
  call void @rb_erase_augmented_cached(ptr noundef %rb, ptr noundef %1, ptr noundef @__anon_vma_interval_tree_augment) #7, !dbg !5535
  ret void, !dbg !5535
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @anon_vma_interval_tree_iter_first(ptr noundef %root, i64 noundef %first, i64 noundef %last) #0 align 16 !dbg !5536 {
entry:
  %root.addr = alloca ptr, align 8
  %first.addr = alloca i64, align 8
  %last.addr = alloca i64, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5540, metadata !DIExpression()), !dbg !5543
  store i64 %first, ptr %first.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %first.addr, metadata !5541, metadata !DIExpression()), !dbg !5544
  store i64 %last, ptr %last.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !5542, metadata !DIExpression()), !dbg !5545
  %0 = load ptr, ptr %root.addr, align 8, !dbg !5546
  %1 = load i64, ptr %first.addr, align 8, !dbg !5547
  %2 = load i64, ptr %last.addr, align 8, !dbg !5548
  %call = call ptr @__anon_vma_interval_tree_iter_first(ptr noundef %0, i64 noundef %1, i64 noundef %2) #7, !dbg !5549
  ret ptr %call, !dbg !5550
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__anon_vma_interval_tree_iter_first(ptr noundef %root, i64 noundef %start, i64 noundef %last) #3 align 16 !dbg !5551 {
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
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5553, metadata !DIExpression()), !dbg !5562
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5554, metadata !DIExpression()), !dbg !5562
  store i64 %last, ptr %last.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !5555, metadata !DIExpression()), !dbg !5562
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #6, !dbg !5562
  call void @llvm.dbg.declare(metadata ptr %node, metadata !5556, metadata !DIExpression()), !dbg !5562
  call void @llvm.lifetime.start.p0(i64 8, ptr %leftmost) #6, !dbg !5562
  call void @llvm.dbg.declare(metadata ptr %leftmost, metadata !5557, metadata !DIExpression()), !dbg !5562
  %0 = load ptr, ptr %root.addr, align 8, !dbg !5563
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %0, i32 0, i32 0, !dbg !5563
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %rb_root, i32 0, i32 0, !dbg !5563
  %1 = load ptr, ptr %rb_node, align 8, !dbg !5563
  %tobool = icmp ne ptr %1, null, !dbg !5563
  br i1 %tobool, label %if.end, label %if.then, !dbg !5562

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5563
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5563

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !5565
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5558, metadata !DIExpression()), !dbg !5565
  %2 = load ptr, ptr %root.addr, align 8, !dbg !5565
  %rb_root1 = getelementptr inbounds %struct.rb_root_cached, ptr %2, i32 0, i32 0, !dbg !5565
  %rb_node2 = getelementptr inbounds %struct.rb_root, ptr %rb_root1, i32 0, i32 0, !dbg !5565
  %3 = load ptr, ptr %rb_node2, align 8, !dbg !5565
  store ptr %3, ptr %__mptr, align 8, !dbg !5565
  %4 = load ptr, ptr %__mptr, align 8, !dbg !5565
  %add.ptr = getelementptr i8, ptr %4, i64 -32, !dbg !5565
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5565
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !5562
  %5 = load ptr, ptr %tmp, align 8, !dbg !5565
  store ptr %5, ptr %node, align 8, !dbg !5562
  %6 = load ptr, ptr %node, align 8, !dbg !5566
  %rb_subtree_last = getelementptr inbounds %struct.anon_vma_chain, ptr %6, i32 0, i32 4, !dbg !5566
  %7 = load i64, ptr %rb_subtree_last, align 8, !dbg !5566
  %8 = load i64, ptr %start.addr, align 8, !dbg !5566
  %cmp = icmp ult i64 %7, %8, !dbg !5566
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !5562

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !5566
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5566

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #6, !dbg !5568
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !5560, metadata !DIExpression()), !dbg !5568
  %9 = load ptr, ptr %root.addr, align 8, !dbg !5568
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %9, i32 0, i32 1, !dbg !5568
  %10 = load ptr, ptr %rb_leftmost, align 8, !dbg !5568
  store ptr %10, ptr %__mptr5, align 8, !dbg !5568
  %11 = load ptr, ptr %__mptr5, align 8, !dbg !5568
  %add.ptr7 = getelementptr i8, ptr %11, i64 -32, !dbg !5568
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !5568
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #6, !dbg !5562
  %12 = load ptr, ptr %tmp6, align 8, !dbg !5568
  store ptr %12, ptr %leftmost, align 8, !dbg !5562
  %13 = load ptr, ptr %leftmost, align 8, !dbg !5569
  %call = call i64 @avc_start_pgoff(ptr noundef %13) #7, !dbg !5569
  %14 = load i64, ptr %last.addr, align 8, !dbg !5569
  %cmp8 = icmp ugt i64 %call, %14, !dbg !5569
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !5562

if.then9:                                         ; preds = %if.end4
  store ptr null, ptr %retval, align 8, !dbg !5569
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5569

if.end10:                                         ; preds = %if.end4
  %15 = load ptr, ptr %node, align 8, !dbg !5562
  %16 = load i64, ptr %start.addr, align 8, !dbg !5562
  %17 = load i64, ptr %last.addr, align 8, !dbg !5562
  %call11 = call ptr @__anon_vma_interval_tree_subtree_search(ptr noundef %15, i64 noundef %16, i64 noundef %17) #7, !dbg !5562
  store ptr %call11, ptr %retval, align 8, !dbg !5562
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5562

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %leftmost) #6, !dbg !5562
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #6, !dbg !5562
  %18 = load ptr, ptr %retval, align 8, !dbg !5562
  ret ptr %18, !dbg !5562
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @anon_vma_interval_tree_iter_next(ptr noundef %node, i64 noundef %first, i64 noundef %last) #0 align 16 !dbg !5571 {
entry:
  %node.addr = alloca ptr, align 8
  %first.addr = alloca i64, align 8
  %last.addr = alloca i64, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5575, metadata !DIExpression()), !dbg !5578
  store i64 %first, ptr %first.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %first.addr, metadata !5576, metadata !DIExpression()), !dbg !5579
  store i64 %last, ptr %last.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !5577, metadata !DIExpression()), !dbg !5580
  %0 = load ptr, ptr %node.addr, align 8, !dbg !5581
  %1 = load i64, ptr %first.addr, align 8, !dbg !5582
  %2 = load i64, ptr %last.addr, align 8, !dbg !5583
  %call = call ptr @__anon_vma_interval_tree_iter_next(ptr noundef %0, i64 noundef %1, i64 noundef %2) #7, !dbg !5584
  ret ptr %call, !dbg !5585
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__anon_vma_interval_tree_iter_next(ptr noundef %node, i64 noundef %start, i64 noundef %last) #3 align 16 !dbg !5586 {
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
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5588, metadata !DIExpression()), !dbg !5602
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5589, metadata !DIExpression()), !dbg !5602
  store i64 %last, ptr %last.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !5590, metadata !DIExpression()), !dbg !5602
  call void @llvm.lifetime.start.p0(i64 8, ptr %rb) #6, !dbg !5602
  call void @llvm.dbg.declare(metadata ptr %rb, metadata !5591, metadata !DIExpression()), !dbg !5602
  %0 = load ptr, ptr %node.addr, align 8, !dbg !5602
  %rb1 = getelementptr inbounds %struct.anon_vma_chain, ptr %0, i32 0, i32 3, !dbg !5602
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb1, i32 0, i32 1, !dbg !5602
  %1 = load ptr, ptr %rb_right, align 8, !dbg !5602
  store ptr %1, ptr %rb, align 8, !dbg !5602
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #6, !dbg !5602
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !5592, metadata !DIExpression()), !dbg !5602
  br label %while.cond, !dbg !5602

while.cond:                                       ; preds = %if.end22, %entry
  br label %while.body, !dbg !5602

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %rb, align 8, !dbg !5603
  %tobool = icmp ne ptr %2, null, !dbg !5603
  br i1 %tobool, label %if.then, label %if.end3, !dbg !5604

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %right) #6, !dbg !5605
  call void @llvm.dbg.declare(metadata ptr %right, metadata !5593, metadata !DIExpression()), !dbg !5605
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !5606
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5597, metadata !DIExpression()), !dbg !5606
  %3 = load ptr, ptr %rb, align 8, !dbg !5606
  store ptr %3, ptr %__mptr, align 8, !dbg !5606
  %4 = load ptr, ptr %__mptr, align 8, !dbg !5606
  %add.ptr = getelementptr i8, ptr %4, i64 -32, !dbg !5606
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5606
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !5605
  %5 = load ptr, ptr %tmp, align 8, !dbg !5606
  store ptr %5, ptr %right, align 8, !dbg !5605
  %6 = load i64, ptr %start.addr, align 8, !dbg !5607
  %7 = load ptr, ptr %right, align 8, !dbg !5607
  %rb_subtree_last = getelementptr inbounds %struct.anon_vma_chain, ptr %7, i32 0, i32 4, !dbg !5607
  %8 = load i64, ptr %rb_subtree_last, align 8, !dbg !5607
  %cmp = icmp ule i64 %6, %8, !dbg !5607
  br i1 %cmp, label %if.then2, label %if.end, !dbg !5605

if.then2:                                         ; preds = %if.then
  %9 = load ptr, ptr %right, align 8, !dbg !5607
  %10 = load i64, ptr %start.addr, align 8, !dbg !5607
  %11 = load i64, ptr %last.addr, align 8, !dbg !5607
  %call = call ptr @__anon_vma_interval_tree_subtree_search(ptr noundef %9, i64 noundef %10, i64 noundef %11) #7, !dbg !5607
  store ptr %call, ptr %retval, align 8, !dbg !5607
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5607

if.end:                                           ; preds = %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5603
  br label %cleanup, !dbg !5603

cleanup:                                          ; preds = %if.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %right) #6, !dbg !5603
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup23 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end3, !dbg !5605

if.end3:                                          ; preds = %cleanup.cont, %while.body
  br label %do.body, !dbg !5604

do.body:                                          ; preds = %do.cond, %if.end3
  %12 = load ptr, ptr %node.addr, align 8, !dbg !5609
  %rb4 = getelementptr inbounds %struct.anon_vma_chain, ptr %12, i32 0, i32 3, !dbg !5609
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %rb4, i32 0, i32 0, !dbg !5609
  %13 = load i64, ptr %__rb_parent_color, align 8, !dbg !5609
  %and = and i64 %13, -4, !dbg !5609
  %14 = inttoptr i64 %and to ptr, !dbg !5609
  store ptr %14, ptr %rb, align 8, !dbg !5609
  %15 = load ptr, ptr %rb, align 8, !dbg !5610
  %tobool5 = icmp ne ptr %15, null, !dbg !5610
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !5609

if.then6:                                         ; preds = %do.body
  store ptr null, ptr %retval, align 8, !dbg !5610
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23, !dbg !5610

if.end7:                                          ; preds = %do.body
  %16 = load ptr, ptr %node.addr, align 8, !dbg !5609
  %rb8 = getelementptr inbounds %struct.anon_vma_chain, ptr %16, i32 0, i32 3, !dbg !5609
  store ptr %rb8, ptr %prev, align 8, !dbg !5609
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #6, !dbg !5612
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !5599, metadata !DIExpression()), !dbg !5612
  %17 = load ptr, ptr %rb, align 8, !dbg !5612
  store ptr %17, ptr %__mptr9, align 8, !dbg !5612
  %18 = load ptr, ptr %__mptr9, align 8, !dbg !5612
  %add.ptr11 = getelementptr i8, ptr %18, i64 -32, !dbg !5612
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !5612
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #6, !dbg !5609
  %19 = load ptr, ptr %tmp10, align 8, !dbg !5612
  store ptr %19, ptr %node.addr, align 8, !dbg !5609
  %20 = load ptr, ptr %node.addr, align 8, !dbg !5609
  %rb12 = getelementptr inbounds %struct.anon_vma_chain, ptr %20, i32 0, i32 3, !dbg !5609
  %rb_right13 = getelementptr inbounds %struct.rb_node, ptr %rb12, i32 0, i32 1, !dbg !5609
  %21 = load ptr, ptr %rb_right13, align 8, !dbg !5609
  store ptr %21, ptr %rb, align 8, !dbg !5609
  br label %do.cond, !dbg !5609

do.cond:                                          ; preds = %if.end7
  %22 = load ptr, ptr %prev, align 8, !dbg !5604
  %23 = load ptr, ptr %rb, align 8, !dbg !5604
  %cmp14 = icmp eq ptr %22, %23, !dbg !5604
  br i1 %cmp14, label %do.body, label %do.end, !dbg !5609, !llvm.loop !5613

do.end:                                           ; preds = %do.cond
  %24 = load i64, ptr %last.addr, align 8, !dbg !5614
  %25 = load ptr, ptr %node.addr, align 8, !dbg !5614
  %call15 = call i64 @avc_start_pgoff(ptr noundef %25) #7, !dbg !5614
  %cmp16 = icmp ult i64 %24, %call15, !dbg !5614
  br i1 %cmp16, label %if.then17, label %if.else, !dbg !5604

if.then17:                                        ; preds = %do.end
  store ptr null, ptr %retval, align 8, !dbg !5614
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23, !dbg !5614

if.else:                                          ; preds = %do.end
  %26 = load i64, ptr %start.addr, align 8, !dbg !5616
  %27 = load ptr, ptr %node.addr, align 8, !dbg !5616
  %call18 = call i64 @avc_last_pgoff(ptr noundef %27) #7, !dbg !5616
  %cmp19 = icmp ule i64 %26, %call18, !dbg !5616
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !5614

if.then20:                                        ; preds = %if.else
  %28 = load ptr, ptr %node.addr, align 8, !dbg !5616
  store ptr %28, ptr %retval, align 8, !dbg !5616
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23, !dbg !5616

if.end21:                                         ; preds = %if.else
  br label %if.end22

if.end22:                                         ; preds = %if.end21
  br label %while.cond, !dbg !5602, !llvm.loop !5618

cleanup23:                                        ; preds = %if.then20, %if.then17, %if.then6, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #6, !dbg !5602
  call void @llvm.lifetime.end.p0(i64 8, ptr %rb) #6, !dbg !5602
  %29 = load ptr, ptr %retval, align 8, !dbg !5602
  ret ptr %29, !dbg !5602
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @vma_pages(ptr noundef %vma) #3 align 16 !dbg !5619 {
entry:
  %vma.addr = alloca ptr, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5621, metadata !DIExpression()), !dbg !5622
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !5623
  %1 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 0, !dbg !5624
  %vm_end = getelementptr inbounds %struct.anon.14, ptr %1, i32 0, i32 1, !dbg !5624
  %2 = load i64, ptr %vm_end, align 8, !dbg !5624
  %3 = load ptr, ptr %vma.addr, align 8, !dbg !5625
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 0, !dbg !5626
  %vm_start = getelementptr inbounds %struct.anon.14, ptr %4, i32 0, i32 0, !dbg !5626
  %5 = load i64, ptr %vm_start, align 8, !dbg !5626
  %sub = sub i64 %2, %5, !dbg !5627
  %shr = lshr i64 %sub, 12, !dbg !5628
  ret i64 %shr, !dbg !5629
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vma_interval_tree_augment_propagate(ptr noundef %rb, ptr noundef %stop) #3 align 16 !dbg !5630 {
entry:
  %rb.addr = alloca ptr, align 8
  %stop.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !5632, metadata !DIExpression()), !dbg !5638
  store ptr %stop, ptr %stop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stop.addr, metadata !5633, metadata !DIExpression()), !dbg !5638
  br label %while.cond, !dbg !5638

while.cond:                                       ; preds = %cleanup.cont, %entry
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !5638
  %1 = load ptr, ptr %stop.addr, align 8, !dbg !5638
  %cmp = icmp ne ptr %0, %1, !dbg !5638
  br i1 %cmp, label %while.body, label %while.end, !dbg !5638

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #6, !dbg !5639
  call void @llvm.dbg.declare(metadata ptr %node, metadata !5634, metadata !DIExpression()), !dbg !5639
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !5640
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5636, metadata !DIExpression()), !dbg !5640
  %2 = load ptr, ptr %rb.addr, align 8, !dbg !5640
  store ptr %2, ptr %__mptr, align 8, !dbg !5640
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5640
  %add.ptr = getelementptr i8, ptr %3, i64 -64, !dbg !5640
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5640
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !5639
  %4 = load ptr, ptr %tmp, align 8, !dbg !5640
  store ptr %4, ptr %node, align 8, !dbg !5639
  %5 = load ptr, ptr %node, align 8, !dbg !5641
  %call = call zeroext i1 @vma_interval_tree_augment_compute_max(ptr noundef %5, i1 noundef zeroext true) #7, !dbg !5641
  br i1 %call, label %if.then, label %if.end, !dbg !5639

if.then:                                          ; preds = %while.body
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5641

if.end:                                           ; preds = %while.body
  %6 = load ptr, ptr %node, align 8, !dbg !5639
  %shared = getelementptr inbounds %struct.vm_area_struct, ptr %6, i32 0, i32 7, !dbg !5639
  %rb1 = getelementptr inbounds %struct.anon.16, ptr %shared, i32 0, i32 0, !dbg !5639
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %rb1, i32 0, i32 0, !dbg !5639
  %7 = load i64, ptr %__rb_parent_color, align 8, !dbg !5639
  %and = and i64 %7, -4, !dbg !5639
  %8 = inttoptr i64 %and to ptr, !dbg !5639
  store ptr %8, ptr %rb.addr, align 8, !dbg !5639
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5638
  br label %cleanup, !dbg !5638

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #6, !dbg !5638
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !5638, !llvm.loop !5643

while.end:                                        ; preds = %cleanup, %while.cond
  ret void, !dbg !5638

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vma_interval_tree_augment_copy(ptr noundef %rb_old, ptr noundef %rb_new) #3 align 16 !dbg !5644 {
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
  call void @llvm.dbg.declare(metadata ptr %rb_old.addr, metadata !5646, metadata !DIExpression()), !dbg !5654
  store ptr %rb_new, ptr %rb_new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_new.addr, metadata !5647, metadata !DIExpression()), !dbg !5654
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #6, !dbg !5654
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5648, metadata !DIExpression()), !dbg !5654
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !5655
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5649, metadata !DIExpression()), !dbg !5655
  %0 = load ptr, ptr %rb_old.addr, align 8, !dbg !5655
  store ptr %0, ptr %__mptr, align 8, !dbg !5655
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5655
  %add.ptr = getelementptr i8, ptr %1, i64 -64, !dbg !5655
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5655
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !5654
  %2 = load ptr, ptr %tmp, align 8, !dbg !5655
  store ptr %2, ptr %old, align 8, !dbg !5654
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #6, !dbg !5654
  call void @llvm.dbg.declare(metadata ptr %new, metadata !5651, metadata !DIExpression()), !dbg !5654
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #6, !dbg !5656
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !5652, metadata !DIExpression()), !dbg !5656
  %3 = load ptr, ptr %rb_new.addr, align 8, !dbg !5656
  store ptr %3, ptr %__mptr1, align 8, !dbg !5656
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !5656
  %add.ptr3 = getelementptr i8, ptr %4, i64 -64, !dbg !5656
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !5656
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #6, !dbg !5654
  %5 = load ptr, ptr %tmp2, align 8, !dbg !5656
  store ptr %5, ptr %new, align 8, !dbg !5654
  %6 = load ptr, ptr %old, align 8, !dbg !5654
  %shared = getelementptr inbounds %struct.vm_area_struct, ptr %6, i32 0, i32 7, !dbg !5654
  %rb_subtree_last = getelementptr inbounds %struct.anon.16, ptr %shared, i32 0, i32 1, !dbg !5654
  %7 = load i64, ptr %rb_subtree_last, align 8, !dbg !5654
  %8 = load ptr, ptr %new, align 8, !dbg !5654
  %shared4 = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 7, !dbg !5654
  %rb_subtree_last5 = getelementptr inbounds %struct.anon.16, ptr %shared4, i32 0, i32 1, !dbg !5654
  store i64 %7, ptr %rb_subtree_last5, align 8, !dbg !5654
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #6, !dbg !5654
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #6, !dbg !5654
  ret void, !dbg !5654
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vma_interval_tree_augment_rotate(ptr noundef %rb_old, ptr noundef %rb_new) #0 align 16 !dbg !5657 {
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
  call void @llvm.dbg.declare(metadata ptr %rb_old.addr, metadata !5659, metadata !DIExpression()), !dbg !5667
  store ptr %rb_new, ptr %rb_new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_new.addr, metadata !5660, metadata !DIExpression()), !dbg !5667
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #6, !dbg !5667
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5661, metadata !DIExpression()), !dbg !5667
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !5668
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5662, metadata !DIExpression()), !dbg !5668
  %0 = load ptr, ptr %rb_old.addr, align 8, !dbg !5668
  store ptr %0, ptr %__mptr, align 8, !dbg !5668
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5668
  %add.ptr = getelementptr i8, ptr %1, i64 -64, !dbg !5668
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5668
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !5667
  %2 = load ptr, ptr %tmp, align 8, !dbg !5668
  store ptr %2, ptr %old, align 8, !dbg !5667
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #6, !dbg !5667
  call void @llvm.dbg.declare(metadata ptr %new, metadata !5664, metadata !DIExpression()), !dbg !5667
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #6, !dbg !5669
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !5665, metadata !DIExpression()), !dbg !5669
  %3 = load ptr, ptr %rb_new.addr, align 8, !dbg !5669
  store ptr %3, ptr %__mptr1, align 8, !dbg !5669
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !5669
  %add.ptr3 = getelementptr i8, ptr %4, i64 -64, !dbg !5669
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !5669
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #6, !dbg !5667
  %5 = load ptr, ptr %tmp2, align 8, !dbg !5669
  store ptr %5, ptr %new, align 8, !dbg !5667
  %6 = load ptr, ptr %old, align 8, !dbg !5667
  %shared = getelementptr inbounds %struct.vm_area_struct, ptr %6, i32 0, i32 7, !dbg !5667
  %rb_subtree_last = getelementptr inbounds %struct.anon.16, ptr %shared, i32 0, i32 1, !dbg !5667
  %7 = load i64, ptr %rb_subtree_last, align 8, !dbg !5667
  %8 = load ptr, ptr %new, align 8, !dbg !5667
  %shared4 = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 7, !dbg !5667
  %rb_subtree_last5 = getelementptr inbounds %struct.anon.16, ptr %shared4, i32 0, i32 1, !dbg !5667
  store i64 %7, ptr %rb_subtree_last5, align 8, !dbg !5667
  %9 = load ptr, ptr %old, align 8, !dbg !5667
  %call = call zeroext i1 @vma_interval_tree_augment_compute_max(ptr noundef %9, i1 noundef zeroext false) #7, !dbg !5667
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #6, !dbg !5667
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #6, !dbg !5667
  ret void, !dbg !5667
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @vma_interval_tree_augment_compute_max(ptr noundef %node, i1 noundef zeroext %exit) #3 align 16 !dbg !5670 {
entry:
  %retval = alloca i1, align 1
  %node.addr = alloca ptr, align 8
  %exit.addr = alloca i8, align 1
  %child = alloca ptr, align 8
  %max = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr13 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5674, metadata !DIExpression()), !dbg !5686
  %frombool = zext i1 %exit to i8
  store i8 %frombool, ptr %exit.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %exit.addr, metadata !5675, metadata !DIExpression()), !dbg !5686
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #6, !dbg !5686
  call void @llvm.dbg.declare(metadata ptr %child, metadata !5676, metadata !DIExpression()), !dbg !5686
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #6, !dbg !5686
  call void @llvm.dbg.declare(metadata ptr %max, metadata !5677, metadata !DIExpression()), !dbg !5686
  %0 = load ptr, ptr %node.addr, align 8, !dbg !5686
  %call = call i64 @vma_last_pgoff(ptr noundef %0) #7, !dbg !5686
  store i64 %call, ptr %max, align 8, !dbg !5686
  %1 = load ptr, ptr %node.addr, align 8, !dbg !5687
  %shared = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7, !dbg !5687
  %rb = getelementptr inbounds %struct.anon.16, ptr %shared, i32 0, i32 0, !dbg !5687
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rb, i32 0, i32 2, !dbg !5687
  %2 = load ptr, ptr %rb_left, align 8, !dbg !5687
  %tobool = icmp ne ptr %2, null, !dbg !5687
  br i1 %tobool, label %if.then, label %if.end8, !dbg !5686

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !5688
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5678, metadata !DIExpression()), !dbg !5688
  %3 = load ptr, ptr %node.addr, align 8, !dbg !5688
  %shared1 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 7, !dbg !5688
  %rb2 = getelementptr inbounds %struct.anon.16, ptr %shared1, i32 0, i32 0, !dbg !5688
  %rb_left3 = getelementptr inbounds %struct.rb_node, ptr %rb2, i32 0, i32 2, !dbg !5688
  %4 = load ptr, ptr %rb_left3, align 8, !dbg !5688
  store ptr %4, ptr %__mptr, align 8, !dbg !5688
  %5 = load ptr, ptr %__mptr, align 8, !dbg !5688
  %add.ptr = getelementptr i8, ptr %5, i64 -64, !dbg !5688
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5688
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !5689
  %6 = load ptr, ptr %tmp, align 8, !dbg !5688
  store ptr %6, ptr %child, align 8, !dbg !5689
  %7 = load ptr, ptr %child, align 8, !dbg !5690
  %shared4 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 7, !dbg !5690
  %rb_subtree_last = getelementptr inbounds %struct.anon.16, ptr %shared4, i32 0, i32 1, !dbg !5690
  %8 = load i64, ptr %rb_subtree_last, align 8, !dbg !5690
  %9 = load i64, ptr %max, align 8, !dbg !5690
  %cmp = icmp ugt i64 %8, %9, !dbg !5690
  br i1 %cmp, label %if.then5, label %if.end, !dbg !5689

if.then5:                                         ; preds = %if.then
  %10 = load ptr, ptr %child, align 8, !dbg !5690
  %shared6 = getelementptr inbounds %struct.vm_area_struct, ptr %10, i32 0, i32 7, !dbg !5690
  %rb_subtree_last7 = getelementptr inbounds %struct.anon.16, ptr %shared6, i32 0, i32 1, !dbg !5690
  %11 = load i64, ptr %rb_subtree_last7, align 8, !dbg !5690
  store i64 %11, ptr %max, align 8, !dbg !5690
  br label %if.end, !dbg !5690

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end8, !dbg !5689

if.end8:                                          ; preds = %if.end, %entry
  %12 = load ptr, ptr %node.addr, align 8, !dbg !5692
  %shared9 = getelementptr inbounds %struct.vm_area_struct, ptr %12, i32 0, i32 7, !dbg !5692
  %rb10 = getelementptr inbounds %struct.anon.16, ptr %shared9, i32 0, i32 0, !dbg !5692
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb10, i32 0, i32 1, !dbg !5692
  %13 = load ptr, ptr %rb_right, align 8, !dbg !5692
  %tobool11 = icmp ne ptr %13, null, !dbg !5692
  br i1 %tobool11, label %if.then12, label %if.end26, !dbg !5686

if.then12:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr13) #6, !dbg !5693
  call void @llvm.dbg.declare(metadata ptr %__mptr13, metadata !5682, metadata !DIExpression()), !dbg !5693
  %14 = load ptr, ptr %node.addr, align 8, !dbg !5693
  %shared14 = getelementptr inbounds %struct.vm_area_struct, ptr %14, i32 0, i32 7, !dbg !5693
  %rb15 = getelementptr inbounds %struct.anon.16, ptr %shared14, i32 0, i32 0, !dbg !5693
  %rb_right16 = getelementptr inbounds %struct.rb_node, ptr %rb15, i32 0, i32 1, !dbg !5693
  %15 = load ptr, ptr %rb_right16, align 8, !dbg !5693
  store ptr %15, ptr %__mptr13, align 8, !dbg !5693
  %16 = load ptr, ptr %__mptr13, align 8, !dbg !5693
  %add.ptr18 = getelementptr i8, ptr %16, i64 -64, !dbg !5693
  store ptr %add.ptr18, ptr %tmp17, align 8, !dbg !5693
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr13) #6, !dbg !5694
  %17 = load ptr, ptr %tmp17, align 8, !dbg !5693
  store ptr %17, ptr %child, align 8, !dbg !5694
  %18 = load ptr, ptr %child, align 8, !dbg !5695
  %shared19 = getelementptr inbounds %struct.vm_area_struct, ptr %18, i32 0, i32 7, !dbg !5695
  %rb_subtree_last20 = getelementptr inbounds %struct.anon.16, ptr %shared19, i32 0, i32 1, !dbg !5695
  %19 = load i64, ptr %rb_subtree_last20, align 8, !dbg !5695
  %20 = load i64, ptr %max, align 8, !dbg !5695
  %cmp21 = icmp ugt i64 %19, %20, !dbg !5695
  br i1 %cmp21, label %if.then22, label %if.end25, !dbg !5694

if.then22:                                        ; preds = %if.then12
  %21 = load ptr, ptr %child, align 8, !dbg !5695
  %shared23 = getelementptr inbounds %struct.vm_area_struct, ptr %21, i32 0, i32 7, !dbg !5695
  %rb_subtree_last24 = getelementptr inbounds %struct.anon.16, ptr %shared23, i32 0, i32 1, !dbg !5695
  %22 = load i64, ptr %rb_subtree_last24, align 8, !dbg !5695
  store i64 %22, ptr %max, align 8, !dbg !5695
  br label %if.end25, !dbg !5695

if.end25:                                         ; preds = %if.then22, %if.then12
  br label %if.end26, !dbg !5694

if.end26:                                         ; preds = %if.end25, %if.end8
  %23 = load i8, ptr %exit.addr, align 1, !dbg !5697, !range !5169, !noundef !301
  %tobool27 = trunc i8 %23 to i1, !dbg !5697
  br i1 %tobool27, label %land.lhs.true, label %if.end32, !dbg !5697

land.lhs.true:                                    ; preds = %if.end26
  %24 = load ptr, ptr %node.addr, align 8, !dbg !5697
  %shared28 = getelementptr inbounds %struct.vm_area_struct, ptr %24, i32 0, i32 7, !dbg !5697
  %rb_subtree_last29 = getelementptr inbounds %struct.anon.16, ptr %shared28, i32 0, i32 1, !dbg !5697
  %25 = load i64, ptr %rb_subtree_last29, align 8, !dbg !5697
  %26 = load i64, ptr %max, align 8, !dbg !5697
  %cmp30 = icmp eq i64 %25, %26, !dbg !5697
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5686

if.then31:                                        ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !5697
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5697

if.end32:                                         ; preds = %land.lhs.true, %if.end26
  %27 = load i64, ptr %max, align 8, !dbg !5686
  %28 = load ptr, ptr %node.addr, align 8, !dbg !5686
  %shared33 = getelementptr inbounds %struct.vm_area_struct, ptr %28, i32 0, i32 7, !dbg !5686
  %rb_subtree_last34 = getelementptr inbounds %struct.anon.16, ptr %shared33, i32 0, i32 1, !dbg !5686
  store i64 %27, ptr %rb_subtree_last34, align 8, !dbg !5686
  store i1 false, ptr %retval, align 1, !dbg !5686
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5686

cleanup:                                          ; preds = %if.end32, %if.then31
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #6, !dbg !5686
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #6, !dbg !5686
  %29 = load i1, ptr %retval, align 1, !dbg !5686
  ret i1 %29, !dbg !5686
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5699 dso_local ptr @rb_next(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_erase_augmented(ptr noundef %node, ptr noundef %root, ptr noundef %augment) #4 align 16 !dbg !5704 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %augment.addr = alloca ptr, align 8
  %rebalance = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5706, metadata !DIExpression()), !dbg !5710
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5707, metadata !DIExpression()), !dbg !5711
  store ptr %augment, ptr %augment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %augment.addr, metadata !5708, metadata !DIExpression()), !dbg !5712
  call void @llvm.lifetime.start.p0(i64 8, ptr %rebalance) #6, !dbg !5713
  call void @llvm.dbg.declare(metadata ptr %rebalance, metadata !5709, metadata !DIExpression()), !dbg !5714
  %0 = load ptr, ptr %node.addr, align 8, !dbg !5715
  %1 = load ptr, ptr %root.addr, align 8, !dbg !5716
  %2 = load ptr, ptr %augment.addr, align 8, !dbg !5717
  %call = call ptr @__rb_erase_augmented(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7, !dbg !5718
  store ptr %call, ptr %rebalance, align 8, !dbg !5714
  %3 = load ptr, ptr %rebalance, align 8, !dbg !5719
  %tobool = icmp ne ptr %3, null, !dbg !5719
  br i1 %tobool, label %if.then, label %if.end, !dbg !5721

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %rebalance, align 8, !dbg !5722
  %5 = load ptr, ptr %root.addr, align 8, !dbg !5723
  %6 = load ptr, ptr %augment.addr, align 8, !dbg !5724
  %rotate = getelementptr inbounds %struct.rb_augment_callbacks, ptr %6, i32 0, i32 2, !dbg !5725
  %7 = load ptr, ptr %rotate, align 8, !dbg !5725
  call void @__rb_erase_color(ptr noundef %4, ptr noundef %5, ptr noundef %7) #7, !dbg !5726
  br label %if.end, !dbg !5726

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %rebalance) #6, !dbg !5727
  ret void, !dbg !5727
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__rb_erase_augmented(ptr noundef %node, ptr noundef %root, ptr noundef %augment) #4 align 16 !dbg !5728 {
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
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5732, metadata !DIExpression()), !dbg !5745
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5733, metadata !DIExpression()), !dbg !5746
  store ptr %augment, ptr %augment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %augment.addr, metadata !5734, metadata !DIExpression()), !dbg !5747
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #6, !dbg !5748
  call void @llvm.dbg.declare(metadata ptr %child, metadata !5735, metadata !DIExpression()), !dbg !5749
  %0 = load ptr, ptr %node.addr, align 8, !dbg !5750
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 1, !dbg !5751
  %1 = load ptr, ptr %rb_right, align 8, !dbg !5751
  store ptr %1, ptr %child, align 8, !dbg !5749
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #6, !dbg !5752
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5736, metadata !DIExpression()), !dbg !5753
  %2 = load ptr, ptr %node.addr, align 8, !dbg !5754
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 2, !dbg !5755
  %3 = load ptr, ptr %rb_left, align 8, !dbg !5755
  store ptr %3, ptr %tmp, align 8, !dbg !5753
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #6, !dbg !5756
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !5737, metadata !DIExpression()), !dbg !5757
  call void @llvm.lifetime.start.p0(i64 8, ptr %rebalance) #6, !dbg !5756
  call void @llvm.dbg.declare(metadata ptr %rebalance, metadata !5738, metadata !DIExpression()), !dbg !5758
  call void @llvm.lifetime.start.p0(i64 8, ptr %pc) #6, !dbg !5759
  call void @llvm.dbg.declare(metadata ptr %pc, metadata !5739, metadata !DIExpression()), !dbg !5760
  %4 = load ptr, ptr %tmp, align 8, !dbg !5761
  %tobool = icmp ne ptr %4, null, !dbg !5761
  br i1 %tobool, label %if.else6, label %if.then, !dbg !5762

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %node.addr, align 8, !dbg !5763
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 0, !dbg !5765
  %6 = load i64, ptr %__rb_parent_color, align 8, !dbg !5765
  store i64 %6, ptr %pc, align 8, !dbg !5766
  %7 = load i64, ptr %pc, align 8, !dbg !5767
  %and = and i64 %7, -4, !dbg !5767
  %8 = inttoptr i64 %and to ptr, !dbg !5767
  store ptr %8, ptr %parent, align 8, !dbg !5768
  %9 = load ptr, ptr %node.addr, align 8, !dbg !5769
  %10 = load ptr, ptr %child, align 8, !dbg !5770
  %11 = load ptr, ptr %parent, align 8, !dbg !5771
  %12 = load ptr, ptr %root.addr, align 8, !dbg !5772
  call void @__rb_change_child(ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) #7, !dbg !5773
  %13 = load ptr, ptr %child, align 8, !dbg !5774
  %tobool1 = icmp ne ptr %13, null, !dbg !5774
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !5776

if.then2:                                         ; preds = %if.then
  %14 = load i64, ptr %pc, align 8, !dbg !5777
  %15 = load ptr, ptr %child, align 8, !dbg !5779
  %__rb_parent_color3 = getelementptr inbounds %struct.rb_node, ptr %15, i32 0, i32 0, !dbg !5780
  store i64 %14, ptr %__rb_parent_color3, align 8, !dbg !5781
  store ptr null, ptr %rebalance, align 8, !dbg !5782
  br label %if.end, !dbg !5783

if.else:                                          ; preds = %if.then
  %16 = load i64, ptr %pc, align 8, !dbg !5784
  %and4 = and i64 %16, 1, !dbg !5784
  %tobool5 = icmp ne i64 %and4, 0, !dbg !5784
  br i1 %tobool5, label %cond.true, label %cond.false, !dbg !5784

cond.true:                                        ; preds = %if.else
  %17 = load ptr, ptr %parent, align 8, !dbg !5785
  br label %cond.end, !dbg !5784

cond.false:                                       ; preds = %if.else
  br label %cond.end, !dbg !5784

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %17, %cond.true ], [ null, %cond.false ], !dbg !5784
  store ptr %cond, ptr %rebalance, align 8, !dbg !5786
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then2
  %18 = load ptr, ptr %parent, align 8, !dbg !5787
  store ptr %18, ptr %tmp, align 8, !dbg !5788
  br label %if.end69, !dbg !5789

if.else6:                                         ; preds = %entry
  %19 = load ptr, ptr %child, align 8, !dbg !5790
  %tobool7 = icmp ne ptr %19, null, !dbg !5790
  br i1 %tobool7, label %if.else12, label %if.then8, !dbg !5791

if.then8:                                         ; preds = %if.else6
  %20 = load ptr, ptr %node.addr, align 8, !dbg !5792
  %__rb_parent_color9 = getelementptr inbounds %struct.rb_node, ptr %20, i32 0, i32 0, !dbg !5794
  %21 = load i64, ptr %__rb_parent_color9, align 8, !dbg !5794
  store i64 %21, ptr %pc, align 8, !dbg !5795
  %22 = load ptr, ptr %tmp, align 8, !dbg !5796
  %__rb_parent_color10 = getelementptr inbounds %struct.rb_node, ptr %22, i32 0, i32 0, !dbg !5797
  store i64 %21, ptr %__rb_parent_color10, align 8, !dbg !5798
  %23 = load i64, ptr %pc, align 8, !dbg !5799
  %and11 = and i64 %23, -4, !dbg !5799
  %24 = inttoptr i64 %and11 to ptr, !dbg !5799
  store ptr %24, ptr %parent, align 8, !dbg !5800
  %25 = load ptr, ptr %node.addr, align 8, !dbg !5801
  %26 = load ptr, ptr %tmp, align 8, !dbg !5802
  %27 = load ptr, ptr %parent, align 8, !dbg !5803
  %28 = load ptr, ptr %root.addr, align 8, !dbg !5804
  call void @__rb_change_child(ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28) #7, !dbg !5805
  store ptr null, ptr %rebalance, align 8, !dbg !5806
  %29 = load ptr, ptr %parent, align 8, !dbg !5807
  store ptr %29, ptr %tmp, align 8, !dbg !5808
  br label %if.end68, !dbg !5809

if.else12:                                        ; preds = %if.else6
  call void @llvm.lifetime.start.p0(i64 8, ptr %successor) #6, !dbg !5810
  call void @llvm.dbg.declare(metadata ptr %successor, metadata !5740, metadata !DIExpression()), !dbg !5811
  %30 = load ptr, ptr %child, align 8, !dbg !5812
  store ptr %30, ptr %successor, align 8, !dbg !5811
  call void @llvm.lifetime.start.p0(i64 8, ptr %child2) #6, !dbg !5810
  call void @llvm.dbg.declare(metadata ptr %child2, metadata !5744, metadata !DIExpression()), !dbg !5813
  %31 = load ptr, ptr %child, align 8, !dbg !5814
  %rb_left13 = getelementptr inbounds %struct.rb_node, ptr %31, i32 0, i32 2, !dbg !5815
  %32 = load ptr, ptr %rb_left13, align 8, !dbg !5815
  store ptr %32, ptr %tmp, align 8, !dbg !5816
  %33 = load ptr, ptr %tmp, align 8, !dbg !5817
  %tobool14 = icmp ne ptr %33, null, !dbg !5817
  br i1 %tobool14, label %if.else17, label %if.then15, !dbg !5819

if.then15:                                        ; preds = %if.else12
  %34 = load ptr, ptr %successor, align 8, !dbg !5820
  store ptr %34, ptr %parent, align 8, !dbg !5822
  %35 = load ptr, ptr %successor, align 8, !dbg !5823
  %rb_right16 = getelementptr inbounds %struct.rb_node, ptr %35, i32 0, i32 1, !dbg !5824
  %36 = load ptr, ptr %rb_right16, align 8, !dbg !5824
  store ptr %36, ptr %child2, align 8, !dbg !5825
  %37 = load ptr, ptr %augment.addr, align 8, !dbg !5826
  %copy = getelementptr inbounds %struct.rb_augment_callbacks, ptr %37, i32 0, i32 1, !dbg !5827
  %38 = load ptr, ptr %copy, align 8, !dbg !5827
  %39 = load ptr, ptr %node.addr, align 8, !dbg !5828
  %40 = load ptr, ptr %successor, align 8, !dbg !5829
  call void %38(ptr noundef %39, ptr noundef %40) #7, !dbg !5826
  br label %if.end42, !dbg !5830

if.else17:                                        ; preds = %if.else12
  br label %do.body, !dbg !5831

do.body:                                          ; preds = %do.cond, %if.else17
  %41 = load ptr, ptr %successor, align 8, !dbg !5833
  store ptr %41, ptr %parent, align 8, !dbg !5835
  %42 = load ptr, ptr %tmp, align 8, !dbg !5836
  store ptr %42, ptr %successor, align 8, !dbg !5837
  %43 = load ptr, ptr %tmp, align 8, !dbg !5838
  %rb_left18 = getelementptr inbounds %struct.rb_node, ptr %43, i32 0, i32 2, !dbg !5839
  %44 = load ptr, ptr %rb_left18, align 8, !dbg !5839
  store ptr %44, ptr %tmp, align 8, !dbg !5840
  br label %do.cond, !dbg !5841

do.cond:                                          ; preds = %do.body
  %45 = load ptr, ptr %tmp, align 8, !dbg !5842
  %tobool19 = icmp ne ptr %45, null, !dbg !5841
  br i1 %tobool19, label %do.body, label %do.end, !dbg !5841, !llvm.loop !5843

do.end:                                           ; preds = %do.cond
  %46 = load ptr, ptr %successor, align 8, !dbg !5845
  %rb_right20 = getelementptr inbounds %struct.rb_node, ptr %46, i32 0, i32 1, !dbg !5846
  %47 = load ptr, ptr %rb_right20, align 8, !dbg !5846
  store ptr %47, ptr %child2, align 8, !dbg !5847
  br label %do.body21, !dbg !5848

do.body21:                                        ; preds = %do.end
  br label %do.body22, !dbg !5849

do.body22:                                        ; preds = %do.body21
  br label %do.cond23, !dbg !5851

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !5851

do.end24:                                         ; preds = %do.cond23
  br label %do.body25, !dbg !5849

do.body25:                                        ; preds = %do.end24
  %48 = load ptr, ptr %child2, align 8, !dbg !5853
  %49 = load ptr, ptr %parent, align 8, !dbg !5853
  %rb_left26 = getelementptr inbounds %struct.rb_node, ptr %49, i32 0, i32 2, !dbg !5853
  store volatile ptr %48, ptr %rb_left26, align 8, !dbg !5853
  br label %do.cond27, !dbg !5853

do.cond27:                                        ; preds = %do.body25
  br label %do.end28, !dbg !5853

do.end28:                                         ; preds = %do.cond27
  br label %do.cond29, !dbg !5849

do.cond29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !5849

do.end30:                                         ; preds = %do.cond29
  br label %do.body31, !dbg !5855

do.body31:                                        ; preds = %do.end30
  br label %do.body32, !dbg !5856

do.body32:                                        ; preds = %do.body31
  br label %do.cond33, !dbg !5858

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !5858

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !5856

do.body35:                                        ; preds = %do.end34
  %50 = load ptr, ptr %child, align 8, !dbg !5860
  %51 = load ptr, ptr %successor, align 8, !dbg !5860
  %rb_right36 = getelementptr inbounds %struct.rb_node, ptr %51, i32 0, i32 1, !dbg !5860
  store volatile ptr %50, ptr %rb_right36, align 8, !dbg !5860
  br label %do.cond37, !dbg !5860

do.cond37:                                        ; preds = %do.body35
  br label %do.end38, !dbg !5860

do.end38:                                         ; preds = %do.cond37
  br label %do.cond39, !dbg !5856

do.cond39:                                        ; preds = %do.end38
  br label %do.end40, !dbg !5856

do.end40:                                         ; preds = %do.cond39
  %52 = load ptr, ptr %child, align 8, !dbg !5862
  %53 = load ptr, ptr %successor, align 8, !dbg !5863
  call void @rb_set_parent(ptr noundef %52, ptr noundef %53) #7, !dbg !5864
  %54 = load ptr, ptr %augment.addr, align 8, !dbg !5865
  %copy41 = getelementptr inbounds %struct.rb_augment_callbacks, ptr %54, i32 0, i32 1, !dbg !5866
  %55 = load ptr, ptr %copy41, align 8, !dbg !5866
  %56 = load ptr, ptr %node.addr, align 8, !dbg !5867
  %57 = load ptr, ptr %successor, align 8, !dbg !5868
  call void %55(ptr noundef %56, ptr noundef %57) #7, !dbg !5865
  %58 = load ptr, ptr %augment.addr, align 8, !dbg !5869
  %propagate = getelementptr inbounds %struct.rb_augment_callbacks, ptr %58, i32 0, i32 0, !dbg !5870
  %59 = load ptr, ptr %propagate, align 8, !dbg !5870
  %60 = load ptr, ptr %parent, align 8, !dbg !5871
  %61 = load ptr, ptr %successor, align 8, !dbg !5872
  call void %59(ptr noundef %60, ptr noundef %61) #7, !dbg !5869
  br label %if.end42

if.end42:                                         ; preds = %do.end40, %if.then15
  %62 = load ptr, ptr %node.addr, align 8, !dbg !5873
  %rb_left43 = getelementptr inbounds %struct.rb_node, ptr %62, i32 0, i32 2, !dbg !5874
  %63 = load ptr, ptr %rb_left43, align 8, !dbg !5874
  store ptr %63, ptr %tmp, align 8, !dbg !5875
  br label %do.body44, !dbg !5876

do.body44:                                        ; preds = %if.end42
  br label %do.body45, !dbg !5877

do.body45:                                        ; preds = %do.body44
  br label %do.cond46, !dbg !5879

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !5879

do.end47:                                         ; preds = %do.cond46
  br label %do.body48, !dbg !5877

do.body48:                                        ; preds = %do.end47
  %64 = load ptr, ptr %tmp, align 8, !dbg !5881
  %65 = load ptr, ptr %successor, align 8, !dbg !5881
  %rb_left49 = getelementptr inbounds %struct.rb_node, ptr %65, i32 0, i32 2, !dbg !5881
  store volatile ptr %64, ptr %rb_left49, align 8, !dbg !5881
  br label %do.cond50, !dbg !5881

do.cond50:                                        ; preds = %do.body48
  br label %do.end51, !dbg !5881

do.end51:                                         ; preds = %do.cond50
  br label %do.cond52, !dbg !5877

do.cond52:                                        ; preds = %do.end51
  br label %do.end53, !dbg !5877

do.end53:                                         ; preds = %do.cond52
  %66 = load ptr, ptr %tmp, align 8, !dbg !5883
  %67 = load ptr, ptr %successor, align 8, !dbg !5884
  call void @rb_set_parent(ptr noundef %66, ptr noundef %67) #7, !dbg !5885
  %68 = load ptr, ptr %node.addr, align 8, !dbg !5886
  %__rb_parent_color54 = getelementptr inbounds %struct.rb_node, ptr %68, i32 0, i32 0, !dbg !5887
  %69 = load i64, ptr %__rb_parent_color54, align 8, !dbg !5887
  store i64 %69, ptr %pc, align 8, !dbg !5888
  %70 = load i64, ptr %pc, align 8, !dbg !5889
  %and55 = and i64 %70, -4, !dbg !5889
  %71 = inttoptr i64 %and55 to ptr, !dbg !5889
  store ptr %71, ptr %tmp, align 8, !dbg !5890
  %72 = load ptr, ptr %node.addr, align 8, !dbg !5891
  %73 = load ptr, ptr %successor, align 8, !dbg !5892
  %74 = load ptr, ptr %tmp, align 8, !dbg !5893
  %75 = load ptr, ptr %root.addr, align 8, !dbg !5894
  call void @__rb_change_child(ptr noundef %72, ptr noundef %73, ptr noundef %74, ptr noundef %75) #7, !dbg !5895
  %76 = load ptr, ptr %child2, align 8, !dbg !5896
  %tobool56 = icmp ne ptr %76, null, !dbg !5896
  br i1 %tobool56, label %if.then57, label %if.else58, !dbg !5898

if.then57:                                        ; preds = %do.end53
  %77 = load ptr, ptr %child2, align 8, !dbg !5899
  %78 = load ptr, ptr %parent, align 8, !dbg !5901
  call void @rb_set_parent_color(ptr noundef %77, ptr noundef %78, i32 noundef 1) #7, !dbg !5902
  store ptr null, ptr %rebalance, align 8, !dbg !5903
  br label %if.end66, !dbg !5904

if.else58:                                        ; preds = %do.end53
  %79 = load ptr, ptr %successor, align 8, !dbg !5905
  %__rb_parent_color59 = getelementptr inbounds %struct.rb_node, ptr %79, i32 0, i32 0, !dbg !5905
  %80 = load i64, ptr %__rb_parent_color59, align 8, !dbg !5905
  %and60 = and i64 %80, 1, !dbg !5905
  %tobool61 = icmp ne i64 %and60, 0, !dbg !5905
  br i1 %tobool61, label %cond.true62, label %cond.false63, !dbg !5905

cond.true62:                                      ; preds = %if.else58
  %81 = load ptr, ptr %parent, align 8, !dbg !5907
  br label %cond.end64, !dbg !5905

cond.false63:                                     ; preds = %if.else58
  br label %cond.end64, !dbg !5905

cond.end64:                                       ; preds = %cond.false63, %cond.true62
  %cond65 = phi ptr [ %81, %cond.true62 ], [ null, %cond.false63 ], !dbg !5905
  store ptr %cond65, ptr %rebalance, align 8, !dbg !5908
  br label %if.end66

if.end66:                                         ; preds = %cond.end64, %if.then57
  %82 = load i64, ptr %pc, align 8, !dbg !5909
  %83 = load ptr, ptr %successor, align 8, !dbg !5910
  %__rb_parent_color67 = getelementptr inbounds %struct.rb_node, ptr %83, i32 0, i32 0, !dbg !5911
  store i64 %82, ptr %__rb_parent_color67, align 8, !dbg !5912
  %84 = load ptr, ptr %successor, align 8, !dbg !5913
  store ptr %84, ptr %tmp, align 8, !dbg !5914
  call void @llvm.lifetime.end.p0(i64 8, ptr %child2) #6, !dbg !5915
  call void @llvm.lifetime.end.p0(i64 8, ptr %successor) #6, !dbg !5915
  br label %if.end68

if.end68:                                         ; preds = %if.end66, %if.then8
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end
  %85 = load ptr, ptr %augment.addr, align 8, !dbg !5916
  %propagate70 = getelementptr inbounds %struct.rb_augment_callbacks, ptr %85, i32 0, i32 0, !dbg !5917
  %86 = load ptr, ptr %propagate70, align 8, !dbg !5917
  %87 = load ptr, ptr %tmp, align 8, !dbg !5918
  call void %86(ptr noundef %87, ptr noundef null) #7, !dbg !5916
  %88 = load ptr, ptr %rebalance, align 8, !dbg !5919
  call void @llvm.lifetime.end.p0(i64 8, ptr %pc) #6, !dbg !5920
  call void @llvm.lifetime.end.p0(i64 8, ptr %rebalance) #6, !dbg !5920
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #6, !dbg !5920
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #6, !dbg !5920
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #6, !dbg !5920
  ret ptr %88, !dbg !5921
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5922 dso_local void @__rb_erase_color(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__rb_change_child(ptr noundef %old, ptr noundef %new, ptr noundef %parent, ptr noundef %root) #3 align 16 !dbg !5925 {
entry:
  %old.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !5929, metadata !DIExpression()), !dbg !5933
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5930, metadata !DIExpression()), !dbg !5934
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5931, metadata !DIExpression()), !dbg !5935
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5932, metadata !DIExpression()), !dbg !5936
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !5937
  %tobool = icmp ne ptr %0, null, !dbg !5937
  br i1 %tobool, label %if.then, label %if.else13, !dbg !5939

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !5940
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 2, !dbg !5943
  %2 = load ptr, ptr %rb_left, align 8, !dbg !5943
  %3 = load ptr, ptr %old.addr, align 8, !dbg !5944
  %cmp = icmp eq ptr %2, %3, !dbg !5945
  br i1 %cmp, label %if.then1, label %if.else, !dbg !5946

if.then1:                                         ; preds = %if.then
  br label %do.body, !dbg !5947

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !5948

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5950

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5948

do.body3:                                         ; preds = %do.end
  %4 = load ptr, ptr %new.addr, align 8, !dbg !5952
  %5 = load ptr, ptr %parent.addr, align 8, !dbg !5952
  %rb_left4 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 2, !dbg !5952
  store volatile ptr %4, ptr %rb_left4, align 8, !dbg !5952
  br label %do.end5, !dbg !5952

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5948

do.end6:                                          ; preds = %do.end5
  br label %if.end, !dbg !5948

if.else:                                          ; preds = %if.then
  br label %do.body7, !dbg !5954

do.body7:                                         ; preds = %if.else
  br label %do.body8, !dbg !5955

do.body8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5957

do.end9:                                          ; preds = %do.body8
  br label %do.body10, !dbg !5955

do.body10:                                        ; preds = %do.end9
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5959
  %7 = load ptr, ptr %parent.addr, align 8, !dbg !5959
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 1, !dbg !5959
  store volatile ptr %6, ptr %rb_right, align 8, !dbg !5959
  br label %do.end11, !dbg !5959

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !5955

do.end12:                                         ; preds = %do.end11
  br label %if.end

if.end:                                           ; preds = %do.end12, %do.end6
  br label %if.end20, !dbg !5961

if.else13:                                        ; preds = %entry
  br label %do.body14, !dbg !5962

do.body14:                                        ; preds = %if.else13
  br label %do.body15, !dbg !5963

do.body15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5965

do.end16:                                         ; preds = %do.body15
  br label %do.body17, !dbg !5963

do.body17:                                        ; preds = %do.end16
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5967
  %9 = load ptr, ptr %root.addr, align 8, !dbg !5967
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %9, i32 0, i32 0, !dbg !5967
  store volatile ptr %8, ptr %rb_node, align 8, !dbg !5967
  br label %do.end18, !dbg !5967

do.end18:                                         ; preds = %do.body17
  br label %do.end19, !dbg !5963

do.end19:                                         ; preds = %do.end18
  br label %if.end20

if.end20:                                         ; preds = %do.end19, %if.end
  ret void, !dbg !5969
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_set_parent(ptr noundef %rb, ptr noundef %p) #3 align 16 !dbg !5970 {
entry:
  %rb.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !5972, metadata !DIExpression()), !dbg !5974
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5973, metadata !DIExpression()), !dbg !5975
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !5976
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 0, !dbg !5976
  %1 = load i64, ptr %__rb_parent_color, align 8, !dbg !5976
  %and = and i64 %1, 1, !dbg !5976
  %2 = load ptr, ptr %p.addr, align 8, !dbg !5977
  %3 = ptrtoint ptr %2 to i64, !dbg !5978
  %add = add i64 %and, %3, !dbg !5979
  %4 = load ptr, ptr %rb.addr, align 8, !dbg !5980
  %__rb_parent_color1 = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 0, !dbg !5981
  store i64 %add, ptr %__rb_parent_color1, align 8, !dbg !5982
  ret void, !dbg !5983
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_set_parent_color(ptr noundef %rb, ptr noundef %p, i32 noundef %color) #3 align 16 !dbg !5984 {
entry:
  %rb.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %color.addr = alloca i32, align 4
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !5988, metadata !DIExpression()), !dbg !5991
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5989, metadata !DIExpression()), !dbg !5992
  store i32 %color, ptr %color.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %color.addr, metadata !5990, metadata !DIExpression()), !dbg !5993
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5994
  %1 = ptrtoint ptr %0 to i64, !dbg !5995
  %2 = load i32, ptr %color.addr, align 4, !dbg !5996
  %conv = sext i32 %2 to i64, !dbg !5996
  %add = add i64 %1, %conv, !dbg !5997
  %3 = load ptr, ptr %rb.addr, align 8, !dbg !5998
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 0, !dbg !5999
  store i64 %add, ptr %__rb_parent_color, align 8, !dbg !6000
  ret void, !dbg !6001
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6002 dso_local void @__rb_insert_augmented(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @avc_start_pgoff(ptr noundef %avc) #3 align 16 !dbg !6003 {
entry:
  %avc.addr = alloca ptr, align 8
  store ptr %avc, ptr %avc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %avc.addr, metadata !6007, metadata !DIExpression()), !dbg !6008
  %0 = load ptr, ptr %avc.addr, align 8, !dbg !6009
  %vma = getelementptr inbounds %struct.anon_vma_chain, ptr %0, i32 0, i32 0, !dbg !6010
  %1 = load ptr, ptr %vma, align 8, !dbg !6010
  %call = call i64 @vma_start_pgoff(ptr noundef %1) #7, !dbg !6011
  ret i64 %call, !dbg !6012
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @avc_last_pgoff(ptr noundef %avc) #3 align 16 !dbg !6013 {
entry:
  %avc.addr = alloca ptr, align 8
  store ptr %avc, ptr %avc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %avc.addr, metadata !6015, metadata !DIExpression()), !dbg !6016
  %0 = load ptr, ptr %avc.addr, align 8, !dbg !6017
  %vma = getelementptr inbounds %struct.anon_vma_chain, ptr %0, i32 0, i32 0, !dbg !6018
  %1 = load ptr, ptr %vma, align 8, !dbg !6018
  %call = call i64 @vma_last_pgoff(ptr noundef %1) #7, !dbg !6019
  ret i64 %call, !dbg !6020
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__anon_vma_interval_tree_augment_propagate(ptr noundef %rb, ptr noundef %stop) #3 align 16 !dbg !6021 {
entry:
  %rb.addr = alloca ptr, align 8
  %stop.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !6023, metadata !DIExpression()), !dbg !6029
  store ptr %stop, ptr %stop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stop.addr, metadata !6024, metadata !DIExpression()), !dbg !6029
  br label %while.cond, !dbg !6029

while.cond:                                       ; preds = %cleanup.cont, %entry
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !6029
  %1 = load ptr, ptr %stop.addr, align 8, !dbg !6029
  %cmp = icmp ne ptr %0, %1, !dbg !6029
  br i1 %cmp, label %while.body, label %while.end, !dbg !6029

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #6, !dbg !6030
  call void @llvm.dbg.declare(metadata ptr %node, metadata !6025, metadata !DIExpression()), !dbg !6030
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !6031
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6027, metadata !DIExpression()), !dbg !6031
  %2 = load ptr, ptr %rb.addr, align 8, !dbg !6031
  store ptr %2, ptr %__mptr, align 8, !dbg !6031
  %3 = load ptr, ptr %__mptr, align 8, !dbg !6031
  %add.ptr = getelementptr i8, ptr %3, i64 -32, !dbg !6031
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6031
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !6030
  %4 = load ptr, ptr %tmp, align 8, !dbg !6031
  store ptr %4, ptr %node, align 8, !dbg !6030
  %5 = load ptr, ptr %node, align 8, !dbg !6032
  %call = call zeroext i1 @__anon_vma_interval_tree_augment_compute_max(ptr noundef %5, i1 noundef zeroext true) #7, !dbg !6032
  br i1 %call, label %if.then, label %if.end, !dbg !6030

if.then:                                          ; preds = %while.body
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6032

if.end:                                           ; preds = %while.body
  %6 = load ptr, ptr %node, align 8, !dbg !6030
  %rb1 = getelementptr inbounds %struct.anon_vma_chain, ptr %6, i32 0, i32 3, !dbg !6030
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %rb1, i32 0, i32 0, !dbg !6030
  %7 = load i64, ptr %__rb_parent_color, align 8, !dbg !6030
  %and = and i64 %7, -4, !dbg !6030
  %8 = inttoptr i64 %and to ptr, !dbg !6030
  store ptr %8, ptr %rb.addr, align 8, !dbg !6030
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6029
  br label %cleanup, !dbg !6029

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #6, !dbg !6029
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !6029, !llvm.loop !6034

while.end:                                        ; preds = %cleanup, %while.cond
  ret void, !dbg !6029

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__anon_vma_interval_tree_augment_copy(ptr noundef %rb_old, ptr noundef %rb_new) #3 align 16 !dbg !6035 {
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
  call void @llvm.dbg.declare(metadata ptr %rb_old.addr, metadata !6037, metadata !DIExpression()), !dbg !6045
  store ptr %rb_new, ptr %rb_new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_new.addr, metadata !6038, metadata !DIExpression()), !dbg !6045
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #6, !dbg !6045
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6039, metadata !DIExpression()), !dbg !6045
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !6046
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6040, metadata !DIExpression()), !dbg !6046
  %0 = load ptr, ptr %rb_old.addr, align 8, !dbg !6046
  store ptr %0, ptr %__mptr, align 8, !dbg !6046
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6046
  %add.ptr = getelementptr i8, ptr %1, i64 -32, !dbg !6046
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6046
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !6045
  %2 = load ptr, ptr %tmp, align 8, !dbg !6046
  store ptr %2, ptr %old, align 8, !dbg !6045
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #6, !dbg !6045
  call void @llvm.dbg.declare(metadata ptr %new, metadata !6042, metadata !DIExpression()), !dbg !6045
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #6, !dbg !6047
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !6043, metadata !DIExpression()), !dbg !6047
  %3 = load ptr, ptr %rb_new.addr, align 8, !dbg !6047
  store ptr %3, ptr %__mptr1, align 8, !dbg !6047
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !6047
  %add.ptr3 = getelementptr i8, ptr %4, i64 -32, !dbg !6047
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !6047
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #6, !dbg !6045
  %5 = load ptr, ptr %tmp2, align 8, !dbg !6047
  store ptr %5, ptr %new, align 8, !dbg !6045
  %6 = load ptr, ptr %old, align 8, !dbg !6045
  %rb_subtree_last = getelementptr inbounds %struct.anon_vma_chain, ptr %6, i32 0, i32 4, !dbg !6045
  %7 = load i64, ptr %rb_subtree_last, align 8, !dbg !6045
  %8 = load ptr, ptr %new, align 8, !dbg !6045
  %rb_subtree_last4 = getelementptr inbounds %struct.anon_vma_chain, ptr %8, i32 0, i32 4, !dbg !6045
  store i64 %7, ptr %rb_subtree_last4, align 8, !dbg !6045
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #6, !dbg !6045
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #6, !dbg !6045
  ret void, !dbg !6045
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__anon_vma_interval_tree_augment_rotate(ptr noundef %rb_old, ptr noundef %rb_new) #0 align 16 !dbg !6048 {
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
  call void @llvm.dbg.declare(metadata ptr %rb_old.addr, metadata !6050, metadata !DIExpression()), !dbg !6058
  store ptr %rb_new, ptr %rb_new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_new.addr, metadata !6051, metadata !DIExpression()), !dbg !6058
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #6, !dbg !6058
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6052, metadata !DIExpression()), !dbg !6058
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !6059
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6053, metadata !DIExpression()), !dbg !6059
  %0 = load ptr, ptr %rb_old.addr, align 8, !dbg !6059
  store ptr %0, ptr %__mptr, align 8, !dbg !6059
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6059
  %add.ptr = getelementptr i8, ptr %1, i64 -32, !dbg !6059
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6059
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !6058
  %2 = load ptr, ptr %tmp, align 8, !dbg !6059
  store ptr %2, ptr %old, align 8, !dbg !6058
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #6, !dbg !6058
  call void @llvm.dbg.declare(metadata ptr %new, metadata !6055, metadata !DIExpression()), !dbg !6058
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #6, !dbg !6060
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !6056, metadata !DIExpression()), !dbg !6060
  %3 = load ptr, ptr %rb_new.addr, align 8, !dbg !6060
  store ptr %3, ptr %__mptr1, align 8, !dbg !6060
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !6060
  %add.ptr3 = getelementptr i8, ptr %4, i64 -32, !dbg !6060
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !6060
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #6, !dbg !6058
  %5 = load ptr, ptr %tmp2, align 8, !dbg !6060
  store ptr %5, ptr %new, align 8, !dbg !6058
  %6 = load ptr, ptr %old, align 8, !dbg !6058
  %rb_subtree_last = getelementptr inbounds %struct.anon_vma_chain, ptr %6, i32 0, i32 4, !dbg !6058
  %7 = load i64, ptr %rb_subtree_last, align 8, !dbg !6058
  %8 = load ptr, ptr %new, align 8, !dbg !6058
  %rb_subtree_last4 = getelementptr inbounds %struct.anon_vma_chain, ptr %8, i32 0, i32 4, !dbg !6058
  store i64 %7, ptr %rb_subtree_last4, align 8, !dbg !6058
  %9 = load ptr, ptr %old, align 8, !dbg !6058
  %call = call zeroext i1 @__anon_vma_interval_tree_augment_compute_max(ptr noundef %9, i1 noundef zeroext false) #7, !dbg !6058
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #6, !dbg !6058
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #6, !dbg !6058
  ret void, !dbg !6058
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__anon_vma_interval_tree_augment_compute_max(ptr noundef %node, i1 noundef zeroext %exit) #3 align 16 !dbg !6061 {
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
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !6065, metadata !DIExpression()), !dbg !6077
  %frombool = zext i1 %exit to i8
  store i8 %frombool, ptr %exit.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %exit.addr, metadata !6066, metadata !DIExpression()), !dbg !6077
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #6, !dbg !6077
  call void @llvm.dbg.declare(metadata ptr %child, metadata !6067, metadata !DIExpression()), !dbg !6077
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #6, !dbg !6077
  call void @llvm.dbg.declare(metadata ptr %max, metadata !6068, metadata !DIExpression()), !dbg !6077
  %0 = load ptr, ptr %node.addr, align 8, !dbg !6077
  %call = call i64 @avc_last_pgoff(ptr noundef %0) #7, !dbg !6077
  store i64 %call, ptr %max, align 8, !dbg !6077
  %1 = load ptr, ptr %node.addr, align 8, !dbg !6078
  %rb = getelementptr inbounds %struct.anon_vma_chain, ptr %1, i32 0, i32 3, !dbg !6078
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rb, i32 0, i32 2, !dbg !6078
  %2 = load ptr, ptr %rb_left, align 8, !dbg !6078
  %tobool = icmp ne ptr %2, null, !dbg !6078
  br i1 %tobool, label %if.then, label %if.end5, !dbg !6077

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !6079
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6069, metadata !DIExpression()), !dbg !6079
  %3 = load ptr, ptr %node.addr, align 8, !dbg !6079
  %rb1 = getelementptr inbounds %struct.anon_vma_chain, ptr %3, i32 0, i32 3, !dbg !6079
  %rb_left2 = getelementptr inbounds %struct.rb_node, ptr %rb1, i32 0, i32 2, !dbg !6079
  %4 = load ptr, ptr %rb_left2, align 8, !dbg !6079
  store ptr %4, ptr %__mptr, align 8, !dbg !6079
  %5 = load ptr, ptr %__mptr, align 8, !dbg !6079
  %add.ptr = getelementptr i8, ptr %5, i64 -32, !dbg !6079
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6079
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !6080
  %6 = load ptr, ptr %tmp, align 8, !dbg !6079
  store ptr %6, ptr %child, align 8, !dbg !6080
  %7 = load ptr, ptr %child, align 8, !dbg !6081
  %rb_subtree_last = getelementptr inbounds %struct.anon_vma_chain, ptr %7, i32 0, i32 4, !dbg !6081
  %8 = load i64, ptr %rb_subtree_last, align 8, !dbg !6081
  %9 = load i64, ptr %max, align 8, !dbg !6081
  %cmp = icmp ugt i64 %8, %9, !dbg !6081
  br i1 %cmp, label %if.then3, label %if.end, !dbg !6080

if.then3:                                         ; preds = %if.then
  %10 = load ptr, ptr %child, align 8, !dbg !6081
  %rb_subtree_last4 = getelementptr inbounds %struct.anon_vma_chain, ptr %10, i32 0, i32 4, !dbg !6081
  %11 = load i64, ptr %rb_subtree_last4, align 8, !dbg !6081
  store i64 %11, ptr %max, align 8, !dbg !6081
  br label %if.end, !dbg !6081

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end5, !dbg !6080

if.end5:                                          ; preds = %if.end, %entry
  %12 = load ptr, ptr %node.addr, align 8, !dbg !6083
  %rb6 = getelementptr inbounds %struct.anon_vma_chain, ptr %12, i32 0, i32 3, !dbg !6083
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb6, i32 0, i32 1, !dbg !6083
  %13 = load ptr, ptr %rb_right, align 8, !dbg !6083
  %tobool7 = icmp ne ptr %13, null, !dbg !6083
  br i1 %tobool7, label %if.then8, label %if.end19, !dbg !6077

if.then8:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #6, !dbg !6084
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !6073, metadata !DIExpression()), !dbg !6084
  %14 = load ptr, ptr %node.addr, align 8, !dbg !6084
  %rb10 = getelementptr inbounds %struct.anon_vma_chain, ptr %14, i32 0, i32 3, !dbg !6084
  %rb_right11 = getelementptr inbounds %struct.rb_node, ptr %rb10, i32 0, i32 1, !dbg !6084
  %15 = load ptr, ptr %rb_right11, align 8, !dbg !6084
  store ptr %15, ptr %__mptr9, align 8, !dbg !6084
  %16 = load ptr, ptr %__mptr9, align 8, !dbg !6084
  %add.ptr13 = getelementptr i8, ptr %16, i64 -32, !dbg !6084
  store ptr %add.ptr13, ptr %tmp12, align 8, !dbg !6084
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #6, !dbg !6085
  %17 = load ptr, ptr %tmp12, align 8, !dbg !6084
  store ptr %17, ptr %child, align 8, !dbg !6085
  %18 = load ptr, ptr %child, align 8, !dbg !6086
  %rb_subtree_last14 = getelementptr inbounds %struct.anon_vma_chain, ptr %18, i32 0, i32 4, !dbg !6086
  %19 = load i64, ptr %rb_subtree_last14, align 8, !dbg !6086
  %20 = load i64, ptr %max, align 8, !dbg !6086
  %cmp15 = icmp ugt i64 %19, %20, !dbg !6086
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !6085

if.then16:                                        ; preds = %if.then8
  %21 = load ptr, ptr %child, align 8, !dbg !6086
  %rb_subtree_last17 = getelementptr inbounds %struct.anon_vma_chain, ptr %21, i32 0, i32 4, !dbg !6086
  %22 = load i64, ptr %rb_subtree_last17, align 8, !dbg !6086
  store i64 %22, ptr %max, align 8, !dbg !6086
  br label %if.end18, !dbg !6086

if.end18:                                         ; preds = %if.then16, %if.then8
  br label %if.end19, !dbg !6085

if.end19:                                         ; preds = %if.end18, %if.end5
  %23 = load i8, ptr %exit.addr, align 1, !dbg !6088, !range !5169, !noundef !301
  %tobool20 = trunc i8 %23 to i1, !dbg !6088
  br i1 %tobool20, label %land.lhs.true, label %if.end24, !dbg !6088

land.lhs.true:                                    ; preds = %if.end19
  %24 = load ptr, ptr %node.addr, align 8, !dbg !6088
  %rb_subtree_last21 = getelementptr inbounds %struct.anon_vma_chain, ptr %24, i32 0, i32 4, !dbg !6088
  %25 = load i64, ptr %rb_subtree_last21, align 8, !dbg !6088
  %26 = load i64, ptr %max, align 8, !dbg !6088
  %cmp22 = icmp eq i64 %25, %26, !dbg !6088
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !6077

if.then23:                                        ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !6088
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6088

if.end24:                                         ; preds = %land.lhs.true, %if.end19
  %27 = load i64, ptr %max, align 8, !dbg !6077
  %28 = load ptr, ptr %node.addr, align 8, !dbg !6077
  %rb_subtree_last25 = getelementptr inbounds %struct.anon_vma_chain, ptr %28, i32 0, i32 4, !dbg !6077
  store i64 %27, ptr %rb_subtree_last25, align 8, !dbg !6077
  store i1 false, ptr %retval, align 1, !dbg !6077
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6077

cleanup:                                          ; preds = %if.end24, %if.then23
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #6, !dbg !6077
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #6, !dbg !6077
  %29 = load i1, ptr %retval, align 1, !dbg !6077
  ret i1 %29, !dbg !6077
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__anon_vma_interval_tree_subtree_search(ptr noundef %node, i64 noundef %start, i64 noundef %last) #0 align 16 !dbg !6090 {
entry:
  %retval = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %last.addr = alloca i64, align 8
  %left = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr14 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !6092, metadata !DIExpression()), !dbg !6107
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6093, metadata !DIExpression()), !dbg !6107
  store i64 %last, ptr %last.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !6094, metadata !DIExpression()), !dbg !6107
  br label %while.body, !dbg !6107

while.body:                                       ; preds = %entry, %cleanup, %if.then21
  %0 = load ptr, ptr %node.addr, align 8, !dbg !6108
  %rb = getelementptr inbounds %struct.anon_vma_chain, ptr %0, i32 0, i32 3, !dbg !6108
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rb, i32 0, i32 2, !dbg !6108
  %1 = load ptr, ptr %rb_left, align 8, !dbg !6108
  %tobool = icmp ne ptr %1, null, !dbg !6108
  br i1 %tobool, label %if.then, label %if.end4, !dbg !6109

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #6, !dbg !6110
  call void @llvm.dbg.declare(metadata ptr %left, metadata !6095, metadata !DIExpression()), !dbg !6110
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !6111
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6099, metadata !DIExpression()), !dbg !6111
  %2 = load ptr, ptr %node.addr, align 8, !dbg !6111
  %rb1 = getelementptr inbounds %struct.anon_vma_chain, ptr %2, i32 0, i32 3, !dbg !6111
  %rb_left2 = getelementptr inbounds %struct.rb_node, ptr %rb1, i32 0, i32 2, !dbg !6111
  %3 = load ptr, ptr %rb_left2, align 8, !dbg !6111
  store ptr %3, ptr %__mptr, align 8, !dbg !6111
  %4 = load ptr, ptr %__mptr, align 8, !dbg !6111
  %add.ptr = getelementptr i8, ptr %4, i64 -32, !dbg !6111
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6111
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !6110
  %5 = load ptr, ptr %tmp, align 8, !dbg !6111
  store ptr %5, ptr %left, align 8, !dbg !6110
  %6 = load i64, ptr %start.addr, align 8, !dbg !6112
  %7 = load ptr, ptr %left, align 8, !dbg !6112
  %rb_subtree_last = getelementptr inbounds %struct.anon_vma_chain, ptr %7, i32 0, i32 4, !dbg !6112
  %8 = load i64, ptr %rb_subtree_last, align 8, !dbg !6112
  %cmp = icmp ule i64 %6, %8, !dbg !6112
  br i1 %cmp, label %if.then3, label %if.end, !dbg !6110

if.then3:                                         ; preds = %if.then
  %9 = load ptr, ptr %left, align 8, !dbg !6114
  store ptr %9, ptr %node.addr, align 8, !dbg !6114
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6114, !llvm.loop !6116

if.end:                                           ; preds = %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6108
  br label %cleanup, !dbg !6108

cleanup:                                          ; preds = %if.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #6, !dbg !6108
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %while.body
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end4, !dbg !6110

if.end4:                                          ; preds = %cleanup.cont, %while.body
  %10 = load ptr, ptr %node.addr, align 8, !dbg !6117
  %call = call i64 @avc_start_pgoff(ptr noundef %10) #7, !dbg !6117
  %11 = load i64, ptr %last.addr, align 8, !dbg !6117
  %cmp5 = icmp ule i64 %call, %11, !dbg !6117
  br i1 %cmp5, label %if.then6, label %if.end24, !dbg !6109

if.then6:                                         ; preds = %if.end4
  %12 = load i64, ptr %start.addr, align 8, !dbg !6118
  %13 = load ptr, ptr %node.addr, align 8, !dbg !6118
  %call7 = call i64 @avc_last_pgoff(ptr noundef %13) #7, !dbg !6118
  %cmp8 = icmp ule i64 %12, %call7, !dbg !6118
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !6120

if.then9:                                         ; preds = %if.then6
  %14 = load ptr, ptr %node.addr, align 8, !dbg !6118
  store ptr %14, ptr %retval, align 8, !dbg !6118
  br label %return, !dbg !6118

if.end10:                                         ; preds = %if.then6
  %15 = load ptr, ptr %node.addr, align 8, !dbg !6121
  %rb11 = getelementptr inbounds %struct.anon_vma_chain, ptr %15, i32 0, i32 3, !dbg !6121
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb11, i32 0, i32 1, !dbg !6121
  %16 = load ptr, ptr %rb_right, align 8, !dbg !6121
  %tobool12 = icmp ne ptr %16, null, !dbg !6121
  br i1 %tobool12, label %if.then13, label %if.end23, !dbg !6120

if.then13:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr14) #6, !dbg !6122
  call void @llvm.dbg.declare(metadata ptr %__mptr14, metadata !6101, metadata !DIExpression()), !dbg !6122
  %17 = load ptr, ptr %node.addr, align 8, !dbg !6122
  %rb15 = getelementptr inbounds %struct.anon_vma_chain, ptr %17, i32 0, i32 3, !dbg !6122
  %rb_right16 = getelementptr inbounds %struct.rb_node, ptr %rb15, i32 0, i32 1, !dbg !6122
  %18 = load ptr, ptr %rb_right16, align 8, !dbg !6122
  store ptr %18, ptr %__mptr14, align 8, !dbg !6122
  %19 = load ptr, ptr %__mptr14, align 8, !dbg !6122
  %add.ptr18 = getelementptr i8, ptr %19, i64 -32, !dbg !6122
  store ptr %add.ptr18, ptr %tmp17, align 8, !dbg !6122
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr14) #6, !dbg !6123
  %20 = load ptr, ptr %tmp17, align 8, !dbg !6122
  store ptr %20, ptr %node.addr, align 8, !dbg !6123
  %21 = load i64, ptr %start.addr, align 8, !dbg !6124
  %22 = load ptr, ptr %node.addr, align 8, !dbg !6124
  %rb_subtree_last19 = getelementptr inbounds %struct.anon_vma_chain, ptr %22, i32 0, i32 4, !dbg !6124
  %23 = load i64, ptr %rb_subtree_last19, align 8, !dbg !6124
  %cmp20 = icmp ule i64 %21, %23, !dbg !6124
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !6123

if.then21:                                        ; preds = %if.then13
  br label %while.body, !dbg !6124, !llvm.loop !6116

if.end22:                                         ; preds = %if.then13
  br label %if.end23, !dbg !6123

if.end23:                                         ; preds = %if.end22, %if.end10
  br label %if.end24, !dbg !6120

if.end24:                                         ; preds = %if.end23, %if.end4
  store ptr null, ptr %retval, align 8, !dbg !6109
  br label %return, !dbg !6109

return:                                           ; preds = %if.end24, %if.then9
  %24 = load ptr, ptr %retval, align 8, !dbg !6107
  ret ptr %24, !dbg !6107

unreachable:                                      ; preds = %cleanup
  unreachable
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
!llvm.module.flags = !{!5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138}
!llvm.ident = !{!5139}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "vma_interval_tree_augment", scope: !2, file: !3, line: 23, type: !5121, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF mm/.interval_tree.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22mm/interval_tree\22 -D KBUILD_BASENAME=\22interval_tree\22 -D KBUILD_MODNAME=\22interval_tree\22 -D __KBUILD_MODNAME=kmod_interval_tree -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o mm/interval_tree.ll mm/interval_tree.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !258, globals: !5118, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "mm/interval_tree.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97852f859d06b3a93b40001de70e7bab")
!4 = !{!5, !14, !110, !117, !125, !141, !146, !153, !159, !164, !170, !176, !183, !188, !196, !203, !212, !217, !222, !228, !240, !246, !253}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !16, file: !15, line: 147, baseType: !7, size: 32, elements: !107)
!15 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !15, line: 135, size: 512, elements: !17)
!17 = !{!18, !22, !24, !26, !30, !31, !47, !105, !106}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !16, file: !15, line: 136, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !16, file: !15, line: 137, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !16, file: !15, line: 138, baseType: !25, size: 32, offset: 128)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !16, file: !15, line: 139, baseType: !27, size: 16, offset: 160)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !28, line: 24, baseType: !29)
!28 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!29 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !16, file: !15, line: 150, baseType: !14, size: 32, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !16, file: !15, line: 151, baseType: !32, size: 64, offset: 256)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !15, line: 64, baseType: !34)
!34 = !DISubroutineType(types: !35)
!35 = !{!25, !36, !25, !23, !37, !43}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 61, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !40, line: 72, baseType: !41)
!40 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !40, line: 16, baseType: !42)
!42 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !28, line: 52, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !40, line: 88, baseType: !46)
!46 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !16, file: !15, line: 152, baseType: !48, size: 64, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !15, line: 117, size: 256, elements: !50)
!50 = !{!51, !56}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !49, file: !15, line: 118, baseType: !52, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !28, line: 174, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 172, size: 32, elements: !54)
!54 = !{!55}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !53, file: !28, line: 173, baseType: !25, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !49, file: !15, line: 119, baseType: !57, size: 192, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !58, line: 41, baseType: !59)
!58 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !58, line: 37, size: 192, elements: !60)
!60 = !{!61, !99}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !59, file: !58, line: 38, baseType: !62, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !63, line: 29, baseType: !64)
!63 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !63, line: 17, size: 32, elements: !65)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, scope: !64, file: !63, line: 18, baseType: !67, size: 32)
!67 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !64, file: !63, line: 18, size: 32, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !67, file: !63, line: 19, baseType: !70, size: 32)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !71, line: 14, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !70, file: !71, line: 15, baseType: !74, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !75, line: 44, baseType: !76)
!75 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !75, line: 14, size: 32, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !75, line: 15, baseType: !79, size: 32)
!79 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !76, file: !75, line: 15, size: 32, elements: !80)
!80 = !{!81, !82, !92}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !79, file: !75, line: 16, baseType: !52, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !75, line: 24, baseType: !83, size: 16)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !79, file: !75, line: 24, size: 16, elements: !84)
!84 = !{!85, !91}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !83, file: !75, line: 25, baseType: !86, size: 8)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !87, line: 17, baseType: !88)
!87 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !89, line: 21, baseType: !90)
!89 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!90 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !83, file: !75, line: 26, baseType: !86, size: 8, offset: 8)
!92 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !75, line: 28, baseType: !93, size: 32)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !79, file: !75, line: 28, size: 32, elements: !94)
!94 = !{!95, !98}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !93, file: !75, line: 29, baseType: !96, size: 16)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !87, line: 19, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !89, line: 24, baseType: !29)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !93, file: !75, line: 30, baseType: !96, size: 16, offset: 16)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !59, file: !58, line: 39, baseType: !100, size: 128, offset: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !28, line: 190, size: 128, elements: !101)
!101 = !{!102, !104}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !100, file: !28, line: 191, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !100, file: !28, line: 191, baseType: !103, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !16, file: !15, line: 153, baseType: !23, size: 64, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !16, file: !15, line: 154, baseType: !23, size: 64, offset: 448)
!107 = !{!108, !109}
!108 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!109 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !111, line: 312, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!114 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!115 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!116 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !118, line: 68, baseType: !7, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!119 = !{!120, !121, !122, !123, !124}
!120 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!121 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!122 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!123 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!124 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !126, line: 1325, baseType: !7, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140}
!128 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!129 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!130 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!131 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!132 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!133 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!134 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!135 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!136 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!137 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!138 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!139 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!140 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !142, line: 32, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!143 = !{!144, !145}
!144 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!145 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !147, line: 15, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!148 = !{!149, !150, !151, !152}
!149 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!150 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!151 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!152 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !154, line: 26, baseType: !7, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!155 = !{!156, !157, !158}
!156 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!157 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!158 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !160, line: 2052, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!161 = !{!162, !163}
!162 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!163 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !165, line: 54, baseType: !7, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!166 = !{!167, !168, !169}
!167 = !DIEnumerator(name: "USRQUOTA", value: 0)
!168 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!169 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !171, line: 45, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!172 = !{!173, !174, !175}
!173 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!174 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!175 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !177, line: 487, baseType: !7, size: 32, elements: !178)
!177 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!178 = !{!179, !180, !181, !182}
!179 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!180 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!181 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!182 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !184, line: 65, baseType: !7, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!185 = !{!186, !187}
!186 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!187 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !189, line: 620, baseType: !7, size: 32, elements: !190)
!189 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!190 = !{!191, !192, !193, !194, !195}
!191 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!192 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!193 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!194 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!195 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !189, line: 597, baseType: !25, size: 32, elements: !197)
!197 = !{!198, !199, !200, !201, !202}
!198 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!199 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!200 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!201 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!202 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !177, line: 547, baseType: !7, size: 32, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210, !211}
!205 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!206 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!207 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!208 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!209 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!210 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!211 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !177, line: 564, baseType: !7, size: 32, elements: !213)
!213 = !{!214, !215, !216}
!214 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!215 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!216 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !177, line: 577, baseType: !7, size: 32, elements: !218)
!218 = !{!219, !220, !221}
!219 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!220 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!221 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !177, line: 503, baseType: !7, size: 32, elements: !223)
!223 = !{!224, !225, !226, !227}
!224 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!225 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!226 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!227 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !229, line: 44, baseType: !7, size: 32, elements: !230)
!229 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238, !239}
!231 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!232 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!233 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!234 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!235 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!236 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!237 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!238 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!239 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !241, line: 16, baseType: !7, size: 32, elements: !242)
!241 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!242 = !{!243, !244, !245}
!243 = !DIEnumerator(name: "TT_NONE", value: 0)
!244 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!245 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !247, line: 51, baseType: !7, size: 32, elements: !248)
!247 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!248 = !{!249, !250, !251, !252}
!249 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!250 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!251 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!252 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !254, line: 10, baseType: !7, size: 32, elements: !255)
!254 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!255 = !{!256, !257}
!256 = !DIEnumerator(name: "false", value: 0)
!257 = !DIEnumerator(name: "true", value: 1)
!258 = !{!23, !259, !481, !42, !5108, !5110}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !126, line: 625, size: 1344, elements: !261)
!261 = !{!262, !279, !5062, !5068, !5075, !5076, !5081, !5082, !5087, !5088, !5100, !5101, !5102, !5103, !5104, !5105, !5106}
!262 = !DIDerivedType(tag: DW_TAG_member, scope: !260, file: !126, line: 628, baseType: !263, size: 128)
!263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !260, file: !126, line: 628, size: 128, elements: !264)
!264 = !{!265, !270}
!265 = !DIDerivedType(tag: DW_TAG_member, scope: !263, file: !126, line: 629, baseType: !266, size: 128)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !263, file: !126, line: 629, size: 128, elements: !267)
!267 = !{!268, !269}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !266, file: !126, line: 631, baseType: !42, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !266, file: !126, line: 632, baseType: !42, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !263, file: !126, line: 635, baseType: !271, size: 128, align: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !28, line: 232, size: 128, align: 64, elements: !272)
!272 = !{!273, !275}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !271, file: !28, line: 233, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !271, file: !28, line: 234, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !274}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !260, file: !126, line: 639, baseType: !280, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !126, line: 733, size: 10240, elements: !282)
!282 = !{!283, !5060}
!283 = !DIDerivedType(tag: DW_TAG_member, scope: !281, file: !126, line: 734, baseType: !284, size: 10240)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !281, file: !126, line: 734, size: 10240, elements: !285)
!285 = !{!286, !290, !304, !4940, !4941, !4942, !4943, !4944, !4945, !4952, !4953, !4954, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4993, !4994, !4997, !5040, !5041, !5042, !5045, !5046, !5047, !5050, !5051, !5052, !5058, !5059}
!286 = !DIDerivedType(tag: DW_TAG_member, scope: !284, file: !126, line: 739, baseType: !287, size: 512, align: 512)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !284, file: !126, line: 739, size: 512, align: 512, elements: !288)
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !287, file: !126, line: 747, baseType: !52, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !284, file: !126, line: 750, baseType: !291, size: 128, offset: 512)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !292, line: 218, size: 128, elements: !293)
!292 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!293 = !{!294, !302, !303}
!294 = !DIDerivedType(tag: DW_TAG_member, scope: !291, file: !292, line: 219, baseType: !295, size: 32)
!295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !291, file: !292, line: 219, size: 32, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !295, file: !292, line: 220, baseType: !62, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !295, file: !292, line: 221, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !292, line: 197, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !292, line: 197, elements: !301)
!301 = !{}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !291, file: !292, line: 223, baseType: !7, size: 32, offset: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !291, file: !292, line: 224, baseType: !23, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !284, file: !126, line: 752, baseType: !305, size: 64, offset: 640)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!42, !308, !42, !42, !42, !42}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !160, line: 994, size: 1856, align: 64, elements: !310)
!310 = !{!311, !322, !323, !325, !334, !347, !348, !349, !424, !796, !805, !4930, !4931, !4932, !4933, !4934, !4935, !4937, !4938, !4939}
!311 = !DIDerivedType(tag: DW_TAG_member, scope: !309, file: !160, line: 995, baseType: !312, size: 128)
!312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !309, file: !160, line: 995, size: 128, elements: !313)
!313 = !{!314, !320, !321}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !312, file: !160, line: 996, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !316, line: 60, size: 64, elements: !317)
!316 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !315, file: !316, line: 61, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !312, file: !160, line: 997, baseType: !271, size: 128, align: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !312, file: !160, line: 998, baseType: !7, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !309, file: !160, line: 1005, baseType: !62, size: 32, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !309, file: !160, line: 1006, baseType: !324, size: 32, offset: 160)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !28, line: 156, baseType: !7)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !309, file: !160, line: 1007, baseType: !326, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !327, line: 13, baseType: !328)
!327 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !28, line: 181, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 179, size: 64, elements: !330)
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !329, file: !28, line: 180, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !87, line: 22, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !89, line: 30, baseType: !46)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !309, file: !160, line: 1008, baseType: !335, size: 256, offset: 256)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !336, line: 66, size: 256, elements: !337)
!336 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!337 = !{!338, !339, !341, !346}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !335, file: !336, line: 67, baseType: !326, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !335, file: !336, line: 68, baseType: !340, size: 32, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !71, line: 23, baseType: !70)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !335, file: !336, line: 70, baseType: !342, size: 32, offset: 96)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !343, line: 15, size: 32, elements: !344)
!343 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !342, file: !343, line: 20, baseType: !52, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !335, file: !336, line: 72, baseType: !100, size: 128, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !309, file: !160, line: 1009, baseType: !44, size: 64, offset: 512)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !309, file: !160, line: 1010, baseType: !7, size: 32, offset: 576)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !309, file: !160, line: 1011, baseType: !350, size: 256, offset: 640)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !160, line: 948, size: 256, elements: !351)
!351 = !{!352, !375, !413, !414, !422, !423}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !350, file: !160, line: 949, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !354, line: 34, baseType: !355)
!354 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !354, line: 25, size: 64, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !355, file: !354, line: 26, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !359, line: 27, baseType: !360)
!359 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !359, line: 13, size: 64, elements: !361)
!361 = !{!362, !374}
!362 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !359, line: 14, baseType: !363, size: 32)
!363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !360, file: !359, line: 14, size: 32, elements: !364)
!364 = !{!365, !366}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !363, file: !359, line: 15, baseType: !52, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !359, line: 16, baseType: !367, size: 32)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !363, file: !359, line: 16, size: 32, elements: !368)
!368 = !{!369, !370}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !367, file: !359, line: 18, baseType: !86, size: 8)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !367, file: !359, line: 19, baseType: !371, size: 24, offset: 8)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 24, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 3)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !360, file: !359, line: 26, baseType: !74, size: 32, offset: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !350, file: !160, line: 950, baseType: !376, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !378)
!378 = !{!379, !385, !386, !387, !400, !401, !402, !403}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !377, file: !6, line: 61, baseType: !380, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !381, line: 113, baseType: !382)
!381 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !381, line: 111, size: 32, elements: !383)
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !382, file: !381, line: 112, baseType: !52, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !377, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !377, file: !6, line: 63, baseType: !62, size: 32, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !377, file: !6, line: 65, baseType: !388, size: 256, offset: 128)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 256, elements: !398)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !28, line: 194, size: 64, elements: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !389, file: !28, line: 195, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !28, line: 198, size: 128, elements: !394)
!394 = !{!395, !396}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !393, file: !28, line: 199, baseType: !392, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !393, file: !28, line: 199, baseType: !397, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!398 = !{!399}
!399 = !DISubrange(count: 4)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !377, file: !6, line: 66, baseType: !389, size: 64, offset: 384)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !377, file: !6, line: 68, baseType: !57, size: 192, offset: 448)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !377, file: !6, line: 69, baseType: !271, size: 128, align: 64, offset: 640)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !377, file: !6, line: 70, baseType: !404, offset: 768)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, elements: !411)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !406)
!406 = !{!407, !408}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !405, file: !6, line: 55, baseType: !25, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !405, file: !6, line: 56, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!411 = !{!412}
!412 = !DISubrange(count: -1)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !350, file: !160, line: 951, baseType: !5, size: 32, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !350, file: !160, line: 952, baseType: !415, size: 32, offset: 160)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !416, line: 23, baseType: !417)
!416 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !416, line: 21, size: 32, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !417, file: !416, line: 22, baseType: !420, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !28, line: 37, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !40, line: 49, baseType: !7)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !350, file: !160, line: 952, baseType: !415, size: 32, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !350, file: !160, line: 953, baseType: !25, size: 32, offset: 224)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !309, file: !160, line: 1012, baseType: !425, size: 64, offset: 896)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !428, line: 110, size: 1472, elements: !429)
!428 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!429 = !{!430, !431, !432, !439, !440, !441, !442, !443, !444, !445, !446, !455, !456, !457, !458, !459, !460, !593, !594, !595, !596, !597, !628, !782, !783, !791}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !427, file: !428, line: 111, baseType: !326, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !427, file: !428, line: 112, baseType: !415, size: 32, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !427, file: !428, line: 113, baseType: !433, size: 32, offset: 96)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !416, line: 28, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !416, line: 26, size: 32, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !434, file: !416, line: 27, baseType: !437, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !28, line: 38, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !40, line: 50, baseType: !7)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !427, file: !428, line: 114, baseType: !415, size: 32, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !427, file: !428, line: 115, baseType: !433, size: 32, offset: 160)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !427, file: !428, line: 116, baseType: !415, size: 32, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !427, file: !428, line: 117, baseType: !433, size: 32, offset: 224)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !427, file: !428, line: 118, baseType: !415, size: 32, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !427, file: !428, line: 119, baseType: !433, size: 32, offset: 288)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !427, file: !428, line: 120, baseType: !7, size: 32, offset: 320)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !427, file: !428, line: 121, baseType: !447, size: 64, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !448, line: 24, baseType: !449)
!448 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !448, line: 24, size: 64, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !449, file: !448, line: 24, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !87, line: 23, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !89, line: 31, baseType: !454)
!454 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !427, file: !428, line: 122, baseType: !447, size: 64, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !427, file: !428, line: 123, baseType: !447, size: 64, offset: 512)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !427, file: !428, line: 124, baseType: !447, size: 64, offset: 576)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !427, file: !428, line: 125, baseType: !447, size: 64, offset: 640)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !427, file: !428, line: 127, baseType: !90, size: 8, offset: 704)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !427, file: !428, line: 129, baseType: !461, size: 64, offset: 768)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !463, line: 195, size: 1728, elements: !464)
!463 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!464 = !{!465, !466, !471, !483, !492, !495, !496, !503, !504, !505, !506, !511, !512, !513, !515, !516, !557, !578}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !462, file: !463, line: 196, baseType: !380, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !462, file: !463, line: 197, baseType: !467, size: 32, offset: 32)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !463, line: 28, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !28, line: 104, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !87, line: 20, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !89, line: 26, baseType: !25)
!471 = !DIDerivedType(tag: DW_TAG_member, scope: !462, file: !463, line: 198, baseType: !472, size: 192, offset: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !462, file: !463, line: 198, size: 192, elements: !473)
!473 = !{!474, !475}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !472, file: !463, line: 199, baseType: !100, size: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !472, file: !463, line: 200, baseType: !476, size: 192, align: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !477, line: 5, size: 192, align: 64, elements: !478)
!477 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!478 = !{!479, !480, !482}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !476, file: !477, line: 6, baseType: !42, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !476, file: !477, line: 7, baseType: !481, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !476, file: !477, line: 8, baseType: !481, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !462, file: !463, line: 205, baseType: !484, size: 320, offset: 256)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !485, line: 48, size: 320, elements: !486)
!485 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!486 = !{!487, !488, !489, !490, !491}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !484, file: !485, line: 49, baseType: !326, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !484, file: !485, line: 55, baseType: !326, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !484, file: !485, line: 57, baseType: !342, size: 32, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !484, file: !485, line: 59, baseType: !340, size: 32, offset: 160)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !484, file: !485, line: 60, baseType: !100, size: 128, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !462, file: !463, line: 206, baseType: !493, size: 64, offset: 576)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !463, line: 206, flags: DIFlagFwdDecl)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !462, file: !463, line: 207, baseType: !23, size: 64, offset: 640)
!496 = !DIDerivedType(tag: DW_TAG_member, scope: !462, file: !463, line: 208, baseType: !497, size: 64, offset: 704)
!497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !462, file: !463, line: 208, size: 64, elements: !498)
!498 = !{!499, !502}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !497, file: !463, line: 209, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !501, line: 8, baseType: !333)
!501 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!502 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !497, file: !463, line: 210, baseType: !500, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !462, file: !463, line: 212, baseType: !500, size: 64, offset: 768)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !462, file: !463, line: 213, baseType: !415, size: 32, offset: 832)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !462, file: !463, line: 214, baseType: !433, size: 32, offset: 864)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !462, file: !463, line: 215, baseType: !507, size: 32, offset: 896)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !463, line: 31, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !28, line: 110, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !87, line: 21, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !89, line: 27, baseType: !7)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !462, file: !463, line: 216, baseType: !29, size: 16, offset: 928)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !462, file: !463, line: 217, baseType: !29, size: 16, offset: 944)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !462, file: !463, line: 221, baseType: !514, size: 16, offset: 960)
!514 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !462, file: !463, line: 228, baseType: !42, size: 64, offset: 1024)
!516 = !DIDerivedType(tag: DW_TAG_member, scope: !462, file: !463, line: 245, baseType: !517, size: 320, offset: 1088)
!517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !462, file: !463, line: 245, size: 320, elements: !518)
!518 = !{!519, !548}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !517, file: !463, line: 246, baseType: !520, size: 320)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !463, line: 114, size: 320, elements: !521)
!521 = !{!522, !523, !535, !538, !547}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !520, file: !463, line: 116, baseType: !42, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, scope: !520, file: !463, line: 117, baseType: !524, size: 64, offset: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !520, file: !463, line: 117, size: 64, elements: !525)
!525 = !{!526, !534}
!526 = !DIDerivedType(tag: DW_TAG_member, scope: !524, file: !463, line: 118, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !524, file: !463, line: 118, size: 64, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !527, file: !463, line: 120, baseType: !96, size: 16)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !527, file: !463, line: 121, baseType: !531, size: 48, offset: 16)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 48, elements: !532)
!532 = !{!533}
!533 = !DISubrange(count: 6)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !524, file: !463, line: 127, baseType: !42, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !520, file: !463, line: 129, baseType: !536, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !463, line: 102, flags: DIFlagFwdDecl)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !520, file: !463, line: 130, baseType: !539, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !463, line: 108, size: 192, elements: !541)
!541 = !{!542, !543, !544}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !540, file: !463, line: 109, baseType: !271, size: 128, align: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !540, file: !463, line: 110, baseType: !380, size: 32, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !540, file: !463, line: 111, baseType: !545, size: 8, offset: 160)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !28, line: 35, baseType: !546)
!546 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !520, file: !463, line: 131, baseType: !19, size: 64, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_member, scope: !517, file: !463, line: 247, baseType: !549, size: 320)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !517, file: !463, line: 247, size: 320, elements: !550)
!550 = !{!551, !552, !553, !554, !555}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !549, file: !463, line: 248, baseType: !42, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !549, file: !463, line: 249, baseType: !42, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !549, file: !463, line: 250, baseType: !536, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !549, file: !463, line: 251, baseType: !539, size: 64, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !549, file: !463, line: 252, baseType: !556, size: 64, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, scope: !462, file: !463, line: 260, baseType: !558, size: 256, offset: 1408)
!558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !462, file: !463, line: 260, size: 256, elements: !559)
!559 = !{!560, !566}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !558, file: !463, line: 261, baseType: !561, size: 256)
!561 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !463, line: 134, size: 256, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !561, file: !463, line: 135, baseType: !23, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !561, file: !463, line: 136, baseType: !565, size: 256)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 256, elements: !398)
!566 = !DIDerivedType(tag: DW_TAG_member, scope: !558, file: !463, line: 262, baseType: !567, size: 256)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !558, file: !463, line: 262, size: 256, elements: !568)
!568 = !{!569, !570}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !567, file: !463, line: 264, baseType: !100, size: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !567, file: !463, line: 265, baseType: !571, size: 128, offset: 128)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !572, line: 22, size: 128, elements: !573)
!572 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!573 = !{!574, !577}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !571, file: !572, line: 23, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !572, line: 23, flags: DIFlagFwdDecl)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !571, file: !572, line: 24, baseType: !42, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !462, file: !463, line: 280, baseType: !579, size: 64, offset: 1664)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !463, line: 176, size: 192, elements: !581)
!581 = !{!582, !591, !592}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !580, file: !463, line: 177, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !463, line: 171, baseType: !584)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!25, !461, !587, !589, !461}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !537)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !561)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !580, file: !463, line: 178, baseType: !461, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !580, file: !463, line: 179, baseType: !536, size: 64, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !427, file: !428, line: 130, baseType: !461, size: 64, offset: 832)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !427, file: !428, line: 131, baseType: !461, size: 64, offset: 896)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !427, file: !428, line: 132, baseType: !461, size: 64, offset: 960)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !427, file: !428, line: 135, baseType: !23, size: 64, offset: 1024)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !427, file: !428, line: 137, baseType: !598, size: 64, offset: 1088)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !600, line: 14, size: 1088, elements: !601)
!600 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!601 = !{!602, !603, !612, !613, !614, !615, !616, !617}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !599, file: !600, line: 15, baseType: !380, size: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !599, file: !600, line: 17, baseType: !604, size: 320, offset: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !605, line: 22, size: 320, elements: !606)
!605 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!606 = !{!607, !608, !609, !610}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !604, file: !605, line: 23, baseType: !340, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !604, file: !605, line: 24, baseType: !332, size: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !604, file: !605, line: 26, baseType: !100, size: 128, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !604, file: !605, line: 28, baseType: !611, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !599, file: !600, line: 19, baseType: !42, size: 64, offset: 384)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !599, file: !600, line: 20, baseType: !326, size: 64, offset: 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !599, file: !600, line: 23, baseType: !393, size: 128, offset: 512)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !599, file: !600, line: 24, baseType: !415, size: 32, offset: 640)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !599, file: !600, line: 29, baseType: !326, size: 64, offset: 704)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !599, file: !600, line: 36, baseType: !618, size: 320, offset: 768)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !619, line: 15, size: 320, elements: !620)
!619 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!620 = !{!621, !622, !623, !624, !625, !626, !627}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !618, file: !619, line: 16, baseType: !340, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !618, file: !619, line: 18, baseType: !25, size: 32, offset: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !618, file: !619, line: 19, baseType: !25, size: 32, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !618, file: !619, line: 20, baseType: !25, size: 32, offset: 96)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !618, file: !619, line: 21, baseType: !25, size: 32, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !618, file: !619, line: 22, baseType: !42, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !618, file: !619, line: 23, baseType: !42, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !427, file: !428, line: 138, baseType: !629, size: 64, offset: 1152)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !631, line: 68, size: 4800, elements: !632)
!631 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!632 = !{!633, !655, !656, !657, !658, !659, !660, !661, !672, !673, !674, !675, !676, !677, !689, !762, !763, !777, !780}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !630, file: !631, line: 69, baseType: !634, size: 576)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !631, line: 23, size: 576, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !634, file: !631, line: 24, baseType: !509, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, scope: !634, file: !631, line: 25, baseType: !638, size: 512, offset: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !634, file: !631, line: 25, size: 512, elements: !639)
!639 = !{!640, !649}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !638, file: !631, line: 26, baseType: !641, size: 480)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 480, elements: !647)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !631, line: 17, size: 96, elements: !643)
!643 = !{!644, !645, !646}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !642, file: !631, line: 18, baseType: !509, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !642, file: !631, line: 19, baseType: !509, size: 32, offset: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !642, file: !631, line: 20, baseType: !509, size: 32, offset: 64)
!647 = !{!648}
!648 = !DISubrange(count: 5)
!649 = !DIDerivedType(tag: DW_TAG_member, scope: !638, file: !631, line: 27, baseType: !650, size: 128)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !638, file: !631, line: 27, size: 128, elements: !651)
!651 = !{!652, !654}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !650, file: !631, line: 28, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !650, file: !631, line: 29, baseType: !653, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !630, file: !631, line: 70, baseType: !634, size: 576, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !630, file: !631, line: 71, baseType: !634, size: 576, offset: 1152)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !630, file: !631, line: 72, baseType: !629, size: 64, offset: 1728)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !630, file: !631, line: 73, baseType: !25, size: 32, offset: 1792)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !630, file: !631, line: 74, baseType: !415, size: 32, offset: 1824)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !630, file: !631, line: 75, baseType: !433, size: 32, offset: 1856)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !630, file: !631, line: 76, baseType: !662, size: 192, offset: 1920)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !663, line: 9, size: 192, elements: !664)
!663 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!664 = !{!665, !666, !670, !671}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !662, file: !663, line: 10, baseType: !326, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !662, file: !663, line: 11, baseType: !667, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !669)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !663, line: 7, flags: DIFlagFwdDecl)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !662, file: !663, line: 12, baseType: !7, size: 32, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !662, file: !663, line: 13, baseType: !380, size: 32, offset: 160)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !630, file: !631, line: 77, baseType: !42, size: 64, offset: 2112)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !630, file: !631, line: 80, baseType: !545, size: 8, offset: 2176)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !630, file: !631, line: 88, baseType: !100, size: 128, offset: 2240)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !630, file: !631, line: 89, baseType: !461, size: 64, offset: 2368)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !630, file: !631, line: 90, baseType: !484, size: 320, offset: 2432)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !630, file: !631, line: 97, baseType: !678, size: 256, offset: 2752)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !679, line: 98, size: 256, elements: !680)
!679 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!680 = !{!681, !682, !683}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !678, file: !679, line: 99, baseType: !326, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !678, file: !679, line: 100, baseType: !100, size: 128, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !678, file: !679, line: 101, baseType: !684, size: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !679, line: 21, baseType: !685)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !688}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !630, file: !631, line: 99, baseType: !690, size: 768, offset: 3008)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !15, line: 199, size: 768, elements: !691)
!691 = !{!692, !697}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !690, file: !15, line: 200, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!25, !696}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !690, file: !15, line: 201, baseType: !698, size: 704, offset: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !15, line: 193, size: 704, elements: !699)
!699 = !{!700, !758}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !698, file: !15, line: 195, baseType: !701, size: 640)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !15, line: 173, size: 640, elements: !702)
!702 = !{!703, !715, !727, !728, !748, !749, !751, !757}
!703 = !DIDerivedType(tag: DW_TAG_member, scope: !701, file: !15, line: 174, baseType: !704, size: 192)
!704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !701, file: !15, line: 174, size: 192, elements: !705)
!705 = !{!706, !714}
!706 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !15, line: 175, baseType: !707, size: 192)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !704, file: !15, line: 175, size: 192, elements: !708)
!708 = !{!709, !710, !711, !712, !713}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !707, file: !15, line: 176, baseType: !36, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !707, file: !15, line: 177, baseType: !25, size: 32, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !707, file: !15, line: 178, baseType: !25, size: 32, offset: 96)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !707, file: !15, line: 179, baseType: !25, size: 32, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !707, file: !15, line: 180, baseType: !25, size: 32, offset: 160)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !704, file: !15, line: 182, baseType: !271, size: 128, align: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !701, file: !15, line: 184, baseType: !716, size: 64, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !718, line: 26, size: 256, elements: !719)
!718 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !717, file: !718, line: 27, baseType: !7, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !717, file: !718, line: 28, baseType: !722, size: 192, offset: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !723, line: 43, size: 192, elements: !724)
!723 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!724 = !{!725, !726}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !722, file: !723, line: 44, baseType: !340, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !722, file: !723, line: 45, baseType: !100, size: 128, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !701, file: !15, line: 185, baseType: !36, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !701, file: !15, line: 186, baseType: !729, size: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !15, line: 204, size: 960, elements: !731)
!731 = !{!732, !733, !737, !744}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !730, file: !15, line: 205, baseType: !690, size: 768)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !730, file: !15, line: 206, baseType: !734, size: 64, offset: 768)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!696, !729}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !730, file: !15, line: 207, baseType: !738, size: 64, offset: 832)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !741, !742, !743}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !730, file: !15, line: 209, baseType: !745, size: 64, offset: 896)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!25, !741, !36}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !701, file: !15, line: 187, baseType: !696, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !701, file: !15, line: 188, baseType: !750, size: 64, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !701, file: !15, line: 189, baseType: !752, size: 64, offset: 512)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !15, line: 157, size: 256, elements: !754)
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !753, file: !15, line: 158, baseType: !476, size: 192, align: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !753, file: !15, line: 159, baseType: !741, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !701, file: !15, line: 190, baseType: !389, size: 64, offset: 576)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !698, file: !15, line: 196, baseType: !759, size: 64, offset: 640)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !477, line: 12, size: 64, elements: !760)
!760 = !{!761}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !759, file: !477, line: 13, baseType: !481, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !630, file: !631, line: 100, baseType: !741, size: 64, offset: 3776)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !630, file: !631, line: 102, baseType: !764, size: 64, offset: 3840)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !631, line: 107, size: 1152, elements: !766)
!766 = !{!767, !768, !769, !770, !771, !775}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !765, file: !631, line: 108, baseType: !393, size: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !765, file: !631, line: 109, baseType: !629, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !765, file: !631, line: 110, baseType: !415, size: 32, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !765, file: !631, line: 111, baseType: !52, size: 32, offset: 224)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !765, file: !631, line: 112, baseType: !772, size: 640, offset: 256)
!772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 640, elements: !773)
!773 = !{!774}
!774 = !DISubrange(count: 10)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !765, file: !631, line: 113, baseType: !776, size: 256, offset: 896)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 256, elements: !398)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !630, file: !631, line: 103, baseType: !778, size: 640, offset: 3904)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !779, size: 640, elements: !773)
!779 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !630, file: !631, line: 104, baseType: !781, size: 256, offset: 4544)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !779, size: 256, elements: !398)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !427, file: !428, line: 139, baseType: !764, size: 64, offset: 1216)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !427, file: !428, line: 140, baseType: !784, size: 64, offset: 1280)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !428, line: 25, size: 64, elements: !786)
!786 = !{!787, !788, !789}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !785, file: !428, line: 26, baseType: !52, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !785, file: !428, line: 27, baseType: !25, size: 32, offset: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !785, file: !428, line: 28, baseType: !790, offset: 64)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, elements: !411)
!791 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !428, line: 142, baseType: !792, size: 128, offset: 1344)
!792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !428, line: 142, size: 128, elements: !793)
!793 = !{!794, !795}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !792, file: !428, line: 143, baseType: !25, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !792, file: !428, line: 144, baseType: !271, size: 128, align: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !309, file: !160, line: 1013, baseType: !797, size: 256, offset: 960)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !160, line: 970, size: 256, elements: !798)
!798 = !{!799, !800, !801, !802, !803, !804}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !797, file: !160, line: 971, baseType: !42, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !797, file: !160, line: 972, baseType: !7, size: 32, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !797, file: !160, line: 973, baseType: !7, size: 32, offset: 96)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !797, file: !160, line: 974, baseType: !7, size: 32, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !797, file: !160, line: 975, baseType: !7, size: 32, offset: 160)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !797, file: !160, line: 976, baseType: !44, size: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !309, file: !160, line: 1014, baseType: !806, size: 128, offset: 1216)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !807, line: 8, size: 128, elements: !808)
!807 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!808 = !{!809, !4929}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !806, file: !807, line: 9, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !812, line: 70, size: 256, elements: !813)
!812 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!813 = !{!814, !4926, !4927, !4928}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !811, file: !812, line: 71, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !817, line: 82, size: 1536, elements: !818)
!817 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!818 = !{!819, !820, !830, !838, !839, !854, !4893, !4895, !4908, !4909, !4910, !4911, !4912, !4918, !4919, !4920}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !816, file: !817, line: 84, baseType: !7, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !816, file: !817, line: 85, baseType: !821, size: 32, offset: 32)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !822, line: 275, baseType: !823)
!822 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !822, line: 275, size: 32, elements: !824)
!824 = !{!825}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !823, file: !822, line: 275, baseType: !826, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !822, line: 69, baseType: !827)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !822, line: 64, size: 32, elements: !828)
!828 = !{!829}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !827, file: !822, line: 65, baseType: !7, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !816, file: !817, line: 86, baseType: !831, size: 128, offset: 64)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !832, line: 38, size: 128, elements: !833)
!832 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!833 = !{!834, !836}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !831, file: !832, line: 39, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !831, file: !832, line: 39, baseType: !837, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !816, file: !817, line: 87, baseType: !815, size: 64, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !816, file: !817, line: 88, baseType: !840, size: 128, offset: 256)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !817, line: 49, size: 128, elements: !841)
!841 = !{!842, !851}
!842 = !DIDerivedType(tag: DW_TAG_member, scope: !840, file: !817, line: 50, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !840, file: !817, line: 50, size: 64, elements: !844)
!844 = !{!845, !850}
!845 = !DIDerivedType(tag: DW_TAG_member, scope: !843, file: !817, line: 51, baseType: !846, size: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !843, file: !817, line: 51, size: 64, elements: !847)
!847 = !{!848, !849}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !846, file: !817, line: 52, baseType: !509, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !846, file: !817, line: 52, baseType: !509, size: 32, offset: 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !843, file: !817, line: 54, baseType: !452, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !840, file: !817, line: 56, baseType: !852, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !816, file: !817, line: 89, baseType: !855, size: 64, offset: 384)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !160, line: 641, size: 4800, elements: !857)
!857 = !{!858, !859, !860, !861, !862, !863, !864, !867, !868, !1062, !4709, !4710, !4711, !4712, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4875, !4878, !4879, !4880, !4889, !4890, !4891, !4892}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !856, file: !160, line: 642, baseType: !27, size: 16)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !856, file: !160, line: 643, baseType: !29, size: 16, offset: 16)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !856, file: !160, line: 644, baseType: !415, size: 32, offset: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !856, file: !160, line: 645, baseType: !100, size: 128, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !856, file: !160, line: 646, baseType: !433, size: 32, offset: 192)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !856, file: !160, line: 647, baseType: !7, size: 32, offset: 224)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !856, file: !160, line: 650, baseType: !865, size: 64, offset: 256)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !160, line: 607, flags: DIFlagFwdDecl)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !856, file: !160, line: 651, baseType: !865, size: 64, offset: 320)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !856, file: !160, line: 654, baseType: !869, size: 64, offset: 384)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !871)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !160, line: 1966, size: 2048, align: 512, elements: !872)
!872 = !{!873, !877, !890, !896, !900, !904, !908, !912, !916, !920, !924, !925, !931, !935, !972, !1003, !1010, !1016, !1020, !1024, !1028, !1032, !1036, !1042, !1046}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !871, file: !160, line: 1967, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!815, !855, !815, !7}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !871, file: !160, line: 1968, baseType: !878, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!19, !815, !855, !881}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !883, line: 10, size: 128, elements: !884)
!883 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!884 = !{!885, !889}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !882, file: !883, line: 11, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !23}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !882, file: !883, line: 12, baseType: !23, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !871, file: !160, line: 1969, baseType: !891, size: 64, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!25, !894, !855, !25}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !448, line: 42, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !871, file: !160, line: 1970, baseType: !897, size: 64, offset: 192)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!865, !855, !25, !545}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !871, file: !160, line: 1972, baseType: !901, size: 64, offset: 256)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!25, !815, !556, !25}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !871, file: !160, line: 1974, baseType: !905, size: 64, offset: 320)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{!25, !894, !855, !815, !27, !545}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !871, file: !160, line: 1976, baseType: !909, size: 64, offset: 384)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{!25, !815, !855, !815}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !871, file: !160, line: 1977, baseType: !913, size: 64, offset: 448)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!25, !855, !815}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !871, file: !160, line: 1978, baseType: !917, size: 64, offset: 512)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!25, !894, !855, !815, !19}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !871, file: !160, line: 1980, baseType: !921, size: 64, offset: 576)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!25, !894, !855, !815, !27}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !871, file: !160, line: 1982, baseType: !913, size: 64, offset: 640)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !871, file: !160, line: 1983, baseType: !926, size: 64, offset: 704)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!25, !894, !855, !815, !27, !929}
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !28, line: 21, baseType: !930)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !28, line: 18, baseType: !509)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !871, file: !160, line: 1985, baseType: !932, size: 64, offset: 768)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!25, !894, !855, !815, !855, !815, !7}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !871, file: !160, line: 1987, baseType: !936, size: 64, offset: 832)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!25, !894, !815, !939}
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !160, line: 226, size: 640, elements: !941)
!941 = !{!942, !943, !944, !954, !963, !964, !969, !970, !971}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !940, file: !160, line: 227, baseType: !7, size: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !940, file: !160, line: 228, baseType: !27, size: 16, offset: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, scope: !940, file: !160, line: 241, baseType: !945, size: 32, offset: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !940, file: !160, line: 241, size: 32, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !945, file: !160, line: 242, baseType: !415, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !945, file: !160, line: 243, baseType: !949, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !950, line: 16, baseType: !951)
!950 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !950, line: 14, size: 32, elements: !952)
!952 = !{!953}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !951, file: !950, line: 15, baseType: !420, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !940, file: !160, line: 245, baseType: !955, size: 32, offset: 96)
!955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !940, file: !160, line: 245, size: 32, elements: !956)
!956 = !{!957, !958}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !955, file: !160, line: 246, baseType: !433, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !955, file: !160, line: 247, baseType: !959, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !950, line: 20, baseType: !960)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !950, line: 18, size: 32, elements: !961)
!961 = !{!962}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !960, file: !950, line: 19, baseType: !437, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !940, file: !160, line: 249, baseType: !44, size: 64, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !940, file: !160, line: 250, baseType: !965, size: 128, offset: 192)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !501, line: 13, size: 128, elements: !966)
!966 = !{!967, !968}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !965, file: !501, line: 14, baseType: !500, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !965, file: !501, line: 15, baseType: !779, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !940, file: !160, line: 251, baseType: !965, size: 128, offset: 320)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !940, file: !160, line: 252, baseType: !965, size: 128, offset: 448)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !940, file: !160, line: 259, baseType: !308, size: 64, offset: 576)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !871, file: !160, line: 1988, baseType: !973, size: 64, offset: 896)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!25, !894, !976, !978, !509, !7}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !806)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !980, line: 22, size: 1280, elements: !981)
!980 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!981 = !{!982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !979, file: !980, line: 23, baseType: !509, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !979, file: !980, line: 24, baseType: !27, size: 16, offset: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !979, file: !980, line: 25, baseType: !7, size: 32, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !979, file: !980, line: 26, baseType: !508, size: 32, offset: 96)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !979, file: !980, line: 27, baseType: !452, size: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !979, file: !980, line: 28, baseType: !452, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !979, file: !980, line: 41, baseType: !452, size: 64, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !979, file: !980, line: 42, baseType: !929, size: 32, offset: 320)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !979, file: !980, line: 43, baseType: !929, size: 32, offset: 352)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !979, file: !980, line: 44, baseType: !415, size: 32, offset: 384)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !979, file: !980, line: 45, baseType: !433, size: 32, offset: 416)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !979, file: !980, line: 46, baseType: !44, size: 64, offset: 448)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !979, file: !980, line: 47, baseType: !965, size: 128, offset: 512)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !979, file: !980, line: 48, baseType: !965, size: 128, offset: 640)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !979, file: !980, line: 49, baseType: !965, size: 128, offset: 768)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !979, file: !980, line: 50, baseType: !965, size: 128, offset: 896)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !979, file: !980, line: 51, baseType: !452, size: 64, offset: 1024)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !979, file: !980, line: 52, baseType: !452, size: 64, offset: 1088)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !979, file: !980, line: 53, baseType: !509, size: 32, offset: 1152)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !979, file: !980, line: 54, baseType: !509, size: 32, offset: 1184)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !979, file: !980, line: 55, baseType: !452, size: 64, offset: 1216)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !871, file: !160, line: 1990, baseType: !1004, size: 64, offset: 960)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!1007, !815, !556, !38}
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !28, line: 66, baseType: !1008)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !40, line: 73, baseType: !1009)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !40, line: 15, baseType: !779)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !871, file: !160, line: 1991, baseType: !1011, size: 64, offset: 1024)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!25, !855, !1014, !452, !452}
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !160, line: 55, flags: DIFlagFwdDecl)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !871, file: !160, line: 1993, baseType: !1017, size: 64, offset: 1088)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!25, !855, !25}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !871, file: !160, line: 1994, baseType: !1021, size: 64, offset: 1152)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!25, !855, !815, !308, !7, !27}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !871, file: !160, line: 1997, baseType: !1025, size: 64, offset: 1216)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!25, !894, !855, !308, !27}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !871, file: !160, line: 1999, baseType: !1029, size: 64, offset: 1280)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!865, !894, !815, !25}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !871, file: !160, line: 2001, baseType: !1033, size: 64, offset: 1344)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!25, !894, !815, !865, !25}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !871, file: !160, line: 2003, baseType: !1037, size: 64, offset: 1408)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!25, !894, !815, !1040}
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !160, line: 76, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !871, file: !160, line: 2005, baseType: !1043, size: 64, offset: 1472)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!25, !815, !1040}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !871, file: !160, line: 2006, baseType: !1047, size: 64, offset: 1536)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!1050, !855}
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !160, line: 3192, size: 192, elements: !1052)
!1052 = !{!1053, !1061}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1051, file: !160, line: 3193, baseType: !1054, size: 128)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1055, line: 296, size: 128, elements: !1056)
!1055 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1056 = !{!1057, !1058, !1060}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1054, file: !1055, line: 297, baseType: !62, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1054, file: !1055, line: 299, baseType: !1059, size: 32, offset: 32)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !28, line: 154, baseType: !7)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1054, file: !1055, line: 300, baseType: !23, size: 64, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1051, file: !160, line: 3194, baseType: !509, size: 32, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !856, file: !160, line: 655, baseType: !1063, size: 64, offset: 448)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !160, line: 1190, size: 10752, elements: !1065)
!1065 = !{!1066, !1067, !1068, !1069, !1070, !1071, !2262, !2394, !2434, !2517, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2534, !2538, !2539, !3000, !3003, !3062, !3065, !3066, !3067, !3108, !4585, !4586, !4587, !4588, !4589, !4590, !4593, !4594, !4601, !4602, !4603, !4604, !4663, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1064, file: !160, line: 1191, baseType: !100, size: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1064, file: !160, line: 1192, baseType: !929, size: 32, offset: 128)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1064, file: !160, line: 1193, baseType: !90, size: 8, offset: 160)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1064, file: !160, line: 1194, baseType: !42, size: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1064, file: !160, line: 1195, baseType: !44, size: 64, offset: 256)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1064, file: !160, line: 1196, baseType: !1072, size: 64, offset: 320)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !160, line: 2366, size: 576, elements: !1074)
!1074 = !{!1075, !1076, !1077, !1083, !1087, !1091, !1095, !2250, !2251, !2252, !2254, !2255, !2256, !2258, !2259, !2260, !2261}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1073, file: !160, line: 2367, baseType: !19, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1073, file: !160, line: 2368, baseType: !25, size: 32, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1073, file: !160, line: 2376, baseType: !1078, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!25, !1081}
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !812, line: 21, flags: DIFlagFwdDecl)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1073, file: !160, line: 2377, baseType: !1084, size: 64, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1086)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !160, line: 75, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1073, file: !160, line: 2378, baseType: !1088, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!815, !1072, !25, !19, !23}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1073, file: !160, line: 2380, baseType: !1092, size: 64, offset: 320)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{null, !1063}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1073, file: !160, line: 2381, baseType: !1096, size: 64, offset: 384)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !111, line: 402, size: 9216, align: 512, elements: !1098)
!1098 = !{!1099, !1100, !1101, !1105, !1905, !1931, !1932, !1933, !1934, !1938, !1941, !1942, !1943, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2011, !2015, !2035, !2055, !2056, !2057, !2058, !2067, !2090, !2091, !2094, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2108, !2109, !2208, !2216, !2217, !2218, !2220, !2224, !2225, !2229, !2230, !2231, !2232, !2234, !2235, !2236, !2243, !2244, !2245, !2249}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1097, file: !111, line: 403, baseType: !110, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1097, file: !111, line: 406, baseType: !100, size: 128, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1097, file: !111, line: 409, baseType: !1102, size: 448, offset: 192)
!1102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 448, elements: !1103)
!1103 = !{!1104}
!1104 = !DISubrange(count: 56)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1097, file: !111, line: 417, baseType: !1106, size: 768, offset: 640)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !111, line: 45, size: 768, elements: !1107)
!1107 = !{!1108, !1899, !1900, !1901, !1904}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1106, file: !111, line: 46, baseType: !1109, size: 512)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1110, line: 64, size: 512, elements: !1111)
!1110 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1111 = !{!1112, !1113, !1114, !1116, !1160, !1697, !1889, !1894, !1895, !1896, !1897, !1898}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1109, file: !1110, line: 65, baseType: !19, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1109, file: !1110, line: 66, baseType: !100, size: 128, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1109, file: !1110, line: 67, baseType: !1115, size: 64, offset: 192)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1109, file: !1110, line: 68, baseType: !1117, size: 64, offset: 256)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1110, line: 168, size: 768, elements: !1119)
!1119 = !{!1120, !1121, !1122, !1123}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1118, file: !1110, line: 169, baseType: !100, size: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1118, file: !1110, line: 170, baseType: !62, size: 32, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1118, file: !1110, line: 171, baseType: !1109, size: 512, offset: 192)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1118, file: !1110, line: 172, baseType: !1124, size: 64, offset: 704)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1126)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1110, line: 133, size: 192, elements: !1127)
!1127 = !{!1128, !1135, !1140}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1126, file: !1110, line: 134, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1130)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!25, !1133}
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1109)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1126, file: !1110, line: 135, baseType: !1136, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1137)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!19, !1133}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1126, file: !1110, line: 136, baseType: !1141, size: 64, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1142)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!25, !1133, !1145}
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1110, line: 125, size: 20736, elements: !1147)
!1147 = !{!1148, !1150, !1154, !1155, !1159}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1146, file: !1110, line: 126, baseType: !1149, size: 192)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 192, elements: !372)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1146, file: !1110, line: 127, baseType: !1151, size: 4096, offset: 192)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 4096, elements: !1152)
!1152 = !{!1153}
!1153 = !DISubrange(count: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1146, file: !1110, line: 128, baseType: !25, size: 32, offset: 4288)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1146, file: !1110, line: 129, baseType: !1156, size: 16384, offset: 4320)
!1156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 16384, elements: !1157)
!1157 = !{!1158}
!1158 = !DISubrange(count: 2048)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1146, file: !1110, line: 130, baseType: !25, size: 32, offset: 20704)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1109, file: !1110, line: 69, baseType: !1161, size: 64, offset: 320)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1163)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1110, line: 116, size: 384, elements: !1164)
!1164 = !{!1165, !1169, !1188, !1659, !1689, !1693}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1163, file: !1110, line: 117, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{null, !1115}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1163, file: !1110, line: 118, baseType: !1170, size: 64, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1172)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1173, line: 254, size: 128, elements: !1174)
!1173 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1174 = !{!1175, !1184}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1172, file: !1173, line: 255, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!1007, !1115, !1179, !556}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1173, line: 30, size: 128, elements: !1181)
!1181 = !{!1182, !1183}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1180, file: !1173, line: 31, baseType: !19, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1180, file: !1173, line: 32, baseType: !27, size: 16, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1172, file: !1173, line: 256, baseType: !1185, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!1007, !1115, !1179, !19, !38}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1163, file: !1110, line: 119, baseType: !1189, size: 64, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1192)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1173, line: 84, size: 320, elements: !1193)
!1193 = !{!1194, !1195, !1199, !1655, !1657}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1192, file: !1173, line: 85, baseType: !19, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1192, file: !1173, line: 86, baseType: !1196, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!27, !1115, !1179, !25}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1192, file: !1173, line: 88, baseType: !1200, size: 64, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!27, !1115, !1203, !25}
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1173, line: 175, size: 512, elements: !1205)
!1205 = !{!1206, !1207, !1208, !1209, !1646, !1650, !1651}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1204, file: !1173, line: 176, baseType: !1180, size: 128)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1204, file: !1173, line: 177, baseType: !38, size: 64, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1204, file: !1173, line: 178, baseType: !23, size: 64, offset: 192)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1204, file: !1173, line: 179, baseType: !1210, size: 64, offset: 256)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!1213}
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !160, line: 472, size: 1536, align: 64, elements: !1215)
!1215 = !{!1216, !1217, !1218, !1219, !1220, !1221, !1226, !1227, !1228, !1638, !1639, !1640, !1643, !1644, !1645}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1214, file: !160, line: 473, baseType: !855, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1214, file: !160, line: 474, baseType: !1054, size: 128, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1214, file: !160, line: 475, baseType: !484, size: 320, offset: 192)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1214, file: !160, line: 476, baseType: !1059, size: 32, offset: 512)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1214, file: !160, line: 477, baseType: !52, size: 32, offset: 544)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1214, file: !160, line: 482, baseType: !1222, size: 128, offset: 576)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !477, line: 26, size: 128, elements: !1223)
!1223 = !{!1224, !1225}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1222, file: !477, line: 27, baseType: !759, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1222, file: !477, line: 28, baseType: !481, size: 64, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1214, file: !160, line: 483, baseType: !42, size: 64, offset: 704)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1214, file: !160, line: 484, baseType: !42, size: 64, offset: 768)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1214, file: !160, line: 485, baseType: !1229, size: 64, offset: 832)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1231)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !160, line: 404, size: 1280, elements: !1232)
!1232 = !{!1233, !1436, !1506, !1510, !1514, !1531, !1537, !1541, !1546, !1550, !1554, !1558, !1602, !1606, !1610, !1614, !1619, !1623, !1630, !1634}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1231, file: !160, line: 405, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!25, !1237, !1416}
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !126, line: 74, size: 512, align: 128, elements: !1239)
!1239 = !{!1240, !1241, !1410, !1415}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1238, file: !126, line: 75, baseType: !42, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !126, line: 83, baseType: !1242, size: 320, offset: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1238, file: !126, line: 83, size: 320, elements: !1243)
!1243 = !{!1244, !1265, !1279, !1283, !1409}
!1244 = !DIDerivedType(tag: DW_TAG_member, scope: !1242, file: !126, line: 84, baseType: !1245, size: 320)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1242, file: !126, line: 84, size: 320, elements: !1246)
!1246 = !{!1247, !1258, !1259, !1264}
!1247 = !DIDerivedType(tag: DW_TAG_member, scope: !1245, file: !126, line: 90, baseType: !1248, size: 128)
!1248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1245, file: !126, line: 90, size: 128, elements: !1249)
!1249 = !{!1250, !1251, !1256, !1257}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1248, file: !126, line: 91, baseType: !100, size: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, scope: !1248, file: !126, line: 94, baseType: !1252, size: 128)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1248, file: !126, line: 94, size: 128, elements: !1253)
!1253 = !{!1254, !1255}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1252, file: !126, line: 96, baseType: !23, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1252, file: !126, line: 98, baseType: !7, size: 32, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1248, file: !126, line: 102, baseType: !100, size: 128)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1248, file: !126, line: 103, baseType: !100, size: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1245, file: !126, line: 106, baseType: !1213, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, scope: !1245, file: !126, line: 107, baseType: !1260, size: 64, offset: 192)
!1260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1245, file: !126, line: 107, size: 64, elements: !1261)
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1260, file: !126, line: 108, baseType: !42, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1260, file: !126, line: 109, baseType: !42, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1245, file: !126, line: 117, baseType: !42, size: 64, offset: 256)
!1265 = !DIDerivedType(tag: DW_TAG_member, scope: !1242, file: !126, line: 119, baseType: !1266, size: 320)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1242, file: !126, line: 119, size: 320, elements: !1267)
!1267 = !{!1268, !1269, !1272, !1273, !1274}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1266, file: !126, line: 124, baseType: !42, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1266, file: !126, line: 125, baseType: !1270, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !126, line: 125, flags: DIFlagFwdDecl)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1266, file: !126, line: 126, baseType: !42, size: 64, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1266, file: !126, line: 127, baseType: !42, size: 64, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, scope: !1266, file: !126, line: 128, baseType: !1275, size: 64, offset: 256)
!1275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1266, file: !126, line: 128, size: 64, elements: !1276)
!1276 = !{!1277, !1278}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1275, file: !126, line: 133, baseType: !42, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1275, file: !126, line: 138, baseType: !326, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, scope: !1242, file: !126, line: 141, baseType: !1280, size: 64)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1242, file: !126, line: 141, size: 64, elements: !1281)
!1281 = !{!1282}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1280, file: !126, line: 142, baseType: !42, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, scope: !1242, file: !126, line: 144, baseType: !1284, size: 128)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1242, file: !126, line: 144, size: 128, elements: !1285)
!1285 = !{!1286, !1408}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1284, file: !126, line: 146, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !118, line: 126, size: 1216, elements: !1289)
!1289 = !{!1290, !1300, !1321, !1322, !1323, !1324, !1325, !1390, !1391, !1392}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1288, file: !118, line: 127, baseType: !1291, size: 384)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !118, line: 21, size: 384, elements: !1292)
!1292 = !{!1293, !1294, !1296, !1297, !1298, !1299}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1291, file: !118, line: 22, baseType: !42, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1291, file: !118, line: 23, baseType: !1295, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1291, file: !118, line: 24, baseType: !1295, size: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1291, file: !118, line: 25, baseType: !42, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1291, file: !118, line: 26, baseType: !42, size: 64, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1291, file: !118, line: 27, baseType: !42, size: 64, offset: 320)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1288, file: !118, line: 128, baseType: !1301, size: 128, offset: 384)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1302, line: 105, size: 128, elements: !1303)
!1302 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1303 = !{!1304, !1305}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1301, file: !1302, line: 110, baseType: !42, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1301, file: !1302, line: 118, baseType: !1306, size: 64, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1302, line: 95, size: 448, elements: !1308)
!1308 = !{!1309, !1310, !1316, !1317, !1318, !1319, !1320}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1307, file: !1302, line: 96, baseType: !326, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1307, file: !1302, line: 97, baseType: !1311, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1302, line: 60, baseType: !1313)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{null, !1315}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1307, file: !1302, line: 98, baseType: !1311, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1307, file: !1302, line: 99, baseType: !545, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1307, file: !1302, line: 100, baseType: !545, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1307, file: !1302, line: 101, baseType: !271, size: 128, align: 64, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1307, file: !1302, line: 102, baseType: !1315, size: 64, offset: 384)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1288, file: !118, line: 129, baseType: !717, size: 256, offset: 512)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1288, file: !118, line: 130, baseType: !117, size: 32, offset: 768)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1288, file: !118, line: 131, baseType: !7, size: 32, offset: 800)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1288, file: !118, line: 132, baseType: !42, size: 64, offset: 832)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1288, file: !118, line: 133, baseType: !1326, size: 64, offset: 896)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1328)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !118, line: 77, size: 192, elements: !1329)
!1329 = !{!1330, !1334, !1386}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1328, file: !118, line: 83, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{null, !1237}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1328, file: !118, line: 89, baseType: !1335, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!1338, !1339}
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !126, line: 1184, baseType: !7)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1341, line: 512, size: 896, elements: !1342)
!1341 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1342 = !{!1343, !1351, !1352, !1360, !1368, !1378, !1379, !1380, !1382, !1384}
!1343 = !DIDerivedType(tag: DW_TAG_member, scope: !1340, file: !1341, line: 513, baseType: !1344, size: 320)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1340, file: !1341, line: 513, size: 320, elements: !1345)
!1345 = !{!1346, !1347, !1348, !1349, !1350}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1344, file: !1341, line: 514, baseType: !259, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1344, file: !1341, line: 515, baseType: !1059, size: 32, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1344, file: !1341, line: 516, baseType: !42, size: 64, offset: 128)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1344, file: !1341, line: 517, baseType: !42, size: 64, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1344, file: !1341, line: 518, baseType: !42, size: 64, offset: 256)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1340, file: !1341, line: 520, baseType: !125, size: 32, offset: 320)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1340, file: !1341, line: 522, baseType: !1353, size: 64, offset: 384)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1355, line: 22, baseType: !1356)
!1355 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1355, line: 22, size: 64, elements: !1357)
!1357 = !{!1358}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1356, file: !1355, line: 22, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1355, line: 15, baseType: !42)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1340, file: !1341, line: 524, baseType: !1361, size: 64, offset: 448)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1363, line: 372, baseType: !1364)
!1363 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1363, line: 372, size: 64, elements: !1365)
!1365 = !{!1366}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1364, file: !1363, line: 372, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1355, line: 16, baseType: !42)
!1368 = !DIDerivedType(tag: DW_TAG_member, scope: !1340, file: !1341, line: 527, baseType: !1369, size: 64, offset: 512)
!1369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1340, file: !1341, line: 527, size: 64, elements: !1370)
!1370 = !{!1371, !1377}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1369, file: !1341, line: 528, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1355, line: 21, baseType: !1373)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1355, line: 21, size: 64, elements: !1374)
!1374 = !{!1375}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1373, file: !1355, line: 21, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1355, line: 14, baseType: !42)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1369, file: !1341, line: 529, baseType: !1354, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1340, file: !1341, line: 534, baseType: !1237, size: 64, offset: 576)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1340, file: !1341, line: 535, baseType: !1237, size: 64, offset: 640)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1340, file: !1341, line: 541, baseType: !1381, size: 64, offset: 704)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1340, file: !1341, line: 545, baseType: !1383, size: 64, offset: 768)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1340, file: !1341, line: 549, baseType: !1385, size: 64, offset: 832)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1363, line: 520, baseType: !1237)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1328, file: !118, line: 100, baseType: !1387, size: 64, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!25, !1287, !42, !42, !25}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1288, file: !118, line: 134, baseType: !23, size: 64, offset: 960)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1288, file: !118, line: 135, baseType: !25, size: 32, offset: 1024)
!1392 = !DIDerivedType(tag: DW_TAG_member, scope: !1288, file: !118, line: 136, baseType: !1393, size: 128, offset: 1088)
!1393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1288, file: !118, line: 136, size: 128, elements: !1394)
!1394 = !{!1395, !1401}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1393, file: !118, line: 137, baseType: !1396, size: 128)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1397, line: 6, size: 128, elements: !1398)
!1397 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1398 = !{!1399, !1400}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1396, file: !1397, line: 7, baseType: !452, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1396, file: !1397, line: 8, baseType: !452, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, scope: !1393, file: !118, line: 138, baseType: !1402)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1393, file: !118, line: 138, elements: !1403)
!1403 = !{!1404, !1406}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1402, file: !118, line: 138, baseType: !1405)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1402, file: !118, line: 138, elements: !301)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1402, file: !118, line: 138, baseType: !1407)
!1407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1396, elements: !411)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1284, file: !126, line: 147, baseType: !23, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1242, file: !126, line: 161, baseType: !271, size: 128, align: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !126, line: 164, baseType: !1411, size: 32, offset: 384)
!1411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1238, file: !126, line: 164, size: 32, elements: !1412)
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1411, file: !126, line: 169, baseType: !52, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1411, file: !126, line: 177, baseType: !7, size: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1238, file: !126, line: 181, baseType: !52, size: 32, offset: 416)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !142, line: 42, size: 384, elements: !1418)
!1418 = !{!1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1417, file: !142, line: 43, baseType: !779, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1417, file: !142, line: 45, baseType: !779, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1417, file: !142, line: 52, baseType: !44, size: 64, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1417, file: !142, line: 53, baseType: !44, size: 64, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1417, file: !142, line: 55, baseType: !141, size: 32, offset: 256)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1417, file: !142, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1417, file: !142, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1417, file: !142, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1417, file: !142, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1417, file: !142, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1417, file: !142, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1417, file: !142, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1417, file: !142, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1417, file: !142, line: 78, baseType: !1433, size: 64, offset: 320)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !142, line: 78, flags: DIFlagFwdDecl)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1231, file: !160, line: 406, baseType: !1437, size: 64, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!25, !308, !1440}
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !126, line: 293, size: 1536, elements: !1442)
!1442 = !{!1443, !1473, !1487}
!1443 = !DIDerivedType(tag: DW_TAG_member, scope: !1441, file: !126, line: 295, baseType: !1444, size: 512)
!1444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1441, file: !126, line: 295, size: 512, elements: !1445)
!1445 = !{!1446, !1472}
!1446 = !DIDerivedType(tag: DW_TAG_member, scope: !1444, file: !126, line: 296, baseType: !1447, size: 448)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1444, file: !126, line: 296, size: 448, elements: !1448)
!1448 = !{!1449, !1450, !1459, !1460, !1461, !1470, !1471}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1447, file: !126, line: 298, baseType: !42, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, scope: !1447, file: !126, line: 299, baseType: !1451, size: 128, offset: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1447, file: !126, line: 299, size: 128, elements: !1452)
!1452 = !{!1453, !1454}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1451, file: !126, line: 300, baseType: !100, size: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, scope: !1451, file: !126, line: 302, baseType: !1455, size: 128)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1451, file: !126, line: 302, size: 128, elements: !1456)
!1456 = !{!1457, !1458}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1455, file: !126, line: 303, baseType: !23, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1455, file: !126, line: 305, baseType: !7, size: 32, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1447, file: !126, line: 310, baseType: !1213, size: 64, offset: 192)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1447, file: !126, line: 311, baseType: !42, size: 64, offset: 256)
!1461 = !DIDerivedType(tag: DW_TAG_member, scope: !1447, file: !126, line: 312, baseType: !1462, size: 64, offset: 320)
!1462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1447, file: !126, line: 312, size: 64, elements: !1463)
!1463 = !{!1464, !1465}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1462, file: !126, line: 313, baseType: !23, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1462, file: !126, line: 314, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !126, line: 257, baseType: !1467)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 255, size: 64, elements: !1468)
!1468 = !{!1469}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1467, file: !126, line: 256, baseType: !42, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1447, file: !126, line: 316, baseType: !52, size: 32, offset: 384)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1447, file: !126, line: 317, baseType: !52, size: 32, offset: 416)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1444, file: !126, line: 323, baseType: !1238, size: 512, align: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, scope: !1441, file: !126, line: 325, baseType: !1474, size: 512, offset: 512)
!1474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1441, file: !126, line: 325, size: 512, elements: !1475)
!1475 = !{!1476, !1486}
!1476 = !DIDerivedType(tag: DW_TAG_member, scope: !1474, file: !126, line: 326, baseType: !1477, size: 320)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1474, file: !126, line: 326, size: 320, elements: !1478)
!1478 = !{!1479, !1480, !1481, !1482, !1483, !1484, !1485}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1477, file: !126, line: 327, baseType: !42, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1477, file: !126, line: 328, baseType: !42, size: 64, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1477, file: !126, line: 329, baseType: !42, size: 64, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1477, file: !126, line: 331, baseType: !52, size: 32, offset: 192)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1477, file: !126, line: 332, baseType: !52, size: 32, offset: 224)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1477, file: !126, line: 333, baseType: !52, size: 32, offset: 256)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1477, file: !126, line: 335, baseType: !7, size: 32, offset: 288)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1474, file: !126, line: 339, baseType: !1238, size: 512, align: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, scope: !1441, file: !126, line: 341, baseType: !1488, size: 512, offset: 1024)
!1488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1441, file: !126, line: 341, size: 512, elements: !1489)
!1489 = !{!1490, !1499, !1505}
!1490 = !DIDerivedType(tag: DW_TAG_member, scope: !1488, file: !126, line: 342, baseType: !1491, size: 384)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1488, file: !126, line: 342, size: 384, elements: !1492)
!1492 = !{!1493, !1494, !1495, !1496, !1497, !1498}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1491, file: !126, line: 343, baseType: !42, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1491, file: !126, line: 344, baseType: !42, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1491, file: !126, line: 346, baseType: !23, size: 64, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1491, file: !126, line: 347, baseType: !23, size: 64, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1491, file: !126, line: 348, baseType: !23, size: 64, offset: 256)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1491, file: !126, line: 349, baseType: !23, size: 64, offset: 320)
!1499 = !DIDerivedType(tag: DW_TAG_member, scope: !1488, file: !126, line: 352, baseType: !1500, size: 256)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1488, file: !126, line: 352, size: 256, elements: !1501)
!1501 = !{!1502, !1503, !1504}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1500, file: !126, line: 353, baseType: !42, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1500, file: !126, line: 354, baseType: !42, size: 64, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1500, file: !126, line: 356, baseType: !100, size: 128, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1488, file: !126, line: 359, baseType: !1238, size: 512, align: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1231, file: !160, line: 409, baseType: !1507, size: 64, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!25, !1213, !1416}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1231, file: !160, line: 412, baseType: !1511, size: 64, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!545, !1213, !1440}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1231, file: !160, line: 414, baseType: !1515, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{null, !1518}
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1520, line: 1276, size: 448, elements: !1521)
!1520 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1521 = !{!1522, !1523, !1524, !1526, !1527, !1528, !1529, !1530}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1519, file: !1520, line: 1277, baseType: !308, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1519, file: !1520, line: 1278, baseType: !1213, size: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !1519, file: !1520, line: 1279, baseType: !1525, size: 64, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1519, file: !1520, line: 1281, baseType: !42, size: 64, offset: 192)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1519, file: !1520, line: 1282, baseType: !7, size: 32, offset: 256)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1519, file: !1520, line: 1283, baseType: !7, size: 32, offset: 288)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !1519, file: !1520, line: 1284, baseType: !545, size: 8, offset: 320)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !1519, file: !1520, line: 1285, baseType: !42, size: 64, offset: 384)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1231, file: !160, line: 416, baseType: !1532, size: 64, offset: 320)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!25, !308, !1213, !44, !7, !1535, !1536}
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1231, file: !160, line: 419, baseType: !1538, size: 64, offset: 384)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!25, !308, !1213, !44, !7, !7, !1237, !23}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1231, file: !160, line: 424, baseType: !1542, size: 64, offset: 448)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!1545, !1213, !1545}
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !28, line: 131, baseType: !452)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1231, file: !160, line: 425, baseType: !1547, size: 64, offset: 512)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{null, !1440, !38, !38}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1231, file: !160, line: 426, baseType: !1551, size: 64, offset: 576)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!545, !1440, !1059}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1231, file: !160, line: 427, baseType: !1555, size: 64, offset: 640)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{null, !1440}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1231, file: !160, line: 428, baseType: !1559, size: 64, offset: 704)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!1007, !1562, !1600}
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !160, line: 373, size: 384, elements: !1564)
!1564 = !{!1565, !1566, !1567, !1571, !1572, !1573, !1574}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1563, file: !160, line: 374, baseType: !308, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1563, file: !160, line: 375, baseType: !44, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1563, file: !160, line: 376, baseType: !1568, size: 64, offset: 128)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{null, !1562, !779}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1563, file: !160, line: 377, baseType: !23, size: 64, offset: 192)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1563, file: !160, line: 378, baseType: !25, size: 32, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1563, file: !160, line: 379, baseType: !96, size: 16, offset: 288)
!1574 = !DIDerivedType(tag: DW_TAG_member, scope: !1563, file: !160, line: 380, baseType: !1575, size: 64, offset: 320)
!1575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1563, file: !160, line: 380, size: 64, elements: !1576)
!1576 = !{!1577, !1596}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1575, file: !160, line: 386, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1520, line: 998, size: 448, elements: !1580)
!1580 = !{!1581, !1582, !1583}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1579, file: !1520, line: 999, baseType: !1440, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1579, file: !1520, line: 1000, baseType: !25, size: 32, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1579, file: !1520, line: 1001, baseType: !1584, size: 320, offset: 128)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !58, line: 14, baseType: !1585)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !58, line: 30, size: 320, elements: !1586)
!1586 = !{!1587, !1588, !1589, !1595}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1585, file: !58, line: 31, baseType: !7, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1585, file: !58, line: 32, baseType: !23, size: 64, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1585, file: !58, line: 33, baseType: !1590, size: 64, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !58, line: 16, baseType: !1591)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!25, !1594, !7, !25, !23}
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1585, file: !58, line: 34, baseType: !100, size: 128, offset: 192)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1575, file: !160, line: 395, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!1007, !23}
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !160, line: 69, flags: DIFlagFwdDecl)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1231, file: !160, line: 433, baseType: !1603, size: 64, offset: 768)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!25, !1213, !1440, !1440, !146}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1231, file: !160, line: 435, baseType: !1607, size: 64, offset: 832)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!25, !1440}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1231, file: !160, line: 436, baseType: !1611, size: 64, offset: 896)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!545, !1440, !38, !38}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1231, file: !160, line: 438, baseType: !1615, size: 64, offset: 960)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{null, !1440, !1618, !1618}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1231, file: !160, line: 439, baseType: !1620, size: 64, offset: 1024)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!25, !1213, !1237}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1231, file: !160, line: 442, baseType: !1624, size: 64, offset: 1088)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!25, !1627, !308, !1629}
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !160, line: 66, flags: DIFlagFwdDecl)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1231, file: !160, line: 444, baseType: !1631, size: 64, offset: 1152)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{null, !308}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1231, file: !160, line: 445, baseType: !1635, size: 64, offset: 1216)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!25, !1562, !1600}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1214, file: !160, line: 486, baseType: !42, size: 64, offset: 896)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1214, file: !160, line: 487, baseType: !484, size: 320, offset: 960)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1214, file: !160, line: 488, baseType: !1641, size: 32, offset: 1280)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1642, line: 8, baseType: !509)
!1642 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1214, file: !160, line: 489, baseType: !62, size: 32, offset: 1312)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1214, file: !160, line: 490, baseType: !100, size: 128, offset: 1344)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1214, file: !160, line: 491, baseType: !23, size: 64, offset: 1472)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1204, file: !1173, line: 180, baseType: !1647, size: 64, offset: 320)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!1007, !308, !1115, !1203, !556, !44, !38}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1204, file: !1173, line: 182, baseType: !1647, size: 64, offset: 384)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1204, file: !1173, line: 184, baseType: !1652, size: 64, offset: 448)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!25, !308, !1115, !1203, !259}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1192, file: !1173, line: 90, baseType: !1656, size: 64, offset: 192)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1192, file: !1173, line: 91, baseType: !1658, size: 64, offset: 256)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1163, file: !1110, line: 120, baseType: !1660, size: 64, offset: 192)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!1663, !1133}
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1665)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !154, line: 39, size: 384, elements: !1666)
!1666 = !{!1667, !1668, !1672, !1676, !1684, !1688}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1665, file: !154, line: 40, baseType: !153, size: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1665, file: !154, line: 41, baseType: !1669, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!545}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1665, file: !154, line: 42, baseType: !1673, size: 64, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!23}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1665, file: !154, line: 43, baseType: !1677, size: 64, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!1680, !1682}
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !154, line: 19, flags: DIFlagFwdDecl)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1665, file: !154, line: 44, baseType: !1685, size: 64, offset: 256)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!1680}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1665, file: !154, line: 45, baseType: !886, size: 64, offset: 320)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1163, file: !1110, line: 121, baseType: !1690, size: 64, offset: 256)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!1680, !1133}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1163, file: !1110, line: 122, baseType: !1694, size: 64, offset: 320)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{null, !1133, !742, !743}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1109, file: !1110, line: 70, baseType: !1698, size: 64, offset: 384)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1700, line: 190, size: 1152, elements: !1701)
!1700 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1701 = !{!1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1881, !1882, !1883, !1884, !1885, !1888}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1699, file: !1700, line: 191, baseType: !52, size: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1699, file: !1700, line: 192, baseType: !52, size: 32, offset: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1699, file: !1700, line: 202, baseType: !1698, size: 64, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1699, file: !1700, line: 203, baseType: !19, size: 64, offset: 128)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1699, file: !1700, line: 205, baseType: !476, size: 192, align: 64, offset: 192)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1699, file: !1700, line: 207, baseType: !1680, size: 64, offset: 384)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1699, file: !1700, line: 208, baseType: !7, size: 32, offset: 448)
!1709 = !DIDerivedType(tag: DW_TAG_member, scope: !1699, file: !1700, line: 209, baseType: !1710, size: 256, offset: 512)
!1710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1699, file: !1700, line: 209, size: 256, elements: !1711)
!1711 = !{!1712, !1721, !1725}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1710, file: !1700, line: 210, baseType: !1713, size: 256)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1700, line: 153, size: 256, elements: !1714)
!1714 = !{!1715, !1716, !1717, !1720}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1713, file: !1700, line: 154, baseType: !42, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1713, file: !1700, line: 156, baseType: !759, size: 64, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1713, file: !1700, line: 162, baseType: !1718, size: 64, offset: 128)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1700, line: 162, flags: DIFlagFwdDecl)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1713, file: !1700, line: 167, baseType: !42, size: 64, offset: 192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1710, file: !1700, line: 211, baseType: !1722, size: 64)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1700, line: 170, size: 64, elements: !1723)
!1723 = !{!1724}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1722, file: !1700, line: 171, baseType: !1698, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1710, file: !1700, line: 212, baseType: !1726, size: 256)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1700, line: 174, size: 256, elements: !1727)
!1727 = !{!1728, !1876, !1879, !1880}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1726, file: !1700, line: 175, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1731)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1700, line: 271, size: 768, elements: !1732)
!1732 = !{!1733, !1849, !1853, !1854, !1855, !1856, !1857, !1861, !1862, !1863, !1864, !1872}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1731, file: !1700, line: 276, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!25, !1737}
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1700, line: 251, size: 1216, elements: !1739)
!1739 = !{!1740, !1741, !1742, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1738, file: !1700, line: 253, baseType: !1698, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1738, file: !1700, line: 254, baseType: !308, size: 64, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1738, file: !1700, line: 255, baseType: !1743, size: 64, offset: 128)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1745, line: 17, size: 960, elements: !1746)
!1745 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1746 = !{!1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1776, !1777, !1780}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1744, file: !1745, line: 18, baseType: !556, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1744, file: !1745, line: 19, baseType: !38, size: 64, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1744, file: !1745, line: 20, baseType: !38, size: 64, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1744, file: !1745, line: 21, baseType: !38, size: 64, offset: 192)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1744, file: !1745, line: 22, baseType: !38, size: 64, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1744, file: !1745, line: 23, baseType: !44, size: 64, offset: 320)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1744, file: !1745, line: 24, baseType: !44, size: 64, offset: 384)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1744, file: !1745, line: 25, baseType: !335, size: 256, offset: 448)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1744, file: !1745, line: 26, baseType: !1756, size: 64, offset: 704)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1758)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1745, line: 32, size: 256, elements: !1759)
!1759 = !{!1760, !1764, !1768, !1772}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1758, file: !1745, line: 33, baseType: !1761, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!23, !1743, !43}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1758, file: !1745, line: 34, baseType: !1765, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{null, !1743, !23}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1758, file: !1745, line: 35, baseType: !1769, size: 64, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!23, !1743, !23, !43}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1758, file: !1745, line: 36, baseType: !1773, size: 64, offset: 192)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!25, !1743, !23}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1744, file: !1745, line: 27, baseType: !25, size: 32, offset: 768)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1744, file: !1745, line: 28, baseType: !1778, size: 64, offset: 832)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1744, file: !1745, line: 29, baseType: !23, size: 64, offset: 896)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1738, file: !1700, line: 256, baseType: !23, size: 64, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1738, file: !1700, line: 259, baseType: !335, size: 256, offset: 256)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1738, file: !1700, line: 260, baseType: !335, size: 256, offset: 512)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1738, file: !1700, line: 261, baseType: !25, size: 32, offset: 768)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1738, file: !1700, line: 262, baseType: !100, size: 128, offset: 832)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1738, file: !1700, line: 263, baseType: !556, size: 64, offset: 960)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1738, file: !1700, line: 265, baseType: !38, size: 64, offset: 1024)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1738, file: !1700, line: 266, baseType: !545, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1738, file: !1700, line: 267, baseType: !545, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1738, file: !1700, line: 268, baseType: !1791, size: 64, offset: 1152)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1793)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1341, line: 563, size: 1024, elements: !1794)
!1794 = !{!1795, !1799, !1800, !1804, !1808, !1812, !1813, !1817, !1821, !1825, !1826, !1827, !1831, !1835, !1841, !1845}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1793, file: !1341, line: 564, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{null, !259}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1793, file: !1341, line: 569, baseType: !1796, size: 64, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1793, file: !1341, line: 571, baseType: !1801, size: 64, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!25, !259, !42}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1793, file: !1341, line: 572, baseType: !1805, size: 64, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!25, !259}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1793, file: !1341, line: 578, baseType: !1809, size: 64, offset: 256)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!25, !259, !42, !42, !42}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1793, file: !1341, line: 580, baseType: !1335, size: 64, offset: 320)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1793, file: !1341, line: 581, baseType: !1814, size: 64, offset: 384)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!1338, !1339, !7}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1793, file: !1341, line: 582, baseType: !1818, size: 64, offset: 448)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!1338, !1339, !42, !42}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1793, file: !1341, line: 584, baseType: !1822, size: 64, offset: 512)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!42, !259}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1793, file: !1341, line: 588, baseType: !1335, size: 64, offset: 576)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1793, file: !1341, line: 591, baseType: !1335, size: 64, offset: 640)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1793, file: !1341, line: 597, baseType: !1828, size: 64, offset: 704)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!25, !259, !42, !23, !25, !25}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1793, file: !1341, line: 603, baseType: !1832, size: 64, offset: 768)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!19, !259}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1793, file: !1341, line: 613, baseType: !1836, size: 64, offset: 832)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!25, !259, !1839}
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !126, line: 717, flags: DIFlagFwdDecl)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1793, file: !1341, line: 625, baseType: !1842, size: 64, offset: 896)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!1839, !259, !42}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1793, file: !1341, line: 633, baseType: !1846, size: 64, offset: 960)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!1237, !259, !42}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1731, file: !1700, line: 277, baseType: !1850, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{null, !1737}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1731, file: !1700, line: 290, baseType: !1773, size: 64, offset: 128)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1731, file: !1700, line: 292, baseType: !1761, size: 64, offset: 192)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1731, file: !1700, line: 293, baseType: !1769, size: 64, offset: 256)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1731, file: !1700, line: 294, baseType: !1765, size: 64, offset: 320)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1731, file: !1700, line: 296, baseType: !1858, size: 64, offset: 384)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!1007, !1737, !556, !38, !44}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1731, file: !1700, line: 306, baseType: !38, size: 64, offset: 448)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1731, file: !1700, line: 313, baseType: !545, size: 8, offset: 512)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1731, file: !1700, line: 314, baseType: !1858, size: 64, offset: 576)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1731, file: !1700, line: 317, baseType: !1865, size: 64, offset: 640)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!1868, !1737, !1870}
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1869, line: 59, baseType: !7)
!1869 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !160, line: 61, flags: DIFlagFwdDecl)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1731, file: !1700, line: 320, baseType: !1873, size: 64, offset: 704)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!25, !1737, !259}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1726, file: !1700, line: 176, baseType: !1877, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1700, line: 35, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1726, file: !1700, line: 177, baseType: !44, size: 64, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1726, file: !1700, line: 178, baseType: !1698, size: 64, offset: 192)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1699, file: !1700, line: 215, baseType: !23, size: 64, offset: 768)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1699, file: !1700, line: 221, baseType: !452, size: 64, offset: 832)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1699, file: !1700, line: 223, baseType: !29, size: 16, offset: 896)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1699, file: !1700, line: 224, baseType: !27, size: 16, offset: 912)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1699, file: !1700, line: 225, baseType: !1886, size: 64, offset: 960)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1700, line: 36, flags: DIFlagFwdDecl)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1699, file: !1700, line: 227, baseType: !271, size: 128, align: 64, offset: 1024)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1109, file: !1110, line: 71, baseType: !1890, size: 32, offset: 448)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1891, line: 19, size: 32, elements: !1892)
!1891 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1892 = !{!1893}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1890, file: !1891, line: 20, baseType: !380, size: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1109, file: !1110, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1109, file: !1110, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1109, file: !1110, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1109, file: !1110, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1109, file: !1110, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1106, file: !111, line: 47, baseType: !1096, size: 64, offset: 512)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1106, file: !111, line: 48, baseType: !1115, size: 64, offset: 576)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1106, file: !111, line: 49, baseType: !1902, size: 64, offset: 640)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !111, line: 49, flags: DIFlagFwdDecl)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1106, file: !111, line: 50, baseType: !716, size: 64, offset: 704)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1097, file: !111, line: 418, baseType: !1906, size: 64, offset: 1408)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !111, line: 53, size: 448, elements: !1908)
!1908 = !{!1909, !1910, !1915, !1919, !1923, !1927}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1907, file: !111, line: 54, baseType: !1180, size: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1907, file: !111, line: 55, baseType: !1911, size: 64, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!1007, !1906, !1914, !556}
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1907, file: !111, line: 57, baseType: !1916, size: 64, offset: 192)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!1007, !1906, !1914, !19, !38}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1907, file: !111, line: 59, baseType: !1920, size: 64, offset: 256)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !1096, !19}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1907, file: !111, line: 60, baseType: !1924, size: 64, offset: 320)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!25, !1096}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1907, file: !111, line: 61, baseType: !1928, size: 64, offset: 384)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{null, !1096}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1097, file: !111, line: 419, baseType: !19, size: 64, offset: 1472)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1097, file: !111, line: 420, baseType: !19, size: 64, offset: 1536)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1097, file: !111, line: 421, baseType: !1115, size: 64, offset: 1600)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1097, file: !111, line: 424, baseType: !1935, size: 64, offset: 1664)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1937)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !111, line: 424, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1097, file: !111, line: 425, baseType: !1939, size: 64, offset: 1728)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !469)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1097, file: !111, line: 426, baseType: !7, size: 32, offset: 1792)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1097, file: !111, line: 435, baseType: !335, size: 256, offset: 1856)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1097, file: !111, line: 437, baseType: !1944, size: 64, offset: 2112)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1946, line: 69, size: 320, elements: !1947)
!1946 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1947 = !{!1948, !1949, !1950, !1967, !1969, !1973, !1974}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1945, file: !1946, line: 70, baseType: !19, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1945, file: !1946, line: 71, baseType: !1096, size: 64, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1945, file: !1946, line: 72, baseType: !1951, size: 64, offset: 128)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1953)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1946, line: 47, size: 256, elements: !1954)
!1954 = !{!1955, !1956, !1962, !1966}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1953, file: !1946, line: 49, baseType: !7, size: 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1953, file: !1946, line: 51, baseType: !1957, size: 64, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!25, !19, !1960}
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1945)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1953, file: !1946, line: 53, baseType: !1963, size: 64, offset: 128)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!25, !556, !1960}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1953, file: !1946, line: 55, baseType: !886, size: 64, offset: 192)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1945, file: !1946, line: 73, baseType: !1968, size: 16, offset: 192)
!1968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1945, file: !1946, line: 74, baseType: !1970, size: 8, offset: 208)
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !87, line: 16, baseType: !1971)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !89, line: 20, baseType: !1972)
!1972 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1945, file: !1946, line: 75, baseType: !86, size: 8, offset: 216)
!1974 = !DIDerivedType(tag: DW_TAG_member, scope: !1945, file: !1946, line: 76, baseType: !1975, size: 64, offset: 256)
!1975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1945, file: !1946, line: 76, size: 64, elements: !1976)
!1976 = !{!1977, !1978, !1985}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1975, file: !1946, line: 77, baseType: !23, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1975, file: !1946, line: 78, baseType: !1979, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1981)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1946, line: 86, size: 128, elements: !1982)
!1982 = !{!1983, !1984}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1981, file: !1946, line: 87, baseType: !7, size: 32)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1981, file: !1946, line: 88, baseType: !556, size: 64, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1975, file: !1946, line: 79, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1988)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1946, line: 92, size: 256, elements: !1989)
!1989 = !{!1990, !1991, !1992, !1994, !1995}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1988, file: !1946, line: 94, baseType: !7, size: 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1988, file: !1946, line: 95, baseType: !7, size: 32, offset: 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1988, file: !1946, line: 96, baseType: !1993, size: 64, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1988, file: !1946, line: 97, baseType: !1951, size: 64, offset: 128)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1988, file: !1946, line: 98, baseType: !23, size: 64, offset: 192)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1097, file: !111, line: 438, baseType: !7, size: 32, offset: 2176)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1097, file: !111, line: 441, baseType: !7, size: 32, offset: 2208)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1097, file: !111, line: 442, baseType: !1935, size: 64, offset: 2240)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1097, file: !111, line: 443, baseType: !1939, size: 64, offset: 2304)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1097, file: !111, line: 444, baseType: !545, size: 8, offset: 2368)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1097, file: !111, line: 451, baseType: !545, size: 8, offset: 2376)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1097, file: !111, line: 454, baseType: !7, size: 32, offset: 2400)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1097, file: !111, line: 455, baseType: !2004, size: 64, offset: 2432)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2006, line: 23, size: 96, elements: !2007)
!2006 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2007 = !{!2008, !2009, !2010}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2005, file: !2006, line: 24, baseType: !25, size: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2005, file: !2006, line: 24, baseType: !25, size: 32, offset: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2005, file: !2006, line: 24, baseType: !25, size: 32, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1097, file: !111, line: 458, baseType: !2012, size: 64, offset: 2496)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!25}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1097, file: !111, line: 460, baseType: !2016, size: 4032, align: 512, offset: 2560)
!2016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2017, size: 4032, elements: !2033)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !111, line: 362, size: 576, elements: !2018)
!2018 = !{!2019, !2020, !2021}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2017, file: !111, line: 363, baseType: !23, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2017, file: !111, line: 364, baseType: !7, size: 32, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2017, file: !111, line: 367, baseType: !2022, size: 448, offset: 128)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !111, line: 319, size: 448, elements: !2023)
!2023 = !{!2024, !2025}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2022, file: !111, line: 320, baseType: !1096, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2022, file: !111, line: 321, baseType: !2026, size: 384, offset: 64)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2027, line: 40, size: 384, elements: !2028)
!2027 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2028 = !{!2029}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2026, file: !2027, line: 41, baseType: !2030, size: 384, align: 64)
!2030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 384, align: 64, elements: !2031)
!2031 = !{!2032}
!2032 = !DISubrange(count: 2)
!2033 = !{!2034}
!2034 = !DISubrange(count: 7)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1097, file: !111, line: 463, baseType: !2036, size: 192, offset: 6592)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2037, line: 8, size: 192, elements: !2038)
!2037 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2038 = !{!2039, !2040, !2042}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2036, file: !2037, line: 10, baseType: !7, size: 32)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2036, file: !2037, line: 11, baseType: !2041, size: 64, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2036, file: !2037, line: 12, baseType: !2043, size: 64, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2045, line: 59, size: 48, elements: !2046)
!2045 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2046 = !{!2047, !2050, !2051, !2052, !2053, !2054}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2044, file: !2045, line: 60, baseType: !2048, size: 16)
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !87, line: 18, baseType: !2049)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !89, line: 23, baseType: !514)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2044, file: !2045, line: 61, baseType: !2048, size: 16, offset: 16)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2044, file: !2045, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2044, file: !2045, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2044, file: !2045, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2044, file: !2045, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1097, file: !111, line: 465, baseType: !42, size: 64, offset: 6784)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1097, file: !111, line: 469, baseType: !7, size: 32, offset: 6848)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1097, file: !111, line: 470, baseType: !100, size: 128, offset: 6912)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1097, file: !111, line: 471, baseType: !2059, size: 64, offset: 7040)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2061, line: 33, size: 96, elements: !2062)
!2061 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2062 = !{!2063, !2064, !2065, !2066}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2060, file: !2061, line: 37, baseType: !25, size: 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2060, file: !2061, line: 43, baseType: !25, size: 32, offset: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2060, file: !2061, line: 45, baseType: !29, size: 16, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2060, file: !2061, line: 47, baseType: !29, size: 16, offset: 80)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1097, file: !111, line: 476, baseType: !2068, size: 64, offset: 7104)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !111, line: 378, size: 256, elements: !2070)
!2070 = !{!2071, !2087, !2088, !2089}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2069, file: !111, line: 379, baseType: !2072, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2074, line: 204, baseType: !2075)
!2074 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2074, line: 197, size: 192, elements: !2076)
!2076 = !{!2077, !2079, !2080, !2081, !2083, !2085}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2075, file: !2074, line: 198, baseType: !2078, size: 32)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2074, line: 21, baseType: !510)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2075, file: !2074, line: 199, baseType: !90, size: 8, offset: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2075, file: !2074, line: 200, baseType: !90, size: 8, offset: 40)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2075, file: !2074, line: 201, baseType: !2082, size: 16, offset: 48)
!2082 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2074, line: 17, baseType: !97)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2075, file: !2074, line: 202, baseType: !2084, size: 64, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2074, line: 16, baseType: !453)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2075, file: !2074, line: 203, baseType: !2086, size: 64, offset: 128)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2074, line: 22, baseType: !453)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2069, file: !111, line: 380, baseType: !7, size: 32, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2069, file: !111, line: 381, baseType: !556, size: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2069, file: !111, line: 382, baseType: !556, size: 64, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1097, file: !111, line: 477, baseType: !2069, size: 256, offset: 7168)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1097, file: !111, line: 480, baseType: !2092, size: 64, offset: 7424)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !111, line: 480, flags: DIFlagFwdDecl)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1097, file: !111, line: 483, baseType: !2095, size: 64, offset: 7488)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !111, line: 483, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1097, file: !111, line: 488, baseType: !556, size: 64, offset: 7552)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1097, file: !111, line: 492, baseType: !23, size: 64, offset: 7616)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1097, file: !111, line: 493, baseType: !7, size: 32, offset: 7680)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1097, file: !111, line: 495, baseType: !23, size: 64, offset: 7744)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1097, file: !111, line: 496, baseType: !7, size: 32, offset: 7808)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1097, file: !111, line: 499, baseType: !7, size: 32, offset: 7840)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1097, file: !111, line: 500, baseType: !2104, size: 64, offset: 7872)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2106, line: 45, baseType: !2107)
!2106 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1097, file: !111, line: 503, baseType: !7, size: 32, offset: 7936)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1097, file: !111, line: 504, baseType: !2110, size: 64, offset: 8000)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2113, line: 96, size: 192, elements: !2114)
!2113 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2114 = !{!2115, !2116, !2169, !2172}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2112, file: !2113, line: 97, baseType: !7, size: 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2112, file: !2113, line: 98, baseType: !2117, size: 64, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2113, line: 24, size: 3072, elements: !2119)
!2119 = !{!2120, !2122, !2123, !2124, !2125, !2138, !2139, !2140, !2141, !2153, !2154, !2155, !2166, !2167, !2168}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2118, file: !2113, line: 26, baseType: !2121, size: 128)
!2121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 128, elements: !2031)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2118, file: !2113, line: 27, baseType: !2121, size: 128, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2118, file: !2113, line: 28, baseType: !25, size: 32, offset: 256)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2118, file: !2113, line: 31, baseType: !62, size: 32, align: 512, offset: 512)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2118, file: !2113, line: 32, baseType: !2126, size: 960, offset: 576)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2127, line: 206, size: 960, elements: !2128)
!2127 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2128 = !{!2129, !2130, !2133, !2135, !2136, !2137}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2126, file: !2127, line: 207, baseType: !274, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2126, file: !2127, line: 208, baseType: !2131, size: 256, offset: 64)
!2131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2132, size: 256, elements: !398)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2126, file: !2127, line: 209, baseType: !2134, size: 256, offset: 320)
!2134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 256, elements: !398)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2126, file: !2127, line: 213, baseType: !779, size: 64, offset: 576)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2126, file: !2127, line: 215, baseType: !781, size: 256, offset: 640)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2126, file: !2127, line: 216, baseType: !86, size: 8, offset: 896)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2118, file: !2113, line: 33, baseType: !42, size: 64, offset: 1536)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2118, file: !2113, line: 34, baseType: !42, size: 64, offset: 1600)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2118, file: !2113, line: 35, baseType: !545, size: 8, offset: 1664)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2118, file: !2113, line: 36, baseType: !2142, size: 320, offset: 1728)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2143, line: 11, size: 320, elements: !2144)
!2143 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2144 = !{!2145, !2146, !2147, !2152}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2142, file: !2143, line: 16, baseType: !393, size: 128)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2142, file: !2143, line: 17, baseType: !42, size: 64, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2142, file: !2143, line: 18, baseType: !2148, size: 64, offset: 192)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{null, !2151}
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2142, file: !2143, line: 19, baseType: !509, size: 32, offset: 256)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2118, file: !2113, line: 37, baseType: !678, size: 256, offset: 2048)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2118, file: !2113, line: 38, baseType: !271, size: 128, align: 64, offset: 2304)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2118, file: !2113, line: 39, baseType: !2156, size: 64, offset: 2432)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2113, line: 49, size: 768, elements: !2158)
!2158 = !{!2159, !2160, !2161, !2162, !2163, !2164, !2165}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2157, file: !2113, line: 50, baseType: !62, size: 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2157, file: !2113, line: 51, baseType: !2134, size: 256, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2157, file: !2113, line: 53, baseType: !2134, size: 256, offset: 320)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2157, file: !2113, line: 54, baseType: !42, size: 64, offset: 576)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2157, file: !2113, line: 55, baseType: !2156, size: 64, offset: 640)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2157, file: !2113, line: 56, baseType: !25, size: 32, offset: 704)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2157, file: !2113, line: 57, baseType: !25, size: 32, offset: 736)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2118, file: !2113, line: 40, baseType: !42, size: 64, offset: 2496)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2118, file: !2113, line: 42, baseType: !25, size: 32, offset: 2560)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2118, file: !2113, line: 43, baseType: !2111, size: 64, offset: 2624)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2112, file: !2113, line: 99, baseType: !2170, offset: 128)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2171, line: 211, elements: !301)
!2171 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2112, file: !2113, line: 100, baseType: !2173, size: 64, offset: 128)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2113, line: 63, size: 3008, elements: !2175)
!2175 = !{!2176, !2177, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2207}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2174, file: !2113, line: 64, baseType: !2156, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2174, file: !2113, line: 65, baseType: !2178, size: 192, offset: 64)
!2178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2156, size: 192, elements: !372)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2174, file: !2113, line: 67, baseType: !25, size: 32, offset: 256)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2174, file: !2113, line: 68, baseType: !335, size: 256, offset: 320)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2174, file: !2113, line: 69, baseType: !62, size: 32, offset: 576)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2174, file: !2113, line: 70, baseType: !335, size: 256, offset: 640)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2174, file: !2113, line: 71, baseType: !42, size: 64, offset: 896)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2174, file: !2113, line: 72, baseType: !42, size: 64, offset: 960)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2174, file: !2113, line: 73, baseType: !42, size: 64, offset: 1024)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2174, file: !2113, line: 74, baseType: !42, size: 64, offset: 1088)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2174, file: !2113, line: 75, baseType: !42, size: 64, offset: 1152)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2174, file: !2113, line: 76, baseType: !42, size: 64, offset: 1216)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2174, file: !2113, line: 77, baseType: !42, size: 64, offset: 1280)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2174, file: !2113, line: 78, baseType: !42, size: 64, offset: 1344)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2174, file: !2113, line: 79, baseType: !545, size: 8, offset: 1408)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2174, file: !2113, line: 80, baseType: !42, size: 64, offset: 1472)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2174, file: !2113, line: 81, baseType: !335, size: 256, offset: 1536)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2174, file: !2113, line: 82, baseType: !717, size: 256, offset: 1792)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2174, file: !2113, line: 84, baseType: !52, size: 32, offset: 2048)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2174, file: !2113, line: 87, baseType: !42, size: 64, offset: 2112)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2174, file: !2113, line: 88, baseType: !42, size: 64, offset: 2176)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2174, file: !2113, line: 89, baseType: !2199, size: 704, offset: 2240)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !679, line: 111, size: 704, elements: !2200)
!2200 = !{!2201, !2202, !2203, !2206}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2199, file: !679, line: 112, baseType: !678, size: 256)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2199, file: !679, line: 113, baseType: !2142, size: 320, offset: 256)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2199, file: !679, line: 116, baseType: !2204, size: 64, offset: 576)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !679, line: 18, flags: DIFlagFwdDecl)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2199, file: !679, line: 117, baseType: !25, size: 32, offset: 640)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2174, file: !2113, line: 90, baseType: !2111, size: 64, offset: 2944)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1097, file: !111, line: 515, baseType: !2209, size: 64, offset: 8064)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2211, line: 117, size: 128, elements: !2212)
!2211 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2212 = !{!2213, !2214, !2215}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2210, file: !2211, line: 118, baseType: !469, size: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2210, file: !2211, line: 119, baseType: !469, size: 32, offset: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2210, file: !2211, line: 120, baseType: !779, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1097, file: !111, line: 516, baseType: !7, size: 32, offset: 8128)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1097, file: !111, line: 519, baseType: !7, size: 32, offset: 8160)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1097, file: !111, line: 520, baseType: !2219, size: 64, offset: 8192)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1097, file: !111, line: 523, baseType: !2221, size: 64, offset: 8256)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !111, line: 523, flags: DIFlagFwdDecl)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1097, file: !111, line: 524, baseType: !7, size: 32, offset: 8320)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1097, file: !111, line: 525, baseType: !2226, size: 64, offset: 8384)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !111, line: 525, flags: DIFlagFwdDecl)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1097, file: !111, line: 526, baseType: !7, size: 32, offset: 8448)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1097, file: !111, line: 533, baseType: !23, size: 64, offset: 8512)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1097, file: !111, line: 534, baseType: !7, size: 32, offset: 8576)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1097, file: !111, line: 535, baseType: !2233, size: 64, offset: 8640)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1097, file: !111, line: 536, baseType: !7, size: 32, offset: 8704)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1097, file: !111, line: 539, baseType: !25, size: 32, offset: 8736)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1097, file: !111, line: 540, baseType: !2237, size: 64, offset: 8768)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2239, line: 32, size: 64, elements: !2240)
!2239 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2240 = !{!2241, !2242}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2238, file: !2239, line: 33, baseType: !469, size: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2238, file: !2239, line: 34, baseType: !469, size: 32, offset: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1097, file: !111, line: 563, baseType: !100, size: 128, offset: 8832)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1097, file: !111, line: 565, baseType: !100, size: 128, offset: 8960)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1097, file: !111, line: 568, baseType: !2246, size: 64, offset: 9088)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{null}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1097, file: !111, line: 570, baseType: !52, size: 32, offset: 9152)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1073, file: !160, line: 2382, baseType: !1072, size: 64, offset: 448)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1073, file: !160, line: 2383, baseType: !389, size: 64, offset: 512)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1073, file: !160, line: 2385, baseType: !2253, offset: 576)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2171, line: 206, elements: !301)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1073, file: !160, line: 2386, baseType: !2253, offset: 576)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1073, file: !160, line: 2387, baseType: !2253, offset: 576)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1073, file: !160, line: 2388, baseType: !2257, offset: 576)
!2257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2253, elements: !372)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1073, file: !160, line: 2390, baseType: !2253, offset: 576)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1073, file: !160, line: 2391, baseType: !2253, offset: 576)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1073, file: !160, line: 2392, baseType: !2253, offset: 576)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1073, file: !160, line: 2393, baseType: !2253, offset: 576)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1064, file: !160, line: 1197, baseType: !2263, size: 64, offset: 384)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2265)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !160, line: 2057, size: 1664, elements: !2266)
!2266 = !{!2267, !2271, !2275, !2276, !2280, !2284, !2288, !2289, !2290, !2294, !2298, !2302, !2303, !2304, !2310, !2314, !2315, !2319, !2320, !2321, !2322, !2326, !2330, !2377, !2392, !2393}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2265, file: !160, line: 2058, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!855, !1063}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2265, file: !160, line: 2059, baseType: !2272, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{null, !855}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2265, file: !160, line: 2060, baseType: !2272, size: 64, offset: 128)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2265, file: !160, line: 2062, baseType: !2277, size: 64, offset: 192)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{null, !855, !25}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2265, file: !160, line: 2063, baseType: !2281, size: 64, offset: 256)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!25, !855, !1416}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2265, file: !160, line: 2064, baseType: !2285, size: 64, offset: 320)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!25, !855}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2265, file: !160, line: 2065, baseType: !2272, size: 64, offset: 384)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2265, file: !160, line: 2066, baseType: !1092, size: 64, offset: 448)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2265, file: !160, line: 2067, baseType: !2291, size: 64, offset: 512)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!25, !1063, !25}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2265, file: !160, line: 2068, baseType: !2295, size: 64, offset: 576)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!25, !1063, !159}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2265, file: !160, line: 2069, baseType: !2299, size: 64, offset: 640)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!25, !1063}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2265, file: !160, line: 2070, baseType: !2295, size: 64, offset: 704)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2265, file: !160, line: 2071, baseType: !2299, size: 64, offset: 768)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2265, file: !160, line: 2072, baseType: !2305, size: 64, offset: 832)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!25, !815, !2308}
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !160, line: 62, flags: DIFlagFwdDecl)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2265, file: !160, line: 2073, baseType: !2311, size: 64, offset: 896)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!25, !1063, !2041, !556}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2265, file: !160, line: 2074, baseType: !1092, size: 64, offset: 960)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2265, file: !160, line: 2076, baseType: !2316, size: 64, offset: 1024)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!25, !1743, !815}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2265, file: !160, line: 2077, baseType: !2316, size: 64, offset: 1088)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2265, file: !160, line: 2078, baseType: !2316, size: 64, offset: 1152)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2265, file: !160, line: 2079, baseType: !2316, size: 64, offset: 1216)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2265, file: !160, line: 2081, baseType: !2323, size: 64, offset: 1280)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!1007, !1063, !25, !556, !38, !44}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2265, file: !160, line: 2082, baseType: !2327, size: 64, offset: 1344)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!1007, !1063, !25, !19, !38, !44}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2265, file: !160, line: 2083, baseType: !2331, size: 64, offset: 1408)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!2334, !855}
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !165, line: 296, size: 1664, elements: !2337)
!2337 = !{!2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2362, !2363, !2364}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2336, file: !165, line: 297, baseType: !393, size: 128)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2336, file: !165, line: 298, baseType: !100, size: 128, offset: 128)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2336, file: !165, line: 299, baseType: !100, size: 128, offset: 256)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2336, file: !165, line: 300, baseType: !100, size: 128, offset: 384)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2336, file: !165, line: 301, baseType: !335, size: 256, offset: 512)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2336, file: !165, line: 302, baseType: !62, size: 32, offset: 768)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2336, file: !165, line: 303, baseType: !52, size: 32, offset: 800)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2336, file: !165, line: 304, baseType: !1063, size: 64, offset: 832)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2336, file: !165, line: 305, baseType: !2347, size: 64, offset: 896)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !165, line: 68, size: 64, elements: !2348)
!2348 = !{!2349, !2361}
!2349 = !DIDerivedType(tag: DW_TAG_member, scope: !2347, file: !165, line: 69, baseType: !2350, size: 32)
!2350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2347, file: !165, line: 69, size: 32, elements: !2351)
!2351 = !{!2352, !2353, !2354}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2350, file: !165, line: 70, baseType: !415, size: 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2350, file: !165, line: 71, baseType: !433, size: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2350, file: !165, line: 72, baseType: !2355, size: 32)
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2356, line: 24, baseType: !2357)
!2356 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2356, line: 22, size: 32, elements: !2358)
!2358 = !{!2359}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2357, file: !2356, line: 23, baseType: !2360, size: 32)
!2360 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2356, line: 20, baseType: !421)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2347, file: !165, line: 74, baseType: !164, size: 32, offset: 32)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2336, file: !165, line: 306, baseType: !44, size: 64, offset: 960)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2336, file: !165, line: 307, baseType: !42, size: 64, offset: 1024)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2336, file: !165, line: 308, baseType: !2365, size: 576, offset: 1088)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !165, line: 205, size: 576, elements: !2366)
!2366 = !{!2367, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2365, file: !165, line: 206, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !165, line: 66, baseType: !46)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2365, file: !165, line: 207, baseType: !2368, size: 64, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2365, file: !165, line: 208, baseType: !2368, size: 64, offset: 128)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2365, file: !165, line: 209, baseType: !2368, size: 64, offset: 192)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2365, file: !165, line: 210, baseType: !2368, size: 64, offset: 256)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2365, file: !165, line: 211, baseType: !2368, size: 64, offset: 320)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2365, file: !165, line: 212, baseType: !2368, size: 64, offset: 384)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2365, file: !165, line: 213, baseType: !500, size: 64, offset: 448)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2365, file: !165, line: 214, baseType: !500, size: 64, offset: 512)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2265, file: !160, line: 2085, baseType: !2378, size: 64, offset: 1472)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!779, !1063, !2381}
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2383, line: 15, size: 256, elements: !2384)
!2383 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2384 = !{!2385, !2386, !2387, !2388, !2389}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2382, file: !2383, line: 16, baseType: !1059, size: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2382, file: !2383, line: 19, baseType: !25, size: 32, offset: 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2382, file: !2383, line: 26, baseType: !42, size: 64, offset: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2382, file: !2383, line: 33, baseType: !42, size: 64, offset: 128)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2382, file: !2383, line: 36, baseType: !2390, size: 64, offset: 192)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !126, line: 33, flags: DIFlagFwdDecl)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2265, file: !160, line: 2087, baseType: !2378, size: 64, offset: 1536)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2265, file: !160, line: 2089, baseType: !1092, size: 64, offset: 1600)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1064, file: !160, line: 1198, baseType: !2395, size: 64, offset: 448)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2397)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !165, line: 324, size: 704, elements: !2398)
!2398 = !{!2399, !2403, !2407, !2411, !2412, !2413, !2414, !2415, !2420, !2425, !2429}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2397, file: !165, line: 325, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!25, !2335}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2397, file: !165, line: 326, baseType: !2404, size: 64, offset: 64)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!2335, !1063, !25}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2397, file: !165, line: 327, baseType: !2408, size: 64, offset: 128)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{null, !2335}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2397, file: !165, line: 328, baseType: !2400, size: 64, offset: 192)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2397, file: !165, line: 329, baseType: !2400, size: 64, offset: 256)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2397, file: !165, line: 330, baseType: !2400, size: 64, offset: 320)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2397, file: !165, line: 331, baseType: !2291, size: 64, offset: 384)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2397, file: !165, line: 334, baseType: !2416, size: 64, offset: 448)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!2419, !855}
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2397, file: !165, line: 335, baseType: !2421, size: 64, offset: 512)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!25, !855, !2424}
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2397, file: !165, line: 337, baseType: !2426, size: 64, offset: 576)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!25, !855, !2419}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2397, file: !165, line: 339, baseType: !2430, size: 64, offset: 640)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!25, !1063, !2433}
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1064, file: !160, line: 1199, baseType: !2435, size: 64, offset: 512)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2437)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !165, line: 430, size: 704, elements: !2438)
!2438 = !{!2439, !2443, !2444, !2448, !2449, !2450, !2465, !2488, !2492, !2493, !2516}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2437, file: !165, line: 431, baseType: !2440, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!25, !1063, !25, !25, !976}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2437, file: !165, line: 432, baseType: !2291, size: 64, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2437, file: !165, line: 433, baseType: !2445, size: 64, offset: 128)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!25, !1063, !7}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2437, file: !165, line: 434, baseType: !2445, size: 64, offset: 192)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2437, file: !165, line: 435, baseType: !2291, size: 64, offset: 256)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2437, file: !165, line: 436, baseType: !2451, size: 64, offset: 320)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!25, !1063, !25, !2454}
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !165, line: 417, size: 256, elements: !2456)
!2456 = !{!2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2455, file: !165, line: 418, baseType: !25, size: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2455, file: !165, line: 419, baseType: !7, size: 32, offset: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2455, file: !165, line: 420, baseType: !7, size: 32, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2455, file: !165, line: 422, baseType: !7, size: 32, offset: 96)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2455, file: !165, line: 423, baseType: !7, size: 32, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2455, file: !165, line: 424, baseType: !7, size: 32, offset: 160)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2455, file: !165, line: 425, baseType: !7, size: 32, offset: 192)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2455, file: !165, line: 426, baseType: !7, size: 32, offset: 224)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2437, file: !165, line: 437, baseType: !2466, size: 64, offset: 384)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!25, !1063, !2347, !2469}
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !165, line: 345, size: 960, elements: !2471)
!2471 = !{!2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2470, file: !165, line: 346, baseType: !25, size: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2470, file: !165, line: 347, baseType: !452, size: 64, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2470, file: !165, line: 348, baseType: !452, size: 64, offset: 128)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2470, file: !165, line: 349, baseType: !452, size: 64, offset: 192)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2470, file: !165, line: 350, baseType: !452, size: 64, offset: 256)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2470, file: !165, line: 351, baseType: !452, size: 64, offset: 320)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2470, file: !165, line: 352, baseType: !452, size: 64, offset: 384)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2470, file: !165, line: 353, baseType: !332, size: 64, offset: 448)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2470, file: !165, line: 355, baseType: !332, size: 64, offset: 512)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2470, file: !165, line: 356, baseType: !25, size: 32, offset: 576)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2470, file: !165, line: 357, baseType: !25, size: 32, offset: 608)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2470, file: !165, line: 358, baseType: !452, size: 64, offset: 640)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2470, file: !165, line: 359, baseType: !452, size: 64, offset: 704)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2470, file: !165, line: 360, baseType: !452, size: 64, offset: 768)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2470, file: !165, line: 361, baseType: !332, size: 64, offset: 832)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2470, file: !165, line: 362, baseType: !25, size: 32, offset: 896)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2437, file: !165, line: 438, baseType: !2489, size: 64, offset: 448)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!25, !1063, !2433, !2469}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2437, file: !165, line: 440, baseType: !2466, size: 64, offset: 512)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2437, file: !165, line: 441, baseType: !2494, size: 64, offset: 576)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!25, !1063, !2497}
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !165, line: 411, size: 1408, elements: !2499)
!2499 = !{!2500, !2501}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2498, file: !165, line: 412, baseType: !7, size: 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2498, file: !165, line: 413, baseType: !2502, size: 1344, offset: 64)
!2502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2503, size: 1344, elements: !372)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !165, line: 397, size: 448, elements: !2504)
!2504 = !{!2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2515}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2503, file: !165, line: 398, baseType: !7, size: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2503, file: !165, line: 399, baseType: !7, size: 32, offset: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2503, file: !165, line: 401, baseType: !7, size: 32, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2503, file: !165, line: 402, baseType: !7, size: 32, offset: 96)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2503, file: !165, line: 403, baseType: !7, size: 32, offset: 128)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2503, file: !165, line: 404, baseType: !7, size: 32, offset: 160)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2503, file: !165, line: 405, baseType: !7, size: 32, offset: 192)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2503, file: !165, line: 406, baseType: !454, size: 64, offset: 256)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2503, file: !165, line: 407, baseType: !2514, size: 64, offset: 320)
!2514 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !28, line: 132, baseType: !452)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2503, file: !165, line: 408, baseType: !2514, size: 64, offset: 384)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2437, file: !165, line: 442, baseType: !2445, size: 64, offset: 640)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1064, file: !160, line: 1200, baseType: !2518, size: 64, offset: 576)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2520)
!2520 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !160, line: 54, flags: DIFlagFwdDecl)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1064, file: !160, line: 1201, baseType: !42, size: 64, offset: 640)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1064, file: !160, line: 1202, baseType: !42, size: 64, offset: 704)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1064, file: !160, line: 1203, baseType: !42, size: 64, offset: 768)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1064, file: !160, line: 1204, baseType: !815, size: 64, offset: 832)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1064, file: !160, line: 1205, baseType: !484, size: 320, offset: 896)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1064, file: !160, line: 1206, baseType: !25, size: 32, offset: 1216)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1064, file: !160, line: 1207, baseType: !52, size: 32, offset: 1248)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1064, file: !160, line: 1209, baseType: !23, size: 64, offset: 1280)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1064, file: !160, line: 1211, baseType: !2530, size: 64, offset: 1344)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2533)
!2533 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !160, line: 1211, flags: DIFlagFwdDecl)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1064, file: !160, line: 1223, baseType: !2535, size: 64, offset: 1408)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !832, line: 34, size: 64, elements: !2536)
!2536 = !{!2537}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2535, file: !832, line: 35, baseType: !835, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1064, file: !160, line: 1224, baseType: !100, size: 128, offset: 1472)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1064, file: !160, line: 1225, baseType: !2540, size: 64, offset: 1600)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2542, line: 40, size: 7424, elements: !2543)
!2542 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2543 = !{!2544, !2545, !2546, !2550, !2554, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2581, !2582}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2541, file: !2542, line: 41, baseType: !1545, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2541, file: !2542, line: 42, baseType: !1545, size: 64, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2541, file: !2542, line: 43, baseType: !2547, size: 64, offset: 128)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2549, line: 1453, flags: DIFlagFwdDecl)
!2549 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2541, file: !2542, line: 44, baseType: !2551, size: 64, offset: 192)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2553, line: 74, flags: DIFlagFwdDecl)
!2553 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2541, file: !2542, line: 45, baseType: !2555, size: 64, offset: 256)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2542, line: 45, flags: DIFlagFwdDecl)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2541, file: !2542, line: 46, baseType: !42, size: 64, offset: 320)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2541, file: !2542, line: 47, baseType: !545, size: 8, offset: 384)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2541, file: !2542, line: 48, baseType: !86, size: 8, offset: 392)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2541, file: !2542, line: 49, baseType: !545, size: 8, offset: 400)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2541, file: !2542, line: 50, baseType: !545, size: 8, offset: 408)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2541, file: !2542, line: 51, baseType: !929, size: 32, offset: 416)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2541, file: !2542, line: 52, baseType: !52, size: 32, offset: 448)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2541, file: !2542, line: 53, baseType: !62, size: 32, offset: 480)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2541, file: !2542, line: 54, baseType: !855, size: 64, offset: 512)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2541, file: !2542, line: 55, baseType: !23, size: 64, offset: 576)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2541, file: !2542, line: 56, baseType: !23, size: 64, offset: 640)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2541, file: !2542, line: 57, baseType: !2569, size: 64, offset: 704)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2571)
!2571 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2542, line: 57, flags: DIFlagFwdDecl)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2541, file: !2542, line: 58, baseType: !335, size: 256, offset: 768)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2541, file: !2542, line: 60, baseType: !25, size: 32, offset: 1024)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2541, file: !2542, line: 61, baseType: !25, size: 32, offset: 1056)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2541, file: !2542, line: 62, baseType: !1115, size: 64, offset: 1088)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2541, file: !2542, line: 65, baseType: !335, size: 256, offset: 1152)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2541, file: !2542, line: 66, baseType: !1063, size: 64, offset: 1408)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2541, file: !2542, line: 68, baseType: !2579, size: 64, offset: 1472)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2542, line: 68, flags: DIFlagFwdDecl)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2541, file: !2542, line: 72, baseType: !545, size: 8, offset: 1536)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2541, file: !2542, line: 77, baseType: !2583, size: 5824, offset: 1600)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !177, line: 705, size: 5824, elements: !2584)
!2584 = !{!2585, !2586, !2588, !2591, !2592, !2645, !2715, !2716, !2717, !2718, !2719, !2726, !2886, !2899, !2909, !2913, !2915, !2916, !2917, !2921, !2928, !2929, !2932, !2935, !2939, !2942, !2943, !2944, !2945, !2946, !2947, !2977, !2978, !2979, !2982, !2985, !2994, !2995, !2996, !2997, !2998, !2999}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2583, file: !177, line: 706, baseType: !1109, size: 512)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2583, file: !177, line: 707, baseType: !2587, size: 64, offset: 512)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2583, file: !177, line: 709, baseType: !2589, size: 64, offset: 576)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !177, line: 37, flags: DIFlagFwdDecl)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2583, file: !177, line: 711, baseType: !19, size: 64, offset: 640)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2583, file: !177, line: 712, baseType: !2593, size: 64, offset: 704)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2595)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !177, line: 89, size: 384, elements: !2596)
!2596 = !{!2597, !2598, !2599, !2605, !2610, !2614}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2595, file: !177, line: 90, baseType: !19, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2595, file: !177, line: 91, baseType: !1189, size: 64, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2595, file: !177, line: 92, baseType: !2600, size: 64, offset: 128)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!25, !2603, !1145}
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2583)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2595, file: !177, line: 93, baseType: !2606, size: 64, offset: 192)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!556, !2603, !2609, !742, !743}
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2595, file: !177, line: 95, baseType: !2611, size: 64, offset: 256)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{null, !2587}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2595, file: !177, line: 97, baseType: !2615, size: 64, offset: 320)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2617)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !189, line: 286, size: 1472, elements: !2618)
!2618 = !{!2619, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2617, file: !189, line: 287, baseType: !2620, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!25, !2587}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2617, file: !189, line: 288, baseType: !2611, size: 64, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2617, file: !189, line: 289, baseType: !2620, size: 64, offset: 128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2617, file: !189, line: 290, baseType: !2620, size: 64, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2617, file: !189, line: 291, baseType: !2620, size: 64, offset: 256)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2617, file: !189, line: 292, baseType: !2620, size: 64, offset: 320)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2617, file: !189, line: 293, baseType: !2620, size: 64, offset: 384)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2617, file: !189, line: 294, baseType: !2620, size: 64, offset: 448)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2617, file: !189, line: 295, baseType: !2620, size: 64, offset: 512)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2617, file: !189, line: 296, baseType: !2620, size: 64, offset: 576)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2617, file: !189, line: 297, baseType: !2620, size: 64, offset: 640)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2617, file: !189, line: 298, baseType: !2620, size: 64, offset: 704)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2617, file: !189, line: 299, baseType: !2620, size: 64, offset: 768)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2617, file: !189, line: 300, baseType: !2620, size: 64, offset: 832)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2617, file: !189, line: 301, baseType: !2620, size: 64, offset: 896)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2617, file: !189, line: 302, baseType: !2620, size: 64, offset: 960)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2617, file: !189, line: 303, baseType: !2620, size: 64, offset: 1024)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2617, file: !189, line: 304, baseType: !2620, size: 64, offset: 1088)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2617, file: !189, line: 305, baseType: !2620, size: 64, offset: 1152)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2617, file: !189, line: 306, baseType: !2620, size: 64, offset: 1216)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2617, file: !189, line: 307, baseType: !2620, size: 64, offset: 1280)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2617, file: !189, line: 308, baseType: !2620, size: 64, offset: 1344)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2617, file: !189, line: 309, baseType: !2620, size: 64, offset: 1408)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2583, file: !177, line: 714, baseType: !2646, size: 64, offset: 768)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2648)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2649, line: 80, size: 1344, elements: !2650)
!2649 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2650 = !{!2651, !2652, !2653, !2654, !2655, !2656, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2714}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2648, file: !2649, line: 81, baseType: !19, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2648, file: !2649, line: 82, baseType: !19, size: 64, offset: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2648, file: !2649, line: 83, baseType: !1189, size: 64, offset: 128)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2648, file: !2649, line: 84, baseType: !1189, size: 64, offset: 192)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2648, file: !2649, line: 85, baseType: !1189, size: 64, offset: 256)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2648, file: !2649, line: 87, baseType: !2657, size: 64, offset: 320)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!25, !2587, !2660}
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !171, line: 96, size: 1152, elements: !2662)
!2662 = !{!2663, !2664, !2665, !2666, !2667, !2668, !2669, !2673, !2677, !2678, !2679, !2680, !2681, !2689, !2690, !2691, !2692, !2693, !2694}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2661, file: !171, line: 97, baseType: !19, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2661, file: !171, line: 98, baseType: !2646, size: 64, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2661, file: !171, line: 100, baseType: !1096, size: 64, offset: 128)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2661, file: !171, line: 101, baseType: !19, size: 64, offset: 192)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2661, file: !171, line: 103, baseType: !545, size: 8, offset: 256)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2661, file: !171, line: 104, baseType: !170, size: 32, offset: 288)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2661, file: !171, line: 106, baseType: !2670, size: 64, offset: 320)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2672)
!2672 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !171, line: 106, flags: DIFlagFwdDecl)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2661, file: !171, line: 107, baseType: !2674, size: 64, offset: 384)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2676)
!2676 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !171, line: 107, flags: DIFlagFwdDecl)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2661, file: !171, line: 109, baseType: !2620, size: 64, offset: 448)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2661, file: !171, line: 110, baseType: !2611, size: 64, offset: 512)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2661, file: !171, line: 111, baseType: !2620, size: 64, offset: 576)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2661, file: !171, line: 112, baseType: !2611, size: 64, offset: 640)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2661, file: !171, line: 113, baseType: !2682, size: 64, offset: 704)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!25, !2587, !2685}
!2685 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !189, line: 60, baseType: !2686)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !189, line: 58, size: 32, elements: !2687)
!2687 = !{!2688}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2686, file: !189, line: 59, baseType: !25, size: 32)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2661, file: !171, line: 114, baseType: !2620, size: 64, offset: 768)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2661, file: !171, line: 115, baseType: !1189, size: 64, offset: 832)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2661, file: !171, line: 116, baseType: !1189, size: 64, offset: 896)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2661, file: !171, line: 118, baseType: !2615, size: 64, offset: 960)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2661, file: !171, line: 119, baseType: !2611, size: 64, offset: 1024)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2661, file: !171, line: 121, baseType: !2695, size: 64, offset: 1088)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !171, line: 121, flags: DIFlagFwdDecl)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2648, file: !2649, line: 88, baseType: !2600, size: 64, offset: 384)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2648, file: !2649, line: 89, baseType: !2620, size: 64, offset: 448)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2648, file: !2649, line: 90, baseType: !2611, size: 64, offset: 512)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2648, file: !2649, line: 91, baseType: !2611, size: 64, offset: 576)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2648, file: !2649, line: 92, baseType: !2611, size: 64, offset: 640)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2648, file: !2649, line: 94, baseType: !2620, size: 64, offset: 704)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2648, file: !2649, line: 95, baseType: !2620, size: 64, offset: 768)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2648, file: !2649, line: 97, baseType: !2682, size: 64, offset: 832)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2648, file: !2649, line: 98, baseType: !2620, size: 64, offset: 896)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2648, file: !2649, line: 100, baseType: !2620, size: 64, offset: 960)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2648, file: !2649, line: 102, baseType: !2620, size: 64, offset: 1024)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2648, file: !2649, line: 103, baseType: !2611, size: 64, offset: 1088)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2648, file: !2649, line: 105, baseType: !2615, size: 64, offset: 1152)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2648, file: !2649, line: 107, baseType: !2711, size: 64, offset: 1216)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2713)
!2713 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2649, line: 107, flags: DIFlagFwdDecl)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2648, file: !2649, line: 109, baseType: !545, size: 8, offset: 1280)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2583, file: !177, line: 715, baseType: !2660, size: 64, offset: 832)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2583, file: !177, line: 717, baseType: !23, size: 64, offset: 896)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2583, file: !177, line: 719, baseType: !23, size: 64, offset: 960)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2583, file: !177, line: 721, baseType: !335, size: 256, offset: 1024)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2583, file: !177, line: 725, baseType: !2720, size: 448, offset: 1280)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !177, line: 517, size: 448, elements: !2721)
!2721 = !{!2722, !2723, !2724, !2725}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2720, file: !177, line: 518, baseType: !100, size: 128)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2720, file: !177, line: 519, baseType: !100, size: 128, offset: 128)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2720, file: !177, line: 520, baseType: !100, size: 128, offset: 256)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2720, file: !177, line: 521, baseType: !176, size: 32, offset: 384)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2583, file: !177, line: 726, baseType: !2727, size: 2496, offset: 1728)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !189, line: 663, size: 2496, elements: !2728)
!2728 = !{!2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2773, !2774, !2775, !2776, !2777, !2778, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2879, !2883}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2727, file: !189, line: 664, baseType: !2685, size: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2727, file: !189, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2727, file: !189, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2727, file: !189, line: 667, baseType: !545, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2727, file: !189, line: 668, baseType: !545, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2727, file: !189, line: 669, baseType: !545, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2727, file: !189, line: 670, baseType: !545, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2727, file: !189, line: 671, baseType: !545, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2727, file: !189, line: 672, baseType: !545, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2727, file: !189, line: 673, baseType: !545, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2727, file: !189, line: 674, baseType: !545, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2727, file: !189, line: 675, baseType: !509, size: 32, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2727, file: !189, line: 676, baseType: !62, size: 32, offset: 96)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2727, file: !189, line: 678, baseType: !100, size: 128, offset: 128)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2727, file: !189, line: 679, baseType: !717, size: 256, offset: 256)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2727, file: !189, line: 680, baseType: !2745, size: 64, offset: 512)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2747, line: 43, size: 1536, elements: !2748)
!2747 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2748 = !{!2749, !2750, !2751, !2752, !2753, !2756, !2757, !2758, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2746, file: !2747, line: 44, baseType: !19, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2746, file: !2747, line: 45, baseType: !25, size: 32, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2746, file: !2747, line: 46, baseType: !100, size: 128, offset: 128)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2746, file: !2747, line: 47, baseType: !62, size: 32, offset: 256)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2746, file: !2747, line: 48, baseType: !2754, size: 64, offset: 320)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !189, line: 629, flags: DIFlagFwdDecl)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2746, file: !2747, line: 49, baseType: !2142, size: 320, offset: 384)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2746, file: !2747, line: 50, baseType: !42, size: 64, offset: 704)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2746, file: !2747, line: 51, baseType: !2759, size: 64, offset: 768)
!2759 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2760, line: 29, baseType: !332)
!2760 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2746, file: !2747, line: 52, baseType: !2759, size: 64, offset: 832)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2746, file: !2747, line: 53, baseType: !2759, size: 64, offset: 896)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2746, file: !2747, line: 54, baseType: !2759, size: 64, offset: 960)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2746, file: !2747, line: 55, baseType: !2759, size: 64, offset: 1024)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2746, file: !2747, line: 56, baseType: !42, size: 64, offset: 1088)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2746, file: !2747, line: 57, baseType: !42, size: 64, offset: 1152)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2746, file: !2747, line: 58, baseType: !42, size: 64, offset: 1216)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2746, file: !2747, line: 59, baseType: !42, size: 64, offset: 1280)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2746, file: !2747, line: 60, baseType: !42, size: 64, offset: 1344)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2746, file: !2747, line: 61, baseType: !2587, size: 64, offset: 1408)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2746, file: !2747, line: 62, baseType: !545, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2746, file: !2747, line: 63, baseType: !545, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2727, file: !189, line: 681, baseType: !545, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2727, file: !189, line: 682, baseType: !545, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2727, file: !189, line: 683, baseType: !545, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2727, file: !189, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2727, file: !189, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2727, file: !189, line: 690, baseType: !2779, size: 512, offset: 640)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !184, line: 118, size: 512, elements: !2780)
!2780 = !{!2781, !2787, !2788, !2793, !2841, !2842, !2843, !2844}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2779, file: !184, line: 119, baseType: !2782, size: 256)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2783, line: 9, size: 256, elements: !2784)
!2783 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2784 = !{!2785, !2786}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2782, file: !2783, line: 10, baseType: !476, size: 192, align: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2782, file: !2783, line: 11, baseType: !2759, size: 64, offset: 192)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2779, file: !184, line: 120, baseType: !2759, size: 64, offset: 256)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2779, file: !184, line: 121, baseType: !2789, size: 64, offset: 320)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!183, !2792}
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2779, file: !184, line: 122, baseType: !2794, size: 64, offset: 384)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !184, line: 159, size: 512, align: 512, elements: !2796)
!2796 = !{!2797, !2822, !2823, !2826, !2831, !2832, !2836, !2840}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2795, file: !184, line: 160, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !184, line: 215, size: 4608, align: 512, elements: !2800)
!2800 = !{!2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2799, file: !184, line: 216, baseType: !340, size: 32)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2799, file: !184, line: 217, baseType: !7, size: 32, offset: 32)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2799, file: !184, line: 218, baseType: !7, size: 32, offset: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2799, file: !184, line: 219, baseType: !7, size: 32, offset: 96)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2799, file: !184, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2799, file: !184, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2799, file: !184, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2799, file: !184, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2799, file: !184, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2799, file: !184, line: 226, baseType: !7, size: 32, offset: 160)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2799, file: !184, line: 227, baseType: !29, size: 16, offset: 192)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2799, file: !184, line: 228, baseType: !29, size: 16, offset: 208)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2799, file: !184, line: 229, baseType: !7, size: 32, offset: 224)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2799, file: !184, line: 235, baseType: !2759, size: 64, offset: 256)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2799, file: !184, line: 236, baseType: !2792, size: 64, offset: 320)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2799, file: !184, line: 237, baseType: !2759, size: 64, offset: 384)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2799, file: !184, line: 238, baseType: !2792, size: 64, offset: 448)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2799, file: !184, line: 239, baseType: !2819, size: 4096, align: 512, offset: 512)
!2819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2795, size: 4096, align: 512, elements: !2820)
!2820 = !{!2821}
!2821 = !DISubrange(count: 8)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2795, file: !184, line: 161, baseType: !7, size: 32, offset: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2795, file: !184, line: 162, baseType: !2824, size: 32, offset: 96)
!2824 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !28, line: 32, baseType: !2825)
!2825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !40, line: 96, baseType: !25)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2795, file: !184, line: 163, baseType: !2827, size: 32, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !822, line: 274, baseType: !2828)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !822, line: 274, size: 32, elements: !2829)
!2829 = !{!2830}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2828, file: !822, line: 274, baseType: !826, size: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2795, file: !184, line: 164, baseType: !2792, size: 64, offset: 192)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2795, file: !184, line: 165, baseType: !2833, size: 128, offset: 256)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2783, line: 14, size: 128, elements: !2834)
!2834 = !{!2835}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2833, file: !2783, line: 15, baseType: !1222, size: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2795, file: !184, line: 166, baseType: !2837, size: 64, offset: 384)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!2759}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2795, file: !184, line: 167, baseType: !2759, size: 64, offset: 448)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2779, file: !184, line: 123, baseType: !86, size: 8, offset: 448)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2779, file: !184, line: 124, baseType: !86, size: 8, offset: 456)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2779, file: !184, line: 125, baseType: !86, size: 8, offset: 464)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2779, file: !184, line: 126, baseType: !86, size: 8, offset: 472)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2727, file: !189, line: 691, baseType: !452, size: 64, offset: 1152)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2727, file: !189, line: 692, baseType: !678, size: 256, offset: 1216)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2727, file: !189, line: 693, baseType: !57, size: 192, offset: 1472)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2727, file: !189, line: 694, baseType: !2754, size: 64, offset: 1664)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2727, file: !189, line: 695, baseType: !52, size: 32, offset: 1728)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2727, file: !189, line: 696, baseType: !52, size: 32, offset: 1760)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2727, file: !189, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2727, file: !189, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2727, file: !189, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2727, file: !189, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2727, file: !189, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2727, file: !189, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2727, file: !189, line: 703, baseType: !545, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2727, file: !189, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2727, file: !189, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2727, file: !189, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2727, file: !189, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2727, file: !189, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2727, file: !189, line: 709, baseType: !7, size: 32, offset: 1824)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2727, file: !189, line: 710, baseType: !188, size: 32, offset: 1856)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2727, file: !189, line: 711, baseType: !196, size: 32, offset: 1888)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2727, file: !189, line: 712, baseType: !196, size: 32, offset: 1920)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2727, file: !189, line: 713, baseType: !25, size: 32, offset: 1952)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2727, file: !189, line: 714, baseType: !25, size: 32, offset: 1984)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2727, file: !189, line: 715, baseType: !452, size: 64, offset: 2048)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2727, file: !189, line: 716, baseType: !452, size: 64, offset: 2112)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2727, file: !189, line: 717, baseType: !452, size: 64, offset: 2176)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2727, file: !189, line: 718, baseType: !452, size: 64, offset: 2240)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2727, file: !189, line: 720, baseType: !2874, size: 64, offset: 2304)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !189, line: 632, size: 64, elements: !2876)
!2876 = !{!2877, !2878}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2875, file: !189, line: 633, baseType: !62, size: 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2875, file: !189, line: 634, baseType: !7, size: 32, offset: 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2727, file: !189, line: 721, baseType: !2880, size: 64, offset: 2368)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{null, !2587, !469}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2727, file: !189, line: 722, baseType: !2884, size: 64, offset: 2432)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !189, line: 722, flags: DIFlagFwdDecl)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2583, file: !177, line: 727, baseType: !2887, size: 64, offset: 4224)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !189, line: 742, size: 1792, elements: !2889)
!2889 = !{!2890, !2891, !2892, !2896, !2897, !2898}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2888, file: !189, line: 743, baseType: !2617, size: 1472)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2888, file: !189, line: 744, baseType: !2620, size: 64, offset: 1472)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2888, file: !189, line: 745, baseType: !2893, size: 64, offset: 1536)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{null, !2587, !545}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2888, file: !189, line: 746, baseType: !2620, size: 64, offset: 1600)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2888, file: !189, line: 747, baseType: !2611, size: 64, offset: 1664)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2888, file: !189, line: 748, baseType: !2611, size: 64, offset: 1728)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2583, file: !177, line: 736, baseType: !2900, size: 128, offset: 4288)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !177, line: 529, size: 128, elements: !2901)
!2901 = !{!2902, !2906}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2900, file: !177, line: 531, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2905, line: 13, flags: DIFlagFwdDecl)
!2905 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2900, file: !177, line: 532, baseType: !2907, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !177, line: 49, flags: DIFlagFwdDecl)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2583, file: !177, line: 738, baseType: !2910, size: 64, offset: 4416)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2912)
!2912 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !177, line: 738, flags: DIFlagFwdDecl)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2583, file: !177, line: 740, baseType: !2914, size: 64, offset: 4480)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2583, file: !177, line: 741, baseType: !452, size: 64, offset: 4544)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2583, file: !177, line: 746, baseType: !452, size: 64, offset: 4608)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2583, file: !177, line: 747, baseType: !2918, size: 64, offset: 4672)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2920)
!2920 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !177, line: 747, flags: DIFlagFwdDecl)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2583, file: !177, line: 749, baseType: !2922, size: 64, offset: 4736)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !177, line: 428, size: 128, elements: !2924)
!2924 = !{!2925, !2926, !2927}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2923, file: !177, line: 433, baseType: !7, size: 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2923, file: !177, line: 434, baseType: !7, size: 32, offset: 32)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2923, file: !177, line: 435, baseType: !42, size: 64, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2583, file: !177, line: 751, baseType: !100, size: 128, offset: 4800)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2583, file: !177, line: 762, baseType: !2930, size: 64, offset: 4928)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !177, line: 762, flags: DIFlagFwdDecl)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2583, file: !177, line: 770, baseType: !2933, offset: 4992)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2934, line: 5, elements: !301)
!2934 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2583, file: !177, line: 772, baseType: !2936, size: 64, offset: 4992)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2938, line: 18, flags: DIFlagFwdDecl)
!2938 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2583, file: !177, line: 773, baseType: !2940, size: 64, offset: 5056)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2649, line: 22, flags: DIFlagFwdDecl)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2583, file: !177, line: 776, baseType: !25, size: 32, offset: 5120)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2583, file: !177, line: 778, baseType: !929, size: 32, offset: 5152)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2583, file: !177, line: 779, baseType: !509, size: 32, offset: 5184)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2583, file: !177, line: 781, baseType: !62, size: 32, offset: 5216)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2583, file: !177, line: 782, baseType: !100, size: 128, offset: 5248)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2583, file: !177, line: 784, baseType: !2948, size: 64, offset: 5376)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2950)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2951, line: 52, size: 768, elements: !2952)
!2951 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2952 = !{!2953, !2954, !2955, !2956, !2957, !2961, !2965, !2966, !2967, !2968, !2972, !2976}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2950, file: !2951, line: 53, baseType: !19, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2950, file: !2951, line: 55, baseType: !1189, size: 64, offset: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2950, file: !2951, line: 56, baseType: !1189, size: 64, offset: 128)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2950, file: !2951, line: 58, baseType: !2600, size: 64, offset: 192)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2950, file: !2951, line: 59, baseType: !2958, size: 64, offset: 256)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!556, !2603, !2609}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2950, file: !2951, line: 61, baseType: !2962, size: 64, offset: 320)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{null, !2948}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2950, file: !2951, line: 62, baseType: !2611, size: 64, offset: 384)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2950, file: !2951, line: 64, baseType: !2620, size: 64, offset: 448)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2950, file: !2951, line: 66, baseType: !1663, size: 64, offset: 512)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2950, file: !2951, line: 67, baseType: !2969, size: 64, offset: 576)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!1680, !2603}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2950, file: !2951, line: 69, baseType: !2973, size: 64, offset: 640)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{null, !2603, !742, !743}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2950, file: !2951, line: 71, baseType: !2615, size: 64, offset: 704)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2583, file: !177, line: 785, baseType: !1189, size: 64, offset: 5440)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2583, file: !177, line: 787, baseType: !2611, size: 64, offset: 5504)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2583, file: !177, line: 788, baseType: !2980, size: 64, offset: 5568)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !177, line: 46, flags: DIFlagFwdDecl)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2583, file: !177, line: 789, baseType: !2983, size: 64, offset: 5632)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !177, line: 48, flags: DIFlagFwdDecl)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2583, file: !177, line: 791, baseType: !2986, size: 64, offset: 5696)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !177, line: 597, size: 128, elements: !2988)
!2988 = !{!2989, !2990, !2991, !2992, !2993}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2987, file: !177, line: 598, baseType: !203, size: 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2987, file: !177, line: 599, baseType: !212, size: 32, offset: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2987, file: !177, line: 600, baseType: !217, size: 32, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2987, file: !177, line: 601, baseType: !545, size: 8, offset: 96)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2987, file: !177, line: 602, baseType: !545, size: 8, offset: 104)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2583, file: !177, line: 793, baseType: !222, size: 32, offset: 5760)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2583, file: !177, line: 795, baseType: !545, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2583, file: !177, line: 796, baseType: !545, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2583, file: !177, line: 797, baseType: !545, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2583, file: !177, line: 798, baseType: !545, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2583, file: !177, line: 799, baseType: !545, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1064, file: !160, line: 1226, baseType: !3001, size: 64, offset: 1664)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !160, line: 1226, flags: DIFlagFwdDecl)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1064, file: !160, line: 1227, baseType: !3004, size: 64, offset: 1728)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !229, line: 163, size: 6848, elements: !3006)
!3006 = !{!3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3054, !3055, !3056, !3057, !3059, !3060, !3061}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3005, file: !229, line: 164, baseType: !452, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3005, file: !229, line: 165, baseType: !476, size: 192, align: 64, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3005, file: !229, line: 166, baseType: !100, size: 128, offset: 256)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3005, file: !229, line: 167, baseType: !42, size: 64, offset: 384)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3005, file: !229, line: 168, baseType: !42, size: 64, offset: 448)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3005, file: !229, line: 170, baseType: !1890, size: 32, offset: 512)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3005, file: !229, line: 171, baseType: !7, size: 32, offset: 544)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3005, file: !229, line: 172, baseType: !7, size: 32, offset: 576)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3005, file: !229, line: 173, baseType: !7, size: 32, offset: 608)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3005, file: !229, line: 173, baseType: !7, size: 32, offset: 640)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3005, file: !229, line: 179, baseType: !326, size: 64, offset: 704)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3005, file: !229, line: 184, baseType: !42, size: 64, offset: 768)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3005, file: !229, line: 186, baseType: !3020, size: 4672, offset: 832)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !229, line: 105, size: 4672, elements: !3021)
!3021 = !{!3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3047, !3048, !3049, !3050, !3051, !3052, !3053}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3020, file: !229, line: 106, baseType: !3004, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3020, file: !229, line: 108, baseType: !42, size: 64, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3020, file: !229, line: 109, baseType: !42, size: 64, offset: 128)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3020, file: !229, line: 111, baseType: !100, size: 128, offset: 192)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3020, file: !229, line: 112, baseType: !100, size: 128, offset: 320)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3020, file: !229, line: 113, baseType: !100, size: 128, offset: 448)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3020, file: !229, line: 114, baseType: !100, size: 128, offset: 576)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3020, file: !229, line: 115, baseType: !62, size: 32, offset: 704)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3020, file: !229, line: 117, baseType: !52, size: 32, offset: 736)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3020, file: !229, line: 118, baseType: !3032, size: 1280, offset: 768)
!3032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 1280, elements: !398)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3020, file: !229, line: 120, baseType: !42, size: 64, offset: 2048)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3020, file: !229, line: 121, baseType: !42, size: 64, offset: 2112)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3020, file: !229, line: 122, baseType: !42, size: 64, offset: 2176)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3020, file: !229, line: 123, baseType: !42, size: 64, offset: 2240)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3020, file: !229, line: 124, baseType: !42, size: 64, offset: 2304)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3020, file: !229, line: 132, baseType: !42, size: 64, offset: 2368)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3020, file: !229, line: 133, baseType: !42, size: 64, offset: 2432)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3020, file: !229, line: 135, baseType: !3041, size: 384, offset: 2496)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3042, line: 76, size: 384, elements: !3043)
!3042 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3043 = !{!3044, !3045, !3046}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3041, file: !3042, line: 78, baseType: !604, size: 320)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3041, file: !3042, line: 80, baseType: !7, size: 32, offset: 320)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3041, file: !3042, line: 81, baseType: !340, size: 32, offset: 352)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3020, file: !229, line: 136, baseType: !25, size: 32, offset: 2880)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3020, file: !229, line: 137, baseType: !228, size: 32, offset: 2912)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3020, file: !229, line: 139, baseType: !62, size: 32, offset: 2944)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3020, file: !229, line: 140, baseType: !100, size: 128, offset: 3008)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3020, file: !229, line: 141, baseType: !2199, size: 704, offset: 3136)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3020, file: !229, line: 142, baseType: !2199, size: 704, offset: 3840)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3020, file: !229, line: 144, baseType: !100, size: 128, offset: 4544)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3005, file: !229, line: 187, baseType: !100, size: 128, offset: 5504)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3005, file: !229, line: 193, baseType: !57, size: 192, offset: 5632)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3005, file: !229, line: 195, baseType: !2587, size: 64, offset: 5824)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3005, file: !229, line: 196, baseType: !3058, size: 512, offset: 5888)
!3058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 512, elements: !1152)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3005, file: !229, line: 197, baseType: !2587, size: 64, offset: 6400)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3005, file: !229, line: 199, baseType: !2142, size: 320, offset: 6464)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3005, file: !229, line: 202, baseType: !815, size: 64, offset: 6784)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1064, file: !160, line: 1228, baseType: !3063, size: 64, offset: 1792)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !160, line: 1228, flags: DIFlagFwdDecl)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1064, file: !160, line: 1229, baseType: !393, size: 128, offset: 1856)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1064, file: !160, line: 1230, baseType: !7, size: 32, offset: 1984)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1064, file: !160, line: 1231, baseType: !3068, size: 2496, offset: 2048)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !165, line: 521, size: 2496, elements: !3069)
!3069 = !{!3070, !3071, !3072, !3074, !3106}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3068, file: !165, line: 522, baseType: !7, size: 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3068, file: !165, line: 523, baseType: !484, size: 320, offset: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3068, file: !165, line: 524, baseType: !3073, size: 192, offset: 384)
!3073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !855, size: 192, elements: !372)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3068, file: !165, line: 525, baseType: !3075, size: 1728, offset: 576)
!3075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3076, size: 1728, elements: !372)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !165, line: 222, size: 576, elements: !3077)
!3077 = !{!3078, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3076, file: !165, line: 223, baseType: !3079, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !165, line: 445, size: 256, elements: !3081)
!3081 = !{!3082, !3083, !3096, !3097}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3080, file: !165, line: 446, baseType: !25, size: 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3080, file: !165, line: 447, baseType: !3084, size: 64, offset: 64)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3086)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !165, line: 312, size: 512, elements: !3087)
!3087 = !{!3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3086, file: !165, line: 313, baseType: !2291, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3086, file: !165, line: 314, baseType: !2291, size: 64, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3086, file: !165, line: 315, baseType: !2291, size: 64, offset: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3086, file: !165, line: 316, baseType: !2291, size: 64, offset: 192)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3086, file: !165, line: 317, baseType: !2400, size: 64, offset: 256)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3086, file: !165, line: 318, baseType: !2400, size: 64, offset: 320)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3086, file: !165, line: 319, baseType: !2400, size: 64, offset: 384)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3086, file: !165, line: 320, baseType: !2430, size: 64, offset: 448)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3080, file: !165, line: 448, baseType: !1096, size: 64, offset: 128)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3080, file: !165, line: 449, baseType: !3079, size: 64, offset: 192)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3076, file: !165, line: 224, baseType: !25, size: 32, offset: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3076, file: !165, line: 226, baseType: !100, size: 128, offset: 128)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3076, file: !165, line: 227, baseType: !42, size: 64, offset: 256)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3076, file: !165, line: 228, baseType: !7, size: 32, offset: 320)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3076, file: !165, line: 229, baseType: !7, size: 32, offset: 352)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3076, file: !165, line: 230, baseType: !2368, size: 64, offset: 384)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3076, file: !165, line: 231, baseType: !2368, size: 64, offset: 448)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3076, file: !165, line: 232, baseType: !23, size: 64, offset: 512)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3068, file: !165, line: 526, baseType: !3107, size: 192, offset: 2304)
!3107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3084, size: 192, elements: !372)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1064, file: !160, line: 1233, baseType: !3109, size: 2368, offset: 4544)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !160, line: 1184, size: 2368, elements: !3110)
!3110 = !{!3111, !3112, !3113}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3109, file: !160, line: 1185, baseType: !29, size: 16)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3109, file: !160, line: 1186, baseType: !29, size: 16, offset: 16)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3109, file: !160, line: 1187, baseType: !3114, size: 2304, offset: 64)
!3114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3115, size: 2304, elements: !372)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3116, line: 12, size: 768, elements: !3117)
!3116 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3117 = !{!3118, !3126, !3127, !4583, !4584}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3115, file: !3116, line: 13, baseType: !3119, size: 384)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3120, line: 17, size: 384, elements: !3121)
!3120 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3121 = !{!3122, !3123, !3124, !3125}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3119, file: !3120, line: 18, baseType: !25, size: 32)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3119, file: !3120, line: 19, baseType: !25, size: 32, offset: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3119, file: !3120, line: 20, baseType: !57, size: 192, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3119, file: !3120, line: 22, baseType: !271, size: 128, align: 64, offset: 256)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3115, file: !3116, line: 14, baseType: !1993, size: 64, offset: 384)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3115, file: !3116, line: 15, baseType: !3128, size: 64, offset: 448)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3129, line: 16, size: 64, elements: !3130)
!3129 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3130 = !{!3131}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3128, file: !3129, line: 17, baseType: !3132, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2549, line: 746, size: 58368, elements: !3134)
!3134 = !{!3135, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3215, !3226, !3246, !3250, !3253, !3284, !3285, !3286, !3287, !3298, !3300, !3301, !3302, !3303, !3304, !3305, !3316, !3317, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3334, !3335, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3423, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3471, !3477, !3478, !3479, !3480, !3481, !3485, !3488, !3495, !3500, !3503, !3506, !3509, !3801, !4002, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4040, !4041, !4042, !4051, !4059, !4060, !4061, !4062, !4063, !4068, !4069, !4070, !4073, !4074, !4077, !4080, !4083, !4090, !4093, !4094, !4180, !4181, !4182, !4183, !4184, !4190, !4191, !4192, !4193, !4194, !4195, !4198, !4201, !4202, !4205, !4206, !4207, !4210, !4211, !4212, !4213, !4214, !4215, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4247, !4250, !4256, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4338, !4340, !4341, !4342, !4343, !4344, !4345, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4362, !4363, !4364}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3133, file: !2549, line: 752, baseType: !3136, size: 192)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3137, line: 56, size: 192, elements: !3138)
!3137 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3138 = !{!3139, !3140, !3141, !3142}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3136, file: !3137, line: 57, baseType: !42, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3136, file: !3137, line: 58, baseType: !42, size: 64, offset: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3136, file: !3137, line: 59, baseType: !509, size: 32, offset: 128)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3136, file: !3137, line: 61, baseType: !509, size: 32, offset: 160)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3133, file: !2549, line: 754, baseType: !7, size: 32, offset: 192)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3133, file: !2549, line: 767, baseType: !23, size: 64, offset: 256)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3133, file: !2549, line: 768, baseType: !380, size: 32, offset: 320)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3133, file: !2549, line: 770, baseType: !7, size: 32, offset: 352)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3133, file: !2549, line: 771, baseType: !7, size: 32, offset: 384)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3133, file: !2549, line: 774, baseType: !25, size: 32, offset: 416)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3133, file: !2549, line: 775, baseType: !3150, size: 128, offset: 448)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3151, line: 58, size: 128, elements: !3152)
!3151 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3152 = !{!3153, !3154, !3159, !3160}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3150, file: !3151, line: 59, baseType: !315, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, scope: !3150, file: !3151, line: 60, baseType: !3155, size: 32, offset: 64)
!3155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3150, file: !3151, line: 60, size: 32, elements: !3156)
!3156 = !{!3157, !3158}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3155, file: !3151, line: 61, baseType: !7, size: 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3155, file: !3151, line: 62, baseType: !52, size: 32)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3150, file: !3151, line: 65, baseType: !96, size: 16, offset: 96)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3150, file: !3151, line: 65, baseType: !96, size: 16, offset: 112)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3133, file: !2549, line: 776, baseType: !7, size: 32, offset: 576)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3133, file: !2549, line: 777, baseType: !42, size: 64, offset: 640)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3133, file: !2549, line: 778, baseType: !3132, size: 64, offset: 704)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3133, file: !2549, line: 787, baseType: !25, size: 32, offset: 768)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3133, file: !2549, line: 788, baseType: !25, size: 32, offset: 800)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3133, file: !2549, line: 790, baseType: !25, size: 32, offset: 832)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3133, file: !2549, line: 792, baseType: !25, size: 32, offset: 864)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3133, file: !2549, line: 793, baseType: !25, size: 32, offset: 896)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3133, file: !2549, line: 794, baseType: !25, size: 32, offset: 928)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3133, file: !2549, line: 795, baseType: !7, size: 32, offset: 960)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3133, file: !2549, line: 797, baseType: !3172, size: 2048, offset: 1024)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2549, line: 551, size: 2048, elements: !3173)
!3173 = !{!3174, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3194, !3197, !3198, !3199}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3172, file: !2549, line: 553, baseType: !3175, size: 128)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2549, line: 411, size: 128, elements: !3176)
!3176 = !{!3177, !3178}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3175, file: !2549, line: 412, baseType: !42, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3175, file: !2549, line: 413, baseType: !509, size: 32, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3172, file: !2549, line: 554, baseType: !476, size: 192, align: 64, offset: 128)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3172, file: !2549, line: 555, baseType: !452, size: 64, offset: 320)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3172, file: !2549, line: 556, baseType: !452, size: 64, offset: 384)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3172, file: !2549, line: 558, baseType: !100, size: 128, offset: 448)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3172, file: !2549, line: 559, baseType: !7, size: 32, offset: 576)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3172, file: !2549, line: 561, baseType: !452, size: 64, offset: 640)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3172, file: !2549, line: 562, baseType: !452, size: 64, offset: 704)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3172, file: !2549, line: 563, baseType: !452, size: 64, offset: 768)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3172, file: !2549, line: 564, baseType: !452, size: 64, offset: 832)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3172, file: !2549, line: 565, baseType: !332, size: 64, offset: 896)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3172, file: !2549, line: 566, baseType: !452, size: 64, offset: 960)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3172, file: !2549, line: 568, baseType: !452, size: 64, offset: 1024)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3172, file: !2549, line: 571, baseType: !25, size: 32, offset: 1088)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3172, file: !2549, line: 572, baseType: !3193, size: 64, offset: 1152)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3172, file: !2549, line: 574, baseType: !3195, size: 64, offset: 1216)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2549, line: 49, flags: DIFlagFwdDecl)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3172, file: !2549, line: 576, baseType: !3195, size: 64, offset: 1280)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3172, file: !2549, line: 578, baseType: !42, size: 64, offset: 1344)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3172, file: !2549, line: 588, baseType: !3200, size: 512, align: 512, offset: 1536)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2549, line: 497, size: 512, align: 512, elements: !3201)
!3201 = !{!3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3200, file: !2549, line: 498, baseType: !452, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3200, file: !2549, line: 499, baseType: !452, size: 64, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3200, file: !2549, line: 500, baseType: !452, size: 64, offset: 128)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3200, file: !2549, line: 501, baseType: !509, size: 32, offset: 192)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3200, file: !2549, line: 502, baseType: !509, size: 32, offset: 224)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3200, file: !2549, line: 503, baseType: !42, size: 64, offset: 256)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3200, file: !2549, line: 504, baseType: !42, size: 64, offset: 320)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3200, file: !2549, line: 505, baseType: !42, size: 64, offset: 384)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3200, file: !2549, line: 506, baseType: !3211, size: 64, align: 64, offset: 448)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2549, line: 445, size: 64, align: 64, elements: !3212)
!3212 = !{!3213, !3214}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3211, file: !2549, line: 446, baseType: !7, size: 32)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3211, file: !2549, line: 447, baseType: !7, size: 32, offset: 32)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3133, file: !2549, line: 798, baseType: !3216, size: 384, offset: 3072)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2549, line: 592, size: 384, elements: !3217)
!3217 = !{!3218, !3219, !3220, !3221, !3222, !3223, !3224}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3216, file: !2549, line: 593, baseType: !100, size: 128)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3216, file: !2549, line: 594, baseType: !42, size: 64, offset: 128)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3216, file: !2549, line: 595, baseType: !42, size: 64, offset: 192)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3216, file: !2549, line: 596, baseType: !7, size: 32, offset: 256)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3216, file: !2549, line: 597, baseType: !29, size: 16, offset: 288)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3216, file: !2549, line: 598, baseType: !29, size: 16, offset: 304)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3216, file: !2549, line: 600, baseType: !3225, size: 64, offset: 320)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3133, file: !2549, line: 799, baseType: !3227, size: 1792, offset: 3456)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2549, line: 610, size: 1792, elements: !3228)
!3228 = !{!3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3227, file: !2549, line: 611, baseType: !476, size: 192, align: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3227, file: !2549, line: 618, baseType: !452, size: 64, offset: 192)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3227, file: !2549, line: 619, baseType: !452, size: 64, offset: 256)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3227, file: !2549, line: 620, baseType: !452, size: 64, offset: 320)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3227, file: !2549, line: 621, baseType: !452, size: 64, offset: 384)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3227, file: !2549, line: 622, baseType: !452, size: 64, offset: 448)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3227, file: !2549, line: 629, baseType: !332, size: 64, offset: 512)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3227, file: !2549, line: 630, baseType: !452, size: 64, offset: 576)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3227, file: !2549, line: 631, baseType: !7, size: 32, offset: 640)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3227, file: !2549, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3227, file: !2549, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3227, file: !2549, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3227, file: !2549, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3227, file: !2549, line: 662, baseType: !2779, size: 512, offset: 704)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3227, file: !2549, line: 671, baseType: !2779, size: 512, offset: 1216)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3227, file: !2549, line: 679, baseType: !3245, size: 64, offset: 1728)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3133, file: !2549, line: 800, baseType: !3247, size: 64, offset: 5248)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3249)
!3249 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2549, line: 800, flags: DIFlagFwdDecl)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3133, file: !2549, line: 809, baseType: !3251, size: 64, offset: 5312)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2549, line: 70, flags: DIFlagFwdDecl)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3133, file: !2549, line: 825, baseType: !3254, size: 2048, align: 512, offset: 5632)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2549, line: 509, size: 2048, align: 512, elements: !3255)
!3255 = !{!3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3254, file: !2549, line: 511, baseType: !452, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3254, file: !2549, line: 512, baseType: !452, size: 64, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3254, file: !2549, line: 513, baseType: !452, size: 64, offset: 128)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3254, file: !2549, line: 514, baseType: !452, size: 64, offset: 192)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3254, file: !2549, line: 515, baseType: !452, size: 64, offset: 256)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3254, file: !2549, line: 516, baseType: !452, size: 64, offset: 320)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3254, file: !2549, line: 518, baseType: !452, size: 64, offset: 384)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3254, file: !2549, line: 519, baseType: !452, size: 64, offset: 448)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3254, file: !2549, line: 520, baseType: !332, size: 64, offset: 512)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3254, file: !2549, line: 522, baseType: !452, size: 64, offset: 576)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3254, file: !2549, line: 523, baseType: !452, size: 64, offset: 640)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3254, file: !2549, line: 524, baseType: !332, size: 64, offset: 704)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3254, file: !2549, line: 526, baseType: !332, size: 64, offset: 768)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3254, file: !2549, line: 527, baseType: !452, size: 64, offset: 832)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3254, file: !2549, line: 529, baseType: !452, size: 64, offset: 896)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3254, file: !2549, line: 530, baseType: !452, size: 64, offset: 960)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3254, file: !2549, line: 531, baseType: !452, size: 64, offset: 1024)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3254, file: !2549, line: 532, baseType: !452, size: 64, offset: 1088)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3254, file: !2549, line: 533, baseType: !452, size: 64, offset: 1152)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3254, file: !2549, line: 535, baseType: !452, size: 64, offset: 1216)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3254, file: !2549, line: 536, baseType: !452, size: 64, offset: 1280)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3254, file: !2549, line: 537, baseType: !452, size: 64, offset: 1344)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3254, file: !2549, line: 538, baseType: !452, size: 64, offset: 1408)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3254, file: !2549, line: 539, baseType: !452, size: 64, offset: 1472)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3254, file: !2549, line: 540, baseType: !452, size: 64, offset: 1536)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3254, file: !2549, line: 541, baseType: !452, size: 64, offset: 1600)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3254, file: !2549, line: 542, baseType: !452, size: 64, offset: 1664)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3254, file: !2549, line: 543, baseType: !452, size: 64, offset: 1728)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3133, file: !2549, line: 833, baseType: !7, size: 32, offset: 7680)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3133, file: !2549, line: 836, baseType: !7, size: 32, offset: 7712)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3133, file: !2549, line: 837, baseType: !25, size: 32, offset: 7744)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3133, file: !2549, line: 838, baseType: !3288, size: 64, offset: 7808)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3290)
!3290 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3291, line: 19, baseType: !3292)
!3291 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3291, line: 19, size: 64, elements: !3293)
!3293 = !{!3294}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3292, file: !3291, line: 19, baseType: !3295, size: 64)
!3295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 64, elements: !3296)
!3296 = !{!3297}
!3297 = !DISubrange(count: 1)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3133, file: !2549, line: 839, baseType: !3299, size: 64, offset: 7872)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3133, file: !2549, line: 840, baseType: !3290, size: 64, offset: 7936)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3133, file: !2549, line: 841, baseType: !23, size: 64, offset: 8000)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3133, file: !2549, line: 843, baseType: !29, size: 16, offset: 8064)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3133, file: !2549, line: 845, baseType: !29, size: 16, offset: 8080)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3133, file: !2549, line: 848, baseType: !25, size: 32, offset: 8096)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3133, file: !2549, line: 849, baseType: !3306, size: 32, offset: 8128)
!3306 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2549, line: 718, size: 32, elements: !3307)
!3307 = !{!3308, !3315}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3306, file: !2549, line: 724, baseType: !3309, size: 32)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3306, file: !2549, line: 719, size: 32, elements: !3310)
!3310 = !{!3311, !3312, !3313, !3314}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3309, file: !2549, line: 720, baseType: !86, size: 8)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3309, file: !2549, line: 721, baseType: !86, size: 8, offset: 8)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3309, file: !2549, line: 722, baseType: !86, size: 8, offset: 16)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3309, file: !2549, line: 723, baseType: !86, size: 8, offset: 24)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3306, file: !2549, line: 725, baseType: !509, size: 32)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3133, file: !2549, line: 850, baseType: !100, size: 128, offset: 8192)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3133, file: !2549, line: 851, baseType: !3318, size: 64, offset: 8320)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2549, line: 60, flags: DIFlagFwdDecl)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3133, file: !2549, line: 855, baseType: !42, size: 64, offset: 8384)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3133, file: !2549, line: 856, baseType: !86, size: 8, offset: 8448)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3133, file: !2549, line: 857, baseType: !86, size: 8, offset: 8456)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3133, file: !2549, line: 858, baseType: !25, size: 32, offset: 8480)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3133, file: !2549, line: 859, baseType: !100, size: 128, offset: 8512)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3133, file: !2549, line: 860, baseType: !25, size: 32, offset: 8640)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3133, file: !2549, line: 861, baseType: !100, size: 128, offset: 8704)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3133, file: !2549, line: 873, baseType: !3328, size: 256, offset: 8832)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2549, line: 376, size: 256, elements: !3329)
!3329 = !{!3330, !3331, !3332, !3333}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3328, file: !2549, line: 381, baseType: !42, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3328, file: !2549, line: 384, baseType: !454, size: 64, offset: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3328, file: !2549, line: 389, baseType: !454, size: 64, offset: 128)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3328, file: !2549, line: 392, baseType: !454, size: 64, offset: 192)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3133, file: !2549, line: 875, baseType: !100, size: 128, offset: 9088)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3133, file: !2549, line: 877, baseType: !3336, size: 320, offset: 9216)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3337, line: 86, size: 320, elements: !3338)
!3337 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3338 = !{!3339, !3340, !3341}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3336, file: !3337, line: 87, baseType: !25, size: 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3336, file: !3337, line: 88, baseType: !100, size: 128, offset: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3336, file: !3337, line: 89, baseType: !100, size: 128, offset: 192)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3133, file: !2549, line: 878, baseType: !476, size: 192, align: 64, offset: 9536)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3133, file: !2549, line: 881, baseType: !280, size: 64, offset: 9728)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3133, file: !2549, line: 882, baseType: !280, size: 64, offset: 9792)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3133, file: !2549, line: 884, baseType: !25, size: 32, offset: 9856)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3133, file: !2549, line: 885, baseType: !25, size: 32, offset: 9888)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3133, file: !2549, line: 886, baseType: !25, size: 32, offset: 9920)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3133, file: !2549, line: 888, baseType: !25, size: 32, offset: 9952)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3133, file: !2549, line: 890, baseType: !42, size: 64, offset: 9984)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3133, file: !2549, line: 893, baseType: !7, size: 32, offset: 10048)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3133, file: !2549, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3133, file: !2549, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3133, file: !2549, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3133, file: !2549, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3133, file: !2549, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3133, file: !2549, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3133, file: !2549, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3133, file: !2549, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3133, file: !2549, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3133, file: !2549, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3133, file: !2549, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3133, file: !2549, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3133, file: !2549, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3133, file: !2549, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3133, file: !2549, line: 969, baseType: !42, size: 64, offset: 10176)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3133, file: !2549, line: 971, baseType: !3367, size: 448, offset: 10240)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !241, line: 25, size: 448, elements: !3368)
!3368 = !{!3369, !3370, !3375}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3367, file: !241, line: 26, baseType: !42, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3367, file: !241, line: 27, baseType: !3371, size: 64, offset: 64)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!779, !3374}
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, scope: !3367, file: !241, line: 28, baseType: !3376, size: 320, offset: 128)
!3376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3367, file: !241, line: 28, size: 320, elements: !3377)
!3377 = !{!3378, !3388, !3413}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3376, file: !241, line: 37, baseType: !3379, size: 320)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3376, file: !241, line: 30, size: 320, elements: !3380)
!3380 = !{!3381, !3383, !3384, !3385, !3386, !3387}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3379, file: !241, line: 31, baseType: !3382, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3379, file: !241, line: 32, baseType: !509, size: 32, offset: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3379, file: !241, line: 33, baseType: !509, size: 32, offset: 96)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3379, file: !241, line: 34, baseType: !509, size: 32, offset: 128)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3379, file: !241, line: 35, baseType: !452, size: 64, offset: 192)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3379, file: !241, line: 36, baseType: !3382, size: 64, offset: 256)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3376, file: !241, line: 47, baseType: !3389, size: 192)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3376, file: !241, line: 39, size: 192, elements: !3390)
!3390 = !{!3391, !3392, !3393, !3412}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3389, file: !241, line: 40, baseType: !2824, size: 32)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3389, file: !241, line: 41, baseType: !240, size: 32, offset: 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, scope: !3389, file: !241, line: 42, baseType: !3394, size: 64, offset: 64)
!3394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3389, file: !241, line: 42, size: 64, elements: !3395)
!3395 = !{!3396, !3404}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3394, file: !241, line: 43, baseType: !3397, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3399, line: 7, size: 128, elements: !3400)
!3399 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3400 = !{!3401, !3403}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3398, file: !3399, line: 8, baseType: !3402, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !40, line: 93, baseType: !46)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3398, file: !3399, line: 9, baseType: !46, size: 64, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3394, file: !241, line: 44, baseType: !3405, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3407, line: 7, size: 64, elements: !3408)
!3407 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3408 = !{!3409, !3411}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3406, file: !3407, line: 8, baseType: !3410, size: 32)
!3410 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3407, line: 5, baseType: !469)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3406, file: !3407, line: 9, baseType: !469, size: 32, offset: 32)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3389, file: !241, line: 46, baseType: !452, size: 64, offset: 128)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3376, file: !241, line: 55, baseType: !3414, size: 256)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3376, file: !241, line: 49, size: 256, elements: !3415)
!3415 = !{!3416, !3419, !3420, !3421, !3422}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3414, file: !241, line: 50, baseType: !3417, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !241, line: 14, flags: DIFlagFwdDecl)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3414, file: !241, line: 51, baseType: !25, size: 32, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3414, file: !241, line: 52, baseType: !25, size: 32, offset: 96)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3414, file: !241, line: 53, baseType: !42, size: 64, offset: 128)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3414, file: !241, line: 54, baseType: !42, size: 64, offset: 192)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3133, file: !2549, line: 973, baseType: !3424, size: 32, offset: 10688)
!3424 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !28, line: 27, baseType: !3425)
!3425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !40, line: 28, baseType: !25)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3133, file: !2549, line: 974, baseType: !3424, size: 32, offset: 10720)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3133, file: !2549, line: 978, baseType: !42, size: 64, offset: 10752)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3133, file: !2549, line: 987, baseType: !3132, size: 64, offset: 10816)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3133, file: !2549, line: 990, baseType: !3132, size: 64, offset: 10880)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3133, file: !2549, line: 995, baseType: !100, size: 128, offset: 10944)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3133, file: !2549, line: 996, baseType: !100, size: 128, offset: 11072)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3133, file: !2549, line: 997, baseType: !3132, size: 64, offset: 11200)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3133, file: !2549, line: 1005, baseType: !100, size: 128, offset: 11264)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3133, file: !2549, line: 1006, baseType: !100, size: 128, offset: 11392)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3133, file: !2549, line: 1009, baseType: !376, size: 64, offset: 11520)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3133, file: !2549, line: 1010, baseType: !3437, size: 512, offset: 11584)
!3437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 512, elements: !398)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3133, file: !2549, line: 1011, baseType: !100, size: 128, offset: 12096)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3133, file: !2549, line: 1012, baseType: !100, size: 128, offset: 12224)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3133, file: !2549, line: 1014, baseType: !716, size: 64, offset: 12352)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3133, file: !2549, line: 1017, baseType: !2041, size: 64, offset: 12416)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3133, file: !2549, line: 1020, baseType: !2041, size: 64, offset: 12480)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3133, file: !2549, line: 1023, baseType: !23, size: 64, offset: 12544)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3133, file: !2549, line: 1025, baseType: !452, size: 64, offset: 12608)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3133, file: !2549, line: 1026, baseType: !452, size: 64, offset: 12672)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3133, file: !2549, line: 1031, baseType: !452, size: 64, offset: 12736)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3133, file: !2549, line: 1032, baseType: !3448, size: 192, offset: 12800)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2549, line: 324, size: 192, elements: !3449)
!3449 = !{!3450, !3451, !3452}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3448, file: !2549, line: 326, baseType: !452, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3448, file: !2549, line: 327, baseType: !452, size: 64, offset: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3448, file: !2549, line: 328, baseType: !340, size: 32, offset: 128)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3133, file: !2549, line: 1041, baseType: !42, size: 64, offset: 12992)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3133, file: !2549, line: 1042, baseType: !42, size: 64, offset: 13056)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3133, file: !2549, line: 1045, baseType: !452, size: 64, offset: 13120)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3133, file: !2549, line: 1048, baseType: !452, size: 64, offset: 13184)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3133, file: !2549, line: 1051, baseType: !42, size: 64, offset: 13248)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3133, file: !2549, line: 1052, baseType: !42, size: 64, offset: 13312)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3133, file: !2549, line: 1055, baseType: !3460, size: 640, offset: 13376)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3461, line: 132, size: 640, elements: !3462)
!3461 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3462 = !{!3463, !3469, !3470}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3460, file: !3461, line: 133, baseType: !3464, size: 576)
!3464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3465, size: 576, elements: !372)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3461, line: 117, size: 192, elements: !3466)
!3466 = !{!3467, !3468}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3465, file: !3461, line: 118, baseType: !452, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3465, file: !3461, line: 119, baseType: !2833, size: 128, offset: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3460, file: !3461, line: 134, baseType: !7, size: 32, offset: 576)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3460, file: !3461, line: 135, baseType: !7, size: 32, offset: 608)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3133, file: !2549, line: 1058, baseType: !3472, size: 448, offset: 14016)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3461, line: 144, size: 448, elements: !3473)
!3473 = !{!3474, !3475, !3476}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3472, file: !3461, line: 145, baseType: !271, size: 128, align: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3472, file: !3461, line: 146, baseType: !335, size: 256, offset: 128)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3472, file: !3461, line: 147, baseType: !7, size: 32, offset: 384)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3133, file: !2549, line: 1064, baseType: !425, size: 64, offset: 14464)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3133, file: !2549, line: 1067, baseType: !425, size: 64, offset: 14528)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3133, file: !2549, line: 1070, baseType: !425, size: 64, offset: 14592)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3133, file: !2549, line: 1074, baseType: !461, size: 64, offset: 14656)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3133, file: !2549, line: 1084, baseType: !3482, size: 128, offset: 14720)
!3482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, elements: !3483)
!3483 = !{!3484}
!3484 = !DISubrange(count: 16)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3133, file: !2549, line: 1086, baseType: !3486, size: 64, offset: 14848)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2549, line: 55, flags: DIFlagFwdDecl)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3133, file: !2549, line: 1089, baseType: !3489, size: 64, offset: 14912)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3490, line: 12, size: 64, elements: !3491)
!3490 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3491 = !{!3492}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3489, file: !3490, line: 13, baseType: !3493, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3490, line: 8, flags: DIFlagFwdDecl)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3133, file: !2549, line: 1090, baseType: !3496, size: 128, offset: 14976)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3497, line: 13, size: 128, elements: !3498)
!3497 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3498 = !{!3499}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3496, file: !3497, line: 14, baseType: !100, size: 128)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3133, file: !2549, line: 1097, baseType: !3501, size: 64, offset: 15104)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2549, line: 50, flags: DIFlagFwdDecl)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3133, file: !2549, line: 1100, baseType: !3504, size: 64, offset: 15168)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2549, line: 1100, flags: DIFlagFwdDecl)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3133, file: !2549, line: 1103, baseType: !3507, size: 64, offset: 15232)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2549, line: 53, flags: DIFlagFwdDecl)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3133, file: !2549, line: 1107, baseType: !3510, size: 64, offset: 15296)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3512, line: 31, size: 576, elements: !3513)
!3512 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3513 = !{!3514, !3515, !3518, !3521, !3524, !3525, !3528, !3531, !3532}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3511, file: !3512, line: 32, baseType: !380, size: 32)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3511, file: !3512, line: 33, baseType: !3516, size: 64, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3512, line: 9, flags: DIFlagFwdDecl)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3511, file: !3512, line: 34, baseType: !3519, size: 64, offset: 128)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3512, line: 10, flags: DIFlagFwdDecl)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3511, file: !3512, line: 35, baseType: !3522, size: 64, offset: 192)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3512, line: 8, flags: DIFlagFwdDecl)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3511, file: !3512, line: 36, baseType: !409, size: 64, offset: 256)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3511, file: !3512, line: 37, baseType: !3526, size: 64, offset: 320)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !463, line: 34, flags: DIFlagFwdDecl)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3511, file: !3512, line: 38, baseType: !3529, size: 64, offset: 384)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3512, line: 38, flags: DIFlagFwdDecl)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3511, file: !3512, line: 39, baseType: !3529, size: 64, offset: 448)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3511, file: !3512, line: 40, baseType: !3533, size: 64, offset: 512)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3535, line: 771, size: 384, elements: !3536)
!3535 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!3536 = !{!3537, !3538, !3539, !3540}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3534, file: !3535, line: 772, baseType: !662, size: 192)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3534, file: !3535, line: 773, baseType: !629, size: 64, offset: 192)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3534, file: !3535, line: 774, baseType: !764, size: 64, offset: 256)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !3534, file: !3535, line: 775, baseType: !3541, size: 64, offset: 320)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3543, line: 209, size: 4736, elements: !3544)
!3543 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3544 = !{!3545, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3542, file: !3543, line: 215, baseType: !3546, size: 896)
!3546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3547, size: 896, elements: !3604)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3543, line: 152, size: 1600, elements: !3549)
!3549 = !{!3550, !3655, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3779}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3548, file: !3543, line: 154, baseType: !3551, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3543, line: 389, size: 7872, elements: !3553)
!3553 = !{!3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3573, !3574, !3578, !3579, !3580, !3581, !3582, !3583, !3601, !3602, !3606, !3607, !3608, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3642, !3645, !3646, !3653}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3552, file: !3543, line: 391, baseType: !3548, size: 1600)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3552, file: !3543, line: 393, baseType: !42, size: 64, offset: 1600)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3552, file: !3543, line: 401, baseType: !25, size: 32, offset: 1664)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3552, file: !3543, line: 404, baseType: !25, size: 32, offset: 1696)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3552, file: !3543, line: 417, baseType: !25, size: 32, offset: 1728)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3552, file: !3543, line: 418, baseType: !25, size: 32, offset: 1760)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3552, file: !3543, line: 419, baseType: !25, size: 32, offset: 1792)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3552, file: !3543, line: 432, baseType: !25, size: 32, offset: 1824)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3552, file: !3543, line: 433, baseType: !25, size: 32, offset: 1856)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3552, file: !3543, line: 434, baseType: !25, size: 32, offset: 1888)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3552, file: !3543, line: 436, baseType: !25, size: 32, offset: 1920)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3552, file: !3543, line: 439, baseType: !7, size: 32, offset: 1952)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3552, file: !3543, line: 441, baseType: !1698, size: 64, offset: 1984)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3552, file: !3543, line: 442, baseType: !3568, size: 448, offset: 2048)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3543, line: 138, size: 448, elements: !3569)
!3569 = !{!3570, !3571, !3572}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3568, file: !3543, line: 140, baseType: !1698, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3568, file: !3543, line: 141, baseType: !42, size: 64, offset: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3568, file: !3543, line: 142, baseType: !2142, size: 320, offset: 128)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3552, file: !3543, line: 443, baseType: !3568, size: 448, offset: 2496)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3552, file: !3543, line: 446, baseType: !3575, offset: 2944)
!3575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3568, elements: !3576)
!3576 = !{!3577}
!3577 = !DISubrange(count: 0)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3552, file: !3543, line: 455, baseType: !96, size: 16, offset: 2944)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3552, file: !3543, line: 456, baseType: !96, size: 16, offset: 2960)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3552, file: !3543, line: 457, baseType: !96, size: 16, offset: 2976)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3552, file: !3543, line: 458, baseType: !96, size: 16, offset: 2992)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3552, file: !3543, line: 461, baseType: !3546, size: 896, offset: 3008)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3552, file: !3543, line: 463, baseType: !3584, size: 64, offset: 3904)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3543, line: 537, size: 41664, elements: !3586)
!3586 = !{!3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3600}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3585, file: !3543, line: 538, baseType: !1718, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3585, file: !3543, line: 541, baseType: !7, size: 32, offset: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3585, file: !3543, line: 544, baseType: !25, size: 32, offset: 96)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3585, file: !3543, line: 547, baseType: !100, size: 128, offset: 128)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3585, file: !3543, line: 548, baseType: !271, size: 128, align: 64, offset: 256)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3585, file: !3543, line: 555, baseType: !3552, size: 7872, offset: 384)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3585, file: !3543, line: 558, baseType: !3551, size: 64, offset: 8256)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3585, file: !3543, line: 561, baseType: !52, size: 32, offset: 8320)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3585, file: !3543, line: 564, baseType: !7, size: 32, offset: 8352)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3585, file: !3543, line: 567, baseType: !3597, size: 32768, offset: 8384)
!3597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32768, elements: !3598)
!3598 = !{!3599}
!3599 = !DISubrange(count: 4096)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3585, file: !3543, line: 570, baseType: !3058, size: 512, offset: 41152)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3552, file: !3543, line: 469, baseType: !100, size: 128, offset: 3968)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3552, file: !3543, line: 478, baseType: !3603, size: 1792, offset: 4096)
!3603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 1792, elements: !3604)
!3604 = !{!3605}
!3605 = !DISubrange(count: 14)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3552, file: !3543, line: 487, baseType: !3551, size: 64, offset: 5888)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3552, file: !3543, line: 488, baseType: !3551, size: 64, offset: 5952)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3552, file: !3543, line: 491, baseType: !3609, size: 64, offset: 6016)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3543, line: 327, size: 896, elements: !3611)
!3611 = !{!3612, !3615, !3625, !3626, !3627, !3628, !3629}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3610, file: !3543, line: 332, baseType: !3613)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3614, line: 64, elements: !301)
!3614 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3610, file: !3543, line: 333, baseType: !3616, size: 192)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3543, line: 299, size: 192, elements: !3617)
!3617 = !{!3618}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3616, file: !3543, line: 300, baseType: !3619, size: 192)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3620, line: 17, size: 192, elements: !3621)
!3620 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3621 = !{!3622, !3623, !3624}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3619, file: !3620, line: 18, baseType: !452, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3619, file: !3620, line: 19, baseType: !452, size: 64, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3619, file: !3620, line: 20, baseType: !454, size: 64, offset: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3610, file: !3543, line: 339, baseType: !3616, size: 192, offset: 192)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3610, file: !3543, line: 347, baseType: !3616, size: 192, offset: 384)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3610, file: !3543, line: 353, baseType: !3616, size: 192, offset: 576)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3610, file: !3543, line: 366, baseType: !3551, size: 64, offset: 768)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3610, file: !3543, line: 367, baseType: !3551, size: 64, offset: 832)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3552, file: !3543, line: 492, baseType: !100, size: 128, offset: 6080)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3552, file: !3543, line: 495, baseType: !3616, size: 192, offset: 6208)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3552, file: !3543, line: 496, baseType: !3616, size: 192, offset: 6400)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3552, file: !3543, line: 497, baseType: !3448, size: 192, offset: 6592)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3552, file: !3543, line: 503, baseType: !100, size: 128, offset: 6784)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3552, file: !3543, line: 504, baseType: !335, size: 256, offset: 6912)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3552, file: !3543, line: 507, baseType: !57, size: 192, offset: 7168)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3552, file: !3543, line: 510, baseType: !678, size: 256, offset: 7360)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3552, file: !3543, line: 513, baseType: !3639, size: 64, offset: 7616)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3641, line: 214, elements: !301)
!3641 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3552, file: !3543, line: 516, baseType: !3643, offset: 7680)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3644, line: 76, elements: !301)
!3644 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3552, file: !3543, line: 519, baseType: !52, size: 32, offset: 7680)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3552, file: !3543, line: 522, baseType: !3647, size: 128, offset: 7712)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3543, line: 370, size: 128, elements: !3648)
!3648 = !{!3649, !3650, !3651, !3652}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3647, file: !3543, line: 372, baseType: !545, size: 8)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3647, file: !3543, line: 375, baseType: !25, size: 32, offset: 32)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3647, file: !3543, line: 380, baseType: !25, size: 32, offset: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3647, file: !3543, line: 386, baseType: !25, size: 32, offset: 96)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3552, file: !3543, line: 529, baseType: !3654, offset: 7872)
!3654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3551, elements: !411)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3548, file: !3543, line: 157, baseType: !3656, size: 64, offset: 64)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3543, line: 669, size: 1984, elements: !3658)
!3658 = !{!3659, !3663, !3667, !3671, !3672, !3673, !3674, !3678, !3682, !3683, !3689, !3693, !3694, !3695, !3699, !3703, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3724, !3725, !3762, !3763}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3657, file: !3543, line: 670, baseType: !3660, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!3547, !3547}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3657, file: !3543, line: 671, baseType: !3664, size: 64, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!25, !3547}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3657, file: !3543, line: 672, baseType: !3668, size: 64, offset: 128)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{null, !3547}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3657, file: !3543, line: 673, baseType: !3668, size: 64, offset: 192)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3657, file: !3543, line: 674, baseType: !3668, size: 64, offset: 256)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3657, file: !3543, line: 675, baseType: !3668, size: 64, offset: 320)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3657, file: !3543, line: 676, baseType: !3675, size: 64, offset: 384)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{null, !3547, !25}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3657, file: !3543, line: 677, baseType: !3679, size: 64, offset: 448)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!25, !1743, !3547}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3657, file: !3543, line: 679, baseType: !3679, size: 64, offset: 512)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3657, file: !3543, line: 682, baseType: !3684, size: 64, offset: 576)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!25, !3687}
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3543, line: 30, flags: DIFlagFwdDecl)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3657, file: !3543, line: 683, baseType: !3690, size: 64, offset: 640)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{null, !3687}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3657, file: !3543, line: 684, baseType: !3690, size: 64, offset: 704)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3657, file: !3543, line: 685, baseType: !2246, size: 64, offset: 768)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3657, file: !3543, line: 686, baseType: !3696, size: 64, offset: 832)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!25, !3132, !3541}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3657, file: !3543, line: 688, baseType: !3700, size: 64, offset: 896)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{null, !3132, !3541}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3657, file: !3543, line: 689, baseType: !3704, size: 64, offset: 960)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{null, !3132}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3657, file: !3543, line: 690, baseType: !3704, size: 64, offset: 1024)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3657, file: !3543, line: 691, baseType: !3704, size: 64, offset: 1088)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3657, file: !3543, line: 692, baseType: !3668, size: 64, offset: 1152)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3657, file: !3543, line: 694, baseType: !545, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3657, file: !3543, line: 707, baseType: !545, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3657, file: !3543, line: 719, baseType: !545, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3657, file: !3543, line: 722, baseType: !25, size: 32, offset: 1248)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3657, file: !3543, line: 723, baseType: !19, size: 64, offset: 1280)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3657, file: !3543, line: 726, baseType: !19, size: 64, offset: 1344)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3657, file: !3543, line: 729, baseType: !3584, size: 64, offset: 1408)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3657, file: !3543, line: 732, baseType: !3718, size: 192, offset: 1472)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3719, line: 19, size: 192, elements: !3720)
!3719 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!3720 = !{!3721, !3722, !3723}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3718, file: !3719, line: 20, baseType: !1054, size: 128)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3718, file: !3719, line: 21, baseType: !7, size: 32, offset: 128)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3718, file: !3719, line: 22, baseType: !7, size: 32, offset: 160)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3657, file: !3543, line: 738, baseType: !100, size: 128, offset: 1664)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3657, file: !3543, line: 744, baseType: !3726, size: 64, offset: 1792)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3543, line: 580, size: 1728, elements: !3728)
!3728 = !{!3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3738, !3739, !3740, !3744, !3748, !3749, !3750, !3751, !3752, !3756, !3760, !3761}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3727, file: !3543, line: 586, baseType: !3058, size: 512)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3727, file: !3543, line: 587, baseType: !42, size: 64, offset: 512)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3727, file: !3543, line: 593, baseType: !38, size: 64, offset: 576)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3727, file: !3543, line: 596, baseType: !7, size: 32, offset: 640)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3727, file: !3543, line: 604, baseType: !7, size: 32, offset: 672)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3727, file: !3543, line: 610, baseType: !3656, size: 64, offset: 704)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3727, file: !3543, line: 611, baseType: !100, size: 128, offset: 768)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3727, file: !3543, line: 612, baseType: !3737, size: 64, offset: 896)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3727, file: !3543, line: 614, baseType: !1734, size: 64, offset: 960)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3727, file: !3543, line: 615, baseType: !1850, size: 64, offset: 1024)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3727, file: !3543, line: 621, baseType: !3741, size: 64, offset: 1088)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!452, !3547, !3726}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3727, file: !3543, line: 625, baseType: !3745, size: 64, offset: 1152)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!332, !3547, !3726}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3727, file: !3543, line: 628, baseType: !1773, size: 64, offset: 1216)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3727, file: !3543, line: 631, baseType: !1761, size: 64, offset: 1280)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3727, file: !3543, line: 632, baseType: !1769, size: 64, offset: 1344)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3727, file: !3543, line: 633, baseType: !1765, size: 64, offset: 1408)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3727, file: !3543, line: 640, baseType: !3753, size: 64, offset: 1472)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!25, !3547, !3726, !452}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3727, file: !3543, line: 645, baseType: !3757, size: 64, offset: 1536)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!25, !3547, !3726, !332}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3727, file: !3543, line: 654, baseType: !1858, size: 64, offset: 1600)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3727, file: !3543, line: 657, baseType: !1865, size: 64, offset: 1664)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3657, file: !3543, line: 745, baseType: !3726, size: 64, offset: 1856)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3657, file: !3543, line: 754, baseType: !7, size: 32, offset: 1920)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3548, file: !3543, line: 160, baseType: !1301, size: 128, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3548, file: !3543, line: 163, baseType: !100, size: 128, offset: 256)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3548, file: !3543, line: 164, baseType: !100, size: 128, offset: 384)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3548, file: !3543, line: 167, baseType: !100, size: 128, offset: 512)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3548, file: !3543, line: 173, baseType: !25, size: 32, offset: 640)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3548, file: !3543, line: 175, baseType: !7, size: 32, offset: 672)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3548, file: !3543, line: 183, baseType: !452, size: 64, offset: 704)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3548, file: !3543, line: 189, baseType: !52, size: 32, offset: 768)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3548, file: !3543, line: 192, baseType: !678, size: 256, offset: 832)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3548, file: !3543, line: 193, baseType: !3774, size: 448, offset: 1088)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !679, line: 120, size: 448, elements: !3775)
!3775 = !{!3776, !3777, !3778}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3774, file: !679, line: 121, baseType: !678, size: 256)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3774, file: !679, line: 122, baseType: !271, size: 128, align: 64, offset: 256)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3774, file: !679, line: 125, baseType: !2204, size: 64, offset: 384)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3548, file: !3543, line: 199, baseType: !3547, size: 64, offset: 1536)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3542, file: !3543, line: 218, baseType: !380, size: 32, offset: 896)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3542, file: !3543, line: 226, baseType: !3541, size: 64, offset: 960)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3542, file: !3543, line: 229, baseType: !3551, size: 64, offset: 1024)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3542, file: !3543, line: 232, baseType: !25, size: 32, offset: 1088)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3542, file: !3543, line: 241, baseType: !100, size: 128, offset: 1152)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3542, file: !3543, line: 242, baseType: !100, size: 128, offset: 1280)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3542, file: !3543, line: 243, baseType: !100, size: 128, offset: 1408)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3542, file: !3543, line: 246, baseType: !100, size: 128, offset: 1536)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3542, file: !3543, line: 255, baseType: !3603, size: 1792, offset: 1664)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3542, file: !3543, line: 258, baseType: !100, size: 128, offset: 3456)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3542, file: !3543, line: 259, baseType: !100, size: 128, offset: 3584)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3542, file: !3543, line: 265, baseType: !393, size: 128, offset: 3712)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3542, file: !3543, line: 271, baseType: !100, size: 128, offset: 3840)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3542, file: !3543, line: 277, baseType: !100, size: 128, offset: 3968)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3542, file: !3543, line: 278, baseType: !100, size: 128, offset: 4096)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3542, file: !3543, line: 279, baseType: !100, size: 128, offset: 4224)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3542, file: !3543, line: 288, baseType: !3551, size: 64, offset: 4352)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3542, file: !3543, line: 289, baseType: !3551, size: 64, offset: 4416)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3542, file: !3543, line: 290, baseType: !3541, size: 64, offset: 4480)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3542, file: !3543, line: 293, baseType: !545, size: 8, offset: 4544)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3542, file: !3543, line: 296, baseType: !271, size: 128, align: 64, offset: 4608)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3133, file: !2549, line: 1110, baseType: !3802, size: 64, offset: 15360)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3804, line: 93, size: 8768, elements: !3805)
!3804 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3805 = !{!3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3854, !3863, !3864, !3866, !3867, !3868, !3871, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3909, !3910, !3917, !3927, !3992, !3993, !3996, !3997, !3998, !3999, !4000, !4001}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3803, file: !3804, line: 94, baseType: !380, size: 32)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3803, file: !3804, line: 95, baseType: !52, size: 32, offset: 32)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3803, file: !3804, line: 96, baseType: !25, size: 32, offset: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3803, file: !3804, line: 97, baseType: !25, size: 32, offset: 96)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3803, file: !3804, line: 98, baseType: !100, size: 128, offset: 128)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3803, file: !3804, line: 100, baseType: !57, size: 192, offset: 256)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3803, file: !3804, line: 103, baseType: !3132, size: 64, offset: 448)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3803, file: !3804, line: 106, baseType: !3814, size: 192, offset: 512)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3815, line: 32, size: 192, elements: !3816)
!3815 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3816 = !{!3817, !3818}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3814, file: !3815, line: 33, baseType: !100, size: 128)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3814, file: !3815, line: 34, baseType: !3819, size: 64, offset: 128)
!3819 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3820, line: 25, baseType: !3821)
!3820 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3820, line: 23, size: 64, elements: !3822)
!3822 = !{!3823}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3821, file: !3820, line: 24, baseType: !3295, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3803, file: !3804, line: 109, baseType: !389, size: 64, offset: 704)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3803, file: !3804, line: 112, baseType: !25, size: 32, offset: 768)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3803, file: !3804, line: 114, baseType: !25, size: 32, offset: 800)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3803, file: !3804, line: 115, baseType: !3132, size: 64, offset: 832)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3803, file: !3804, line: 118, baseType: !25, size: 32, offset: 896)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3803, file: !3804, line: 119, baseType: !7, size: 32, offset: 928)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3803, file: !3804, line: 121, baseType: !3831, size: 64, offset: 960)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3804, line: 80, size: 448, elements: !3833)
!3833 = !{!3834, !3835, !3841}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3832, file: !3804, line: 81, baseType: !52, size: 32)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3832, file: !3804, line: 82, baseType: !3836, size: 128, offset: 64)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3804, line: 75, size: 128, elements: !3837)
!3837 = !{!3838, !3839}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3836, file: !3804, line: 76, baseType: !3132, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3836, file: !3804, line: 77, baseType: !3840, size: 64, offset: 64)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3832, file: !3804, line: 83, baseType: !717, size: 256, offset: 192)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3803, file: !3804, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3803, file: !3804, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3803, file: !3804, line: 138, baseType: !7, size: 32, offset: 1056)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3803, file: !3804, line: 139, baseType: !100, size: 128, offset: 1088)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3803, file: !3804, line: 142, baseType: !2779, size: 512, offset: 1216)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3803, file: !3804, line: 143, baseType: !2759, size: 64, offset: 1728)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3803, file: !3804, line: 150, baseType: !3849, size: 256, offset: 1792)
!3849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3850, size: 256, elements: !2031)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3804, line: 38, size: 128, elements: !3851)
!3851 = !{!3852, !3853}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3850, file: !3804, line: 39, baseType: !452, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3850, file: !3804, line: 40, baseType: !452, size: 64, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3803, file: !3804, line: 156, baseType: !3855, size: 192, offset: 2048)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3804, line: 66, size: 192, elements: !3856)
!3856 = !{!3857}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3855, file: !3804, line: 67, baseType: !3858, size: 192)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3804, line: 47, size: 192, elements: !3859)
!3859 = !{!3860, !3861, !3862}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3858, file: !3804, line: 48, baseType: !328, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3858, file: !3804, line: 49, baseType: !328, size: 64, offset: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3858, file: !3804, line: 50, baseType: !328, size: 64, offset: 128)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3803, file: !3804, line: 160, baseType: !3460, size: 640, offset: 2240)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3803, file: !3804, line: 163, baseType: !3865, size: 256, offset: 2880)
!3865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 256, elements: !398)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3803, file: !3804, line: 169, baseType: !376, size: 64, offset: 3136)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3803, file: !3804, line: 172, baseType: !25, size: 32, offset: 3200)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3803, file: !3804, line: 174, baseType: !3869, size: 64, offset: 3264)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3804, line: 174, flags: DIFlagFwdDecl)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3803, file: !3804, line: 185, baseType: !3872, size: 64, offset: 3328)
!3872 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !822, line: 860, baseType: !3873)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !822, line: 853, size: 64, elements: !3874)
!3874 = !{!3875, !3876}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3873, file: !822, line: 858, baseType: !821, size: 32)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3873, file: !822, line: 859, baseType: !62, size: 32, offset: 32)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3803, file: !3804, line: 186, baseType: !452, size: 64, offset: 3392)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3803, file: !3804, line: 186, baseType: !452, size: 64, offset: 3456)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3803, file: !3804, line: 186, baseType: !452, size: 64, offset: 3520)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3803, file: !3804, line: 186, baseType: !452, size: 64, offset: 3584)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3803, file: !3804, line: 187, baseType: !452, size: 64, offset: 3648)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3803, file: !3804, line: 188, baseType: !452, size: 64, offset: 3712)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3803, file: !3804, line: 189, baseType: !3448, size: 192, offset: 3776)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3803, file: !3804, line: 190, baseType: !42, size: 64, offset: 3968)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3803, file: !3804, line: 190, baseType: !42, size: 64, offset: 4032)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3803, file: !3804, line: 190, baseType: !42, size: 64, offset: 4096)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3803, file: !3804, line: 190, baseType: !42, size: 64, offset: 4160)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3803, file: !3804, line: 191, baseType: !42, size: 64, offset: 4224)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3803, file: !3804, line: 191, baseType: !42, size: 64, offset: 4288)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3803, file: !3804, line: 191, baseType: !42, size: 64, offset: 4352)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3803, file: !3804, line: 191, baseType: !42, size: 64, offset: 4416)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3803, file: !3804, line: 192, baseType: !42, size: 64, offset: 4480)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3803, file: !3804, line: 192, baseType: !42, size: 64, offset: 4544)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3803, file: !3804, line: 192, baseType: !42, size: 64, offset: 4608)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3803, file: !3804, line: 192, baseType: !42, size: 64, offset: 4672)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3803, file: !3804, line: 193, baseType: !42, size: 64, offset: 4736)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3803, file: !3804, line: 193, baseType: !42, size: 64, offset: 4800)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3803, file: !3804, line: 194, baseType: !3899, size: 448, offset: 4864)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3900, line: 12, size: 448, elements: !3901)
!3900 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3901 = !{!3902, !3903, !3904, !3905, !3906, !3907, !3908}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3899, file: !3900, line: 15, baseType: !452, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3899, file: !3900, line: 17, baseType: !452, size: 64, offset: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3899, file: !3900, line: 19, baseType: !452, size: 64, offset: 128)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3899, file: !3900, line: 21, baseType: !452, size: 64, offset: 192)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3899, file: !3900, line: 29, baseType: !452, size: 64, offset: 256)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3899, file: !3900, line: 35, baseType: !452, size: 64, offset: 320)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3899, file: !3900, line: 44, baseType: !452, size: 64, offset: 384)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3803, file: !3804, line: 202, baseType: !454, size: 64, offset: 5312)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3803, file: !3804, line: 213, baseType: !3911, size: 2048, offset: 5376)
!3911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3912, size: 2048, elements: !3483)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3913, line: 43, size: 128, elements: !3914)
!3913 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3914 = !{!3915, !3916}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3912, file: !3913, line: 44, baseType: !41, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3912, file: !3913, line: 45, baseType: !41, size: 64, offset: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3803, file: !3804, line: 216, baseType: !3918, size: 448, offset: 7424)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3804, line: 30, size: 448, elements: !3919)
!3919 = !{!3920, !3921, !3922, !3923, !3924, !3925, !3926}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3918, file: !3804, line: 31, baseType: !25, size: 32)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3918, file: !3804, line: 32, baseType: !779, size: 64, offset: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3918, file: !3804, line: 33, baseType: !42, size: 64, offset: 128)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3918, file: !3804, line: 34, baseType: !452, size: 64, offset: 192)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3918, file: !3804, line: 34, baseType: !452, size: 64, offset: 256)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3918, file: !3804, line: 35, baseType: !42, size: 64, offset: 320)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3918, file: !3804, line: 35, baseType: !42, size: 64, offset: 384)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3803, file: !3804, line: 219, baseType: !3928, size: 64, offset: 7872)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3930, line: 41, size: 3456, elements: !3931)
!3930 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!3931 = !{!3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3948, !3949, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3929, file: !3930, line: 47, baseType: !97, size: 16)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3929, file: !3930, line: 48, baseType: !510, size: 32, offset: 32)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3929, file: !3930, line: 54, baseType: !88, size: 8, offset: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !3929, file: !3930, line: 55, baseType: !88, size: 8, offset: 72)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !3929, file: !3930, line: 73, baseType: !453, size: 64, align: 64, offset: 128)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !3929, file: !3930, line: 74, baseType: !453, size: 64, offset: 192)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !3929, file: !3930, line: 81, baseType: !453, size: 64, offset: 256)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !3929, file: !3930, line: 82, baseType: !453, size: 64, offset: 320)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !3929, file: !3930, line: 85, baseType: !453, size: 64, offset: 384)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !3929, file: !3930, line: 86, baseType: !453, size: 64, offset: 448)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !3929, file: !3930, line: 94, baseType: !453, size: 64, offset: 512)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !3929, file: !3930, line: 102, baseType: !453, size: 64, offset: 576)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !3929, file: !3930, line: 107, baseType: !3945, size: 256, offset: 640)
!3945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 256, elements: !3946)
!3946 = !{!3947}
!3947 = !DISubrange(count: 32)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !3929, file: !3930, line: 108, baseType: !88, size: 8, align: 64, offset: 896)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !3929, file: !3930, line: 110, baseType: !3950, size: 24, offset: 904)
!3950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 24, elements: !372)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !3929, file: !3930, line: 111, baseType: !510, size: 32, align: 64, offset: 960)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !3929, file: !3930, line: 113, baseType: !510, size: 32, offset: 992)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !3929, file: !3930, line: 114, baseType: !510, size: 32, offset: 1024)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !3929, file: !3930, line: 115, baseType: !510, size: 32, offset: 1056)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !3929, file: !3930, line: 117, baseType: !510, size: 32, offset: 1088)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !3929, file: !3930, line: 118, baseType: !453, size: 64, align: 64, offset: 1152)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3929, file: !3930, line: 120, baseType: !453, size: 64, offset: 1216)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3929, file: !3930, line: 121, baseType: !453, size: 64, offset: 1280)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3929, file: !3930, line: 122, baseType: !453, size: 64, offset: 1344)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3929, file: !3930, line: 123, baseType: !453, size: 64, offset: 1408)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !3929, file: !3930, line: 133, baseType: !453, size: 64, offset: 1472)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !3929, file: !3930, line: 137, baseType: !453, size: 64, offset: 1536)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !3929, file: !3930, line: 142, baseType: !453, size: 64, offset: 1600)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !3929, file: !3930, line: 143, baseType: !453, size: 64, offset: 1664)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !3929, file: !3930, line: 146, baseType: !453, size: 64, offset: 1728)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !3929, file: !3930, line: 147, baseType: !453, size: 64, offset: 1792)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !3929, file: !3930, line: 148, baseType: !453, size: 64, offset: 1856)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !3929, file: !3930, line: 149, baseType: !453, size: 64, offset: 1920)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3929, file: !3930, line: 154, baseType: !453, size: 64, offset: 1984)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3929, file: !3930, line: 155, baseType: !453, size: 64, offset: 2048)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3929, file: !3930, line: 156, baseType: !453, size: 64, offset: 2112)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3929, file: !3930, line: 158, baseType: !453, size: 64, offset: 2176)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3929, file: !3930, line: 159, baseType: !453, size: 64, offset: 2240)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !3929, file: !3930, line: 162, baseType: !453, size: 64, offset: 2304)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !3929, file: !3930, line: 163, baseType: !453, size: 64, offset: 2368)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !3929, file: !3930, line: 164, baseType: !453, size: 64, offset: 2432)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !3929, file: !3930, line: 167, baseType: !453, size: 64, offset: 2496)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !3929, file: !3930, line: 168, baseType: !453, size: 64, offset: 2560)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !3929, file: !3930, line: 171, baseType: !453, size: 64, offset: 2624)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !3929, file: !3930, line: 172, baseType: !453, size: 64, offset: 2688)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !3929, file: !3930, line: 175, baseType: !453, size: 64, offset: 2752)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !3929, file: !3930, line: 178, baseType: !453, size: 64, offset: 2816)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !3929, file: !3930, line: 179, baseType: !453, size: 64, offset: 2880)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !3929, file: !3930, line: 182, baseType: !510, size: 32, offset: 2944)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !3929, file: !3930, line: 186, baseType: !453, size: 64, align: 64, offset: 3008)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !3929, file: !3930, line: 194, baseType: !453, size: 64, offset: 3072)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !3929, file: !3930, line: 195, baseType: !453, size: 64, offset: 3136)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !3929, file: !3930, line: 199, baseType: !453, size: 64, offset: 3200)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !3929, file: !3930, line: 200, baseType: !453, size: 64, offset: 3264)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !3929, file: !3930, line: 203, baseType: !453, size: 64, offset: 3328)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !3929, file: !3930, line: 204, baseType: !453, size: 64, offset: 3392)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3803, file: !3804, line: 222, baseType: !7, size: 32, offset: 7936)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3803, file: !3804, line: 223, baseType: !3994, size: 64, offset: 8000)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3804, line: 223, flags: DIFlagFwdDecl)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3803, file: !3804, line: 230, baseType: !545, size: 8, offset: 8064)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3803, file: !3804, line: 231, baseType: !514, size: 16, offset: 8080)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3803, file: !3804, line: 232, baseType: !514, size: 16, offset: 8096)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3803, file: !3804, line: 234, baseType: !280, size: 64, offset: 8128)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3803, file: !3804, line: 237, baseType: !335, size: 256, offset: 8192)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3803, file: !3804, line: 243, baseType: !484, size: 320, offset: 8448)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3133, file: !2549, line: 1111, baseType: !4003, size: 64, offset: 15424)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3804, line: 20, size: 16640, elements: !4005)
!4005 = !{!4006, !4007, !4008, !4009}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4004, file: !3804, line: 21, baseType: !62, size: 32)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4004, file: !3804, line: 22, baseType: !380, size: 32, offset: 32)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4004, file: !3804, line: 23, baseType: !57, size: 192, offset: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4004, file: !3804, line: 24, baseType: !4010, size: 16384, offset: 256)
!4010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4011, size: 16384, elements: !1152)
!4011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3815, line: 51, size: 256, elements: !4012)
!4012 = !{!4013}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4011, file: !3815, line: 52, baseType: !4014, size: 256)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3815, line: 37, size: 256, elements: !4015)
!4015 = !{!4016, !4023, !4024, !4028}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4014, file: !3815, line: 39, baseType: !4017, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4018, line: 83, baseType: !4019)
!4018 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4018, line: 82, baseType: !4021)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{null, !25}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4014, file: !3815, line: 40, baseType: !42, size: 64, offset: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4014, file: !3815, line: 46, baseType: !4025, size: 64, offset: 128)
!4025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4018, line: 86, baseType: !4026)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4018, line: 85, baseType: !2247)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4014, file: !3815, line: 48, baseType: !3819, size: 64, offset: 192)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3133, file: !2549, line: 1112, baseType: !3819, size: 64, offset: 15488)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3133, file: !2549, line: 1113, baseType: !3819, size: 64, offset: 15552)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3133, file: !2549, line: 1115, baseType: !3819, size: 64, offset: 15616)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3133, file: !2549, line: 1116, baseType: !3814, size: 192, offset: 15680)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3133, file: !2549, line: 1117, baseType: !42, size: 64, offset: 15872)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3133, file: !2549, line: 1118, baseType: !38, size: 64, offset: 15936)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3133, file: !2549, line: 1119, baseType: !7, size: 32, offset: 16000)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3133, file: !2549, line: 1121, baseType: !274, size: 64, offset: 16064)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3133, file: !2549, line: 1125, baseType: !4038, size: 64, offset: 16128)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2549, line: 43, flags: DIFlagFwdDecl)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3133, file: !2549, line: 1127, baseType: !415, size: 32, offset: 16192)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3133, file: !2549, line: 1128, baseType: !7, size: 32, offset: 16224)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3133, file: !2549, line: 1130, baseType: !4043, size: 128, offset: 16256)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4044, line: 37, size: 128, elements: !4045)
!4044 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4045 = !{!4046, !4047, !4048}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4043, file: !4044, line: 38, baseType: !25, size: 32)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4043, file: !4044, line: 39, baseType: !52, size: 32, offset: 32)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4043, file: !4044, line: 40, baseType: !4049, size: 64, offset: 64)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4044, line: 24, flags: DIFlagFwdDecl)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3133, file: !2549, line: 1131, baseType: !4052, size: 256, offset: 16384)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4053, line: 12, size: 256, elements: !4054)
!4053 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4054 = !{!4055, !4056, !4057, !4058}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4052, file: !4053, line: 13, baseType: !556, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4052, file: !4053, line: 14, baseType: !42, size: 64, offset: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4052, file: !4053, line: 15, baseType: !42, size: 64, offset: 128)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4052, file: !4053, line: 16, baseType: !545, size: 8, offset: 192)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3133, file: !2549, line: 1134, baseType: !452, size: 64, offset: 16640)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3133, file: !2549, line: 1135, baseType: !452, size: 64, offset: 16704)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3133, file: !2549, line: 1138, baseType: !62, size: 32, offset: 16768)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3133, file: !2549, line: 1141, baseType: !340, size: 32, offset: 16800)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3133, file: !2549, line: 1143, baseType: !4064, size: 64, offset: 16832)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2549, line: 735, size: 64, elements: !4065)
!4065 = !{!4066}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4064, file: !2549, line: 736, baseType: !4067, size: 64)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3133, file: !2549, line: 1147, baseType: !1222, size: 128, offset: 16896)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3133, file: !2549, line: 1149, baseType: !3132, size: 64, offset: 17024)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3133, file: !2549, line: 1151, baseType: !4071, size: 64, offset: 17088)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2549, line: 1151, flags: DIFlagFwdDecl)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3133, file: !2549, line: 1188, baseType: !23, size: 64, offset: 17152)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3133, file: !2549, line: 1191, baseType: !4075, size: 64, offset: 17216)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2549, line: 44, flags: DIFlagFwdDecl)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3133, file: !2549, line: 1194, baseType: !4078, size: 64, offset: 17280)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2549, line: 45, flags: DIFlagFwdDecl)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3133, file: !2549, line: 1197, baseType: !4081, size: 64, offset: 17344)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2549, line: 61, flags: DIFlagFwdDecl)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3133, file: !2549, line: 1199, baseType: !4084, size: 64, offset: 17408)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2553, line: 99, size: 128, elements: !4086)
!4086 = !{!4087, !4088, !4089}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4085, file: !2553, line: 100, baseType: !326, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4085, file: !2553, line: 101, baseType: !52, size: 32, offset: 64)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4085, file: !2553, line: 103, baseType: !29, size: 16, offset: 96)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3133, file: !2549, line: 1202, baseType: !4091, size: 64, offset: 17472)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2549, line: 48, flags: DIFlagFwdDecl)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3133, file: !2549, line: 1205, baseType: !42, size: 64, offset: 17536)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3133, file: !2549, line: 1206, baseType: !4095, size: 64, offset: 17600)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3815, line: 14, baseType: !4097)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3815, line: 12, size: 384, elements: !4098)
!4098 = !{!4099}
!4099 = !DIDerivedType(tag: DW_TAG_member, scope: !4097, file: !3815, line: 13, baseType: !4100, size: 384)
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4097, file: !3815, line: 13, size: 384, elements: !4101)
!4101 = !{!4102, !4103, !4104, !4105}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4100, file: !3815, line: 13, baseType: !25, size: 32)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4100, file: !3815, line: 13, baseType: !25, size: 32, offset: 32)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4100, file: !3815, line: 13, baseType: !25, size: 32, offset: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4100, file: !3815, line: 13, baseType: !4106, size: 256, offset: 128)
!4106 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4107, line: 37, size: 256, elements: !4108)
!4107 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4108 = !{!4109, !4114, !4127, !4133, !4142, !4169, !4174}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4106, file: !4107, line: 42, baseType: !4110, size: 64)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4106, file: !4107, line: 39, size: 64, elements: !4111)
!4111 = !{!4112, !4113}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4110, file: !4107, line: 40, baseType: !3425, size: 32)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4110, file: !4107, line: 41, baseType: !421, size: 32, offset: 32)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4106, file: !4107, line: 50, baseType: !4115, size: 192)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4106, file: !4107, line: 45, size: 192, elements: !4116)
!4116 = !{!4117, !4119, !4120, !4126}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4115, file: !4107, line: 46, baseType: !4118, size: 32)
!4118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !40, line: 95, baseType: !25)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4115, file: !4107, line: 47, baseType: !25, size: 32, offset: 32)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4115, file: !4107, line: 48, baseType: !4121, size: 64, offset: 64)
!4121 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4107, line: 11, baseType: !4122)
!4122 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4107, line: 8, size: 64, elements: !4123)
!4123 = !{!4124, !4125}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4122, file: !4107, line: 9, baseType: !25, size: 32)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4122, file: !4107, line: 10, baseType: !23, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4115, file: !4107, line: 49, baseType: !25, size: 32, offset: 128)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4106, file: !4107, line: 57, baseType: !4128, size: 128)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4106, file: !4107, line: 53, size: 128, elements: !4129)
!4129 = !{!4130, !4131, !4132}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4128, file: !4107, line: 54, baseType: !3425, size: 32)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4128, file: !4107, line: 55, baseType: !421, size: 32, offset: 32)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4128, file: !4107, line: 56, baseType: !4121, size: 64, offset: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4106, file: !4107, line: 66, baseType: !4134, size: 256)
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4106, file: !4107, line: 60, size: 256, elements: !4135)
!4135 = !{!4136, !4137, !4138, !4139, !4141}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4134, file: !4107, line: 61, baseType: !3425, size: 32)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4134, file: !4107, line: 62, baseType: !421, size: 32, offset: 32)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4134, file: !4107, line: 63, baseType: !25, size: 32, offset: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4134, file: !4107, line: 64, baseType: !4140, size: 64, offset: 128)
!4140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !40, line: 94, baseType: !1009)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4134, file: !4107, line: 65, baseType: !4140, size: 64, offset: 192)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4106, file: !4107, line: 105, baseType: !4143, size: 256)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4106, file: !4107, line: 69, size: 256, elements: !4144)
!4144 = !{!4145, !4146}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4143, file: !4107, line: 70, baseType: !23, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, scope: !4143, file: !4107, line: 79, baseType: !4147, size: 192, offset: 64)
!4147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4143, file: !4107, line: 79, size: 192, elements: !4148)
!4148 = !{!4149, !4150, !4151, !4158, !4163}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4147, file: !4107, line: 81, baseType: !25, size: 32)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4147, file: !4107, line: 86, baseType: !514, size: 16)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4147, file: !4107, line: 92, baseType: !4152, size: 192)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4147, file: !4107, line: 88, size: 192, elements: !4153)
!4153 = !{!4154, !4156, !4157}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4152, file: !4107, line: 89, baseType: !4155, size: 64)
!4155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 64, elements: !2820)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4152, file: !4107, line: 90, baseType: !23, size: 64, offset: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4152, file: !4107, line: 91, baseType: !23, size: 64, offset: 128)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4147, file: !4107, line: 97, baseType: !4159, size: 96)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4147, file: !4107, line: 94, size: 96, elements: !4160)
!4160 = !{!4161, !4162}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4159, file: !4107, line: 95, baseType: !4155, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4159, file: !4107, line: 96, baseType: !510, size: 32, offset: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4147, file: !4107, line: 103, baseType: !4164, size: 128)
!4164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4147, file: !4107, line: 99, size: 128, elements: !4165)
!4165 = !{!4166, !4167, !4168}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4164, file: !4107, line: 100, baseType: !42, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4164, file: !4107, line: 101, baseType: !510, size: 32, offset: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4164, file: !4107, line: 102, baseType: !510, size: 32, offset: 96)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4106, file: !4107, line: 111, baseType: !4170, size: 128)
!4170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4106, file: !4107, line: 108, size: 128, elements: !4171)
!4171 = !{!4172, !4173}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4170, file: !4107, line: 109, baseType: !779, size: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4170, file: !4107, line: 110, baseType: !25, size: 32, offset: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4106, file: !4107, line: 118, baseType: !4175, size: 128)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4106, file: !4107, line: 114, size: 128, elements: !4176)
!4176 = !{!4177, !4178, !4179}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4175, file: !4107, line: 115, baseType: !23, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4175, file: !4107, line: 116, baseType: !25, size: 32, offset: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4175, file: !4107, line: 117, baseType: !7, size: 32, offset: 96)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3133, file: !2549, line: 1208, baseType: !3899, size: 448, offset: 17664)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3133, file: !2549, line: 1215, baseType: !452, size: 64, offset: 18112)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3133, file: !2549, line: 1217, baseType: !452, size: 64, offset: 18176)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3133, file: !2549, line: 1219, baseType: !452, size: 64, offset: 18240)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3133, file: !2549, line: 1223, baseType: !4185, size: 64, offset: 18304)
!4185 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4186, line: 99, baseType: !4187)
!4186 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4186, line: 99, size: 64, elements: !4188)
!4188 = !{!4189}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4187, file: !4186, line: 99, baseType: !3295, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3133, file: !2549, line: 1225, baseType: !821, size: 32, offset: 18368)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3133, file: !2549, line: 1226, baseType: !25, size: 32, offset: 18400)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3133, file: !2549, line: 1227, baseType: !25, size: 32, offset: 18432)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3133, file: !2549, line: 1231, baseType: !3541, size: 64, offset: 18496)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3133, file: !2549, line: 1233, baseType: !100, size: 128, offset: 18560)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3133, file: !2549, line: 1240, baseType: !4196, size: 64, offset: 18688)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2549, line: 62, flags: DIFlagFwdDecl)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3133, file: !2549, line: 1242, baseType: !4199, size: 64, offset: 18752)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2549, line: 1242, flags: DIFlagFwdDecl)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3133, file: !2549, line: 1244, baseType: !100, size: 128, offset: 18816)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3133, file: !2549, line: 1245, baseType: !4203, size: 64, offset: 18944)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2549, line: 51, flags: DIFlagFwdDecl)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3133, file: !2549, line: 1246, baseType: !335, size: 256, offset: 19008)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3133, file: !2549, line: 1247, baseType: !7, size: 32, offset: 19264)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3133, file: !2549, line: 1250, baseType: !4208, size: 64, offset: 19328)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2549, line: 57, flags: DIFlagFwdDecl)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3133, file: !2549, line: 1251, baseType: !335, size: 256, offset: 19392)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3133, file: !2549, line: 1252, baseType: !100, size: 128, offset: 19648)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3133, file: !2549, line: 1259, baseType: !1839, size: 64, offset: 19776)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3133, file: !2549, line: 1260, baseType: !514, size: 16, offset: 19840)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3133, file: !2549, line: 1261, baseType: !514, size: 16, offset: 19856)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3133, file: !2549, line: 1314, baseType: !4216, size: 64, offset: 19904)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4218, line: 62, size: 256, align: 256, elements: !4219)
!4218 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4219 = !{!4220, !4221, !4222, !4223, !4224, !4225, !4226}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4217, file: !4218, line: 75, baseType: !510, size: 32)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4217, file: !4218, line: 90, baseType: !510, size: 32, offset: 32)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4217, file: !4218, line: 112, baseType: !453, size: 64, offset: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4217, file: !4218, line: 132, baseType: !510, size: 32, offset: 128)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4217, file: !4218, line: 140, baseType: !510, size: 32, offset: 160)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4217, file: !4218, line: 149, baseType: !510, size: 32, offset: 192)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4217, file: !4218, line: 154, baseType: !4227, offset: 224)
!4227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, elements: !411)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3133, file: !2549, line: 1315, baseType: !509, size: 32, offset: 19968)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3133, file: !2549, line: 1316, baseType: !509, size: 32, offset: 20000)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3133, file: !2549, line: 1321, baseType: !42, size: 64, offset: 20032)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3133, file: !2549, line: 1325, baseType: !25, size: 32, offset: 20096)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3133, file: !2549, line: 1326, baseType: !25, size: 32, offset: 20128)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3133, file: !2549, line: 1327, baseType: !25, size: 32, offset: 20160)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3133, file: !2549, line: 1328, baseType: !25, size: 32, offset: 20192)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3133, file: !2549, line: 1329, baseType: !271, size: 128, align: 64, offset: 20224)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3133, file: !2549, line: 1332, baseType: !4237, size: 128, offset: 20352)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4238, line: 51, size: 128, elements: !4239)
!4238 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4239 = !{!4240, !4245, !4246}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4237, file: !4238, line: 60, baseType: !4241, size: 64)
!4241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4242, line: 7, size: 64, elements: !4243)
!4242 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4243 = !{!4244}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4241, file: !4242, line: 12, baseType: !3292, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4237, file: !4238, line: 63, baseType: !545, size: 8, offset: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4237, file: !4238, line: 70, baseType: !545, size: 8, offset: 72)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3133, file: !2549, line: 1335, baseType: !4248, size: 64, offset: 20480)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2549, line: 59, flags: DIFlagFwdDecl)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3133, file: !2549, line: 1337, baseType: !4251, size: 128, offset: 20544)
!4251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4238, line: 39, size: 128, elements: !4252)
!4252 = !{!4253, !4254, !4255}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4251, file: !4238, line: 40, baseType: !1237, size: 64)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4251, file: !4238, line: 42, baseType: !510, size: 32, offset: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4251, file: !4238, line: 43, baseType: !510, size: 32, offset: 96)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3133, file: !2549, line: 1340, baseType: !4257, size: 64, offset: 20672)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2549, line: 69, flags: DIFlagFwdDecl)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3133, file: !2549, line: 1351, baseType: !25, size: 32, offset: 20736)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3133, file: !2549, line: 1352, baseType: !25, size: 32, offset: 20768)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3133, file: !2549, line: 1354, baseType: !42, size: 64, offset: 20800)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3133, file: !2549, line: 1364, baseType: !452, size: 64, offset: 20864)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3133, file: !2549, line: 1365, baseType: !452, size: 64, offset: 20928)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3133, file: !2549, line: 1412, baseType: !42, size: 64, offset: 20992)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3133, file: !2549, line: 1453, baseType: !2547, size: 64, offset: 21056)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3133, file: !2549, line: 1457, baseType: !4267, size: 64, offset: 21120)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !247, line: 61, size: 576, elements: !4269)
!4269 = !{!4270, !4271, !4290, !4293, !4294, !4327, !4337}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4268, file: !247, line: 62, baseType: !246, size: 32)
!4271 = !DIDerivedType(tag: DW_TAG_member, scope: !4268, file: !247, line: 64, baseType: !4272, size: 192, offset: 64)
!4272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4268, file: !247, line: 64, size: 192, elements: !4273)
!4273 = !{!4274, !4285}
!4274 = !DIDerivedType(tag: DW_TAG_member, scope: !4272, file: !247, line: 65, baseType: !4275, size: 192)
!4275 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4272, file: !247, line: 65, size: 192, elements: !4276)
!4276 = !{!4277, !4284}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4275, file: !247, line: 66, baseType: !4278, size: 128)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4279, line: 50, size: 128, elements: !4280)
!4279 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4280 = !{!4281, !4282, !4283}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4278, file: !4279, line: 52, baseType: !42, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4278, file: !4279, line: 54, baseType: !7, size: 32, offset: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4278, file: !4279, line: 55, baseType: !7, size: 32, offset: 96)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4275, file: !247, line: 67, baseType: !42, size: 64, offset: 128)
!4285 = !DIDerivedType(tag: DW_TAG_member, scope: !4272, file: !247, line: 70, baseType: !4286, size: 192)
!4286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4272, file: !247, line: 70, size: 192, elements: !4287)
!4287 = !{!4288, !4289}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4286, file: !247, line: 71, baseType: !271, size: 128, align: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4286, file: !247, line: 72, baseType: !42, size: 64, offset: 128)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4268, file: !247, line: 76, baseType: !4291, size: 64, offset: 256)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !247, line: 76, flags: DIFlagFwdDecl)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4268, file: !247, line: 77, baseType: !42, size: 64, offset: 320)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4268, file: !247, line: 79, baseType: !4295, size: 64, offset: 384)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4279, line: 25, size: 256, elements: !4297)
!4297 = !{!4298, !4304, !4308}
!4298 = !DIDerivedType(tag: DW_TAG_member, scope: !4296, file: !4279, line: 26, baseType: !4299, size: 128)
!4299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4296, file: !4279, line: 26, size: 128, elements: !4300)
!4300 = !{!4301, !4303}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4299, file: !4279, line: 27, baseType: !4302, size: 128)
!4302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 128, elements: !3483)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4299, file: !4279, line: 28, baseType: !4302, size: 128)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4296, file: !4279, line: 31, baseType: !4305, size: 64, offset: 128)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4307)
!4307 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4279, line: 23, flags: DIFlagFwdDecl)
!4308 = !DIDerivedType(tag: DW_TAG_member, scope: !4296, file: !4279, line: 33, baseType: !4309, size: 64, offset: 192)
!4309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4296, file: !4279, line: 33, size: 64, elements: !4310)
!4310 = !{!4311, !4317, !4322}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4309, file: !4279, line: 38, baseType: !4312, size: 64)
!4312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4309, file: !4279, line: 34, size: 64, elements: !4313)
!4313 = !{!4314, !4315, !4316}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4312, file: !4279, line: 35, baseType: !469, size: 32)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4312, file: !4279, line: 36, baseType: !86, size: 8, offset: 32)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4312, file: !4279, line: 37, baseType: !86, size: 8, offset: 40)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4309, file: !4279, line: 42, baseType: !4318, size: 16)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4309, file: !4279, line: 39, size: 16, elements: !4319)
!4319 = !{!4320, !4321}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4318, file: !4279, line: 40, baseType: !86, size: 8)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4318, file: !4279, line: 41, baseType: !86, size: 8, offset: 8)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4309, file: !4279, line: 46, baseType: !4323, size: 16)
!4323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4309, file: !4279, line: 43, size: 16, elements: !4324)
!4324 = !{!4325, !4326}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4323, file: !4279, line: 44, baseType: !86, size: 8)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4323, file: !4279, line: 45, baseType: !86, size: 8, offset: 8)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4268, file: !247, line: 81, baseType: !4328, size: 64, offset: 448)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !247, line: 85, size: 384, elements: !4330)
!4330 = !{!4331, !4332, !4333, !4334, !4335, !4336}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4329, file: !247, line: 86, baseType: !4291, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4329, file: !247, line: 87, baseType: !42, size: 64, offset: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4329, file: !247, line: 88, baseType: !42, size: 64, offset: 128)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4329, file: !247, line: 89, baseType: !42, size: 64, offset: 192)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4329, file: !247, line: 90, baseType: !545, size: 8, offset: 256)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4329, file: !247, line: 92, baseType: !4328, size: 64, offset: 320)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4268, file: !247, line: 82, baseType: !7, size: 32, offset: 512)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3133, file: !2549, line: 1463, baseType: !4339, offset: 21184)
!4339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2549, line: 739, elements: !301)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3133, file: !2549, line: 1470, baseType: !271, size: 128, align: 64, offset: 21184)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3133, file: !2549, line: 1471, baseType: !380, size: 32, offset: 21312)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3133, file: !2549, line: 1472, baseType: !25, size: 32, offset: 21344)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3133, file: !2549, line: 1474, baseType: !3132, size: 64, offset: 21376)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3133, file: !2549, line: 1475, baseType: !2142, size: 320, offset: 21440)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3133, file: !2549, line: 1478, baseType: !4346, size: 64, offset: 21760)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2549, line: 1478, flags: DIFlagFwdDecl)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3133, file: !2549, line: 1482, baseType: !380, size: 32, offset: 21824)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3133, file: !2549, line: 1489, baseType: !23, size: 64, offset: 21888)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3133, file: !2549, line: 1504, baseType: !23, size: 64, offset: 21952)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3133, file: !2549, line: 1505, baseType: !453, size: 64, offset: 22016)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3133, file: !2549, line: 1506, baseType: !452, size: 64, offset: 22080)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3133, file: !2549, line: 1507, baseType: !453, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3133, file: !2549, line: 1508, baseType: !453, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3133, file: !2549, line: 1509, baseType: !453, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3133, file: !2549, line: 1510, baseType: !271, size: 128, align: 64, offset: 22208)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3133, file: !2549, line: 1511, baseType: !25, size: 32, offset: 22336)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3133, file: !2549, line: 1515, baseType: !4359, size: 64, offset: 22400)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !316, line: 56, size: 64, elements: !4360)
!4360 = !{!4361}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4359, file: !316, line: 57, baseType: !319, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3133, file: !2549, line: 1518, baseType: !4359, size: 64, offset: 22464)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3133, file: !2549, line: 1528, baseType: !271, size: 128, align: 64, offset: 22528)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3133, file: !2549, line: 1552, baseType: !4365, size: 35328, offset: 23040)
!4365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4366, line: 430, size: 35328, elements: !4367)
!4366 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4367 = !{!4368, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4397, !4398, !4399, !4400, !4401, !4402, !4405, !4406, !4407, !4408}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4365, file: !4366, line: 432, baseType: !4369, size: 192)
!4369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4370, size: 192, elements: !372)
!4370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4371, line: 16, size: 64, elements: !4372)
!4371 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4372 = !{!4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4370, file: !4371, line: 17, baseType: !96, size: 16)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4370, file: !4371, line: 18, baseType: !96, size: 16, offset: 16)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4370, file: !4371, line: 19, baseType: !96, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4370, file: !4371, line: 19, baseType: !96, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4370, file: !4371, line: 19, baseType: !96, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4370, file: !4371, line: 19, baseType: !96, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4370, file: !4371, line: 19, baseType: !96, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4370, file: !4371, line: 20, baseType: !96, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4370, file: !4371, line: 20, baseType: !96, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4370, file: !4371, line: 20, baseType: !96, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4370, file: !4371, line: 20, baseType: !96, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4370, file: !4371, line: 20, baseType: !96, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4370, file: !4371, line: 20, baseType: !96, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4365, file: !4366, line: 436, baseType: !42, size: 64, offset: 192)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4365, file: !4366, line: 440, baseType: !29, size: 16, offset: 256)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4365, file: !4366, line: 441, baseType: !29, size: 16, offset: 272)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4365, file: !4366, line: 442, baseType: !29, size: 16, offset: 288)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4365, file: !4366, line: 443, baseType: !29, size: 16, offset: 304)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4365, file: !4366, line: 447, baseType: !42, size: 64, offset: 320)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4365, file: !4366, line: 448, baseType: !42, size: 64, offset: 384)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4365, file: !4366, line: 459, baseType: !4394, size: 256, offset: 448)
!4394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4395, size: 256, elements: !398)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4366, line: 428, flags: DIFlagFwdDecl)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4365, file: !4366, line: 461, baseType: !42, size: 64, offset: 704)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4365, file: !4366, line: 463, baseType: !42, size: 64, offset: 768)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4365, file: !4366, line: 465, baseType: !42, size: 64, offset: 832)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4365, file: !4366, line: 466, baseType: !42, size: 64, offset: 896)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4365, file: !4366, line: 467, baseType: !42, size: 64, offset: 960)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4365, file: !4366, line: 473, baseType: !4403, size: 64, offset: 1024)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4366, line: 10, flags: DIFlagFwdDecl)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4365, file: !4366, line: 480, baseType: !42, size: 64, offset: 1088)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4365, file: !4366, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4365, file: !4366, line: 491, baseType: !509, size: 32, offset: 1184)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4365, file: !4366, line: 501, baseType: !4409, size: 33792, offset: 1536)
!4409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4410, line: 448, size: 33792, elements: !4411)
!4410 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4411 = !{!4412, !4413, !4414, !4574, !4575, !4581, !4582}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4409, file: !4410, line: 461, baseType: !7, size: 32)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4409, file: !4410, line: 468, baseType: !42, size: 64, offset: 64)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4409, file: !4410, line: 476, baseType: !4415, size: 64, offset: 128)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4410, line: 356, size: 33280, align: 512, elements: !4417)
!4417 = !{!4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4416, file: !4410, line: 358, baseType: !7, size: 32)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4416, file: !4410, line: 361, baseType: !7, size: 32, offset: 32)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4416, file: !4410, line: 364, baseType: !452, size: 64, offset: 64)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4416, file: !4410, line: 367, baseType: !452, size: 64, offset: 128)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4416, file: !4410, line: 370, baseType: !452, size: 64, offset: 192)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4416, file: !4410, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4416, file: !4410, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4416, file: !4410, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4416, file: !4410, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4416, file: !4410, line: 397, baseType: !4428, size: 32768, offset: 512)
!4428 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4410, line: 348, size: 32768, elements: !4429)
!4429 = !{!4430, !4445, !4482, !4559, !4572}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4428, file: !4410, line: 349, baseType: !4431, size: 896)
!4431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4410, line: 12, size: 896, elements: !4432)
!4432 = !{!4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4444}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4431, file: !4410, line: 13, baseType: !509, size: 32)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4431, file: !4410, line: 14, baseType: !509, size: 32, offset: 32)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4431, file: !4410, line: 15, baseType: !509, size: 32, offset: 64)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4431, file: !4410, line: 16, baseType: !509, size: 32, offset: 96)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4431, file: !4410, line: 17, baseType: !509, size: 32, offset: 128)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4431, file: !4410, line: 18, baseType: !509, size: 32, offset: 160)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4431, file: !4410, line: 19, baseType: !509, size: 32, offset: 192)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4431, file: !4410, line: 22, baseType: !4441, size: 640, offset: 224)
!4441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 640, elements: !4442)
!4442 = !{!4443}
!4443 = !DISubrange(count: 20)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4431, file: !4410, line: 25, baseType: !509, size: 32, offset: 864)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4428, file: !4410, line: 350, baseType: !4446, size: 4096, align: 128)
!4446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4410, line: 34, size: 4096, align: 128, elements: !4447)
!4447 = !{!4448, !4449, !4450, !4451, !4452, !4467, !4468, !4469, !4471, !4473, !4477}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4446, file: !4410, line: 35, baseType: !96, size: 16)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4446, file: !4410, line: 36, baseType: !96, size: 16, offset: 16)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4446, file: !4410, line: 37, baseType: !96, size: 16, offset: 32)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4446, file: !4410, line: 38, baseType: !96, size: 16, offset: 48)
!4452 = !DIDerivedType(tag: DW_TAG_member, scope: !4446, file: !4410, line: 39, baseType: !4453, size: 128, offset: 64)
!4453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4446, file: !4410, line: 39, size: 128, elements: !4454)
!4454 = !{!4455, !4460}
!4455 = !DIDerivedType(tag: DW_TAG_member, scope: !4453, file: !4410, line: 40, baseType: !4456, size: 128)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4453, file: !4410, line: 40, size: 128, elements: !4457)
!4457 = !{!4458, !4459}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4456, file: !4410, line: 41, baseType: !452, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4456, file: !4410, line: 42, baseType: !452, size: 64, offset: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, scope: !4453, file: !4410, line: 44, baseType: !4461, size: 128)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4453, file: !4410, line: 44, size: 128, elements: !4462)
!4462 = !{!4463, !4464, !4465, !4466}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4461, file: !4410, line: 45, baseType: !509, size: 32)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4461, file: !4410, line: 46, baseType: !509, size: 32, offset: 32)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4461, file: !4410, line: 47, baseType: !509, size: 32, offset: 64)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4461, file: !4410, line: 48, baseType: !509, size: 32, offset: 96)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4446, file: !4410, line: 51, baseType: !509, size: 32, offset: 192)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4446, file: !4410, line: 52, baseType: !509, size: 32, offset: 224)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4446, file: !4410, line: 55, baseType: !4470, size: 1024, offset: 256)
!4470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 1024, elements: !3946)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4446, file: !4410, line: 58, baseType: !4472, size: 2048, offset: 1280)
!4472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 2048, elements: !1152)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4446, file: !4410, line: 60, baseType: !4474, size: 384, offset: 3328)
!4474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 384, elements: !4475)
!4475 = !{!4476}
!4476 = !DISubrange(count: 12)
!4477 = !DIDerivedType(tag: DW_TAG_member, scope: !4446, file: !4410, line: 62, baseType: !4478, size: 384, offset: 3712)
!4478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4446, file: !4410, line: 62, size: 384, elements: !4479)
!4479 = !{!4480, !4481}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4478, file: !4410, line: 63, baseType: !4474, size: 384)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4478, file: !4410, line: 64, baseType: !4474, size: 384)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4428, file: !4410, line: 351, baseType: !4483, size: 1088)
!4483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4410, line: 79, size: 1088, elements: !4484)
!4484 = !{!4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4558}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4483, file: !4410, line: 80, baseType: !509, size: 32)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4483, file: !4410, line: 81, baseType: !509, size: 32, offset: 32)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4483, file: !4410, line: 82, baseType: !509, size: 32, offset: 64)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4483, file: !4410, line: 83, baseType: !509, size: 32, offset: 96)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4483, file: !4410, line: 84, baseType: !509, size: 32, offset: 128)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4483, file: !4410, line: 85, baseType: !509, size: 32, offset: 160)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4483, file: !4410, line: 86, baseType: !509, size: 32, offset: 192)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4483, file: !4410, line: 88, baseType: !4441, size: 640, offset: 224)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4483, file: !4410, line: 89, baseType: !86, size: 8, offset: 864)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4483, file: !4410, line: 90, baseType: !86, size: 8, offset: 872)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4483, file: !4410, line: 91, baseType: !86, size: 8, offset: 880)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4483, file: !4410, line: 92, baseType: !86, size: 8, offset: 888)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4483, file: !4410, line: 93, baseType: !86, size: 8, offset: 896)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4483, file: !4410, line: 94, baseType: !86, size: 8, offset: 904)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4483, file: !4410, line: 95, baseType: !4500, size: 64, offset: 960)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4502, line: 11, size: 128, elements: !4503)
!4502 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4503 = !{!4504, !4505}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4501, file: !4502, line: 12, baseType: !779, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4501, file: !4502, line: 13, baseType: !4506, size: 64, offset: 64)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4508, line: 103, size: 1344, elements: !4509)
!4508 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4509 = !{!4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4538, !4539, !4540}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4507, file: !4508, line: 109, baseType: !42, size: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4507, file: !4508, line: 110, baseType: !42, size: 64, offset: 64)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4507, file: !4508, line: 111, baseType: !42, size: 64, offset: 128)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4507, file: !4508, line: 112, baseType: !42, size: 64, offset: 192)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4507, file: !4508, line: 113, baseType: !42, size: 64, offset: 256)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4507, file: !4508, line: 114, baseType: !42, size: 64, offset: 320)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4507, file: !4508, line: 117, baseType: !42, size: 64, offset: 384)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4507, file: !4508, line: 118, baseType: !42, size: 64, offset: 448)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4507, file: !4508, line: 119, baseType: !42, size: 64, offset: 512)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4507, file: !4508, line: 120, baseType: !42, size: 64, offset: 576)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4507, file: !4508, line: 121, baseType: !42, size: 64, offset: 640)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4507, file: !4508, line: 122, baseType: !42, size: 64, offset: 704)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4507, file: !4508, line: 123, baseType: !42, size: 64, offset: 768)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4507, file: !4508, line: 124, baseType: !42, size: 64, offset: 832)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4507, file: !4508, line: 125, baseType: !42, size: 64, offset: 896)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4507, file: !4508, line: 139, baseType: !42, size: 64, offset: 960)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4507, file: !4508, line: 142, baseType: !42, size: 64, offset: 1024)
!4527 = !DIDerivedType(tag: DW_TAG_member, scope: !4507, file: !4508, line: 144, baseType: !4528, size: 64, offset: 1088)
!4528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4507, file: !4508, line: 144, size: 64, elements: !4529)
!4529 = !{!4530, !4531, !4532}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4528, file: !4508, line: 146, baseType: !96, size: 16)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4528, file: !4508, line: 148, baseType: !452, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4528, file: !4508, line: 150, baseType: !4533, size: 64)
!4533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4508, line: 59, size: 64, elements: !4534)
!4534 = !{!4535, !4536, !4537}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4533, file: !4508, line: 61, baseType: !452, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4533, file: !4508, line: 63, baseType: !452, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4533, file: !4508, line: 65, baseType: !452, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4507, file: !4508, line: 153, baseType: !42, size: 64, offset: 1152)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4507, file: !4508, line: 154, baseType: !42, size: 64, offset: 1216)
!4540 = !DIDerivedType(tag: DW_TAG_member, scope: !4507, file: !4508, line: 156, baseType: !4541, size: 64, offset: 1280)
!4541 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4507, file: !4508, line: 156, size: 64, elements: !4542)
!4542 = !{!4543, !4544, !4545}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4541, file: !4508, line: 158, baseType: !96, size: 16)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4541, file: !4508, line: 160, baseType: !452, size: 64)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4541, file: !4508, line: 162, baseType: !4546, size: 64)
!4546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4508, line: 69, size: 64, elements: !4547)
!4547 = !{!4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4546, file: !4508, line: 71, baseType: !452, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4546, file: !4508, line: 73, baseType: !452, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4546, file: !4508, line: 75, baseType: !452, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4546, file: !4508, line: 77, baseType: !452, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4546, file: !4508, line: 80, baseType: !452, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4546, file: !4508, line: 83, baseType: !452, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4546, file: !4508, line: 86, baseType: !452, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4546, file: !4508, line: 88, baseType: !452, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4546, file: !4508, line: 93, baseType: !452, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4546, file: !4508, line: 100, baseType: !452, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4483, file: !4410, line: 96, baseType: !509, size: 32, offset: 1024)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4428, file: !4410, line: 352, baseType: !4560, size: 4608, align: 512)
!4560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4410, line: 333, size: 4608, align: 512, elements: !4561)
!4561 = !{!4562, !4563, !4570}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4560, file: !4410, line: 334, baseType: !4446, size: 4096, align: 128)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4560, file: !4410, line: 335, baseType: !4564, size: 512, offset: 4096)
!4564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4410, line: 312, size: 512, elements: !4565)
!4565 = !{!4566, !4567, !4568}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4564, file: !4410, line: 313, baseType: !452, size: 64)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4564, file: !4410, line: 314, baseType: !452, size: 64, offset: 64)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4564, file: !4410, line: 315, baseType: !4569, size: 384, offset: 128)
!4569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 384, elements: !532)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4560, file: !4410, line: 336, baseType: !4571, offset: 4608)
!4571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, elements: !411)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4428, file: !4410, line: 353, baseType: !4573, size: 32768)
!4573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 32768, elements: !3598)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4409, file: !4410, line: 484, baseType: !4415, size: 64, offset: 192)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4409, file: !4410, line: 491, baseType: !4576, size: 128, offset: 256)
!4576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4410, line: 404, size: 128, elements: !4577)
!4577 = !{!4578, !4579, !4580}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4576, file: !4410, line: 424, baseType: !452, size: 64)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4576, file: !4410, line: 432, baseType: !7, size: 32, offset: 64)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4576, file: !4410, line: 440, baseType: !7, size: 32, offset: 96)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4409, file: !4410, line: 498, baseType: !4576, size: 128, offset: 384)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4409, file: !4410, line: 508, baseType: !4416, size: 33280, align: 512, offset: 512)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3115, file: !3116, line: 16, baseType: !57, size: 192, offset: 512)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3115, file: !3116, line: 17, baseType: !52, size: 32, offset: 704)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1064, file: !160, line: 1240, baseType: !23, size: 64, offset: 6912)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1064, file: !160, line: 1243, baseType: !509, size: 32, offset: 6976)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1064, file: !160, line: 1245, baseType: !500, size: 64, offset: 7040)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1064, file: !160, line: 1246, baseType: !500, size: 64, offset: 7104)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1064, file: !160, line: 1248, baseType: !510, size: 32, offset: 7168)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1064, file: !160, line: 1249, baseType: !4591, size: 64, offset: 7232)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !160, line: 634, flags: DIFlagFwdDecl)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1064, file: !160, line: 1252, baseType: !3945, size: 256, offset: 7296)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1064, file: !160, line: 1253, baseType: !4595, size: 128, offset: 7552)
!4595 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4596, line: 21, baseType: !4597)
!4596 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4597 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4596, line: 19, size: 128, elements: !4598)
!4598 = !{!4599}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4597, file: !4596, line: 20, baseType: !4600, size: 128)
!4600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, elements: !3483)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1064, file: !160, line: 1255, baseType: !7, size: 32, offset: 7680)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1064, file: !160, line: 1261, baseType: !335, size: 256, offset: 7744)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1064, file: !160, line: 1267, baseType: !19, size: 64, offset: 8000)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1064, file: !160, line: 1269, baseType: !4605, size: 64, offset: 8064)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4607)
!4607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !817, line: 128, size: 1024, align: 512, elements: !4608)
!4608 = !{!4609, !4613, !4614, !4621, !4627, !4631, !4635, !4639, !4640, !4644, !4648, !4653, !4657}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4607, file: !817, line: 129, baseType: !4610, size: 64)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!25, !815, !7}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4607, file: !817, line: 130, baseType: !4610, size: 64, offset: 64)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4607, file: !817, line: 131, baseType: !4615, size: 64, offset: 128)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!25, !4618, !4620}
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !816)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4607, file: !817, line: 132, baseType: !4622, size: 64, offset: 192)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DISubroutineType(types: !4624)
!4624 = !{!25, !4618, !7, !19, !4625}
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !840)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4607, file: !817, line: 134, baseType: !4628, size: 64, offset: 256)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!25, !4618}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4607, file: !817, line: 135, baseType: !4632, size: 64, offset: 320)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!25, !815}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4607, file: !817, line: 136, baseType: !4636, size: 64, offset: 384)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{null, !815}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4607, file: !817, line: 137, baseType: !4636, size: 64, offset: 448)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4607, file: !817, line: 138, baseType: !4641, size: 64, offset: 512)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{null, !815, !855}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4607, file: !817, line: 139, baseType: !4645, size: 64, offset: 576)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DISubroutineType(types: !4647)
!4647 = !{!556, !815, !556, !25}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4607, file: !817, line: 140, baseType: !4649, size: 64, offset: 640)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!810, !4652}
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4607, file: !817, line: 141, baseType: !4654, size: 64, offset: 704)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!25, !976, !545}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4607, file: !817, line: 142, baseType: !4658, size: 64, offset: 768)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!815, !815, !4661}
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !856)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1064, file: !160, line: 1271, baseType: !4664, size: 448, offset: 8128)
!4664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2383, line: 63, size: 448, elements: !4665)
!4665 = !{!4666, !4671, !4672, !4673, !4674, !4675, !4676}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4664, file: !2383, line: 64, baseType: !4667, size: 64)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!42, !4670, !2381}
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4664, file: !2383, line: 66, baseType: !4667, size: 64, offset: 64)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4664, file: !2383, line: 69, baseType: !779, size: 64, offset: 128)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4664, file: !2383, line: 70, baseType: !25, size: 32, offset: 192)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4664, file: !2383, line: 71, baseType: !7, size: 32, offset: 224)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4664, file: !2383, line: 74, baseType: !100, size: 128, offset: 256)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4664, file: !2383, line: 85, baseType: !4677, size: 64, offset: 384)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1064, file: !160, line: 1274, baseType: !326, size: 64, offset: 8576)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1064, file: !160, line: 1280, baseType: !326, size: 64, offset: 8640)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1064, file: !160, line: 1283, baseType: !25, size: 32, offset: 8704)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1064, file: !160, line: 1286, baseType: !1641, size: 32, offset: 8736)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1064, file: !160, line: 1289, baseType: !2204, size: 64, offset: 8768)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1064, file: !160, line: 1290, baseType: !389, size: 64, offset: 8832)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1064, file: !160, line: 1297, baseType: !629, size: 64, offset: 8896)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1064, file: !160, line: 1304, baseType: !4686, size: 64, offset: 8960)
!4686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4687, line: 49, size: 64, elements: !4688)
!4687 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4688 = !{!4689}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4686, file: !4687, line: 50, baseType: !4690, size: 64)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4687, line: 41, size: 512, align: 512, elements: !4692)
!4692 = !{!4693, !4694, !4699}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4691, file: !4687, line: 43, baseType: !62, size: 32)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4691, file: !4687, line: 45, baseType: !4695, size: 192, offset: 64)
!4695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4687, line: 29, size: 192, elements: !4696)
!4696 = !{!4697, !4698}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4695, file: !4687, line: 30, baseType: !100, size: 128)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4695, file: !4687, line: 32, baseType: !779, size: 64, offset: 128)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4691, file: !4687, line: 46, baseType: !779, size: 64, offset: 256)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1064, file: !160, line: 1305, baseType: !4686, size: 64, offset: 9024)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1064, file: !160, line: 1306, baseType: !271, size: 128, align: 64, offset: 9088)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1064, file: !160, line: 1307, baseType: !678, size: 256, offset: 9216)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1064, file: !160, line: 1309, baseType: !335, size: 256, offset: 9472)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1064, file: !160, line: 1314, baseType: !25, size: 32, offset: 9728)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1064, file: !160, line: 1317, baseType: !62, size: 32, align: 512, offset: 10240)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1064, file: !160, line: 1318, baseType: !100, size: 128, offset: 10304)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1064, file: !160, line: 1320, baseType: !62, size: 32, offset: 10432)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1064, file: !160, line: 1321, baseType: !100, size: 128, offset: 10496)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !856, file: !160, line: 656, baseType: !1213, size: 64, offset: 512)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !856, file: !160, line: 659, baseType: !23, size: 64, offset: 576)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !856, file: !160, line: 663, baseType: !42, size: 64, offset: 640)
!4712 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !160, line: 671, baseType: !4713, size: 32, offset: 704)
!4713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !160, line: 671, size: 32, elements: !4714)
!4714 = !{!4715, !4717}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4713, file: !160, line: 672, baseType: !4716, size: 32)
!4716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4713, file: !160, line: 673, baseType: !7, size: 32)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !856, file: !160, line: 675, baseType: !929, size: 32, offset: 736)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !856, file: !160, line: 676, baseType: !44, size: 64, offset: 768)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !856, file: !160, line: 677, baseType: !965, size: 128, offset: 832)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !856, file: !160, line: 678, baseType: !965, size: 128, offset: 960)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !856, file: !160, line: 679, baseType: !965, size: 128, offset: 1088)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !856, file: !160, line: 680, baseType: !62, size: 32, offset: 1216)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !856, file: !160, line: 681, baseType: !29, size: 16, offset: 1248)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !856, file: !160, line: 682, baseType: !86, size: 8, offset: 1264)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !856, file: !160, line: 683, baseType: !86, size: 8, offset: 1272)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !856, file: !160, line: 684, baseType: !2514, size: 64, offset: 1280)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !856, file: !160, line: 691, baseType: !42, size: 64, offset: 1344)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !856, file: !160, line: 692, baseType: !484, size: 320, offset: 1408)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !856, file: !160, line: 694, baseType: !42, size: 64, offset: 1728)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !856, file: !160, line: 695, baseType: !42, size: 64, offset: 1792)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !856, file: !160, line: 697, baseType: !393, size: 128, offset: 1856)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !856, file: !160, line: 698, baseType: !100, size: 128, offset: 1984)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !856, file: !160, line: 707, baseType: !100, size: 128, offset: 2112)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !856, file: !160, line: 708, baseType: !100, size: 128, offset: 2240)
!4736 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !160, line: 709, baseType: !4737, size: 128, offset: 2368)
!4737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !160, line: 709, size: 128, elements: !4738)
!4738 = !{!4739, !4740}
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4737, file: !160, line: 710, baseType: !389, size: 64)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4737, file: !160, line: 711, baseType: !271, size: 128, align: 64)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !856, file: !160, line: 713, baseType: !328, size: 64, offset: 2496)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !856, file: !160, line: 714, baseType: !328, size: 64, offset: 2560)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !856, file: !160, line: 715, baseType: !52, size: 32, offset: 2624)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !856, file: !160, line: 716, baseType: !52, size: 32, offset: 2656)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !856, file: !160, line: 717, baseType: !52, size: 32, offset: 2688)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !856, file: !160, line: 719, baseType: !52, size: 32, offset: 2720)
!4747 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !160, line: 721, baseType: !4748, size: 64, offset: 2752)
!4748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !160, line: 721, size: 64, elements: !4749)
!4749 = !{!4750, !4874}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4748, file: !160, line: 722, baseType: !4751, size: 64)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4753)
!4753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !160, line: 1914, size: 2112, elements: !4754)
!4754 = !{!4755, !4756, !4760, !4764, !4768, !4769, !4770, !4776, !4789, !4793, !4797, !4798, !4802, !4803, !4807, !4812, !4813, !4817, !4821, !4827, !4828, !4832, !4833, !4837, !4841, !4842, !4847, !4851, !4855, !4859, !4863, !4864, !4870}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4753, file: !160, line: 1915, baseType: !1096, size: 64)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4753, file: !160, line: 1916, baseType: !4757, size: 64, offset: 64)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{!44, !308, !44, !25}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4753, file: !160, line: 1917, baseType: !4761, size: 64, offset: 128)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!1007, !308, !556, !38, !43}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4753, file: !160, line: 1918, baseType: !4765, size: 64, offset: 192)
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4766, size: 64)
!4766 = !DISubroutineType(types: !4767)
!4767 = !{!1007, !308, !19, !38, !43}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4753, file: !160, line: 1919, baseType: !1559, size: 64, offset: 256)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4753, file: !160, line: 1920, baseType: !1559, size: 64, offset: 320)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4753, file: !160, line: 1921, baseType: !4771, size: 64, offset: 384)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{!25, !1562, !4774, !7}
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 64)
!4775 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !160, line: 53, flags: DIFlagFwdDecl)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4753, file: !160, line: 1923, baseType: !4777, size: 64, offset: 448)
!4777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4778, size: 64)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{!25, !308, !4780}
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !160, line: 1858, size: 128, elements: !4782)
!4782 = !{!4783, !4788}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4781, file: !160, line: 1859, baseType: !4784, size: 64)
!4784 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !160, line: 1855, baseType: !4785)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{!545, !4780, !19, !25, !44, !452, !7}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4781, file: !160, line: 1860, baseType: !44, size: 64, offset: 64)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4753, file: !160, line: 1924, baseType: !4790, size: 64, offset: 512)
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!1868, !308, !1870}
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4753, file: !160, line: 1925, baseType: !4794, size: 64, offset: 576)
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!779, !308, !7, !42}
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4753, file: !160, line: 1926, baseType: !4794, size: 64, offset: 640)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4753, file: !160, line: 1927, baseType: !4799, size: 64, offset: 704)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!25, !308, !259}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4753, file: !160, line: 1928, baseType: !42, size: 64, offset: 768)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4753, file: !160, line: 1929, baseType: !4804, size: 64, offset: 832)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DISubroutineType(types: !4806)
!4806 = !{!25, !855, !308}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4753, file: !160, line: 1930, baseType: !4808, size: 64, offset: 896)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = !DISubroutineType(types: !4810)
!4810 = !{!25, !308, !4811}
!4811 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !160, line: 1061, baseType: !23)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4753, file: !160, line: 1931, baseType: !4804, size: 64, offset: 960)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4753, file: !160, line: 1932, baseType: !4814, size: 64, offset: 1024)
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{!25, !308, !44, !44, !25}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4753, file: !160, line: 1933, baseType: !4818, size: 64, offset: 1088)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!25, !25, !308, !25}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4753, file: !160, line: 1934, baseType: !4822, size: 64, offset: 1152)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!25, !308, !25, !4825}
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !160, line: 1063, flags: DIFlagFwdDecl)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4753, file: !160, line: 1935, baseType: !305, size: 64, offset: 1216)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4753, file: !160, line: 1936, baseType: !4829, size: 64, offset: 1280)
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{!25, !25}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4753, file: !160, line: 1937, baseType: !4822, size: 64, offset: 1344)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4753, file: !160, line: 1938, baseType: !4834, size: 64, offset: 1408)
!4834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4835, size: 64)
!4835 = !DISubroutineType(types: !4836)
!4836 = !{!1007, !4248, !308, !43, !38, !7}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4753, file: !160, line: 1939, baseType: !4838, size: 64, offset: 1472)
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!4839 = !DISubroutineType(types: !4840)
!4840 = !{!1007, !308, !43, !4248, !38, !7}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4753, file: !160, line: 1940, baseType: !1631, size: 64, offset: 1536)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4753, file: !160, line: 1941, baseType: !4843, size: 64, offset: 1600)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = !DISubroutineType(types: !4845)
!4845 = !{!25, !308, !25, !4846, !1536}
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4753, file: !160, line: 1942, baseType: !4848, size: 64, offset: 1664)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4849 = !DISubroutineType(types: !4850)
!4850 = !{!779, !308, !25, !44, !44}
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4753, file: !160, line: 1944, baseType: !4852, size: 64, offset: 1728)
!4852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4853, size: 64)
!4853 = !DISubroutineType(types: !4854)
!4854 = !{null, !1743, !308}
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4753, file: !160, line: 1948, baseType: !4856, size: 64, offset: 1792)
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4857, size: 64)
!4857 = !DISubroutineType(types: !4858)
!4858 = !{!1007, !308, !44, !308, !44, !38, !7}
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4753, file: !160, line: 1950, baseType: !4860, size: 64, offset: 1856)
!4860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4861, size: 64)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{!44, !308, !44, !308, !44, !44, !7}
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4753, file: !160, line: 1953, baseType: !4814, size: 64, offset: 1920)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4753, file: !160, line: 1954, baseType: !4865, size: 64, offset: 1984)
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{!25, !4868, !7}
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !160, line: 1911, flags: DIFlagFwdDecl)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4753, file: !160, line: 1955, baseType: !4871, size: 64, offset: 2048)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = !DISubroutineType(types: !4873)
!4873 = !{!25, !4868, !4774, !7}
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4748, file: !160, line: 723, baseType: !2272, size: 64)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !856, file: !160, line: 725, baseType: !4876, size: 64, offset: 2816)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !160, line: 725, flags: DIFlagFwdDecl)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !856, file: !160, line: 726, baseType: !1214, size: 1536, align: 64, offset: 2880)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !856, file: !160, line: 727, baseType: !100, size: 128, offset: 4416)
!4880 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !160, line: 728, baseType: !4881, size: 64, offset: 4544)
!4881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !160, line: 728, size: 64, elements: !4882)
!4882 = !{!4883, !4884, !4887, !4888}
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4881, file: !160, line: 729, baseType: !4248, size: 64)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4881, file: !160, line: 730, baseType: !4885, size: 64)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4886, size: 64)
!4886 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !160, line: 730, flags: DIFlagFwdDecl)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4881, file: !160, line: 731, baseType: !556, size: 64)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4881, file: !160, line: 732, baseType: !7, size: 32)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !856, file: !160, line: 735, baseType: !510, size: 32, offset: 4608)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !856, file: !160, line: 738, baseType: !510, size: 32, offset: 4640)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !856, file: !160, line: 739, baseType: !4591, size: 64, offset: 4672)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !856, file: !160, line: 750, baseType: !23, size: 64, offset: 4736)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !816, file: !817, line: 91, baseType: !4894, size: 256, offset: 448)
!4894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 256, elements: !3946)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !816, file: !817, line: 94, baseType: !4896, size: 64, offset: 704)
!4896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4897, line: 25, size: 64, elements: !4898)
!4897 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4898 = !{!4899}
!4899 = !DIDerivedType(tag: DW_TAG_member, scope: !4896, file: !4897, line: 26, baseType: !4900, size: 64)
!4900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4896, file: !4897, line: 26, size: 64, elements: !4901)
!4901 = !{!4902, !4903}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4900, file: !4897, line: 28, baseType: !453, size: 64, align: 64)
!4903 = !DIDerivedType(tag: DW_TAG_member, scope: !4900, file: !4897, line: 30, baseType: !4904, size: 64)
!4904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4900, file: !4897, line: 30, size: 64, elements: !4905)
!4905 = !{!4906, !4907}
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4904, file: !4897, line: 31, baseType: !62, size: 32)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4904, file: !4897, line: 32, baseType: !25, size: 32, offset: 32)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !816, file: !817, line: 95, baseType: !4605, size: 64, offset: 768)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !816, file: !817, line: 96, baseType: !1063, size: 64, offset: 832)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !816, file: !817, line: 97, baseType: !42, size: 64, offset: 896)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !816, file: !817, line: 98, baseType: !23, size: 64, offset: 960)
!4912 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !817, line: 100, baseType: !4913, size: 128, offset: 1024)
!4913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !817, line: 100, size: 128, elements: !4914)
!4914 = !{!4915, !4916}
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4913, file: !817, line: 101, baseType: !100, size: 128)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4913, file: !817, line: 102, baseType: !4917, size: 64)
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !816, file: !817, line: 104, baseType: !100, size: 128, offset: 1152)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !816, file: !817, line: 105, baseType: !100, size: 128, offset: 1280)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !816, file: !817, line: 113, baseType: !4921, size: 128, offset: 1408)
!4921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !817, line: 109, size: 128, elements: !4922)
!4922 = !{!4923, !4924, !4925}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4921, file: !817, line: 110, baseType: !393, size: 128)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4921, file: !817, line: 111, baseType: !831, size: 128)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4921, file: !817, line: 112, baseType: !271, size: 128, align: 64)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !811, file: !812, line: 72, baseType: !1063, size: 64, offset: 64)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !811, file: !812, line: 73, baseType: !25, size: 32, offset: 128)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !811, file: !812, line: 74, baseType: !894, size: 64, offset: 192)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !806, file: !807, line: 10, baseType: !815, size: 64, offset: 64)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !309, file: !160, line: 1015, baseType: !855, size: 64, offset: 1344)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !309, file: !160, line: 1016, baseType: !4751, size: 64, offset: 1408)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !309, file: !160, line: 1018, baseType: !452, size: 64, offset: 1472)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !309, file: !160, line: 1020, baseType: !23, size: 64, offset: 1536)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !309, file: !160, line: 1023, baseType: !23, size: 64, offset: 1600)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !309, file: !160, line: 1027, baseType: !4936, size: 64, offset: 1664)
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !309, file: !160, line: 1029, baseType: !1213, size: 64, offset: 1728)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !309, file: !160, line: 1030, baseType: !1641, size: 32, offset: 1792)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !309, file: !160, line: 1031, baseType: !1641, size: 32, offset: 1824)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !284, file: !126, line: 756, baseType: !42, size: 64, offset: 704)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !284, file: !126, line: 757, baseType: !42, size: 64, offset: 768)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !284, file: !126, line: 760, baseType: !42, size: 64, offset: 832)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !284, file: !126, line: 761, baseType: !42, size: 64, offset: 896)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !284, file: !126, line: 763, baseType: !42, size: 64, offset: 960)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !284, file: !126, line: 764, baseType: !4946, size: 64, offset: 1024)
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1363, line: 299, baseType: !4948)
!4948 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1363, line: 299, size: 64, elements: !4949)
!4949 = !{!4950}
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4948, file: !1363, line: 299, baseType: !4951, size: 64)
!4951 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1355, line: 18, baseType: !42)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !284, file: !126, line: 773, baseType: !52, size: 32, offset: 1088)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !284, file: !126, line: 785, baseType: !52, size: 32, offset: 1120)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !284, file: !126, line: 795, baseType: !4955, size: 64, offset: 1152)
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !126, line: 726, size: 128, elements: !4957)
!4957 = !{!4958, !4959}
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4956, file: !126, line: 727, baseType: !452, size: 64)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !4956, file: !126, line: 728, baseType: !25, size: 32, offset: 64)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !284, file: !126, line: 801, baseType: !42, size: 64, offset: 1216)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !284, file: !126, line: 804, baseType: !326, size: 64, offset: 1280)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !284, file: !126, line: 806, baseType: !25, size: 32, offset: 1344)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !284, file: !126, line: 808, baseType: !62, size: 32, offset: 1376)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !284, file: !126, line: 823, baseType: !484, size: 320, offset: 1408)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !284, file: !126, line: 825, baseType: !100, size: 128, offset: 1728)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !284, file: !126, line: 845, baseType: !25, size: 32, offset: 1856)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !284, file: !126, line: 849, baseType: !42, size: 64, offset: 1920)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !284, file: !126, line: 850, baseType: !42, size: 64, offset: 1984)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !284, file: !126, line: 852, baseType: !42, size: 64, offset: 2048)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !284, file: !126, line: 853, baseType: !42, size: 64, offset: 2112)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !284, file: !126, line: 854, baseType: !328, size: 64, offset: 2176)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !284, file: !126, line: 855, baseType: !42, size: 64, offset: 2240)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !284, file: !126, line: 856, baseType: !42, size: 64, offset: 2304)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !284, file: !126, line: 857, baseType: !42, size: 64, offset: 2368)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !284, file: !126, line: 858, baseType: !42, size: 64, offset: 2432)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !284, file: !126, line: 865, baseType: !826, size: 32, offset: 2496)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !284, file: !126, line: 867, baseType: !62, size: 32, offset: 2528)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !284, file: !126, line: 869, baseType: !42, size: 64, offset: 2560)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !284, file: !126, line: 869, baseType: !42, size: 64, offset: 2624)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !284, file: !126, line: 869, baseType: !42, size: 64, offset: 2688)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !284, file: !126, line: 869, baseType: !42, size: 64, offset: 2752)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !284, file: !126, line: 870, baseType: !42, size: 64, offset: 2816)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !284, file: !126, line: 870, baseType: !42, size: 64, offset: 2880)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !284, file: !126, line: 870, baseType: !42, size: 64, offset: 2944)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !284, file: !126, line: 871, baseType: !42, size: 64, offset: 3008)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !284, file: !126, line: 871, baseType: !42, size: 64, offset: 3072)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !284, file: !126, line: 871, baseType: !42, size: 64, offset: 3136)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !284, file: !126, line: 871, baseType: !42, size: 64, offset: 3200)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !284, file: !126, line: 873, baseType: !4990, size: 3328, offset: 3264)
!4990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 3328, elements: !4991)
!4991 = !{!4992}
!4992 = !DISubrange(count: 52)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !284, file: !126, line: 875, baseType: !3032, size: 1280, offset: 6592)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !284, file: !126, line: 877, baseType: !4995, size: 64, offset: 7872)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !126, line: 877, flags: DIFlagFwdDecl)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !284, file: !126, line: 880, baseType: !4998, size: 1088, offset: 7936)
!4998 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !4999, line: 72, baseType: !5000)
!4999 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!5000 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4999, line: 23, size: 1088, elements: !5001)
!5001 = !{!5002, !5003, !5004, !5005, !5006, !5009, !5010, !5011, !5012, !5037, !5038, !5039}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !5000, file: !4999, line: 28, baseType: !452, size: 64)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !5000, file: !4999, line: 38, baseType: !328, size: 64, offset: 64)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !5000, file: !4999, line: 40, baseType: !42, size: 64, offset: 128)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !5000, file: !4999, line: 43, baseType: !484, size: 320, offset: 192)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !5000, file: !4999, line: 44, baseType: !5007, size: 64, offset: 512)
!5007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5008, size: 64)
!5008 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !4999, line: 44, flags: DIFlagFwdDecl)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5000, file: !4999, line: 48, baseType: !42, size: 64, offset: 576)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5000, file: !4999, line: 59, baseType: !335, size: 256, offset: 640)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !5000, file: !4999, line: 60, baseType: !23, size: 64, offset: 896)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !5000, file: !4999, line: 61, baseType: !5013, size: 64, offset: 960)
!5013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5014, size: 64)
!5014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5015)
!5015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !5016, line: 13, size: 1216, elements: !5017)
!5016 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!5017 = !{!5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036}
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5015, file: !5016, line: 14, baseType: !23, size: 64)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5015, file: !5016, line: 15, baseType: !42, size: 64, offset: 64)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !5015, file: !5016, line: 17, baseType: !42, size: 64, offset: 128)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !5015, file: !5016, line: 17, baseType: !42, size: 64, offset: 192)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !5015, file: !5016, line: 18, baseType: !42, size: 64, offset: 256)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !5015, file: !5016, line: 18, baseType: !42, size: 64, offset: 320)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !5015, file: !5016, line: 19, baseType: !1680, size: 64, offset: 384)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !5015, file: !5016, line: 21, baseType: !779, size: 64, offset: 448)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !5015, file: !5016, line: 23, baseType: !779, size: 64, offset: 512)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !5015, file: !5016, line: 24, baseType: !779, size: 64, offset: 576)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !5015, file: !5016, line: 25, baseType: !779, size: 64, offset: 640)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !5015, file: !5016, line: 26, baseType: !779, size: 64, offset: 704)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !5015, file: !5016, line: 27, baseType: !779, size: 64, offset: 768)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !5015, file: !5016, line: 28, baseType: !779, size: 64, offset: 832)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !5015, file: !5016, line: 29, baseType: !779, size: 64, offset: 896)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !5015, file: !5016, line: 30, baseType: !779, size: 64, offset: 960)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !5015, file: !5016, line: 31, baseType: !779, size: 64, offset: 1024)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !5015, file: !5016, line: 32, baseType: !779, size: 64, offset: 1088)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !5015, file: !5016, line: 33, baseType: !779, size: 64, offset: 1152)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !5000, file: !4999, line: 63, baseType: !52, size: 32, offset: 1024)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !5000, file: !4999, line: 69, baseType: !96, size: 16, offset: 1056)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !5000, file: !4999, line: 70, baseType: !2048, size: 16, offset: 1072)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !284, file: !126, line: 882, baseType: !42, size: 64, offset: 9024)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !284, file: !126, line: 885, baseType: !62, size: 32, offset: 9088)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !284, file: !126, line: 886, baseType: !5043, size: 64, offset: 9152)
!5043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5044, size: 64)
!5044 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !126, line: 732, flags: DIFlagFwdDecl)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !284, file: !126, line: 901, baseType: !629, size: 64, offset: 9216)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !284, file: !126, line: 904, baseType: !308, size: 64, offset: 9280)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !284, file: !126, line: 906, baseType: !5048, size: 64, offset: 9344)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !126, line: 906, flags: DIFlagFwdDecl)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !284, file: !126, line: 930, baseType: !52, size: 32, offset: 9408)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !284, file: !126, line: 933, baseType: !52, size: 32, offset: 9440)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !284, file: !126, line: 935, baseType: !5053, size: 64, offset: 9472)
!5053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !247, line: 103, size: 64, elements: !5054)
!5054 = !{!5055}
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !5053, file: !247, line: 104, baseType: !5056, size: 64)
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5057, size: 64)
!5057 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !247, line: 101, flags: DIFlagFwdDecl)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !284, file: !126, line: 940, baseType: !326, size: 64, offset: 9536)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !284, file: !126, line: 942, baseType: !678, size: 256, offset: 9600)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !281, file: !126, line: 986, baseType: !5061, offset: 10240)
!5061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, elements: !411)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !260, file: !126, line: 640, baseType: !5063, size: 64, offset: 192)
!5063 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1363, line: 297, baseType: !5064)
!5064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1363, line: 297, size: 64, elements: !5065)
!5065 = !{!5066}
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !5064, file: !1363, line: 297, baseType: !5067, size: 64)
!5067 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1355, line: 19, baseType: !42)
!5068 = !DIDerivedType(tag: DW_TAG_member, scope: !260, file: !126, line: 646, baseType: !5069, size: 64, offset: 256)
!5069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !260, file: !126, line: 646, size: 64, elements: !5070)
!5070 = !{!5071, !5074}
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !5069, file: !126, line: 647, baseType: !5072, size: 64)
!5072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5073)
!5073 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !126, line: 542, baseType: !42)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !5069, file: !126, line: 648, baseType: !5073, size: 64)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !260, file: !126, line: 666, baseType: !25, size: 32, offset: 320)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !260, file: !126, line: 667, baseType: !5077, size: 64, offset: 384)
!5077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5078, size: 64)
!5078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !126, line: 579, size: 320, elements: !5079)
!5079 = !{!5080}
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5078, file: !126, line: 580, baseType: !484, size: 320)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !260, file: !126, line: 670, baseType: !545, size: 8, offset: 448)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !260, file: !126, line: 681, baseType: !5083, size: 256, offset: 512)
!5083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !260, file: !126, line: 678, size: 256, elements: !5084)
!5084 = !{!5085, !5086}
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5083, file: !126, line: 679, baseType: !476, size: 192, align: 64)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !5083, file: !126, line: 680, baseType: !42, size: 64, offset: 192)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !260, file: !126, line: 689, baseType: !100, size: 128, offset: 768)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !260, file: !126, line: 691, baseType: !5089, size: 64, offset: 896)
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !5091, line: 31, size: 768, elements: !5092)
!5091 = !DIFile(filename: "./include/linux/rmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "424c17c81581cd4481af59c84df2437d")
!5092 = !{!5093, !5094, !5095, !5096, !5097, !5098, !5099}
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !5090, file: !5091, line: 32, baseType: !5089, size: 64)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !5090, file: !5091, line: 33, baseType: !484, size: 320, offset: 64)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5090, file: !5091, line: 41, baseType: !52, size: 32, offset: 384)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "num_children", scope: !5090, file: !5091, line: 50, baseType: !42, size: 64, offset: 448)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "num_active_vmas", scope: !5090, file: !5091, line: 52, baseType: !42, size: 64, offset: 512)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5090, file: !5091, line: 54, baseType: !5089, size: 64, offset: 576)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !5090, file: !5091, line: 66, baseType: !1222, size: 128, offset: 640)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !260, file: !126, line: 694, baseType: !1791, size: 64, offset: 960)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !260, file: !126, line: 697, baseType: !42, size: 64, offset: 1024)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !260, file: !126, line: 699, baseType: !308, size: 64, offset: 1088)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !260, file: !126, line: 700, baseType: !23, size: 64, offset: 1152)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !260, file: !126, line: 711, baseType: !326, size: 64, offset: 1216)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !260, file: !126, line: 717, baseType: !1839, size: 64, offset: 1280)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !260, file: !126, line: 722, baseType: !5107, offset: 1344)
!5107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !126, line: 570, elements: !301)
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5109 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !481)
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma_chain", file: !5091, line: 82, size: 512, elements: !5112)
!5112 = !{!5113, !5114, !5115, !5116, !5117}
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !5111, file: !5091, line: 83, baseType: !259, size: 64)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !5111, file: !5091, line: 84, baseType: !5089, size: 64, offset: 64)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "same_vma", scope: !5111, file: !5091, line: 85, baseType: !100, size: 128, offset: 128)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5111, file: !5091, line: 86, baseType: !476, size: 192, align: 64, offset: 256)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !5111, file: !5091, line: 87, baseType: !42, size: 64, offset: 448)
!5118 = !{!0, !5119}
!5119 = !DIGlobalVariableExpression(var: !5120, expr: !DIExpression())
!5120 = distinct !DIGlobalVariable(name: "__anon_vma_interval_tree_augment", scope: !2, file: !3, line: 71, type: !5121, isLocal: true, isDefinition: true)
!5121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5122)
!5122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_augment_callbacks", file: !5123, line: 27, size: 192, elements: !5124)
!5123 = !DIFile(filename: "./include/linux/rbtree_augmented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6ddc521985c4f988291280d937ba9ac7")
!5124 = !{!5125, !5129, !5130}
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "propagate", scope: !5122, file: !5123, line: 28, baseType: !5126, size: 64)
!5126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5127, size: 64)
!5127 = !DISubroutineType(types: !5128)
!5128 = !{null, !481, !481}
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !5122, file: !5123, line: 29, baseType: !5126, size: 64, offset: 64)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "rotate", scope: !5122, file: !5123, line: 30, baseType: !5126, size: 64, offset: 128)
!5131 = !{i32 7, !"Dwarf Version", i32 5}
!5132 = !{i32 2, !"Debug Info Version", i32 3}
!5133 = !{i32 1, !"wchar_size", i32 2}
!5134 = !{i32 8, !"cf-protection-branch", i32 1}
!5135 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5136 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5137 = !{i32 1, !"Code Model", i32 2}
!5138 = !{i32 1, !"override-stack-alignment", i32 8}
!5139 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5140 = distinct !DISubprogram(name: "vma_interval_tree_insert", scope: !3, file: !3, line: 23, type: !5141, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5144)
!5141 = !DISubroutineType(types: !5142)
!5142 = !{null, !259, !5143}
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!5144 = !{!5145, !5146, !5147, !5149, !5150, !5151, !5152, !5153, !5154}
!5145 = !DILocalVariable(name: "node", arg: 1, scope: !5140, file: !3, line: 23, type: !259)
!5146 = !DILocalVariable(name: "root", arg: 2, scope: !5140, file: !3, line: 23, type: !5143)
!5147 = !DILocalVariable(name: "link", scope: !5140, file: !3, line: 23, type: !5148)
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!5149 = !DILocalVariable(name: "rb_parent", scope: !5140, file: !3, line: 23, type: !481)
!5150 = !DILocalVariable(name: "start", scope: !5140, file: !3, line: 23, type: !42)
!5151 = !DILocalVariable(name: "last", scope: !5140, file: !3, line: 23, type: !42)
!5152 = !DILocalVariable(name: "parent", scope: !5140, file: !3, line: 23, type: !259)
!5153 = !DILocalVariable(name: "leftmost", scope: !5140, file: !3, line: 23, type: !545)
!5154 = !DILocalVariable(name: "__mptr", scope: !5155, file: !3, line: 23, type: !23)
!5155 = distinct !DILexicalBlock(scope: !5156, file: !3, line: 23, column: 1)
!5156 = distinct !DILexicalBlock(scope: !5140, file: !3, line: 23, column: 1)
!5157 = !DILocation(line: 23, column: 1, scope: !5140)
!5158 = !DILocation(line: 23, column: 1, scope: !5156)
!5159 = !DILocation(line: 23, column: 1, scope: !5155)
!5160 = !DILocation(line: 23, column: 1, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5156, file: !3, line: 23, column: 1)
!5162 = !DILocation(line: 23, column: 1, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5156, file: !3, line: 23, column: 1)
!5164 = !DILocation(line: 23, column: 1, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5163, file: !3, line: 23, column: 1)
!5166 = distinct !{!5166, !5157, !5157, !5167, !5168}
!5167 = !{!"llvm.loop.mustprogress"}
!5168 = !{!"llvm.loop.unroll.disable"}
!5169 = !{i8 0, i8 2}
!5170 = distinct !DISubprogram(name: "vma_start_pgoff", scope: !3, file: !3, line: 13, type: !1823, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5171)
!5171 = !{!5172}
!5172 = !DILocalVariable(name: "v", arg: 1, scope: !5170, file: !3, line: 13, type: !259)
!5173 = !DILocation(line: 13, column: 68, scope: !5170)
!5174 = !DILocation(line: 15, column: 9, scope: !5170)
!5175 = !DILocation(line: 15, column: 12, scope: !5170)
!5176 = !DILocation(line: 15, column: 2, scope: !5170)
!5177 = distinct !DISubprogram(name: "vma_last_pgoff", scope: !3, file: !3, line: 18, type: !1823, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5178)
!5178 = !{!5179}
!5179 = !DILocalVariable(name: "v", arg: 1, scope: !5177, file: !3, line: 18, type: !259)
!5180 = !DILocation(line: 18, column: 67, scope: !5177)
!5181 = !DILocation(line: 20, column: 9, scope: !5177)
!5182 = !DILocation(line: 20, column: 12, scope: !5177)
!5183 = !DILocation(line: 20, column: 33, scope: !5177)
!5184 = !DILocation(line: 20, column: 23, scope: !5177)
!5185 = !DILocation(line: 20, column: 21, scope: !5177)
!5186 = !DILocation(line: 20, column: 36, scope: !5177)
!5187 = !DILocation(line: 20, column: 2, scope: !5177)
!5188 = distinct !DISubprogram(name: "rb_link_node", scope: !5189, file: !5189, line: 59, type: !5190, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5192)
!5189 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e0facf00d8c55244f0fbd487ce02705")
!5190 = !DISubroutineType(types: !5191)
!5191 = !{null, !481, !481, !5148}
!5192 = !{!5193, !5194, !5195}
!5193 = !DILocalVariable(name: "node", arg: 1, scope: !5188, file: !5189, line: 59, type: !481)
!5194 = !DILocalVariable(name: "parent", arg: 2, scope: !5188, file: !5189, line: 59, type: !481)
!5195 = !DILocalVariable(name: "rb_link", arg: 3, scope: !5188, file: !5189, line: 60, type: !5148)
!5196 = !DILocation(line: 59, column: 49, scope: !5188)
!5197 = !DILocation(line: 59, column: 71, scope: !5188)
!5198 = !DILocation(line: 60, column: 22, scope: !5188)
!5199 = !DILocation(line: 62, column: 43, scope: !5188)
!5200 = !DILocation(line: 62, column: 28, scope: !5188)
!5201 = !DILocation(line: 62, column: 2, scope: !5188)
!5202 = !DILocation(line: 62, column: 8, scope: !5188)
!5203 = !DILocation(line: 62, column: 26, scope: !5188)
!5204 = !DILocation(line: 63, column: 18, scope: !5188)
!5205 = !DILocation(line: 63, column: 24, scope: !5188)
!5206 = !DILocation(line: 63, column: 33, scope: !5188)
!5207 = !DILocation(line: 63, column: 2, scope: !5188)
!5208 = !DILocation(line: 63, column: 8, scope: !5188)
!5209 = !DILocation(line: 63, column: 16, scope: !5188)
!5210 = !DILocation(line: 65, column: 13, scope: !5188)
!5211 = !DILocation(line: 65, column: 3, scope: !5188)
!5212 = !DILocation(line: 65, column: 11, scope: !5188)
!5213 = !DILocation(line: 66, column: 1, scope: !5188)
!5214 = distinct !DISubprogram(name: "rb_insert_augmented_cached", scope: !5123, file: !5123, line: 54, type: !5215, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5218)
!5215 = !DISubroutineType(types: !5216)
!5216 = !{null, !481, !5143, !545, !5217}
!5217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5121, size: 64)
!5218 = !{!5219, !5220, !5221, !5222}
!5219 = !DILocalVariable(name: "node", arg: 1, scope: !5214, file: !5123, line: 54, type: !481)
!5220 = !DILocalVariable(name: "root", arg: 2, scope: !5214, file: !5123, line: 55, type: !5143)
!5221 = !DILocalVariable(name: "newleft", arg: 3, scope: !5214, file: !5123, line: 55, type: !545)
!5222 = !DILocalVariable(name: "augment", arg: 4, scope: !5214, file: !5123, line: 56, type: !5217)
!5223 = !DILocation(line: 54, column: 44, scope: !5214)
!5224 = !DILocation(line: 55, column: 30, scope: !5214)
!5225 = !DILocation(line: 55, column: 41, scope: !5214)
!5226 = !DILocation(line: 56, column: 42, scope: !5214)
!5227 = !DILocation(line: 58, column: 6, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5214, file: !5123, line: 58, column: 6)
!5229 = !DILocation(line: 58, column: 6, scope: !5214)
!5230 = !DILocation(line: 59, column: 23, scope: !5228)
!5231 = !DILocation(line: 59, column: 3, scope: !5228)
!5232 = !DILocation(line: 59, column: 9, scope: !5228)
!5233 = !DILocation(line: 59, column: 21, scope: !5228)
!5234 = !DILocation(line: 60, column: 22, scope: !5214)
!5235 = !DILocation(line: 60, column: 29, scope: !5214)
!5236 = !DILocation(line: 60, column: 35, scope: !5214)
!5237 = !DILocation(line: 60, column: 44, scope: !5214)
!5238 = !DILocation(line: 60, column: 2, scope: !5214)
!5239 = !DILocation(line: 61, column: 1, scope: !5214)
!5240 = distinct !DISubprogram(name: "vma_interval_tree_remove", scope: !3, file: !3, line: 23, type: !5141, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5241)
!5241 = !{!5242, !5243}
!5242 = !DILocalVariable(name: "node", arg: 1, scope: !5240, file: !3, line: 23, type: !259)
!5243 = !DILocalVariable(name: "root", arg: 2, scope: !5240, file: !3, line: 23, type: !5143)
!5244 = !DILocation(line: 23, column: 1, scope: !5240)
!5245 = distinct !DISubprogram(name: "rb_erase_augmented_cached", scope: !5123, file: !5123, line: 335, type: !5246, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5248)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{null, !481, !5143, !5217}
!5248 = !{!5249, !5250, !5251}
!5249 = !DILocalVariable(name: "node", arg: 1, scope: !5245, file: !5123, line: 335, type: !481)
!5250 = !DILocalVariable(name: "root", arg: 2, scope: !5245, file: !5123, line: 335, type: !5143)
!5251 = !DILocalVariable(name: "augment", arg: 3, scope: !5245, file: !5123, line: 336, type: !5217)
!5252 = !DILocation(line: 335, column: 43, scope: !5245)
!5253 = !DILocation(line: 335, column: 72, scope: !5245)
!5254 = !DILocation(line: 336, column: 41, scope: !5245)
!5255 = !DILocation(line: 338, column: 6, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5245, file: !5123, line: 338, column: 6)
!5257 = !DILocation(line: 338, column: 12, scope: !5256)
!5258 = !DILocation(line: 338, column: 27, scope: !5256)
!5259 = !DILocation(line: 338, column: 24, scope: !5256)
!5260 = !DILocation(line: 338, column: 6, scope: !5245)
!5261 = !DILocation(line: 339, column: 31, scope: !5256)
!5262 = !DILocation(line: 339, column: 23, scope: !5256)
!5263 = !DILocation(line: 339, column: 3, scope: !5256)
!5264 = !DILocation(line: 339, column: 9, scope: !5256)
!5265 = !DILocation(line: 339, column: 21, scope: !5256)
!5266 = !DILocation(line: 340, column: 21, scope: !5245)
!5267 = !DILocation(line: 340, column: 28, scope: !5245)
!5268 = !DILocation(line: 340, column: 34, scope: !5245)
!5269 = !DILocation(line: 340, column: 43, scope: !5245)
!5270 = !DILocation(line: 340, column: 2, scope: !5245)
!5271 = !DILocation(line: 341, column: 1, scope: !5245)
!5272 = distinct !DISubprogram(name: "vma_interval_tree_iter_first", scope: !3, file: !3, line: 23, type: !5273, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5275)
!5273 = !DISubroutineType(types: !5274)
!5274 = !{!259, !5143, !42, !42}
!5275 = !{!5276, !5277, !5278, !5279, !5280, !5281, !5283}
!5276 = !DILocalVariable(name: "root", arg: 1, scope: !5272, file: !3, line: 23, type: !5143)
!5277 = !DILocalVariable(name: "start", arg: 2, scope: !5272, file: !3, line: 23, type: !42)
!5278 = !DILocalVariable(name: "last", arg: 3, scope: !5272, file: !3, line: 23, type: !42)
!5279 = !DILocalVariable(name: "node", scope: !5272, file: !3, line: 23, type: !259)
!5280 = !DILocalVariable(name: "leftmost", scope: !5272, file: !3, line: 23, type: !259)
!5281 = !DILocalVariable(name: "__mptr", scope: !5282, file: !3, line: 23, type: !23)
!5282 = distinct !DILexicalBlock(scope: !5272, file: !3, line: 23, column: 1)
!5283 = !DILocalVariable(name: "__mptr", scope: !5284, file: !3, line: 23, type: !23)
!5284 = distinct !DILexicalBlock(scope: !5272, file: !3, line: 23, column: 1)
!5285 = !DILocation(line: 23, column: 1, scope: !5272)
!5286 = !DILocation(line: 23, column: 1, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5272, file: !3, line: 23, column: 1)
!5288 = !DILocation(line: 23, column: 1, scope: !5282)
!5289 = !DILocation(line: 23, column: 1, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5272, file: !3, line: 23, column: 1)
!5291 = !DILocation(line: 23, column: 1, scope: !5284)
!5292 = !DILocation(line: 23, column: 1, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5272, file: !3, line: 23, column: 1)
!5294 = distinct !DISubprogram(name: "vma_interval_tree_subtree_search", scope: !3, file: !3, line: 23, type: !5295, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5297)
!5295 = !DISubroutineType(types: !5296)
!5296 = !{!259, !259, !42, !42}
!5297 = !{!5298, !5299, !5300, !5301, !5305, !5307}
!5298 = !DILocalVariable(name: "node", arg: 1, scope: !5294, file: !3, line: 23, type: !259)
!5299 = !DILocalVariable(name: "start", arg: 2, scope: !5294, file: !3, line: 23, type: !42)
!5300 = !DILocalVariable(name: "last", arg: 3, scope: !5294, file: !3, line: 23, type: !42)
!5301 = !DILocalVariable(name: "left", scope: !5302, file: !3, line: 23, type: !259)
!5302 = distinct !DILexicalBlock(scope: !5303, file: !3, line: 23, column: 1)
!5303 = distinct !DILexicalBlock(scope: !5304, file: !3, line: 23, column: 1)
!5304 = distinct !DILexicalBlock(scope: !5294, file: !3, line: 23, column: 1)
!5305 = !DILocalVariable(name: "__mptr", scope: !5306, file: !3, line: 23, type: !23)
!5306 = distinct !DILexicalBlock(scope: !5302, file: !3, line: 23, column: 1)
!5307 = !DILocalVariable(name: "__mptr", scope: !5308, file: !3, line: 23, type: !23)
!5308 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 23, column: 1)
!5309 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 23, column: 1)
!5310 = distinct !DILexicalBlock(scope: !5311, file: !3, line: 23, column: 1)
!5311 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 23, column: 1)
!5312 = distinct !DILexicalBlock(scope: !5304, file: !3, line: 23, column: 1)
!5313 = !DILocation(line: 23, column: 1, scope: !5294)
!5314 = !DILocation(line: 23, column: 1, scope: !5303)
!5315 = !DILocation(line: 23, column: 1, scope: !5304)
!5316 = !DILocation(line: 23, column: 1, scope: !5302)
!5317 = !DILocation(line: 23, column: 1, scope: !5306)
!5318 = !DILocation(line: 23, column: 1, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5302, file: !3, line: 23, column: 1)
!5320 = !DILocation(line: 23, column: 1, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 23, column: 1)
!5322 = distinct !{!5322, !5313, !5313, !5168}
!5323 = !DILocation(line: 23, column: 1, scope: !5312)
!5324 = !DILocation(line: 23, column: 1, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5311, file: !3, line: 23, column: 1)
!5326 = !DILocation(line: 23, column: 1, scope: !5311)
!5327 = !DILocation(line: 23, column: 1, scope: !5310)
!5328 = !DILocation(line: 23, column: 1, scope: !5308)
!5329 = !DILocation(line: 23, column: 1, scope: !5309)
!5330 = !DILocation(line: 23, column: 1, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 23, column: 1)
!5332 = distinct !DISubprogram(name: "vma_interval_tree_iter_next", scope: !3, file: !3, line: 23, type: !5295, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5333)
!5333 = !{!5334, !5335, !5336, !5337, !5338, !5339, !5343, !5345}
!5334 = !DILocalVariable(name: "node", arg: 1, scope: !5332, file: !3, line: 23, type: !259)
!5335 = !DILocalVariable(name: "start", arg: 2, scope: !5332, file: !3, line: 23, type: !42)
!5336 = !DILocalVariable(name: "last", arg: 3, scope: !5332, file: !3, line: 23, type: !42)
!5337 = !DILocalVariable(name: "rb", scope: !5332, file: !3, line: 23, type: !481)
!5338 = !DILocalVariable(name: "prev", scope: !5332, file: !3, line: 23, type: !481)
!5339 = !DILocalVariable(name: "right", scope: !5340, file: !3, line: 23, type: !259)
!5340 = distinct !DILexicalBlock(scope: !5341, file: !3, line: 23, column: 1)
!5341 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 23, column: 1)
!5342 = distinct !DILexicalBlock(scope: !5332, file: !3, line: 23, column: 1)
!5343 = !DILocalVariable(name: "__mptr", scope: !5344, file: !3, line: 23, type: !23)
!5344 = distinct !DILexicalBlock(scope: !5340, file: !3, line: 23, column: 1)
!5345 = !DILocalVariable(name: "__mptr", scope: !5346, file: !3, line: 23, type: !23)
!5346 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 23, column: 1)
!5347 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 23, column: 1)
!5348 = !DILocation(line: 23, column: 1, scope: !5332)
!5349 = !DILocation(line: 23, column: 1, scope: !5341)
!5350 = !DILocation(line: 23, column: 1, scope: !5342)
!5351 = !DILocation(line: 23, column: 1, scope: !5340)
!5352 = !DILocation(line: 23, column: 1, scope: !5344)
!5353 = !DILocation(line: 23, column: 1, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5340, file: !3, line: 23, column: 1)
!5355 = !DILocation(line: 23, column: 1, scope: !5347)
!5356 = !DILocation(line: 23, column: 1, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 23, column: 1)
!5358 = !DILocation(line: 23, column: 1, scope: !5346)
!5359 = distinct !{!5359, !5350, !5350, !5167, !5168}
!5360 = !DILocation(line: 23, column: 1, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 23, column: 1)
!5362 = !DILocation(line: 23, column: 1, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5361, file: !3, line: 23, column: 1)
!5364 = distinct !{!5364, !5348, !5348, !5168}
!5365 = distinct !DISubprogram(name: "vma_interval_tree_insert_after", scope: !3, file: !3, line: 28, type: !5366, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5368)
!5366 = !DISubroutineType(types: !5367)
!5367 = !{null, !259, !259, !5143}
!5368 = !{!5369, !5370, !5371, !5372, !5373, !5374, !5375, !5379}
!5369 = !DILocalVariable(name: "node", arg: 1, scope: !5365, file: !3, line: 28, type: !259)
!5370 = !DILocalVariable(name: "prev", arg: 2, scope: !5365, file: !3, line: 29, type: !259)
!5371 = !DILocalVariable(name: "root", arg: 3, scope: !5365, file: !3, line: 30, type: !5143)
!5372 = !DILocalVariable(name: "link", scope: !5365, file: !3, line: 32, type: !5148)
!5373 = !DILocalVariable(name: "parent", scope: !5365, file: !3, line: 33, type: !259)
!5374 = !DILocalVariable(name: "last", scope: !5365, file: !3, line: 34, type: !42)
!5375 = !DILocalVariable(name: "__mptr", scope: !5376, file: !3, line: 42, type: !23)
!5376 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 42, column: 12)
!5377 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 41, column: 9)
!5378 = distinct !DILexicalBlock(scope: !5365, file: !3, line: 38, column: 6)
!5379 = !DILocalVariable(name: "__mptr", scope: !5380, file: !3, line: 47, type: !23)
!5380 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 47, column: 13)
!5381 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 46, column: 37)
!5382 = !DILocation(line: 28, column: 60, scope: !5365)
!5383 = !DILocation(line: 29, column: 32, scope: !5365)
!5384 = !DILocation(line: 30, column: 32, scope: !5365)
!5385 = !DILocation(line: 32, column: 2, scope: !5365)
!5386 = !DILocation(line: 32, column: 19, scope: !5365)
!5387 = !DILocation(line: 33, column: 2, scope: !5365)
!5388 = !DILocation(line: 33, column: 25, scope: !5365)
!5389 = !DILocation(line: 34, column: 2, scope: !5365)
!5390 = !DILocation(line: 34, column: 16, scope: !5365)
!5391 = !DILocation(line: 34, column: 38, scope: !5365)
!5392 = !DILocation(line: 34, column: 23, scope: !5365)
!5393 = !DILocation(line: 38, column: 7, scope: !5378)
!5394 = !DILocation(line: 38, column: 13, scope: !5378)
!5395 = !DILocation(line: 38, column: 20, scope: !5378)
!5396 = !DILocation(line: 38, column: 23, scope: !5378)
!5397 = !DILocation(line: 38, column: 6, scope: !5365)
!5398 = !DILocation(line: 39, column: 12, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 38, column: 33)
!5400 = !DILocation(line: 39, column: 10, scope: !5399)
!5401 = !DILocation(line: 40, column: 11, scope: !5399)
!5402 = !DILocation(line: 40, column: 17, scope: !5399)
!5403 = !DILocation(line: 40, column: 24, scope: !5399)
!5404 = !DILocation(line: 40, column: 27, scope: !5399)
!5405 = !DILocation(line: 40, column: 8, scope: !5399)
!5406 = !DILocation(line: 41, column: 2, scope: !5399)
!5407 = !DILocation(line: 42, column: 12, scope: !5376)
!5408 = !DILocation(line: 42, column: 12, scope: !5377)
!5409 = !DILocation(line: 42, column: 10, scope: !5377)
!5410 = !DILocation(line: 44, column: 7, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 44, column: 7)
!5412 = !DILocation(line: 44, column: 15, scope: !5411)
!5413 = !DILocation(line: 44, column: 22, scope: !5411)
!5414 = !DILocation(line: 44, column: 40, scope: !5411)
!5415 = !DILocation(line: 44, column: 38, scope: !5411)
!5416 = !DILocation(line: 44, column: 7, scope: !5377)
!5417 = !DILocation(line: 45, column: 37, scope: !5411)
!5418 = !DILocation(line: 45, column: 4, scope: !5411)
!5419 = !DILocation(line: 45, column: 12, scope: !5411)
!5420 = !DILocation(line: 45, column: 19, scope: !5411)
!5421 = !DILocation(line: 45, column: 35, scope: !5411)
!5422 = !DILocation(line: 46, column: 3, scope: !5377)
!5423 = !DILocation(line: 46, column: 10, scope: !5377)
!5424 = !DILocation(line: 46, column: 18, scope: !5377)
!5425 = !DILocation(line: 46, column: 25, scope: !5377)
!5426 = !DILocation(line: 46, column: 28, scope: !5377)
!5427 = !DILocation(line: 47, column: 13, scope: !5380)
!5428 = !DILocation(line: 47, column: 13, scope: !5381)
!5429 = !DILocation(line: 47, column: 11, scope: !5381)
!5430 = !DILocation(line: 49, column: 8, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 49, column: 8)
!5432 = !DILocation(line: 49, column: 16, scope: !5431)
!5433 = !DILocation(line: 49, column: 23, scope: !5431)
!5434 = !DILocation(line: 49, column: 41, scope: !5431)
!5435 = !DILocation(line: 49, column: 39, scope: !5431)
!5436 = !DILocation(line: 49, column: 8, scope: !5381)
!5437 = !DILocation(line: 50, column: 38, scope: !5431)
!5438 = !DILocation(line: 50, column: 5, scope: !5431)
!5439 = !DILocation(line: 50, column: 13, scope: !5431)
!5440 = !DILocation(line: 50, column: 20, scope: !5431)
!5441 = !DILocation(line: 50, column: 36, scope: !5431)
!5442 = distinct !{!5442, !5422, !5443, !5167, !5168}
!5443 = !DILocation(line: 51, column: 3, scope: !5377)
!5444 = !DILocation(line: 52, column: 11, scope: !5377)
!5445 = !DILocation(line: 52, column: 19, scope: !5377)
!5446 = !DILocation(line: 52, column: 26, scope: !5377)
!5447 = !DILocation(line: 52, column: 29, scope: !5377)
!5448 = !DILocation(line: 52, column: 8, scope: !5377)
!5449 = !DILocation(line: 55, column: 33, scope: !5365)
!5450 = !DILocation(line: 55, column: 2, scope: !5365)
!5451 = !DILocation(line: 55, column: 8, scope: !5365)
!5452 = !DILocation(line: 55, column: 15, scope: !5365)
!5453 = !DILocation(line: 55, column: 31, scope: !5365)
!5454 = !DILocation(line: 56, column: 16, scope: !5365)
!5455 = !DILocation(line: 56, column: 22, scope: !5365)
!5456 = !DILocation(line: 56, column: 29, scope: !5365)
!5457 = !DILocation(line: 56, column: 34, scope: !5365)
!5458 = !DILocation(line: 56, column: 42, scope: !5365)
!5459 = !DILocation(line: 56, column: 49, scope: !5365)
!5460 = !DILocation(line: 56, column: 53, scope: !5365)
!5461 = !DILocation(line: 56, column: 2, scope: !5365)
!5462 = !DILocation(line: 57, column: 23, scope: !5365)
!5463 = !DILocation(line: 57, column: 29, scope: !5365)
!5464 = !DILocation(line: 57, column: 36, scope: !5365)
!5465 = !DILocation(line: 57, column: 41, scope: !5365)
!5466 = !DILocation(line: 57, column: 47, scope: !5365)
!5467 = !DILocation(line: 57, column: 2, scope: !5365)
!5468 = !DILocation(line: 59, column: 1, scope: !5365)
!5469 = distinct !DISubprogram(name: "rb_insert_augmented", scope: !5123, file: !5123, line: 47, type: !5470, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5473)
!5470 = !DISubroutineType(types: !5471)
!5471 = !{null, !481, !5472, !5217}
!5472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!5473 = !{!5474, !5475, !5476}
!5474 = !DILocalVariable(name: "node", arg: 1, scope: !5469, file: !5123, line: 47, type: !481)
!5475 = !DILocalVariable(name: "root", arg: 2, scope: !5469, file: !5123, line: 47, type: !5472)
!5476 = !DILocalVariable(name: "augment", arg: 3, scope: !5469, file: !5123, line: 48, type: !5217)
!5477 = !DILocation(line: 47, column: 37, scope: !5469)
!5478 = !DILocation(line: 47, column: 59, scope: !5469)
!5479 = !DILocation(line: 48, column: 42, scope: !5469)
!5480 = !DILocation(line: 50, column: 24, scope: !5469)
!5481 = !DILocation(line: 50, column: 30, scope: !5469)
!5482 = !DILocation(line: 50, column: 36, scope: !5469)
!5483 = !DILocation(line: 50, column: 45, scope: !5469)
!5484 = !DILocation(line: 50, column: 2, scope: !5469)
!5485 = !DILocation(line: 51, column: 1, scope: !5469)
!5486 = distinct !DISubprogram(name: "anon_vma_interval_tree_insert", scope: !3, file: !3, line: 75, type: !5487, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5489)
!5487 = !DISubroutineType(types: !5488)
!5488 = !{null, !5110, !5143}
!5489 = !{!5490, !5491}
!5490 = !DILocalVariable(name: "node", arg: 1, scope: !5486, file: !3, line: 75, type: !5110)
!5491 = !DILocalVariable(name: "root", arg: 2, scope: !5486, file: !3, line: 76, type: !5143)
!5492 = !DILocation(line: 75, column: 59, scope: !5486)
!5493 = !DILocation(line: 76, column: 31, scope: !5486)
!5494 = !DILocation(line: 82, column: 34, scope: !5486)
!5495 = !DILocation(line: 82, column: 40, scope: !5486)
!5496 = !DILocation(line: 82, column: 2, scope: !5486)
!5497 = !DILocation(line: 83, column: 1, scope: !5486)
!5498 = distinct !DISubprogram(name: "__anon_vma_interval_tree_insert", scope: !3, file: !3, line: 71, type: !5487, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5499)
!5499 = !{!5500, !5501, !5502, !5503, !5504, !5505, !5506, !5507, !5508}
!5500 = !DILocalVariable(name: "node", arg: 1, scope: !5498, file: !3, line: 71, type: !5110)
!5501 = !DILocalVariable(name: "root", arg: 2, scope: !5498, file: !3, line: 71, type: !5143)
!5502 = !DILocalVariable(name: "link", scope: !5498, file: !3, line: 71, type: !5148)
!5503 = !DILocalVariable(name: "rb_parent", scope: !5498, file: !3, line: 71, type: !481)
!5504 = !DILocalVariable(name: "start", scope: !5498, file: !3, line: 71, type: !42)
!5505 = !DILocalVariable(name: "last", scope: !5498, file: !3, line: 71, type: !42)
!5506 = !DILocalVariable(name: "parent", scope: !5498, file: !3, line: 71, type: !5110)
!5507 = !DILocalVariable(name: "leftmost", scope: !5498, file: !3, line: 71, type: !545)
!5508 = !DILocalVariable(name: "__mptr", scope: !5509, file: !3, line: 71, type: !23)
!5509 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 71, column: 1)
!5510 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 71, column: 1)
!5511 = !DILocation(line: 71, column: 1, scope: !5498)
!5512 = !DILocation(line: 71, column: 1, scope: !5510)
!5513 = !DILocation(line: 71, column: 1, scope: !5509)
!5514 = !DILocation(line: 71, column: 1, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 71, column: 1)
!5516 = !DILocation(line: 71, column: 1, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 71, column: 1)
!5518 = !DILocation(line: 71, column: 1, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5517, file: !3, line: 71, column: 1)
!5520 = distinct !{!5520, !5511, !5511, !5167, !5168}
!5521 = distinct !DISubprogram(name: "anon_vma_interval_tree_remove", scope: !3, file: !3, line: 85, type: !5487, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5522)
!5522 = !{!5523, !5524}
!5523 = !DILocalVariable(name: "node", arg: 1, scope: !5521, file: !3, line: 85, type: !5110)
!5524 = !DILocalVariable(name: "root", arg: 2, scope: !5521, file: !3, line: 86, type: !5143)
!5525 = !DILocation(line: 85, column: 59, scope: !5521)
!5526 = !DILocation(line: 86, column: 31, scope: !5521)
!5527 = !DILocation(line: 88, column: 34, scope: !5521)
!5528 = !DILocation(line: 88, column: 40, scope: !5521)
!5529 = !DILocation(line: 88, column: 2, scope: !5521)
!5530 = !DILocation(line: 89, column: 1, scope: !5521)
!5531 = distinct !DISubprogram(name: "__anon_vma_interval_tree_remove", scope: !3, file: !3, line: 71, type: !5487, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5532)
!5532 = !{!5533, !5534}
!5533 = !DILocalVariable(name: "node", arg: 1, scope: !5531, file: !3, line: 71, type: !5110)
!5534 = !DILocalVariable(name: "root", arg: 2, scope: !5531, file: !3, line: 71, type: !5143)
!5535 = !DILocation(line: 71, column: 1, scope: !5531)
!5536 = distinct !DISubprogram(name: "anon_vma_interval_tree_iter_first", scope: !3, file: !3, line: 92, type: !5537, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5539)
!5537 = !DISubroutineType(types: !5538)
!5538 = !{!5110, !5143, !42, !42}
!5539 = !{!5540, !5541, !5542}
!5540 = !DILocalVariable(name: "root", arg: 1, scope: !5536, file: !3, line: 92, type: !5143)
!5541 = !DILocalVariable(name: "first", arg: 2, scope: !5536, file: !3, line: 93, type: !42)
!5542 = !DILocalVariable(name: "last", arg: 3, scope: !5536, file: !3, line: 93, type: !42)
!5543 = !DILocation(line: 92, column: 58, scope: !5536)
!5544 = !DILocation(line: 93, column: 21, scope: !5536)
!5545 = !DILocation(line: 93, column: 42, scope: !5536)
!5546 = !DILocation(line: 95, column: 45, scope: !5536)
!5547 = !DILocation(line: 95, column: 51, scope: !5536)
!5548 = !DILocation(line: 95, column: 58, scope: !5536)
!5549 = !DILocation(line: 95, column: 9, scope: !5536)
!5550 = !DILocation(line: 95, column: 2, scope: !5536)
!5551 = distinct !DISubprogram(name: "__anon_vma_interval_tree_iter_first", scope: !3, file: !3, line: 71, type: !5537, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5552)
!5552 = !{!5553, !5554, !5555, !5556, !5557, !5558, !5560}
!5553 = !DILocalVariable(name: "root", arg: 1, scope: !5551, file: !3, line: 71, type: !5143)
!5554 = !DILocalVariable(name: "start", arg: 2, scope: !5551, file: !3, line: 71, type: !42)
!5555 = !DILocalVariable(name: "last", arg: 3, scope: !5551, file: !3, line: 71, type: !42)
!5556 = !DILocalVariable(name: "node", scope: !5551, file: !3, line: 71, type: !5110)
!5557 = !DILocalVariable(name: "leftmost", scope: !5551, file: !3, line: 71, type: !5110)
!5558 = !DILocalVariable(name: "__mptr", scope: !5559, file: !3, line: 71, type: !23)
!5559 = distinct !DILexicalBlock(scope: !5551, file: !3, line: 71, column: 1)
!5560 = !DILocalVariable(name: "__mptr", scope: !5561, file: !3, line: 71, type: !23)
!5561 = distinct !DILexicalBlock(scope: !5551, file: !3, line: 71, column: 1)
!5562 = !DILocation(line: 71, column: 1, scope: !5551)
!5563 = !DILocation(line: 71, column: 1, scope: !5564)
!5564 = distinct !DILexicalBlock(scope: !5551, file: !3, line: 71, column: 1)
!5565 = !DILocation(line: 71, column: 1, scope: !5559)
!5566 = !DILocation(line: 71, column: 1, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5551, file: !3, line: 71, column: 1)
!5568 = !DILocation(line: 71, column: 1, scope: !5561)
!5569 = !DILocation(line: 71, column: 1, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5551, file: !3, line: 71, column: 1)
!5571 = distinct !DISubprogram(name: "anon_vma_interval_tree_iter_next", scope: !3, file: !3, line: 99, type: !5572, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5574)
!5572 = !DISubroutineType(types: !5573)
!5573 = !{!5110, !5110, !42, !42}
!5574 = !{!5575, !5576, !5577}
!5575 = !DILocalVariable(name: "node", arg: 1, scope: !5571, file: !3, line: 99, type: !5110)
!5576 = !DILocalVariable(name: "first", arg: 2, scope: !5571, file: !3, line: 100, type: !42)
!5577 = !DILocalVariable(name: "last", arg: 3, scope: !5571, file: !3, line: 100, type: !42)
!5578 = !DILocation(line: 99, column: 57, scope: !5571)
!5579 = !DILocation(line: 100, column: 20, scope: !5571)
!5580 = !DILocation(line: 100, column: 41, scope: !5571)
!5581 = !DILocation(line: 102, column: 44, scope: !5571)
!5582 = !DILocation(line: 102, column: 50, scope: !5571)
!5583 = !DILocation(line: 102, column: 57, scope: !5571)
!5584 = !DILocation(line: 102, column: 9, scope: !5571)
!5585 = !DILocation(line: 102, column: 2, scope: !5571)
!5586 = distinct !DISubprogram(name: "__anon_vma_interval_tree_iter_next", scope: !3, file: !3, line: 71, type: !5572, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5587)
!5587 = !{!5588, !5589, !5590, !5591, !5592, !5593, !5597, !5599}
!5588 = !DILocalVariable(name: "node", arg: 1, scope: !5586, file: !3, line: 71, type: !5110)
!5589 = !DILocalVariable(name: "start", arg: 2, scope: !5586, file: !3, line: 71, type: !42)
!5590 = !DILocalVariable(name: "last", arg: 3, scope: !5586, file: !3, line: 71, type: !42)
!5591 = !DILocalVariable(name: "rb", scope: !5586, file: !3, line: 71, type: !481)
!5592 = !DILocalVariable(name: "prev", scope: !5586, file: !3, line: 71, type: !481)
!5593 = !DILocalVariable(name: "right", scope: !5594, file: !3, line: 71, type: !5110)
!5594 = distinct !DILexicalBlock(scope: !5595, file: !3, line: 71, column: 1)
!5595 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 71, column: 1)
!5596 = distinct !DILexicalBlock(scope: !5586, file: !3, line: 71, column: 1)
!5597 = !DILocalVariable(name: "__mptr", scope: !5598, file: !3, line: 71, type: !23)
!5598 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 71, column: 1)
!5599 = !DILocalVariable(name: "__mptr", scope: !5600, file: !3, line: 71, type: !23)
!5600 = distinct !DILexicalBlock(scope: !5601, file: !3, line: 71, column: 1)
!5601 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 71, column: 1)
!5602 = !DILocation(line: 71, column: 1, scope: !5586)
!5603 = !DILocation(line: 71, column: 1, scope: !5595)
!5604 = !DILocation(line: 71, column: 1, scope: !5596)
!5605 = !DILocation(line: 71, column: 1, scope: !5594)
!5606 = !DILocation(line: 71, column: 1, scope: !5598)
!5607 = !DILocation(line: 71, column: 1, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 71, column: 1)
!5609 = !DILocation(line: 71, column: 1, scope: !5601)
!5610 = !DILocation(line: 71, column: 1, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5601, file: !3, line: 71, column: 1)
!5612 = !DILocation(line: 71, column: 1, scope: !5600)
!5613 = distinct !{!5613, !5604, !5604, !5167, !5168}
!5614 = !DILocation(line: 71, column: 1, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 71, column: 1)
!5616 = !DILocation(line: 71, column: 1, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5615, file: !3, line: 71, column: 1)
!5618 = distinct !{!5618, !5602, !5602, !5168}
!5619 = distinct !DISubprogram(name: "vma_pages", scope: !1341, file: !1341, line: 3418, type: !1823, scopeLine: 3419, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5620)
!5620 = !{!5621}
!5621 = !DILocalVariable(name: "vma", arg: 1, scope: !5619, file: !1341, line: 3418, type: !259)
!5622 = !DILocation(line: 3418, column: 62, scope: !5619)
!5623 = !DILocation(line: 3420, column: 10, scope: !5619)
!5624 = !DILocation(line: 3420, column: 15, scope: !5619)
!5625 = !DILocation(line: 3420, column: 24, scope: !5619)
!5626 = !DILocation(line: 3420, column: 29, scope: !5619)
!5627 = !DILocation(line: 3420, column: 22, scope: !5619)
!5628 = !DILocation(line: 3420, column: 39, scope: !5619)
!5629 = !DILocation(line: 3420, column: 2, scope: !5619)
!5630 = distinct !DISubprogram(name: "vma_interval_tree_augment_propagate", scope: !3, file: !3, line: 23, type: !5127, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5631)
!5631 = !{!5632, !5633, !5634, !5636}
!5632 = !DILocalVariable(name: "rb", arg: 1, scope: !5630, file: !3, line: 23, type: !481)
!5633 = !DILocalVariable(name: "stop", arg: 2, scope: !5630, file: !3, line: 23, type: !481)
!5634 = !DILocalVariable(name: "node", scope: !5635, file: !3, line: 23, type: !259)
!5635 = distinct !DILexicalBlock(scope: !5630, file: !3, line: 23, column: 1)
!5636 = !DILocalVariable(name: "__mptr", scope: !5637, file: !3, line: 23, type: !23)
!5637 = distinct !DILexicalBlock(scope: !5635, file: !3, line: 23, column: 1)
!5638 = !DILocation(line: 23, column: 1, scope: !5630)
!5639 = !DILocation(line: 23, column: 1, scope: !5635)
!5640 = !DILocation(line: 23, column: 1, scope: !5637)
!5641 = !DILocation(line: 23, column: 1, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5635, file: !3, line: 23, column: 1)
!5643 = distinct !{!5643, !5638, !5638, !5167, !5168}
!5644 = distinct !DISubprogram(name: "vma_interval_tree_augment_copy", scope: !3, file: !3, line: 23, type: !5127, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5645)
!5645 = !{!5646, !5647, !5648, !5649, !5651, !5652}
!5646 = !DILocalVariable(name: "rb_old", arg: 1, scope: !5644, file: !3, line: 23, type: !481)
!5647 = !DILocalVariable(name: "rb_new", arg: 2, scope: !5644, file: !3, line: 23, type: !481)
!5648 = !DILocalVariable(name: "old", scope: !5644, file: !3, line: 23, type: !259)
!5649 = !DILocalVariable(name: "__mptr", scope: !5650, file: !3, line: 23, type: !23)
!5650 = distinct !DILexicalBlock(scope: !5644, file: !3, line: 23, column: 1)
!5651 = !DILocalVariable(name: "new", scope: !5644, file: !3, line: 23, type: !259)
!5652 = !DILocalVariable(name: "__mptr", scope: !5653, file: !3, line: 23, type: !23)
!5653 = distinct !DILexicalBlock(scope: !5644, file: !3, line: 23, column: 1)
!5654 = !DILocation(line: 23, column: 1, scope: !5644)
!5655 = !DILocation(line: 23, column: 1, scope: !5650)
!5656 = !DILocation(line: 23, column: 1, scope: !5653)
!5657 = distinct !DISubprogram(name: "vma_interval_tree_augment_rotate", scope: !3, file: !3, line: 23, type: !5127, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5658)
!5658 = !{!5659, !5660, !5661, !5662, !5664, !5665}
!5659 = !DILocalVariable(name: "rb_old", arg: 1, scope: !5657, file: !3, line: 23, type: !481)
!5660 = !DILocalVariable(name: "rb_new", arg: 2, scope: !5657, file: !3, line: 23, type: !481)
!5661 = !DILocalVariable(name: "old", scope: !5657, file: !3, line: 23, type: !259)
!5662 = !DILocalVariable(name: "__mptr", scope: !5663, file: !3, line: 23, type: !23)
!5663 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 23, column: 1)
!5664 = !DILocalVariable(name: "new", scope: !5657, file: !3, line: 23, type: !259)
!5665 = !DILocalVariable(name: "__mptr", scope: !5666, file: !3, line: 23, type: !23)
!5666 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 23, column: 1)
!5667 = !DILocation(line: 23, column: 1, scope: !5657)
!5668 = !DILocation(line: 23, column: 1, scope: !5663)
!5669 = !DILocation(line: 23, column: 1, scope: !5666)
!5670 = distinct !DISubprogram(name: "vma_interval_tree_augment_compute_max", scope: !3, file: !3, line: 23, type: !5671, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5673)
!5671 = !DISubroutineType(types: !5672)
!5672 = !{!545, !259, !545}
!5673 = !{!5674, !5675, !5676, !5677, !5678, !5682}
!5674 = !DILocalVariable(name: "node", arg: 1, scope: !5670, file: !3, line: 23, type: !259)
!5675 = !DILocalVariable(name: "exit", arg: 2, scope: !5670, file: !3, line: 23, type: !545)
!5676 = !DILocalVariable(name: "child", scope: !5670, file: !3, line: 23, type: !259)
!5677 = !DILocalVariable(name: "max", scope: !5670, file: !3, line: 23, type: !42)
!5678 = !DILocalVariable(name: "__mptr", scope: !5679, file: !3, line: 23, type: !23)
!5679 = distinct !DILexicalBlock(scope: !5680, file: !3, line: 23, column: 1)
!5680 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 23, column: 1)
!5681 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 23, column: 1)
!5682 = !DILocalVariable(name: "__mptr", scope: !5683, file: !3, line: 23, type: !23)
!5683 = distinct !DILexicalBlock(scope: !5684, file: !3, line: 23, column: 1)
!5684 = distinct !DILexicalBlock(scope: !5685, file: !3, line: 23, column: 1)
!5685 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 23, column: 1)
!5686 = !DILocation(line: 23, column: 1, scope: !5670)
!5687 = !DILocation(line: 23, column: 1, scope: !5681)
!5688 = !DILocation(line: 23, column: 1, scope: !5679)
!5689 = !DILocation(line: 23, column: 1, scope: !5680)
!5690 = !DILocation(line: 23, column: 1, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5680, file: !3, line: 23, column: 1)
!5692 = !DILocation(line: 23, column: 1, scope: !5685)
!5693 = !DILocation(line: 23, column: 1, scope: !5683)
!5694 = !DILocation(line: 23, column: 1, scope: !5684)
!5695 = !DILocation(line: 23, column: 1, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5684, file: !3, line: 23, column: 1)
!5697 = !DILocation(line: 23, column: 1, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 23, column: 1)
!5699 = !DISubprogram(name: "rb_next", scope: !5189, file: !5189, line: 44, type: !5700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5700 = !DISubroutineType(types: !5701)
!5701 = !{!481, !5702}
!5702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5703, size: 64)
!5703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!5704 = distinct !DISubprogram(name: "rb_erase_augmented", scope: !5123, file: !5123, line: 326, type: !5470, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5705)
!5705 = !{!5706, !5707, !5708, !5709}
!5706 = !DILocalVariable(name: "node", arg: 1, scope: !5704, file: !5123, line: 326, type: !481)
!5707 = !DILocalVariable(name: "root", arg: 2, scope: !5704, file: !5123, line: 326, type: !5472)
!5708 = !DILocalVariable(name: "augment", arg: 3, scope: !5704, file: !5123, line: 327, type: !5217)
!5709 = !DILocalVariable(name: "rebalance", scope: !5704, file: !5123, line: 329, type: !481)
!5710 = !DILocation(line: 326, column: 36, scope: !5704)
!5711 = !DILocation(line: 326, column: 58, scope: !5704)
!5712 = !DILocation(line: 327, column: 41, scope: !5704)
!5713 = !DILocation(line: 329, column: 2, scope: !5704)
!5714 = !DILocation(line: 329, column: 18, scope: !5704)
!5715 = !DILocation(line: 329, column: 51, scope: !5704)
!5716 = !DILocation(line: 329, column: 57, scope: !5704)
!5717 = !DILocation(line: 329, column: 63, scope: !5704)
!5718 = !DILocation(line: 329, column: 30, scope: !5704)
!5719 = !DILocation(line: 330, column: 6, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5704, file: !5123, line: 330, column: 6)
!5721 = !DILocation(line: 330, column: 6, scope: !5704)
!5722 = !DILocation(line: 331, column: 20, scope: !5720)
!5723 = !DILocation(line: 331, column: 31, scope: !5720)
!5724 = !DILocation(line: 331, column: 37, scope: !5720)
!5725 = !DILocation(line: 331, column: 46, scope: !5720)
!5726 = !DILocation(line: 331, column: 3, scope: !5720)
!5727 = !DILocation(line: 332, column: 1, scope: !5704)
!5728 = distinct !DISubprogram(name: "__rb_erase_augmented", scope: !5123, file: !5123, line: 224, type: !5729, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5731)
!5729 = !DISubroutineType(types: !5730)
!5730 = !{!481, !481, !5472, !5217}
!5731 = !{!5732, !5733, !5734, !5735, !5736, !5737, !5738, !5739, !5740, !5744}
!5732 = !DILocalVariable(name: "node", arg: 1, scope: !5728, file: !5123, line: 224, type: !481)
!5733 = !DILocalVariable(name: "root", arg: 2, scope: !5728, file: !5123, line: 224, type: !5472)
!5734 = !DILocalVariable(name: "augment", arg: 3, scope: !5728, file: !5123, line: 225, type: !5217)
!5735 = !DILocalVariable(name: "child", scope: !5728, file: !5123, line: 227, type: !481)
!5736 = !DILocalVariable(name: "tmp", scope: !5728, file: !5123, line: 228, type: !481)
!5737 = !DILocalVariable(name: "parent", scope: !5728, file: !5123, line: 229, type: !481)
!5738 = !DILocalVariable(name: "rebalance", scope: !5728, file: !5123, line: 229, type: !481)
!5739 = !DILocalVariable(name: "pc", scope: !5728, file: !5123, line: 230, type: !42)
!5740 = !DILocalVariable(name: "successor", scope: !5741, file: !5123, line: 257, type: !481)
!5741 = distinct !DILexicalBlock(scope: !5742, file: !5123, line: 256, column: 9)
!5742 = distinct !DILexicalBlock(scope: !5743, file: !5123, line: 249, column: 13)
!5743 = distinct !DILexicalBlock(scope: !5728, file: !5123, line: 232, column: 6)
!5744 = !DILocalVariable(name: "child2", scope: !5741, file: !5123, line: 257, type: !481)
!5745 = !DILocation(line: 224, column: 38, scope: !5728)
!5746 = !DILocation(line: 224, column: 60, scope: !5728)
!5747 = !DILocation(line: 225, column: 43, scope: !5728)
!5748 = !DILocation(line: 227, column: 2, scope: !5728)
!5749 = !DILocation(line: 227, column: 18, scope: !5728)
!5750 = !DILocation(line: 227, column: 26, scope: !5728)
!5751 = !DILocation(line: 227, column: 32, scope: !5728)
!5752 = !DILocation(line: 228, column: 2, scope: !5728)
!5753 = !DILocation(line: 228, column: 18, scope: !5728)
!5754 = !DILocation(line: 228, column: 24, scope: !5728)
!5755 = !DILocation(line: 228, column: 30, scope: !5728)
!5756 = !DILocation(line: 229, column: 2, scope: !5728)
!5757 = !DILocation(line: 229, column: 18, scope: !5728)
!5758 = !DILocation(line: 229, column: 27, scope: !5728)
!5759 = !DILocation(line: 230, column: 2, scope: !5728)
!5760 = !DILocation(line: 230, column: 16, scope: !5728)
!5761 = !DILocation(line: 232, column: 7, scope: !5743)
!5762 = !DILocation(line: 232, column: 6, scope: !5728)
!5763 = !DILocation(line: 240, column: 8, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !5743, file: !5123, line: 232, column: 12)
!5765 = !DILocation(line: 240, column: 14, scope: !5764)
!5766 = !DILocation(line: 240, column: 6, scope: !5764)
!5767 = !DILocation(line: 241, column: 12, scope: !5764)
!5768 = !DILocation(line: 241, column: 10, scope: !5764)
!5769 = !DILocation(line: 242, column: 21, scope: !5764)
!5770 = !DILocation(line: 242, column: 27, scope: !5764)
!5771 = !DILocation(line: 242, column: 34, scope: !5764)
!5772 = !DILocation(line: 242, column: 42, scope: !5764)
!5773 = !DILocation(line: 242, column: 3, scope: !5764)
!5774 = !DILocation(line: 243, column: 7, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5764, file: !5123, line: 243, column: 7)
!5776 = !DILocation(line: 243, column: 7, scope: !5764)
!5777 = !DILocation(line: 244, column: 31, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5775, file: !5123, line: 243, column: 14)
!5779 = !DILocation(line: 244, column: 4, scope: !5778)
!5780 = !DILocation(line: 244, column: 11, scope: !5778)
!5781 = !DILocation(line: 244, column: 29, scope: !5778)
!5782 = !DILocation(line: 245, column: 14, scope: !5778)
!5783 = !DILocation(line: 246, column: 3, scope: !5778)
!5784 = !DILocation(line: 247, column: 16, scope: !5775)
!5785 = !DILocation(line: 247, column: 36, scope: !5775)
!5786 = !DILocation(line: 247, column: 14, scope: !5775)
!5787 = !DILocation(line: 248, column: 9, scope: !5764)
!5788 = !DILocation(line: 248, column: 7, scope: !5764)
!5789 = !DILocation(line: 249, column: 2, scope: !5764)
!5790 = !DILocation(line: 249, column: 14, scope: !5742)
!5791 = !DILocation(line: 249, column: 13, scope: !5743)
!5792 = !DILocation(line: 251, column: 33, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5742, file: !5123, line: 249, column: 21)
!5794 = !DILocation(line: 251, column: 39, scope: !5793)
!5795 = !DILocation(line: 251, column: 31, scope: !5793)
!5796 = !DILocation(line: 251, column: 3, scope: !5793)
!5797 = !DILocation(line: 251, column: 8, scope: !5793)
!5798 = !DILocation(line: 251, column: 26, scope: !5793)
!5799 = !DILocation(line: 252, column: 12, scope: !5793)
!5800 = !DILocation(line: 252, column: 10, scope: !5793)
!5801 = !DILocation(line: 253, column: 21, scope: !5793)
!5802 = !DILocation(line: 253, column: 27, scope: !5793)
!5803 = !DILocation(line: 253, column: 32, scope: !5793)
!5804 = !DILocation(line: 253, column: 40, scope: !5793)
!5805 = !DILocation(line: 253, column: 3, scope: !5793)
!5806 = !DILocation(line: 254, column: 13, scope: !5793)
!5807 = !DILocation(line: 255, column: 9, scope: !5793)
!5808 = !DILocation(line: 255, column: 7, scope: !5793)
!5809 = !DILocation(line: 256, column: 2, scope: !5793)
!5810 = !DILocation(line: 257, column: 3, scope: !5741)
!5811 = !DILocation(line: 257, column: 19, scope: !5741)
!5812 = !DILocation(line: 257, column: 31, scope: !5741)
!5813 = !DILocation(line: 257, column: 39, scope: !5741)
!5814 = !DILocation(line: 259, column: 9, scope: !5741)
!5815 = !DILocation(line: 259, column: 16, scope: !5741)
!5816 = !DILocation(line: 259, column: 7, scope: !5741)
!5817 = !DILocation(line: 260, column: 8, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5741, file: !5123, line: 260, column: 7)
!5819 = !DILocation(line: 260, column: 7, scope: !5741)
!5820 = !DILocation(line: 270, column: 13, scope: !5821)
!5821 = distinct !DILexicalBlock(scope: !5818, file: !5123, line: 260, column: 13)
!5822 = !DILocation(line: 270, column: 11, scope: !5821)
!5823 = !DILocation(line: 271, column: 13, scope: !5821)
!5824 = !DILocation(line: 271, column: 24, scope: !5821)
!5825 = !DILocation(line: 271, column: 11, scope: !5821)
!5826 = !DILocation(line: 273, column: 4, scope: !5821)
!5827 = !DILocation(line: 273, column: 13, scope: !5821)
!5828 = !DILocation(line: 273, column: 18, scope: !5821)
!5829 = !DILocation(line: 273, column: 24, scope: !5821)
!5830 = !DILocation(line: 274, column: 3, scope: !5821)
!5831 = !DILocation(line: 289, column: 4, scope: !5832)
!5832 = distinct !DILexicalBlock(scope: !5818, file: !5123, line: 274, column: 10)
!5833 = !DILocation(line: 290, column: 14, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5832, file: !5123, line: 289, column: 7)
!5835 = !DILocation(line: 290, column: 12, scope: !5834)
!5836 = !DILocation(line: 291, column: 17, scope: !5834)
!5837 = !DILocation(line: 291, column: 15, scope: !5834)
!5838 = !DILocation(line: 292, column: 11, scope: !5834)
!5839 = !DILocation(line: 292, column: 16, scope: !5834)
!5840 = !DILocation(line: 292, column: 9, scope: !5834)
!5841 = !DILocation(line: 293, column: 4, scope: !5834)
!5842 = !DILocation(line: 293, column: 13, scope: !5832)
!5843 = distinct !{!5843, !5831, !5844, !5167, !5168}
!5844 = !DILocation(line: 293, column: 16, scope: !5832)
!5845 = !DILocation(line: 294, column: 13, scope: !5832)
!5846 = !DILocation(line: 294, column: 24, scope: !5832)
!5847 = !DILocation(line: 294, column: 11, scope: !5832)
!5848 = !DILocation(line: 295, column: 4, scope: !5832)
!5849 = !DILocation(line: 295, column: 4, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5832, file: !5123, line: 295, column: 4)
!5851 = !DILocation(line: 295, column: 4, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5850, file: !5123, line: 295, column: 4)
!5853 = !DILocation(line: 295, column: 4, scope: !5854)
!5854 = distinct !DILexicalBlock(scope: !5850, file: !5123, line: 295, column: 4)
!5855 = !DILocation(line: 296, column: 4, scope: !5832)
!5856 = !DILocation(line: 296, column: 4, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5832, file: !5123, line: 296, column: 4)
!5858 = !DILocation(line: 296, column: 4, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5857, file: !5123, line: 296, column: 4)
!5860 = !DILocation(line: 296, column: 4, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5857, file: !5123, line: 296, column: 4)
!5862 = !DILocation(line: 297, column: 18, scope: !5832)
!5863 = !DILocation(line: 297, column: 25, scope: !5832)
!5864 = !DILocation(line: 297, column: 4, scope: !5832)
!5865 = !DILocation(line: 299, column: 4, scope: !5832)
!5866 = !DILocation(line: 299, column: 13, scope: !5832)
!5867 = !DILocation(line: 299, column: 18, scope: !5832)
!5868 = !DILocation(line: 299, column: 24, scope: !5832)
!5869 = !DILocation(line: 300, column: 4, scope: !5832)
!5870 = !DILocation(line: 300, column: 13, scope: !5832)
!5871 = !DILocation(line: 300, column: 23, scope: !5832)
!5872 = !DILocation(line: 300, column: 31, scope: !5832)
!5873 = !DILocation(line: 303, column: 9, scope: !5741)
!5874 = !DILocation(line: 303, column: 15, scope: !5741)
!5875 = !DILocation(line: 303, column: 7, scope: !5741)
!5876 = !DILocation(line: 304, column: 3, scope: !5741)
!5877 = !DILocation(line: 304, column: 3, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5741, file: !5123, line: 304, column: 3)
!5879 = !DILocation(line: 304, column: 3, scope: !5880)
!5880 = distinct !DILexicalBlock(scope: !5878, file: !5123, line: 304, column: 3)
!5881 = !DILocation(line: 304, column: 3, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5878, file: !5123, line: 304, column: 3)
!5883 = !DILocation(line: 305, column: 17, scope: !5741)
!5884 = !DILocation(line: 305, column: 22, scope: !5741)
!5885 = !DILocation(line: 305, column: 3, scope: !5741)
!5886 = !DILocation(line: 307, column: 8, scope: !5741)
!5887 = !DILocation(line: 307, column: 14, scope: !5741)
!5888 = !DILocation(line: 307, column: 6, scope: !5741)
!5889 = !DILocation(line: 308, column: 9, scope: !5741)
!5890 = !DILocation(line: 308, column: 7, scope: !5741)
!5891 = !DILocation(line: 309, column: 21, scope: !5741)
!5892 = !DILocation(line: 309, column: 27, scope: !5741)
!5893 = !DILocation(line: 309, column: 38, scope: !5741)
!5894 = !DILocation(line: 309, column: 43, scope: !5741)
!5895 = !DILocation(line: 309, column: 3, scope: !5741)
!5896 = !DILocation(line: 311, column: 7, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5741, file: !5123, line: 311, column: 7)
!5898 = !DILocation(line: 311, column: 7, scope: !5741)
!5899 = !DILocation(line: 312, column: 24, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5897, file: !5123, line: 311, column: 15)
!5901 = !DILocation(line: 312, column: 32, scope: !5900)
!5902 = !DILocation(line: 312, column: 4, scope: !5900)
!5903 = !DILocation(line: 313, column: 14, scope: !5900)
!5904 = !DILocation(line: 314, column: 3, scope: !5900)
!5905 = !DILocation(line: 315, column: 16, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5897, file: !5123, line: 314, column: 10)
!5907 = !DILocation(line: 315, column: 41, scope: !5906)
!5908 = !DILocation(line: 315, column: 14, scope: !5906)
!5909 = !DILocation(line: 317, column: 34, scope: !5741)
!5910 = !DILocation(line: 317, column: 3, scope: !5741)
!5911 = !DILocation(line: 317, column: 14, scope: !5741)
!5912 = !DILocation(line: 317, column: 32, scope: !5741)
!5913 = !DILocation(line: 318, column: 9, scope: !5741)
!5914 = !DILocation(line: 318, column: 7, scope: !5741)
!5915 = !DILocation(line: 319, column: 2, scope: !5742)
!5916 = !DILocation(line: 321, column: 2, scope: !5728)
!5917 = !DILocation(line: 321, column: 11, scope: !5728)
!5918 = !DILocation(line: 321, column: 21, scope: !5728)
!5919 = !DILocation(line: 322, column: 9, scope: !5728)
!5920 = !DILocation(line: 323, column: 1, scope: !5728)
!5921 = !DILocation(line: 322, column: 2, scope: !5728)
!5922 = !DISubprogram(name: "__rb_erase_color", scope: !5123, file: !5123, line: 220, type: !5923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5923 = !DISubroutineType(types: !5924)
!5924 = !{null, !481, !5472, !5126}
!5925 = distinct !DISubprogram(name: "__rb_change_child", scope: !5123, file: !5123, line: 195, type: !5926, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5928)
!5926 = !DISubroutineType(types: !5927)
!5927 = !{null, !481, !481, !481, !5472}
!5928 = !{!5929, !5930, !5931, !5932}
!5929 = !DILocalVariable(name: "old", arg: 1, scope: !5925, file: !5123, line: 195, type: !481)
!5930 = !DILocalVariable(name: "new", arg: 2, scope: !5925, file: !5123, line: 195, type: !481)
!5931 = !DILocalVariable(name: "parent", arg: 3, scope: !5925, file: !5123, line: 196, type: !481)
!5932 = !DILocalVariable(name: "root", arg: 4, scope: !5925, file: !5123, line: 196, type: !5472)
!5933 = !DILocation(line: 195, column: 35, scope: !5925)
!5934 = !DILocation(line: 195, column: 56, scope: !5925)
!5935 = !DILocation(line: 196, column: 21, scope: !5925)
!5936 = !DILocation(line: 196, column: 45, scope: !5925)
!5937 = !DILocation(line: 198, column: 6, scope: !5938)
!5938 = distinct !DILexicalBlock(scope: !5925, file: !5123, line: 198, column: 6)
!5939 = !DILocation(line: 198, column: 6, scope: !5925)
!5940 = !DILocation(line: 199, column: 7, scope: !5941)
!5941 = distinct !DILexicalBlock(scope: !5942, file: !5123, line: 199, column: 7)
!5942 = distinct !DILexicalBlock(scope: !5938, file: !5123, line: 198, column: 14)
!5943 = !DILocation(line: 199, column: 15, scope: !5941)
!5944 = !DILocation(line: 199, column: 26, scope: !5941)
!5945 = !DILocation(line: 199, column: 23, scope: !5941)
!5946 = !DILocation(line: 199, column: 7, scope: !5942)
!5947 = !DILocation(line: 200, column: 4, scope: !5941)
!5948 = !DILocation(line: 200, column: 4, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5941, file: !5123, line: 200, column: 4)
!5950 = !DILocation(line: 200, column: 4, scope: !5951)
!5951 = distinct !DILexicalBlock(scope: !5949, file: !5123, line: 200, column: 4)
!5952 = !DILocation(line: 200, column: 4, scope: !5953)
!5953 = distinct !DILexicalBlock(scope: !5949, file: !5123, line: 200, column: 4)
!5954 = !DILocation(line: 202, column: 4, scope: !5941)
!5955 = !DILocation(line: 202, column: 4, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5941, file: !5123, line: 202, column: 4)
!5957 = !DILocation(line: 202, column: 4, scope: !5958)
!5958 = distinct !DILexicalBlock(scope: !5956, file: !5123, line: 202, column: 4)
!5959 = !DILocation(line: 202, column: 4, scope: !5960)
!5960 = distinct !DILexicalBlock(scope: !5956, file: !5123, line: 202, column: 4)
!5961 = !DILocation(line: 203, column: 2, scope: !5942)
!5962 = !DILocation(line: 204, column: 3, scope: !5938)
!5963 = !DILocation(line: 204, column: 3, scope: !5964)
!5964 = distinct !DILexicalBlock(scope: !5938, file: !5123, line: 204, column: 3)
!5965 = !DILocation(line: 204, column: 3, scope: !5966)
!5966 = distinct !DILexicalBlock(scope: !5964, file: !5123, line: 204, column: 3)
!5967 = !DILocation(line: 204, column: 3, scope: !5968)
!5968 = distinct !DILexicalBlock(scope: !5964, file: !5123, line: 204, column: 3)
!5969 = !DILocation(line: 205, column: 1, scope: !5925)
!5970 = distinct !DISubprogram(name: "rb_set_parent", scope: !5123, file: !5123, line: 183, type: !5127, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5971)
!5971 = !{!5972, !5973}
!5972 = !DILocalVariable(name: "rb", arg: 1, scope: !5970, file: !5123, line: 183, type: !481)
!5973 = !DILocalVariable(name: "p", arg: 2, scope: !5970, file: !5123, line: 183, type: !481)
!5974 = !DILocation(line: 183, column: 50, scope: !5970)
!5975 = !DILocation(line: 183, column: 70, scope: !5970)
!5976 = !DILocation(line: 185, column: 26, scope: !5970)
!5977 = !DILocation(line: 185, column: 56, scope: !5970)
!5978 = !DILocation(line: 185, column: 41, scope: !5970)
!5979 = !DILocation(line: 185, column: 39, scope: !5970)
!5980 = !DILocation(line: 185, column: 2, scope: !5970)
!5981 = !DILocation(line: 185, column: 6, scope: !5970)
!5982 = !DILocation(line: 185, column: 24, scope: !5970)
!5983 = !DILocation(line: 186, column: 1, scope: !5970)
!5984 = distinct !DISubprogram(name: "rb_set_parent_color", scope: !5123, file: !5123, line: 188, type: !5985, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5987)
!5985 = !DISubroutineType(types: !5986)
!5986 = !{null, !481, !481, !25}
!5987 = !{!5988, !5989, !5990}
!5988 = !DILocalVariable(name: "rb", arg: 1, scope: !5984, file: !5123, line: 188, type: !481)
!5989 = !DILocalVariable(name: "p", arg: 2, scope: !5984, file: !5123, line: 189, type: !481)
!5990 = !DILocalVariable(name: "color", arg: 3, scope: !5984, file: !5123, line: 189, type: !25)
!5991 = !DILocation(line: 188, column: 56, scope: !5984)
!5992 = !DILocation(line: 189, column: 28, scope: !5984)
!5993 = !DILocation(line: 189, column: 35, scope: !5984)
!5994 = !DILocation(line: 191, column: 41, scope: !5984)
!5995 = !DILocation(line: 191, column: 26, scope: !5984)
!5996 = !DILocation(line: 191, column: 45, scope: !5984)
!5997 = !DILocation(line: 191, column: 43, scope: !5984)
!5998 = !DILocation(line: 191, column: 2, scope: !5984)
!5999 = !DILocation(line: 191, column: 6, scope: !5984)
!6000 = !DILocation(line: 191, column: 24, scope: !5984)
!6001 = !DILocation(line: 192, column: 1, scope: !5984)
!6002 = !DISubprogram(name: "__rb_insert_augmented", scope: !5123, file: !5123, line: 33, type: !5923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6003 = distinct !DISubprogram(name: "avc_start_pgoff", scope: !3, file: !3, line: 61, type: !6004, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6006)
!6004 = !DISubroutineType(types: !6005)
!6005 = !{!42, !5110}
!6006 = !{!6007}
!6007 = !DILocalVariable(name: "avc", arg: 1, scope: !6003, file: !3, line: 61, type: !5110)
!6008 = !DILocation(line: 61, column: 68, scope: !6003)
!6009 = !DILocation(line: 63, column: 25, scope: !6003)
!6010 = !DILocation(line: 63, column: 30, scope: !6003)
!6011 = !DILocation(line: 63, column: 9, scope: !6003)
!6012 = !DILocation(line: 63, column: 2, scope: !6003)
!6013 = distinct !DISubprogram(name: "avc_last_pgoff", scope: !3, file: !3, line: 66, type: !6004, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6014)
!6014 = !{!6015}
!6015 = !DILocalVariable(name: "avc", arg: 1, scope: !6013, file: !3, line: 66, type: !5110)
!6016 = !DILocation(line: 66, column: 67, scope: !6013)
!6017 = !DILocation(line: 68, column: 24, scope: !6013)
!6018 = !DILocation(line: 68, column: 29, scope: !6013)
!6019 = !DILocation(line: 68, column: 9, scope: !6013)
!6020 = !DILocation(line: 68, column: 2, scope: !6013)
!6021 = distinct !DISubprogram(name: "__anon_vma_interval_tree_augment_propagate", scope: !3, file: !3, line: 71, type: !5127, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6022)
!6022 = !{!6023, !6024, !6025, !6027}
!6023 = !DILocalVariable(name: "rb", arg: 1, scope: !6021, file: !3, line: 71, type: !481)
!6024 = !DILocalVariable(name: "stop", arg: 2, scope: !6021, file: !3, line: 71, type: !481)
!6025 = !DILocalVariable(name: "node", scope: !6026, file: !3, line: 71, type: !5110)
!6026 = distinct !DILexicalBlock(scope: !6021, file: !3, line: 71, column: 1)
!6027 = !DILocalVariable(name: "__mptr", scope: !6028, file: !3, line: 71, type: !23)
!6028 = distinct !DILexicalBlock(scope: !6026, file: !3, line: 71, column: 1)
!6029 = !DILocation(line: 71, column: 1, scope: !6021)
!6030 = !DILocation(line: 71, column: 1, scope: !6026)
!6031 = !DILocation(line: 71, column: 1, scope: !6028)
!6032 = !DILocation(line: 71, column: 1, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !6026, file: !3, line: 71, column: 1)
!6034 = distinct !{!6034, !6029, !6029, !5167, !5168}
!6035 = distinct !DISubprogram(name: "__anon_vma_interval_tree_augment_copy", scope: !3, file: !3, line: 71, type: !5127, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6036)
!6036 = !{!6037, !6038, !6039, !6040, !6042, !6043}
!6037 = !DILocalVariable(name: "rb_old", arg: 1, scope: !6035, file: !3, line: 71, type: !481)
!6038 = !DILocalVariable(name: "rb_new", arg: 2, scope: !6035, file: !3, line: 71, type: !481)
!6039 = !DILocalVariable(name: "old", scope: !6035, file: !3, line: 71, type: !5110)
!6040 = !DILocalVariable(name: "__mptr", scope: !6041, file: !3, line: 71, type: !23)
!6041 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 71, column: 1)
!6042 = !DILocalVariable(name: "new", scope: !6035, file: !3, line: 71, type: !5110)
!6043 = !DILocalVariable(name: "__mptr", scope: !6044, file: !3, line: 71, type: !23)
!6044 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 71, column: 1)
!6045 = !DILocation(line: 71, column: 1, scope: !6035)
!6046 = !DILocation(line: 71, column: 1, scope: !6041)
!6047 = !DILocation(line: 71, column: 1, scope: !6044)
!6048 = distinct !DISubprogram(name: "__anon_vma_interval_tree_augment_rotate", scope: !3, file: !3, line: 71, type: !5127, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6049)
!6049 = !{!6050, !6051, !6052, !6053, !6055, !6056}
!6050 = !DILocalVariable(name: "rb_old", arg: 1, scope: !6048, file: !3, line: 71, type: !481)
!6051 = !DILocalVariable(name: "rb_new", arg: 2, scope: !6048, file: !3, line: 71, type: !481)
!6052 = !DILocalVariable(name: "old", scope: !6048, file: !3, line: 71, type: !5110)
!6053 = !DILocalVariable(name: "__mptr", scope: !6054, file: !3, line: 71, type: !23)
!6054 = distinct !DILexicalBlock(scope: !6048, file: !3, line: 71, column: 1)
!6055 = !DILocalVariable(name: "new", scope: !6048, file: !3, line: 71, type: !5110)
!6056 = !DILocalVariable(name: "__mptr", scope: !6057, file: !3, line: 71, type: !23)
!6057 = distinct !DILexicalBlock(scope: !6048, file: !3, line: 71, column: 1)
!6058 = !DILocation(line: 71, column: 1, scope: !6048)
!6059 = !DILocation(line: 71, column: 1, scope: !6054)
!6060 = !DILocation(line: 71, column: 1, scope: !6057)
!6061 = distinct !DISubprogram(name: "__anon_vma_interval_tree_augment_compute_max", scope: !3, file: !3, line: 71, type: !6062, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6064)
!6062 = !DISubroutineType(types: !6063)
!6063 = !{!545, !5110, !545}
!6064 = !{!6065, !6066, !6067, !6068, !6069, !6073}
!6065 = !DILocalVariable(name: "node", arg: 1, scope: !6061, file: !3, line: 71, type: !5110)
!6066 = !DILocalVariable(name: "exit", arg: 2, scope: !6061, file: !3, line: 71, type: !545)
!6067 = !DILocalVariable(name: "child", scope: !6061, file: !3, line: 71, type: !5110)
!6068 = !DILocalVariable(name: "max", scope: !6061, file: !3, line: 71, type: !42)
!6069 = !DILocalVariable(name: "__mptr", scope: !6070, file: !3, line: 71, type: !23)
!6070 = distinct !DILexicalBlock(scope: !6071, file: !3, line: 71, column: 1)
!6071 = distinct !DILexicalBlock(scope: !6072, file: !3, line: 71, column: 1)
!6072 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 71, column: 1)
!6073 = !DILocalVariable(name: "__mptr", scope: !6074, file: !3, line: 71, type: !23)
!6074 = distinct !DILexicalBlock(scope: !6075, file: !3, line: 71, column: 1)
!6075 = distinct !DILexicalBlock(scope: !6076, file: !3, line: 71, column: 1)
!6076 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 71, column: 1)
!6077 = !DILocation(line: 71, column: 1, scope: !6061)
!6078 = !DILocation(line: 71, column: 1, scope: !6072)
!6079 = !DILocation(line: 71, column: 1, scope: !6070)
!6080 = !DILocation(line: 71, column: 1, scope: !6071)
!6081 = !DILocation(line: 71, column: 1, scope: !6082)
!6082 = distinct !DILexicalBlock(scope: !6071, file: !3, line: 71, column: 1)
!6083 = !DILocation(line: 71, column: 1, scope: !6076)
!6084 = !DILocation(line: 71, column: 1, scope: !6074)
!6085 = !DILocation(line: 71, column: 1, scope: !6075)
!6086 = !DILocation(line: 71, column: 1, scope: !6087)
!6087 = distinct !DILexicalBlock(scope: !6075, file: !3, line: 71, column: 1)
!6088 = !DILocation(line: 71, column: 1, scope: !6089)
!6089 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 71, column: 1)
!6090 = distinct !DISubprogram(name: "__anon_vma_interval_tree_subtree_search", scope: !3, file: !3, line: 71, type: !5572, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6091)
!6091 = !{!6092, !6093, !6094, !6095, !6099, !6101}
!6092 = !DILocalVariable(name: "node", arg: 1, scope: !6090, file: !3, line: 71, type: !5110)
!6093 = !DILocalVariable(name: "start", arg: 2, scope: !6090, file: !3, line: 71, type: !42)
!6094 = !DILocalVariable(name: "last", arg: 3, scope: !6090, file: !3, line: 71, type: !42)
!6095 = !DILocalVariable(name: "left", scope: !6096, file: !3, line: 71, type: !5110)
!6096 = distinct !DILexicalBlock(scope: !6097, file: !3, line: 71, column: 1)
!6097 = distinct !DILexicalBlock(scope: !6098, file: !3, line: 71, column: 1)
!6098 = distinct !DILexicalBlock(scope: !6090, file: !3, line: 71, column: 1)
!6099 = !DILocalVariable(name: "__mptr", scope: !6100, file: !3, line: 71, type: !23)
!6100 = distinct !DILexicalBlock(scope: !6096, file: !3, line: 71, column: 1)
!6101 = !DILocalVariable(name: "__mptr", scope: !6102, file: !3, line: 71, type: !23)
!6102 = distinct !DILexicalBlock(scope: !6103, file: !3, line: 71, column: 1)
!6103 = distinct !DILexicalBlock(scope: !6104, file: !3, line: 71, column: 1)
!6104 = distinct !DILexicalBlock(scope: !6105, file: !3, line: 71, column: 1)
!6105 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 71, column: 1)
!6106 = distinct !DILexicalBlock(scope: !6098, file: !3, line: 71, column: 1)
!6107 = !DILocation(line: 71, column: 1, scope: !6090)
!6108 = !DILocation(line: 71, column: 1, scope: !6097)
!6109 = !DILocation(line: 71, column: 1, scope: !6098)
!6110 = !DILocation(line: 71, column: 1, scope: !6096)
!6111 = !DILocation(line: 71, column: 1, scope: !6100)
!6112 = !DILocation(line: 71, column: 1, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6096, file: !3, line: 71, column: 1)
!6114 = !DILocation(line: 71, column: 1, scope: !6115)
!6115 = distinct !DILexicalBlock(scope: !6113, file: !3, line: 71, column: 1)
!6116 = distinct !{!6116, !6107, !6107, !5168}
!6117 = !DILocation(line: 71, column: 1, scope: !6106)
!6118 = !DILocation(line: 71, column: 1, scope: !6119)
!6119 = distinct !DILexicalBlock(scope: !6105, file: !3, line: 71, column: 1)
!6120 = !DILocation(line: 71, column: 1, scope: !6105)
!6121 = !DILocation(line: 71, column: 1, scope: !6104)
!6122 = !DILocation(line: 71, column: 1, scope: !6102)
!6123 = !DILocation(line: 71, column: 1, scope: !6103)
!6124 = !DILocation(line: 71, column: 1, scope: !6125)
!6125 = distinct !DILexicalBlock(scope: !6103, file: !3, line: 71, column: 1)

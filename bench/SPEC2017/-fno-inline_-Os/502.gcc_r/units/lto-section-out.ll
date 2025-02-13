; ModuleID = 'lto-section-out.c'
source_filename = "lto-section-out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.lto_output_stream = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.lto_decl_slot = type { ptr, i32 }
%struct.lto_tree_ref_encoder = type { ptr, i32, ptr }
%struct.lto_simple_output_block = type { i32, ptr, ptr }
%struct.lto_simple_header = type { %struct.lto_header, i32, i32 }
%struct.lto_header = type { i16, i16, i32 }
%struct.lto_out_decl_state = type { [7 x %struct.lto_tree_ref_encoder], ptr, ptr }
%struct.VEC_lto_out_decl_state_ptr_base = type { i32, i32, [1 x ptr] }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }

@forced_extern_inline = internal unnamed_addr global ptr null, align 8
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@decl_state_stack = internal global ptr null, align 8
@lto_function_decl_states = dso_local global ptr null, align 8
@.str = private unnamed_addr constant [18 x i8] c"lto-section-out.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_new_extern_inline_states() local_unnamed_addr #0 !prof !34 {
  %1 = tail call ptr @lto_bitmap_alloc() #11
  store ptr %1, ptr @forced_extern_inline, align 8, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare ptr @lto_bitmap_alloc() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_delete_extern_inline_states() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @forced_extern_inline, align 8, !tbaa !35
  tail call void @lto_bitmap_free(ptr noundef %1) #11
  store ptr null, ptr @forced_extern_inline, align 8, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare void @lto_bitmap_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_force_functions_extern_inline(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @forced_extern_inline, align 8, !tbaa !35
  %3 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %2, ptr noundef %0) #11
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @lto_forced_extern_inline_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @forced_extern_inline, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !39
  %5 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %4) #11
  %6 = trunc i32 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @lto_hash_decl_slot_node(ptr nocapture noundef readonly %0) #2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !40
  %3 = ptrtoint ptr %2 to i64
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 262143
  ret i32 %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @lto_eq_decl_slot_node(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !40
  %4 = load ptr, ptr %1, align 8, !tbaa !40
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @lto_hash_type_slot_node(ptr nocapture noundef readonly %0) #4 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !40
  %3 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !39
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @lto_eq_type_slot_node(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !40
  %4 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !39
  %6 = load ptr, ptr %1, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !39
  %9 = icmp eq i32 %5, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_begin_section(ptr noundef %0, i8 zeroext %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 35), align 8, !tbaa !43
  tail call void %3(ptr noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_end_section() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 35, i32 2), align 8, !tbaa !52
  tail call void %1() #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_write_stream(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !53
  %3 = icmp eq ptr %2, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds i8, ptr %2, i64 8
  %7 = load ptr, ptr %2, align 8, !tbaa !55
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %4, %9
  %10 = phi ptr [ %20, %9 ], [ %7, %4 ]
  %11 = phi i32 [ %19, %9 ], [ 1016, %4 ]
  %12 = phi ptr [ %18, %9 ], [ %6, %4 ]
  %13 = phi ptr [ %10, %9 ], [ %2, %4 ]
  %14 = phi i32 [ %17, %9 ], [ 1024, %4 ]
  %15 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 35, i32 1), align 8, !tbaa !57
  %16 = zext i32 %11 to i64
  tail call void %15(ptr noundef nonnull %12, i64 noundef %16, ptr noundef nonnull %13) #11
  %17 = shl i32 %14, 1
  %18 = getelementptr inbounds i8, ptr %10, i64 8
  %19 = add i32 %17, -8
  %20 = load ptr, ptr %10, align 8, !tbaa !55
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %9, !llvm.loop !58

22:                                               ; preds = %9, %4
  %23 = phi ptr [ %2, %4 ], [ %10, %9 ]
  %24 = phi ptr [ %6, %4 ], [ %18, %9 ]
  %25 = phi i32 [ 1016, %4 ], [ %19, %9 ]
  %26 = load i32, ptr %5, align 8, !tbaa !60
  %27 = sub i32 %25, %26
  %28 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 35, i32 1), align 8, !tbaa !57
  %29 = zext i32 %27 to i64
  tail call void %28(ptr noundef nonnull %24, i64 noundef %29, ptr noundef nonnull %23) #11
  br label %30

30:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_output_1_stream(ptr nocapture noundef %0, i8 noundef signext %1) local_unnamed_addr #0 !prof !34 {
  %3 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !60
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call fastcc void @append_block(ptr noundef nonnull %0) #12
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  store i8 %1, ptr %9, align 1, !tbaa !39
  %10 = load ptr, ptr %8, align 8, !tbaa !61
  %11 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %11, ptr %8, align 8, !tbaa !61
  %12 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !62
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !62
  %15 = load i32, ptr %3, align 8, !tbaa !60
  %16 = add i32 %15, -1
  store i32 %16, ptr %3, align 8, !tbaa !60
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @append_block(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !63 {
  %2 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !60
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 254, ptr noundef nonnull @.str.1) #11
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr %0, align 8, !tbaa !53
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 4
  br i1 %8, label %10, label %12

10:                                               ; preds = %6
  store i32 1024, ptr %9, align 4, !tbaa !64
  %11 = tail call ptr @xmalloc(i64 noundef 1024) #11
  store ptr %11, ptr %0, align 8, !tbaa !53
  br label %19

12:                                               ; preds = %6
  %13 = load i32, ptr %9, align 4, !tbaa !64
  %14 = shl i32 %13, 1
  store i32 %14, ptr %9, align 4, !tbaa !64
  %15 = zext i32 %14 to i64
  %16 = tail call ptr @xmalloc(i64 noundef %15) #11
  %17 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !65
  store ptr %16, ptr %18, align 8, !tbaa !55
  br label %19

19:                                               ; preds = %12, %10
  %20 = phi ptr [ %11, %10 ], [ %16, %12 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 8
  %22 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !61
  %23 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 1
  store ptr %20, ptr %23, align 8, !tbaa !65
  store ptr null, ptr %20, align 8, !tbaa !55
  %24 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !64
  %26 = add i32 %25, -8
  store i32 %26, ptr %2, align 8, !tbaa !60
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_output_data_stream(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %32, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %6, align 8, !tbaa !60
  br label %10

10:                                               ; preds = %5, %17
  %11 = phi i32 [ %9, %5 ], [ %28, %17 ]
  %12 = phi i64 [ %2, %5 ], [ %30, %17 ]
  %13 = phi ptr [ %1, %5 ], [ %29, %17 ]
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  tail call fastcc void @append_block(ptr noundef nonnull %0) #12
  %16 = load i32, ptr %6, align 8, !tbaa !60
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi i32 [ %16, %15 ], [ %11, %10 ]
  %19 = zext i32 %18 to i64
  %20 = tail call i64 @llvm.umin.i64(i64 %12, i64 %19)
  %21 = load ptr, ptr %7, align 8, !tbaa !61
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 1 %13, i64 %20, i1 false)
  %22 = load ptr, ptr %7, align 8, !tbaa !61
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store ptr %23, ptr %7, align 8, !tbaa !61
  %24 = load i32, ptr %8, align 8, !tbaa !62
  %25 = trunc i64 %20 to i32
  %26 = add i32 %24, %25
  store i32 %26, ptr %8, align 8, !tbaa !62
  %27 = load i32, ptr %6, align 8, !tbaa !60
  %28 = sub i32 %27, %25
  store i32 %28, ptr %6, align 8, !tbaa !60
  %29 = getelementptr inbounds i8, ptr %13, i64 %20
  %30 = sub i64 %12, %20
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %10, !llvm.loop !66

32:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_output_uleb128_stream(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !34 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i64 [ %1, %2 ], [ %7, %3 ]
  %5 = trunc i64 %4 to i8
  %6 = and i8 %5, 127
  %7 = lshr i64 %4, 7
  %8 = icmp ult i64 %4, 128
  %9 = select i1 %8, i8 0, i8 -128
  %10 = or disjoint i8 %6, %9
  tail call void @lto_output_1_stream(ptr noundef %0, i8 noundef signext %10) #12
  br i1 %8, label %11, label %3, !llvm.loop !67

11:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_output_widest_uint_uleb128_stream(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !34 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i64 [ %1, %2 ], [ %7, %3 ]
  %5 = trunc i64 %4 to i8
  %6 = and i8 %5, 127
  %7 = lshr i64 %4, 7
  %8 = icmp ult i64 %4, 128
  %9 = select i1 %8, i8 0, i8 -128
  %10 = or disjoint i8 %6, %9
  tail call void @lto_output_1_stream(ptr noundef %0, i8 noundef signext %10) #12
  br i1 %8, label %11, label %3, !llvm.loop !68

11:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_output_sleb128_stream(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !34 {
  br label %3

3:                                                ; preds = %6, %2
  %4 = phi i64 [ %1, %2 ], [ %9, %6 ]
  %5 = icmp ult i64 %4, 64
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = trunc i64 %4 to i32
  %8 = and i32 %7, 127
  %9 = ashr i64 %4, 7
  %10 = icmp eq i64 %9, -1
  %11 = and i32 %7, 64
  %12 = icmp ne i32 %11, 0
  %13 = and i1 %10, %12
  %14 = or i32 %7, 128
  %15 = select i1 %13, i32 %8, i32 %14
  %16 = trunc i32 %15 to i8
  tail call void @lto_output_1_stream(ptr noundef %0, i8 noundef signext %16) #12
  br i1 %13, label %19, label %3, !llvm.loop !69

17:                                               ; preds = %3
  %18 = trunc i64 %4 to i8
  tail call void @lto_output_1_stream(ptr noundef %0, i8 noundef signext %18) #12
  br label %19

19:                                               ; preds = %6, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @lto_output_decl_index(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !prof !34 {
  %5 = alloca %struct.lto_decl_slot, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  store ptr %2, ptr %5, align 8, !tbaa !40
  %6 = load ptr, ptr %1, align 8, !tbaa !70
  %7 = call ptr @htab_find_slot(ptr noundef %6, ptr noundef nonnull %5, i32 noundef 1) #11
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = call ptr @xmalloc(i64 noundef 16) #11
  %12 = getelementptr inbounds %struct.lto_tree_ref_encoder, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !72
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !72
  store ptr %2, ptr %11, align 8, !tbaa !40
  %15 = getelementptr inbounds %struct.lto_decl_slot, ptr %11, i64 0, i32 1
  store i32 %13, ptr %15, align 8, !tbaa !73
  store ptr %11, ptr %7, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.lto_tree_ref_encoder, ptr %1, i64 0, i32 2
  call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %16, ptr noundef %2) #12
  br label %20

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.lto_decl_slot, ptr %8, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !73
  br label %20

20:                                               ; preds = %17, %10
  %21 = phi i8 [ 1, %10 ], [ 0, %17 ]
  %22 = phi i32 [ %13, %10 ], [ %19, %17 ]
  %23 = icmp eq ptr %0, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = sext i32 %22 to i64
  call void @lto_output_uleb128_stream(ptr noundef nonnull %0, i64 noundef %25) #12
  br label %26

26:                                               ; preds = %24, %20
  store i32 %22, ptr %3, align 4, !tbaa !74
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  ret i8 %21
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !75 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #12
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_output_field_decl_index(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %0, i64 0, i64 1
  %6 = call zeroext i8 @lto_output_decl_index(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %4) #12, !range !76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_output_fn_decl_index(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %0, i64 0, i64 2
  %6 = call zeroext i8 @lto_output_decl_index(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %4) #12, !range !76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_output_namespace_decl_index(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %0, i64 0, i64 5
  %6 = call zeroext i8 @lto_output_decl_index(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %4) #12, !range !76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_output_var_decl_index(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %0, i64 0, i64 3
  %6 = call zeroext i8 @lto_output_decl_index(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %4) #12, !range !76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_output_type_decl_index(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %0, i64 0, i64 4
  %6 = call zeroext i8 @lto_output_decl_index(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %4) #12, !range !76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_output_type_ref_index(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = call zeroext i8 @lto_output_decl_index(ptr noundef %1, ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4) #12, !range !76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @lto_create_simple_output_block(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #11
  store i32 %0, ptr %2, align 8, !tbaa !77
  %3 = tail call ptr @lto_get_out_decl_state() #12
  %4 = getelementptr inbounds %struct.lto_simple_output_block, ptr %2, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !79
  %5 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #11
  %6 = getelementptr inbounds %struct.lto_simple_output_block, ptr %2, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !80
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @lto_get_out_decl_state() local_unnamed_addr #4 !prof !34 {
  %1 = load ptr, ptr @decl_state_stack, align 8
  %2 = tail call fastcc ptr @VEC_lto_out_decl_state_ptr_base_last(ptr noundef %1) #12
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_destroy_simple_output_block(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = alloca %struct.lto_simple_header, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  %3 = load i32, ptr %0, align 8, !tbaa !77
  %4 = tail call ptr @lto_get_section_name(i32 noundef %3, ptr noundef null) #11
  tail call void @lto_begin_section(ptr noundef %4, i8 zeroext poison) #12
  tail call void @free(ptr noundef %4) #12
  store i16 1, ptr %2, align 4, !tbaa !81
  %5 = getelementptr inbounds %struct.lto_header, ptr %2, i64 0, i32 1
  store i16 0, ptr %5, align 2, !tbaa !85
  %6 = getelementptr inbounds %struct.lto_header, ptr %2, i64 0, i32 2
  store i32 3, ptr %6, align 4, !tbaa !86
  %7 = getelementptr inbounds %struct.lto_simple_header, ptr %2, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !87
  %8 = getelementptr inbounds %struct.lto_simple_output_block, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = getelementptr inbounds %struct.lto_output_stream, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !62
  %12 = getelementptr inbounds %struct.lto_simple_header, ptr %2, i64 0, i32 1
  store i32 %11, ptr %12, align 4, !tbaa !88
  %13 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #11
  call void @lto_output_data_stream(ptr noundef %13, ptr noundef nonnull %2, i64 noundef 16) #12
  tail call void @lto_write_stream(ptr noundef %13) #12
  tail call void @free(ptr noundef %13) #12
  %14 = load ptr, ptr %8, align 8, !tbaa !80
  tail call void @lto_write_stream(ptr noundef %14) #12
  tail call void @lto_end_section() #12
  %15 = load ptr, ptr %8, align 8, !tbaa !80
  tail call void @free(ptr noundef %15) #12
  tail call void @free(ptr noundef %0) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  ret void
}

; Function Attrs: optsize
declare ptr @lto_get_section_name(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lto_new_out_decl_state() local_unnamed_addr #0 !prof !34 {
  %1 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 184) #11
  br label %2

2:                                                ; preds = %0, %2
  %3 = phi i64 [ 0, %0 ], [ %8, %2 ]
  %4 = icmp eq i64 %3, 0
  %5 = select i1 %4, ptr @lto_hash_type_slot_node, ptr @lto_hash_decl_slot_node
  %6 = select i1 %4, ptr @lto_eq_type_slot_node, ptr @lto_eq_decl_slot_node
  %7 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %1, i64 0, i64 %3
  tail call fastcc void @lto_init_tree_ref_encoder(ptr noundef %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %8 = add nuw nsw i64 %3, 1
  %9 = icmp eq i64 %8, 7
  br i1 %9, label %10, label %2, !llvm.loop !89

10:                                               ; preds = %2
  %11 = tail call ptr @lto_cgraph_encoder_new() #11
  %12 = getelementptr inbounds %struct.lto_out_decl_state, ptr %1, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !90
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_init_tree_ref_encoder(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !92 {
  %4 = tail call ptr @htab_create(i64 noundef 37, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @free) #11
  store ptr %4, ptr %0, align 8, !tbaa !70
  %5 = getelementptr inbounds %struct.lto_tree_ref_encoder, ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !72
  %6 = getelementptr inbounds %struct.lto_tree_ref_encoder, ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !93
  ret void
}

; Function Attrs: optsize
declare ptr @lto_cgraph_encoder_new() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_delete_out_decl_state(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !34 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %0, i64 0, i64 %3
  tail call fastcc void @lto_destroy_tree_ref_encoder(ptr noundef %4) #12
  %5 = add nuw nsw i64 %3, 1
  %6 = icmp eq i64 %5, 7
  br i1 %6, label %7, label %2, !llvm.loop !94

7:                                                ; preds = %2
  tail call void @free(ptr noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_destroy_tree_ref_encoder(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !95 {
  %2 = load ptr, ptr %0, align 8, !tbaa !70
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @htab_delete(ptr noundef nonnull %2) #11
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.lto_tree_ref_encoder, ptr %0, i64 0, i32 2
  tail call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %6) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_lto_out_decl_state_ptr_base_last(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !34 !PGOFuncName !96 {
  %2 = load i32, ptr %0, align 8, !tbaa !97
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_push_out_decl_state(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  tail call fastcc void @VEC_lto_out_decl_state_ptr_heap_safe_push(ptr noundef nonnull @decl_state_stack, ptr noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_lto_out_decl_state_ptr_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !99 {
  tail call fastcc void @VEC_lto_out_decl_state_ptr_heap_reserve(ptr noundef %0) #12
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  tail call fastcc void @VEC_lto_out_decl_state_ptr_base_quick_push(ptr noundef %3, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @lto_pop_out_decl_state() local_unnamed_addr #7 !prof !34 {
  %1 = load ptr, ptr @decl_state_stack, align 8
  %2 = tail call fastcc ptr @VEC_lto_out_decl_state_ptr_base_pop(ptr noundef %1) #12
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_lto_out_decl_state_ptr_base_pop(ptr nocapture noundef %0) unnamed_addr #8 !prof !34 !PGOFuncName !100 {
  %2 = load i32, ptr %0, align 8, !tbaa !97
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !97
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_record_function_out_decl_state(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  br label %3

3:                                                ; preds = %2, %9
  %4 = phi i64 [ 0, %2 ], [ %10, %9 ]
  %5 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %1, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @htab_delete(ptr noundef nonnull %6) #11
  store ptr null, ptr %5, align 8, !tbaa !70
  br label %9

9:                                                ; preds = %3, %8
  %10 = add nuw nsw i64 %4, 1
  %11 = icmp eq i64 %10, 7
  br i1 %11, label %12, label %3, !llvm.loop !101

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.lto_out_decl_state, ptr %1, i64 0, i32 2
  store ptr %0, ptr %13, align 8, !tbaa !102
  tail call fastcc void @VEC_lto_out_decl_state_ptr_heap_safe_push(ptr noundef nonnull @lto_function_decl_states, ptr noundef nonnull %1) #12
  ret void
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !103 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #11
  store ptr %6, ptr %0, align 8, !tbaa !35
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !34 !PGOFuncName !104 {
  %3 = load i32, ptr %0, align 8, !tbaa !105
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !105
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #2 !prof !34 !PGOFuncName !107 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !108
  %6 = load i32, ptr %0, align 8, !tbaa !105
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #9 !prof !34 !PGOFuncName !109 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #12
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_lto_out_decl_state_ptr_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !110 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = tail call fastcc i32 @VEC_lto_out_decl_state_ptr_base_space(ptr noundef %2) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #11
  store ptr %6, ptr %0, align 8, !tbaa !35
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_lto_out_decl_state_ptr_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !34 !PGOFuncName !111 {
  %3 = load i32, ptr %0, align 8, !tbaa !97
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !97
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_lto_out_decl_state_ptr_base_space(ptr noundef readonly %0) unnamed_addr #2 !prof !34 !PGOFuncName !112 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !113
  %6 = load i32, ptr %0, align 8, !tbaa !97
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!37, !37, i64 0}
!40 = !{!41, !36, i64 0}
!41 = !{!"lto_decl_slot", !36, i64 0, !42, i64 8}
!42 = !{!"int", !37, i64 0}
!43 = !{!44, !36, i64 560}
!44 = !{!"lang_hooks", !36, i64 0, !45, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !46, i64 240, !47, i64 248, !48, i64 256, !49, i64 272, !50, i64 432, !51, i64 560, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !37, i64 672}
!45 = !{!"long", !37, i64 0}
!46 = !{!"lang_hooks_for_tree_inlining", !36, i64 0}
!47 = !{!"lang_hooks_for_callgraph", !36, i64 0}
!48 = !{!"lang_hooks_for_tree_dump", !36, i64 0, !36, i64 8}
!49 = !{!"lang_hooks_for_decls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152}
!50 = !{!"lang_hooks_for_types", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !37, i64 120}
!51 = !{!"lang_hooks_for_lto", !36, i64 0, !36, i64 8, !36, i64 16}
!52 = !{!44, !36, i64 576}
!53 = !{!54, !36, i64 0}
!54 = !{!"lto_output_stream", !36, i64 0, !36, i64 8, !36, i64 16, !42, i64 24, !42, i64 28, !42, i64 32}
!55 = !{!56, !36, i64 0}
!56 = !{!"lto_char_ptr_base", !36, i64 0}
!57 = !{!44, !36, i64 568}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!54, !42, i64 24}
!61 = !{!54, !36, i64 16}
!62 = !{!54, !42, i64 32}
!63 = !{!"lto-section-out.c:append_block"}
!64 = !{!54, !42, i64 28}
!65 = !{!54, !36, i64 8}
!66 = distinct !{!66, !59}
!67 = distinct !{!67, !59}
!68 = distinct !{!68, !59}
!69 = distinct !{!69, !59}
!70 = !{!71, !36, i64 0}
!71 = !{!"lto_tree_ref_encoder", !36, i64 0, !42, i64 8, !36, i64 16}
!72 = !{!71, !42, i64 8}
!73 = !{!41, !42, i64 8}
!74 = !{!42, !42, i64 0}
!75 = !{!"lto-section-out.c:VEC_tree_heap_safe_push"}
!76 = !{i8 0, i8 2}
!77 = !{!78, !42, i64 0}
!78 = !{!"lto_simple_output_block", !42, i64 0, !36, i64 8, !36, i64 16}
!79 = !{!78, !36, i64 8}
!80 = !{!78, !36, i64 16}
!81 = !{!82, !84, i64 0}
!82 = !{!"lto_simple_header", !83, i64 0, !42, i64 8, !42, i64 12}
!83 = !{!"lto_header", !84, i64 0, !84, i64 2, !42, i64 4}
!84 = !{!"short", !37, i64 0}
!85 = !{!82, !84, i64 2}
!86 = !{!82, !42, i64 4}
!87 = !{!82, !42, i64 12}
!88 = !{!82, !42, i64 8}
!89 = distinct !{!89, !59}
!90 = !{!91, !36, i64 168}
!91 = !{!"lto_out_decl_state", !37, i64 0, !36, i64 168, !36, i64 176}
!92 = !{!"lto-section-out.c:lto_init_tree_ref_encoder"}
!93 = !{!71, !36, i64 16}
!94 = distinct !{!94, !59}
!95 = !{!"lto-section-out.c:lto_destroy_tree_ref_encoder"}
!96 = !{!"lto-section-out.c:VEC_lto_out_decl_state_ptr_base_last"}
!97 = !{!98, !42, i64 0}
!98 = !{!"VEC_lto_out_decl_state_ptr_base", !42, i64 0, !42, i64 4, !37, i64 8}
!99 = !{!"lto-section-out.c:VEC_lto_out_decl_state_ptr_heap_safe_push"}
!100 = !{!"lto-section-out.c:VEC_lto_out_decl_state_ptr_base_pop"}
!101 = distinct !{!101, !59}
!102 = !{!91, !36, i64 176}
!103 = !{!"lto-section-out.c:VEC_tree_heap_reserve"}
!104 = !{!"lto-section-out.c:VEC_tree_base_quick_push"}
!105 = !{!106, !42, i64 0}
!106 = !{!"VEC_tree_base", !42, i64 0, !42, i64 4, !37, i64 8}
!107 = !{!"lto-section-out.c:VEC_tree_base_space"}
!108 = !{!106, !42, i64 4}
!109 = !{!"lto-section-out.c:VEC_tree_heap_free"}
!110 = !{!"lto-section-out.c:VEC_lto_out_decl_state_ptr_heap_reserve"}
!111 = !{!"lto-section-out.c:VEC_lto_out_decl_state_ptr_base_quick_push"}
!112 = !{!"lto-section-out.c:VEC_lto_out_decl_state_ptr_base_space"}
!113 = !{!98, !42, i64 4}

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
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.lto_simple_output_block = type { i32, ptr, ptr }
%struct.lto_simple_header = type { %struct.lto_header, i32, i32 }
%struct.lto_header = type { i16, i16, i32 }
%struct.lto_out_decl_state = type { [7 x %struct.lto_tree_ref_encoder], ptr, ptr }
%struct.VEC_lto_out_decl_state_ptr_base = type { i32, i32, [1 x ptr] }

@lto_function_decl_states = dso_local global ptr null, align 8
@forced_extern_inline = internal unnamed_addr global ptr null, align 8
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str = private unnamed_addr constant [18 x i8] c"lto-section-out.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@decl_state_stack = internal global ptr null, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_new_extern_inline_states() local_unnamed_addr #0 {
  %1 = tail call ptr @lto_bitmap_alloc() #11
  store ptr %1, ptr @forced_extern_inline, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare ptr @lto_bitmap_alloc() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_delete_extern_inline_states() local_unnamed_addr #0 {
  %1 = load ptr, ptr @forced_extern_inline, align 8, !tbaa !6
  tail call void @lto_bitmap_free(ptr noundef %1) #11
  store ptr null, ptr @forced_extern_inline, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare void @lto_bitmap_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_force_functions_extern_inline(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @forced_extern_inline, align 8, !tbaa !6
  %3 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %2, ptr noundef %0) #11
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @lto_forced_extern_inline_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @forced_extern_inline, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !10
  %5 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %4) #11
  %6 = trunc i32 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @lto_hash_decl_slot_node(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
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
define dso_local i32 @lto_eq_decl_slot_node(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  %4 = load ptr, ptr %1, align 8, !tbaa !11
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @lto_hash_type_slot_node(ptr nocapture noundef readonly %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !10
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @lto_eq_type_slot_node(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !10
  %6 = load ptr, ptr %1, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !10
  %9 = icmp eq i32 %5, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_begin_section(ptr noundef %0, i8 zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 35), align 8, !tbaa !14
  tail call void %3(ptr noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_end_section() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 35, i32 2), align 8, !tbaa !23
  tail call void %1() #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_write_stream(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds i8, ptr %2, i64 8
  %7 = load ptr, ptr %2, align 8, !tbaa !26
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %4, %9
  %10 = phi ptr [ %20, %9 ], [ %7, %4 ]
  %11 = phi i32 [ %19, %9 ], [ 1016, %4 ]
  %12 = phi ptr [ %18, %9 ], [ %6, %4 ]
  %13 = phi ptr [ %10, %9 ], [ %2, %4 ]
  %14 = phi i32 [ %17, %9 ], [ 1024, %4 ]
  %15 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 35, i32 1), align 8, !tbaa !28
  %16 = zext i32 %11 to i64
  tail call void %15(ptr noundef nonnull %12, i64 noundef %16, ptr noundef nonnull %13) #11
  %17 = shl i32 %14, 1
  %18 = getelementptr inbounds i8, ptr %10, i64 8
  %19 = add i32 %17, -8
  %20 = load ptr, ptr %10, align 8, !tbaa !26
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %9, !llvm.loop !29

22:                                               ; preds = %9, %4
  %23 = phi ptr [ %2, %4 ], [ %10, %9 ]
  %24 = phi ptr [ %6, %4 ], [ %18, %9 ]
  %25 = phi i32 [ 1016, %4 ], [ %19, %9 ]
  %26 = load i32, ptr %5, align 8, !tbaa !31
  %27 = sub i32 %25, %26
  %28 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 35, i32 1), align 8, !tbaa !28
  %29 = zext i32 %27 to i64
  tail call void %28(ptr noundef nonnull %24, i64 noundef %29, ptr noundef nonnull %23) #11
  br label %30

30:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_output_1_stream(ptr nocapture noundef %0, i8 noundef signext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !31
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call fastcc void @append_block(ptr noundef nonnull %0) #12
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !32
  store i8 %1, ptr %9, align 1, !tbaa !10
  %10 = load ptr, ptr %8, align 8, !tbaa !32
  %11 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %11, ptr %8, align 8, !tbaa !32
  %12 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !33
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !33
  %15 = load i32, ptr %3, align 8, !tbaa !31
  %16 = add i32 %15, -1
  store i32 %16, ptr %3, align 8, !tbaa !31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @append_block(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !31
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 254, ptr noundef nonnull @.str.1) #11
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr %0, align 8, !tbaa !24
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 4
  br i1 %8, label %10, label %12

10:                                               ; preds = %6
  store i32 1024, ptr %9, align 4, !tbaa !34
  %11 = tail call ptr @xmalloc(i64 noundef 1024) #11
  store ptr %11, ptr %0, align 8, !tbaa !24
  br label %19

12:                                               ; preds = %6
  %13 = load i32, ptr %9, align 4, !tbaa !34
  %14 = shl i32 %13, 1
  store i32 %14, ptr %9, align 4, !tbaa !34
  %15 = zext i32 %14 to i64
  %16 = tail call ptr @xmalloc(i64 noundef %15) #11
  %17 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  store ptr %16, ptr %18, align 8, !tbaa !26
  br label %19

19:                                               ; preds = %12, %10
  %20 = phi ptr [ %11, %10 ], [ %16, %12 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 8
  %22 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !32
  %23 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 1
  store ptr %20, ptr %23, align 8, !tbaa !35
  store ptr null, ptr %20, align 8, !tbaa !26
  %24 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !34
  %26 = add i32 %25, -8
  store i32 %26, ptr %2, align 8, !tbaa !31
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_output_data_stream(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %32, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %6, align 8, !tbaa !31
  br label %10

10:                                               ; preds = %5, %17
  %11 = phi i32 [ %9, %5 ], [ %28, %17 ]
  %12 = phi i64 [ %2, %5 ], [ %30, %17 ]
  %13 = phi ptr [ %1, %5 ], [ %29, %17 ]
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  tail call fastcc void @append_block(ptr noundef nonnull %0) #12
  %16 = load i32, ptr %6, align 8, !tbaa !31
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi i32 [ %16, %15 ], [ %11, %10 ]
  %19 = zext i32 %18 to i64
  %20 = tail call i64 @llvm.umin.i64(i64 %12, i64 %19)
  %21 = load ptr, ptr %7, align 8, !tbaa !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 1 %13, i64 %20, i1 false)
  %22 = load ptr, ptr %7, align 8, !tbaa !32
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store ptr %23, ptr %7, align 8, !tbaa !32
  %24 = load i32, ptr %8, align 8, !tbaa !33
  %25 = trunc i64 %20 to i32
  %26 = add i32 %24, %25
  store i32 %26, ptr %8, align 8, !tbaa !33
  %27 = load i32, ptr %6, align 8, !tbaa !31
  %28 = sub i32 %27, %25
  store i32 %28, ptr %6, align 8, !tbaa !31
  %29 = getelementptr inbounds i8, ptr %13, i64 %20
  %30 = sub i64 %12, %20
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %10, !llvm.loop !36

32:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_output_uleb128_stream(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
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
  br i1 %8, label %11, label %3, !llvm.loop !37

11:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_output_widest_uint_uleb128_stream(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
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
  br i1 %8, label %11, label %3, !llvm.loop !38

11:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_output_sleb128_stream(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
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
  br i1 %13, label %19, label %3, !llvm.loop !39

17:                                               ; preds = %3
  %18 = trunc i64 %4 to i8
  tail call void @lto_output_1_stream(ptr noundef %0, i8 noundef signext %18) #12
  br label %19

19:                                               ; preds = %6, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @lto_output_decl_index(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.lto_decl_slot, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  store ptr %2, ptr %5, align 8, !tbaa !11
  %6 = load ptr, ptr %1, align 8, !tbaa !40
  %7 = call ptr @htab_find_slot(ptr noundef %6, ptr noundef nonnull %5, i32 noundef 1) #11
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = call ptr @xmalloc(i64 noundef 16) #11
  %12 = getelementptr inbounds %struct.lto_tree_ref_encoder, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !42
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !42
  store ptr %2, ptr %11, align 8, !tbaa !11
  %15 = getelementptr inbounds %struct.lto_decl_slot, ptr %11, i64 0, i32 1
  store i32 %13, ptr %15, align 8, !tbaa !43
  store ptr %11, ptr %7, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.lto_tree_ref_encoder, ptr %1, i64 0, i32 2
  call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %16, ptr noundef %2) #12
  br label %20

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.lto_decl_slot, ptr %8, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !43
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
  store i32 %22, ptr %3, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  ret i8 %21
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #12
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #11
  store ptr %6, ptr %0, align 8, !tbaa !6
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = load i32, ptr %0, align 8, !tbaa !45
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !45
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !47
  %6 = load i32, ptr %0, align 8, !tbaa !45
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_output_field_decl_index(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %0, i64 0, i64 1
  %6 = call zeroext i8 @lto_output_decl_index(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %4) #12, !range !48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_output_fn_decl_index(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %0, i64 0, i64 2
  %6 = call zeroext i8 @lto_output_decl_index(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %4) #12, !range !48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_output_namespace_decl_index(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %0, i64 0, i64 5
  %6 = call zeroext i8 @lto_output_decl_index(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %4) #12, !range !48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_output_var_decl_index(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %0, i64 0, i64 3
  %6 = call zeroext i8 @lto_output_decl_index(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %4) #12, !range !48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_output_type_decl_index(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %0, i64 0, i64 4
  %6 = call zeroext i8 @lto_output_decl_index(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %4) #12, !range !48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_output_type_ref_index(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = call zeroext i8 @lto_output_decl_index(ptr noundef %1, ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4) #12, !range !48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @lto_create_simple_output_block(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #11
  store i32 %0, ptr %2, align 8, !tbaa !49
  %3 = tail call ptr @lto_get_out_decl_state() #12
  %4 = getelementptr inbounds %struct.lto_simple_output_block, ptr %2, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !51
  %5 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #11
  %6 = getelementptr inbounds %struct.lto_simple_output_block, ptr %2, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !52
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @lto_get_out_decl_state() local_unnamed_addr #4 {
  %1 = load ptr, ptr @decl_state_stack, align 8
  %2 = tail call fastcc ptr @VEC_lto_out_decl_state_ptr_base_last(ptr noundef %1) #12
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_destroy_simple_output_block(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.lto_simple_header, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  %3 = load i32, ptr %0, align 8, !tbaa !49
  %4 = tail call ptr @lto_get_section_name(i32 noundef %3, ptr noundef null) #11
  tail call void @lto_begin_section(ptr noundef %4, i8 zeroext poison) #12
  tail call void @free(ptr noundef %4) #12
  store i16 1, ptr %2, align 4, !tbaa !53
  %5 = getelementptr inbounds %struct.lto_header, ptr %2, i64 0, i32 1
  store i16 0, ptr %5, align 2, !tbaa !57
  %6 = getelementptr inbounds %struct.lto_header, ptr %2, i64 0, i32 2
  store i32 3, ptr %6, align 4, !tbaa !58
  %7 = getelementptr inbounds %struct.lto_simple_header, ptr %2, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !59
  %8 = getelementptr inbounds %struct.lto_simple_output_block, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = getelementptr inbounds %struct.lto_output_stream, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !33
  %12 = getelementptr inbounds %struct.lto_simple_header, ptr %2, i64 0, i32 1
  store i32 %11, ptr %12, align 4, !tbaa !60
  %13 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #11
  call void @lto_output_data_stream(ptr noundef %13, ptr noundef nonnull %2, i64 noundef 16) #12
  tail call void @lto_write_stream(ptr noundef %13) #12
  tail call void @free(ptr noundef %13) #12
  %14 = load ptr, ptr %8, align 8, !tbaa !52
  tail call void @lto_write_stream(ptr noundef %14) #12
  tail call void @lto_end_section() #12
  %15 = load ptr, ptr %8, align 8, !tbaa !52
  tail call void @free(ptr noundef %15) #12
  tail call void @free(ptr noundef %0) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  ret void
}

; Function Attrs: optsize
declare ptr @lto_get_section_name(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lto_new_out_decl_state() local_unnamed_addr #0 {
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
  br i1 %9, label %10, label %2, !llvm.loop !61

10:                                               ; preds = %2
  %11 = tail call ptr @lto_cgraph_encoder_new() #11
  %12 = getelementptr inbounds %struct.lto_out_decl_state, ptr %1, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !62
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_init_tree_ref_encoder(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @htab_create(i64 noundef 37, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @free) #11
  store ptr %4, ptr %0, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.lto_tree_ref_encoder, ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.lto_tree_ref_encoder, ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !64
  ret void
}

; Function Attrs: optsize
declare ptr @lto_cgraph_encoder_new() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_delete_out_decl_state(ptr nocapture noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %0, i64 0, i64 %3
  tail call fastcc void @lto_destroy_tree_ref_encoder(ptr noundef %4) #12
  %5 = add nuw nsw i64 %3, 1
  %6 = icmp eq i64 %5, 7
  br i1 %6, label %7, label %2, !llvm.loop !65

7:                                                ; preds = %2
  tail call void @free(ptr noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_destroy_tree_ref_encoder(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !40
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

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #12
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_lto_out_decl_state_ptr_base_last(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load i32, ptr %0, align 8, !tbaa !66
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_push_out_decl_state(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @VEC_lto_out_decl_state_ptr_heap_safe_push(ptr noundef nonnull @decl_state_stack, ptr noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_lto_out_decl_state_ptr_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_lto_out_decl_state_ptr_heap_reserve(ptr noundef %0) #12
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  tail call fastcc void @VEC_lto_out_decl_state_ptr_base_quick_push(ptr noundef %3, ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_lto_out_decl_state_ptr_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = tail call fastcc i32 @VEC_lto_out_decl_state_ptr_base_space(ptr noundef %2) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #11
  store ptr %6, ptr %0, align 8, !tbaa !6
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_lto_out_decl_state_ptr_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = load i32, ptr %0, align 8, !tbaa !66
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !66
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_lto_out_decl_state_ptr_base_space(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !68
  %6 = load i32, ptr %0, align 8, !tbaa !66
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @lto_pop_out_decl_state() local_unnamed_addr #9 {
  %1 = load ptr, ptr @decl_state_stack, align 8
  %2 = tail call fastcc ptr @VEC_lto_out_decl_state_ptr_base_pop(ptr noundef %1) #12
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_lto_out_decl_state_ptr_base_pop(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8, !tbaa !66
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !66
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_record_function_out_decl_state(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %2, %9
  %4 = phi i64 [ 0, %2 ], [ %10, %9 ]
  %5 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %1, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @htab_delete(ptr noundef nonnull %6) #11
  store ptr null, ptr %5, align 8, !tbaa !40
  br label %9

9:                                                ; preds = %3, %8
  %10 = add nuw nsw i64 %4, 1
  %11 = icmp eq i64 %10, 7
  br i1 %11, label %12, label %3, !llvm.loop !69

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.lto_out_decl_state, ptr %1, i64 0, i32 2
  store ptr %0, ptr %13, align 8, !tbaa !70
  tail call fastcc void @VEC_lto_out_decl_state_ptr_heap_safe_push(ptr noundef nonnull @lto_function_decl_states, ptr noundef nonnull %1) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = !{!12, !7, i64 0}
!12 = !{!"lto_decl_slot", !7, i64 0, !13, i64 8}
!13 = !{!"int", !8, i64 0}
!14 = !{!15, !7, i64 560}
!15 = !{!"lang_hooks", !7, i64 0, !16, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !17, i64 240, !18, i64 248, !19, i64 256, !20, i64 272, !21, i64 432, !22, i64 560, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !7, i64 616, !7, i64 624, !7, i64 632, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !8, i64 672}
!16 = !{!"long", !8, i64 0}
!17 = !{!"lang_hooks_for_tree_inlining", !7, i64 0}
!18 = !{!"lang_hooks_for_callgraph", !7, i64 0}
!19 = !{!"lang_hooks_for_tree_dump", !7, i64 0, !7, i64 8}
!20 = !{!"lang_hooks_for_decls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!21 = !{!"lang_hooks_for_types", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !8, i64 120}
!22 = !{!"lang_hooks_for_lto", !7, i64 0, !7, i64 8, !7, i64 16}
!23 = !{!15, !7, i64 576}
!24 = !{!25, !7, i64 0}
!25 = !{!"lto_output_stream", !7, i64 0, !7, i64 8, !7, i64 16, !13, i64 24, !13, i64 28, !13, i64 32}
!26 = !{!27, !7, i64 0}
!27 = !{!"lto_char_ptr_base", !7, i64 0}
!28 = !{!15, !7, i64 568}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!25, !13, i64 24}
!32 = !{!25, !7, i64 16}
!33 = !{!25, !13, i64 32}
!34 = !{!25, !13, i64 28}
!35 = !{!25, !7, i64 8}
!36 = distinct !{!36, !30}
!37 = distinct !{!37, !30}
!38 = distinct !{!38, !30}
!39 = distinct !{!39, !30}
!40 = !{!41, !7, i64 0}
!41 = !{!"lto_tree_ref_encoder", !7, i64 0, !13, i64 8, !7, i64 16}
!42 = !{!41, !13, i64 8}
!43 = !{!12, !13, i64 8}
!44 = !{!13, !13, i64 0}
!45 = !{!46, !13, i64 0}
!46 = !{!"VEC_tree_base", !13, i64 0, !13, i64 4, !8, i64 8}
!47 = !{!46, !13, i64 4}
!48 = !{i8 0, i8 2}
!49 = !{!50, !13, i64 0}
!50 = !{!"lto_simple_output_block", !13, i64 0, !7, i64 8, !7, i64 16}
!51 = !{!50, !7, i64 8}
!52 = !{!50, !7, i64 16}
!53 = !{!54, !56, i64 0}
!54 = !{!"lto_simple_header", !55, i64 0, !13, i64 8, !13, i64 12}
!55 = !{!"lto_header", !56, i64 0, !56, i64 2, !13, i64 4}
!56 = !{!"short", !8, i64 0}
!57 = !{!54, !56, i64 2}
!58 = !{!54, !13, i64 4}
!59 = !{!54, !13, i64 12}
!60 = !{!54, !13, i64 8}
!61 = distinct !{!61, !30}
!62 = !{!63, !7, i64 168}
!63 = !{!"lto_out_decl_state", !8, i64 0, !7, i64 168, !7, i64 176}
!64 = !{!41, !7, i64 16}
!65 = distinct !{!65, !30}
!66 = !{!67, !13, i64 0}
!67 = !{!"VEC_lto_out_decl_state_ptr_base", !13, i64 0, !13, i64 4, !8, i64 8}
!68 = !{!67, !13, i64 4}
!69 = distinct !{!69, !30}
!70 = !{!63, !7, i64 176}

; ModuleID = 'lto-section-in.c'
source_filename = "lto-section-in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lto_stats_d = type { i64, i64, i64, i64, i64, [10 x i64], i64, [188 x i64], i64, i64, i64, i64 }
%struct.lto_input_block = type { ptr, i32, i32 }
%struct.lto_simple_header = type { %struct.lto_header, i32, i32 }
%struct.lto_header = type { i16, i16, i32 }
%struct.lto_renaming_slot = type { ptr, ptr }
%struct.lto_file_decl_data = type { ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.lto_tree_ref_table = type { ptr, i32 }
%struct.lto_in_decl_state = type { [7 x %struct.lto_tree_ref_table], ptr }

@.str = private unnamed_addr constant [6 x i8] c"decls\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"function_body\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"static_initializer\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"cgraph\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ipa_pure_const\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"ipa_reference\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"symtab\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"wpa_fixup\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"opts\00", align 1
@lto_section_name = dso_local local_unnamed_addr global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr null], align 16
@.str.9 = private unnamed_addr constant [75 x i8] c"bytecode stream: trying to read %d bytes after the end of the input buffer\00", align 1
@file_decl_data = internal unnamed_addr global ptr null, align 8
@get_section_f = internal unnamed_addr global ptr null, align 8
@free_section_f = internal unnamed_addr global ptr null, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"lto-section-in.c\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@lto_stats = external local_unnamed_addr global %struct.lto_stats_d, align 8
@flag_ltrans = external local_unnamed_addr global i32, align 4
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @lto_input_1_unsigned(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lto_input_block, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.lto_input_block, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !11
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = sub i32 %3, %5
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.9, i32 noundef %8) #10
  %9 = load i32, ptr %2, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ %9, %7 ], [ %3, %1 ]
  %12 = load ptr, ptr %0, align 8, !tbaa !12
  %13 = add i32 %11, 1
  store i32 %13, ptr %2, align 8, !tbaa !5
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds i8, ptr %12, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !13
  ret i8 %16
}

; Function Attrs: optsize
declare void @internal_error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lto_input_uleb128(ptr nocapture noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ %10, %2 ], [ 0, %1 ]
  %4 = phi i64 [ %9, %2 ], [ 0, %1 ]
  %5 = tail call zeroext i8 @lto_input_1_unsigned(ptr noundef %0) #11
  %6 = and i8 %5, 127
  %7 = zext nneg i8 %6 to i64
  %8 = shl i64 %7, %3
  %9 = or i64 %8, %4
  %10 = add nuw i64 %3, 7
  %11 = icmp sgt i8 %5, -1
  br i1 %11, label %12, label %2

12:                                               ; preds = %2
  ret i64 %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lto_input_widest_uint_uleb128(ptr nocapture noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ %10, %2 ], [ 0, %1 ]
  %4 = phi i64 [ %9, %2 ], [ 0, %1 ]
  %5 = tail call zeroext i8 @lto_input_1_unsigned(ptr noundef %0) #11
  %6 = and i8 %5, 127
  %7 = zext nneg i8 %6 to i64
  %8 = shl i64 %7, %3
  %9 = or i64 %8, %4
  %10 = add nuw i64 %3, 7
  %11 = icmp sgt i8 %5, -1
  br i1 %11, label %12, label %2

12:                                               ; preds = %2
  ret i64 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lto_input_sleb128(ptr nocapture noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ %10, %2 ], [ 0, %1 ]
  %4 = phi i64 [ %9, %2 ], [ 0, %1 ]
  %5 = tail call zeroext i8 @lto_input_1_unsigned(ptr noundef %0) #11
  %6 = and i8 %5, 127
  %7 = zext nneg i8 %6 to i64
  %8 = shl i64 %7, %3
  %9 = or i64 %8, %4
  %10 = add nuw i64 %3, 7
  %11 = icmp sgt i8 %5, -1
  br i1 %11, label %12, label %2

12:                                               ; preds = %2
  %13 = trunc i64 %3 to i32
  %14 = icmp ugt i32 %13, 56
  %15 = icmp ult i8 %5, 64
  %16 = or i1 %14, %15
  %17 = and i64 %10, 4294967295
  %18 = shl nsw i64 -1, %17
  %19 = select i1 %16, i64 0, i64 %18
  %20 = or i64 %9, %19
  ret i64 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @lto_set_in_hooks(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  store ptr %0, ptr @file_decl_data, align 8, !tbaa !14
  store ptr %1, ptr @get_section_f, align 8, !tbaa !14
  store ptr %2, ptr @free_section_f, align 8, !tbaa !14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lto_get_file_decl_data() local_unnamed_addr #0 {
  %1 = load ptr, ptr @file_decl_data, align 8, !tbaa !14
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 166, ptr noundef nonnull @.str.11) #10
  %4 = load ptr, ptr @file_decl_data, align 8, !tbaa !14
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi ptr [ %1, %0 ], [ %4, %3 ]
  ret ptr %6
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lto_get_section_data(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @get_section_f, align 8, !tbaa !14
  %6 = tail call ptr %5(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #10
  %7 = load i64, ptr %3, align 8, !tbaa !15
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.lto_stats_d, ptr @lto_stats, i64 0, i32 5, i64 %8
  %10 = load i64, ptr %9, align 8, !tbaa !15
  %11 = add i64 %10, %7
  store i64 %11, ptr %9, align 8, !tbaa !15
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_free_section_data(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds i8, ptr %3, i64 -16
  %7 = load ptr, ptr @free_section_f, align 8, !tbaa !14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 269, ptr noundef nonnull @.str.11) #10
  br label %10

10:                                               ; preds = %5, %9
  %11 = load i32, ptr @flag_ltrans, align 4, !tbaa !17
  %12 = icmp eq i32 %11, 0
  %13 = load ptr, ptr @free_section_f, align 8, !tbaa !14
  br i1 %12, label %15, label %14

14:                                               ; preds = %10
  tail call void %13(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) #10
  br label %19

15:                                               ; preds = %10
  %16 = load ptr, ptr %6, align 8, !tbaa !18
  %17 = getelementptr inbounds i8, ptr %3, i64 -8
  %18 = load i64, ptr %17, align 8, !tbaa !20
  tail call void %13(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %16, i64 noundef %18) #10
  tail call void @free(ptr noundef nonnull %6) #11
  br label %19

19:                                               ; preds = %15, %14
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @lto_create_simple_input_block(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @lto_get_section_data(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef %3) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @xmalloc(i64 noundef 16) #10
  store ptr %5, ptr %2, align 8, !tbaa !14
  %9 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr %9, ptr %8, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.lto_input_block, ptr %8, i64 0, i32 1
  store i32 0, ptr %10, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.lto_simple_header, ptr %5, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !21
  %13 = getelementptr inbounds %struct.lto_input_block, ptr %8, i64 0, i32 2
  store i32 %12, ptr %13, align 4, !tbaa !11
  br label %14

14:                                               ; preds = %4, %7
  %15 = phi ptr [ %8, %7 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_destroy_simple_input_block(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  tail call void @free(ptr noundef %2) #11
  tail call void @lto_free_section_data(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef %3, i64 noundef %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lto_create_renaming_table() local_unnamed_addr #0 {
  %1 = tail call ptr @htab_create(i64 noundef 37, ptr noundef nonnull @hash_name, ptr noundef nonnull @eq_name, ptr noundef nonnull @renaming_slot_free) #10
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @hash_name(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.lto_renaming_slot, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  %4 = tail call i32 @htab_hash_string(ptr noundef %3) #10
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @eq_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.lto_renaming_slot, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !25
  %5 = getelementptr inbounds %struct.lto_renaming_slot, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !25
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %6) #11
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal void @renaming_slot_free(ptr nocapture noundef %0) #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !27
  tail call void @free(ptr noundef %2) #11
  %3 = getelementptr inbounds %struct.lto_renaming_slot, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !25
  tail call void @free(ptr noundef %4) #11
  tail call void @free(ptr noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_record_renamed_decl(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.lto_renaming_slot, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.lto_renaming_slot, ptr %4, i64 0, i32 1
  store ptr %2, ptr %5, align 8, !tbaa !25
  %6 = getelementptr inbounds %struct.lto_file_decl_data, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !28
  %8 = call ptr @htab_find_slot(ptr noundef %7, ptr noundef nonnull %4, i32 noundef 1) #10
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = call ptr @xmalloc(i64 noundef 16) #10
  %13 = call ptr @xstrdup(ptr noundef %1) #10
  store ptr %13, ptr %12, align 8, !tbaa !27
  %14 = call ptr @xstrdup(ptr noundef %2) #10
  %15 = getelementptr inbounds %struct.lto_renaming_slot, ptr %12, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !25
  store ptr %12, ptr %8, align 8, !tbaa !14
  br label %17

16:                                               ; preds = %3
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 404, ptr noundef nonnull @.str.11) #10
  br label %17

17:                                               ; preds = %16, %11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  ret void
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xstrdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lto_get_decl_name_mapping(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.lto_renaming_slot, align 8
  %4 = getelementptr inbounds %struct.lto_file_decl_data, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  %6 = getelementptr inbounds %struct.lto_renaming_slot, ptr %3, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !25
  %7 = call ptr @htab_find(ptr noundef %5, ptr noundef nonnull %3) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %7, align 8, !tbaa !27
  br label %11

11:                                               ; preds = %2, %9
  %12 = phi ptr [ %10, %9 ], [ %1, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @lto_new_in_decl_state() local_unnamed_addr #0 {
  %1 = tail call ptr @xmalloc(i64 noundef 120) #10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %1, i8 0, i64 120, i1 false)
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_delete_in_decl_state(ptr nocapture noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %8
  %3 = phi i64 [ 0, %1 ], [ %9, %8 ]
  %4 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %0, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !30
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @free(ptr noundef nonnull %5) #11
  br label %8

8:                                                ; preds = %2, %7
  %9 = add nuw nsw i64 %3, 1
  %10 = icmp eq i64 %9, 7
  br i1 %10, label %11, label %2, !llvm.loop !32

11:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lto_hash_in_decl_state(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.lto_in_decl_state, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 %2(ptr noundef %4) #10
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @lto_eq_in_decl_state(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.lto_in_decl_state, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.lto_in_decl_state, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lto_get_function_in_decl_state(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.lto_in_decl_state, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #12
  %4 = getelementptr inbounds %struct.lto_in_decl_state, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.lto_file_decl_data, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = call ptr @htab_find_slot(ptr noundef %6, ptr noundef nonnull %3, i32 noundef 0) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %7, align 8, !tbaa !14
  br label %11

11:                                               ; preds = %2, %9
  %12 = phi ptr [ %10, %9 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #12
  ret ptr %12
}

; Function Attrs: optsize
declare i32 @htab_hash_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 8}
!6 = !{!"lto_input_block", !7, i64 0, !10, i64 8, !10, i64 12}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !10, i64 12}
!12 = !{!6, !7, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!10, !10, i64 0}
!18 = !{!19, !7, i64 0}
!19 = !{!"lto_data_header", !7, i64 0, !16, i64 8}
!20 = !{!19, !16, i64 8}
!21 = !{!22, !10, i64 8}
!22 = !{!"lto_simple_header", !23, i64 0, !10, i64 8, !10, i64 12}
!23 = !{!"lto_header", !24, i64 0, !24, i64 2, !10, i64 4}
!24 = !{!"short", !8, i64 0}
!25 = !{!26, !7, i64 8}
!26 = !{!"lto_renaming_slot", !7, i64 0, !7, i64 8}
!27 = !{!26, !7, i64 0}
!28 = !{!29, !7, i64 56}
!29 = !{!"lto_file_decl_data", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !7, i64 48, !7, i64 56}
!30 = !{!31, !7, i64 0}
!31 = !{!"lto_tree_ref_table", !7, i64 0, !10, i64 8}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!35, !7, i64 112}
!35 = !{!"lto_in_decl_state", !8, i64 0, !7, i64 112}
!36 = !{!29, !7, i64 24}

; ModuleID = 'stringpool.c'
source_filename = "stringpool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.ht = type { %struct.obstack, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i8 }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.string_pool_data = type { ptr, i32, i32 }

@ident_hash = dso_local local_unnamed_addr global ptr null, align 8
@empty_string = dso_local constant [1 x i8] zeroinitializer, align 1
@digit_vector = dso_local constant [20 x i8] c"0\001\002\003\004\005\006\007\008\009\00", align 16
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@spd = internal global ptr null, align 8
@gt_ggc_r_gt_stringpool_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @spd, i64 1, i64 8, ptr @gt_ggc_mx_string_pool_data, ptr @gt_pch_nx_string_pool_data }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_stringpool() local_unnamed_addr #0 !prof !46 {
  %1 = tail call ptr @ht_create(i32 noundef 14) #6
  store ptr %1, ptr @ident_hash, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.ht, ptr %1, i64 0, i32 2
  store ptr @alloc_node, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.ht, ptr %1, i64 0, i32 3
  store ptr @stringpool_ggc_alloc, ptr %3, align 8, !tbaa !56
  ret void
}

; Function Attrs: optsize
declare ptr @ht_create(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal nonnull ptr @alloc_node(ptr nocapture readnone %0) #0 !prof !57 !PGOFuncName !58 {
  %2 = tail call ptr @make_node_stat(i32 noundef 1) #6
  %3 = getelementptr inbounds %struct.tree_identifier, ptr %2, i64 0, i32 1
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @stringpool_ggc_alloc(i64 noundef %0) #0 !prof !59 !PGOFuncName !60 {
  %2 = tail call ptr @ggc_alloc_stat(i64 noundef %0) #6
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ggc_alloc_string(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !61 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %4, label %7, !prof !62

4:                                                ; preds = %2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #7
  %6 = trunc i64 %5 to i32
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i32 [ %6, %4 ], [ %1, %2 ]
  switch i32 %8, label %23 [
    i32 0, label %29
    i32 1, label %9
  ], !prof !63

9:                                                ; preds = %7
  %10 = load i8, ptr %0, align 1, !tbaa !64
  %11 = sext i8 %10 to i32
  %12 = and i32 %11, 255
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !65
  %16 = and i16 %15, 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %9
  %19 = shl nsw i32 %11, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr i8, ptr @digit_vector, i64 %20
  %22 = getelementptr i8, ptr %21, i64 -96
  br label %29

23:                                               ; preds = %7, %9
  %24 = add nsw i32 %8, 1
  %25 = sext i32 %24 to i64
  %26 = tail call ptr @ggc_alloc_stat(i64 noundef %25) #6
  %27 = sext i32 %8 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %26, ptr align 1 %0, i64 %27, i1 false)
  %28 = getelementptr inbounds i8, ptr %26, i64 %27
  store i8 0, ptr %28, align 1, !tbaa !64
  br label %29

29:                                               ; preds = %7, %23, %18
  %30 = phi ptr [ %22, %18 ], [ %26, %23 ], [ @empty_string, %7 ]
  ret ptr %30
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @get_identifier(ptr noundef %0) local_unnamed_addr #0 !prof !67 {
  %2 = load ptr, ptr @ident_hash, align 8, !tbaa !47
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #7
  %4 = tail call ptr @ht_lookup(ptr noundef %2, ptr noundef %0, i64 noundef %3, i32 noundef 1) #6
  %5 = getelementptr inbounds i8, ptr %4, i64 -24
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @ht_lookup(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @get_identifier_with_length(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !68 {
  %3 = load ptr, ptr @ident_hash, align 8, !tbaa !47
  %4 = tail call ptr @ht_lookup(ptr noundef %3, ptr noundef %0, i64 noundef %1, i32 noundef 1) #6
  %5 = getelementptr inbounds i8, ptr %4, i64 -24
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @maybe_get_identifier(ptr noundef %0) local_unnamed_addr #0 !prof !69 {
  %2 = load ptr, ptr @ident_hash, align 8, !tbaa !47
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #7
  %4 = tail call ptr @ht_lookup(ptr noundef %2, ptr noundef %0, i64 noundef %3, i32 noundef 0) #6
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds i8, ptr %4, i64 -24
  %7 = select i1 %5, ptr null, ptr %6, !prof !70
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @stringpool_statistics() local_unnamed_addr #0 !prof !68 {
  %1 = load ptr, ptr @ident_hash, align 8, !tbaa !47
  tail call void @ht_dump_statistics(ptr noundef %1) #6
  ret void
}

; Function Attrs: optsize
declare void @ht_dump_statistics(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ggc_mark_stringpool() local_unnamed_addr #0 !prof !68 {
  %1 = load ptr, ptr @ident_hash, align 8, !tbaa !47
  tail call void @ht_forall(ptr noundef %1, ptr noundef nonnull @mark_ident, ptr noundef null) #6
  ret void
}

; Function Attrs: optsize
declare void @ht_forall(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mark_ident(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #0 !prof !68 !PGOFuncName !71 {
  %4 = getelementptr inbounds i8, ptr %1, i64 -24
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %4) #6
  ret i32 1
}

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ggc_purge_stringpool() local_unnamed_addr #0 !prof !68 {
  %1 = load ptr, ptr @ident_hash, align 8, !tbaa !47
  tail call void @ht_purge(ptr noundef %1, ptr noundef nonnull @maybe_delete_ident, ptr noundef null) #6
  ret void
}

; Function Attrs: optsize
declare void @ht_purge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @maybe_delete_ident(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #0 !prof !68 !PGOFuncName !72 {
  %4 = getelementptr inbounds i8, ptr %1, i64 -24
  %5 = tail call i32 @ggc_marked_p(ptr noundef nonnull %4) #6
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: optsize
declare i32 @ggc_marked_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @gt_pch_p_S(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #5 !prof !68 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_S(ptr noundef %0) local_unnamed_addr #0 !prof !68 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_S, i32 noundef 217) #6
  ret void
}

; Function Attrs: optsize
declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_save_stringpool() local_unnamed_addr #0 !prof !68 {
  %1 = tail call ptr @ggc_alloc_stat(i64 noundef 16) #6
  store ptr %1, ptr @spd, align 8, !tbaa !47
  %2 = load ptr, ptr @ident_hash, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.ht, ptr %2, i64 0, i32 4
  %4 = getelementptr inbounds %struct.string_pool_data, ptr %1, i64 0, i32 1
  %5 = load <2 x i32>, ptr %3, align 8, !tbaa !73
  store <2 x i32> %5, ptr %4, align 8, !tbaa !73
  %6 = extractelement <2 x i32> %5, i64 0
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = tail call ptr @ggc_alloc_stat(i64 noundef %8) #6
  %10 = load ptr, ptr @spd, align 8, !tbaa !47
  store ptr %9, ptr %10, align 8, !tbaa !74
  %11 = load ptr, ptr @spd, align 8, !tbaa !47
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  %13 = load ptr, ptr @ident_hash, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.ht, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  %16 = getelementptr inbounds %struct.string_pool_data, ptr %11, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !77
  %18 = zext i32 %17 to i64
  %19 = shl nuw nsw i64 %18, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %15, i64 %19, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @gt_pch_fixup_stringpool() local_unnamed_addr #5 !prof !68 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_restore_stringpool() local_unnamed_addr #0 !prof !68 {
  %1 = load ptr, ptr @ident_hash, align 8, !tbaa !47
  %2 = load ptr, ptr @spd, align 8, !tbaa !47
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.string_pool_data, ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.string_pool_data, ptr %2, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !78
  tail call void @ht_load(ptr noundef %1, ptr noundef %3, i32 noundef %5, i32 noundef %7, i8 noundef zeroext 0) #6
  store ptr null, ptr @spd, align 8, !tbaa !47
  ret void
}

; Function Attrs: optsize
declare void @ht_load(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_string_pool_data(ptr noundef %0) #0 !prof !68 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %35, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %35

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !74
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.string_pool_data, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !77
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %9, %23
  %14 = phi i32 [ %24, %23 ], [ %11, %9 ]
  %15 = phi i64 [ %25, %23 ], [ 0, %9 ]
  %16 = load ptr, ptr %0, align 8, !tbaa !74
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds i8, ptr %18, i64 -24
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %21) #6
  %22 = load i32, ptr %10, align 8, !tbaa !77
  br label %23

23:                                               ; preds = %20, %13
  %24 = phi i32 [ %22, %20 ], [ %14, %13 ]
  %25 = add i64 %15, 1
  %26 = zext i32 %24 to i64
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %13, !llvm.loop !79

28:                                               ; preds = %23
  %29 = load ptr, ptr %0, align 8, !tbaa !74
  br label %30

30:                                               ; preds = %28, %9
  %31 = phi ptr [ %29, %28 ], [ %7, %9 ]
  %32 = icmp ult ptr %31, inttoptr (i64 2 to ptr)
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = tail call i32 @ggc_set_mark(ptr noundef nonnull %31) #6
  br label %35

35:                                               ; preds = %30, %1, %33, %6, %3
  ret void
}

; Function Attrs: optsize
declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_string_pool_data(ptr noundef %0) #0 !prof !68 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_16string_pool_data, i32 noundef 61) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %31, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !74
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.string_pool_data, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !77
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %7, %21
  %12 = phi i32 [ %22, %21 ], [ %9, %7 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %7 ]
  %14 = load ptr, ptr %0, align 8, !tbaa !74
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds i8, ptr %16, i64 -24
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %19) #6
  %20 = load i32, ptr %8, align 8, !tbaa !77
  br label %21

21:                                               ; preds = %18, %11
  %22 = phi i32 [ %20, %18 ], [ %12, %11 ]
  %23 = add i64 %13, 1
  %24 = zext i32 %22 to i64
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %11, !llvm.loop !81

26:                                               ; preds = %21
  %27 = load ptr, ptr %0, align 8, !tbaa !74
  br label %28

28:                                               ; preds = %26, %7
  %29 = phi ptr [ %27, %26 ], [ %5, %7 ]
  %30 = tail call i32 @gt_pch_note_object(ptr noundef %29, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_16string_pool_data, i32 noundef 217) #6
  br label %31

31:                                               ; preds = %4, %28, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_16string_pool_data(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !68 {
  %5 = alloca ptr, align 8
  %6 = load ptr, ptr %1, align 8, !tbaa !74
  %7 = icmp eq ptr %6, null
  br i1 %7, label %40, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.string_pool_data, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !77
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %8, %26
  %13 = phi i32 [ %27, %26 ], [ %10, %8 ]
  %14 = phi i64 [ %34, %26 ], [ 0, %8 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  %15 = load ptr, ptr %1, align 8, !tbaa !74
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds i8, ptr %17, i64 -24
  %20 = select i1 %18, ptr null, ptr %19
  store ptr %20, ptr %5, align 8, !tbaa !47
  %21 = icmp eq ptr %15, %0
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  call void %2(ptr noundef nonnull %5, ptr noundef %3) #6
  %23 = load ptr, ptr %5, align 8
  %24 = load ptr, ptr %1, align 8, !tbaa !74
  %25 = load i32, ptr %9, align 8, !tbaa !77
  br label %26

26:                                               ; preds = %22, %12
  %27 = phi i32 [ %25, %22 ], [ %13, %12 ]
  %28 = phi ptr [ %24, %22 ], [ %15, %12 ]
  %29 = phi ptr [ %23, %22 ], [ %20, %12 ]
  %30 = icmp eq ptr %29, null
  %31 = getelementptr inbounds %struct.tree_identifier, ptr %29, i64 0, i32 1
  %32 = select i1 %30, ptr null, ptr %31
  %33 = getelementptr inbounds ptr, ptr %28, i64 %14
  store ptr %32, ptr %33, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  %34 = add i64 %14, 1
  %35 = zext i32 %27 to i64
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %12, !llvm.loop !82

37:                                               ; preds = %26, %8
  %38 = icmp eq ptr %1, %0
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  call void %2(ptr noundef nonnull %1, ptr noundef %3) #6
  br label %40

40:                                               ; preds = %37, %39, %4
  ret void
}

; Function Attrs: optsize
declare void @gt_pch_nx_lang_tree_node(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!45}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44}
!36 = !{ptr @init_stringpool, ptr @ht_create, i64 1}
!37 = !{ptr @alloc_node, ptr @make_node_stat, i64 301667}
!38 = !{ptr @stringpool_ggc_alloc, ptr @ggc_alloc_stat, i64 302060}
!39 = !{ptr @ggc_alloc_string, ptr @strlen, i64 11751}
!40 = !{ptr @ggc_alloc_string, ptr @ggc_alloc_stat, i64 11716}
!41 = !{ptr @get_identifier, ptr @strlen, i64 290239}
!42 = !{ptr @get_identifier, ptr @ht_lookup, i64 290239}
!43 = !{ptr @maybe_get_identifier, ptr @strlen, i64 442708}
!44 = !{ptr @maybe_get_identifier, ptr @ht_lookup, i64 442708}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 1}
!47 = !{!48, !48, i64 0}
!48 = !{!"any pointer", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !{!52, !48, i64 96}
!52 = !{!"ht", !53, i64 0, !48, i64 88, !48, i64 96, !48, i64 104, !55, i64 112, !55, i64 116, !48, i64 120, !55, i64 128, !55, i64 132, !49, i64 136}
!53 = !{!"obstack", !54, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !54, i64 40, !55, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !55, i64 80, !55, i64 80, !55, i64 80}
!54 = !{!"long", !49, i64 0}
!55 = !{!"int", !49, i64 0}
!56 = !{!52, !48, i64 104}
!57 = !{!"function_entry_count", i64 301667}
!58 = !{!"stringpool.c:alloc_node"}
!59 = !{!"function_entry_count", i64 302060}
!60 = !{!"stringpool.c:stringpool_ggc_alloc"}
!61 = !{!"function_entry_count", i64 11765}
!62 = !{!"branch_weights", i32 11753, i32 14}
!63 = !{!"branch_weights", i32 137311524, i32 574231, i32 11718}
!64 = !{!49, !49, i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"short", !49, i64 0}
!67 = !{!"function_entry_count", i64 290239}
!68 = !{!"function_entry_count", i64 0}
!69 = !{!"function_entry_count", i64 442708}
!70 = !{!"branch_weights", i32 239612, i32 203098}
!71 = !{!"stringpool.c:mark_ident"}
!72 = !{!"stringpool.c:maybe_delete_ident"}
!73 = !{!55, !55, i64 0}
!74 = !{!75, !48, i64 0}
!75 = !{!"string_pool_data", !48, i64 0, !55, i64 8, !55, i64 12}
!76 = !{!52, !48, i64 88}
!77 = !{!75, !55, i64 8}
!78 = !{!75, !55, i64 12}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.mustprogress"}
!81 = distinct !{!81, !80}
!82 = distinct !{!82, !80}

; ModuleID = 'blender/source/blender/blenkernel/intern/suggestions.c'
source_filename = "blender/source/blender/blenkernel/intern/suggestions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SuggList = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.SuggItem = type { ptr, ptr, ptr, i8 }

@activeToolText = internal unnamed_addr global ptr null, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"SuggItem\00", align 1
@suggestions = internal global %struct.SuggList zeroinitializer, align 8
@documentation = internal unnamed_addr global ptr null, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"Documentation\00", align 1
@str = private unnamed_addr constant [42 x i8] c"Failed to allocate memory for suggestion.\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_texttools() local_unnamed_addr #0 {
  tail call fastcc void @txttl_free_suggest() #12
  tail call fastcc void @txttl_free_docs() #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @txttl_free_suggest() unnamed_addr #0 !PGOFuncName !34 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 1), align 8, !tbaa !35
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %5, %3 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %6(ptr noundef nonnull %4) #13
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %3, !llvm.loop !44

8:                                                ; preds = %3, %0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) @suggestions, i8 0, i64 44, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @txttl_free_docs() unnamed_addr #0 !PGOFuncName !46 {
  %1 = load ptr, ptr @documentation, align 8, !tbaa !43
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %4(ptr noundef nonnull %1) #13
  store ptr null, ptr @documentation, align 8, !tbaa !43
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @texttool_text_set_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @activeToolText, align 8, !tbaa !43
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @texttool_text_clear() #12
  store ptr %0, ptr @activeToolText, align 8, !tbaa !43
  br label %5

5:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @texttool_text_clear() local_unnamed_addr #0 {
  tail call void @free_texttools() #12
  store ptr null, ptr @activeToolText, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local signext i16 @texttool_text_is_active(ptr noundef readnone %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @activeToolText, align 8, !tbaa !43
  %3 = icmp eq ptr %2, %0
  %4 = zext i1 %3 to i16
  ret i16 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @texttool_suggest_add(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14
  %4 = trunc i64 %3 to i32
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %6 = shl i64 %3, 32
  %7 = ashr exact i64 %6, 32
  %8 = add nsw i64 %7, 33
  %9 = tail call ptr %5(i64 noundef %8, ptr noundef nonnull @.str) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %47

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.SuggItem, ptr %9, i64 1
  %15 = getelementptr inbounds %struct.SuggItem, ptr %9, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !47
  %16 = add i64 %6, 4294967296
  %17 = ashr exact i64 %16, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %14, ptr align 1 %0, i64 %17, i1 false)
  %18 = getelementptr inbounds %struct.SuggItem, ptr %9, i64 0, i32 3
  store i8 %1, ptr %18, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.SuggItem, ptr %9, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %20 = load ptr, ptr @suggestions, align 8, !tbaa !49
  %21 = icmp ne ptr %20, null
  %22 = load ptr, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 1), align 8
  %23 = icmp ne ptr %22, null
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %42

25:                                               ; preds = %13, %38
  %26 = phi ptr [ %39, %38 ], [ %22, %13 ]
  %27 = getelementptr inbounds %struct.SuggItem, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !47
  %29 = tail call fastcc i32 @txttl_cmp(ptr noundef %0, ptr noundef %28, i32 noundef %4) #12
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  store ptr %26, ptr %9, align 8, !tbaa !41
  %32 = getelementptr inbounds %struct.SuggItem, ptr %26, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !50
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store ptr %9, ptr %33, align 8, !tbaa !41
  br label %36

36:                                               ; preds = %35, %31
  store ptr %33, ptr %19, align 8, !tbaa !50
  store ptr %9, ptr %32, align 8, !tbaa !50
  %37 = icmp eq ptr %26, %22
  br i1 %37, label %44, label %46

38:                                               ; preds = %25
  %39 = load ptr, ptr %26, align 8, !tbaa !41
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %25, !llvm.loop !51

41:                                               ; preds = %38
  store ptr %20, ptr %19, align 8, !tbaa !50
  br label %42

42:                                               ; preds = %13, %41
  %43 = phi ptr [ %20, %41 ], [ getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 1), %13 ]
  store ptr %9, ptr %43, align 8, !tbaa !43
  br label %44

44:                                               ; preds = %42, %36
  %45 = phi ptr [ getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 1), %36 ], [ @suggestions, %42 ]
  store ptr %9, ptr %45, align 8, !tbaa !43
  br label %46

46:                                               ; preds = %44, %36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 2), i8 0, i64 28, i1 false)
  br label %47

47:                                               ; preds = %46, %11
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @txttl_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 !PGOFuncName !52 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %26

5:                                                ; preds = %3
  %6 = tail call ptr @__ctype_toupper_loc() #15
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = zext nneg i32 %2 to i64
  br label %12

9:                                                ; preds = %12
  %10 = add nuw nsw i64 %13, 1
  %11 = icmp eq i64 %10, %8
  br i1 %11, label %26, label %12, !llvm.loop !53

12:                                               ; preds = %5, %9
  %13 = phi i64 [ 0, %5 ], [ %10, %9 ]
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !54
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds i32, ptr %7, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !55
  %19 = getelementptr inbounds i8, ptr %1, i64 %13
  %20 = load i8, ptr %19, align 1, !tbaa !54
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds i32, ptr %7, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !55
  %24 = sub nsw i32 %18, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %9, label %26

26:                                               ; preds = %9, %12, %3
  %27 = phi i32 [ 0, %3 ], [ %24, %12 ], [ 0, %9 ]
  ret i32 %27
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @texttool_suggest_prefix(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = load ptr, ptr @suggestions, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %2
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  store ptr %3, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 2), align 8, !tbaa !56
  store ptr %3, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 4), align 8, !tbaa !57
  %8 = load ptr, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 1), align 8, !tbaa !35
  store ptr %8, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 3), align 8, !tbaa !58
  br label %39

9:                                                ; preds = %5, %24
  %10 = phi i32 [ %26, %24 ], [ 0, %5 ]
  %11 = phi ptr [ %28, %24 ], [ %3, %5 ]
  %12 = phi ptr [ %25, %24 ], [ null, %5 ]
  %13 = getelementptr inbounds %struct.SuggItem, ptr %11, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = tail call fastcc i32 @txttl_cmp(ptr noundef %0, ptr noundef %14, i32 noundef %1) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = icmp eq ptr %12, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  store i32 %10, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 5), align 8, !tbaa !59
  br label %24

20:                                               ; preds = %9
  %21 = icmp sgt i32 %15, -1
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %11, align 8, !tbaa !41
  br label %30

24:                                               ; preds = %20, %17, %19
  %25 = phi ptr [ %12, %17 ], [ %11, %19 ], [ %12, %20 ]
  %26 = add nuw nsw i32 %10, 1
  %27 = getelementptr inbounds %struct.SuggItem, ptr %11, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !50
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %9, !llvm.loop !60

30:                                               ; preds = %24, %22
  %31 = phi ptr [ %12, %22 ], [ %25, %24 ]
  %32 = phi ptr [ %23, %22 ], [ null, %24 ]
  %33 = icmp eq ptr %31, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = icmp eq ptr %32, null
  %36 = load ptr, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 1), align 8
  %37 = select i1 %35, ptr %36, ptr %32
  store ptr %31, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 2), align 8, !tbaa !56
  store ptr %37, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 3), align 8, !tbaa !58
  store ptr %31, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 4), align 8, !tbaa !57
  br label %39

38:                                               ; preds = %30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 2), i8 0, i64 28, i1 false)
  br label %39

39:                                               ; preds = %34, %38, %2, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @texttool_suggest_clear() local_unnamed_addr #0 {
  tail call fastcc void @txttl_free_suggest() #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @texttool_suggest_first() local_unnamed_addr #1 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 2), align 8, !tbaa !56
  ret ptr %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @texttool_suggest_last() local_unnamed_addr #1 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 3), align 8, !tbaa !58
  ret ptr %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @texttool_suggest_select(ptr noundef %0) local_unnamed_addr #6 {
  store ptr %0, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 4), align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @texttool_suggest_selected() local_unnamed_addr #1 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 4), align 8, !tbaa !57
  ret ptr %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local nonnull ptr @texttool_suggest_top() local_unnamed_addr #7 {
  ret ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 5)
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @texttool_docs_show(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14
  %5 = load ptr, ptr @documentation, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %8(ptr noundef nonnull %5) #13
  store ptr null, ptr @documentation, align 8, !tbaa !43
  br label %9

9:                                                ; preds = %7, %3
  %10 = shl i64 %4, 32
  %11 = add i64 %10, -4294967296
  %12 = ashr exact i64 %11, 32
  %13 = getelementptr inbounds i8, ptr %0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !54
  %15 = icmp eq i8 %14, 10
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %17 = ashr exact i64 %10, 32
  br i1 %15, label %27, label %18

18:                                               ; preds = %9
  %19 = add i64 %10, 8589934592
  %20 = ashr exact i64 %19, 32
  %21 = tail call ptr %16(i64 noundef %20, ptr noundef nonnull @.str.2) #13
  %22 = tail call ptr @strncpy(ptr noundef %21, ptr noundef nonnull %0, i64 noundef %17) #13
  %23 = getelementptr inbounds i8, ptr %21, i64 %17
  store i8 10, ptr %23, align 1, !tbaa !54
  %24 = shl i64 %4, 32
  %25 = add i64 %24, 4294967296
  %26 = ashr exact i64 %25, 32
  br label %32

27:                                               ; preds = %9
  %28 = add i64 %10, 4294967296
  %29 = ashr exact i64 %28, 32
  %30 = tail call ptr %16(i64 noundef %29, ptr noundef nonnull @.str.2) #13
  %31 = tail call ptr @strncpy(ptr noundef %30, ptr noundef nonnull %0, i64 noundef %17) #13
  br label %32

32:                                               ; preds = %27, %18
  %33 = phi i64 [ %17, %27 ], [ %26, %18 ]
  %34 = phi ptr [ %30, %27 ], [ %21, %18 ]
  store ptr %34, ptr @documentation, align 8
  %35 = getelementptr inbounds i8, ptr %34, i64 %33
  store i8 0, ptr %35, align 1, !tbaa !54
  br label %36

36:                                               ; preds = %1, %32
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @texttool_docs_get() local_unnamed_addr #1 {
  %1 = load ptr, ptr @documentation, align 8, !tbaa !43
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @texttool_docs_clear() local_unnamed_addr #0 {
  tail call fastcc void @txttl_free_docs() #12
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind optsize willreturn memory(read) }
attributes #15 = { nounwind optsize willreturn memory(none) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"suggestions.c:txttl_free_suggest"}
!35 = !{!36, !37, i64 8}
!36 = !{!"SuggList", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !40, i64 40}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!42, !37, i64 0}
!42 = !{!"SuggItem", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24}
!43 = !{!37, !37, i64 0}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"suggestions.c:txttl_free_docs"}
!47 = !{!42, !37, i64 16}
!48 = !{!42, !38, i64 24}
!49 = !{!36, !37, i64 0}
!50 = !{!42, !37, i64 8}
!51 = distinct !{!51, !45}
!52 = !{!"suggestions.c:txttl_cmp"}
!53 = distinct !{!53, !45}
!54 = !{!38, !38, i64 0}
!55 = !{!40, !40, i64 0}
!56 = !{!36, !37, i64 16}
!57 = !{!36, !37, i64 32}
!58 = !{!36, !37, i64 24}
!59 = !{!36, !40, i64 40}
!60 = distinct !{!60, !45}

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

; Function Attrs: nounwind uwtable
define dso_local void @free_texttools() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 1), align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %5, %3 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %6(ptr noundef nonnull %4) #11
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %3, !llvm.loop !43

8:                                                ; preds = %3, %0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) @suggestions, i8 0, i64 44, i1 false)
  %9 = load ptr, ptr @documentation, align 8, !tbaa !42
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %12(ptr noundef nonnull %9) #11
  store ptr null, ptr @documentation, align 8, !tbaa !42
  br label %13

13:                                               ; preds = %8, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @texttool_text_set_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @activeToolText, align 8, !tbaa !42
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 1), align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %4 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %10(ptr noundef nonnull %8) #11
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %7, !llvm.loop !43

12:                                               ; preds = %7, %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) @suggestions, i8 0, i64 44, i1 false)
  %13 = load ptr, ptr @documentation, align 8, !tbaa !42
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %16(ptr noundef nonnull %13) #11
  store ptr null, ptr @documentation, align 8, !tbaa !42
  br label %17

17:                                               ; preds = %12, %15
  store ptr %0, ptr @activeToolText, align 8, !tbaa !42
  br label %18

18:                                               ; preds = %1, %17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @texttool_text_clear() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 1), align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %5, %3 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %6(ptr noundef nonnull %4) #11
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %3, !llvm.loop !43

8:                                                ; preds = %3, %0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) @suggestions, i8 0, i64 44, i1 false)
  %9 = load ptr, ptr @documentation, align 8, !tbaa !42
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %12(ptr noundef nonnull %9) #11
  store ptr null, ptr @documentation, align 8, !tbaa !42
  br label %13

13:                                               ; preds = %8, %11
  store ptr null, ptr @activeToolText, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local signext i16 @texttool_text_is_active(ptr noundef readnone %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @activeToolText, align 8, !tbaa !42
  %3 = icmp eq ptr %2, %0
  %4 = zext i1 %3 to i16
  ret i16 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @texttool_suggest_add(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %4 = trunc i64 %3 to i32
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %6 = shl i64 %3, 32
  %7 = ashr exact i64 %6, 32
  %8 = add nsw i64 %7, 33
  %9 = tail call ptr %5(i64 noundef %8, ptr noundef nonnull @.str) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %71

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.SuggItem, ptr %9, i64 1
  %15 = getelementptr inbounds %struct.SuggItem, ptr %9, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !46
  %16 = add i64 %6, 4294967296
  %17 = ashr exact i64 %16, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %14, ptr align 1 %0, i64 %17, i1 false)
  %18 = getelementptr inbounds %struct.SuggItem, ptr %9, i64 0, i32 3
  store i8 %1, ptr %18, align 8, !tbaa !47
  %19 = getelementptr inbounds %struct.SuggItem, ptr %9, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %20 = load ptr, ptr @suggestions, align 8, !tbaa !48
  %21 = icmp ne ptr %20, null
  %22 = load ptr, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 1), align 8
  %23 = icmp ne ptr %22, null
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %66

25:                                               ; preds = %13
  %26 = icmp sgt i32 %4, 0
  %27 = and i64 %3, 4294967295
  br label %28

28:                                               ; preds = %25, %62
  %29 = phi ptr [ %22, %25 ], [ %63, %62 ]
  %30 = getelementptr inbounds %struct.SuggItem, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  br i1 %26, label %32, label %52

32:                                               ; preds = %28
  %33 = tail call ptr @__ctype_toupper_loc() #13
  %34 = load ptr, ptr %33, align 8, !tbaa !42
  br label %38

35:                                               ; preds = %38
  %36 = add nuw nsw i64 %39, 1
  %37 = icmp eq i64 %36, %27
  br i1 %37, label %52, label %38, !llvm.loop !49

38:                                               ; preds = %32, %35
  %39 = phi i64 [ 0, %32 ], [ %36, %35 ]
  %40 = getelementptr inbounds i8, ptr %0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !50
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds i32, ptr %34, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !51
  %45 = getelementptr inbounds i8, ptr %31, i64 %39
  %46 = load i8, ptr %45, align 1, !tbaa !50
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds i32, ptr %34, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !51
  %50 = sub nsw i32 %44, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %35, label %52

52:                                               ; preds = %38, %35, %28
  %53 = phi i32 [ 0, %28 ], [ %50, %38 ], [ 0, %35 ]
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  store ptr %29, ptr %9, align 8, !tbaa !40
  %56 = getelementptr inbounds %struct.SuggItem, ptr %29, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !52
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  store ptr %9, ptr %57, align 8, !tbaa !40
  br label %60

60:                                               ; preds = %59, %55
  store ptr %57, ptr %19, align 8, !tbaa !52
  store ptr %9, ptr %56, align 8, !tbaa !52
  %61 = icmp eq ptr %29, %22
  br i1 %61, label %68, label %70

62:                                               ; preds = %52
  %63 = load ptr, ptr %29, align 8, !tbaa !40
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %28, !llvm.loop !53

65:                                               ; preds = %62
  store ptr %20, ptr %19, align 8, !tbaa !52
  br label %66

66:                                               ; preds = %13, %65
  %67 = phi ptr [ %20, %65 ], [ getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 1), %13 ]
  store ptr %9, ptr %67, align 8, !tbaa !42
  br label %68

68:                                               ; preds = %66, %60
  %69 = phi ptr [ getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 1), %60 ], [ @suggestions, %66 ]
  store ptr %9, ptr %69, align 8, !tbaa !42
  br label %70

70:                                               ; preds = %68, %60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 2), i8 0, i64 28, i1 false)
  br label %71

71:                                               ; preds = %70, %11
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nofree nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @texttool_suggest_prefix(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr @suggestions, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %63, label %5

5:                                                ; preds = %2
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = icmp sgt i32 %1, 0
  %9 = zext nneg i32 %1 to i64
  br label %12

10:                                               ; preds = %5
  store ptr %3, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 2), align 8, !tbaa !54
  store ptr %3, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 4), align 8, !tbaa !55
  %11 = load ptr, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 1), align 8, !tbaa !34
  store ptr %11, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 3), align 8, !tbaa !56
  br label %63

12:                                               ; preds = %7, %48
  %13 = phi i32 [ 0, %7 ], [ %50, %48 ]
  %14 = phi ptr [ %3, %7 ], [ %52, %48 ]
  %15 = phi ptr [ null, %7 ], [ %49, %48 ]
  %16 = getelementptr inbounds %struct.SuggItem, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  br i1 %8, label %18, label %38

18:                                               ; preds = %12
  %19 = tail call ptr @__ctype_toupper_loc() #13
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  br label %24

21:                                               ; preds = %24
  %22 = add nuw nsw i64 %25, 1
  %23 = icmp eq i64 %22, %9
  br i1 %23, label %38, label %24, !llvm.loop !49

24:                                               ; preds = %18, %21
  %25 = phi i64 [ 0, %18 ], [ %22, %21 ]
  %26 = getelementptr inbounds i8, ptr %0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !50
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds i32, ptr %20, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !51
  %31 = getelementptr inbounds i8, ptr %17, i64 %25
  %32 = load i8, ptr %31, align 1, !tbaa !50
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds i32, ptr %20, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !51
  %36 = sub nsw i32 %30, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %21, label %38

38:                                               ; preds = %24, %21, %12
  %39 = phi i32 [ 0, %12 ], [ %36, %24 ], [ 0, %21 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = icmp eq ptr %15, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %41
  store i32 %13, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 5), align 8, !tbaa !57
  br label %48

44:                                               ; preds = %38
  %45 = icmp sgt i32 %39, -1
  br i1 %45, label %48, label %46

46:                                               ; preds = %44
  %47 = load ptr, ptr %14, align 8, !tbaa !40
  br label %54

48:                                               ; preds = %44, %41, %43
  %49 = phi ptr [ %15, %41 ], [ %14, %43 ], [ %15, %44 ]
  %50 = add nuw nsw i32 %13, 1
  %51 = getelementptr inbounds %struct.SuggItem, ptr %14, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !52
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %12, !llvm.loop !58

54:                                               ; preds = %48, %46
  %55 = phi ptr [ %15, %46 ], [ %49, %48 ]
  %56 = phi ptr [ %47, %46 ], [ null, %48 ]
  %57 = icmp eq ptr %55, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = icmp eq ptr %56, null
  %60 = load ptr, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 1), align 8
  %61 = select i1 %59, ptr %60, ptr %56
  store ptr %55, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 2), align 8, !tbaa !54
  store ptr %61, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 3), align 8, !tbaa !56
  store ptr %55, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 4), align 8, !tbaa !55
  br label %63

62:                                               ; preds = %54
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 2), i8 0, i64 28, i1 false)
  br label %63

63:                                               ; preds = %58, %62, %2, %10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @texttool_suggest_clear() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 1), align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %5, %3 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %6(ptr noundef nonnull %4) #11
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %3, !llvm.loop !43

8:                                                ; preds = %3, %0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) @suggestions, i8 0, i64 44, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @texttool_suggest_first() local_unnamed_addr #1 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 2), align 8, !tbaa !54
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @texttool_suggest_last() local_unnamed_addr #1 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 3), align 8, !tbaa !56
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @texttool_suggest_select(ptr noundef %0) local_unnamed_addr #5 {
  store ptr %0, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 4), align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @texttool_suggest_selected() local_unnamed_addr #1 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 4), align 8, !tbaa !55
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @texttool_suggest_top() local_unnamed_addr #6 {
  ret ptr getelementptr inbounds (%struct.SuggList, ptr @suggestions, i64 0, i32 5)
}

; Function Attrs: nounwind uwtable
define dso_local void @texttool_docs_show(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %5 = load ptr, ptr @documentation, align 8, !tbaa !42
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %8(ptr noundef nonnull %5) #11
  store ptr null, ptr @documentation, align 8, !tbaa !42
  br label %9

9:                                                ; preds = %7, %3
  %10 = shl i64 %4, 32
  %11 = add i64 %10, -4294967296
  %12 = ashr exact i64 %11, 32
  %13 = getelementptr inbounds i8, ptr %0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !50
  %15 = icmp eq i8 %14, 10
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %17 = ashr exact i64 %10, 32
  br i1 %15, label %25, label %18

18:                                               ; preds = %9
  %19 = add i64 %10, 8589934592
  %20 = ashr exact i64 %19, 32
  %21 = tail call ptr %16(i64 noundef %20, ptr noundef nonnull @.str.2) #11
  store ptr %21, ptr @documentation, align 8, !tbaa !42
  %22 = tail call ptr @strncpy(ptr noundef %21, ptr noundef nonnull %0, i64 noundef %17) #11
  %23 = add i64 %4, 1
  %24 = getelementptr inbounds i8, ptr %21, i64 %17
  store i8 10, ptr %24, align 1, !tbaa !50
  br label %30

25:                                               ; preds = %9
  %26 = add i64 %10, 4294967296
  %27 = ashr exact i64 %26, 32
  %28 = tail call ptr %16(i64 noundef %27, ptr noundef nonnull @.str.2) #11
  store ptr %28, ptr @documentation, align 8, !tbaa !42
  %29 = tail call ptr @strncpy(ptr noundef %28, ptr noundef nonnull %0, i64 noundef %17) #11
  br label %30

30:                                               ; preds = %25, %18
  %31 = phi i64 [ %23, %18 ], [ %4, %25 ]
  %32 = load ptr, ptr @documentation, align 8, !tbaa !42
  %33 = shl i64 %31, 32
  %34 = ashr exact i64 %33, 32
  %35 = getelementptr inbounds i8, ptr %32, i64 %34
  store i8 0, ptr %35, align 1, !tbaa !50
  br label %36

36:                                               ; preds = %1, %30
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @texttool_docs_get() local_unnamed_addr #1 {
  %1 = load ptr, ptr @documentation, align 8, !tbaa !42
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local void @texttool_docs_clear() local_unnamed_addr #0 {
  %1 = load ptr, ptr @documentation, align 8, !tbaa !42
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %4(ptr noundef nonnull %1) #11
  store ptr null, ptr @documentation, align 8, !tbaa !42
  br label %5

5:                                                ; preds = %0, %3
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 8}
!35 = !{!"SuggList", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!41, !36, i64 0}
!41 = !{!"SuggItem", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24}
!42 = !{!36, !36, i64 0}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!41, !36, i64 16}
!47 = !{!41, !37, i64 24}
!48 = !{!35, !36, i64 0}
!49 = distinct !{!49, !44, !45}
!50 = !{!37, !37, i64 0}
!51 = !{!39, !39, i64 0}
!52 = !{!41, !36, i64 8}
!53 = distinct !{!53, !44, !45}
!54 = !{!35, !36, i64 16}
!55 = !{!35, !36, i64 32}
!56 = !{!35, !36, i64 24}
!57 = !{!35, !39, i64 40}
!58 = distinct !{!58, !44, !45}

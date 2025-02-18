; ModuleID = 'splay-tree.c'
source_filename = "splay-tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.splay_tree_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.splay_tree_node_s = type { i64, i64, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !53 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !53 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !53 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !53 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #17
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !54

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !53 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 !prof !53 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !57
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #3 !prof !53 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !57
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !53 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !67

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !61
  %11 = load i8, ptr %3, align 1, !tbaa !68
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !53 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !67

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !61
  %11 = load i8, ptr %3, align 1, !tbaa !68
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !53 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !67

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !61
  %11 = load i8, ptr %3, align 1, !tbaa !68
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #3 !prof !53 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !57
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !53 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !67

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !69
  store i8 %12, ptr %4, align 1, !tbaa !68
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !53 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !67

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !69
  store i8 %12, ptr %4, align 1, !tbaa !68
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !53 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !57
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !67

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !69
  store i8 %12, ptr %4, align 1, !tbaa !68
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !53 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !53 {
  %2 = load i32, ptr %0, align 8, !tbaa !71
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !53 {
  %2 = load i32, ptr %0, align 8, !tbaa !71
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @splay_tree_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 !prof !72 {
  %4 = tail call ptr @xmalloc(i64 noundef 56) #17
  store ptr null, ptr %4, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.splay_tree_s, ptr %4, i64 0, i32 1
  store ptr %0, ptr %5, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.splay_tree_s, ptr %4, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.splay_tree_s, ptr %4, i64 0, i32 3
  store ptr %2, ptr %7, align 8, !tbaa !77
  %8 = getelementptr inbounds %struct.splay_tree_s, ptr %4, i64 0, i32 4
  store ptr @splay_tree_xmalloc_allocate, ptr %8, align 8, !tbaa !78
  %9 = getelementptr inbounds %struct.splay_tree_s, ptr %4, i64 0, i32 5
  store ptr @splay_tree_xmalloc_deallocate, ptr %9, align 8, !tbaa !79
  %10 = getelementptr inbounds %struct.splay_tree_s, ptr %4, i64 0, i32 6
  store ptr null, ptr %10, align 8, !tbaa !80
  ret ptr %4
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @splay_tree_new_with_allocator(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #8 !prof !81 {
  %7 = tail call ptr %3(i32 noundef 56, ptr noundef %5) #17, !prof !82
  store ptr null, ptr %7, align 8, !tbaa !73
  %8 = getelementptr inbounds %struct.splay_tree_s, ptr %7, i64 0, i32 1
  store ptr %0, ptr %8, align 8, !tbaa !75
  %9 = getelementptr inbounds %struct.splay_tree_s, ptr %7, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !76
  %10 = getelementptr inbounds %struct.splay_tree_s, ptr %7, i64 0, i32 3
  store ptr %2, ptr %10, align 8, !tbaa !77
  %11 = getelementptr inbounds %struct.splay_tree_s, ptr %7, i64 0, i32 4
  store ptr %3, ptr %11, align 8, !tbaa !78
  %12 = getelementptr inbounds %struct.splay_tree_s, ptr %7, i64 0, i32 5
  store ptr %4, ptr %12, align 8, !tbaa !79
  %13 = getelementptr inbounds %struct.splay_tree_s, ptr %7, i64 0, i32 6
  store ptr %5, ptr %13, align 8, !tbaa !80
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define internal ptr @splay_tree_xmalloc_allocate(i32 noundef %0, ptr nocapture readnone %1) #7 !prof !83 !PGOFuncName !84 {
  %3 = sext i32 %0 to i64
  %4 = tail call ptr @xmalloc(i64 noundef %3) #17
  ret ptr %4
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @splay_tree_xmalloc_deallocate(ptr nocapture noundef %0, ptr nocapture readnone %1) #9 !prof !85 !PGOFuncName !86 {
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @splay_tree_delete(ptr noundef %0) local_unnamed_addr #7 !prof !87 {
  %2 = load ptr, ptr %0, align 8, !tbaa !73
  %3 = icmp eq ptr %2, null
  br i1 %3, label %73, label %4, !prof !88

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !89

8:                                                ; preds = %4
  %9 = load i64, ptr %2, align 8, !tbaa !90
  tail call void %6(i64 noundef %9) #17
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !77
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !89

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.splay_tree_node_s, ptr %2, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !92
  tail call void %12(i64 noundef %16) #17
  br label %17

17:                                               ; preds = %14, %10
  store i64 0, ptr %2, align 8, !tbaa !90
  %18 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 6
  br label %22

20:                                               ; preds = %63
  %21 = icmp eq ptr %64, null
  br i1 %21, label %73, label %70, !prof !93

22:                                               ; preds = %70, %17
  %23 = phi ptr [ null, %17 ], [ %71, %70 ]
  %24 = phi ptr [ %2, %17 ], [ %72, %70 ]
  %25 = getelementptr inbounds %struct.splay_tree_node_s, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !94
  %27 = icmp eq ptr %26, null
  br i1 %27, label %43, label %28, !prof !95

28:                                               ; preds = %22
  %29 = load ptr, ptr %5, align 8, !tbaa !76
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31, !prof !96

31:                                               ; preds = %28
  %32 = load i64, ptr %26, align 8, !tbaa !90
  tail call void %29(i64 noundef %32) #17
  br label %33

33:                                               ; preds = %31, %28
  %34 = load ptr, ptr %11, align 8, !tbaa !77
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36, !prof !96

36:                                               ; preds = %33
  %37 = load ptr, ptr %25, align 8, !tbaa !94
  %38 = getelementptr inbounds %struct.splay_tree_node_s, ptr %37, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !92
  tail call void %34(i64 noundef %39) #17
  br label %40

40:                                               ; preds = %36, %33
  %41 = ptrtoint ptr %23 to i64
  %42 = load ptr, ptr %25, align 8, !tbaa !94
  store i64 %41, ptr %42, align 8, !tbaa !90
  br label %43

43:                                               ; preds = %40, %22
  %44 = phi ptr [ %42, %40 ], [ %23, %22 ]
  %45 = getelementptr inbounds %struct.splay_tree_node_s, ptr %24, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !97
  %47 = icmp eq ptr %46, null
  br i1 %47, label %63, label %48, !prof !98

48:                                               ; preds = %43
  %49 = load ptr, ptr %5, align 8, !tbaa !76
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51, !prof !99

51:                                               ; preds = %48
  %52 = load i64, ptr %46, align 8, !tbaa !90
  tail call void %49(i64 noundef %52) #17
  br label %53

53:                                               ; preds = %51, %48
  %54 = load ptr, ptr %11, align 8, !tbaa !77
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56, !prof !99

56:                                               ; preds = %53
  %57 = load ptr, ptr %45, align 8, !tbaa !97
  %58 = getelementptr inbounds %struct.splay_tree_node_s, ptr %57, i64 0, i32 1
  %59 = load i64, ptr %58, align 8, !tbaa !92
  tail call void %54(i64 noundef %59) #17
  br label %60

60:                                               ; preds = %56, %53
  %61 = ptrtoint ptr %44 to i64
  %62 = load ptr, ptr %45, align 8, !tbaa !97
  store i64 %61, ptr %62, align 8, !tbaa !90
  br label %63

63:                                               ; preds = %60, %43
  %64 = phi ptr [ %62, %60 ], [ %44, %43 ]
  %65 = load i64, ptr %24, align 8, !tbaa !90
  %66 = inttoptr i64 %65 to ptr
  %67 = load ptr, ptr %18, align 8, !tbaa !79
  %68 = load ptr, ptr %19, align 8, !tbaa !80
  tail call void %67(ptr noundef nonnull %24, ptr noundef %68) #17, !prof !100
  %69 = icmp eq i64 %65, 0
  br i1 %69, label %20, label %70, !prof !101

70:                                               ; preds = %63, %20
  %71 = phi ptr [ %64, %63 ], [ null, %20 ]
  %72 = phi ptr [ %66, %63 ], [ %64, %20 ]
  br label %22, !llvm.loop !102

73:                                               ; preds = %20, %1
  %74 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !79
  %76 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8, !tbaa !80
  tail call void %75(ptr noundef nonnull %0, ptr noundef %77) #17, !prof !103
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @splay_tree_insert(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #7 !prof !104 {
  tail call fastcc void @splay_tree_splay(ptr noundef %0, i64 noundef %1)
  %4 = load ptr, ptr %0, align 8, !tbaa !73
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6, !prof !105

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = load i64, ptr %4, align 8, !tbaa !90
  %10 = tail call i32 %8(i64 noundef %9, i64 noundef %1) #17, !prof !106
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i32 [ %10, %6 ], [ 0, %3 ]
  %13 = load ptr, ptr %0, align 8, !tbaa !73
  %14 = icmp ne ptr %13, null
  %15 = icmp eq i32 %12, 0
  %16 = select i1 %14, i1 %15, i1 false, !prof !107
  br i1 %16, label %17, label %27, !prof !108

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !77
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21, !prof !109

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.splay_tree_node_s, ptr %13, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !92
  tail call void %19(i64 noundef %23) #17
  br label %24

24:                                               ; preds = %21, %17
  %25 = load ptr, ptr %0, align 8, !tbaa !73
  %26 = getelementptr inbounds %struct.splay_tree_node_s, ptr %25, i64 0, i32 1
  store i64 %2, ptr %26, align 8, !tbaa !92
  br label %51

27:                                               ; preds = %11
  %28 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !78
  %30 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !80
  %32 = tail call ptr %29(i32 noundef 32, ptr noundef %31) #17, !prof !110
  store i64 %1, ptr %32, align 8, !tbaa !90
  %33 = getelementptr inbounds %struct.splay_tree_node_s, ptr %32, i64 0, i32 1
  store i64 %2, ptr %33, align 8, !tbaa !92
  %34 = load ptr, ptr %0, align 8, !tbaa !73
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38, !prof !111

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.splay_tree_node_s, ptr %32, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  br label %50

38:                                               ; preds = %27
  %39 = icmp slt i32 %12, 0
  br i1 %39, label %40, label %45, !prof !112

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.splay_tree_node_s, ptr %32, i64 0, i32 2
  store ptr %34, ptr %41, align 8, !tbaa !94
  %42 = getelementptr inbounds %struct.splay_tree_node_s, ptr %34, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !97
  %44 = getelementptr inbounds %struct.splay_tree_node_s, ptr %32, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !97
  store ptr null, ptr %42, align 8, !tbaa !97
  br label %50

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.splay_tree_node_s, ptr %32, i64 0, i32 3
  store ptr %34, ptr %46, align 8, !tbaa !97
  %47 = getelementptr inbounds %struct.splay_tree_node_s, ptr %34, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !94
  %49 = getelementptr inbounds %struct.splay_tree_node_s, ptr %32, i64 0, i32 2
  store ptr %48, ptr %49, align 8, !tbaa !94
  store ptr null, ptr %47, align 8, !tbaa !94
  br label %50

50:                                               ; preds = %40, %45, %36
  store ptr %32, ptr %0, align 8, !tbaa !73
  br label %51

51:                                               ; preds = %50, %24
  %52 = load ptr, ptr %0, align 8, !tbaa !73
  ret ptr %52
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @splay_tree_splay(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #10 !prof !113 !PGOFuncName !114 {
  %3 = load ptr, ptr %0, align 8, !tbaa !73
  %4 = icmp eq ptr %3, null
  br i1 %4, label %87, label %5, !prof !115

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %0, align 8, !tbaa !73
  %8 = load ptr, ptr %6, align 8, !tbaa !75
  %9 = load i64, ptr %7, align 8, !tbaa !90
  %10 = tail call i32 %8(i64 noundef %1, i64 noundef %9) #17, !prof !116
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %87, label %12, !prof !117

12:                                               ; preds = %5, %81
  %13 = phi i32 [ %85, %81 ], [ %10, %5 ]
  %14 = phi ptr [ %82, %81 ], [ %7, %5 ]
  %15 = icmp slt i32 %13, 0
  %16 = getelementptr inbounds %struct.splay_tree_node_s, ptr %14, i64 0, i32 2
  %17 = getelementptr inbounds %struct.splay_tree_node_s, ptr %14, i64 0, i32 3
  %18 = select i1 %15, ptr %16, ptr %17, !prof !118
  %19 = load ptr, ptr %18, align 8, !tbaa !57
  %20 = icmp eq ptr %19, null
  br i1 %20, label %87, label %21, !prof !119

21:                                               ; preds = %12
  %22 = load ptr, ptr %6, align 8, !tbaa !75
  %23 = load i64, ptr %19, align 8, !tbaa !90
  %24 = tail call i32 %22(i64 noundef %1, i64 noundef %23) #17, !prof !120
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %38, label %26, !prof !121

26:                                               ; preds = %21
  %27 = icmp slt i32 %24, 0
  br i1 %27, label %28, label %32, !prof !122

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.splay_tree_node_s, ptr %19, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !94
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32, !prof !123

32:                                               ; preds = %28, %26
  %33 = icmp sgt i32 %24, 0
  br i1 %33, label %34, label %44, !prof !124

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.splay_tree_node_s, ptr %19, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !97
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %44, !prof !125

38:                                               ; preds = %28, %34, %21
  %39 = getelementptr inbounds %struct.splay_tree_node_s, ptr %19, i64 0, i32 2
  %40 = getelementptr inbounds %struct.splay_tree_node_s, ptr %19, i64 0, i32 3
  %41 = select i1 %15, ptr %40, ptr %39, !prof !126
  %42 = select i1 %15, ptr %16, ptr %17, !prof !126
  %43 = load ptr, ptr %41, align 8, !tbaa !57
  store ptr %14, ptr %41, align 8, !tbaa !57
  store ptr %43, ptr %42, align 8, !tbaa !57
  store ptr %19, ptr %0, align 8, !tbaa !57
  br label %87

44:                                               ; preds = %34, %32
  %45 = and i32 %24, %13
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %52, label %47, !prof !127

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.splay_tree_node_s, ptr %19, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !94
  %50 = getelementptr inbounds %struct.splay_tree_node_s, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !97
  store ptr %19, ptr %50, align 8, !tbaa !97
  store ptr %51, ptr %48, align 8, !tbaa !94
  store ptr %49, ptr %16, align 8, !tbaa !57
  br label %76

52:                                               ; preds = %44
  %53 = icmp sgt i32 %13, 0
  %54 = and i1 %53, %33
  br i1 %54, label %55, label %60, !prof !128

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.splay_tree_node_s, ptr %19, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !97
  %58 = getelementptr inbounds %struct.splay_tree_node_s, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !94
  store ptr %19, ptr %58, align 8, !tbaa !94
  store ptr %59, ptr %56, align 8, !tbaa !97
  store ptr %57, ptr %17, align 8, !tbaa !57
  br label %76

60:                                               ; preds = %52
  %61 = and i1 %15, %33
  br i1 %61, label %62, label %68, !prof !129

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.splay_tree_node_s, ptr %19, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !97
  %65 = getelementptr inbounds %struct.splay_tree_node_s, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !94
  store ptr %19, ptr %65, align 8, !tbaa !94
  store ptr %66, ptr %63, align 8, !tbaa !97
  store ptr %64, ptr %16, align 8, !tbaa !57
  %67 = getelementptr inbounds %struct.splay_tree_node_s, ptr %64, i64 0, i32 3
  br label %76

68:                                               ; preds = %60
  %69 = and i1 %53, %27
  br i1 %69, label %70, label %81, !prof !130

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.splay_tree_node_s, ptr %19, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !94
  %73 = getelementptr inbounds %struct.splay_tree_node_s, ptr %72, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !97
  store ptr %19, ptr %73, align 8, !tbaa !97
  store ptr %74, ptr %71, align 8, !tbaa !94
  store ptr %72, ptr %17, align 8, !tbaa !57
  %75 = getelementptr inbounds %struct.splay_tree_node_s, ptr %72, i64 0, i32 2
  br label %76

76:                                               ; preds = %55, %70, %62, %47
  %77 = phi ptr [ %50, %47 ], [ %67, %62 ], [ %75, %70 ], [ %58, %55 ]
  %78 = phi ptr [ %16, %47 ], [ %16, %62 ], [ %17, %70 ], [ %17, %55 ]
  %79 = phi ptr [ %49, %47 ], [ %64, %62 ], [ %72, %70 ], [ %57, %55 ]
  %80 = load ptr, ptr %77, align 8, !tbaa !57
  store ptr %14, ptr %77, align 8, !tbaa !57
  store ptr %80, ptr %78, align 8, !tbaa !57
  store ptr %79, ptr %0, align 8, !tbaa !57
  br label %81

81:                                               ; preds = %76, %68
  %82 = load ptr, ptr %0, align 8, !tbaa !73
  %83 = load ptr, ptr %6, align 8, !tbaa !75
  %84 = load i64, ptr %82, align 8, !tbaa !90
  %85 = tail call i32 %83(i64 noundef %1, i64 noundef %84) #17, !prof !116
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %12, !prof !131

87:                                               ; preds = %81, %12, %38, %5, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @splay_tree_remove(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #7 !prof !132 {
  tail call fastcc void @splay_tree_splay(ptr noundef %0, i64 noundef %1)
  %3 = load ptr, ptr %0, align 8, !tbaa !73
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5, !prof !133

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = load i64, ptr %3, align 8, !tbaa !90
  %9 = tail call i32 %7(i64 noundef %8, i64 noundef %1) #17, !prof !134
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %41, !prof !135

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 8, !tbaa !73
  %13 = getelementptr inbounds %struct.splay_tree_node_s, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !94
  %15 = getelementptr inbounds %struct.splay_tree_node_s, ptr %12, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !97
  %17 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20, !prof !135

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.splay_tree_node_s, ptr %12, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !92
  tail call void %18(i64 noundef %22) #17
  br label %23

23:                                               ; preds = %20, %11
  %24 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !79
  %26 = load ptr, ptr %0, align 8, !tbaa !73
  %27 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !80
  tail call void %25(ptr noundef %26, ptr noundef %28) #17, !prof !136
  %29 = icmp eq ptr %14, null
  br i1 %29, label %39, label %30, !prof !137

30:                                               ; preds = %23
  store ptr %14, ptr %0, align 8, !tbaa !73
  %31 = icmp eq ptr %16, null
  br i1 %31, label %41, label %32, !prof !138

32:                                               ; preds = %30, %32
  %33 = phi ptr [ %35, %32 ], [ %14, %30 ]
  %34 = getelementptr inbounds %struct.splay_tree_node_s, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !97
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %32, !prof !139, !llvm.loop !140

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.splay_tree_node_s, ptr %33, i64 0, i32 3
  br label %39

39:                                               ; preds = %23, %37
  %40 = phi ptr [ %38, %37 ], [ %0, %23 ]
  store ptr %16, ptr %40, align 8, !tbaa !57
  br label %41

41:                                               ; preds = %39, %30, %5, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @splay_tree_lookup(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #7 !prof !141 {
  tail call fastcc void @splay_tree_splay(ptr noundef %0, i64 noundef %1)
  %3 = load ptr, ptr %0, align 8, !tbaa !73
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5, !prof !142

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = load i64, ptr %3, align 8, !tbaa !90
  %9 = tail call i32 %7(i64 noundef %8, i64 noundef %1) #17, !prof !143
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !144

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 8, !tbaa !73
  br label %13

13:                                               ; preds = %2, %5, %11
  %14 = phi ptr [ %12, %11 ], [ null, %5 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @splay_tree_max(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !53 {
  %2 = load ptr, ptr %0, align 8, !tbaa !73
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.splay_tree_node_s, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !145

9:                                                ; preds = %4, %1
  %10 = phi ptr [ null, %1 ], [ %5, %4 ]
  ret ptr %10
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @splay_tree_min(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !prof !146 {
  %2 = load ptr, ptr %0, align 8, !tbaa !73
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4, !prof !147

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.splay_tree_node_s, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !94
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !prof !148, !llvm.loop !149

9:                                                ; preds = %4, %1
  %10 = phi ptr [ null, %1 ], [ %5, %4 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local ptr @splay_tree_predecessor(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #7 !prof !150 {
  %3 = load ptr, ptr %0, align 8, !tbaa !73
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5, !prof !151

5:                                                ; preds = %2
  tail call fastcc void @splay_tree_splay(ptr noundef nonnull %0, i64 noundef %1)
  %6 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = load ptr, ptr %0, align 8, !tbaa !73
  %9 = load i64, ptr %8, align 8, !tbaa !90
  %10 = tail call i32 %7(i64 noundef %9, i64 noundef %1) #17, !prof !152
  %11 = icmp slt i32 %10, 0
  %12 = load ptr, ptr %0, align 8, !tbaa !73
  br i1 %11, label %22, label %13, !prof !153

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.splay_tree_node_s, ptr %12, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !94
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17, !prof !154

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %20, %17 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !97
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %17, !prof !155, !llvm.loop !156

22:                                               ; preds = %17, %5, %13, %2
  %23 = phi ptr [ null, %2 ], [ null, %13 ], [ %12, %5 ], [ %18, %17 ]
  ret ptr %23
}

; Function Attrs: nounwind uwtable
define dso_local ptr @splay_tree_successor(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #7 !prof !150 {
  %3 = load ptr, ptr %0, align 8, !tbaa !73
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5, !prof !151

5:                                                ; preds = %2
  tail call fastcc void @splay_tree_splay(ptr noundef nonnull %0, i64 noundef %1)
  %6 = getelementptr inbounds %struct.splay_tree_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = load ptr, ptr %0, align 8, !tbaa !73
  %9 = load i64, ptr %8, align 8, !tbaa !90
  %10 = tail call i32 %7(i64 noundef %9, i64 noundef %1) #17, !prof !152
  %11 = icmp sgt i32 %10, 0
  %12 = load ptr, ptr %0, align 8, !tbaa !73
  br i1 %11, label %22, label %13, !prof !157

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.splay_tree_node_s, ptr %12, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !97
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17, !prof !158

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %20, %17 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !94
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %17, !prof !155, !llvm.loop !159

22:                                               ; preds = %17, %5, %13, %2
  %23 = phi ptr [ null, %2 ], [ null, %13 ], [ %12, %5 ], [ %18, %17 ]
  ret ptr %23
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @splay_tree_foreach(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 !prof !160 {
  %4 = load ptr, ptr %0, align 8, !tbaa !73
  %5 = tail call fastcc i32 @splay_tree_foreach_helper(ptr noundef %4, ptr noundef %1, ptr noundef %2)
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @splay_tree_foreach_helper(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #7 !prof !161 !PGOFuncName !162 {
  br label %4

4:                                                ; preds = %15, %3
  %5 = phi ptr [ %0, %3 ], [ %17, %15 ]
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7, !prof !163

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.splay_tree_node_s, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !94
  %10 = tail call fastcc i32 @splay_tree_foreach_helper(ptr noundef %9, ptr noundef %1, ptr noundef %2)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18, !prof !164

12:                                               ; preds = %7
  %13 = tail call i32 %1(ptr noundef nonnull %5, ptr noundef %2) #17, !prof !165
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18, !prof !164

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.splay_tree_node_s, ptr %5, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !97
  br label %4

18:                                               ; preds = %12, %7, %4
  %19 = phi i32 [ 0, %4 ], [ %10, %7 ], [ %13, %12 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @splay_tree_compare_ints(i64 noundef %0, i64 noundef %1) local_unnamed_addr #13 !prof !166 {
  %3 = trunc i64 %0 to i32
  %4 = trunc i64 %1 to i32
  %5 = icmp slt i32 %3, %4
  %6 = icmp sgt i32 %3, %4
  %7 = zext i1 %6 to i32
  %8 = select i1 %5, i32 -1, i32 %7, !prof !167
  ret i32 %8
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @splay_tree_compare_pointers(i64 noundef %0, i64 noundef %1) local_unnamed_addr #14 !prof !53 {
  %3 = inttoptr i64 %0 to ptr
  %4 = inttoptr i64 %1 to ptr
  %5 = icmp ult ptr %3, %4
  %6 = icmp ugt ptr %3, %4
  %7 = zext i1 %6 to i32
  %8 = select i1 %5, i32 -1, i32 %7
  ret i32 %8
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!52}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!35 = !{ptr @splay_tree_new, ptr @xmalloc, i64 45}
!36 = !{ptr @splay_tree_xmalloc_allocate, ptr @xmalloc, i64 26018}
!37 = !{ptr @splay_tree_xmalloc_deallocate, ptr @free, i64 26061}
!38 = !{ptr @splay_tree_delete, ptr @splay_tree_xmalloc_deallocate, i64 25741}
!39 = !{ptr @splay_tree_insert, ptr @splay_tree_splay, i64 26163}
!40 = !{ptr @splay_tree_insert, ptr @splay_tree_compare_ints, i64 450}
!41 = !{ptr @splay_tree_insert, ptr @splay_tree_xmalloc_allocate, i64 26018}
!42 = !{ptr @splay_tree_splay, ptr @splay_tree_compare_ints, i64 3309}
!43 = !{ptr @splay_tree_remove, ptr @splay_tree_splay, i64 358}
!44 = !{ptr @splay_tree_remove, ptr @splay_tree_compare_ints, i64 358}
!45 = !{ptr @splay_tree_remove, ptr @splay_tree_xmalloc_deallocate, i64 320}
!46 = !{ptr @splay_tree_lookup, ptr @splay_tree_splay, i64 25781}
!47 = !{ptr @splay_tree_lookup, ptr @splay_tree_compare_ints, i64 83}
!48 = !{ptr @splay_tree_predecessor, ptr @splay_tree_splay, i64 25617}
!49 = !{ptr @splay_tree_successor, ptr @splay_tree_splay, i64 25617}
!50 = !{ptr @splay_tree_foreach, ptr @splay_tree_foreach_helper, i64 8}
!51 = !{ptr @splay_tree_foreach_helper, ptr @splay_tree_foreach_helper, i64 129}
!52 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!53 = !{!"function_entry_count", i64 0}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!58, !58, i64 0}
!58 = !{!"any pointer", !59, i64 0}
!59 = !{!"omnipotent char", !60, i64 0}
!60 = !{!"Simple C/C++ TBAA"}
!61 = !{!62, !58, i64 8}
!62 = !{!"_IO_FILE", !63, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !58, i64 40, !58, i64 48, !58, i64 56, !58, i64 64, !58, i64 72, !58, i64 80, !58, i64 88, !58, i64 96, !58, i64 104, !63, i64 112, !63, i64 116, !64, i64 120, !65, i64 128, !59, i64 130, !59, i64 131, !58, i64 136, !64, i64 144, !58, i64 152, !58, i64 160, !58, i64 168, !58, i64 176, !64, i64 184, !63, i64 192, !59, i64 196}
!63 = !{!"int", !59, i64 0}
!64 = !{!"long", !59, i64 0}
!65 = !{!"short", !59, i64 0}
!66 = !{!62, !58, i64 16}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{!59, !59, i64 0}
!69 = !{!62, !58, i64 40}
!70 = !{!62, !58, i64 48}
!71 = !{!62, !63, i64 0}
!72 = !{!"function_entry_count", i64 45}
!73 = !{!74, !58, i64 0}
!74 = !{!"splay_tree_s", !58, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !58, i64 40, !58, i64 48}
!75 = !{!74, !58, i64 8}
!76 = !{!74, !58, i64 16}
!77 = !{!74, !58, i64 24}
!78 = !{!74, !58, i64 32}
!79 = !{!74, !58, i64 40}
!80 = !{!74, !58, i64 48}
!81 = !{!"function_entry_count", i64 11}
!82 = !{!"VP", i32 0, i64 11, i64 5311712012464296598, i64 11}
!83 = !{!"function_entry_count", i64 26018}
!84 = !{!"splay-tree.c;splay_tree_xmalloc_allocate"}
!85 = !{!"function_entry_count", i64 26061}
!86 = !{!"splay-tree.c;splay_tree_xmalloc_deallocate"}
!87 = !{!"function_entry_count", i64 44}
!88 = !{!"branch_weights", i32 4, i32 40}
!89 = !{!"branch_weights", i32 40, i32 0}
!90 = !{!91, !64, i64 0}
!91 = !{!"splay_tree_node_s", !64, i64 0, !64, i64 8, !58, i64 16, !58, i64 24}
!92 = !{!91, !64, i64 8}
!93 = !{!"branch_weights", i32 40, i32 5788}
!94 = !{!91, !58, i64 16}
!95 = !{!"branch_weights", i32 14197, i32 11500}
!96 = !{!"branch_weights", i32 11500, i32 0}
!97 = !{!91, !58, i64 24}
!98 = !{!"branch_weights", i32 11540, i32 14157}
!99 = !{!"branch_weights", i32 14157, i32 0}
!100 = !{!"VP", i32 0, i64 25697, i64 2393589345286494213, i64 25697}
!101 = !{!"branch_weights", i32 5828, i32 19869}
!102 = distinct !{!102, !55, !56}
!103 = !{!"VP", i32 0, i64 44, i64 2393589345286494213, i64 44}
!104 = !{!"function_entry_count", i64 26163}
!105 = !{!"branch_weights", i32 56, i32 26107}
!106 = !{!"VP", i32 0, i64 26107, i64 -8582969433625229046, i64 25657, i64 2207218252934964587, i64 450}
!107 = !{!"branch_weights", i32 26107, i32 56}
!108 = !{!"branch_weights", i32 24, i32 26139}
!109 = !{!"branch_weights", i32 24, i32 0}
!110 = !{!"VP", i32 0, i64 26139, i64 5603926825127989469, i64 26018, i64 5311712012464296598, i64 121}
!111 = !{!"branch_weights", i32 56, i32 26083}
!112 = !{!"branch_weights", i32 6289, i32 19794}
!113 = !{!"function_entry_count", i64 103536}
!114 = !{!"splay-tree.c;splay_tree_splay"}
!115 = !{!"branch_weights", i32 97, i32 103439}
!116 = !{!"VP", i32 0, i64 145209, i64 -8582969433625229046, i64 143908, i64 2207218252934964587, i64 1301}
!117 = !{!"branch_weights", i32 1, i32 288}
!118 = !{!"branch_weights", i32 82815, i32 62105}
!119 = !{!"branch_weights", i32 25773, i32 119147}
!120 = !{!"VP", i32 0, i64 119147, i64 -8582969433625229046, i64 118440, i64 2207218252934964587, i64 707}
!121 = !{!"branch_weights", i32 128, i32 119019}
!122 = !{!"branch_weights", i32 58221, i32 60798}
!123 = !{!"branch_weights", i32 38839, i32 19382}
!124 = !{!"branch_weights", i32 60798, i32 19382}
!125 = !{!"branch_weights", i32 38410, i32 22388}
!126 = !{!"branch_weights", i32 39094, i32 38283}
!127 = !{!"branch_weights", i32 27775, i32 13995}
!128 = !{!"branch_weights", i32 16986, i32 10789}
!129 = !{!"branch_weights", i32 5402, i32 5387}
!130 = !{!"branch_weights", i32 5387, i32 0}
!131 = !{!"branch_weights", i32 288, i32 144632}
!132 = !{!"function_entry_count", i64 358}
!133 = !{!"branch_weights", i32 0, i32 358}
!134 = !{!"VP", i32 0, i64 358, i64 2207218252934964587, i64 358}
!135 = !{!"branch_weights", i32 358, i32 0}
!136 = !{!"VP", i32 0, i64 358, i64 2393589345286494213, i64 320, i64 -598365172061380748, i64 38}
!137 = !{!"branch_weights", i32 292, i32 66}
!138 = !{!"branch_weights", i32 0, i32 66}
!139 = !{!"branch_weights", i32 66, i32 39}
!140 = distinct !{!140, !55, !56}
!141 = !{!"function_entry_count", i64 25781}
!142 = !{!"branch_weights", i32 41, i32 25740}
!143 = !{!"VP", i32 0, i64 25740, i64 -8582969433625229046, i64 25657, i64 2207218252934964587, i64 83}
!144 = !{!"branch_weights", i32 35, i32 25705}
!145 = distinct !{!145, !55, !56}
!146 = !{!"function_entry_count", i64 252}
!147 = !{!"branch_weights", i32 4, i32 248}
!148 = !{!"branch_weights", i32 248, i32 275}
!149 = distinct !{!149, !55, !56}
!150 = !{!"function_entry_count", i64 25657}
!151 = !{!"branch_weights", i32 40, i32 25617}
!152 = !{!"VP", i32 0, i64 25617, i64 -8582969433625229046, i64 25617}
!153 = !{!"branch_weights", i32 6062, i32 19555}
!154 = !{!"branch_weights", i32 6155, i32 13400}
!155 = !{!"branch_weights", i32 13400, i32 0}
!156 = distinct !{!156, !55, !56}
!157 = !{!"branch_weights", i32 11866, i32 13751}
!158 = !{!"branch_weights", i32 351, i32 13400}
!159 = distinct !{!159, !55, !56}
!160 = !{!"function_entry_count", i64 8}
!161 = !{!"function_entry_count", i64 144}
!162 = !{!"splay-tree.c;splay_tree_foreach_helper"}
!163 = !{!"branch_weights", i32 76, i32 68}
!164 = !{!"branch_weights", i32 68, i32 0}
!165 = !{!"VP", i32 0, i64 68, i64 -7677797071007471690, i64 68}
!166 = !{!"function_entry_count", i64 2899}
!167 = !{!"branch_weights", i32 1136, i32 1763}

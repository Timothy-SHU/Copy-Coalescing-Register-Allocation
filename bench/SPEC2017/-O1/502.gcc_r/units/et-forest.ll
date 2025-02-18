; ModuleID = 'et-forest.c'
source_filename = "et-forest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.et_node = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.et_occ = type { ptr, ptr, ptr, ptr, i32, i32, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@et_nodes = internal global ptr null, align 8
@.str = private unnamed_addr constant [13 x i8] c"et_node pool\00", align 1
@et_occurrences = internal global ptr null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"et_occ pool\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !46 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !47
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !46 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !47
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !46 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !57

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !51
  %11 = load i8, ptr %3, align 1, !tbaa !58
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !46 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !57

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !51
  %11 = load i8, ptr %3, align 1, !tbaa !58
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !46 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !57

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #13
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !51
  %11 = load i8, ptr %3, align 1, !tbaa !58
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !46 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !47
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !46 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !57

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !59
  store i8 %12, ptr %4, align 1, !tbaa !58
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !46 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !57

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !59
  store i8 %12, ptr %4, align 1, !tbaa !58
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !46 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !57

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !59
  store i8 %12, ptr %4, align 1, !tbaa !58
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !46 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #13
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !46 {
  %2 = load i32, ptr %0, align 8, !tbaa !61
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !46 {
  %2 = load i32, ptr %0, align 8, !tbaa !61
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !46 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !62
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !46 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !62
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !46 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !46 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !46 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !46 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #13
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
  br i1 %23, label %7, label %24, !llvm.loop !63

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !46 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @et_new_tree(ptr noundef %0) local_unnamed_addr #8 !prof !66 {
  %2 = load ptr, ptr @et_nodes, align 8, !tbaa !47
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6, !prof !67

4:                                                ; preds = %1
  %5 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str, i64 noundef 64, i64 noundef 300) #13
  store ptr %5, ptr @et_nodes, align 8, !tbaa !47
  br label %6

6:                                                ; preds = %4, %1
  %7 = load ptr, ptr @et_nodes, align 8, !tbaa !47
  %8 = tail call ptr @pool_alloc(ptr noundef %7) #13
  store ptr %0, ptr %8, align 8, !tbaa !68
  %9 = getelementptr inbounds %struct.et_node, ptr %8, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  %10 = load ptr, ptr @et_occurrences, align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14, !prof !70

12:                                               ; preds = %6
  %13 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.1, i64 noundef 48, i64 noundef 300) #13
  store ptr %13, ptr @et_occurrences, align 8, !tbaa !47
  br label %14

14:                                               ; preds = %6, %12
  %15 = load ptr, ptr @et_occurrences, align 8, !tbaa !47
  %16 = tail call ptr @pool_alloc(ptr noundef %15) #13
  store ptr %8, ptr %16, align 8, !tbaa !71
  %17 = getelementptr inbounds %struct.et_occ, ptr %16, i64 0, i32 1
  %18 = getelementptr inbounds %struct.et_occ, ptr %16, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %17, i8 0, i64 28, i1 false)
  store ptr %16, ptr %18, align 8, !tbaa !73
  %19 = getelementptr inbounds %struct.et_occ, ptr %16, i64 0, i32 5
  store i32 0, ptr %19, align 4, !tbaa !74
  %20 = getelementptr inbounds %struct.et_node, ptr %8, i64 0, i32 7
  store ptr %16, ptr %20, align 8, !tbaa !75
  %21 = getelementptr inbounds %struct.et_node, ptr %8, i64 0, i32 8
  store ptr null, ptr %21, align 8, !tbaa !76
  ret ptr %8
}

declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @et_free_tree(ptr noundef %0) local_unnamed_addr #8 !prof !77 {
  %2 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !79

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call void @et_split(ptr noundef nonnull %6)
  %7 = load ptr, ptr %2, align 8, !tbaa !78
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !prof !79, !llvm.loop !80

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !81
  %12 = icmp eq ptr %11, null
  br i1 %12, label %93, label %13, !prof !82

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !75
  tail call fastcc void @et_splay(ptr noundef %15)
  %16 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !83
  br label %18

18:                                               ; preds = %18, %13
  %19 = phi ptr [ %17, %13 ], [ %21, %18 ]
  %20 = getelementptr inbounds %struct.et_occ, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !84
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %18, !prof !85, !llvm.loop !86

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.et_occ, ptr %19, i64 0, i32 2
  tail call fastcc void @et_splay(ptr noundef %19)
  %25 = load ptr, ptr %24, align 8, !tbaa !84
  %26 = getelementptr inbounds %struct.et_occ, ptr %25, i64 0, i32 1
  store ptr null, ptr %26, align 8, !tbaa !87
  %27 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !76
  tail call fastcc void @et_splay(ptr noundef %28)
  store ptr null, ptr %27, align 8, !tbaa !76
  %29 = getelementptr inbounds %struct.et_occ, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !84
  %31 = getelementptr inbounds %struct.et_occ, ptr %28, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !83
  %33 = getelementptr inbounds %struct.et_occ, ptr %32, i64 0, i32 1
  store ptr null, ptr %33, align 8, !tbaa !87
  store ptr %30, ptr %24, align 8, !tbaa !84
  %34 = icmp eq ptr %30, null
  br i1 %34, label %46, label %35, !prof !88

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.et_occ, ptr %30, i64 0, i32 1
  store ptr %19, ptr %36, align 8, !tbaa !87
  %37 = getelementptr inbounds %struct.et_occ, ptr %19, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !83
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40, !prof !88

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.et_occ, ptr %30, i64 0, i32 5
  %42 = load i32, ptr %41, align 4, !tbaa !74
  %43 = getelementptr inbounds %struct.et_occ, ptr %38, i64 0, i32 5
  %44 = load i32, ptr %43, align 4, !tbaa !74
  %45 = icmp sgt i32 %42, %44
  br i1 %45, label %46, label %49, !prof !88

46:                                               ; preds = %40, %23
  %47 = getelementptr inbounds %struct.et_occ, ptr %19, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !83
  br label %49

49:                                               ; preds = %46, %40, %35
  %50 = phi ptr [ %48, %46 ], [ %30, %40 ], [ %30, %35 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %63, label %52, !prof !88

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.et_occ, ptr %50, i64 0, i32 5
  %54 = load i32, ptr %53, align 4, !tbaa !74
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %63, !prof !89

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.et_occ, ptr %19, i64 0, i32 4
  %58 = load i32, ptr %57, align 8, !tbaa !90
  %59 = add nsw i32 %58, %54
  %60 = getelementptr inbounds %struct.et_occ, ptr %19, i64 0, i32 5
  store i32 %59, ptr %60, align 4, !tbaa !74
  %61 = getelementptr inbounds %struct.et_occ, ptr %50, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !73
  br label %67

63:                                               ; preds = %52, %49
  %64 = getelementptr inbounds %struct.et_occ, ptr %19, i64 0, i32 4
  %65 = load i32, ptr %64, align 8, !tbaa !90
  %66 = getelementptr inbounds %struct.et_occ, ptr %19, i64 0, i32 5
  store i32 %65, ptr %66, align 4, !tbaa !74
  br label %67

67:                                               ; preds = %63, %56
  %68 = phi ptr [ %19, %63 ], [ %62, %56 ]
  %69 = getelementptr inbounds %struct.et_occ, ptr %19, i64 0, i32 6
  store ptr %68, ptr %69, align 8, !tbaa !73
  tail call fastcc void @et_splay(ptr noundef %15)
  %70 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 4
  store i32 0, ptr %70, align 8, !tbaa !90
  %71 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 5
  store i32 0, ptr %71, align 4, !tbaa !74
  %72 = load ptr, ptr @et_occurrences, align 8, !tbaa !47
  tail call void @pool_free(ptr noundef %72, ptr noundef %28) #13
  %73 = getelementptr inbounds %struct.et_node, ptr %11, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !78
  %75 = icmp eq ptr %74, %0
  br i1 %75, label %76, label %79, !prof !91

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 6
  %78 = load ptr, ptr %77, align 8, !tbaa !92
  store ptr %78, ptr %73, align 8, !tbaa !78
  br label %79

79:                                               ; preds = %76, %67
  %80 = load ptr, ptr %73, align 8, !tbaa !78
  %81 = icmp eq ptr %80, %0
  br i1 %81, label %82, label %83, !prof !93

82:                                               ; preds = %79
  store ptr null, ptr %73, align 8, !tbaa !78
  br label %91

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 6
  %85 = load ptr, ptr %84, align 8, !tbaa !92
  %86 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 5
  %87 = load ptr, ptr %86, align 8, !tbaa !94
  %88 = getelementptr inbounds %struct.et_node, ptr %87, i64 0, i32 6
  store ptr %85, ptr %88, align 8, !tbaa !92
  %89 = load ptr, ptr %84, align 8, !tbaa !92
  %90 = getelementptr inbounds %struct.et_node, ptr %89, i64 0, i32 5
  store ptr %87, ptr %90, align 8, !tbaa !94
  br label %91

91:                                               ; preds = %82, %83
  %92 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 5
  store ptr null, ptr %10, align 8, !tbaa !81
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %92, i8 0, i64 16, i1 false)
  br label %93

93:                                               ; preds = %91, %9
  %94 = load ptr, ptr @et_occurrences, align 8, !tbaa !47
  %95 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 7
  %96 = load ptr, ptr %95, align 8, !tbaa !75
  tail call void @pool_free(ptr noundef %94, ptr noundef %96) #13
  %97 = load ptr, ptr @et_nodes, align 8, !tbaa !47
  tail call void @pool_free(ptr noundef %97, ptr noundef %0) #13
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @et_split(ptr noundef %0) local_unnamed_addr #8 !prof !95 {
  %2 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  %4 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  tail call fastcc void @et_splay(ptr noundef %5)
  %6 = getelementptr inbounds %struct.et_occ, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  br label %8

8:                                                ; preds = %8, %1
  %9 = phi ptr [ %7, %1 ], [ %11, %8 ]
  %10 = getelementptr inbounds %struct.et_occ, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !84
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !prof !85, !llvm.loop !86

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.et_occ, ptr %9, i64 0, i32 2
  tail call fastcc void @et_splay(ptr noundef %9)
  %15 = load ptr, ptr %14, align 8, !tbaa !84
  %16 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 1
  store ptr null, ptr %16, align 8, !tbaa !87
  %17 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !76
  tail call fastcc void @et_splay(ptr noundef %18)
  store ptr null, ptr %17, align 8, !tbaa !76
  %19 = getelementptr inbounds %struct.et_occ, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !84
  %21 = getelementptr inbounds %struct.et_occ, ptr %18, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !83
  %23 = getelementptr inbounds %struct.et_occ, ptr %22, i64 0, i32 1
  store ptr null, ptr %23, align 8, !tbaa !87
  store ptr %20, ptr %14, align 8, !tbaa !84
  %24 = icmp eq ptr %20, null
  br i1 %24, label %36, label %25, !prof !88

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 1
  store ptr %9, ptr %26, align 8, !tbaa !87
  %27 = getelementptr inbounds %struct.et_occ, ptr %9, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !83
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30, !prof !88

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 5
  %32 = load i32, ptr %31, align 4, !tbaa !74
  %33 = getelementptr inbounds %struct.et_occ, ptr %28, i64 0, i32 5
  %34 = load i32, ptr %33, align 4, !tbaa !74
  %35 = icmp sgt i32 %32, %34
  br i1 %35, label %36, label %39, !prof !88

36:                                               ; preds = %13, %30
  %37 = getelementptr inbounds %struct.et_occ, ptr %9, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !83
  br label %39

39:                                               ; preds = %36, %30, %25
  %40 = phi ptr [ %38, %36 ], [ %20, %30 ], [ %20, %25 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %53, label %42, !prof !88

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.et_occ, ptr %40, i64 0, i32 5
  %44 = load i32, ptr %43, align 4, !tbaa !74
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %53, !prof !89

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.et_occ, ptr %9, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !90
  %49 = add nsw i32 %48, %44
  %50 = getelementptr inbounds %struct.et_occ, ptr %9, i64 0, i32 5
  store i32 %49, ptr %50, align 4, !tbaa !74
  %51 = getelementptr inbounds %struct.et_occ, ptr %40, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !73
  br label %57

53:                                               ; preds = %42, %39
  %54 = getelementptr inbounds %struct.et_occ, ptr %9, i64 0, i32 4
  %55 = load i32, ptr %54, align 8, !tbaa !90
  %56 = getelementptr inbounds %struct.et_occ, ptr %9, i64 0, i32 5
  store i32 %55, ptr %56, align 4, !tbaa !74
  br label %57

57:                                               ; preds = %46, %53
  %58 = phi ptr [ %52, %46 ], [ %9, %53 ]
  %59 = getelementptr inbounds %struct.et_occ, ptr %9, i64 0, i32 6
  store ptr %58, ptr %59, align 8, !tbaa !73
  tail call fastcc void @et_splay(ptr noundef %5)
  %60 = getelementptr inbounds %struct.et_occ, ptr %5, i64 0, i32 4
  store i32 0, ptr %60, align 8, !tbaa !90
  %61 = getelementptr inbounds %struct.et_occ, ptr %5, i64 0, i32 5
  store i32 0, ptr %61, align 4, !tbaa !74
  %62 = load ptr, ptr @et_occurrences, align 8, !tbaa !47
  tail call void @pool_free(ptr noundef %62, ptr noundef %18) #13
  %63 = getelementptr inbounds %struct.et_node, ptr %3, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !78
  %65 = icmp eq ptr %64, %0
  br i1 %65, label %66, label %69, !prof !91

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !92
  store ptr %68, ptr %63, align 8, !tbaa !78
  br label %69

69:                                               ; preds = %66, %57
  %70 = load ptr, ptr %63, align 8, !tbaa !78
  %71 = icmp eq ptr %70, %0
  br i1 %71, label %72, label %73, !prof !93

72:                                               ; preds = %69
  store ptr null, ptr %63, align 8, !tbaa !78
  br label %81

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !92
  %76 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !94
  %78 = getelementptr inbounds %struct.et_node, ptr %77, i64 0, i32 6
  store ptr %75, ptr %78, align 8, !tbaa !92
  %79 = load ptr, ptr %74, align 8, !tbaa !92
  %80 = getelementptr inbounds %struct.et_node, ptr %79, i64 0, i32 5
  store ptr %77, ptr %80, align 8, !tbaa !94
  br label %81

81:                                               ; preds = %73, %72
  %82 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 5
  store ptr null, ptr %2, align 8, !tbaa !81
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %82, i8 0, i64 16, i1 false)
  ret void
}

declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @et_free_tree_force(ptr noundef %0) local_unnamed_addr #8 !prof !96 {
  %2 = load ptr, ptr @et_occurrences, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  tail call void @pool_free(ptr noundef %2, ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !97

8:                                                ; preds = %1
  %9 = load ptr, ptr @et_occurrences, align 8, !tbaa !47
  tail call void @pool_free(ptr noundef %9, ptr noundef nonnull %6) #13
  br label %10

10:                                               ; preds = %8, %1
  %11 = load ptr, ptr @et_nodes, align 8, !tbaa !47
  tail call void @pool_free(ptr noundef %11, ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @et_free_pools() local_unnamed_addr #9 !prof !98 {
  tail call void @free_alloc_pool_if_empty(ptr noundef nonnull @et_occurrences) #13
  tail call void @free_alloc_pool_if_empty(ptr noundef nonnull @et_nodes) #13
  ret void
}

declare void @free_alloc_pool_if_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @et_set_father(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 !prof !99 {
  %3 = load ptr, ptr @et_occurrences, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !70

5:                                                ; preds = %2
  %6 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.1, i64 noundef 48, i64 noundef 300) #13
  store ptr %6, ptr @et_occurrences, align 8, !tbaa !47
  br label %7

7:                                                ; preds = %2, %5
  %8 = load ptr, ptr @et_occurrences, align 8, !tbaa !47
  %9 = tail call ptr @pool_alloc(ptr noundef %8) #13
  store ptr %1, ptr %9, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.et_occ, ptr %9, i64 0, i32 1
  %11 = getelementptr inbounds %struct.et_occ, ptr %9, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  store ptr %9, ptr %11, align 8, !tbaa !73
  %12 = getelementptr inbounds %struct.et_occ, ptr %9, i64 0, i32 5
  store i32 0, ptr %12, align 4, !tbaa !74
  %13 = getelementptr inbounds %struct.et_node, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !75
  %15 = getelementptr inbounds %struct.et_occ, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !87
  %17 = icmp eq ptr %16, null
  br i1 %17, label %353, label %18, !prof !100

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.et_occ, ptr %14, i64 0, i32 4
  %20 = icmp eq ptr %14, null
  %21 = getelementptr inbounds %struct.et_occ, ptr %14, i64 0, i32 5
  %22 = getelementptr inbounds %struct.et_occ, ptr %14, i64 0, i32 6
  %23 = getelementptr inbounds %struct.et_occ, ptr %14, i64 0, i32 2
  %24 = getelementptr inbounds %struct.et_occ, ptr %14, i64 0, i32 3
  br label %25

25:                                               ; preds = %348, %18
  %26 = phi ptr [ %16, %18 ], [ %119, %348 ]
  %27 = load i32, ptr %19, align 8, !tbaa !90
  %28 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !90
  %30 = sub i32 0, %29
  %31 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !87
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %105, !prof !101

34:                                               ; preds = %25
  %35 = sub i32 0, %27
  br i1 %20, label %40, label %36, !prof !102

36:                                               ; preds = %34
  %37 = load i32, ptr %21, align 4, !tbaa !74
  %38 = add nsw i32 %37, %29
  store i32 %38, ptr %21, align 4, !tbaa !74
  %39 = add nsw i32 %29, %27
  store i32 %39, ptr %19, align 8, !tbaa !90
  br label %40

40:                                               ; preds = %36, %34
  %41 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !73
  store ptr %42, ptr %22, align 8, !tbaa !73
  %43 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 5
  %44 = load i32, ptr %43, align 4, !tbaa !74
  store i32 %44, ptr %21, align 4, !tbaa !74
  %45 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !84
  %47 = icmp eq ptr %46, %14
  br i1 %47, label %48, label %59, !prof !103

48:                                               ; preds = %40
  %49 = load ptr, ptr %24, align 8, !tbaa !83
  store ptr %49, ptr %45, align 8, !tbaa !84
  %50 = icmp eq ptr %49, null
  br i1 %50, label %71, label %51, !prof !104

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.et_occ, ptr %49, i64 0, i32 1
  store ptr %26, ptr %52, align 8, !tbaa !87
  store ptr %26, ptr %24, align 8, !tbaa !83
  store ptr %14, ptr %31, align 8, !tbaa !87
  %53 = getelementptr inbounds %struct.et_occ, ptr %49, i64 0, i32 5
  %54 = load i32, ptr %53, align 4, !tbaa !74
  %55 = add nsw i32 %54, %27
  store i32 %55, ptr %53, align 4, !tbaa !74
  %56 = getelementptr inbounds %struct.et_occ, ptr %49, i64 0, i32 4
  %57 = load i32, ptr %56, align 8, !tbaa !90
  %58 = add nsw i32 %57, %27
  store i32 %58, ptr %56, align 8, !tbaa !90
  br label %73

59:                                               ; preds = %40
  %60 = load ptr, ptr %23, align 8, !tbaa !84
  %61 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 3
  store ptr %60, ptr %61, align 8, !tbaa !83
  %62 = icmp eq ptr %60, null
  br i1 %62, label %72, label %63, !prof !105

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.et_occ, ptr %60, i64 0, i32 1
  store ptr %26, ptr %64, align 8, !tbaa !87
  store ptr %26, ptr %23, align 8, !tbaa !84
  store ptr %14, ptr %31, align 8, !tbaa !87
  %65 = getelementptr inbounds %struct.et_occ, ptr %60, i64 0, i32 5
  %66 = load i32, ptr %65, align 4, !tbaa !74
  %67 = add nsw i32 %66, %27
  store i32 %67, ptr %65, align 4, !tbaa !74
  %68 = getelementptr inbounds %struct.et_occ, ptr %60, i64 0, i32 4
  %69 = load i32, ptr %68, align 8, !tbaa !90
  %70 = add nsw i32 %69, %27
  store i32 %70, ptr %68, align 8, !tbaa !90
  br label %73

71:                                               ; preds = %48
  store ptr %26, ptr %24, align 8, !tbaa !83
  store ptr %14, ptr %31, align 8, !tbaa !87
  br label %73

72:                                               ; preds = %59
  store ptr %26, ptr %23, align 8, !tbaa !84
  store ptr %14, ptr %31, align 8, !tbaa !87
  br label %73

73:                                               ; preds = %72, %71, %63, %51
  %74 = load i32, ptr %28, align 8, !tbaa !90
  %75 = load i32, ptr %43, align 4, !tbaa !74
  %76 = add i32 %74, %27
  %77 = sub i32 %75, %76
  store i32 %77, ptr %43, align 4, !tbaa !74
  store i32 %35, ptr %28, align 8, !tbaa !90
  store ptr null, ptr %15, align 8, !tbaa !87
  %78 = load ptr, ptr %45, align 8, !tbaa !84
  %79 = icmp eq ptr %78, null
  br i1 %79, label %90, label %80, !prof !106

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !83
  %83 = icmp eq ptr %82, null
  br i1 %83, label %93, label %84, !prof !107

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.et_occ, ptr %78, i64 0, i32 5
  %86 = load i32, ptr %85, align 4, !tbaa !74
  %87 = getelementptr inbounds %struct.et_occ, ptr %82, i64 0, i32 5
  %88 = load i32, ptr %87, align 4, !tbaa !74
  %89 = icmp sgt i32 %86, %88
  br i1 %89, label %90, label %93, !prof !108

90:                                               ; preds = %84, %73
  %91 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !83
  br label %93

93:                                               ; preds = %90, %84, %80
  %94 = phi ptr [ %92, %90 ], [ %78, %84 ], [ %78, %80 ]
  %95 = icmp eq ptr %94, null
  br i1 %95, label %104, label %96, !prof !109

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.et_occ, ptr %94, i64 0, i32 5
  %98 = load i32, ptr %97, align 4, !tbaa !74
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %104, !prof !110

100:                                              ; preds = %96
  %101 = sub i32 %98, %27
  store i32 %101, ptr %43, align 4, !tbaa !74
  %102 = getelementptr inbounds %struct.et_occ, ptr %94, i64 0, i32 6
  %103 = load ptr, ptr %102, align 8, !tbaa !73
  br label %351

104:                                              ; preds = %96, %93
  store i32 %35, ptr %43, align 4, !tbaa !74
  br label %351

105:                                              ; preds = %25
  %106 = getelementptr inbounds %struct.et_occ, ptr %32, i64 0, i32 4
  br i1 %20, label %113, label %107, !prof !111

107:                                              ; preds = %105
  %108 = load i32, ptr %106, align 8, !tbaa !90
  %109 = add nsw i32 %108, %29
  %110 = load i32, ptr %21, align 4, !tbaa !74
  %111 = add nsw i32 %110, %109
  store i32 %111, ptr %21, align 4, !tbaa !74
  %112 = add nsw i32 %109, %27
  store i32 %112, ptr %19, align 8, !tbaa !90
  br label %113

113:                                              ; preds = %107, %105
  %114 = getelementptr inbounds %struct.et_occ, ptr %32, i64 0, i32 6
  %115 = load ptr, ptr %114, align 8, !tbaa !73
  store ptr %115, ptr %22, align 8, !tbaa !73
  %116 = getelementptr inbounds %struct.et_occ, ptr %32, i64 0, i32 5
  %117 = load i32, ptr %116, align 4, !tbaa !74
  store i32 %117, ptr %21, align 4, !tbaa !74
  %118 = getelementptr inbounds %struct.et_occ, ptr %32, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !87
  %120 = getelementptr inbounds %struct.et_occ, ptr %32, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !84
  %122 = icmp eq ptr %121, %26
  %123 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !84
  %125 = icmp eq ptr %124, %14
  br i1 %122, label %126, label %196, !prof !112

126:                                              ; preds = %113
  br i1 %125, label %127, label %159, !prof !113

127:                                              ; preds = %126
  %128 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !83
  store ptr %129, ptr %120, align 8, !tbaa !84
  %130 = icmp eq ptr %129, null
  br i1 %130, label %133, label %131, !prof !114

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.et_occ, ptr %129, i64 0, i32 1
  store ptr %32, ptr %132, align 8, !tbaa !87
  br label %133

133:                                              ; preds = %131, %127
  %134 = load ptr, ptr %24, align 8, !tbaa !83
  store ptr %134, ptr %123, align 8, !tbaa !84
  %135 = icmp eq ptr %134, null
  br i1 %135, label %138, label %136, !prof !115

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.et_occ, ptr %134, i64 0, i32 1
  store ptr %26, ptr %137, align 8, !tbaa !87
  br label %138

138:                                              ; preds = %136, %133
  store ptr %26, ptr %24, align 8, !tbaa !83
  store ptr %14, ptr %31, align 8, !tbaa !87
  store ptr %32, ptr %128, align 8, !tbaa !83
  store ptr %26, ptr %118, align 8, !tbaa !87
  %139 = sub nsw i32 0, %27
  %140 = load i32, ptr %28, align 8, !tbaa !90
  %141 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 5
  %142 = load i32, ptr %141, align 4, !tbaa !74
  %143 = add i32 %140, %27
  %144 = sub i32 %142, %143
  store i32 %144, ptr %141, align 4, !tbaa !74
  store i32 %139, ptr %28, align 8, !tbaa !90
  br i1 %135, label %152, label %145, !prof !115

145:                                              ; preds = %138
  %146 = getelementptr inbounds %struct.et_occ, ptr %134, i64 0, i32 5
  %147 = load i32, ptr %146, align 4, !tbaa !74
  %148 = add nsw i32 %147, %27
  store i32 %148, ptr %146, align 4, !tbaa !74
  %149 = getelementptr inbounds %struct.et_occ, ptr %134, i64 0, i32 4
  %150 = load i32, ptr %149, align 8, !tbaa !90
  %151 = add nsw i32 %150, %27
  store i32 %151, ptr %149, align 8, !tbaa !90
  br label %152

152:                                              ; preds = %145, %138
  %153 = load i32, ptr %106, align 8, !tbaa !90
  %154 = load i32, ptr %116, align 4, !tbaa !74
  %155 = add i32 %153, %29
  %156 = sub i32 %154, %155
  store i32 %156, ptr %116, align 4, !tbaa !74
  store i32 %30, ptr %106, align 8, !tbaa !90
  %157 = load ptr, ptr %120, align 8, !tbaa !84
  %158 = icmp eq ptr %157, null
  br i1 %158, label %276, label %267, !prof !114

159:                                              ; preds = %126
  %160 = load ptr, ptr %24, align 8, !tbaa !83
  store ptr %160, ptr %120, align 8, !tbaa !84
  %161 = icmp eq ptr %160, null
  br i1 %161, label %164, label %162, !prof !116

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.et_occ, ptr %160, i64 0, i32 1
  store ptr %32, ptr %163, align 8, !tbaa !87
  br label %164

164:                                              ; preds = %162, %159
  %165 = load ptr, ptr %23, align 8, !tbaa !84
  %166 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 3
  store ptr %165, ptr %166, align 8, !tbaa !83
  %167 = icmp eq ptr %165, null
  br i1 %167, label %170, label %168, !prof !117

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.et_occ, ptr %165, i64 0, i32 1
  store ptr %26, ptr %169, align 8, !tbaa !87
  br label %170

170:                                              ; preds = %168, %164
  store ptr %26, ptr %23, align 8, !tbaa !84
  store ptr %14, ptr %31, align 8, !tbaa !87
  store ptr %32, ptr %24, align 8, !tbaa !83
  store ptr %14, ptr %118, align 8, !tbaa !87
  %171 = sub nsw i32 0, %27
  %172 = load i32, ptr %28, align 8, !tbaa !90
  %173 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 5
  %174 = load i32, ptr %173, align 4, !tbaa !74
  %175 = add i32 %172, %27
  %176 = sub i32 %174, %175
  store i32 %176, ptr %173, align 4, !tbaa !74
  store i32 %171, ptr %28, align 8, !tbaa !90
  %177 = load ptr, ptr %166, align 8, !tbaa !83
  %178 = icmp eq ptr %177, null
  br i1 %178, label %186, label %179, !prof !117

179:                                              ; preds = %170
  %180 = getelementptr inbounds %struct.et_occ, ptr %177, i64 0, i32 5
  %181 = load i32, ptr %180, align 4, !tbaa !74
  %182 = add nsw i32 %181, %27
  store i32 %182, ptr %180, align 4, !tbaa !74
  %183 = getelementptr inbounds %struct.et_occ, ptr %177, i64 0, i32 4
  %184 = load i32, ptr %183, align 8, !tbaa !90
  %185 = add nsw i32 %184, %27
  store i32 %185, ptr %183, align 8, !tbaa !90
  br label %186

186:                                              ; preds = %179, %170
  %187 = sub nsw i32 %171, %29
  %188 = load i32, ptr %106, align 8, !tbaa !90
  %189 = sub i32 %187, %188
  %190 = load i32, ptr %116, align 4, !tbaa !74
  %191 = add nsw i32 %189, %190
  store i32 %191, ptr %116, align 4, !tbaa !74
  store i32 %187, ptr %106, align 8, !tbaa !90
  %192 = load ptr, ptr %120, align 8, !tbaa !84
  %193 = icmp eq ptr %192, null
  br i1 %193, label %276, label %194, !prof !116

194:                                              ; preds = %186
  %195 = add nsw i32 %29, %27
  br label %267

196:                                              ; preds = %113
  br i1 %125, label %197, label %234, !prof !118

197:                                              ; preds = %196
  %198 = load ptr, ptr %23, align 8, !tbaa !84
  %199 = getelementptr inbounds %struct.et_occ, ptr %32, i64 0, i32 3
  store ptr %198, ptr %199, align 8, !tbaa !83
  %200 = icmp eq ptr %198, null
  br i1 %200, label %203, label %201, !prof !119

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.et_occ, ptr %198, i64 0, i32 1
  store ptr %32, ptr %202, align 8, !tbaa !87
  br label %203

203:                                              ; preds = %201, %197
  %204 = load ptr, ptr %24, align 8, !tbaa !83
  store ptr %204, ptr %123, align 8, !tbaa !84
  %205 = icmp eq ptr %204, null
  br i1 %205, label %208, label %206, !prof !120

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.et_occ, ptr %204, i64 0, i32 1
  store ptr %26, ptr %207, align 8, !tbaa !87
  br label %208

208:                                              ; preds = %206, %203
  store ptr %32, ptr %23, align 8, !tbaa !84
  store ptr %14, ptr %118, align 8, !tbaa !87
  store ptr %26, ptr %24, align 8, !tbaa !83
  store ptr %14, ptr %31, align 8, !tbaa !87
  %209 = sub nsw i32 0, %27
  %210 = load i32, ptr %28, align 8, !tbaa !90
  %211 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 5
  %212 = load i32, ptr %211, align 4, !tbaa !74
  %213 = add i32 %210, %27
  %214 = sub i32 %212, %213
  store i32 %214, ptr %211, align 4, !tbaa !74
  store i32 %209, ptr %28, align 8, !tbaa !90
  %215 = load ptr, ptr %123, align 8, !tbaa !84
  %216 = icmp eq ptr %215, null
  br i1 %216, label %224, label %217, !prof !120

217:                                              ; preds = %208
  %218 = getelementptr inbounds %struct.et_occ, ptr %215, i64 0, i32 5
  %219 = load i32, ptr %218, align 4, !tbaa !74
  %220 = add nsw i32 %219, %27
  store i32 %220, ptr %218, align 4, !tbaa !74
  %221 = getelementptr inbounds %struct.et_occ, ptr %215, i64 0, i32 4
  %222 = load i32, ptr %221, align 8, !tbaa !90
  %223 = add nsw i32 %222, %27
  store i32 %223, ptr %221, align 8, !tbaa !90
  br label %224

224:                                              ; preds = %217, %208
  %225 = sub nsw i32 %209, %29
  %226 = load i32, ptr %106, align 8, !tbaa !90
  %227 = sub i32 %225, %226
  %228 = load i32, ptr %116, align 4, !tbaa !74
  %229 = add nsw i32 %227, %228
  store i32 %229, ptr %116, align 4, !tbaa !74
  store i32 %225, ptr %106, align 8, !tbaa !90
  %230 = load ptr, ptr %199, align 8, !tbaa !83
  %231 = icmp eq ptr %230, null
  br i1 %231, label %276, label %232, !prof !119

232:                                              ; preds = %224
  %233 = add nsw i32 %29, %27
  br label %267

234:                                              ; preds = %196
  %235 = getelementptr inbounds %struct.et_occ, ptr %32, i64 0, i32 3
  store ptr %124, ptr %235, align 8, !tbaa !83
  %236 = icmp eq ptr %124, null
  br i1 %236, label %239, label %237, !prof !121

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.et_occ, ptr %124, i64 0, i32 1
  store ptr %32, ptr %238, align 8, !tbaa !87
  br label %239

239:                                              ; preds = %237, %234
  %240 = load ptr, ptr %23, align 8, !tbaa !84
  %241 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 3
  store ptr %240, ptr %241, align 8, !tbaa !83
  %242 = icmp eq ptr %240, null
  br i1 %242, label %245, label %243, !prof !122

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.et_occ, ptr %240, i64 0, i32 1
  store ptr %26, ptr %244, align 8, !tbaa !87
  br label %245

245:                                              ; preds = %243, %239
  store ptr %26, ptr %23, align 8, !tbaa !84
  store ptr %14, ptr %31, align 8, !tbaa !87
  store ptr %32, ptr %123, align 8, !tbaa !84
  store ptr %26, ptr %118, align 8, !tbaa !87
  %246 = sub nsw i32 0, %27
  %247 = load i32, ptr %28, align 8, !tbaa !90
  %248 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 5
  %249 = load i32, ptr %248, align 4, !tbaa !74
  %250 = add i32 %247, %27
  %251 = sub i32 %249, %250
  store i32 %251, ptr %248, align 4, !tbaa !74
  store i32 %246, ptr %28, align 8, !tbaa !90
  br i1 %242, label %259, label %252, !prof !122

252:                                              ; preds = %245
  %253 = getelementptr inbounds %struct.et_occ, ptr %240, i64 0, i32 5
  %254 = load i32, ptr %253, align 4, !tbaa !74
  %255 = add nsw i32 %254, %27
  store i32 %255, ptr %253, align 4, !tbaa !74
  %256 = getelementptr inbounds %struct.et_occ, ptr %240, i64 0, i32 4
  %257 = load i32, ptr %256, align 8, !tbaa !90
  %258 = add nsw i32 %257, %27
  store i32 %258, ptr %256, align 8, !tbaa !90
  br label %259

259:                                              ; preds = %252, %245
  %260 = sub nsw i32 0, %29
  %261 = load i32, ptr %106, align 8, !tbaa !90
  %262 = load i32, ptr %116, align 4, !tbaa !74
  %263 = add i32 %261, %29
  %264 = sub i32 %262, %263
  store i32 %264, ptr %116, align 4, !tbaa !74
  store i32 %260, ptr %106, align 8, !tbaa !90
  %265 = load ptr, ptr %235, align 8, !tbaa !83
  %266 = icmp eq ptr %265, null
  br i1 %266, label %276, label %267, !prof !121

267:                                              ; preds = %259, %152, %194, %232
  %268 = phi ptr [ %192, %194 ], [ %230, %232 ], [ %157, %152 ], [ %265, %259 ]
  %269 = phi i32 [ %195, %194 ], [ %233, %232 ], [ %29, %152 ], [ %29, %259 ]
  %270 = getelementptr inbounds %struct.et_occ, ptr %268, i64 0, i32 5
  %271 = load i32, ptr %270, align 4, !tbaa !74
  %272 = add nsw i32 %271, %269
  store i32 %272, ptr %270, align 4, !tbaa !74
  %273 = getelementptr inbounds %struct.et_occ, ptr %268, i64 0, i32 4
  %274 = load i32, ptr %273, align 8, !tbaa !90
  %275 = add nsw i32 %274, %269
  store i32 %275, ptr %273, align 8, !tbaa !90
  br label %276

276:                                              ; preds = %267, %259, %224, %186, %152
  store ptr %119, ptr %15, align 8, !tbaa !87
  %277 = icmp eq ptr %119, null
  br i1 %277, label %284, label %278, !prof !123

278:                                              ; preds = %276
  %279 = getelementptr inbounds %struct.et_occ, ptr %119, i64 0, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !84
  %281 = icmp eq ptr %280, %32
  %282 = getelementptr inbounds %struct.et_occ, ptr %119, i64 0, i32 3
  %283 = select i1 %281, ptr %279, ptr %282, !prof !124
  store ptr %14, ptr %283, align 8, !tbaa !47
  br label %284

284:                                              ; preds = %278, %276
  %285 = load ptr, ptr %120, align 8, !tbaa !84
  %286 = icmp eq ptr %285, null
  br i1 %286, label %297, label %287, !prof !125

287:                                              ; preds = %284
  %288 = getelementptr inbounds %struct.et_occ, ptr %32, i64 0, i32 3
  %289 = load ptr, ptr %288, align 8, !tbaa !83
  %290 = icmp eq ptr %289, null
  br i1 %290, label %300, label %291, !prof !126

291:                                              ; preds = %287
  %292 = getelementptr inbounds %struct.et_occ, ptr %285, i64 0, i32 5
  %293 = load i32, ptr %292, align 4, !tbaa !74
  %294 = getelementptr inbounds %struct.et_occ, ptr %289, i64 0, i32 5
  %295 = load i32, ptr %294, align 4, !tbaa !74
  %296 = icmp sgt i32 %293, %295
  br i1 %296, label %297, label %300, !prof !127

297:                                              ; preds = %291, %284
  %298 = getelementptr inbounds %struct.et_occ, ptr %32, i64 0, i32 3
  %299 = load ptr, ptr %298, align 8, !tbaa !83
  br label %300

300:                                              ; preds = %297, %291, %287
  %301 = phi ptr [ %299, %297 ], [ %285, %291 ], [ %285, %287 ]
  %302 = icmp eq ptr %301, null
  br i1 %302, label %312, label %303, !prof !128

303:                                              ; preds = %300
  %304 = getelementptr inbounds %struct.et_occ, ptr %301, i64 0, i32 5
  %305 = load i32, ptr %304, align 4, !tbaa !74
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %312, !prof !129

307:                                              ; preds = %303
  %308 = load i32, ptr %106, align 8, !tbaa !90
  %309 = add nsw i32 %308, %305
  store i32 %309, ptr %116, align 4, !tbaa !74
  %310 = getelementptr inbounds %struct.et_occ, ptr %301, i64 0, i32 6
  %311 = load ptr, ptr %310, align 8, !tbaa !73
  br label %314

312:                                              ; preds = %303, %300
  %313 = load i32, ptr %106, align 8, !tbaa !90
  store i32 %313, ptr %116, align 4, !tbaa !74
  br label %314

314:                                              ; preds = %312, %307
  %315 = phi ptr [ %311, %307 ], [ %32, %312 ]
  store ptr %315, ptr %114, align 8, !tbaa !73
  %316 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 2
  %317 = load ptr, ptr %316, align 8, !tbaa !84
  %318 = icmp eq ptr %317, null
  br i1 %318, label %329, label %319, !prof !130

319:                                              ; preds = %314
  %320 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 3
  %321 = load ptr, ptr %320, align 8, !tbaa !83
  %322 = icmp eq ptr %321, null
  br i1 %322, label %332, label %323, !prof !131

323:                                              ; preds = %319
  %324 = getelementptr inbounds %struct.et_occ, ptr %317, i64 0, i32 5
  %325 = load i32, ptr %324, align 4, !tbaa !74
  %326 = getelementptr inbounds %struct.et_occ, ptr %321, i64 0, i32 5
  %327 = load i32, ptr %326, align 4, !tbaa !74
  %328 = icmp sgt i32 %325, %327
  br i1 %328, label %329, label %332, !prof !132

329:                                              ; preds = %323, %314
  %330 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 3
  %331 = load ptr, ptr %330, align 8, !tbaa !83
  br label %332

332:                                              ; preds = %329, %323, %319
  %333 = phi ptr [ %331, %329 ], [ %317, %323 ], [ %317, %319 ]
  %334 = icmp eq ptr %333, null
  br i1 %334, label %345, label %335, !prof !133

335:                                              ; preds = %332
  %336 = getelementptr inbounds %struct.et_occ, ptr %333, i64 0, i32 5
  %337 = load i32, ptr %336, align 4, !tbaa !74
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %339, label %345, !prof !134

339:                                              ; preds = %335
  %340 = load i32, ptr %28, align 8, !tbaa !90
  %341 = add nsw i32 %340, %337
  %342 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 5
  store i32 %341, ptr %342, align 4, !tbaa !74
  %343 = getelementptr inbounds %struct.et_occ, ptr %333, i64 0, i32 6
  %344 = load ptr, ptr %343, align 8, !tbaa !73
  br label %348

345:                                              ; preds = %335, %332
  %346 = load i32, ptr %28, align 8, !tbaa !90
  %347 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 5
  store i32 %346, ptr %347, align 4, !tbaa !74
  br label %348

348:                                              ; preds = %345, %339
  %349 = phi ptr [ %26, %345 ], [ %344, %339 ]
  %350 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 6
  store ptr %349, ptr %350, align 8, !tbaa !73
  br i1 %277, label %353, label %25, !prof !135, !llvm.loop !136

351:                                              ; preds = %104, %100
  %352 = phi ptr [ %103, %100 ], [ %26, %104 ]
  store ptr %352, ptr %41, align 8, !tbaa !73
  br label %353

353:                                              ; preds = %348, %351, %7
  %354 = getelementptr inbounds %struct.et_occ, ptr %14, i64 0, i32 2
  %355 = load ptr, ptr %354, align 8, !tbaa !84
  %356 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 7
  %357 = load ptr, ptr %356, align 8, !tbaa !75
  %358 = getelementptr inbounds %struct.et_occ, ptr %357, i64 0, i32 1
  %359 = load ptr, ptr %358, align 8, !tbaa !87
  %360 = icmp eq ptr %359, null
  br i1 %360, label %696, label %361, !prof !100

361:                                              ; preds = %353
  %362 = getelementptr inbounds %struct.et_occ, ptr %357, i64 0, i32 4
  %363 = icmp eq ptr %357, null
  %364 = getelementptr inbounds %struct.et_occ, ptr %357, i64 0, i32 5
  %365 = getelementptr inbounds %struct.et_occ, ptr %357, i64 0, i32 6
  %366 = getelementptr inbounds %struct.et_occ, ptr %357, i64 0, i32 2
  %367 = getelementptr inbounds %struct.et_occ, ptr %357, i64 0, i32 3
  br label %368

368:                                              ; preds = %691, %361
  %369 = phi ptr [ %359, %361 ], [ %462, %691 ]
  %370 = load i32, ptr %362, align 8, !tbaa !90
  %371 = getelementptr inbounds %struct.et_occ, ptr %369, i64 0, i32 4
  %372 = load i32, ptr %371, align 8, !tbaa !90
  %373 = sub i32 0, %372
  %374 = getelementptr inbounds %struct.et_occ, ptr %369, i64 0, i32 1
  %375 = load ptr, ptr %374, align 8, !tbaa !87
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %448, !prof !101

377:                                              ; preds = %368
  %378 = sub i32 0, %370
  br i1 %363, label %383, label %379, !prof !102

379:                                              ; preds = %377
  %380 = load i32, ptr %364, align 4, !tbaa !74
  %381 = add nsw i32 %380, %372
  store i32 %381, ptr %364, align 4, !tbaa !74
  %382 = add nsw i32 %372, %370
  store i32 %382, ptr %362, align 8, !tbaa !90
  br label %383

383:                                              ; preds = %379, %377
  %384 = getelementptr inbounds %struct.et_occ, ptr %369, i64 0, i32 6
  %385 = load ptr, ptr %384, align 8, !tbaa !73
  store ptr %385, ptr %365, align 8, !tbaa !73
  %386 = getelementptr inbounds %struct.et_occ, ptr %369, i64 0, i32 5
  %387 = load i32, ptr %386, align 4, !tbaa !74
  store i32 %387, ptr %364, align 4, !tbaa !74
  %388 = getelementptr inbounds %struct.et_occ, ptr %369, i64 0, i32 2
  %389 = load ptr, ptr %388, align 8, !tbaa !84
  %390 = icmp eq ptr %389, %357
  br i1 %390, label %391, label %402, !prof !103

391:                                              ; preds = %383
  %392 = load ptr, ptr %367, align 8, !tbaa !83
  store ptr %392, ptr %388, align 8, !tbaa !84
  %393 = icmp eq ptr %392, null
  br i1 %393, label %414, label %394, !prof !104

394:                                              ; preds = %391
  %395 = getelementptr inbounds %struct.et_occ, ptr %392, i64 0, i32 1
  store ptr %369, ptr %395, align 8, !tbaa !87
  store ptr %369, ptr %367, align 8, !tbaa !83
  store ptr %357, ptr %374, align 8, !tbaa !87
  %396 = getelementptr inbounds %struct.et_occ, ptr %392, i64 0, i32 5
  %397 = load i32, ptr %396, align 4, !tbaa !74
  %398 = add nsw i32 %397, %370
  store i32 %398, ptr %396, align 4, !tbaa !74
  %399 = getelementptr inbounds %struct.et_occ, ptr %392, i64 0, i32 4
  %400 = load i32, ptr %399, align 8, !tbaa !90
  %401 = add nsw i32 %400, %370
  store i32 %401, ptr %399, align 8, !tbaa !90
  br label %416

402:                                              ; preds = %383
  %403 = load ptr, ptr %366, align 8, !tbaa !84
  %404 = getelementptr inbounds %struct.et_occ, ptr %369, i64 0, i32 3
  store ptr %403, ptr %404, align 8, !tbaa !83
  %405 = icmp eq ptr %403, null
  br i1 %405, label %415, label %406, !prof !105

406:                                              ; preds = %402
  %407 = getelementptr inbounds %struct.et_occ, ptr %403, i64 0, i32 1
  store ptr %369, ptr %407, align 8, !tbaa !87
  store ptr %369, ptr %366, align 8, !tbaa !84
  store ptr %357, ptr %374, align 8, !tbaa !87
  %408 = getelementptr inbounds %struct.et_occ, ptr %403, i64 0, i32 5
  %409 = load i32, ptr %408, align 4, !tbaa !74
  %410 = add nsw i32 %409, %370
  store i32 %410, ptr %408, align 4, !tbaa !74
  %411 = getelementptr inbounds %struct.et_occ, ptr %403, i64 0, i32 4
  %412 = load i32, ptr %411, align 8, !tbaa !90
  %413 = add nsw i32 %412, %370
  store i32 %413, ptr %411, align 8, !tbaa !90
  br label %416

414:                                              ; preds = %391
  store ptr %369, ptr %367, align 8, !tbaa !83
  store ptr %357, ptr %374, align 8, !tbaa !87
  br label %416

415:                                              ; preds = %402
  store ptr %369, ptr %366, align 8, !tbaa !84
  store ptr %357, ptr %374, align 8, !tbaa !87
  br label %416

416:                                              ; preds = %415, %414, %406, %394
  %417 = load i32, ptr %371, align 8, !tbaa !90
  %418 = load i32, ptr %386, align 4, !tbaa !74
  %419 = add i32 %417, %370
  %420 = sub i32 %418, %419
  store i32 %420, ptr %386, align 4, !tbaa !74
  store i32 %378, ptr %371, align 8, !tbaa !90
  store ptr null, ptr %358, align 8, !tbaa !87
  %421 = load ptr, ptr %388, align 8, !tbaa !84
  %422 = icmp eq ptr %421, null
  br i1 %422, label %433, label %423, !prof !106

423:                                              ; preds = %416
  %424 = getelementptr inbounds %struct.et_occ, ptr %369, i64 0, i32 3
  %425 = load ptr, ptr %424, align 8, !tbaa !83
  %426 = icmp eq ptr %425, null
  br i1 %426, label %436, label %427, !prof !107

427:                                              ; preds = %423
  %428 = getelementptr inbounds %struct.et_occ, ptr %421, i64 0, i32 5
  %429 = load i32, ptr %428, align 4, !tbaa !74
  %430 = getelementptr inbounds %struct.et_occ, ptr %425, i64 0, i32 5
  %431 = load i32, ptr %430, align 4, !tbaa !74
  %432 = icmp sgt i32 %429, %431
  br i1 %432, label %433, label %436, !prof !108

433:                                              ; preds = %427, %416
  %434 = getelementptr inbounds %struct.et_occ, ptr %369, i64 0, i32 3
  %435 = load ptr, ptr %434, align 8, !tbaa !83
  br label %436

436:                                              ; preds = %433, %427, %423
  %437 = phi ptr [ %435, %433 ], [ %421, %427 ], [ %421, %423 ]
  %438 = icmp eq ptr %437, null
  br i1 %438, label %447, label %439, !prof !109

439:                                              ; preds = %436
  %440 = getelementptr inbounds %struct.et_occ, ptr %437, i64 0, i32 5
  %441 = load i32, ptr %440, align 4, !tbaa !74
  %442 = icmp slt i32 %441, 0
  br i1 %442, label %443, label %447, !prof !110

443:                                              ; preds = %439
  %444 = sub i32 %441, %370
  store i32 %444, ptr %386, align 4, !tbaa !74
  %445 = getelementptr inbounds %struct.et_occ, ptr %437, i64 0, i32 6
  %446 = load ptr, ptr %445, align 8, !tbaa !73
  br label %694

447:                                              ; preds = %439, %436
  store i32 %378, ptr %386, align 4, !tbaa !74
  br label %694

448:                                              ; preds = %368
  %449 = getelementptr inbounds %struct.et_occ, ptr %375, i64 0, i32 4
  br i1 %363, label %456, label %450, !prof !111

450:                                              ; preds = %448
  %451 = load i32, ptr %449, align 8, !tbaa !90
  %452 = add nsw i32 %451, %372
  %453 = load i32, ptr %364, align 4, !tbaa !74
  %454 = add nsw i32 %453, %452
  store i32 %454, ptr %364, align 4, !tbaa !74
  %455 = add nsw i32 %452, %370
  store i32 %455, ptr %362, align 8, !tbaa !90
  br label %456

456:                                              ; preds = %450, %448
  %457 = getelementptr inbounds %struct.et_occ, ptr %375, i64 0, i32 6
  %458 = load ptr, ptr %457, align 8, !tbaa !73
  store ptr %458, ptr %365, align 8, !tbaa !73
  %459 = getelementptr inbounds %struct.et_occ, ptr %375, i64 0, i32 5
  %460 = load i32, ptr %459, align 4, !tbaa !74
  store i32 %460, ptr %364, align 4, !tbaa !74
  %461 = getelementptr inbounds %struct.et_occ, ptr %375, i64 0, i32 1
  %462 = load ptr, ptr %461, align 8, !tbaa !87
  %463 = getelementptr inbounds %struct.et_occ, ptr %375, i64 0, i32 2
  %464 = load ptr, ptr %463, align 8, !tbaa !84
  %465 = icmp eq ptr %464, %369
  %466 = getelementptr inbounds %struct.et_occ, ptr %369, i64 0, i32 2
  %467 = load ptr, ptr %466, align 8, !tbaa !84
  %468 = icmp eq ptr %467, %357
  br i1 %465, label %469, label %539, !prof !112

469:                                              ; preds = %456
  br i1 %468, label %470, label %502, !prof !113

470:                                              ; preds = %469
  %471 = getelementptr inbounds %struct.et_occ, ptr %369, i64 0, i32 3
  %472 = load ptr, ptr %471, align 8, !tbaa !83
  store ptr %472, ptr %463, align 8, !tbaa !84
  %473 = icmp eq ptr %472, null
  br i1 %473, label %476, label %474, !prof !114

474:                                              ; preds = %470
  %475 = getelementptr inbounds %struct.et_occ, ptr %472, i64 0, i32 1
  store ptr %375, ptr %475, align 8, !tbaa !87
  br label %476

476:                                              ; preds = %474, %470
  %477 = load ptr, ptr %367, align 8, !tbaa !83
  store ptr %477, ptr %466, align 8, !tbaa !84
  %478 = icmp eq ptr %477, null
  br i1 %478, label %481, label %479, !prof !115

479:                                              ; preds = %476
  %480 = getelementptr inbounds %struct.et_occ, ptr %477, i64 0, i32 1
  store ptr %369, ptr %480, align 8, !tbaa !87
  br label %481

481:                                              ; preds = %479, %476
  store ptr %369, ptr %367, align 8, !tbaa !83
  store ptr %357, ptr %374, align 8, !tbaa !87
  store ptr %375, ptr %471, align 8, !tbaa !83
  store ptr %369, ptr %461, align 8, !tbaa !87
  %482 = sub nsw i32 0, %370
  %483 = load i32, ptr %371, align 8, !tbaa !90
  %484 = getelementptr inbounds %struct.et_occ, ptr %369, i64 0, i32 5
  %485 = load i32, ptr %484, align 4, !tbaa !74
  %486 = add i32 %483, %370
  %487 = sub i32 %485, %486
  store i32 %487, ptr %484, align 4, !tbaa !74
  store i32 %482, ptr %371, align 8, !tbaa !90
  br i1 %478, label %495, label %488, !prof !115

488:                                              ; preds = %481
  %489 = getelementptr inbounds %struct.et_occ, ptr %477, i64 0, i32 5
  %490 = load i32, ptr %489, align 4, !tbaa !74
  %491 = add nsw i32 %490, %370
  store i32 %491, ptr %489, align 4, !tbaa !74
  %492 = getelementptr inbounds %struct.et_occ, ptr %477, i64 0, i32 4
  %493 = load i32, ptr %492, align 8, !tbaa !90
  %494 = add nsw i32 %493, %370
  store i32 %494, ptr %492, align 8, !tbaa !90
  br label %495

495:                                              ; preds = %488, %481
  %496 = load i32, ptr %449, align 8, !tbaa !90
  %497 = load i32, ptr %459, align 4, !tbaa !74
  %498 = add i32 %496, %372
  %499 = sub i32 %497, %498
  store i32 %499, ptr %459, align 4, !tbaa !74
  store i32 %373, ptr %449, align 8, !tbaa !90
  %500 = load ptr, ptr %463, align 8, !tbaa !84
  %501 = icmp eq ptr %500, null
  br i1 %501, label %619, label %610, !prof !114

502:                                              ; preds = %469
  %503 = load ptr, ptr %367, align 8, !tbaa !83
  store ptr %503, ptr %463, align 8, !tbaa !84
  %504 = icmp eq ptr %503, null
  br i1 %504, label %507, label %505, !prof !116

505:                                              ; preds = %502
  %506 = getelementptr inbounds %struct.et_occ, ptr %503, i64 0, i32 1
  store ptr %375, ptr %506, align 8, !tbaa !87
  br label %507

507:                                              ; preds = %505, %502
  %508 = load ptr, ptr %366, align 8, !tbaa !84
  %509 = getelementptr inbounds %struct.et_occ, ptr %369, i64 0, i32 3
  store ptr %508, ptr %509, align 8, !tbaa !83
  %510 = icmp eq ptr %508, null
  br i1 %510, label %513, label %511, !prof !117

511:                                              ; preds = %507
  %512 = getelementptr inbounds %struct.et_occ, ptr %508, i64 0, i32 1
  store ptr %369, ptr %512, align 8, !tbaa !87
  br label %513

513:                                              ; preds = %511, %507
  store ptr %369, ptr %366, align 8, !tbaa !84
  store ptr %357, ptr %374, align 8, !tbaa !87
  store ptr %375, ptr %367, align 8, !tbaa !83
  store ptr %357, ptr %461, align 8, !tbaa !87
  %514 = sub nsw i32 0, %370
  %515 = load i32, ptr %371, align 8, !tbaa !90
  %516 = getelementptr inbounds %struct.et_occ, ptr %369, i64 0, i32 5
  %517 = load i32, ptr %516, align 4, !tbaa !74
  %518 = add i32 %515, %370
  %519 = sub i32 %517, %518
  store i32 %519, ptr %516, align 4, !tbaa !74
  store i32 %514, ptr %371, align 8, !tbaa !90
  %520 = load ptr, ptr %509, align 8, !tbaa !83
  %521 = icmp eq ptr %520, null
  br i1 %521, label %529, label %522, !prof !117

522:                                              ; preds = %513
  %523 = getelementptr inbounds %struct.et_occ, ptr %520, i64 0, i32 5
  %524 = load i32, ptr %523, align 4, !tbaa !74
  %525 = add nsw i32 %524, %370
  store i32 %525, ptr %523, align 4, !tbaa !74
  %526 = getelementptr inbounds %struct.et_occ, ptr %520, i64 0, i32 4
  %527 = load i32, ptr %526, align 8, !tbaa !90
  %528 = add nsw i32 %527, %370
  store i32 %528, ptr %526, align 8, !tbaa !90
  br label %529

529:                                              ; preds = %522, %513
  %530 = sub nsw i32 %514, %372
  %531 = load i32, ptr %449, align 8, !tbaa !90
  %532 = sub i32 %530, %531
  %533 = load i32, ptr %459, align 4, !tbaa !74
  %534 = add nsw i32 %532, %533
  store i32 %534, ptr %459, align 4, !tbaa !74
  store i32 %530, ptr %449, align 8, !tbaa !90
  %535 = load ptr, ptr %463, align 8, !tbaa !84
  %536 = icmp eq ptr %535, null
  br i1 %536, label %619, label %537, !prof !116

537:                                              ; preds = %529
  %538 = add nsw i32 %372, %370
  br label %610

539:                                              ; preds = %456
  br i1 %468, label %540, label %577, !prof !118

540:                                              ; preds = %539
  %541 = load ptr, ptr %366, align 8, !tbaa !84
  %542 = getelementptr inbounds %struct.et_occ, ptr %375, i64 0, i32 3
  store ptr %541, ptr %542, align 8, !tbaa !83
  %543 = icmp eq ptr %541, null
  br i1 %543, label %546, label %544, !prof !119

544:                                              ; preds = %540
  %545 = getelementptr inbounds %struct.et_occ, ptr %541, i64 0, i32 1
  store ptr %375, ptr %545, align 8, !tbaa !87
  br label %546

546:                                              ; preds = %544, %540
  %547 = load ptr, ptr %367, align 8, !tbaa !83
  store ptr %547, ptr %466, align 8, !tbaa !84
  %548 = icmp eq ptr %547, null
  br i1 %548, label %551, label %549, !prof !120

549:                                              ; preds = %546
  %550 = getelementptr inbounds %struct.et_occ, ptr %547, i64 0, i32 1
  store ptr %369, ptr %550, align 8, !tbaa !87
  br label %551

551:                                              ; preds = %549, %546
  store ptr %375, ptr %366, align 8, !tbaa !84
  store ptr %357, ptr %461, align 8, !tbaa !87
  store ptr %369, ptr %367, align 8, !tbaa !83
  store ptr %357, ptr %374, align 8, !tbaa !87
  %552 = sub nsw i32 0, %370
  %553 = load i32, ptr %371, align 8, !tbaa !90
  %554 = getelementptr inbounds %struct.et_occ, ptr %369, i64 0, i32 5
  %555 = load i32, ptr %554, align 4, !tbaa !74
  %556 = add i32 %553, %370
  %557 = sub i32 %555, %556
  store i32 %557, ptr %554, align 4, !tbaa !74
  store i32 %552, ptr %371, align 8, !tbaa !90
  %558 = load ptr, ptr %466, align 8, !tbaa !84
  %559 = icmp eq ptr %558, null
  br i1 %559, label %567, label %560, !prof !120

560:                                              ; preds = %551
  %561 = getelementptr inbounds %struct.et_occ, ptr %558, i64 0, i32 5
  %562 = load i32, ptr %561, align 4, !tbaa !74
  %563 = add nsw i32 %562, %370
  store i32 %563, ptr %561, align 4, !tbaa !74
  %564 = getelementptr inbounds %struct.et_occ, ptr %558, i64 0, i32 4
  %565 = load i32, ptr %564, align 8, !tbaa !90
  %566 = add nsw i32 %565, %370
  store i32 %566, ptr %564, align 8, !tbaa !90
  br label %567

567:                                              ; preds = %560, %551
  %568 = sub nsw i32 %552, %372
  %569 = load i32, ptr %449, align 8, !tbaa !90
  %570 = sub i32 %568, %569
  %571 = load i32, ptr %459, align 4, !tbaa !74
  %572 = add nsw i32 %570, %571
  store i32 %572, ptr %459, align 4, !tbaa !74
  store i32 %568, ptr %449, align 8, !tbaa !90
  %573 = load ptr, ptr %542, align 8, !tbaa !83
  %574 = icmp eq ptr %573, null
  br i1 %574, label %619, label %575, !prof !119

575:                                              ; preds = %567
  %576 = add nsw i32 %372, %370
  br label %610

577:                                              ; preds = %539
  %578 = getelementptr inbounds %struct.et_occ, ptr %375, i64 0, i32 3
  store ptr %467, ptr %578, align 8, !tbaa !83
  %579 = icmp eq ptr %467, null
  br i1 %579, label %582, label %580, !prof !121

580:                                              ; preds = %577
  %581 = getelementptr inbounds %struct.et_occ, ptr %467, i64 0, i32 1
  store ptr %375, ptr %581, align 8, !tbaa !87
  br label %582

582:                                              ; preds = %580, %577
  %583 = load ptr, ptr %366, align 8, !tbaa !84
  %584 = getelementptr inbounds %struct.et_occ, ptr %369, i64 0, i32 3
  store ptr %583, ptr %584, align 8, !tbaa !83
  %585 = icmp eq ptr %583, null
  br i1 %585, label %588, label %586, !prof !122

586:                                              ; preds = %582
  %587 = getelementptr inbounds %struct.et_occ, ptr %583, i64 0, i32 1
  store ptr %369, ptr %587, align 8, !tbaa !87
  br label %588

588:                                              ; preds = %586, %582
  store ptr %369, ptr %366, align 8, !tbaa !84
  store ptr %357, ptr %374, align 8, !tbaa !87
  store ptr %375, ptr %466, align 8, !tbaa !84
  store ptr %369, ptr %461, align 8, !tbaa !87
  %589 = sub nsw i32 0, %370
  %590 = load i32, ptr %371, align 8, !tbaa !90
  %591 = getelementptr inbounds %struct.et_occ, ptr %369, i64 0, i32 5
  %592 = load i32, ptr %591, align 4, !tbaa !74
  %593 = add i32 %590, %370
  %594 = sub i32 %592, %593
  store i32 %594, ptr %591, align 4, !tbaa !74
  store i32 %589, ptr %371, align 8, !tbaa !90
  br i1 %585, label %602, label %595, !prof !122

595:                                              ; preds = %588
  %596 = getelementptr inbounds %struct.et_occ, ptr %583, i64 0, i32 5
  %597 = load i32, ptr %596, align 4, !tbaa !74
  %598 = add nsw i32 %597, %370
  store i32 %598, ptr %596, align 4, !tbaa !74
  %599 = getelementptr inbounds %struct.et_occ, ptr %583, i64 0, i32 4
  %600 = load i32, ptr %599, align 8, !tbaa !90
  %601 = add nsw i32 %600, %370
  store i32 %601, ptr %599, align 8, !tbaa !90
  br label %602

602:                                              ; preds = %595, %588
  %603 = sub nsw i32 0, %372
  %604 = load i32, ptr %449, align 8, !tbaa !90
  %605 = load i32, ptr %459, align 4, !tbaa !74
  %606 = add i32 %604, %372
  %607 = sub i32 %605, %606
  store i32 %607, ptr %459, align 4, !tbaa !74
  store i32 %603, ptr %449, align 8, !tbaa !90
  %608 = load ptr, ptr %578, align 8, !tbaa !83
  %609 = icmp eq ptr %608, null
  br i1 %609, label %619, label %610, !prof !121

610:                                              ; preds = %602, %495, %537, %575
  %611 = phi ptr [ %535, %537 ], [ %573, %575 ], [ %500, %495 ], [ %608, %602 ]
  %612 = phi i32 [ %538, %537 ], [ %576, %575 ], [ %372, %495 ], [ %372, %602 ]
  %613 = getelementptr inbounds %struct.et_occ, ptr %611, i64 0, i32 5
  %614 = load i32, ptr %613, align 4, !tbaa !74
  %615 = add nsw i32 %614, %612
  store i32 %615, ptr %613, align 4, !tbaa !74
  %616 = getelementptr inbounds %struct.et_occ, ptr %611, i64 0, i32 4
  %617 = load i32, ptr %616, align 8, !tbaa !90
  %618 = add nsw i32 %617, %612
  store i32 %618, ptr %616, align 8, !tbaa !90
  br label %619

619:                                              ; preds = %610, %602, %567, %529, %495
  store ptr %462, ptr %358, align 8, !tbaa !87
  %620 = icmp eq ptr %462, null
  br i1 %620, label %627, label %621, !prof !123

621:                                              ; preds = %619
  %622 = getelementptr inbounds %struct.et_occ, ptr %462, i64 0, i32 2
  %623 = load ptr, ptr %622, align 8, !tbaa !84
  %624 = icmp eq ptr %623, %375
  %625 = getelementptr inbounds %struct.et_occ, ptr %462, i64 0, i32 3
  %626 = select i1 %624, ptr %622, ptr %625, !prof !124
  store ptr %357, ptr %626, align 8, !tbaa !47
  br label %627

627:                                              ; preds = %621, %619
  %628 = load ptr, ptr %463, align 8, !tbaa !84
  %629 = icmp eq ptr %628, null
  br i1 %629, label %640, label %630, !prof !125

630:                                              ; preds = %627
  %631 = getelementptr inbounds %struct.et_occ, ptr %375, i64 0, i32 3
  %632 = load ptr, ptr %631, align 8, !tbaa !83
  %633 = icmp eq ptr %632, null
  br i1 %633, label %643, label %634, !prof !126

634:                                              ; preds = %630
  %635 = getelementptr inbounds %struct.et_occ, ptr %628, i64 0, i32 5
  %636 = load i32, ptr %635, align 4, !tbaa !74
  %637 = getelementptr inbounds %struct.et_occ, ptr %632, i64 0, i32 5
  %638 = load i32, ptr %637, align 4, !tbaa !74
  %639 = icmp sgt i32 %636, %638
  br i1 %639, label %640, label %643, !prof !127

640:                                              ; preds = %634, %627
  %641 = getelementptr inbounds %struct.et_occ, ptr %375, i64 0, i32 3
  %642 = load ptr, ptr %641, align 8, !tbaa !83
  br label %643

643:                                              ; preds = %640, %634, %630
  %644 = phi ptr [ %642, %640 ], [ %628, %634 ], [ %628, %630 ]
  %645 = icmp eq ptr %644, null
  br i1 %645, label %655, label %646, !prof !128

646:                                              ; preds = %643
  %647 = getelementptr inbounds %struct.et_occ, ptr %644, i64 0, i32 5
  %648 = load i32, ptr %647, align 4, !tbaa !74
  %649 = icmp slt i32 %648, 0
  br i1 %649, label %650, label %655, !prof !129

650:                                              ; preds = %646
  %651 = load i32, ptr %449, align 8, !tbaa !90
  %652 = add nsw i32 %651, %648
  store i32 %652, ptr %459, align 4, !tbaa !74
  %653 = getelementptr inbounds %struct.et_occ, ptr %644, i64 0, i32 6
  %654 = load ptr, ptr %653, align 8, !tbaa !73
  br label %657

655:                                              ; preds = %646, %643
  %656 = load i32, ptr %449, align 8, !tbaa !90
  store i32 %656, ptr %459, align 4, !tbaa !74
  br label %657

657:                                              ; preds = %655, %650
  %658 = phi ptr [ %654, %650 ], [ %375, %655 ]
  store ptr %658, ptr %457, align 8, !tbaa !73
  %659 = getelementptr inbounds %struct.et_occ, ptr %369, i64 0, i32 2
  %660 = load ptr, ptr %659, align 8, !tbaa !84
  %661 = icmp eq ptr %660, null
  br i1 %661, label %672, label %662, !prof !130

662:                                              ; preds = %657
  %663 = getelementptr inbounds %struct.et_occ, ptr %369, i64 0, i32 3
  %664 = load ptr, ptr %663, align 8, !tbaa !83
  %665 = icmp eq ptr %664, null
  br i1 %665, label %675, label %666, !prof !131

666:                                              ; preds = %662
  %667 = getelementptr inbounds %struct.et_occ, ptr %660, i64 0, i32 5
  %668 = load i32, ptr %667, align 4, !tbaa !74
  %669 = getelementptr inbounds %struct.et_occ, ptr %664, i64 0, i32 5
  %670 = load i32, ptr %669, align 4, !tbaa !74
  %671 = icmp sgt i32 %668, %670
  br i1 %671, label %672, label %675, !prof !132

672:                                              ; preds = %666, %657
  %673 = getelementptr inbounds %struct.et_occ, ptr %369, i64 0, i32 3
  %674 = load ptr, ptr %673, align 8, !tbaa !83
  br label %675

675:                                              ; preds = %672, %666, %662
  %676 = phi ptr [ %674, %672 ], [ %660, %666 ], [ %660, %662 ]
  %677 = icmp eq ptr %676, null
  br i1 %677, label %688, label %678, !prof !133

678:                                              ; preds = %675
  %679 = getelementptr inbounds %struct.et_occ, ptr %676, i64 0, i32 5
  %680 = load i32, ptr %679, align 4, !tbaa !74
  %681 = icmp slt i32 %680, 0
  br i1 %681, label %682, label %688, !prof !134

682:                                              ; preds = %678
  %683 = load i32, ptr %371, align 8, !tbaa !90
  %684 = add nsw i32 %683, %680
  %685 = getelementptr inbounds %struct.et_occ, ptr %369, i64 0, i32 5
  store i32 %684, ptr %685, align 4, !tbaa !74
  %686 = getelementptr inbounds %struct.et_occ, ptr %676, i64 0, i32 6
  %687 = load ptr, ptr %686, align 8, !tbaa !73
  br label %691

688:                                              ; preds = %678, %675
  %689 = load i32, ptr %371, align 8, !tbaa !90
  %690 = getelementptr inbounds %struct.et_occ, ptr %369, i64 0, i32 5
  store i32 %689, ptr %690, align 4, !tbaa !74
  br label %691

691:                                              ; preds = %688, %682
  %692 = phi ptr [ %369, %688 ], [ %687, %682 ]
  %693 = getelementptr inbounds %struct.et_occ, ptr %369, i64 0, i32 6
  store ptr %692, ptr %693, align 8, !tbaa !73
  br i1 %620, label %696, label %368, !prof !135, !llvm.loop !136

694:                                              ; preds = %447, %443
  %695 = phi ptr [ %446, %443 ], [ %369, %447 ]
  store ptr %695, ptr %384, align 8, !tbaa !73
  br label %696

696:                                              ; preds = %691, %694, %353
  %697 = getelementptr inbounds %struct.et_occ, ptr %9, i64 0, i32 2
  store ptr %355, ptr %697, align 8, !tbaa !84
  %698 = icmp eq ptr %355, null
  br i1 %698, label %701, label %699, !prof !137

699:                                              ; preds = %696
  %700 = getelementptr inbounds %struct.et_occ, ptr %355, i64 0, i32 1
  store ptr %9, ptr %700, align 8, !tbaa !87
  br label %701

701:                                              ; preds = %696, %699
  %702 = getelementptr inbounds %struct.et_occ, ptr %9, i64 0, i32 3
  store ptr %357, ptr %702, align 8, !tbaa !83
  %703 = icmp eq ptr %357, null
  br i1 %703, label %705, label %704, !prof !138

704:                                              ; preds = %701
  store ptr %9, ptr %358, align 8, !tbaa !87
  br label %705

705:                                              ; preds = %701, %704
  %706 = getelementptr inbounds %struct.et_occ, ptr %357, i64 0, i32 4
  %707 = load i32, ptr %706, align 8, !tbaa !90
  %708 = add nsw i32 %707, 1
  store i32 %708, ptr %706, align 8, !tbaa !90
  %709 = getelementptr inbounds %struct.et_occ, ptr %357, i64 0, i32 5
  %710 = load i32, ptr %709, align 4, !tbaa !74
  %711 = add nsw i32 %710, 1
  store i32 %711, ptr %709, align 4, !tbaa !74
  br i1 %698, label %717, label %712, !prof !137

712:                                              ; preds = %705
  br i1 %703, label %718, label %713, !prof !139

713:                                              ; preds = %712
  %714 = getelementptr inbounds %struct.et_occ, ptr %355, i64 0, i32 5
  %715 = load i32, ptr %714, align 4, !tbaa !74
  %716 = icmp sgt i32 %715, %711
  br i1 %716, label %717, label %718, !prof !139

717:                                              ; preds = %713, %705
  br label %718

718:                                              ; preds = %717, %713, %712
  %719 = phi ptr [ %357, %717 ], [ %355, %713 ], [ %355, %712 ]
  %720 = icmp eq ptr %719, null
  br i1 %720, label %731, label %721, !prof !138

721:                                              ; preds = %718
  %722 = getelementptr inbounds %struct.et_occ, ptr %719, i64 0, i32 5
  %723 = load i32, ptr %722, align 4, !tbaa !74
  %724 = icmp slt i32 %723, 0
  br i1 %724, label %725, label %731, !prof !140

725:                                              ; preds = %721
  %726 = getelementptr inbounds %struct.et_occ, ptr %9, i64 0, i32 4
  %727 = load i32, ptr %726, align 8, !tbaa !90
  %728 = add nsw i32 %727, %723
  store i32 %728, ptr %12, align 4, !tbaa !74
  %729 = getelementptr inbounds %struct.et_occ, ptr %719, i64 0, i32 6
  %730 = load ptr, ptr %729, align 8, !tbaa !73
  br label %734

731:                                              ; preds = %721, %718
  %732 = getelementptr inbounds %struct.et_occ, ptr %9, i64 0, i32 4
  %733 = load i32, ptr %732, align 8, !tbaa !90
  store i32 %733, ptr %12, align 4, !tbaa !74
  br label %734

734:                                              ; preds = %725, %731
  %735 = phi ptr [ %730, %725 ], [ %9, %731 ]
  store ptr %735, ptr %11, align 8, !tbaa !73
  store ptr %9, ptr %354, align 8, !tbaa !84
  store ptr %14, ptr %10, align 8, !tbaa !87
  %736 = load i32, ptr %12, align 4, !tbaa !74
  %737 = getelementptr inbounds %struct.et_occ, ptr %14, i64 0, i32 4
  %738 = load i32, ptr %737, align 8, !tbaa !90
  %739 = add nsw i32 %738, %736
  %740 = getelementptr inbounds %struct.et_occ, ptr %14, i64 0, i32 5
  %741 = load i32, ptr %740, align 4, !tbaa !74
  %742 = icmp slt i32 %739, %741
  br i1 %742, label %743, label %746, !prof !138

743:                                              ; preds = %734
  store i32 %739, ptr %740, align 4, !tbaa !74
  %744 = load ptr, ptr %11, align 8, !tbaa !73
  %745 = getelementptr inbounds %struct.et_occ, ptr %14, i64 0, i32 6
  store ptr %744, ptr %745, align 8, !tbaa !73
  br label %746

746:                                              ; preds = %743, %734
  %747 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 8
  store ptr %9, ptr %747, align 8, !tbaa !76
  %748 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 3
  store ptr %1, ptr %748, align 8, !tbaa !81
  %749 = getelementptr inbounds %struct.et_node, ptr %1, i64 0, i32 4
  %750 = load ptr, ptr %749, align 8, !tbaa !78
  %751 = icmp eq ptr %750, null
  br i1 %751, label %755, label %752, !prof !141

752:                                              ; preds = %746
  %753 = getelementptr inbounds %struct.et_node, ptr %750, i64 0, i32 5
  %754 = load ptr, ptr %753, align 8, !tbaa !94
  br label %755

755:                                              ; preds = %746, %752
  %756 = phi ptr [ %750, %752 ], [ %0, %746 ]
  %757 = phi ptr [ %754, %752 ], [ %0, %746 ]
  %758 = getelementptr inbounds %struct.et_node, ptr %757, i64 0, i32 6
  store ptr %0, ptr %758, align 8, !tbaa !92
  %759 = getelementptr inbounds %struct.et_node, ptr %756, i64 0, i32 5
  store ptr %0, ptr %759, align 8, !tbaa !94
  %760 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 5
  store ptr %757, ptr %760, align 8, !tbaa !94
  %761 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 6
  store ptr %756, ptr %761, align 8, !tbaa !92
  store ptr %0, ptr %749, align 8, !tbaa !78
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @et_splay(ptr noundef %0) unnamed_addr #10 !prof !142 !PGOFuncName !143 {
  %2 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  %4 = icmp eq ptr %3, null
  br i1 %4, label %353, label %5, !prof !100

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 4
  %7 = icmp eq ptr %0, null
  %8 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 6
  %10 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 5
  br label %11

11:                                               ; preds = %5, %346
  %12 = phi ptr [ %3, %5 ], [ %349, %346 ]
  %13 = load i32, ptr %6, align 8, !tbaa !90
  %14 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !90
  %16 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %96, !prof !101

19:                                               ; preds = %11
  %20 = icmp eq ptr %0, null
  br i1 %20, label %26, label %21, !prof !102

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !74
  %24 = add nsw i32 %23, %15
  store i32 %24, ptr %22, align 4, !tbaa !74
  %25 = add nsw i32 %15, %13
  store i32 %25, ptr %6, align 8, !tbaa !90
  br label %26

26:                                               ; preds = %19, %21
  %27 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !73
  %29 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 6
  store ptr %28, ptr %29, align 8, !tbaa !73
  %30 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 5
  %31 = load i32, ptr %30, align 4, !tbaa !74
  %32 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 5
  store i32 %31, ptr %32, align 4, !tbaa !74
  %33 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !84
  %35 = icmp eq ptr %34, %0
  br i1 %35, label %36, label %48, !prof !103

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !83
  store ptr %38, ptr %33, align 8, !tbaa !84
  %39 = icmp eq ptr %38, null
  br i1 %39, label %61, label %40, !prof !104

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.et_occ, ptr %38, i64 0, i32 1
  store ptr %12, ptr %41, align 8, !tbaa !87
  store ptr %12, ptr %37, align 8, !tbaa !83
  store ptr %0, ptr %16, align 8, !tbaa !87
  %42 = getelementptr inbounds %struct.et_occ, ptr %38, i64 0, i32 5
  %43 = load i32, ptr %42, align 4, !tbaa !74
  %44 = add nsw i32 %43, %13
  store i32 %44, ptr %42, align 4, !tbaa !74
  %45 = getelementptr inbounds %struct.et_occ, ptr %38, i64 0, i32 4
  %46 = load i32, ptr %45, align 8, !tbaa !90
  %47 = add nsw i32 %46, %13
  store i32 %47, ptr %45, align 8, !tbaa !90
  br label %63

48:                                               ; preds = %26
  %49 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !84
  %51 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 3
  store ptr %50, ptr %51, align 8, !tbaa !83
  %52 = icmp eq ptr %50, null
  br i1 %52, label %62, label %53, !prof !105

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.et_occ, ptr %50, i64 0, i32 1
  store ptr %12, ptr %54, align 8, !tbaa !87
  store ptr %12, ptr %49, align 8, !tbaa !84
  store ptr %0, ptr %16, align 8, !tbaa !87
  %55 = getelementptr inbounds %struct.et_occ, ptr %50, i64 0, i32 5
  %56 = load i32, ptr %55, align 4, !tbaa !74
  %57 = add nsw i32 %56, %13
  store i32 %57, ptr %55, align 4, !tbaa !74
  %58 = getelementptr inbounds %struct.et_occ, ptr %50, i64 0, i32 4
  %59 = load i32, ptr %58, align 8, !tbaa !90
  %60 = add nsw i32 %59, %13
  store i32 %60, ptr %58, align 8, !tbaa !90
  br label %63

61:                                               ; preds = %36
  store ptr %12, ptr %37, align 8, !tbaa !83
  store ptr %0, ptr %16, align 8, !tbaa !87
  br label %63

62:                                               ; preds = %48
  store ptr %12, ptr %49, align 8, !tbaa !84
  store ptr %0, ptr %16, align 8, !tbaa !87
  br label %63

63:                                               ; preds = %62, %61, %53, %40
  %64 = sub nsw i32 0, %13
  %65 = load i32, ptr %14, align 8, !tbaa !90
  %66 = add i32 %65, %13
  %67 = load i32, ptr %30, align 4, !tbaa !74
  %68 = sub i32 %67, %66
  store i32 %68, ptr %30, align 4, !tbaa !74
  store i32 %64, ptr %14, align 8, !tbaa !90
  store ptr null, ptr %2, align 8, !tbaa !87
  %69 = load ptr, ptr %33, align 8, !tbaa !84
  %70 = icmp eq ptr %69, null
  br i1 %70, label %81, label %71, !prof !106

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !83
  %74 = icmp eq ptr %73, null
  br i1 %74, label %84, label %75, !prof !107

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.et_occ, ptr %69, i64 0, i32 5
  %77 = load i32, ptr %76, align 4, !tbaa !74
  %78 = getelementptr inbounds %struct.et_occ, ptr %73, i64 0, i32 5
  %79 = load i32, ptr %78, align 4, !tbaa !74
  %80 = icmp sgt i32 %77, %79
  br i1 %80, label %81, label %84, !prof !108

81:                                               ; preds = %75, %63
  %82 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !83
  br label %84

84:                                               ; preds = %81, %75, %71
  %85 = phi ptr [ %83, %81 ], [ %69, %75 ], [ %69, %71 ]
  %86 = icmp eq ptr %85, null
  br i1 %86, label %95, label %87, !prof !109

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.et_occ, ptr %85, i64 0, i32 5
  %89 = load i32, ptr %88, align 4, !tbaa !74
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %95, !prof !110

91:                                               ; preds = %87
  %92 = sub i32 %89, %13
  store i32 %92, ptr %30, align 4, !tbaa !74
  %93 = getelementptr inbounds %struct.et_occ, ptr %85, i64 0, i32 6
  %94 = load ptr, ptr %93, align 8, !tbaa !73
  br label %351

95:                                               ; preds = %87, %84
  store i32 %64, ptr %30, align 4, !tbaa !74
  br label %351

96:                                               ; preds = %11
  %97 = getelementptr inbounds %struct.et_occ, ptr %17, i64 0, i32 4
  br i1 %7, label %104, label %98, !prof !111

98:                                               ; preds = %96
  %99 = load i32, ptr %97, align 8, !tbaa !90
  %100 = add nsw i32 %99, %15
  %101 = load i32, ptr %8, align 4, !tbaa !74
  %102 = add nsw i32 %101, %100
  store i32 %102, ptr %8, align 4, !tbaa !74
  %103 = add nsw i32 %100, %13
  store i32 %103, ptr %6, align 8, !tbaa !90
  br label %104

104:                                              ; preds = %96, %98
  %105 = getelementptr inbounds %struct.et_occ, ptr %17, i64 0, i32 6
  %106 = load ptr, ptr %105, align 8, !tbaa !73
  store ptr %106, ptr %9, align 8, !tbaa !73
  %107 = getelementptr inbounds %struct.et_occ, ptr %17, i64 0, i32 5
  %108 = load i32, ptr %107, align 4, !tbaa !74
  store i32 %108, ptr %10, align 4, !tbaa !74
  %109 = getelementptr inbounds %struct.et_occ, ptr %17, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !87
  %111 = getelementptr inbounds %struct.et_occ, ptr %17, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !84
  %113 = icmp eq ptr %112, %12
  %114 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !84
  %116 = icmp eq ptr %115, %0
  br i1 %113, label %117, label %191, !prof !112

117:                                              ; preds = %104
  br i1 %116, label %118, label %152, !prof !113

118:                                              ; preds = %117
  %119 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 3
  %120 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !83
  store ptr %121, ptr %111, align 8, !tbaa !84
  %122 = icmp eq ptr %121, null
  br i1 %122, label %125, label %123, !prof !114

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.et_occ, ptr %121, i64 0, i32 1
  store ptr %17, ptr %124, align 8, !tbaa !87
  br label %125

125:                                              ; preds = %118, %123
  %126 = load ptr, ptr %119, align 8, !tbaa !83
  store ptr %126, ptr %114, align 8, !tbaa !84
  %127 = icmp eq ptr %126, null
  br i1 %127, label %130, label %128, !prof !115

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.et_occ, ptr %126, i64 0, i32 1
  store ptr %12, ptr %129, align 8, !tbaa !87
  br label %130

130:                                              ; preds = %125, %128
  store ptr %12, ptr %119, align 8, !tbaa !83
  store ptr %0, ptr %16, align 8, !tbaa !87
  store ptr %17, ptr %120, align 8, !tbaa !83
  store ptr %12, ptr %109, align 8, !tbaa !87
  %131 = sub nsw i32 0, %13
  %132 = load i32, ptr %14, align 8, !tbaa !90
  %133 = add i32 %132, %13
  %134 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 5
  %135 = load i32, ptr %134, align 4, !tbaa !74
  %136 = sub i32 %135, %133
  store i32 %136, ptr %134, align 4, !tbaa !74
  store i32 %131, ptr %14, align 8, !tbaa !90
  br i1 %127, label %144, label %137, !prof !115

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.et_occ, ptr %126, i64 0, i32 5
  %139 = load i32, ptr %138, align 4, !tbaa !74
  %140 = add nsw i32 %139, %13
  store i32 %140, ptr %138, align 4, !tbaa !74
  %141 = getelementptr inbounds %struct.et_occ, ptr %126, i64 0, i32 4
  %142 = load i32, ptr %141, align 8, !tbaa !90
  %143 = add nsw i32 %142, %13
  store i32 %143, ptr %141, align 8, !tbaa !90
  br label %144

144:                                              ; preds = %130, %137
  %145 = sub nsw i32 0, %15
  %146 = load i32, ptr %97, align 8, !tbaa !90
  %147 = add i32 %146, %15
  %148 = load i32, ptr %107, align 4, !tbaa !74
  %149 = sub i32 %148, %147
  store i32 %149, ptr %107, align 4, !tbaa !74
  store i32 %145, ptr %97, align 8, !tbaa !90
  %150 = load ptr, ptr %111, align 8, !tbaa !84
  %151 = icmp eq ptr %150, null
  br i1 %151, label %274, label %265, !prof !114

152:                                              ; preds = %117
  %153 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 3
  %154 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 2
  %155 = load ptr, ptr %153, align 8, !tbaa !83
  store ptr %155, ptr %111, align 8, !tbaa !84
  %156 = icmp eq ptr %155, null
  br i1 %156, label %159, label %157, !prof !116

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.et_occ, ptr %155, i64 0, i32 1
  store ptr %17, ptr %158, align 8, !tbaa !87
  br label %159

159:                                              ; preds = %152, %157
  %160 = load ptr, ptr %154, align 8, !tbaa !84
  %161 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 3
  store ptr %160, ptr %161, align 8, !tbaa !83
  %162 = icmp eq ptr %160, null
  br i1 %162, label %165, label %163, !prof !117

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.et_occ, ptr %160, i64 0, i32 1
  store ptr %12, ptr %164, align 8, !tbaa !87
  br label %165

165:                                              ; preds = %159, %163
  store ptr %12, ptr %154, align 8, !tbaa !84
  store ptr %0, ptr %16, align 8, !tbaa !87
  store ptr %17, ptr %153, align 8, !tbaa !83
  store ptr %0, ptr %109, align 8, !tbaa !87
  %166 = sub nsw i32 0, %13
  %167 = load i32, ptr %14, align 8, !tbaa !90
  %168 = add i32 %167, %13
  %169 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 5
  %170 = load i32, ptr %169, align 4, !tbaa !74
  %171 = sub i32 %170, %168
  store i32 %171, ptr %169, align 4, !tbaa !74
  store i32 %166, ptr %14, align 8, !tbaa !90
  %172 = load ptr, ptr %161, align 8, !tbaa !83
  %173 = icmp eq ptr %172, null
  br i1 %173, label %181, label %174, !prof !117

174:                                              ; preds = %165
  %175 = getelementptr inbounds %struct.et_occ, ptr %172, i64 0, i32 5
  %176 = load i32, ptr %175, align 4, !tbaa !74
  %177 = add nsw i32 %176, %13
  store i32 %177, ptr %175, align 4, !tbaa !74
  %178 = getelementptr inbounds %struct.et_occ, ptr %172, i64 0, i32 4
  %179 = load i32, ptr %178, align 8, !tbaa !90
  %180 = add nsw i32 %179, %13
  store i32 %180, ptr %178, align 8, !tbaa !90
  br label %181

181:                                              ; preds = %165, %174
  %182 = sub nsw i32 %166, %15
  %183 = load i32, ptr %97, align 8, !tbaa !90
  %184 = sub i32 %182, %183
  %185 = load i32, ptr %107, align 4, !tbaa !74
  %186 = add nsw i32 %184, %185
  store i32 %186, ptr %107, align 4, !tbaa !74
  store i32 %182, ptr %97, align 8, !tbaa !90
  %187 = load ptr, ptr %111, align 8, !tbaa !84
  %188 = icmp eq ptr %187, null
  br i1 %188, label %274, label %189, !prof !116

189:                                              ; preds = %181
  %190 = add nsw i32 %15, %13
  br label %265

191:                                              ; preds = %104
  br i1 %116, label %192, label %231, !prof !118

192:                                              ; preds = %191
  %193 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 2
  %194 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 3
  %195 = load ptr, ptr %193, align 8, !tbaa !84
  %196 = getelementptr inbounds %struct.et_occ, ptr %17, i64 0, i32 3
  store ptr %195, ptr %196, align 8, !tbaa !83
  %197 = icmp eq ptr %195, null
  br i1 %197, label %200, label %198, !prof !119

198:                                              ; preds = %192
  %199 = getelementptr inbounds %struct.et_occ, ptr %195, i64 0, i32 1
  store ptr %17, ptr %199, align 8, !tbaa !87
  br label %200

200:                                              ; preds = %192, %198
  %201 = load ptr, ptr %194, align 8, !tbaa !83
  store ptr %201, ptr %114, align 8, !tbaa !84
  %202 = icmp eq ptr %201, null
  br i1 %202, label %205, label %203, !prof !120

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.et_occ, ptr %201, i64 0, i32 1
  store ptr %12, ptr %204, align 8, !tbaa !87
  br label %205

205:                                              ; preds = %200, %203
  store ptr %17, ptr %193, align 8, !tbaa !84
  store ptr %0, ptr %109, align 8, !tbaa !87
  store ptr %12, ptr %194, align 8, !tbaa !83
  store ptr %0, ptr %16, align 8, !tbaa !87
  %206 = sub nsw i32 0, %13
  %207 = load i32, ptr %14, align 8, !tbaa !90
  %208 = add i32 %207, %13
  %209 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 5
  %210 = load i32, ptr %209, align 4, !tbaa !74
  %211 = sub i32 %210, %208
  store i32 %211, ptr %209, align 4, !tbaa !74
  store i32 %206, ptr %14, align 8, !tbaa !90
  %212 = load ptr, ptr %114, align 8, !tbaa !84
  %213 = icmp eq ptr %212, null
  br i1 %213, label %221, label %214, !prof !120

214:                                              ; preds = %205
  %215 = getelementptr inbounds %struct.et_occ, ptr %212, i64 0, i32 5
  %216 = load i32, ptr %215, align 4, !tbaa !74
  %217 = add nsw i32 %216, %13
  store i32 %217, ptr %215, align 4, !tbaa !74
  %218 = getelementptr inbounds %struct.et_occ, ptr %212, i64 0, i32 4
  %219 = load i32, ptr %218, align 8, !tbaa !90
  %220 = add nsw i32 %219, %13
  store i32 %220, ptr %218, align 8, !tbaa !90
  br label %221

221:                                              ; preds = %205, %214
  %222 = sub nsw i32 %206, %15
  %223 = load i32, ptr %97, align 8, !tbaa !90
  %224 = sub i32 %222, %223
  %225 = load i32, ptr %107, align 4, !tbaa !74
  %226 = add nsw i32 %224, %225
  store i32 %226, ptr %107, align 4, !tbaa !74
  store i32 %222, ptr %97, align 8, !tbaa !90
  %227 = load ptr, ptr %196, align 8, !tbaa !83
  %228 = icmp eq ptr %227, null
  br i1 %228, label %274, label %229, !prof !119

229:                                              ; preds = %221
  %230 = add nsw i32 %15, %13
  br label %265

231:                                              ; preds = %191
  %232 = getelementptr inbounds %struct.et_occ, ptr %0, i64 0, i32 2
  %233 = getelementptr inbounds %struct.et_occ, ptr %17, i64 0, i32 3
  store ptr %115, ptr %233, align 8, !tbaa !83
  %234 = icmp eq ptr %115, null
  br i1 %234, label %237, label %235, !prof !121

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.et_occ, ptr %115, i64 0, i32 1
  store ptr %17, ptr %236, align 8, !tbaa !87
  br label %237

237:                                              ; preds = %231, %235
  %238 = load ptr, ptr %232, align 8, !tbaa !84
  %239 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 3
  store ptr %238, ptr %239, align 8, !tbaa !83
  %240 = icmp eq ptr %238, null
  br i1 %240, label %243, label %241, !prof !122

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.et_occ, ptr %238, i64 0, i32 1
  store ptr %12, ptr %242, align 8, !tbaa !87
  br label %243

243:                                              ; preds = %237, %241
  store ptr %12, ptr %232, align 8, !tbaa !84
  store ptr %0, ptr %16, align 8, !tbaa !87
  store ptr %17, ptr %114, align 8, !tbaa !84
  store ptr %12, ptr %109, align 8, !tbaa !87
  %244 = sub nsw i32 0, %13
  %245 = load i32, ptr %14, align 8, !tbaa !90
  %246 = add i32 %245, %13
  %247 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 5
  %248 = load i32, ptr %247, align 4, !tbaa !74
  %249 = sub i32 %248, %246
  store i32 %249, ptr %247, align 4, !tbaa !74
  store i32 %244, ptr %14, align 8, !tbaa !90
  br i1 %240, label %257, label %250, !prof !122

250:                                              ; preds = %243
  %251 = getelementptr inbounds %struct.et_occ, ptr %238, i64 0, i32 5
  %252 = load i32, ptr %251, align 4, !tbaa !74
  %253 = add nsw i32 %252, %13
  store i32 %253, ptr %251, align 4, !tbaa !74
  %254 = getelementptr inbounds %struct.et_occ, ptr %238, i64 0, i32 4
  %255 = load i32, ptr %254, align 8, !tbaa !90
  %256 = add nsw i32 %255, %13
  store i32 %256, ptr %254, align 8, !tbaa !90
  br label %257

257:                                              ; preds = %243, %250
  %258 = sub nsw i32 0, %15
  %259 = load i32, ptr %97, align 8, !tbaa !90
  %260 = add i32 %259, %15
  %261 = load i32, ptr %107, align 4, !tbaa !74
  %262 = sub i32 %261, %260
  store i32 %262, ptr %107, align 4, !tbaa !74
  store i32 %258, ptr %97, align 8, !tbaa !90
  %263 = load ptr, ptr %233, align 8, !tbaa !83
  %264 = icmp eq ptr %263, null
  br i1 %264, label %274, label %265, !prof !121

265:                                              ; preds = %257, %144, %189, %229
  %266 = phi ptr [ %187, %189 ], [ %227, %229 ], [ %150, %144 ], [ %263, %257 ]
  %267 = phi i32 [ %190, %189 ], [ %230, %229 ], [ %15, %144 ], [ %15, %257 ]
  %268 = getelementptr inbounds %struct.et_occ, ptr %266, i64 0, i32 5
  %269 = load i32, ptr %268, align 4, !tbaa !74
  %270 = add nsw i32 %269, %267
  store i32 %270, ptr %268, align 4, !tbaa !74
  %271 = getelementptr inbounds %struct.et_occ, ptr %266, i64 0, i32 4
  %272 = load i32, ptr %271, align 8, !tbaa !90
  %273 = add nsw i32 %272, %267
  store i32 %273, ptr %271, align 8, !tbaa !90
  br label %274

274:                                              ; preds = %265, %257, %221, %181, %144
  store ptr %110, ptr %2, align 8, !tbaa !87
  %275 = icmp eq ptr %110, null
  br i1 %275, label %282, label %276, !prof !123

276:                                              ; preds = %274
  %277 = getelementptr inbounds %struct.et_occ, ptr %110, i64 0, i32 2
  %278 = load ptr, ptr %277, align 8, !tbaa !84
  %279 = icmp eq ptr %278, %17
  %280 = getelementptr inbounds %struct.et_occ, ptr %110, i64 0, i32 3
  %281 = select i1 %279, ptr %277, ptr %280, !prof !124
  store ptr %0, ptr %281, align 8, !tbaa !47
  br label %282

282:                                              ; preds = %276, %274
  %283 = load ptr, ptr %111, align 8, !tbaa !84
  %284 = icmp eq ptr %283, null
  br i1 %284, label %295, label %285, !prof !125

285:                                              ; preds = %282
  %286 = getelementptr inbounds %struct.et_occ, ptr %17, i64 0, i32 3
  %287 = load ptr, ptr %286, align 8, !tbaa !83
  %288 = icmp eq ptr %287, null
  br i1 %288, label %298, label %289, !prof !126

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.et_occ, ptr %283, i64 0, i32 5
  %291 = load i32, ptr %290, align 4, !tbaa !74
  %292 = getelementptr inbounds %struct.et_occ, ptr %287, i64 0, i32 5
  %293 = load i32, ptr %292, align 4, !tbaa !74
  %294 = icmp sgt i32 %291, %293
  br i1 %294, label %295, label %298, !prof !127

295:                                              ; preds = %289, %282
  %296 = getelementptr inbounds %struct.et_occ, ptr %17, i64 0, i32 3
  %297 = load ptr, ptr %296, align 8, !tbaa !83
  br label %298

298:                                              ; preds = %295, %289, %285
  %299 = phi ptr [ %297, %295 ], [ %283, %289 ], [ %283, %285 ]
  %300 = icmp eq ptr %299, null
  br i1 %300, label %310, label %301, !prof !128

301:                                              ; preds = %298
  %302 = getelementptr inbounds %struct.et_occ, ptr %299, i64 0, i32 5
  %303 = load i32, ptr %302, align 4, !tbaa !74
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %305, label %310, !prof !129

305:                                              ; preds = %301
  %306 = load i32, ptr %97, align 8, !tbaa !90
  %307 = add nsw i32 %306, %303
  store i32 %307, ptr %107, align 4, !tbaa !74
  %308 = getelementptr inbounds %struct.et_occ, ptr %299, i64 0, i32 6
  %309 = load ptr, ptr %308, align 8, !tbaa !73
  br label %312

310:                                              ; preds = %301, %298
  %311 = load i32, ptr %97, align 8, !tbaa !90
  store i32 %311, ptr %107, align 4, !tbaa !74
  br label %312

312:                                              ; preds = %305, %310
  %313 = phi ptr [ %309, %305 ], [ %17, %310 ]
  store ptr %313, ptr %105, align 8, !tbaa !73
  %314 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 2
  %315 = load ptr, ptr %314, align 8, !tbaa !84
  %316 = icmp eq ptr %315, null
  br i1 %316, label %327, label %317, !prof !130

317:                                              ; preds = %312
  %318 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 3
  %319 = load ptr, ptr %318, align 8, !tbaa !83
  %320 = icmp eq ptr %319, null
  br i1 %320, label %330, label %321, !prof !131

321:                                              ; preds = %317
  %322 = getelementptr inbounds %struct.et_occ, ptr %315, i64 0, i32 5
  %323 = load i32, ptr %322, align 4, !tbaa !74
  %324 = getelementptr inbounds %struct.et_occ, ptr %319, i64 0, i32 5
  %325 = load i32, ptr %324, align 4, !tbaa !74
  %326 = icmp sgt i32 %323, %325
  br i1 %326, label %327, label %330, !prof !132

327:                                              ; preds = %321, %312
  %328 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 3
  %329 = load ptr, ptr %328, align 8, !tbaa !83
  br label %330

330:                                              ; preds = %327, %321, %317
  %331 = phi ptr [ %329, %327 ], [ %315, %321 ], [ %315, %317 ]
  %332 = icmp eq ptr %331, null
  br i1 %332, label %343, label %333, !prof !133

333:                                              ; preds = %330
  %334 = getelementptr inbounds %struct.et_occ, ptr %331, i64 0, i32 5
  %335 = load i32, ptr %334, align 4, !tbaa !74
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %337, label %343, !prof !134

337:                                              ; preds = %333
  %338 = load i32, ptr %14, align 8, !tbaa !90
  %339 = add nsw i32 %338, %335
  %340 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 5
  store i32 %339, ptr %340, align 4, !tbaa !74
  %341 = getelementptr inbounds %struct.et_occ, ptr %331, i64 0, i32 6
  %342 = load ptr, ptr %341, align 8, !tbaa !73
  br label %346

343:                                              ; preds = %333, %330
  %344 = load i32, ptr %14, align 8, !tbaa !90
  %345 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 5
  store i32 %344, ptr %345, align 4, !tbaa !74
  br label %346

346:                                              ; preds = %337, %343
  %347 = phi ptr [ %342, %337 ], [ %12, %343 ]
  %348 = getelementptr inbounds %struct.et_occ, ptr %12, i64 0, i32 6
  store ptr %347, ptr %348, align 8, !tbaa !73
  %349 = load ptr, ptr %2, align 8, !tbaa !87
  %350 = icmp eq ptr %349, null
  br i1 %350, label %353, label %11, !prof !135, !llvm.loop !136

351:                                              ; preds = %91, %95
  %352 = phi ptr [ %12, %95 ], [ %94, %91 ]
  store ptr %352, ptr %27, align 8, !tbaa !73
  br label %353

353:                                              ; preds = %346, %351, %1
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @et_nca(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #10 !prof !144 {
  %3 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.et_node, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp eq ptr %0, %1
  br i1 %7, label %744, label %8, !prof !145

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !87
  %11 = icmp eq ptr %10, null
  br i1 %11, label %347, label %12, !prof !100

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 4
  %14 = icmp eq ptr %4, null
  %15 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 5
  %16 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 6
  %17 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 2
  %18 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 3
  br label %19

19:                                               ; preds = %342, %12
  %20 = phi ptr [ %10, %12 ], [ %113, %342 ]
  %21 = load i32, ptr %13, align 8, !tbaa !90
  %22 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !90
  %24 = sub i32 0, %23
  %25 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !87
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %99, !prof !101

28:                                               ; preds = %19
  %29 = sub i32 0, %21
  br i1 %14, label %34, label %30, !prof !102

30:                                               ; preds = %28
  %31 = load i32, ptr %15, align 4, !tbaa !74
  %32 = add nsw i32 %31, %23
  store i32 %32, ptr %15, align 4, !tbaa !74
  %33 = add nsw i32 %23, %21
  store i32 %33, ptr %13, align 8, !tbaa !90
  br label %34

34:                                               ; preds = %30, %28
  %35 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !73
  store ptr %36, ptr %16, align 8, !tbaa !73
  %37 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 5
  %38 = load i32, ptr %37, align 4, !tbaa !74
  store i32 %38, ptr %15, align 4, !tbaa !74
  %39 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !84
  %41 = icmp eq ptr %40, %4
  br i1 %41, label %42, label %53, !prof !103

42:                                               ; preds = %34
  %43 = load ptr, ptr %18, align 8, !tbaa !83
  store ptr %43, ptr %39, align 8, !tbaa !84
  %44 = icmp eq ptr %43, null
  br i1 %44, label %65, label %45, !prof !104

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.et_occ, ptr %43, i64 0, i32 1
  store ptr %20, ptr %46, align 8, !tbaa !87
  store ptr %20, ptr %18, align 8, !tbaa !83
  store ptr %4, ptr %25, align 8, !tbaa !87
  %47 = getelementptr inbounds %struct.et_occ, ptr %43, i64 0, i32 5
  %48 = load i32, ptr %47, align 4, !tbaa !74
  %49 = add nsw i32 %48, %21
  store i32 %49, ptr %47, align 4, !tbaa !74
  %50 = getelementptr inbounds %struct.et_occ, ptr %43, i64 0, i32 4
  %51 = load i32, ptr %50, align 8, !tbaa !90
  %52 = add nsw i32 %51, %21
  store i32 %52, ptr %50, align 8, !tbaa !90
  br label %67

53:                                               ; preds = %34
  %54 = load ptr, ptr %17, align 8, !tbaa !84
  %55 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 3
  store ptr %54, ptr %55, align 8, !tbaa !83
  %56 = icmp eq ptr %54, null
  br i1 %56, label %66, label %57, !prof !105

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.et_occ, ptr %54, i64 0, i32 1
  store ptr %20, ptr %58, align 8, !tbaa !87
  store ptr %20, ptr %17, align 8, !tbaa !84
  store ptr %4, ptr %25, align 8, !tbaa !87
  %59 = getelementptr inbounds %struct.et_occ, ptr %54, i64 0, i32 5
  %60 = load i32, ptr %59, align 4, !tbaa !74
  %61 = add nsw i32 %60, %21
  store i32 %61, ptr %59, align 4, !tbaa !74
  %62 = getelementptr inbounds %struct.et_occ, ptr %54, i64 0, i32 4
  %63 = load i32, ptr %62, align 8, !tbaa !90
  %64 = add nsw i32 %63, %21
  store i32 %64, ptr %62, align 8, !tbaa !90
  br label %67

65:                                               ; preds = %42
  store ptr %20, ptr %18, align 8, !tbaa !83
  store ptr %4, ptr %25, align 8, !tbaa !87
  br label %67

66:                                               ; preds = %53
  store ptr %20, ptr %17, align 8, !tbaa !84
  store ptr %4, ptr %25, align 8, !tbaa !87
  br label %67

67:                                               ; preds = %66, %65, %57, %45
  %68 = load i32, ptr %22, align 8, !tbaa !90
  %69 = load i32, ptr %37, align 4, !tbaa !74
  %70 = add i32 %68, %21
  %71 = sub i32 %69, %70
  store i32 %71, ptr %37, align 4, !tbaa !74
  store i32 %29, ptr %22, align 8, !tbaa !90
  store ptr null, ptr %9, align 8, !tbaa !87
  %72 = load ptr, ptr %39, align 8, !tbaa !84
  %73 = icmp eq ptr %72, null
  br i1 %73, label %84, label %74, !prof !106

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !83
  %77 = icmp eq ptr %76, null
  br i1 %77, label %87, label %78, !prof !107

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.et_occ, ptr %72, i64 0, i32 5
  %80 = load i32, ptr %79, align 4, !tbaa !74
  %81 = getelementptr inbounds %struct.et_occ, ptr %76, i64 0, i32 5
  %82 = load i32, ptr %81, align 4, !tbaa !74
  %83 = icmp sgt i32 %80, %82
  br i1 %83, label %84, label %87, !prof !108

84:                                               ; preds = %78, %67
  %85 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !83
  br label %87

87:                                               ; preds = %84, %78, %74
  %88 = phi ptr [ %86, %84 ], [ %72, %78 ], [ %72, %74 ]
  %89 = icmp eq ptr %88, null
  br i1 %89, label %98, label %90, !prof !109

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.et_occ, ptr %88, i64 0, i32 5
  %92 = load i32, ptr %91, align 4, !tbaa !74
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %98, !prof !110

94:                                               ; preds = %90
  %95 = sub i32 %92, %21
  store i32 %95, ptr %37, align 4, !tbaa !74
  %96 = getelementptr inbounds %struct.et_occ, ptr %88, i64 0, i32 6
  %97 = load ptr, ptr %96, align 8, !tbaa !73
  br label %345

98:                                               ; preds = %90, %87
  store i32 %29, ptr %37, align 4, !tbaa !74
  br label %345

99:                                               ; preds = %19
  %100 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 4
  br i1 %14, label %107, label %101, !prof !111

101:                                              ; preds = %99
  %102 = load i32, ptr %100, align 8, !tbaa !90
  %103 = add nsw i32 %102, %23
  %104 = load i32, ptr %15, align 4, !tbaa !74
  %105 = add nsw i32 %104, %103
  store i32 %105, ptr %15, align 4, !tbaa !74
  %106 = add nsw i32 %103, %21
  store i32 %106, ptr %13, align 8, !tbaa !90
  br label %107

107:                                              ; preds = %101, %99
  %108 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !73
  store ptr %109, ptr %16, align 8, !tbaa !73
  %110 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 5
  %111 = load i32, ptr %110, align 4, !tbaa !74
  store i32 %111, ptr %15, align 4, !tbaa !74
  %112 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !87
  %114 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !84
  %116 = icmp eq ptr %115, %20
  %117 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !84
  %119 = icmp eq ptr %118, %4
  br i1 %116, label %120, label %190, !prof !112

120:                                              ; preds = %107
  br i1 %119, label %121, label %153, !prof !113

121:                                              ; preds = %120
  %122 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !83
  store ptr %123, ptr %114, align 8, !tbaa !84
  %124 = icmp eq ptr %123, null
  br i1 %124, label %127, label %125, !prof !114

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.et_occ, ptr %123, i64 0, i32 1
  store ptr %26, ptr %126, align 8, !tbaa !87
  br label %127

127:                                              ; preds = %125, %121
  %128 = load ptr, ptr %18, align 8, !tbaa !83
  store ptr %128, ptr %117, align 8, !tbaa !84
  %129 = icmp eq ptr %128, null
  br i1 %129, label %132, label %130, !prof !115

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.et_occ, ptr %128, i64 0, i32 1
  store ptr %20, ptr %131, align 8, !tbaa !87
  br label %132

132:                                              ; preds = %130, %127
  store ptr %20, ptr %18, align 8, !tbaa !83
  store ptr %4, ptr %25, align 8, !tbaa !87
  store ptr %26, ptr %122, align 8, !tbaa !83
  store ptr %20, ptr %112, align 8, !tbaa !87
  %133 = sub nsw i32 0, %21
  %134 = load i32, ptr %22, align 8, !tbaa !90
  %135 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 5
  %136 = load i32, ptr %135, align 4, !tbaa !74
  %137 = add i32 %134, %21
  %138 = sub i32 %136, %137
  store i32 %138, ptr %135, align 4, !tbaa !74
  store i32 %133, ptr %22, align 8, !tbaa !90
  br i1 %129, label %146, label %139, !prof !115

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.et_occ, ptr %128, i64 0, i32 5
  %141 = load i32, ptr %140, align 4, !tbaa !74
  %142 = add nsw i32 %141, %21
  store i32 %142, ptr %140, align 4, !tbaa !74
  %143 = getelementptr inbounds %struct.et_occ, ptr %128, i64 0, i32 4
  %144 = load i32, ptr %143, align 8, !tbaa !90
  %145 = add nsw i32 %144, %21
  store i32 %145, ptr %143, align 8, !tbaa !90
  br label %146

146:                                              ; preds = %139, %132
  %147 = load i32, ptr %100, align 8, !tbaa !90
  %148 = load i32, ptr %110, align 4, !tbaa !74
  %149 = add i32 %147, %23
  %150 = sub i32 %148, %149
  store i32 %150, ptr %110, align 4, !tbaa !74
  store i32 %24, ptr %100, align 8, !tbaa !90
  %151 = load ptr, ptr %114, align 8, !tbaa !84
  %152 = icmp eq ptr %151, null
  br i1 %152, label %270, label %261, !prof !114

153:                                              ; preds = %120
  %154 = load ptr, ptr %18, align 8, !tbaa !83
  store ptr %154, ptr %114, align 8, !tbaa !84
  %155 = icmp eq ptr %154, null
  br i1 %155, label %158, label %156, !prof !116

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.et_occ, ptr %154, i64 0, i32 1
  store ptr %26, ptr %157, align 8, !tbaa !87
  br label %158

158:                                              ; preds = %156, %153
  %159 = load ptr, ptr %17, align 8, !tbaa !84
  %160 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 3
  store ptr %159, ptr %160, align 8, !tbaa !83
  %161 = icmp eq ptr %159, null
  br i1 %161, label %164, label %162, !prof !117

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.et_occ, ptr %159, i64 0, i32 1
  store ptr %20, ptr %163, align 8, !tbaa !87
  br label %164

164:                                              ; preds = %162, %158
  store ptr %20, ptr %17, align 8, !tbaa !84
  store ptr %4, ptr %25, align 8, !tbaa !87
  store ptr %26, ptr %18, align 8, !tbaa !83
  store ptr %4, ptr %112, align 8, !tbaa !87
  %165 = sub nsw i32 0, %21
  %166 = load i32, ptr %22, align 8, !tbaa !90
  %167 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 5
  %168 = load i32, ptr %167, align 4, !tbaa !74
  %169 = add i32 %166, %21
  %170 = sub i32 %168, %169
  store i32 %170, ptr %167, align 4, !tbaa !74
  store i32 %165, ptr %22, align 8, !tbaa !90
  %171 = load ptr, ptr %160, align 8, !tbaa !83
  %172 = icmp eq ptr %171, null
  br i1 %172, label %180, label %173, !prof !117

173:                                              ; preds = %164
  %174 = getelementptr inbounds %struct.et_occ, ptr %171, i64 0, i32 5
  %175 = load i32, ptr %174, align 4, !tbaa !74
  %176 = add nsw i32 %175, %21
  store i32 %176, ptr %174, align 4, !tbaa !74
  %177 = getelementptr inbounds %struct.et_occ, ptr %171, i64 0, i32 4
  %178 = load i32, ptr %177, align 8, !tbaa !90
  %179 = add nsw i32 %178, %21
  store i32 %179, ptr %177, align 8, !tbaa !90
  br label %180

180:                                              ; preds = %173, %164
  %181 = sub nsw i32 %165, %23
  %182 = load i32, ptr %100, align 8, !tbaa !90
  %183 = sub i32 %181, %182
  %184 = load i32, ptr %110, align 4, !tbaa !74
  %185 = add nsw i32 %183, %184
  store i32 %185, ptr %110, align 4, !tbaa !74
  store i32 %181, ptr %100, align 8, !tbaa !90
  %186 = load ptr, ptr %114, align 8, !tbaa !84
  %187 = icmp eq ptr %186, null
  br i1 %187, label %270, label %188, !prof !116

188:                                              ; preds = %180
  %189 = add nsw i32 %23, %21
  br label %261

190:                                              ; preds = %107
  br i1 %119, label %191, label %228, !prof !118

191:                                              ; preds = %190
  %192 = load ptr, ptr %17, align 8, !tbaa !84
  %193 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 3
  store ptr %192, ptr %193, align 8, !tbaa !83
  %194 = icmp eq ptr %192, null
  br i1 %194, label %197, label %195, !prof !119

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.et_occ, ptr %192, i64 0, i32 1
  store ptr %26, ptr %196, align 8, !tbaa !87
  br label %197

197:                                              ; preds = %195, %191
  %198 = load ptr, ptr %18, align 8, !tbaa !83
  store ptr %198, ptr %117, align 8, !tbaa !84
  %199 = icmp eq ptr %198, null
  br i1 %199, label %202, label %200, !prof !120

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.et_occ, ptr %198, i64 0, i32 1
  store ptr %20, ptr %201, align 8, !tbaa !87
  br label %202

202:                                              ; preds = %200, %197
  store ptr %26, ptr %17, align 8, !tbaa !84
  store ptr %4, ptr %112, align 8, !tbaa !87
  store ptr %20, ptr %18, align 8, !tbaa !83
  store ptr %4, ptr %25, align 8, !tbaa !87
  %203 = sub nsw i32 0, %21
  %204 = load i32, ptr %22, align 8, !tbaa !90
  %205 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 5
  %206 = load i32, ptr %205, align 4, !tbaa !74
  %207 = add i32 %204, %21
  %208 = sub i32 %206, %207
  store i32 %208, ptr %205, align 4, !tbaa !74
  store i32 %203, ptr %22, align 8, !tbaa !90
  %209 = load ptr, ptr %117, align 8, !tbaa !84
  %210 = icmp eq ptr %209, null
  br i1 %210, label %218, label %211, !prof !120

211:                                              ; preds = %202
  %212 = getelementptr inbounds %struct.et_occ, ptr %209, i64 0, i32 5
  %213 = load i32, ptr %212, align 4, !tbaa !74
  %214 = add nsw i32 %213, %21
  store i32 %214, ptr %212, align 4, !tbaa !74
  %215 = getelementptr inbounds %struct.et_occ, ptr %209, i64 0, i32 4
  %216 = load i32, ptr %215, align 8, !tbaa !90
  %217 = add nsw i32 %216, %21
  store i32 %217, ptr %215, align 8, !tbaa !90
  br label %218

218:                                              ; preds = %211, %202
  %219 = sub nsw i32 %203, %23
  %220 = load i32, ptr %100, align 8, !tbaa !90
  %221 = sub i32 %219, %220
  %222 = load i32, ptr %110, align 4, !tbaa !74
  %223 = add nsw i32 %221, %222
  store i32 %223, ptr %110, align 4, !tbaa !74
  store i32 %219, ptr %100, align 8, !tbaa !90
  %224 = load ptr, ptr %193, align 8, !tbaa !83
  %225 = icmp eq ptr %224, null
  br i1 %225, label %270, label %226, !prof !119

226:                                              ; preds = %218
  %227 = add nsw i32 %23, %21
  br label %261

228:                                              ; preds = %190
  %229 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 3
  store ptr %118, ptr %229, align 8, !tbaa !83
  %230 = icmp eq ptr %118, null
  br i1 %230, label %233, label %231, !prof !121

231:                                              ; preds = %228
  %232 = getelementptr inbounds %struct.et_occ, ptr %118, i64 0, i32 1
  store ptr %26, ptr %232, align 8, !tbaa !87
  br label %233

233:                                              ; preds = %231, %228
  %234 = load ptr, ptr %17, align 8, !tbaa !84
  %235 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 3
  store ptr %234, ptr %235, align 8, !tbaa !83
  %236 = icmp eq ptr %234, null
  br i1 %236, label %239, label %237, !prof !122

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.et_occ, ptr %234, i64 0, i32 1
  store ptr %20, ptr %238, align 8, !tbaa !87
  br label %239

239:                                              ; preds = %237, %233
  store ptr %20, ptr %17, align 8, !tbaa !84
  store ptr %4, ptr %25, align 8, !tbaa !87
  store ptr %26, ptr %117, align 8, !tbaa !84
  store ptr %20, ptr %112, align 8, !tbaa !87
  %240 = sub nsw i32 0, %21
  %241 = load i32, ptr %22, align 8, !tbaa !90
  %242 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 5
  %243 = load i32, ptr %242, align 4, !tbaa !74
  %244 = add i32 %241, %21
  %245 = sub i32 %243, %244
  store i32 %245, ptr %242, align 4, !tbaa !74
  store i32 %240, ptr %22, align 8, !tbaa !90
  br i1 %236, label %253, label %246, !prof !122

246:                                              ; preds = %239
  %247 = getelementptr inbounds %struct.et_occ, ptr %234, i64 0, i32 5
  %248 = load i32, ptr %247, align 4, !tbaa !74
  %249 = add nsw i32 %248, %21
  store i32 %249, ptr %247, align 4, !tbaa !74
  %250 = getelementptr inbounds %struct.et_occ, ptr %234, i64 0, i32 4
  %251 = load i32, ptr %250, align 8, !tbaa !90
  %252 = add nsw i32 %251, %21
  store i32 %252, ptr %250, align 8, !tbaa !90
  br label %253

253:                                              ; preds = %246, %239
  %254 = sub nsw i32 0, %23
  %255 = load i32, ptr %100, align 8, !tbaa !90
  %256 = load i32, ptr %110, align 4, !tbaa !74
  %257 = add i32 %255, %23
  %258 = sub i32 %256, %257
  store i32 %258, ptr %110, align 4, !tbaa !74
  store i32 %254, ptr %100, align 8, !tbaa !90
  %259 = load ptr, ptr %229, align 8, !tbaa !83
  %260 = icmp eq ptr %259, null
  br i1 %260, label %270, label %261, !prof !121

261:                                              ; preds = %253, %146, %188, %226
  %262 = phi ptr [ %186, %188 ], [ %224, %226 ], [ %151, %146 ], [ %259, %253 ]
  %263 = phi i32 [ %189, %188 ], [ %227, %226 ], [ %23, %146 ], [ %23, %253 ]
  %264 = getelementptr inbounds %struct.et_occ, ptr %262, i64 0, i32 5
  %265 = load i32, ptr %264, align 4, !tbaa !74
  %266 = add nsw i32 %265, %263
  store i32 %266, ptr %264, align 4, !tbaa !74
  %267 = getelementptr inbounds %struct.et_occ, ptr %262, i64 0, i32 4
  %268 = load i32, ptr %267, align 8, !tbaa !90
  %269 = add nsw i32 %268, %263
  store i32 %269, ptr %267, align 8, !tbaa !90
  br label %270

270:                                              ; preds = %261, %253, %218, %180, %146
  store ptr %113, ptr %9, align 8, !tbaa !87
  %271 = icmp eq ptr %113, null
  br i1 %271, label %278, label %272, !prof !123

272:                                              ; preds = %270
  %273 = getelementptr inbounds %struct.et_occ, ptr %113, i64 0, i32 2
  %274 = load ptr, ptr %273, align 8, !tbaa !84
  %275 = icmp eq ptr %274, %26
  %276 = getelementptr inbounds %struct.et_occ, ptr %113, i64 0, i32 3
  %277 = select i1 %275, ptr %273, ptr %276, !prof !124
  store ptr %4, ptr %277, align 8, !tbaa !47
  br label %278

278:                                              ; preds = %272, %270
  %279 = load ptr, ptr %114, align 8, !tbaa !84
  %280 = icmp eq ptr %279, null
  br i1 %280, label %291, label %281, !prof !125

281:                                              ; preds = %278
  %282 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 3
  %283 = load ptr, ptr %282, align 8, !tbaa !83
  %284 = icmp eq ptr %283, null
  br i1 %284, label %294, label %285, !prof !126

285:                                              ; preds = %281
  %286 = getelementptr inbounds %struct.et_occ, ptr %279, i64 0, i32 5
  %287 = load i32, ptr %286, align 4, !tbaa !74
  %288 = getelementptr inbounds %struct.et_occ, ptr %283, i64 0, i32 5
  %289 = load i32, ptr %288, align 4, !tbaa !74
  %290 = icmp sgt i32 %287, %289
  br i1 %290, label %291, label %294, !prof !127

291:                                              ; preds = %285, %278
  %292 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 3
  %293 = load ptr, ptr %292, align 8, !tbaa !83
  br label %294

294:                                              ; preds = %291, %285, %281
  %295 = phi ptr [ %293, %291 ], [ %279, %285 ], [ %279, %281 ]
  %296 = icmp eq ptr %295, null
  br i1 %296, label %306, label %297, !prof !128

297:                                              ; preds = %294
  %298 = getelementptr inbounds %struct.et_occ, ptr %295, i64 0, i32 5
  %299 = load i32, ptr %298, align 4, !tbaa !74
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %301, label %306, !prof !129

301:                                              ; preds = %297
  %302 = load i32, ptr %100, align 8, !tbaa !90
  %303 = add nsw i32 %302, %299
  store i32 %303, ptr %110, align 4, !tbaa !74
  %304 = getelementptr inbounds %struct.et_occ, ptr %295, i64 0, i32 6
  %305 = load ptr, ptr %304, align 8, !tbaa !73
  br label %308

306:                                              ; preds = %297, %294
  %307 = load i32, ptr %100, align 8, !tbaa !90
  store i32 %307, ptr %110, align 4, !tbaa !74
  br label %308

308:                                              ; preds = %306, %301
  %309 = phi ptr [ %305, %301 ], [ %26, %306 ]
  store ptr %309, ptr %108, align 8, !tbaa !73
  %310 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 2
  %311 = load ptr, ptr %310, align 8, !tbaa !84
  %312 = icmp eq ptr %311, null
  br i1 %312, label %323, label %313, !prof !130

313:                                              ; preds = %308
  %314 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 3
  %315 = load ptr, ptr %314, align 8, !tbaa !83
  %316 = icmp eq ptr %315, null
  br i1 %316, label %326, label %317, !prof !131

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.et_occ, ptr %311, i64 0, i32 5
  %319 = load i32, ptr %318, align 4, !tbaa !74
  %320 = getelementptr inbounds %struct.et_occ, ptr %315, i64 0, i32 5
  %321 = load i32, ptr %320, align 4, !tbaa !74
  %322 = icmp sgt i32 %319, %321
  br i1 %322, label %323, label %326, !prof !132

323:                                              ; preds = %317, %308
  %324 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 3
  %325 = load ptr, ptr %324, align 8, !tbaa !83
  br label %326

326:                                              ; preds = %323, %317, %313
  %327 = phi ptr [ %325, %323 ], [ %311, %317 ], [ %311, %313 ]
  %328 = icmp eq ptr %327, null
  br i1 %328, label %339, label %329, !prof !133

329:                                              ; preds = %326
  %330 = getelementptr inbounds %struct.et_occ, ptr %327, i64 0, i32 5
  %331 = load i32, ptr %330, align 4, !tbaa !74
  %332 = icmp slt i32 %331, 0
  br i1 %332, label %333, label %339, !prof !134

333:                                              ; preds = %329
  %334 = load i32, ptr %22, align 8, !tbaa !90
  %335 = add nsw i32 %334, %331
  %336 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 5
  store i32 %335, ptr %336, align 4, !tbaa !74
  %337 = getelementptr inbounds %struct.et_occ, ptr %327, i64 0, i32 6
  %338 = load ptr, ptr %337, align 8, !tbaa !73
  br label %342

339:                                              ; preds = %329, %326
  %340 = load i32, ptr %22, align 8, !tbaa !90
  %341 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 5
  store i32 %340, ptr %341, align 4, !tbaa !74
  br label %342

342:                                              ; preds = %339, %333
  %343 = phi ptr [ %20, %339 ], [ %338, %333 ]
  %344 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 6
  store ptr %343, ptr %344, align 8, !tbaa !73
  br i1 %271, label %347, label %19, !prof !135, !llvm.loop !136

345:                                              ; preds = %98, %94
  %346 = phi ptr [ %97, %94 ], [ %20, %98 ]
  store ptr %346, ptr %35, align 8, !tbaa !73
  br label %347

347:                                              ; preds = %342, %345, %8
  %348 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 2
  %349 = load ptr, ptr %348, align 8, !tbaa !84
  %350 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 3
  %351 = load ptr, ptr %350, align 8, !tbaa !83
  %352 = icmp eq ptr %349, null
  br i1 %352, label %355, label %353, !prof !146

353:                                              ; preds = %347
  %354 = getelementptr inbounds %struct.et_occ, ptr %349, i64 0, i32 1
  store ptr null, ptr %354, align 8, !tbaa !87
  br label %355

355:                                              ; preds = %353, %347
  %356 = icmp eq ptr %351, null
  br i1 %356, label %359, label %357, !prof !147

357:                                              ; preds = %355
  %358 = getelementptr inbounds %struct.et_occ, ptr %351, i64 0, i32 1
  store ptr null, ptr %358, align 8, !tbaa !87
  br label %359

359:                                              ; preds = %357, %355
  %360 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 1
  %361 = load ptr, ptr %360, align 8, !tbaa !87
  %362 = icmp eq ptr %361, null
  br i1 %362, label %698, label %363, !prof !100

363:                                              ; preds = %359
  %364 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 4
  %365 = icmp eq ptr %6, null
  %366 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 5
  %367 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 6
  %368 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 2
  %369 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 3
  br label %370

370:                                              ; preds = %693, %363
  %371 = phi ptr [ %361, %363 ], [ %464, %693 ]
  %372 = load i32, ptr %364, align 8, !tbaa !90
  %373 = getelementptr inbounds %struct.et_occ, ptr %371, i64 0, i32 4
  %374 = load i32, ptr %373, align 8, !tbaa !90
  %375 = sub i32 0, %374
  %376 = getelementptr inbounds %struct.et_occ, ptr %371, i64 0, i32 1
  %377 = load ptr, ptr %376, align 8, !tbaa !87
  %378 = icmp eq ptr %377, null
  br i1 %378, label %379, label %450, !prof !101

379:                                              ; preds = %370
  %380 = sub i32 0, %372
  br i1 %365, label %385, label %381, !prof !102

381:                                              ; preds = %379
  %382 = load i32, ptr %366, align 4, !tbaa !74
  %383 = add nsw i32 %382, %374
  store i32 %383, ptr %366, align 4, !tbaa !74
  %384 = add nsw i32 %374, %372
  store i32 %384, ptr %364, align 8, !tbaa !90
  br label %385

385:                                              ; preds = %381, %379
  %386 = getelementptr inbounds %struct.et_occ, ptr %371, i64 0, i32 6
  %387 = load ptr, ptr %386, align 8, !tbaa !73
  store ptr %387, ptr %367, align 8, !tbaa !73
  %388 = getelementptr inbounds %struct.et_occ, ptr %371, i64 0, i32 5
  %389 = load i32, ptr %388, align 4, !tbaa !74
  store i32 %389, ptr %366, align 4, !tbaa !74
  %390 = getelementptr inbounds %struct.et_occ, ptr %371, i64 0, i32 2
  %391 = load ptr, ptr %390, align 8, !tbaa !84
  %392 = icmp eq ptr %391, %6
  br i1 %392, label %393, label %404, !prof !103

393:                                              ; preds = %385
  %394 = load ptr, ptr %369, align 8, !tbaa !83
  store ptr %394, ptr %390, align 8, !tbaa !84
  %395 = icmp eq ptr %394, null
  br i1 %395, label %416, label %396, !prof !104

396:                                              ; preds = %393
  %397 = getelementptr inbounds %struct.et_occ, ptr %394, i64 0, i32 1
  store ptr %371, ptr %397, align 8, !tbaa !87
  store ptr %371, ptr %369, align 8, !tbaa !83
  store ptr %6, ptr %376, align 8, !tbaa !87
  %398 = getelementptr inbounds %struct.et_occ, ptr %394, i64 0, i32 5
  %399 = load i32, ptr %398, align 4, !tbaa !74
  %400 = add nsw i32 %399, %372
  store i32 %400, ptr %398, align 4, !tbaa !74
  %401 = getelementptr inbounds %struct.et_occ, ptr %394, i64 0, i32 4
  %402 = load i32, ptr %401, align 8, !tbaa !90
  %403 = add nsw i32 %402, %372
  store i32 %403, ptr %401, align 8, !tbaa !90
  br label %418

404:                                              ; preds = %385
  %405 = load ptr, ptr %368, align 8, !tbaa !84
  %406 = getelementptr inbounds %struct.et_occ, ptr %371, i64 0, i32 3
  store ptr %405, ptr %406, align 8, !tbaa !83
  %407 = icmp eq ptr %405, null
  br i1 %407, label %417, label %408, !prof !105

408:                                              ; preds = %404
  %409 = getelementptr inbounds %struct.et_occ, ptr %405, i64 0, i32 1
  store ptr %371, ptr %409, align 8, !tbaa !87
  store ptr %371, ptr %368, align 8, !tbaa !84
  store ptr %6, ptr %376, align 8, !tbaa !87
  %410 = getelementptr inbounds %struct.et_occ, ptr %405, i64 0, i32 5
  %411 = load i32, ptr %410, align 4, !tbaa !74
  %412 = add nsw i32 %411, %372
  store i32 %412, ptr %410, align 4, !tbaa !74
  %413 = getelementptr inbounds %struct.et_occ, ptr %405, i64 0, i32 4
  %414 = load i32, ptr %413, align 8, !tbaa !90
  %415 = add nsw i32 %414, %372
  store i32 %415, ptr %413, align 8, !tbaa !90
  br label %418

416:                                              ; preds = %393
  store ptr %371, ptr %369, align 8, !tbaa !83
  store ptr %6, ptr %376, align 8, !tbaa !87
  br label %418

417:                                              ; preds = %404
  store ptr %371, ptr %368, align 8, !tbaa !84
  store ptr %6, ptr %376, align 8, !tbaa !87
  br label %418

418:                                              ; preds = %417, %416, %408, %396
  %419 = load i32, ptr %373, align 8, !tbaa !90
  %420 = load i32, ptr %388, align 4, !tbaa !74
  %421 = add i32 %419, %372
  %422 = sub i32 %420, %421
  store i32 %422, ptr %388, align 4, !tbaa !74
  store i32 %380, ptr %373, align 8, !tbaa !90
  store ptr null, ptr %360, align 8, !tbaa !87
  %423 = load ptr, ptr %390, align 8, !tbaa !84
  %424 = icmp eq ptr %423, null
  br i1 %424, label %435, label %425, !prof !106

425:                                              ; preds = %418
  %426 = getelementptr inbounds %struct.et_occ, ptr %371, i64 0, i32 3
  %427 = load ptr, ptr %426, align 8, !tbaa !83
  %428 = icmp eq ptr %427, null
  br i1 %428, label %438, label %429, !prof !107

429:                                              ; preds = %425
  %430 = getelementptr inbounds %struct.et_occ, ptr %423, i64 0, i32 5
  %431 = load i32, ptr %430, align 4, !tbaa !74
  %432 = getelementptr inbounds %struct.et_occ, ptr %427, i64 0, i32 5
  %433 = load i32, ptr %432, align 4, !tbaa !74
  %434 = icmp sgt i32 %431, %433
  br i1 %434, label %435, label %438, !prof !108

435:                                              ; preds = %429, %418
  %436 = getelementptr inbounds %struct.et_occ, ptr %371, i64 0, i32 3
  %437 = load ptr, ptr %436, align 8, !tbaa !83
  br label %438

438:                                              ; preds = %435, %429, %425
  %439 = phi ptr [ %437, %435 ], [ %423, %429 ], [ %423, %425 ]
  %440 = icmp eq ptr %439, null
  br i1 %440, label %449, label %441, !prof !109

441:                                              ; preds = %438
  %442 = getelementptr inbounds %struct.et_occ, ptr %439, i64 0, i32 5
  %443 = load i32, ptr %442, align 4, !tbaa !74
  %444 = icmp slt i32 %443, 0
  br i1 %444, label %445, label %449, !prof !110

445:                                              ; preds = %441
  %446 = sub i32 %443, %372
  store i32 %446, ptr %388, align 4, !tbaa !74
  %447 = getelementptr inbounds %struct.et_occ, ptr %439, i64 0, i32 6
  %448 = load ptr, ptr %447, align 8, !tbaa !73
  br label %696

449:                                              ; preds = %441, %438
  store i32 %380, ptr %388, align 4, !tbaa !74
  br label %696

450:                                              ; preds = %370
  %451 = getelementptr inbounds %struct.et_occ, ptr %377, i64 0, i32 4
  br i1 %365, label %458, label %452, !prof !111

452:                                              ; preds = %450
  %453 = load i32, ptr %451, align 8, !tbaa !90
  %454 = add nsw i32 %453, %374
  %455 = load i32, ptr %366, align 4, !tbaa !74
  %456 = add nsw i32 %455, %454
  store i32 %456, ptr %366, align 4, !tbaa !74
  %457 = add nsw i32 %454, %372
  store i32 %457, ptr %364, align 8, !tbaa !90
  br label %458

458:                                              ; preds = %452, %450
  %459 = getelementptr inbounds %struct.et_occ, ptr %377, i64 0, i32 6
  %460 = load ptr, ptr %459, align 8, !tbaa !73
  store ptr %460, ptr %367, align 8, !tbaa !73
  %461 = getelementptr inbounds %struct.et_occ, ptr %377, i64 0, i32 5
  %462 = load i32, ptr %461, align 4, !tbaa !74
  store i32 %462, ptr %366, align 4, !tbaa !74
  %463 = getelementptr inbounds %struct.et_occ, ptr %377, i64 0, i32 1
  %464 = load ptr, ptr %463, align 8, !tbaa !87
  %465 = getelementptr inbounds %struct.et_occ, ptr %377, i64 0, i32 2
  %466 = load ptr, ptr %465, align 8, !tbaa !84
  %467 = icmp eq ptr %466, %371
  %468 = getelementptr inbounds %struct.et_occ, ptr %371, i64 0, i32 2
  %469 = load ptr, ptr %468, align 8, !tbaa !84
  %470 = icmp eq ptr %469, %6
  br i1 %467, label %471, label %541, !prof !112

471:                                              ; preds = %458
  br i1 %470, label %472, label %504, !prof !113

472:                                              ; preds = %471
  %473 = getelementptr inbounds %struct.et_occ, ptr %371, i64 0, i32 3
  %474 = load ptr, ptr %473, align 8, !tbaa !83
  store ptr %474, ptr %465, align 8, !tbaa !84
  %475 = icmp eq ptr %474, null
  br i1 %475, label %478, label %476, !prof !114

476:                                              ; preds = %472
  %477 = getelementptr inbounds %struct.et_occ, ptr %474, i64 0, i32 1
  store ptr %377, ptr %477, align 8, !tbaa !87
  br label %478

478:                                              ; preds = %476, %472
  %479 = load ptr, ptr %369, align 8, !tbaa !83
  store ptr %479, ptr %468, align 8, !tbaa !84
  %480 = icmp eq ptr %479, null
  br i1 %480, label %483, label %481, !prof !115

481:                                              ; preds = %478
  %482 = getelementptr inbounds %struct.et_occ, ptr %479, i64 0, i32 1
  store ptr %371, ptr %482, align 8, !tbaa !87
  br label %483

483:                                              ; preds = %481, %478
  store ptr %371, ptr %369, align 8, !tbaa !83
  store ptr %6, ptr %376, align 8, !tbaa !87
  store ptr %377, ptr %473, align 8, !tbaa !83
  store ptr %371, ptr %463, align 8, !tbaa !87
  %484 = sub nsw i32 0, %372
  %485 = load i32, ptr %373, align 8, !tbaa !90
  %486 = getelementptr inbounds %struct.et_occ, ptr %371, i64 0, i32 5
  %487 = load i32, ptr %486, align 4, !tbaa !74
  %488 = add i32 %485, %372
  %489 = sub i32 %487, %488
  store i32 %489, ptr %486, align 4, !tbaa !74
  store i32 %484, ptr %373, align 8, !tbaa !90
  br i1 %480, label %497, label %490, !prof !115

490:                                              ; preds = %483
  %491 = getelementptr inbounds %struct.et_occ, ptr %479, i64 0, i32 5
  %492 = load i32, ptr %491, align 4, !tbaa !74
  %493 = add nsw i32 %492, %372
  store i32 %493, ptr %491, align 4, !tbaa !74
  %494 = getelementptr inbounds %struct.et_occ, ptr %479, i64 0, i32 4
  %495 = load i32, ptr %494, align 8, !tbaa !90
  %496 = add nsw i32 %495, %372
  store i32 %496, ptr %494, align 8, !tbaa !90
  br label %497

497:                                              ; preds = %490, %483
  %498 = load i32, ptr %451, align 8, !tbaa !90
  %499 = load i32, ptr %461, align 4, !tbaa !74
  %500 = add i32 %498, %374
  %501 = sub i32 %499, %500
  store i32 %501, ptr %461, align 4, !tbaa !74
  store i32 %375, ptr %451, align 8, !tbaa !90
  %502 = load ptr, ptr %465, align 8, !tbaa !84
  %503 = icmp eq ptr %502, null
  br i1 %503, label %621, label %612, !prof !114

504:                                              ; preds = %471
  %505 = load ptr, ptr %369, align 8, !tbaa !83
  store ptr %505, ptr %465, align 8, !tbaa !84
  %506 = icmp eq ptr %505, null
  br i1 %506, label %509, label %507, !prof !116

507:                                              ; preds = %504
  %508 = getelementptr inbounds %struct.et_occ, ptr %505, i64 0, i32 1
  store ptr %377, ptr %508, align 8, !tbaa !87
  br label %509

509:                                              ; preds = %507, %504
  %510 = load ptr, ptr %368, align 8, !tbaa !84
  %511 = getelementptr inbounds %struct.et_occ, ptr %371, i64 0, i32 3
  store ptr %510, ptr %511, align 8, !tbaa !83
  %512 = icmp eq ptr %510, null
  br i1 %512, label %515, label %513, !prof !117

513:                                              ; preds = %509
  %514 = getelementptr inbounds %struct.et_occ, ptr %510, i64 0, i32 1
  store ptr %371, ptr %514, align 8, !tbaa !87
  br label %515

515:                                              ; preds = %513, %509
  store ptr %371, ptr %368, align 8, !tbaa !84
  store ptr %6, ptr %376, align 8, !tbaa !87
  store ptr %377, ptr %369, align 8, !tbaa !83
  store ptr %6, ptr %463, align 8, !tbaa !87
  %516 = sub nsw i32 0, %372
  %517 = load i32, ptr %373, align 8, !tbaa !90
  %518 = getelementptr inbounds %struct.et_occ, ptr %371, i64 0, i32 5
  %519 = load i32, ptr %518, align 4, !tbaa !74
  %520 = add i32 %517, %372
  %521 = sub i32 %519, %520
  store i32 %521, ptr %518, align 4, !tbaa !74
  store i32 %516, ptr %373, align 8, !tbaa !90
  %522 = load ptr, ptr %511, align 8, !tbaa !83
  %523 = icmp eq ptr %522, null
  br i1 %523, label %531, label %524, !prof !117

524:                                              ; preds = %515
  %525 = getelementptr inbounds %struct.et_occ, ptr %522, i64 0, i32 5
  %526 = load i32, ptr %525, align 4, !tbaa !74
  %527 = add nsw i32 %526, %372
  store i32 %527, ptr %525, align 4, !tbaa !74
  %528 = getelementptr inbounds %struct.et_occ, ptr %522, i64 0, i32 4
  %529 = load i32, ptr %528, align 8, !tbaa !90
  %530 = add nsw i32 %529, %372
  store i32 %530, ptr %528, align 8, !tbaa !90
  br label %531

531:                                              ; preds = %524, %515
  %532 = sub nsw i32 %516, %374
  %533 = load i32, ptr %451, align 8, !tbaa !90
  %534 = sub i32 %532, %533
  %535 = load i32, ptr %461, align 4, !tbaa !74
  %536 = add nsw i32 %534, %535
  store i32 %536, ptr %461, align 4, !tbaa !74
  store i32 %532, ptr %451, align 8, !tbaa !90
  %537 = load ptr, ptr %465, align 8, !tbaa !84
  %538 = icmp eq ptr %537, null
  br i1 %538, label %621, label %539, !prof !116

539:                                              ; preds = %531
  %540 = add nsw i32 %374, %372
  br label %612

541:                                              ; preds = %458
  br i1 %470, label %542, label %579, !prof !118

542:                                              ; preds = %541
  %543 = load ptr, ptr %368, align 8, !tbaa !84
  %544 = getelementptr inbounds %struct.et_occ, ptr %377, i64 0, i32 3
  store ptr %543, ptr %544, align 8, !tbaa !83
  %545 = icmp eq ptr %543, null
  br i1 %545, label %548, label %546, !prof !119

546:                                              ; preds = %542
  %547 = getelementptr inbounds %struct.et_occ, ptr %543, i64 0, i32 1
  store ptr %377, ptr %547, align 8, !tbaa !87
  br label %548

548:                                              ; preds = %546, %542
  %549 = load ptr, ptr %369, align 8, !tbaa !83
  store ptr %549, ptr %468, align 8, !tbaa !84
  %550 = icmp eq ptr %549, null
  br i1 %550, label %553, label %551, !prof !120

551:                                              ; preds = %548
  %552 = getelementptr inbounds %struct.et_occ, ptr %549, i64 0, i32 1
  store ptr %371, ptr %552, align 8, !tbaa !87
  br label %553

553:                                              ; preds = %551, %548
  store ptr %377, ptr %368, align 8, !tbaa !84
  store ptr %6, ptr %463, align 8, !tbaa !87
  store ptr %371, ptr %369, align 8, !tbaa !83
  store ptr %6, ptr %376, align 8, !tbaa !87
  %554 = sub nsw i32 0, %372
  %555 = load i32, ptr %373, align 8, !tbaa !90
  %556 = getelementptr inbounds %struct.et_occ, ptr %371, i64 0, i32 5
  %557 = load i32, ptr %556, align 4, !tbaa !74
  %558 = add i32 %555, %372
  %559 = sub i32 %557, %558
  store i32 %559, ptr %556, align 4, !tbaa !74
  store i32 %554, ptr %373, align 8, !tbaa !90
  %560 = load ptr, ptr %468, align 8, !tbaa !84
  %561 = icmp eq ptr %560, null
  br i1 %561, label %569, label %562, !prof !120

562:                                              ; preds = %553
  %563 = getelementptr inbounds %struct.et_occ, ptr %560, i64 0, i32 5
  %564 = load i32, ptr %563, align 4, !tbaa !74
  %565 = add nsw i32 %564, %372
  store i32 %565, ptr %563, align 4, !tbaa !74
  %566 = getelementptr inbounds %struct.et_occ, ptr %560, i64 0, i32 4
  %567 = load i32, ptr %566, align 8, !tbaa !90
  %568 = add nsw i32 %567, %372
  store i32 %568, ptr %566, align 8, !tbaa !90
  br label %569

569:                                              ; preds = %562, %553
  %570 = sub nsw i32 %554, %374
  %571 = load i32, ptr %451, align 8, !tbaa !90
  %572 = sub i32 %570, %571
  %573 = load i32, ptr %461, align 4, !tbaa !74
  %574 = add nsw i32 %572, %573
  store i32 %574, ptr %461, align 4, !tbaa !74
  store i32 %570, ptr %451, align 8, !tbaa !90
  %575 = load ptr, ptr %544, align 8, !tbaa !83
  %576 = icmp eq ptr %575, null
  br i1 %576, label %621, label %577, !prof !119

577:                                              ; preds = %569
  %578 = add nsw i32 %374, %372
  br label %612

579:                                              ; preds = %541
  %580 = getelementptr inbounds %struct.et_occ, ptr %377, i64 0, i32 3
  store ptr %469, ptr %580, align 8, !tbaa !83
  %581 = icmp eq ptr %469, null
  br i1 %581, label %584, label %582, !prof !121

582:                                              ; preds = %579
  %583 = getelementptr inbounds %struct.et_occ, ptr %469, i64 0, i32 1
  store ptr %377, ptr %583, align 8, !tbaa !87
  br label %584

584:                                              ; preds = %582, %579
  %585 = load ptr, ptr %368, align 8, !tbaa !84
  %586 = getelementptr inbounds %struct.et_occ, ptr %371, i64 0, i32 3
  store ptr %585, ptr %586, align 8, !tbaa !83
  %587 = icmp eq ptr %585, null
  br i1 %587, label %590, label %588, !prof !122

588:                                              ; preds = %584
  %589 = getelementptr inbounds %struct.et_occ, ptr %585, i64 0, i32 1
  store ptr %371, ptr %589, align 8, !tbaa !87
  br label %590

590:                                              ; preds = %588, %584
  store ptr %371, ptr %368, align 8, !tbaa !84
  store ptr %6, ptr %376, align 8, !tbaa !87
  store ptr %377, ptr %468, align 8, !tbaa !84
  store ptr %371, ptr %463, align 8, !tbaa !87
  %591 = sub nsw i32 0, %372
  %592 = load i32, ptr %373, align 8, !tbaa !90
  %593 = getelementptr inbounds %struct.et_occ, ptr %371, i64 0, i32 5
  %594 = load i32, ptr %593, align 4, !tbaa !74
  %595 = add i32 %592, %372
  %596 = sub i32 %594, %595
  store i32 %596, ptr %593, align 4, !tbaa !74
  store i32 %591, ptr %373, align 8, !tbaa !90
  br i1 %587, label %604, label %597, !prof !122

597:                                              ; preds = %590
  %598 = getelementptr inbounds %struct.et_occ, ptr %585, i64 0, i32 5
  %599 = load i32, ptr %598, align 4, !tbaa !74
  %600 = add nsw i32 %599, %372
  store i32 %600, ptr %598, align 4, !tbaa !74
  %601 = getelementptr inbounds %struct.et_occ, ptr %585, i64 0, i32 4
  %602 = load i32, ptr %601, align 8, !tbaa !90
  %603 = add nsw i32 %602, %372
  store i32 %603, ptr %601, align 8, !tbaa !90
  br label %604

604:                                              ; preds = %597, %590
  %605 = sub nsw i32 0, %374
  %606 = load i32, ptr %451, align 8, !tbaa !90
  %607 = load i32, ptr %461, align 4, !tbaa !74
  %608 = add i32 %606, %374
  %609 = sub i32 %607, %608
  store i32 %609, ptr %461, align 4, !tbaa !74
  store i32 %605, ptr %451, align 8, !tbaa !90
  %610 = load ptr, ptr %580, align 8, !tbaa !83
  %611 = icmp eq ptr %610, null
  br i1 %611, label %621, label %612, !prof !121

612:                                              ; preds = %604, %497, %539, %577
  %613 = phi ptr [ %537, %539 ], [ %575, %577 ], [ %502, %497 ], [ %610, %604 ]
  %614 = phi i32 [ %540, %539 ], [ %578, %577 ], [ %374, %497 ], [ %374, %604 ]
  %615 = getelementptr inbounds %struct.et_occ, ptr %613, i64 0, i32 5
  %616 = load i32, ptr %615, align 4, !tbaa !74
  %617 = add nsw i32 %616, %614
  store i32 %617, ptr %615, align 4, !tbaa !74
  %618 = getelementptr inbounds %struct.et_occ, ptr %613, i64 0, i32 4
  %619 = load i32, ptr %618, align 8, !tbaa !90
  %620 = add nsw i32 %619, %614
  store i32 %620, ptr %618, align 8, !tbaa !90
  br label %621

621:                                              ; preds = %612, %604, %569, %531, %497
  store ptr %464, ptr %360, align 8, !tbaa !87
  %622 = icmp eq ptr %464, null
  br i1 %622, label %629, label %623, !prof !123

623:                                              ; preds = %621
  %624 = getelementptr inbounds %struct.et_occ, ptr %464, i64 0, i32 2
  %625 = load ptr, ptr %624, align 8, !tbaa !84
  %626 = icmp eq ptr %625, %377
  %627 = getelementptr inbounds %struct.et_occ, ptr %464, i64 0, i32 3
  %628 = select i1 %626, ptr %624, ptr %627, !prof !124
  store ptr %6, ptr %628, align 8, !tbaa !47
  br label %629

629:                                              ; preds = %623, %621
  %630 = load ptr, ptr %465, align 8, !tbaa !84
  %631 = icmp eq ptr %630, null
  br i1 %631, label %642, label %632, !prof !125

632:                                              ; preds = %629
  %633 = getelementptr inbounds %struct.et_occ, ptr %377, i64 0, i32 3
  %634 = load ptr, ptr %633, align 8, !tbaa !83
  %635 = icmp eq ptr %634, null
  br i1 %635, label %645, label %636, !prof !126

636:                                              ; preds = %632
  %637 = getelementptr inbounds %struct.et_occ, ptr %630, i64 0, i32 5
  %638 = load i32, ptr %637, align 4, !tbaa !74
  %639 = getelementptr inbounds %struct.et_occ, ptr %634, i64 0, i32 5
  %640 = load i32, ptr %639, align 4, !tbaa !74
  %641 = icmp sgt i32 %638, %640
  br i1 %641, label %642, label %645, !prof !127

642:                                              ; preds = %636, %629
  %643 = getelementptr inbounds %struct.et_occ, ptr %377, i64 0, i32 3
  %644 = load ptr, ptr %643, align 8, !tbaa !83
  br label %645

645:                                              ; preds = %642, %636, %632
  %646 = phi ptr [ %644, %642 ], [ %630, %636 ], [ %630, %632 ]
  %647 = icmp eq ptr %646, null
  br i1 %647, label %657, label %648, !prof !128

648:                                              ; preds = %645
  %649 = getelementptr inbounds %struct.et_occ, ptr %646, i64 0, i32 5
  %650 = load i32, ptr %649, align 4, !tbaa !74
  %651 = icmp slt i32 %650, 0
  br i1 %651, label %652, label %657, !prof !129

652:                                              ; preds = %648
  %653 = load i32, ptr %451, align 8, !tbaa !90
  %654 = add nsw i32 %653, %650
  store i32 %654, ptr %461, align 4, !tbaa !74
  %655 = getelementptr inbounds %struct.et_occ, ptr %646, i64 0, i32 6
  %656 = load ptr, ptr %655, align 8, !tbaa !73
  br label %659

657:                                              ; preds = %648, %645
  %658 = load i32, ptr %451, align 8, !tbaa !90
  store i32 %658, ptr %461, align 4, !tbaa !74
  br label %659

659:                                              ; preds = %657, %652
  %660 = phi ptr [ %656, %652 ], [ %377, %657 ]
  store ptr %660, ptr %459, align 8, !tbaa !73
  %661 = getelementptr inbounds %struct.et_occ, ptr %371, i64 0, i32 2
  %662 = load ptr, ptr %661, align 8, !tbaa !84
  %663 = icmp eq ptr %662, null
  br i1 %663, label %674, label %664, !prof !130

664:                                              ; preds = %659
  %665 = getelementptr inbounds %struct.et_occ, ptr %371, i64 0, i32 3
  %666 = load ptr, ptr %665, align 8, !tbaa !83
  %667 = icmp eq ptr %666, null
  br i1 %667, label %677, label %668, !prof !131

668:                                              ; preds = %664
  %669 = getelementptr inbounds %struct.et_occ, ptr %662, i64 0, i32 5
  %670 = load i32, ptr %669, align 4, !tbaa !74
  %671 = getelementptr inbounds %struct.et_occ, ptr %666, i64 0, i32 5
  %672 = load i32, ptr %671, align 4, !tbaa !74
  %673 = icmp sgt i32 %670, %672
  br i1 %673, label %674, label %677, !prof !132

674:                                              ; preds = %668, %659
  %675 = getelementptr inbounds %struct.et_occ, ptr %371, i64 0, i32 3
  %676 = load ptr, ptr %675, align 8, !tbaa !83
  br label %677

677:                                              ; preds = %674, %668, %664
  %678 = phi ptr [ %676, %674 ], [ %662, %668 ], [ %662, %664 ]
  %679 = icmp eq ptr %678, null
  br i1 %679, label %690, label %680, !prof !133

680:                                              ; preds = %677
  %681 = getelementptr inbounds %struct.et_occ, ptr %678, i64 0, i32 5
  %682 = load i32, ptr %681, align 4, !tbaa !74
  %683 = icmp slt i32 %682, 0
  br i1 %683, label %684, label %690, !prof !134

684:                                              ; preds = %680
  %685 = load i32, ptr %373, align 8, !tbaa !90
  %686 = add nsw i32 %685, %682
  %687 = getelementptr inbounds %struct.et_occ, ptr %371, i64 0, i32 5
  store i32 %686, ptr %687, align 4, !tbaa !74
  %688 = getelementptr inbounds %struct.et_occ, ptr %678, i64 0, i32 6
  %689 = load ptr, ptr %688, align 8, !tbaa !73
  br label %693

690:                                              ; preds = %680, %677
  %691 = load i32, ptr %373, align 8, !tbaa !90
  %692 = getelementptr inbounds %struct.et_occ, ptr %371, i64 0, i32 5
  store i32 %691, ptr %692, align 4, !tbaa !74
  br label %693

693:                                              ; preds = %690, %684
  %694 = phi ptr [ %371, %690 ], [ %689, %684 ]
  %695 = getelementptr inbounds %struct.et_occ, ptr %371, i64 0, i32 6
  store ptr %694, ptr %695, align 8, !tbaa !73
  br i1 %622, label %698, label %370, !prof !135, !llvm.loop !136

696:                                              ; preds = %449, %445
  %697 = phi ptr [ %448, %445 ], [ %371, %449 ]
  store ptr %697, ptr %386, align 8, !tbaa !73
  br label %698

698:                                              ; preds = %693, %696, %359
  %699 = icmp eq ptr %349, %6
  br i1 %699, label %705, label %700, !prof !148

700:                                              ; preds = %698
  br i1 %352, label %711, label %701, !prof !149

701:                                              ; preds = %700
  %702 = getelementptr inbounds %struct.et_occ, ptr %349, i64 0, i32 1
  %703 = load ptr, ptr %702, align 8, !tbaa !87
  %704 = icmp eq ptr %703, null
  br i1 %704, label %711, label %705, !prof !150

705:                                              ; preds = %701, %698
  %706 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 3
  %707 = load ptr, ptr %706, align 8, !tbaa !83
  store ptr %6, ptr %348, align 8, !tbaa !84
  %708 = icmp eq ptr %6, null
  br i1 %708, label %710, label %709, !prof !151

709:                                              ; preds = %705
  store ptr %4, ptr %360, align 8, !tbaa !87
  br label %710

710:                                              ; preds = %705, %709
  br i1 %356, label %721, label %717, !prof !152

711:                                              ; preds = %701, %700
  %712 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 2
  %713 = load ptr, ptr %712, align 8, !tbaa !84
  store ptr %6, ptr %350, align 8, !tbaa !83
  %714 = icmp eq ptr %6, null
  br i1 %714, label %716, label %715, !prof !153

715:                                              ; preds = %711
  store ptr %4, ptr %360, align 8, !tbaa !87
  br label %716

716:                                              ; preds = %711, %715
  br i1 %352, label %721, label %717, !prof !153

717:                                              ; preds = %716, %710
  %718 = phi ptr [ %351, %710 ], [ %349, %716 ]
  %719 = phi ptr [ %707, %710 ], [ %713, %716 ]
  %720 = getelementptr inbounds %struct.et_occ, ptr %718, i64 0, i32 1
  store ptr %4, ptr %720, align 8, !tbaa !87
  br label %721

721:                                              ; preds = %717, %716, %710
  %722 = phi ptr [ %707, %710 ], [ %713, %716 ], [ %719, %717 ]
  %723 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 4
  %724 = load i32, ptr %723, align 8, !tbaa !90
  %725 = icmp sgt i32 %724, 0
  %726 = select i1 %725, ptr %4, ptr %6, !prof !154
  %727 = icmp eq ptr %722, null
  br i1 %727, label %741, label %728, !prof !155

728:                                              ; preds = %721
  %729 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 4
  %730 = load i32, ptr %729, align 8, !tbaa !90
  %731 = tail call i32 @llvm.smin.i32(i32 %724, i32 0)
  %732 = add nsw i32 %730, %731
  %733 = getelementptr inbounds %struct.et_occ, ptr %722, i64 0, i32 5
  %734 = load i32, ptr %733, align 4, !tbaa !74
  %735 = add i32 %734, %724
  %736 = add i32 %735, %730
  %737 = icmp slt i32 %736, %732
  br i1 %737, label %738, label %741, !prof !156

738:                                              ; preds = %728
  %739 = getelementptr inbounds %struct.et_occ, ptr %722, i64 0, i32 6
  %740 = load ptr, ptr %739, align 8, !tbaa !73
  br label %741

741:                                              ; preds = %721, %728, %738
  %742 = phi ptr [ %740, %738 ], [ %726, %728 ], [ %726, %721 ]
  %743 = load ptr, ptr %742, align 8, !tbaa !71
  br label %744

744:                                              ; preds = %741, %2
  %745 = phi ptr [ %0, %2 ], [ %743, %741 ]
  ret ptr %745
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @et_below(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #10 !prof !157 {
  %3 = getelementptr inbounds %struct.et_node, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %732, label %8, !prof !158

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !87
  %11 = icmp eq ptr %10, null
  br i1 %11, label %347, label %12, !prof !100

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 4
  %14 = icmp eq ptr %4, null
  %15 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 5
  %16 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 6
  %17 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 2
  %18 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 3
  br label %19

19:                                               ; preds = %342, %12
  %20 = phi ptr [ %10, %12 ], [ %113, %342 ]
  %21 = load i32, ptr %13, align 8, !tbaa !90
  %22 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !90
  %24 = sub i32 0, %23
  %25 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !87
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %99, !prof !101

28:                                               ; preds = %19
  %29 = sub i32 0, %21
  br i1 %14, label %34, label %30, !prof !102

30:                                               ; preds = %28
  %31 = load i32, ptr %15, align 4, !tbaa !74
  %32 = add nsw i32 %31, %23
  store i32 %32, ptr %15, align 4, !tbaa !74
  %33 = add nsw i32 %23, %21
  store i32 %33, ptr %13, align 8, !tbaa !90
  br label %34

34:                                               ; preds = %30, %28
  %35 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !73
  store ptr %36, ptr %16, align 8, !tbaa !73
  %37 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 5
  %38 = load i32, ptr %37, align 4, !tbaa !74
  store i32 %38, ptr %15, align 4, !tbaa !74
  %39 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !84
  %41 = icmp eq ptr %40, %4
  br i1 %41, label %42, label %53, !prof !103

42:                                               ; preds = %34
  %43 = load ptr, ptr %18, align 8, !tbaa !83
  store ptr %43, ptr %39, align 8, !tbaa !84
  %44 = icmp eq ptr %43, null
  br i1 %44, label %65, label %45, !prof !104

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.et_occ, ptr %43, i64 0, i32 1
  store ptr %20, ptr %46, align 8, !tbaa !87
  store ptr %20, ptr %18, align 8, !tbaa !83
  store ptr %4, ptr %25, align 8, !tbaa !87
  %47 = getelementptr inbounds %struct.et_occ, ptr %43, i64 0, i32 5
  %48 = load i32, ptr %47, align 4, !tbaa !74
  %49 = add nsw i32 %48, %21
  store i32 %49, ptr %47, align 4, !tbaa !74
  %50 = getelementptr inbounds %struct.et_occ, ptr %43, i64 0, i32 4
  %51 = load i32, ptr %50, align 8, !tbaa !90
  %52 = add nsw i32 %51, %21
  store i32 %52, ptr %50, align 8, !tbaa !90
  br label %67

53:                                               ; preds = %34
  %54 = load ptr, ptr %17, align 8, !tbaa !84
  %55 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 3
  store ptr %54, ptr %55, align 8, !tbaa !83
  %56 = icmp eq ptr %54, null
  br i1 %56, label %66, label %57, !prof !105

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.et_occ, ptr %54, i64 0, i32 1
  store ptr %20, ptr %58, align 8, !tbaa !87
  store ptr %20, ptr %17, align 8, !tbaa !84
  store ptr %4, ptr %25, align 8, !tbaa !87
  %59 = getelementptr inbounds %struct.et_occ, ptr %54, i64 0, i32 5
  %60 = load i32, ptr %59, align 4, !tbaa !74
  %61 = add nsw i32 %60, %21
  store i32 %61, ptr %59, align 4, !tbaa !74
  %62 = getelementptr inbounds %struct.et_occ, ptr %54, i64 0, i32 4
  %63 = load i32, ptr %62, align 8, !tbaa !90
  %64 = add nsw i32 %63, %21
  store i32 %64, ptr %62, align 8, !tbaa !90
  br label %67

65:                                               ; preds = %42
  store ptr %20, ptr %18, align 8, !tbaa !83
  store ptr %4, ptr %25, align 8, !tbaa !87
  br label %67

66:                                               ; preds = %53
  store ptr %20, ptr %17, align 8, !tbaa !84
  store ptr %4, ptr %25, align 8, !tbaa !87
  br label %67

67:                                               ; preds = %66, %65, %57, %45
  %68 = load i32, ptr %22, align 8, !tbaa !90
  %69 = load i32, ptr %37, align 4, !tbaa !74
  %70 = add i32 %68, %21
  %71 = sub i32 %69, %70
  store i32 %71, ptr %37, align 4, !tbaa !74
  store i32 %29, ptr %22, align 8, !tbaa !90
  store ptr null, ptr %9, align 8, !tbaa !87
  %72 = load ptr, ptr %39, align 8, !tbaa !84
  %73 = icmp eq ptr %72, null
  br i1 %73, label %84, label %74, !prof !106

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !83
  %77 = icmp eq ptr %76, null
  br i1 %77, label %87, label %78, !prof !107

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.et_occ, ptr %72, i64 0, i32 5
  %80 = load i32, ptr %79, align 4, !tbaa !74
  %81 = getelementptr inbounds %struct.et_occ, ptr %76, i64 0, i32 5
  %82 = load i32, ptr %81, align 4, !tbaa !74
  %83 = icmp sgt i32 %80, %82
  br i1 %83, label %84, label %87, !prof !108

84:                                               ; preds = %78, %67
  %85 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !83
  br label %87

87:                                               ; preds = %84, %78, %74
  %88 = phi ptr [ %86, %84 ], [ %72, %78 ], [ %72, %74 ]
  %89 = icmp eq ptr %88, null
  br i1 %89, label %98, label %90, !prof !109

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.et_occ, ptr %88, i64 0, i32 5
  %92 = load i32, ptr %91, align 4, !tbaa !74
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %98, !prof !110

94:                                               ; preds = %90
  %95 = sub i32 %92, %21
  store i32 %95, ptr %37, align 4, !tbaa !74
  %96 = getelementptr inbounds %struct.et_occ, ptr %88, i64 0, i32 6
  %97 = load ptr, ptr %96, align 8, !tbaa !73
  br label %345

98:                                               ; preds = %90, %87
  store i32 %29, ptr %37, align 4, !tbaa !74
  br label %345

99:                                               ; preds = %19
  %100 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 4
  br i1 %14, label %107, label %101, !prof !111

101:                                              ; preds = %99
  %102 = load i32, ptr %100, align 8, !tbaa !90
  %103 = add nsw i32 %102, %23
  %104 = load i32, ptr %15, align 4, !tbaa !74
  %105 = add nsw i32 %104, %103
  store i32 %105, ptr %15, align 4, !tbaa !74
  %106 = add nsw i32 %103, %21
  store i32 %106, ptr %13, align 8, !tbaa !90
  br label %107

107:                                              ; preds = %101, %99
  %108 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !73
  store ptr %109, ptr %16, align 8, !tbaa !73
  %110 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 5
  %111 = load i32, ptr %110, align 4, !tbaa !74
  store i32 %111, ptr %15, align 4, !tbaa !74
  %112 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !87
  %114 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !84
  %116 = icmp eq ptr %115, %20
  %117 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !84
  %119 = icmp eq ptr %118, %4
  br i1 %116, label %120, label %190, !prof !112

120:                                              ; preds = %107
  br i1 %119, label %121, label %153, !prof !113

121:                                              ; preds = %120
  %122 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !83
  store ptr %123, ptr %114, align 8, !tbaa !84
  %124 = icmp eq ptr %123, null
  br i1 %124, label %127, label %125, !prof !114

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.et_occ, ptr %123, i64 0, i32 1
  store ptr %26, ptr %126, align 8, !tbaa !87
  br label %127

127:                                              ; preds = %125, %121
  %128 = load ptr, ptr %18, align 8, !tbaa !83
  store ptr %128, ptr %117, align 8, !tbaa !84
  %129 = icmp eq ptr %128, null
  br i1 %129, label %132, label %130, !prof !115

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.et_occ, ptr %128, i64 0, i32 1
  store ptr %20, ptr %131, align 8, !tbaa !87
  br label %132

132:                                              ; preds = %130, %127
  store ptr %20, ptr %18, align 8, !tbaa !83
  store ptr %4, ptr %25, align 8, !tbaa !87
  store ptr %26, ptr %122, align 8, !tbaa !83
  store ptr %20, ptr %112, align 8, !tbaa !87
  %133 = sub nsw i32 0, %21
  %134 = load i32, ptr %22, align 8, !tbaa !90
  %135 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 5
  %136 = load i32, ptr %135, align 4, !tbaa !74
  %137 = add i32 %134, %21
  %138 = sub i32 %136, %137
  store i32 %138, ptr %135, align 4, !tbaa !74
  store i32 %133, ptr %22, align 8, !tbaa !90
  br i1 %129, label %146, label %139, !prof !115

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.et_occ, ptr %128, i64 0, i32 5
  %141 = load i32, ptr %140, align 4, !tbaa !74
  %142 = add nsw i32 %141, %21
  store i32 %142, ptr %140, align 4, !tbaa !74
  %143 = getelementptr inbounds %struct.et_occ, ptr %128, i64 0, i32 4
  %144 = load i32, ptr %143, align 8, !tbaa !90
  %145 = add nsw i32 %144, %21
  store i32 %145, ptr %143, align 8, !tbaa !90
  br label %146

146:                                              ; preds = %139, %132
  %147 = load i32, ptr %100, align 8, !tbaa !90
  %148 = load i32, ptr %110, align 4, !tbaa !74
  %149 = add i32 %147, %23
  %150 = sub i32 %148, %149
  store i32 %150, ptr %110, align 4, !tbaa !74
  store i32 %24, ptr %100, align 8, !tbaa !90
  %151 = load ptr, ptr %114, align 8, !tbaa !84
  %152 = icmp eq ptr %151, null
  br i1 %152, label %270, label %261, !prof !114

153:                                              ; preds = %120
  %154 = load ptr, ptr %18, align 8, !tbaa !83
  store ptr %154, ptr %114, align 8, !tbaa !84
  %155 = icmp eq ptr %154, null
  br i1 %155, label %158, label %156, !prof !116

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.et_occ, ptr %154, i64 0, i32 1
  store ptr %26, ptr %157, align 8, !tbaa !87
  br label %158

158:                                              ; preds = %156, %153
  %159 = load ptr, ptr %17, align 8, !tbaa !84
  %160 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 3
  store ptr %159, ptr %160, align 8, !tbaa !83
  %161 = icmp eq ptr %159, null
  br i1 %161, label %164, label %162, !prof !117

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.et_occ, ptr %159, i64 0, i32 1
  store ptr %20, ptr %163, align 8, !tbaa !87
  br label %164

164:                                              ; preds = %162, %158
  store ptr %20, ptr %17, align 8, !tbaa !84
  store ptr %4, ptr %25, align 8, !tbaa !87
  store ptr %26, ptr %18, align 8, !tbaa !83
  store ptr %4, ptr %112, align 8, !tbaa !87
  %165 = sub nsw i32 0, %21
  %166 = load i32, ptr %22, align 8, !tbaa !90
  %167 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 5
  %168 = load i32, ptr %167, align 4, !tbaa !74
  %169 = add i32 %166, %21
  %170 = sub i32 %168, %169
  store i32 %170, ptr %167, align 4, !tbaa !74
  store i32 %165, ptr %22, align 8, !tbaa !90
  %171 = load ptr, ptr %160, align 8, !tbaa !83
  %172 = icmp eq ptr %171, null
  br i1 %172, label %180, label %173, !prof !117

173:                                              ; preds = %164
  %174 = getelementptr inbounds %struct.et_occ, ptr %171, i64 0, i32 5
  %175 = load i32, ptr %174, align 4, !tbaa !74
  %176 = add nsw i32 %175, %21
  store i32 %176, ptr %174, align 4, !tbaa !74
  %177 = getelementptr inbounds %struct.et_occ, ptr %171, i64 0, i32 4
  %178 = load i32, ptr %177, align 8, !tbaa !90
  %179 = add nsw i32 %178, %21
  store i32 %179, ptr %177, align 8, !tbaa !90
  br label %180

180:                                              ; preds = %173, %164
  %181 = sub nsw i32 %165, %23
  %182 = load i32, ptr %100, align 8, !tbaa !90
  %183 = sub i32 %181, %182
  %184 = load i32, ptr %110, align 4, !tbaa !74
  %185 = add nsw i32 %183, %184
  store i32 %185, ptr %110, align 4, !tbaa !74
  store i32 %181, ptr %100, align 8, !tbaa !90
  %186 = load ptr, ptr %114, align 8, !tbaa !84
  %187 = icmp eq ptr %186, null
  br i1 %187, label %270, label %188, !prof !116

188:                                              ; preds = %180
  %189 = add nsw i32 %23, %21
  br label %261

190:                                              ; preds = %107
  br i1 %119, label %191, label %228, !prof !118

191:                                              ; preds = %190
  %192 = load ptr, ptr %17, align 8, !tbaa !84
  %193 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 3
  store ptr %192, ptr %193, align 8, !tbaa !83
  %194 = icmp eq ptr %192, null
  br i1 %194, label %197, label %195, !prof !119

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.et_occ, ptr %192, i64 0, i32 1
  store ptr %26, ptr %196, align 8, !tbaa !87
  br label %197

197:                                              ; preds = %195, %191
  %198 = load ptr, ptr %18, align 8, !tbaa !83
  store ptr %198, ptr %117, align 8, !tbaa !84
  %199 = icmp eq ptr %198, null
  br i1 %199, label %202, label %200, !prof !120

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.et_occ, ptr %198, i64 0, i32 1
  store ptr %20, ptr %201, align 8, !tbaa !87
  br label %202

202:                                              ; preds = %200, %197
  store ptr %26, ptr %17, align 8, !tbaa !84
  store ptr %4, ptr %112, align 8, !tbaa !87
  store ptr %20, ptr %18, align 8, !tbaa !83
  store ptr %4, ptr %25, align 8, !tbaa !87
  %203 = sub nsw i32 0, %21
  %204 = load i32, ptr %22, align 8, !tbaa !90
  %205 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 5
  %206 = load i32, ptr %205, align 4, !tbaa !74
  %207 = add i32 %204, %21
  %208 = sub i32 %206, %207
  store i32 %208, ptr %205, align 4, !tbaa !74
  store i32 %203, ptr %22, align 8, !tbaa !90
  %209 = load ptr, ptr %117, align 8, !tbaa !84
  %210 = icmp eq ptr %209, null
  br i1 %210, label %218, label %211, !prof !120

211:                                              ; preds = %202
  %212 = getelementptr inbounds %struct.et_occ, ptr %209, i64 0, i32 5
  %213 = load i32, ptr %212, align 4, !tbaa !74
  %214 = add nsw i32 %213, %21
  store i32 %214, ptr %212, align 4, !tbaa !74
  %215 = getelementptr inbounds %struct.et_occ, ptr %209, i64 0, i32 4
  %216 = load i32, ptr %215, align 8, !tbaa !90
  %217 = add nsw i32 %216, %21
  store i32 %217, ptr %215, align 8, !tbaa !90
  br label %218

218:                                              ; preds = %211, %202
  %219 = sub nsw i32 %203, %23
  %220 = load i32, ptr %100, align 8, !tbaa !90
  %221 = sub i32 %219, %220
  %222 = load i32, ptr %110, align 4, !tbaa !74
  %223 = add nsw i32 %221, %222
  store i32 %223, ptr %110, align 4, !tbaa !74
  store i32 %219, ptr %100, align 8, !tbaa !90
  %224 = load ptr, ptr %193, align 8, !tbaa !83
  %225 = icmp eq ptr %224, null
  br i1 %225, label %270, label %226, !prof !119

226:                                              ; preds = %218
  %227 = add nsw i32 %23, %21
  br label %261

228:                                              ; preds = %190
  %229 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 3
  store ptr %118, ptr %229, align 8, !tbaa !83
  %230 = icmp eq ptr %118, null
  br i1 %230, label %233, label %231, !prof !121

231:                                              ; preds = %228
  %232 = getelementptr inbounds %struct.et_occ, ptr %118, i64 0, i32 1
  store ptr %26, ptr %232, align 8, !tbaa !87
  br label %233

233:                                              ; preds = %231, %228
  %234 = load ptr, ptr %17, align 8, !tbaa !84
  %235 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 3
  store ptr %234, ptr %235, align 8, !tbaa !83
  %236 = icmp eq ptr %234, null
  br i1 %236, label %239, label %237, !prof !122

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.et_occ, ptr %234, i64 0, i32 1
  store ptr %20, ptr %238, align 8, !tbaa !87
  br label %239

239:                                              ; preds = %237, %233
  store ptr %20, ptr %17, align 8, !tbaa !84
  store ptr %4, ptr %25, align 8, !tbaa !87
  store ptr %26, ptr %117, align 8, !tbaa !84
  store ptr %20, ptr %112, align 8, !tbaa !87
  %240 = sub nsw i32 0, %21
  %241 = load i32, ptr %22, align 8, !tbaa !90
  %242 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 5
  %243 = load i32, ptr %242, align 4, !tbaa !74
  %244 = add i32 %241, %21
  %245 = sub i32 %243, %244
  store i32 %245, ptr %242, align 4, !tbaa !74
  store i32 %240, ptr %22, align 8, !tbaa !90
  br i1 %236, label %253, label %246, !prof !122

246:                                              ; preds = %239
  %247 = getelementptr inbounds %struct.et_occ, ptr %234, i64 0, i32 5
  %248 = load i32, ptr %247, align 4, !tbaa !74
  %249 = add nsw i32 %248, %21
  store i32 %249, ptr %247, align 4, !tbaa !74
  %250 = getelementptr inbounds %struct.et_occ, ptr %234, i64 0, i32 4
  %251 = load i32, ptr %250, align 8, !tbaa !90
  %252 = add nsw i32 %251, %21
  store i32 %252, ptr %250, align 8, !tbaa !90
  br label %253

253:                                              ; preds = %246, %239
  %254 = sub nsw i32 0, %23
  %255 = load i32, ptr %100, align 8, !tbaa !90
  %256 = load i32, ptr %110, align 4, !tbaa !74
  %257 = add i32 %255, %23
  %258 = sub i32 %256, %257
  store i32 %258, ptr %110, align 4, !tbaa !74
  store i32 %254, ptr %100, align 8, !tbaa !90
  %259 = load ptr, ptr %229, align 8, !tbaa !83
  %260 = icmp eq ptr %259, null
  br i1 %260, label %270, label %261, !prof !121

261:                                              ; preds = %253, %146, %188, %226
  %262 = phi ptr [ %186, %188 ], [ %224, %226 ], [ %151, %146 ], [ %259, %253 ]
  %263 = phi i32 [ %189, %188 ], [ %227, %226 ], [ %23, %146 ], [ %23, %253 ]
  %264 = getelementptr inbounds %struct.et_occ, ptr %262, i64 0, i32 5
  %265 = load i32, ptr %264, align 4, !tbaa !74
  %266 = add nsw i32 %265, %263
  store i32 %266, ptr %264, align 4, !tbaa !74
  %267 = getelementptr inbounds %struct.et_occ, ptr %262, i64 0, i32 4
  %268 = load i32, ptr %267, align 8, !tbaa !90
  %269 = add nsw i32 %268, %263
  store i32 %269, ptr %267, align 8, !tbaa !90
  br label %270

270:                                              ; preds = %261, %253, %218, %180, %146
  store ptr %113, ptr %9, align 8, !tbaa !87
  %271 = icmp eq ptr %113, null
  br i1 %271, label %278, label %272, !prof !123

272:                                              ; preds = %270
  %273 = getelementptr inbounds %struct.et_occ, ptr %113, i64 0, i32 2
  %274 = load ptr, ptr %273, align 8, !tbaa !84
  %275 = icmp eq ptr %274, %26
  %276 = getelementptr inbounds %struct.et_occ, ptr %113, i64 0, i32 3
  %277 = select i1 %275, ptr %273, ptr %276, !prof !124
  store ptr %4, ptr %277, align 8, !tbaa !47
  br label %278

278:                                              ; preds = %272, %270
  %279 = load ptr, ptr %114, align 8, !tbaa !84
  %280 = icmp eq ptr %279, null
  br i1 %280, label %291, label %281, !prof !125

281:                                              ; preds = %278
  %282 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 3
  %283 = load ptr, ptr %282, align 8, !tbaa !83
  %284 = icmp eq ptr %283, null
  br i1 %284, label %294, label %285, !prof !126

285:                                              ; preds = %281
  %286 = getelementptr inbounds %struct.et_occ, ptr %279, i64 0, i32 5
  %287 = load i32, ptr %286, align 4, !tbaa !74
  %288 = getelementptr inbounds %struct.et_occ, ptr %283, i64 0, i32 5
  %289 = load i32, ptr %288, align 4, !tbaa !74
  %290 = icmp sgt i32 %287, %289
  br i1 %290, label %291, label %294, !prof !127

291:                                              ; preds = %285, %278
  %292 = getelementptr inbounds %struct.et_occ, ptr %26, i64 0, i32 3
  %293 = load ptr, ptr %292, align 8, !tbaa !83
  br label %294

294:                                              ; preds = %291, %285, %281
  %295 = phi ptr [ %293, %291 ], [ %279, %285 ], [ %279, %281 ]
  %296 = icmp eq ptr %295, null
  br i1 %296, label %306, label %297, !prof !128

297:                                              ; preds = %294
  %298 = getelementptr inbounds %struct.et_occ, ptr %295, i64 0, i32 5
  %299 = load i32, ptr %298, align 4, !tbaa !74
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %301, label %306, !prof !129

301:                                              ; preds = %297
  %302 = load i32, ptr %100, align 8, !tbaa !90
  %303 = add nsw i32 %302, %299
  store i32 %303, ptr %110, align 4, !tbaa !74
  %304 = getelementptr inbounds %struct.et_occ, ptr %295, i64 0, i32 6
  %305 = load ptr, ptr %304, align 8, !tbaa !73
  br label %308

306:                                              ; preds = %297, %294
  %307 = load i32, ptr %100, align 8, !tbaa !90
  store i32 %307, ptr %110, align 4, !tbaa !74
  br label %308

308:                                              ; preds = %306, %301
  %309 = phi ptr [ %305, %301 ], [ %26, %306 ]
  store ptr %309, ptr %108, align 8, !tbaa !73
  %310 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 2
  %311 = load ptr, ptr %310, align 8, !tbaa !84
  %312 = icmp eq ptr %311, null
  br i1 %312, label %323, label %313, !prof !130

313:                                              ; preds = %308
  %314 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 3
  %315 = load ptr, ptr %314, align 8, !tbaa !83
  %316 = icmp eq ptr %315, null
  br i1 %316, label %326, label %317, !prof !131

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.et_occ, ptr %311, i64 0, i32 5
  %319 = load i32, ptr %318, align 4, !tbaa !74
  %320 = getelementptr inbounds %struct.et_occ, ptr %315, i64 0, i32 5
  %321 = load i32, ptr %320, align 4, !tbaa !74
  %322 = icmp sgt i32 %319, %321
  br i1 %322, label %323, label %326, !prof !132

323:                                              ; preds = %317, %308
  %324 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 3
  %325 = load ptr, ptr %324, align 8, !tbaa !83
  br label %326

326:                                              ; preds = %323, %317, %313
  %327 = phi ptr [ %325, %323 ], [ %311, %317 ], [ %311, %313 ]
  %328 = icmp eq ptr %327, null
  br i1 %328, label %339, label %329, !prof !133

329:                                              ; preds = %326
  %330 = getelementptr inbounds %struct.et_occ, ptr %327, i64 0, i32 5
  %331 = load i32, ptr %330, align 4, !tbaa !74
  %332 = icmp slt i32 %331, 0
  br i1 %332, label %333, label %339, !prof !134

333:                                              ; preds = %329
  %334 = load i32, ptr %22, align 8, !tbaa !90
  %335 = add nsw i32 %334, %331
  %336 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 5
  store i32 %335, ptr %336, align 4, !tbaa !74
  %337 = getelementptr inbounds %struct.et_occ, ptr %327, i64 0, i32 6
  %338 = load ptr, ptr %337, align 8, !tbaa !73
  br label %342

339:                                              ; preds = %329, %326
  %340 = load i32, ptr %22, align 8, !tbaa !90
  %341 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 5
  store i32 %340, ptr %341, align 4, !tbaa !74
  br label %342

342:                                              ; preds = %339, %333
  %343 = phi ptr [ %20, %339 ], [ %338, %333 ]
  %344 = getelementptr inbounds %struct.et_occ, ptr %20, i64 0, i32 6
  store ptr %343, ptr %344, align 8, !tbaa !73
  br i1 %271, label %347, label %19, !prof !135, !llvm.loop !136

345:                                              ; preds = %98, %94
  %346 = phi ptr [ %97, %94 ], [ %20, %98 ]
  store ptr %346, ptr %35, align 8, !tbaa !73
  br label %347

347:                                              ; preds = %342, %345, %8
  %348 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 2
  %349 = load ptr, ptr %348, align 8, !tbaa !84
  %350 = getelementptr inbounds %struct.et_occ, ptr %4, i64 0, i32 3
  %351 = load ptr, ptr %350, align 8, !tbaa !83
  %352 = icmp eq ptr %349, null
  br i1 %352, label %732, label %353, !prof !159

353:                                              ; preds = %347
  %354 = getelementptr inbounds %struct.et_occ, ptr %349, i64 0, i32 1
  store ptr null, ptr %354, align 8, !tbaa !87
  %355 = icmp eq ptr %351, null
  br i1 %355, label %358, label %356, !prof !160

356:                                              ; preds = %353
  %357 = getelementptr inbounds %struct.et_occ, ptr %351, i64 0, i32 1
  store ptr null, ptr %357, align 8, !tbaa !87
  br label %358

358:                                              ; preds = %356, %353
  %359 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 1
  %360 = load ptr, ptr %359, align 8, !tbaa !87
  %361 = icmp eq ptr %360, null
  br i1 %361, label %697, label %362, !prof !100

362:                                              ; preds = %358
  %363 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 4
  %364 = icmp eq ptr %6, null
  %365 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 5
  %366 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 6
  %367 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 2
  %368 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 3
  br label %369

369:                                              ; preds = %692, %362
  %370 = phi ptr [ %360, %362 ], [ %463, %692 ]
  %371 = load i32, ptr %363, align 8, !tbaa !90
  %372 = getelementptr inbounds %struct.et_occ, ptr %370, i64 0, i32 4
  %373 = load i32, ptr %372, align 8, !tbaa !90
  %374 = sub i32 0, %373
  %375 = getelementptr inbounds %struct.et_occ, ptr %370, i64 0, i32 1
  %376 = load ptr, ptr %375, align 8, !tbaa !87
  %377 = icmp eq ptr %376, null
  br i1 %377, label %378, label %449, !prof !101

378:                                              ; preds = %369
  %379 = sub i32 0, %371
  br i1 %364, label %384, label %380, !prof !102

380:                                              ; preds = %378
  %381 = load i32, ptr %365, align 4, !tbaa !74
  %382 = add nsw i32 %381, %373
  store i32 %382, ptr %365, align 4, !tbaa !74
  %383 = add nsw i32 %373, %371
  store i32 %383, ptr %363, align 8, !tbaa !90
  br label %384

384:                                              ; preds = %380, %378
  %385 = getelementptr inbounds %struct.et_occ, ptr %370, i64 0, i32 6
  %386 = load ptr, ptr %385, align 8, !tbaa !73
  store ptr %386, ptr %366, align 8, !tbaa !73
  %387 = getelementptr inbounds %struct.et_occ, ptr %370, i64 0, i32 5
  %388 = load i32, ptr %387, align 4, !tbaa !74
  store i32 %388, ptr %365, align 4, !tbaa !74
  %389 = getelementptr inbounds %struct.et_occ, ptr %370, i64 0, i32 2
  %390 = load ptr, ptr %389, align 8, !tbaa !84
  %391 = icmp eq ptr %390, %6
  br i1 %391, label %392, label %403, !prof !103

392:                                              ; preds = %384
  %393 = load ptr, ptr %368, align 8, !tbaa !83
  store ptr %393, ptr %389, align 8, !tbaa !84
  %394 = icmp eq ptr %393, null
  br i1 %394, label %415, label %395, !prof !104

395:                                              ; preds = %392
  %396 = getelementptr inbounds %struct.et_occ, ptr %393, i64 0, i32 1
  store ptr %370, ptr %396, align 8, !tbaa !87
  store ptr %370, ptr %368, align 8, !tbaa !83
  store ptr %6, ptr %375, align 8, !tbaa !87
  %397 = getelementptr inbounds %struct.et_occ, ptr %393, i64 0, i32 5
  %398 = load i32, ptr %397, align 4, !tbaa !74
  %399 = add nsw i32 %398, %371
  store i32 %399, ptr %397, align 4, !tbaa !74
  %400 = getelementptr inbounds %struct.et_occ, ptr %393, i64 0, i32 4
  %401 = load i32, ptr %400, align 8, !tbaa !90
  %402 = add nsw i32 %401, %371
  store i32 %402, ptr %400, align 8, !tbaa !90
  br label %417

403:                                              ; preds = %384
  %404 = load ptr, ptr %367, align 8, !tbaa !84
  %405 = getelementptr inbounds %struct.et_occ, ptr %370, i64 0, i32 3
  store ptr %404, ptr %405, align 8, !tbaa !83
  %406 = icmp eq ptr %404, null
  br i1 %406, label %416, label %407, !prof !105

407:                                              ; preds = %403
  %408 = getelementptr inbounds %struct.et_occ, ptr %404, i64 0, i32 1
  store ptr %370, ptr %408, align 8, !tbaa !87
  store ptr %370, ptr %367, align 8, !tbaa !84
  store ptr %6, ptr %375, align 8, !tbaa !87
  %409 = getelementptr inbounds %struct.et_occ, ptr %404, i64 0, i32 5
  %410 = load i32, ptr %409, align 4, !tbaa !74
  %411 = add nsw i32 %410, %371
  store i32 %411, ptr %409, align 4, !tbaa !74
  %412 = getelementptr inbounds %struct.et_occ, ptr %404, i64 0, i32 4
  %413 = load i32, ptr %412, align 8, !tbaa !90
  %414 = add nsw i32 %413, %371
  store i32 %414, ptr %412, align 8, !tbaa !90
  br label %417

415:                                              ; preds = %392
  store ptr %370, ptr %368, align 8, !tbaa !83
  store ptr %6, ptr %375, align 8, !tbaa !87
  br label %417

416:                                              ; preds = %403
  store ptr %370, ptr %367, align 8, !tbaa !84
  store ptr %6, ptr %375, align 8, !tbaa !87
  br label %417

417:                                              ; preds = %416, %415, %407, %395
  %418 = load i32, ptr %372, align 8, !tbaa !90
  %419 = load i32, ptr %387, align 4, !tbaa !74
  %420 = add i32 %418, %371
  %421 = sub i32 %419, %420
  store i32 %421, ptr %387, align 4, !tbaa !74
  store i32 %379, ptr %372, align 8, !tbaa !90
  store ptr null, ptr %359, align 8, !tbaa !87
  %422 = load ptr, ptr %389, align 8, !tbaa !84
  %423 = icmp eq ptr %422, null
  br i1 %423, label %434, label %424, !prof !106

424:                                              ; preds = %417
  %425 = getelementptr inbounds %struct.et_occ, ptr %370, i64 0, i32 3
  %426 = load ptr, ptr %425, align 8, !tbaa !83
  %427 = icmp eq ptr %426, null
  br i1 %427, label %437, label %428, !prof !107

428:                                              ; preds = %424
  %429 = getelementptr inbounds %struct.et_occ, ptr %422, i64 0, i32 5
  %430 = load i32, ptr %429, align 4, !tbaa !74
  %431 = getelementptr inbounds %struct.et_occ, ptr %426, i64 0, i32 5
  %432 = load i32, ptr %431, align 4, !tbaa !74
  %433 = icmp sgt i32 %430, %432
  br i1 %433, label %434, label %437, !prof !108

434:                                              ; preds = %428, %417
  %435 = getelementptr inbounds %struct.et_occ, ptr %370, i64 0, i32 3
  %436 = load ptr, ptr %435, align 8, !tbaa !83
  br label %437

437:                                              ; preds = %434, %428, %424
  %438 = phi ptr [ %436, %434 ], [ %422, %428 ], [ %422, %424 ]
  %439 = icmp eq ptr %438, null
  br i1 %439, label %448, label %440, !prof !109

440:                                              ; preds = %437
  %441 = getelementptr inbounds %struct.et_occ, ptr %438, i64 0, i32 5
  %442 = load i32, ptr %441, align 4, !tbaa !74
  %443 = icmp slt i32 %442, 0
  br i1 %443, label %444, label %448, !prof !110

444:                                              ; preds = %440
  %445 = sub i32 %442, %371
  store i32 %445, ptr %387, align 4, !tbaa !74
  %446 = getelementptr inbounds %struct.et_occ, ptr %438, i64 0, i32 6
  %447 = load ptr, ptr %446, align 8, !tbaa !73
  br label %695

448:                                              ; preds = %440, %437
  store i32 %379, ptr %387, align 4, !tbaa !74
  br label %695

449:                                              ; preds = %369
  %450 = getelementptr inbounds %struct.et_occ, ptr %376, i64 0, i32 4
  br i1 %364, label %457, label %451, !prof !111

451:                                              ; preds = %449
  %452 = load i32, ptr %450, align 8, !tbaa !90
  %453 = add nsw i32 %452, %373
  %454 = load i32, ptr %365, align 4, !tbaa !74
  %455 = add nsw i32 %454, %453
  store i32 %455, ptr %365, align 4, !tbaa !74
  %456 = add nsw i32 %453, %371
  store i32 %456, ptr %363, align 8, !tbaa !90
  br label %457

457:                                              ; preds = %451, %449
  %458 = getelementptr inbounds %struct.et_occ, ptr %376, i64 0, i32 6
  %459 = load ptr, ptr %458, align 8, !tbaa !73
  store ptr %459, ptr %366, align 8, !tbaa !73
  %460 = getelementptr inbounds %struct.et_occ, ptr %376, i64 0, i32 5
  %461 = load i32, ptr %460, align 4, !tbaa !74
  store i32 %461, ptr %365, align 4, !tbaa !74
  %462 = getelementptr inbounds %struct.et_occ, ptr %376, i64 0, i32 1
  %463 = load ptr, ptr %462, align 8, !tbaa !87
  %464 = getelementptr inbounds %struct.et_occ, ptr %376, i64 0, i32 2
  %465 = load ptr, ptr %464, align 8, !tbaa !84
  %466 = icmp eq ptr %465, %370
  %467 = getelementptr inbounds %struct.et_occ, ptr %370, i64 0, i32 2
  %468 = load ptr, ptr %467, align 8, !tbaa !84
  %469 = icmp eq ptr %468, %6
  br i1 %466, label %470, label %540, !prof !112

470:                                              ; preds = %457
  br i1 %469, label %471, label %503, !prof !113

471:                                              ; preds = %470
  %472 = getelementptr inbounds %struct.et_occ, ptr %370, i64 0, i32 3
  %473 = load ptr, ptr %472, align 8, !tbaa !83
  store ptr %473, ptr %464, align 8, !tbaa !84
  %474 = icmp eq ptr %473, null
  br i1 %474, label %477, label %475, !prof !114

475:                                              ; preds = %471
  %476 = getelementptr inbounds %struct.et_occ, ptr %473, i64 0, i32 1
  store ptr %376, ptr %476, align 8, !tbaa !87
  br label %477

477:                                              ; preds = %475, %471
  %478 = load ptr, ptr %368, align 8, !tbaa !83
  store ptr %478, ptr %467, align 8, !tbaa !84
  %479 = icmp eq ptr %478, null
  br i1 %479, label %482, label %480, !prof !115

480:                                              ; preds = %477
  %481 = getelementptr inbounds %struct.et_occ, ptr %478, i64 0, i32 1
  store ptr %370, ptr %481, align 8, !tbaa !87
  br label %482

482:                                              ; preds = %480, %477
  store ptr %370, ptr %368, align 8, !tbaa !83
  store ptr %6, ptr %375, align 8, !tbaa !87
  store ptr %376, ptr %472, align 8, !tbaa !83
  store ptr %370, ptr %462, align 8, !tbaa !87
  %483 = sub nsw i32 0, %371
  %484 = load i32, ptr %372, align 8, !tbaa !90
  %485 = getelementptr inbounds %struct.et_occ, ptr %370, i64 0, i32 5
  %486 = load i32, ptr %485, align 4, !tbaa !74
  %487 = add i32 %484, %371
  %488 = sub i32 %486, %487
  store i32 %488, ptr %485, align 4, !tbaa !74
  store i32 %483, ptr %372, align 8, !tbaa !90
  br i1 %479, label %496, label %489, !prof !115

489:                                              ; preds = %482
  %490 = getelementptr inbounds %struct.et_occ, ptr %478, i64 0, i32 5
  %491 = load i32, ptr %490, align 4, !tbaa !74
  %492 = add nsw i32 %491, %371
  store i32 %492, ptr %490, align 4, !tbaa !74
  %493 = getelementptr inbounds %struct.et_occ, ptr %478, i64 0, i32 4
  %494 = load i32, ptr %493, align 8, !tbaa !90
  %495 = add nsw i32 %494, %371
  store i32 %495, ptr %493, align 8, !tbaa !90
  br label %496

496:                                              ; preds = %489, %482
  %497 = load i32, ptr %450, align 8, !tbaa !90
  %498 = load i32, ptr %460, align 4, !tbaa !74
  %499 = add i32 %497, %373
  %500 = sub i32 %498, %499
  store i32 %500, ptr %460, align 4, !tbaa !74
  store i32 %374, ptr %450, align 8, !tbaa !90
  %501 = load ptr, ptr %464, align 8, !tbaa !84
  %502 = icmp eq ptr %501, null
  br i1 %502, label %620, label %611, !prof !114

503:                                              ; preds = %470
  %504 = load ptr, ptr %368, align 8, !tbaa !83
  store ptr %504, ptr %464, align 8, !tbaa !84
  %505 = icmp eq ptr %504, null
  br i1 %505, label %508, label %506, !prof !116

506:                                              ; preds = %503
  %507 = getelementptr inbounds %struct.et_occ, ptr %504, i64 0, i32 1
  store ptr %376, ptr %507, align 8, !tbaa !87
  br label %508

508:                                              ; preds = %506, %503
  %509 = load ptr, ptr %367, align 8, !tbaa !84
  %510 = getelementptr inbounds %struct.et_occ, ptr %370, i64 0, i32 3
  store ptr %509, ptr %510, align 8, !tbaa !83
  %511 = icmp eq ptr %509, null
  br i1 %511, label %514, label %512, !prof !117

512:                                              ; preds = %508
  %513 = getelementptr inbounds %struct.et_occ, ptr %509, i64 0, i32 1
  store ptr %370, ptr %513, align 8, !tbaa !87
  br label %514

514:                                              ; preds = %512, %508
  store ptr %370, ptr %367, align 8, !tbaa !84
  store ptr %6, ptr %375, align 8, !tbaa !87
  store ptr %376, ptr %368, align 8, !tbaa !83
  store ptr %6, ptr %462, align 8, !tbaa !87
  %515 = sub nsw i32 0, %371
  %516 = load i32, ptr %372, align 8, !tbaa !90
  %517 = getelementptr inbounds %struct.et_occ, ptr %370, i64 0, i32 5
  %518 = load i32, ptr %517, align 4, !tbaa !74
  %519 = add i32 %516, %371
  %520 = sub i32 %518, %519
  store i32 %520, ptr %517, align 4, !tbaa !74
  store i32 %515, ptr %372, align 8, !tbaa !90
  %521 = load ptr, ptr %510, align 8, !tbaa !83
  %522 = icmp eq ptr %521, null
  br i1 %522, label %530, label %523, !prof !117

523:                                              ; preds = %514
  %524 = getelementptr inbounds %struct.et_occ, ptr %521, i64 0, i32 5
  %525 = load i32, ptr %524, align 4, !tbaa !74
  %526 = add nsw i32 %525, %371
  store i32 %526, ptr %524, align 4, !tbaa !74
  %527 = getelementptr inbounds %struct.et_occ, ptr %521, i64 0, i32 4
  %528 = load i32, ptr %527, align 8, !tbaa !90
  %529 = add nsw i32 %528, %371
  store i32 %529, ptr %527, align 8, !tbaa !90
  br label %530

530:                                              ; preds = %523, %514
  %531 = sub nsw i32 %515, %373
  %532 = load i32, ptr %450, align 8, !tbaa !90
  %533 = sub i32 %531, %532
  %534 = load i32, ptr %460, align 4, !tbaa !74
  %535 = add nsw i32 %533, %534
  store i32 %535, ptr %460, align 4, !tbaa !74
  store i32 %531, ptr %450, align 8, !tbaa !90
  %536 = load ptr, ptr %464, align 8, !tbaa !84
  %537 = icmp eq ptr %536, null
  br i1 %537, label %620, label %538, !prof !116

538:                                              ; preds = %530
  %539 = add nsw i32 %373, %371
  br label %611

540:                                              ; preds = %457
  br i1 %469, label %541, label %578, !prof !118

541:                                              ; preds = %540
  %542 = load ptr, ptr %367, align 8, !tbaa !84
  %543 = getelementptr inbounds %struct.et_occ, ptr %376, i64 0, i32 3
  store ptr %542, ptr %543, align 8, !tbaa !83
  %544 = icmp eq ptr %542, null
  br i1 %544, label %547, label %545, !prof !119

545:                                              ; preds = %541
  %546 = getelementptr inbounds %struct.et_occ, ptr %542, i64 0, i32 1
  store ptr %376, ptr %546, align 8, !tbaa !87
  br label %547

547:                                              ; preds = %545, %541
  %548 = load ptr, ptr %368, align 8, !tbaa !83
  store ptr %548, ptr %467, align 8, !tbaa !84
  %549 = icmp eq ptr %548, null
  br i1 %549, label %552, label %550, !prof !120

550:                                              ; preds = %547
  %551 = getelementptr inbounds %struct.et_occ, ptr %548, i64 0, i32 1
  store ptr %370, ptr %551, align 8, !tbaa !87
  br label %552

552:                                              ; preds = %550, %547
  store ptr %376, ptr %367, align 8, !tbaa !84
  store ptr %6, ptr %462, align 8, !tbaa !87
  store ptr %370, ptr %368, align 8, !tbaa !83
  store ptr %6, ptr %375, align 8, !tbaa !87
  %553 = sub nsw i32 0, %371
  %554 = load i32, ptr %372, align 8, !tbaa !90
  %555 = getelementptr inbounds %struct.et_occ, ptr %370, i64 0, i32 5
  %556 = load i32, ptr %555, align 4, !tbaa !74
  %557 = add i32 %554, %371
  %558 = sub i32 %556, %557
  store i32 %558, ptr %555, align 4, !tbaa !74
  store i32 %553, ptr %372, align 8, !tbaa !90
  %559 = load ptr, ptr %467, align 8, !tbaa !84
  %560 = icmp eq ptr %559, null
  br i1 %560, label %568, label %561, !prof !120

561:                                              ; preds = %552
  %562 = getelementptr inbounds %struct.et_occ, ptr %559, i64 0, i32 5
  %563 = load i32, ptr %562, align 4, !tbaa !74
  %564 = add nsw i32 %563, %371
  store i32 %564, ptr %562, align 4, !tbaa !74
  %565 = getelementptr inbounds %struct.et_occ, ptr %559, i64 0, i32 4
  %566 = load i32, ptr %565, align 8, !tbaa !90
  %567 = add nsw i32 %566, %371
  store i32 %567, ptr %565, align 8, !tbaa !90
  br label %568

568:                                              ; preds = %561, %552
  %569 = sub nsw i32 %553, %373
  %570 = load i32, ptr %450, align 8, !tbaa !90
  %571 = sub i32 %569, %570
  %572 = load i32, ptr %460, align 4, !tbaa !74
  %573 = add nsw i32 %571, %572
  store i32 %573, ptr %460, align 4, !tbaa !74
  store i32 %569, ptr %450, align 8, !tbaa !90
  %574 = load ptr, ptr %543, align 8, !tbaa !83
  %575 = icmp eq ptr %574, null
  br i1 %575, label %620, label %576, !prof !119

576:                                              ; preds = %568
  %577 = add nsw i32 %373, %371
  br label %611

578:                                              ; preds = %540
  %579 = getelementptr inbounds %struct.et_occ, ptr %376, i64 0, i32 3
  store ptr %468, ptr %579, align 8, !tbaa !83
  %580 = icmp eq ptr %468, null
  br i1 %580, label %583, label %581, !prof !121

581:                                              ; preds = %578
  %582 = getelementptr inbounds %struct.et_occ, ptr %468, i64 0, i32 1
  store ptr %376, ptr %582, align 8, !tbaa !87
  br label %583

583:                                              ; preds = %581, %578
  %584 = load ptr, ptr %367, align 8, !tbaa !84
  %585 = getelementptr inbounds %struct.et_occ, ptr %370, i64 0, i32 3
  store ptr %584, ptr %585, align 8, !tbaa !83
  %586 = icmp eq ptr %584, null
  br i1 %586, label %589, label %587, !prof !122

587:                                              ; preds = %583
  %588 = getelementptr inbounds %struct.et_occ, ptr %584, i64 0, i32 1
  store ptr %370, ptr %588, align 8, !tbaa !87
  br label %589

589:                                              ; preds = %587, %583
  store ptr %370, ptr %367, align 8, !tbaa !84
  store ptr %6, ptr %375, align 8, !tbaa !87
  store ptr %376, ptr %467, align 8, !tbaa !84
  store ptr %370, ptr %462, align 8, !tbaa !87
  %590 = sub nsw i32 0, %371
  %591 = load i32, ptr %372, align 8, !tbaa !90
  %592 = getelementptr inbounds %struct.et_occ, ptr %370, i64 0, i32 5
  %593 = load i32, ptr %592, align 4, !tbaa !74
  %594 = add i32 %591, %371
  %595 = sub i32 %593, %594
  store i32 %595, ptr %592, align 4, !tbaa !74
  store i32 %590, ptr %372, align 8, !tbaa !90
  br i1 %586, label %603, label %596, !prof !122

596:                                              ; preds = %589
  %597 = getelementptr inbounds %struct.et_occ, ptr %584, i64 0, i32 5
  %598 = load i32, ptr %597, align 4, !tbaa !74
  %599 = add nsw i32 %598, %371
  store i32 %599, ptr %597, align 4, !tbaa !74
  %600 = getelementptr inbounds %struct.et_occ, ptr %584, i64 0, i32 4
  %601 = load i32, ptr %600, align 8, !tbaa !90
  %602 = add nsw i32 %601, %371
  store i32 %602, ptr %600, align 8, !tbaa !90
  br label %603

603:                                              ; preds = %596, %589
  %604 = sub nsw i32 0, %373
  %605 = load i32, ptr %450, align 8, !tbaa !90
  %606 = load i32, ptr %460, align 4, !tbaa !74
  %607 = add i32 %605, %373
  %608 = sub i32 %606, %607
  store i32 %608, ptr %460, align 4, !tbaa !74
  store i32 %604, ptr %450, align 8, !tbaa !90
  %609 = load ptr, ptr %579, align 8, !tbaa !83
  %610 = icmp eq ptr %609, null
  br i1 %610, label %620, label %611, !prof !121

611:                                              ; preds = %603, %496, %538, %576
  %612 = phi ptr [ %536, %538 ], [ %574, %576 ], [ %501, %496 ], [ %609, %603 ]
  %613 = phi i32 [ %539, %538 ], [ %577, %576 ], [ %373, %496 ], [ %373, %603 ]
  %614 = getelementptr inbounds %struct.et_occ, ptr %612, i64 0, i32 5
  %615 = load i32, ptr %614, align 4, !tbaa !74
  %616 = add nsw i32 %615, %613
  store i32 %616, ptr %614, align 4, !tbaa !74
  %617 = getelementptr inbounds %struct.et_occ, ptr %612, i64 0, i32 4
  %618 = load i32, ptr %617, align 8, !tbaa !90
  %619 = add nsw i32 %618, %613
  store i32 %619, ptr %617, align 8, !tbaa !90
  br label %620

620:                                              ; preds = %611, %603, %568, %530, %496
  store ptr %463, ptr %359, align 8, !tbaa !87
  %621 = icmp eq ptr %463, null
  br i1 %621, label %628, label %622, !prof !123

622:                                              ; preds = %620
  %623 = getelementptr inbounds %struct.et_occ, ptr %463, i64 0, i32 2
  %624 = load ptr, ptr %623, align 8, !tbaa !84
  %625 = icmp eq ptr %624, %376
  %626 = getelementptr inbounds %struct.et_occ, ptr %463, i64 0, i32 3
  %627 = select i1 %625, ptr %623, ptr %626, !prof !124
  store ptr %6, ptr %627, align 8, !tbaa !47
  br label %628

628:                                              ; preds = %622, %620
  %629 = load ptr, ptr %464, align 8, !tbaa !84
  %630 = icmp eq ptr %629, null
  br i1 %630, label %641, label %631, !prof !125

631:                                              ; preds = %628
  %632 = getelementptr inbounds %struct.et_occ, ptr %376, i64 0, i32 3
  %633 = load ptr, ptr %632, align 8, !tbaa !83
  %634 = icmp eq ptr %633, null
  br i1 %634, label %644, label %635, !prof !126

635:                                              ; preds = %631
  %636 = getelementptr inbounds %struct.et_occ, ptr %629, i64 0, i32 5
  %637 = load i32, ptr %636, align 4, !tbaa !74
  %638 = getelementptr inbounds %struct.et_occ, ptr %633, i64 0, i32 5
  %639 = load i32, ptr %638, align 4, !tbaa !74
  %640 = icmp sgt i32 %637, %639
  br i1 %640, label %641, label %644, !prof !127

641:                                              ; preds = %635, %628
  %642 = getelementptr inbounds %struct.et_occ, ptr %376, i64 0, i32 3
  %643 = load ptr, ptr %642, align 8, !tbaa !83
  br label %644

644:                                              ; preds = %641, %635, %631
  %645 = phi ptr [ %643, %641 ], [ %629, %635 ], [ %629, %631 ]
  %646 = icmp eq ptr %645, null
  br i1 %646, label %656, label %647, !prof !128

647:                                              ; preds = %644
  %648 = getelementptr inbounds %struct.et_occ, ptr %645, i64 0, i32 5
  %649 = load i32, ptr %648, align 4, !tbaa !74
  %650 = icmp slt i32 %649, 0
  br i1 %650, label %651, label %656, !prof !129

651:                                              ; preds = %647
  %652 = load i32, ptr %450, align 8, !tbaa !90
  %653 = add nsw i32 %652, %649
  store i32 %653, ptr %460, align 4, !tbaa !74
  %654 = getelementptr inbounds %struct.et_occ, ptr %645, i64 0, i32 6
  %655 = load ptr, ptr %654, align 8, !tbaa !73
  br label %658

656:                                              ; preds = %647, %644
  %657 = load i32, ptr %450, align 8, !tbaa !90
  store i32 %657, ptr %460, align 4, !tbaa !74
  br label %658

658:                                              ; preds = %656, %651
  %659 = phi ptr [ %655, %651 ], [ %376, %656 ]
  store ptr %659, ptr %458, align 8, !tbaa !73
  %660 = getelementptr inbounds %struct.et_occ, ptr %370, i64 0, i32 2
  %661 = load ptr, ptr %660, align 8, !tbaa !84
  %662 = icmp eq ptr %661, null
  br i1 %662, label %673, label %663, !prof !130

663:                                              ; preds = %658
  %664 = getelementptr inbounds %struct.et_occ, ptr %370, i64 0, i32 3
  %665 = load ptr, ptr %664, align 8, !tbaa !83
  %666 = icmp eq ptr %665, null
  br i1 %666, label %676, label %667, !prof !131

667:                                              ; preds = %663
  %668 = getelementptr inbounds %struct.et_occ, ptr %661, i64 0, i32 5
  %669 = load i32, ptr %668, align 4, !tbaa !74
  %670 = getelementptr inbounds %struct.et_occ, ptr %665, i64 0, i32 5
  %671 = load i32, ptr %670, align 4, !tbaa !74
  %672 = icmp sgt i32 %669, %671
  br i1 %672, label %673, label %676, !prof !132

673:                                              ; preds = %667, %658
  %674 = getelementptr inbounds %struct.et_occ, ptr %370, i64 0, i32 3
  %675 = load ptr, ptr %674, align 8, !tbaa !83
  br label %676

676:                                              ; preds = %673, %667, %663
  %677 = phi ptr [ %675, %673 ], [ %661, %667 ], [ %661, %663 ]
  %678 = icmp eq ptr %677, null
  br i1 %678, label %689, label %679, !prof !133

679:                                              ; preds = %676
  %680 = getelementptr inbounds %struct.et_occ, ptr %677, i64 0, i32 5
  %681 = load i32, ptr %680, align 4, !tbaa !74
  %682 = icmp slt i32 %681, 0
  br i1 %682, label %683, label %689, !prof !134

683:                                              ; preds = %679
  %684 = load i32, ptr %372, align 8, !tbaa !90
  %685 = add nsw i32 %684, %681
  %686 = getelementptr inbounds %struct.et_occ, ptr %370, i64 0, i32 5
  store i32 %685, ptr %686, align 4, !tbaa !74
  %687 = getelementptr inbounds %struct.et_occ, ptr %677, i64 0, i32 6
  %688 = load ptr, ptr %687, align 8, !tbaa !73
  br label %692

689:                                              ; preds = %679, %676
  %690 = load i32, ptr %372, align 8, !tbaa !90
  %691 = getelementptr inbounds %struct.et_occ, ptr %370, i64 0, i32 5
  store i32 %690, ptr %691, align 4, !tbaa !74
  br label %692

692:                                              ; preds = %689, %683
  %693 = phi ptr [ %370, %689 ], [ %688, %683 ]
  %694 = getelementptr inbounds %struct.et_occ, ptr %370, i64 0, i32 6
  store ptr %693, ptr %694, align 8, !tbaa !73
  br i1 %621, label %697, label %369, !prof !135, !llvm.loop !136

695:                                              ; preds = %448, %444
  %696 = phi ptr [ %447, %444 ], [ %370, %448 ]
  store ptr %696, ptr %385, align 8, !tbaa !73
  br label %697

697:                                              ; preds = %692, %695, %358
  %698 = icmp eq ptr %349, %6
  br i1 %698, label %702, label %699, !prof !161

699:                                              ; preds = %697
  %700 = load ptr, ptr %354, align 8, !tbaa !87
  %701 = icmp eq ptr %700, null
  br i1 %701, label %712, label %702, !prof !162

702:                                              ; preds = %699, %697
  br i1 %355, label %705, label %703, !prof !163

703:                                              ; preds = %702
  %704 = getelementptr inbounds %struct.et_occ, ptr %351, i64 0, i32 1
  store ptr %4, ptr %704, align 8, !tbaa !87
  br label %705

705:                                              ; preds = %703, %702
  store ptr %6, ptr %348, align 8, !tbaa !84
  %706 = icmp eq ptr %6, null
  br i1 %706, label %708, label %707, !prof !163

707:                                              ; preds = %705
  store ptr %4, ptr %359, align 8, !tbaa !87
  br label %708

708:                                              ; preds = %705, %707
  %709 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 4
  %710 = load i32, ptr %709, align 8, !tbaa !90
  %711 = icmp slt i32 %710, 1
  br i1 %711, label %732, label %722, !prof !164

712:                                              ; preds = %699
  store ptr %4, ptr %354, align 8, !tbaa !87
  br i1 %355, label %721, label %713, !prof !165

713:                                              ; preds = %712
  %714 = getelementptr inbounds %struct.et_occ, ptr %351, i64 0, i32 1
  %715 = load ptr, ptr %714, align 8, !tbaa !87
  %716 = icmp eq ptr %715, null
  br i1 %716, label %720, label %717, !prof !166

717:                                              ; preds = %713
  store ptr %6, ptr %350, align 8, !tbaa !83
  %718 = icmp eq ptr %6, null
  br i1 %718, label %732, label %719, !prof !167

719:                                              ; preds = %717
  store ptr %4, ptr %359, align 8, !tbaa !87
  br label %732

720:                                              ; preds = %713
  store ptr %351, ptr %350, align 8, !tbaa !83
  store ptr %4, ptr %714, align 8, !tbaa !87
  br label %732

721:                                              ; preds = %712
  store ptr %351, ptr %350, align 8, !tbaa !83
  br label %732

722:                                              ; preds = %708
  %723 = getelementptr inbounds %struct.et_occ, ptr %6, i64 0, i32 3
  %724 = load ptr, ptr %723, align 8, !tbaa !83
  %725 = icmp eq ptr %724, null
  br i1 %725, label %732, label %726, !prof !168

726:                                              ; preds = %722
  %727 = getelementptr inbounds %struct.et_occ, ptr %724, i64 0, i32 5
  %728 = load i32, ptr %727, align 4, !tbaa !74
  %729 = add nsw i32 %728, %710
  %730 = icmp sgt i32 %729, -1
  %731 = zext i1 %730 to i8
  br label %732

732:                                              ; preds = %720, %721, %719, %717, %722, %726, %708, %347, %2
  %733 = phi i8 [ 1, %2 ], [ 0, %347 ], [ 0, %708 ], [ 1, %722 ], [ %731, %726 ], [ 0, %717 ], [ 0, %719 ], [ 0, %721 ], [ 0, %720 ]
  ret i8 %733
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @et_root(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !169 {
  %2 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.et_occ, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !87
  %6 = icmp eq ptr %5, null
  br i1 %6, label %342, label %7, !prof !100

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.et_occ, ptr %3, i64 0, i32 4
  %9 = icmp eq ptr %3, null
  %10 = getelementptr inbounds %struct.et_occ, ptr %3, i64 0, i32 5
  %11 = getelementptr inbounds %struct.et_occ, ptr %3, i64 0, i32 6
  %12 = getelementptr inbounds %struct.et_occ, ptr %3, i64 0, i32 2
  %13 = getelementptr inbounds %struct.et_occ, ptr %3, i64 0, i32 3
  br label %14

14:                                               ; preds = %337, %7
  %15 = phi ptr [ %5, %7 ], [ %108, %337 ]
  %16 = load i32, ptr %8, align 8, !tbaa !90
  %17 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !90
  %19 = sub i32 0, %18
  %20 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !87
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %94, !prof !101

23:                                               ; preds = %14
  %24 = sub i32 0, %16
  br i1 %9, label %29, label %25, !prof !102

25:                                               ; preds = %23
  %26 = load i32, ptr %10, align 4, !tbaa !74
  %27 = add nsw i32 %26, %18
  store i32 %27, ptr %10, align 4, !tbaa !74
  %28 = add nsw i32 %18, %16
  store i32 %28, ptr %8, align 8, !tbaa !90
  br label %29

29:                                               ; preds = %25, %23
  %30 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !73
  store ptr %31, ptr %11, align 8, !tbaa !73
  %32 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !74
  store i32 %33, ptr %10, align 4, !tbaa !74
  %34 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !84
  %36 = icmp eq ptr %35, %3
  br i1 %36, label %37, label %48, !prof !103

37:                                               ; preds = %29
  %38 = load ptr, ptr %13, align 8, !tbaa !83
  store ptr %38, ptr %34, align 8, !tbaa !84
  %39 = icmp eq ptr %38, null
  br i1 %39, label %60, label %40, !prof !104

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.et_occ, ptr %38, i64 0, i32 1
  store ptr %15, ptr %41, align 8, !tbaa !87
  store ptr %15, ptr %13, align 8, !tbaa !83
  store ptr %3, ptr %20, align 8, !tbaa !87
  %42 = getelementptr inbounds %struct.et_occ, ptr %38, i64 0, i32 5
  %43 = load i32, ptr %42, align 4, !tbaa !74
  %44 = add nsw i32 %43, %16
  store i32 %44, ptr %42, align 4, !tbaa !74
  %45 = getelementptr inbounds %struct.et_occ, ptr %38, i64 0, i32 4
  %46 = load i32, ptr %45, align 8, !tbaa !90
  %47 = add nsw i32 %46, %16
  store i32 %47, ptr %45, align 8, !tbaa !90
  br label %62

48:                                               ; preds = %29
  %49 = load ptr, ptr %12, align 8, !tbaa !84
  %50 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !83
  %51 = icmp eq ptr %49, null
  br i1 %51, label %61, label %52, !prof !105

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.et_occ, ptr %49, i64 0, i32 1
  store ptr %15, ptr %53, align 8, !tbaa !87
  store ptr %15, ptr %12, align 8, !tbaa !84
  store ptr %3, ptr %20, align 8, !tbaa !87
  %54 = getelementptr inbounds %struct.et_occ, ptr %49, i64 0, i32 5
  %55 = load i32, ptr %54, align 4, !tbaa !74
  %56 = add nsw i32 %55, %16
  store i32 %56, ptr %54, align 4, !tbaa !74
  %57 = getelementptr inbounds %struct.et_occ, ptr %49, i64 0, i32 4
  %58 = load i32, ptr %57, align 8, !tbaa !90
  %59 = add nsw i32 %58, %16
  store i32 %59, ptr %57, align 8, !tbaa !90
  br label %62

60:                                               ; preds = %37
  store ptr %15, ptr %13, align 8, !tbaa !83
  store ptr %3, ptr %20, align 8, !tbaa !87
  br label %62

61:                                               ; preds = %48
  store ptr %15, ptr %12, align 8, !tbaa !84
  store ptr %3, ptr %20, align 8, !tbaa !87
  br label %62

62:                                               ; preds = %61, %60, %52, %40
  %63 = load i32, ptr %17, align 8, !tbaa !90
  %64 = load i32, ptr %32, align 4, !tbaa !74
  %65 = add i32 %63, %16
  %66 = sub i32 %64, %65
  store i32 %66, ptr %32, align 4, !tbaa !74
  store i32 %24, ptr %17, align 8, !tbaa !90
  store ptr null, ptr %4, align 8, !tbaa !87
  %67 = load ptr, ptr %34, align 8, !tbaa !84
  %68 = icmp eq ptr %67, null
  br i1 %68, label %79, label %69, !prof !106

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !83
  %72 = icmp eq ptr %71, null
  br i1 %72, label %82, label %73, !prof !107

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.et_occ, ptr %67, i64 0, i32 5
  %75 = load i32, ptr %74, align 4, !tbaa !74
  %76 = getelementptr inbounds %struct.et_occ, ptr %71, i64 0, i32 5
  %77 = load i32, ptr %76, align 4, !tbaa !74
  %78 = icmp sgt i32 %75, %77
  br i1 %78, label %79, label %82, !prof !108

79:                                               ; preds = %73, %62
  %80 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !83
  br label %82

82:                                               ; preds = %79, %73, %69
  %83 = phi ptr [ %81, %79 ], [ %67, %73 ], [ %67, %69 ]
  %84 = icmp eq ptr %83, null
  br i1 %84, label %93, label %85, !prof !109

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.et_occ, ptr %83, i64 0, i32 5
  %87 = load i32, ptr %86, align 4, !tbaa !74
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %93, !prof !110

89:                                               ; preds = %85
  %90 = sub i32 %87, %16
  store i32 %90, ptr %32, align 4, !tbaa !74
  %91 = getelementptr inbounds %struct.et_occ, ptr %83, i64 0, i32 6
  %92 = load ptr, ptr %91, align 8, !tbaa !73
  br label %340

93:                                               ; preds = %85, %82
  store i32 %24, ptr %32, align 4, !tbaa !74
  br label %340

94:                                               ; preds = %14
  %95 = getelementptr inbounds %struct.et_occ, ptr %21, i64 0, i32 4
  br i1 %9, label %102, label %96, !prof !111

96:                                               ; preds = %94
  %97 = load i32, ptr %95, align 8, !tbaa !90
  %98 = add nsw i32 %97, %18
  %99 = load i32, ptr %10, align 4, !tbaa !74
  %100 = add nsw i32 %99, %98
  store i32 %100, ptr %10, align 4, !tbaa !74
  %101 = add nsw i32 %98, %16
  store i32 %101, ptr %8, align 8, !tbaa !90
  br label %102

102:                                              ; preds = %96, %94
  %103 = getelementptr inbounds %struct.et_occ, ptr %21, i64 0, i32 6
  %104 = load ptr, ptr %103, align 8, !tbaa !73
  store ptr %104, ptr %11, align 8, !tbaa !73
  %105 = getelementptr inbounds %struct.et_occ, ptr %21, i64 0, i32 5
  %106 = load i32, ptr %105, align 4, !tbaa !74
  store i32 %106, ptr %10, align 4, !tbaa !74
  %107 = getelementptr inbounds %struct.et_occ, ptr %21, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !87
  %109 = getelementptr inbounds %struct.et_occ, ptr %21, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !84
  %111 = icmp eq ptr %110, %15
  %112 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !84
  %114 = icmp eq ptr %113, %3
  br i1 %111, label %115, label %185, !prof !112

115:                                              ; preds = %102
  br i1 %114, label %116, label %148, !prof !113

116:                                              ; preds = %115
  %117 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !83
  store ptr %118, ptr %109, align 8, !tbaa !84
  %119 = icmp eq ptr %118, null
  br i1 %119, label %122, label %120, !prof !114

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.et_occ, ptr %118, i64 0, i32 1
  store ptr %21, ptr %121, align 8, !tbaa !87
  br label %122

122:                                              ; preds = %120, %116
  %123 = load ptr, ptr %13, align 8, !tbaa !83
  store ptr %123, ptr %112, align 8, !tbaa !84
  %124 = icmp eq ptr %123, null
  br i1 %124, label %127, label %125, !prof !115

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.et_occ, ptr %123, i64 0, i32 1
  store ptr %15, ptr %126, align 8, !tbaa !87
  br label %127

127:                                              ; preds = %125, %122
  store ptr %15, ptr %13, align 8, !tbaa !83
  store ptr %3, ptr %20, align 8, !tbaa !87
  store ptr %21, ptr %117, align 8, !tbaa !83
  store ptr %15, ptr %107, align 8, !tbaa !87
  %128 = sub nsw i32 0, %16
  %129 = load i32, ptr %17, align 8, !tbaa !90
  %130 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 5
  %131 = load i32, ptr %130, align 4, !tbaa !74
  %132 = add i32 %129, %16
  %133 = sub i32 %131, %132
  store i32 %133, ptr %130, align 4, !tbaa !74
  store i32 %128, ptr %17, align 8, !tbaa !90
  br i1 %124, label %141, label %134, !prof !115

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.et_occ, ptr %123, i64 0, i32 5
  %136 = load i32, ptr %135, align 4, !tbaa !74
  %137 = add nsw i32 %136, %16
  store i32 %137, ptr %135, align 4, !tbaa !74
  %138 = getelementptr inbounds %struct.et_occ, ptr %123, i64 0, i32 4
  %139 = load i32, ptr %138, align 8, !tbaa !90
  %140 = add nsw i32 %139, %16
  store i32 %140, ptr %138, align 8, !tbaa !90
  br label %141

141:                                              ; preds = %134, %127
  %142 = load i32, ptr %95, align 8, !tbaa !90
  %143 = load i32, ptr %105, align 4, !tbaa !74
  %144 = add i32 %142, %18
  %145 = sub i32 %143, %144
  store i32 %145, ptr %105, align 4, !tbaa !74
  store i32 %19, ptr %95, align 8, !tbaa !90
  %146 = load ptr, ptr %109, align 8, !tbaa !84
  %147 = icmp eq ptr %146, null
  br i1 %147, label %265, label %256, !prof !114

148:                                              ; preds = %115
  %149 = load ptr, ptr %13, align 8, !tbaa !83
  store ptr %149, ptr %109, align 8, !tbaa !84
  %150 = icmp eq ptr %149, null
  br i1 %150, label %153, label %151, !prof !116

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.et_occ, ptr %149, i64 0, i32 1
  store ptr %21, ptr %152, align 8, !tbaa !87
  br label %153

153:                                              ; preds = %151, %148
  %154 = load ptr, ptr %12, align 8, !tbaa !84
  %155 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 3
  store ptr %154, ptr %155, align 8, !tbaa !83
  %156 = icmp eq ptr %154, null
  br i1 %156, label %159, label %157, !prof !117

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.et_occ, ptr %154, i64 0, i32 1
  store ptr %15, ptr %158, align 8, !tbaa !87
  br label %159

159:                                              ; preds = %157, %153
  store ptr %15, ptr %12, align 8, !tbaa !84
  store ptr %3, ptr %20, align 8, !tbaa !87
  store ptr %21, ptr %13, align 8, !tbaa !83
  store ptr %3, ptr %107, align 8, !tbaa !87
  %160 = sub nsw i32 0, %16
  %161 = load i32, ptr %17, align 8, !tbaa !90
  %162 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 5
  %163 = load i32, ptr %162, align 4, !tbaa !74
  %164 = add i32 %161, %16
  %165 = sub i32 %163, %164
  store i32 %165, ptr %162, align 4, !tbaa !74
  store i32 %160, ptr %17, align 8, !tbaa !90
  %166 = load ptr, ptr %155, align 8, !tbaa !83
  %167 = icmp eq ptr %166, null
  br i1 %167, label %175, label %168, !prof !117

168:                                              ; preds = %159
  %169 = getelementptr inbounds %struct.et_occ, ptr %166, i64 0, i32 5
  %170 = load i32, ptr %169, align 4, !tbaa !74
  %171 = add nsw i32 %170, %16
  store i32 %171, ptr %169, align 4, !tbaa !74
  %172 = getelementptr inbounds %struct.et_occ, ptr %166, i64 0, i32 4
  %173 = load i32, ptr %172, align 8, !tbaa !90
  %174 = add nsw i32 %173, %16
  store i32 %174, ptr %172, align 8, !tbaa !90
  br label %175

175:                                              ; preds = %168, %159
  %176 = sub nsw i32 %160, %18
  %177 = load i32, ptr %95, align 8, !tbaa !90
  %178 = sub i32 %176, %177
  %179 = load i32, ptr %105, align 4, !tbaa !74
  %180 = add nsw i32 %178, %179
  store i32 %180, ptr %105, align 4, !tbaa !74
  store i32 %176, ptr %95, align 8, !tbaa !90
  %181 = load ptr, ptr %109, align 8, !tbaa !84
  %182 = icmp eq ptr %181, null
  br i1 %182, label %265, label %183, !prof !116

183:                                              ; preds = %175
  %184 = add nsw i32 %18, %16
  br label %256

185:                                              ; preds = %102
  br i1 %114, label %186, label %223, !prof !118

186:                                              ; preds = %185
  %187 = load ptr, ptr %12, align 8, !tbaa !84
  %188 = getelementptr inbounds %struct.et_occ, ptr %21, i64 0, i32 3
  store ptr %187, ptr %188, align 8, !tbaa !83
  %189 = icmp eq ptr %187, null
  br i1 %189, label %192, label %190, !prof !119

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.et_occ, ptr %187, i64 0, i32 1
  store ptr %21, ptr %191, align 8, !tbaa !87
  br label %192

192:                                              ; preds = %190, %186
  %193 = load ptr, ptr %13, align 8, !tbaa !83
  store ptr %193, ptr %112, align 8, !tbaa !84
  %194 = icmp eq ptr %193, null
  br i1 %194, label %197, label %195, !prof !120

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.et_occ, ptr %193, i64 0, i32 1
  store ptr %15, ptr %196, align 8, !tbaa !87
  br label %197

197:                                              ; preds = %195, %192
  store ptr %21, ptr %12, align 8, !tbaa !84
  store ptr %3, ptr %107, align 8, !tbaa !87
  store ptr %15, ptr %13, align 8, !tbaa !83
  store ptr %3, ptr %20, align 8, !tbaa !87
  %198 = sub nsw i32 0, %16
  %199 = load i32, ptr %17, align 8, !tbaa !90
  %200 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 5
  %201 = load i32, ptr %200, align 4, !tbaa !74
  %202 = add i32 %199, %16
  %203 = sub i32 %201, %202
  store i32 %203, ptr %200, align 4, !tbaa !74
  store i32 %198, ptr %17, align 8, !tbaa !90
  %204 = load ptr, ptr %112, align 8, !tbaa !84
  %205 = icmp eq ptr %204, null
  br i1 %205, label %213, label %206, !prof !120

206:                                              ; preds = %197
  %207 = getelementptr inbounds %struct.et_occ, ptr %204, i64 0, i32 5
  %208 = load i32, ptr %207, align 4, !tbaa !74
  %209 = add nsw i32 %208, %16
  store i32 %209, ptr %207, align 4, !tbaa !74
  %210 = getelementptr inbounds %struct.et_occ, ptr %204, i64 0, i32 4
  %211 = load i32, ptr %210, align 8, !tbaa !90
  %212 = add nsw i32 %211, %16
  store i32 %212, ptr %210, align 8, !tbaa !90
  br label %213

213:                                              ; preds = %206, %197
  %214 = sub nsw i32 %198, %18
  %215 = load i32, ptr %95, align 8, !tbaa !90
  %216 = sub i32 %214, %215
  %217 = load i32, ptr %105, align 4, !tbaa !74
  %218 = add nsw i32 %216, %217
  store i32 %218, ptr %105, align 4, !tbaa !74
  store i32 %214, ptr %95, align 8, !tbaa !90
  %219 = load ptr, ptr %188, align 8, !tbaa !83
  %220 = icmp eq ptr %219, null
  br i1 %220, label %265, label %221, !prof !119

221:                                              ; preds = %213
  %222 = add nsw i32 %18, %16
  br label %256

223:                                              ; preds = %185
  %224 = getelementptr inbounds %struct.et_occ, ptr %21, i64 0, i32 3
  store ptr %113, ptr %224, align 8, !tbaa !83
  %225 = icmp eq ptr %113, null
  br i1 %225, label %228, label %226, !prof !121

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.et_occ, ptr %113, i64 0, i32 1
  store ptr %21, ptr %227, align 8, !tbaa !87
  br label %228

228:                                              ; preds = %226, %223
  %229 = load ptr, ptr %12, align 8, !tbaa !84
  %230 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 3
  store ptr %229, ptr %230, align 8, !tbaa !83
  %231 = icmp eq ptr %229, null
  br i1 %231, label %234, label %232, !prof !122

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.et_occ, ptr %229, i64 0, i32 1
  store ptr %15, ptr %233, align 8, !tbaa !87
  br label %234

234:                                              ; preds = %232, %228
  store ptr %15, ptr %12, align 8, !tbaa !84
  store ptr %3, ptr %20, align 8, !tbaa !87
  store ptr %21, ptr %112, align 8, !tbaa !84
  store ptr %15, ptr %107, align 8, !tbaa !87
  %235 = sub nsw i32 0, %16
  %236 = load i32, ptr %17, align 8, !tbaa !90
  %237 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 5
  %238 = load i32, ptr %237, align 4, !tbaa !74
  %239 = add i32 %236, %16
  %240 = sub i32 %238, %239
  store i32 %240, ptr %237, align 4, !tbaa !74
  store i32 %235, ptr %17, align 8, !tbaa !90
  br i1 %231, label %248, label %241, !prof !122

241:                                              ; preds = %234
  %242 = getelementptr inbounds %struct.et_occ, ptr %229, i64 0, i32 5
  %243 = load i32, ptr %242, align 4, !tbaa !74
  %244 = add nsw i32 %243, %16
  store i32 %244, ptr %242, align 4, !tbaa !74
  %245 = getelementptr inbounds %struct.et_occ, ptr %229, i64 0, i32 4
  %246 = load i32, ptr %245, align 8, !tbaa !90
  %247 = add nsw i32 %246, %16
  store i32 %247, ptr %245, align 8, !tbaa !90
  br label %248

248:                                              ; preds = %241, %234
  %249 = sub nsw i32 0, %18
  %250 = load i32, ptr %95, align 8, !tbaa !90
  %251 = load i32, ptr %105, align 4, !tbaa !74
  %252 = add i32 %250, %18
  %253 = sub i32 %251, %252
  store i32 %253, ptr %105, align 4, !tbaa !74
  store i32 %249, ptr %95, align 8, !tbaa !90
  %254 = load ptr, ptr %224, align 8, !tbaa !83
  %255 = icmp eq ptr %254, null
  br i1 %255, label %265, label %256, !prof !121

256:                                              ; preds = %248, %141, %183, %221
  %257 = phi ptr [ %181, %183 ], [ %219, %221 ], [ %146, %141 ], [ %254, %248 ]
  %258 = phi i32 [ %184, %183 ], [ %222, %221 ], [ %18, %141 ], [ %18, %248 ]
  %259 = getelementptr inbounds %struct.et_occ, ptr %257, i64 0, i32 5
  %260 = load i32, ptr %259, align 4, !tbaa !74
  %261 = add nsw i32 %260, %258
  store i32 %261, ptr %259, align 4, !tbaa !74
  %262 = getelementptr inbounds %struct.et_occ, ptr %257, i64 0, i32 4
  %263 = load i32, ptr %262, align 8, !tbaa !90
  %264 = add nsw i32 %263, %258
  store i32 %264, ptr %262, align 8, !tbaa !90
  br label %265

265:                                              ; preds = %256, %248, %213, %175, %141
  store ptr %108, ptr %4, align 8, !tbaa !87
  %266 = icmp eq ptr %108, null
  br i1 %266, label %273, label %267, !prof !123

267:                                              ; preds = %265
  %268 = getelementptr inbounds %struct.et_occ, ptr %108, i64 0, i32 2
  %269 = load ptr, ptr %268, align 8, !tbaa !84
  %270 = icmp eq ptr %269, %21
  %271 = getelementptr inbounds %struct.et_occ, ptr %108, i64 0, i32 3
  %272 = select i1 %270, ptr %268, ptr %271, !prof !124
  store ptr %3, ptr %272, align 8, !tbaa !47
  br label %273

273:                                              ; preds = %267, %265
  %274 = load ptr, ptr %109, align 8, !tbaa !84
  %275 = icmp eq ptr %274, null
  br i1 %275, label %286, label %276, !prof !125

276:                                              ; preds = %273
  %277 = getelementptr inbounds %struct.et_occ, ptr %21, i64 0, i32 3
  %278 = load ptr, ptr %277, align 8, !tbaa !83
  %279 = icmp eq ptr %278, null
  br i1 %279, label %289, label %280, !prof !126

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.et_occ, ptr %274, i64 0, i32 5
  %282 = load i32, ptr %281, align 4, !tbaa !74
  %283 = getelementptr inbounds %struct.et_occ, ptr %278, i64 0, i32 5
  %284 = load i32, ptr %283, align 4, !tbaa !74
  %285 = icmp sgt i32 %282, %284
  br i1 %285, label %286, label %289, !prof !127

286:                                              ; preds = %280, %273
  %287 = getelementptr inbounds %struct.et_occ, ptr %21, i64 0, i32 3
  %288 = load ptr, ptr %287, align 8, !tbaa !83
  br label %289

289:                                              ; preds = %286, %280, %276
  %290 = phi ptr [ %288, %286 ], [ %274, %280 ], [ %274, %276 ]
  %291 = icmp eq ptr %290, null
  br i1 %291, label %301, label %292, !prof !128

292:                                              ; preds = %289
  %293 = getelementptr inbounds %struct.et_occ, ptr %290, i64 0, i32 5
  %294 = load i32, ptr %293, align 4, !tbaa !74
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %296, label %301, !prof !129

296:                                              ; preds = %292
  %297 = load i32, ptr %95, align 8, !tbaa !90
  %298 = add nsw i32 %297, %294
  store i32 %298, ptr %105, align 4, !tbaa !74
  %299 = getelementptr inbounds %struct.et_occ, ptr %290, i64 0, i32 6
  %300 = load ptr, ptr %299, align 8, !tbaa !73
  br label %303

301:                                              ; preds = %292, %289
  %302 = load i32, ptr %95, align 8, !tbaa !90
  store i32 %302, ptr %105, align 4, !tbaa !74
  br label %303

303:                                              ; preds = %301, %296
  %304 = phi ptr [ %300, %296 ], [ %21, %301 ]
  store ptr %304, ptr %103, align 8, !tbaa !73
  %305 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 2
  %306 = load ptr, ptr %305, align 8, !tbaa !84
  %307 = icmp eq ptr %306, null
  br i1 %307, label %318, label %308, !prof !130

308:                                              ; preds = %303
  %309 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 3
  %310 = load ptr, ptr %309, align 8, !tbaa !83
  %311 = icmp eq ptr %310, null
  br i1 %311, label %321, label %312, !prof !131

312:                                              ; preds = %308
  %313 = getelementptr inbounds %struct.et_occ, ptr %306, i64 0, i32 5
  %314 = load i32, ptr %313, align 4, !tbaa !74
  %315 = getelementptr inbounds %struct.et_occ, ptr %310, i64 0, i32 5
  %316 = load i32, ptr %315, align 4, !tbaa !74
  %317 = icmp sgt i32 %314, %316
  br i1 %317, label %318, label %321, !prof !132

318:                                              ; preds = %312, %303
  %319 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 3
  %320 = load ptr, ptr %319, align 8, !tbaa !83
  br label %321

321:                                              ; preds = %318, %312, %308
  %322 = phi ptr [ %320, %318 ], [ %306, %312 ], [ %306, %308 ]
  %323 = icmp eq ptr %322, null
  br i1 %323, label %334, label %324, !prof !133

324:                                              ; preds = %321
  %325 = getelementptr inbounds %struct.et_occ, ptr %322, i64 0, i32 5
  %326 = load i32, ptr %325, align 4, !tbaa !74
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %328, label %334, !prof !134

328:                                              ; preds = %324
  %329 = load i32, ptr %17, align 8, !tbaa !90
  %330 = add nsw i32 %329, %326
  %331 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 5
  store i32 %330, ptr %331, align 4, !tbaa !74
  %332 = getelementptr inbounds %struct.et_occ, ptr %322, i64 0, i32 6
  %333 = load ptr, ptr %332, align 8, !tbaa !73
  br label %337

334:                                              ; preds = %324, %321
  %335 = load i32, ptr %17, align 8, !tbaa !90
  %336 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 5
  store i32 %335, ptr %336, align 4, !tbaa !74
  br label %337

337:                                              ; preds = %334, %328
  %338 = phi ptr [ %15, %334 ], [ %333, %328 ]
  %339 = getelementptr inbounds %struct.et_occ, ptr %15, i64 0, i32 6
  store ptr %338, ptr %339, align 8, !tbaa !73
  br i1 %266, label %342, label %14, !prof !135, !llvm.loop !136

340:                                              ; preds = %93, %89
  %341 = phi ptr [ %92, %89 ], [ %15, %93 ]
  store ptr %341, ptr %30, align 8, !tbaa !73
  br label %342

342:                                              ; preds = %337, %340, %1
  br label %343

343:                                              ; preds = %342, %343
  %344 = phi ptr [ %346, %343 ], [ %3, %342 ]
  %345 = getelementptr inbounds %struct.et_occ, ptr %344, i64 0, i32 3
  %346 = load ptr, ptr %345, align 8, !tbaa !83
  %347 = icmp eq ptr %346, null
  br i1 %347, label %348, label %343, !prof !170, !llvm.loop !171

348:                                              ; preds = %343
  %349 = getelementptr inbounds %struct.et_occ, ptr %344, i64 0, i32 3
  %350 = getelementptr inbounds %struct.et_occ, ptr %344, i64 0, i32 1
  %351 = load ptr, ptr %350, align 8, !tbaa !87
  %352 = icmp eq ptr %351, null
  br i1 %352, label %687, label %353, !prof !100

353:                                              ; preds = %348
  %354 = getelementptr inbounds %struct.et_occ, ptr %344, i64 0, i32 4
  %355 = icmp eq ptr %344, null
  %356 = getelementptr inbounds %struct.et_occ, ptr %344, i64 0, i32 5
  %357 = getelementptr inbounds %struct.et_occ, ptr %344, i64 0, i32 6
  %358 = getelementptr inbounds %struct.et_occ, ptr %344, i64 0, i32 2
  br label %359

359:                                              ; preds = %682, %353
  %360 = phi ptr [ %351, %353 ], [ %453, %682 ]
  %361 = load i32, ptr %354, align 8, !tbaa !90
  %362 = getelementptr inbounds %struct.et_occ, ptr %360, i64 0, i32 4
  %363 = load i32, ptr %362, align 8, !tbaa !90
  %364 = sub i32 0, %363
  %365 = getelementptr inbounds %struct.et_occ, ptr %360, i64 0, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !87
  %367 = icmp eq ptr %366, null
  br i1 %367, label %368, label %439, !prof !101

368:                                              ; preds = %359
  %369 = sub i32 0, %361
  br i1 %355, label %374, label %370, !prof !102

370:                                              ; preds = %368
  %371 = load i32, ptr %356, align 4, !tbaa !74
  %372 = add nsw i32 %371, %363
  store i32 %372, ptr %356, align 4, !tbaa !74
  %373 = add nsw i32 %363, %361
  store i32 %373, ptr %354, align 8, !tbaa !90
  br label %374

374:                                              ; preds = %370, %368
  %375 = getelementptr inbounds %struct.et_occ, ptr %360, i64 0, i32 6
  %376 = load ptr, ptr %375, align 8, !tbaa !73
  store ptr %376, ptr %357, align 8, !tbaa !73
  %377 = getelementptr inbounds %struct.et_occ, ptr %360, i64 0, i32 5
  %378 = load i32, ptr %377, align 4, !tbaa !74
  store i32 %378, ptr %356, align 4, !tbaa !74
  %379 = getelementptr inbounds %struct.et_occ, ptr %360, i64 0, i32 2
  %380 = load ptr, ptr %379, align 8, !tbaa !84
  %381 = icmp eq ptr %380, %344
  br i1 %381, label %382, label %393, !prof !103

382:                                              ; preds = %374
  %383 = load ptr, ptr %349, align 8, !tbaa !83
  store ptr %383, ptr %379, align 8, !tbaa !84
  %384 = icmp eq ptr %383, null
  br i1 %384, label %405, label %385, !prof !104

385:                                              ; preds = %382
  %386 = getelementptr inbounds %struct.et_occ, ptr %383, i64 0, i32 1
  store ptr %360, ptr %386, align 8, !tbaa !87
  store ptr %360, ptr %349, align 8, !tbaa !83
  store ptr %344, ptr %365, align 8, !tbaa !87
  %387 = getelementptr inbounds %struct.et_occ, ptr %383, i64 0, i32 5
  %388 = load i32, ptr %387, align 4, !tbaa !74
  %389 = add nsw i32 %388, %361
  store i32 %389, ptr %387, align 4, !tbaa !74
  %390 = getelementptr inbounds %struct.et_occ, ptr %383, i64 0, i32 4
  %391 = load i32, ptr %390, align 8, !tbaa !90
  %392 = add nsw i32 %391, %361
  store i32 %392, ptr %390, align 8, !tbaa !90
  br label %407

393:                                              ; preds = %374
  %394 = load ptr, ptr %358, align 8, !tbaa !84
  %395 = getelementptr inbounds %struct.et_occ, ptr %360, i64 0, i32 3
  store ptr %394, ptr %395, align 8, !tbaa !83
  %396 = icmp eq ptr %394, null
  br i1 %396, label %406, label %397, !prof !105

397:                                              ; preds = %393
  %398 = getelementptr inbounds %struct.et_occ, ptr %394, i64 0, i32 1
  store ptr %360, ptr %398, align 8, !tbaa !87
  store ptr %360, ptr %358, align 8, !tbaa !84
  store ptr %344, ptr %365, align 8, !tbaa !87
  %399 = getelementptr inbounds %struct.et_occ, ptr %394, i64 0, i32 5
  %400 = load i32, ptr %399, align 4, !tbaa !74
  %401 = add nsw i32 %400, %361
  store i32 %401, ptr %399, align 4, !tbaa !74
  %402 = getelementptr inbounds %struct.et_occ, ptr %394, i64 0, i32 4
  %403 = load i32, ptr %402, align 8, !tbaa !90
  %404 = add nsw i32 %403, %361
  store i32 %404, ptr %402, align 8, !tbaa !90
  br label %407

405:                                              ; preds = %382
  store ptr %360, ptr %349, align 8, !tbaa !83
  store ptr %344, ptr %365, align 8, !tbaa !87
  br label %407

406:                                              ; preds = %393
  store ptr %360, ptr %358, align 8, !tbaa !84
  store ptr %344, ptr %365, align 8, !tbaa !87
  br label %407

407:                                              ; preds = %406, %405, %397, %385
  %408 = load i32, ptr %362, align 8, !tbaa !90
  %409 = load i32, ptr %377, align 4, !tbaa !74
  %410 = add i32 %408, %361
  %411 = sub i32 %409, %410
  store i32 %411, ptr %377, align 4, !tbaa !74
  store i32 %369, ptr %362, align 8, !tbaa !90
  store ptr null, ptr %350, align 8, !tbaa !87
  %412 = load ptr, ptr %379, align 8, !tbaa !84
  %413 = icmp eq ptr %412, null
  br i1 %413, label %424, label %414, !prof !106

414:                                              ; preds = %407
  %415 = getelementptr inbounds %struct.et_occ, ptr %360, i64 0, i32 3
  %416 = load ptr, ptr %415, align 8, !tbaa !83
  %417 = icmp eq ptr %416, null
  br i1 %417, label %427, label %418, !prof !107

418:                                              ; preds = %414
  %419 = getelementptr inbounds %struct.et_occ, ptr %412, i64 0, i32 5
  %420 = load i32, ptr %419, align 4, !tbaa !74
  %421 = getelementptr inbounds %struct.et_occ, ptr %416, i64 0, i32 5
  %422 = load i32, ptr %421, align 4, !tbaa !74
  %423 = icmp sgt i32 %420, %422
  br i1 %423, label %424, label %427, !prof !108

424:                                              ; preds = %418, %407
  %425 = getelementptr inbounds %struct.et_occ, ptr %360, i64 0, i32 3
  %426 = load ptr, ptr %425, align 8, !tbaa !83
  br label %427

427:                                              ; preds = %424, %418, %414
  %428 = phi ptr [ %426, %424 ], [ %412, %418 ], [ %412, %414 ]
  %429 = icmp eq ptr %428, null
  br i1 %429, label %438, label %430, !prof !109

430:                                              ; preds = %427
  %431 = getelementptr inbounds %struct.et_occ, ptr %428, i64 0, i32 5
  %432 = load i32, ptr %431, align 4, !tbaa !74
  %433 = icmp slt i32 %432, 0
  br i1 %433, label %434, label %438, !prof !110

434:                                              ; preds = %430
  %435 = sub i32 %432, %361
  store i32 %435, ptr %377, align 4, !tbaa !74
  %436 = getelementptr inbounds %struct.et_occ, ptr %428, i64 0, i32 6
  %437 = load ptr, ptr %436, align 8, !tbaa !73
  br label %685

438:                                              ; preds = %430, %427
  store i32 %369, ptr %377, align 4, !tbaa !74
  br label %685

439:                                              ; preds = %359
  %440 = getelementptr inbounds %struct.et_occ, ptr %366, i64 0, i32 4
  br i1 %355, label %447, label %441, !prof !111

441:                                              ; preds = %439
  %442 = load i32, ptr %440, align 8, !tbaa !90
  %443 = add nsw i32 %442, %363
  %444 = load i32, ptr %356, align 4, !tbaa !74
  %445 = add nsw i32 %444, %443
  store i32 %445, ptr %356, align 4, !tbaa !74
  %446 = add nsw i32 %443, %361
  store i32 %446, ptr %354, align 8, !tbaa !90
  br label %447

447:                                              ; preds = %441, %439
  %448 = getelementptr inbounds %struct.et_occ, ptr %366, i64 0, i32 6
  %449 = load ptr, ptr %448, align 8, !tbaa !73
  store ptr %449, ptr %357, align 8, !tbaa !73
  %450 = getelementptr inbounds %struct.et_occ, ptr %366, i64 0, i32 5
  %451 = load i32, ptr %450, align 4, !tbaa !74
  store i32 %451, ptr %356, align 4, !tbaa !74
  %452 = getelementptr inbounds %struct.et_occ, ptr %366, i64 0, i32 1
  %453 = load ptr, ptr %452, align 8, !tbaa !87
  %454 = getelementptr inbounds %struct.et_occ, ptr %366, i64 0, i32 2
  %455 = load ptr, ptr %454, align 8, !tbaa !84
  %456 = icmp eq ptr %455, %360
  %457 = getelementptr inbounds %struct.et_occ, ptr %360, i64 0, i32 2
  %458 = load ptr, ptr %457, align 8, !tbaa !84
  %459 = icmp eq ptr %458, %344
  br i1 %456, label %460, label %530, !prof !112

460:                                              ; preds = %447
  br i1 %459, label %461, label %493, !prof !113

461:                                              ; preds = %460
  %462 = getelementptr inbounds %struct.et_occ, ptr %360, i64 0, i32 3
  %463 = load ptr, ptr %462, align 8, !tbaa !83
  store ptr %463, ptr %454, align 8, !tbaa !84
  %464 = icmp eq ptr %463, null
  br i1 %464, label %467, label %465, !prof !114

465:                                              ; preds = %461
  %466 = getelementptr inbounds %struct.et_occ, ptr %463, i64 0, i32 1
  store ptr %366, ptr %466, align 8, !tbaa !87
  br label %467

467:                                              ; preds = %465, %461
  %468 = load ptr, ptr %349, align 8, !tbaa !83
  store ptr %468, ptr %457, align 8, !tbaa !84
  %469 = icmp eq ptr %468, null
  br i1 %469, label %472, label %470, !prof !115

470:                                              ; preds = %467
  %471 = getelementptr inbounds %struct.et_occ, ptr %468, i64 0, i32 1
  store ptr %360, ptr %471, align 8, !tbaa !87
  br label %472

472:                                              ; preds = %470, %467
  store ptr %360, ptr %349, align 8, !tbaa !83
  store ptr %344, ptr %365, align 8, !tbaa !87
  store ptr %366, ptr %462, align 8, !tbaa !83
  store ptr %360, ptr %452, align 8, !tbaa !87
  %473 = sub nsw i32 0, %361
  %474 = load i32, ptr %362, align 8, !tbaa !90
  %475 = getelementptr inbounds %struct.et_occ, ptr %360, i64 0, i32 5
  %476 = load i32, ptr %475, align 4, !tbaa !74
  %477 = add i32 %474, %361
  %478 = sub i32 %476, %477
  store i32 %478, ptr %475, align 4, !tbaa !74
  store i32 %473, ptr %362, align 8, !tbaa !90
  br i1 %469, label %486, label %479, !prof !115

479:                                              ; preds = %472
  %480 = getelementptr inbounds %struct.et_occ, ptr %468, i64 0, i32 5
  %481 = load i32, ptr %480, align 4, !tbaa !74
  %482 = add nsw i32 %481, %361
  store i32 %482, ptr %480, align 4, !tbaa !74
  %483 = getelementptr inbounds %struct.et_occ, ptr %468, i64 0, i32 4
  %484 = load i32, ptr %483, align 8, !tbaa !90
  %485 = add nsw i32 %484, %361
  store i32 %485, ptr %483, align 8, !tbaa !90
  br label %486

486:                                              ; preds = %479, %472
  %487 = load i32, ptr %440, align 8, !tbaa !90
  %488 = load i32, ptr %450, align 4, !tbaa !74
  %489 = add i32 %487, %363
  %490 = sub i32 %488, %489
  store i32 %490, ptr %450, align 4, !tbaa !74
  store i32 %364, ptr %440, align 8, !tbaa !90
  %491 = load ptr, ptr %454, align 8, !tbaa !84
  %492 = icmp eq ptr %491, null
  br i1 %492, label %610, label %601, !prof !114

493:                                              ; preds = %460
  %494 = load ptr, ptr %349, align 8, !tbaa !83
  store ptr %494, ptr %454, align 8, !tbaa !84
  %495 = icmp eq ptr %494, null
  br i1 %495, label %498, label %496, !prof !116

496:                                              ; preds = %493
  %497 = getelementptr inbounds %struct.et_occ, ptr %494, i64 0, i32 1
  store ptr %366, ptr %497, align 8, !tbaa !87
  br label %498

498:                                              ; preds = %496, %493
  %499 = load ptr, ptr %358, align 8, !tbaa !84
  %500 = getelementptr inbounds %struct.et_occ, ptr %360, i64 0, i32 3
  store ptr %499, ptr %500, align 8, !tbaa !83
  %501 = icmp eq ptr %499, null
  br i1 %501, label %504, label %502, !prof !117

502:                                              ; preds = %498
  %503 = getelementptr inbounds %struct.et_occ, ptr %499, i64 0, i32 1
  store ptr %360, ptr %503, align 8, !tbaa !87
  br label %504

504:                                              ; preds = %502, %498
  store ptr %360, ptr %358, align 8, !tbaa !84
  store ptr %344, ptr %365, align 8, !tbaa !87
  store ptr %366, ptr %349, align 8, !tbaa !83
  store ptr %344, ptr %452, align 8, !tbaa !87
  %505 = sub nsw i32 0, %361
  %506 = load i32, ptr %362, align 8, !tbaa !90
  %507 = getelementptr inbounds %struct.et_occ, ptr %360, i64 0, i32 5
  %508 = load i32, ptr %507, align 4, !tbaa !74
  %509 = add i32 %506, %361
  %510 = sub i32 %508, %509
  store i32 %510, ptr %507, align 4, !tbaa !74
  store i32 %505, ptr %362, align 8, !tbaa !90
  %511 = load ptr, ptr %500, align 8, !tbaa !83
  %512 = icmp eq ptr %511, null
  br i1 %512, label %520, label %513, !prof !117

513:                                              ; preds = %504
  %514 = getelementptr inbounds %struct.et_occ, ptr %511, i64 0, i32 5
  %515 = load i32, ptr %514, align 4, !tbaa !74
  %516 = add nsw i32 %515, %361
  store i32 %516, ptr %514, align 4, !tbaa !74
  %517 = getelementptr inbounds %struct.et_occ, ptr %511, i64 0, i32 4
  %518 = load i32, ptr %517, align 8, !tbaa !90
  %519 = add nsw i32 %518, %361
  store i32 %519, ptr %517, align 8, !tbaa !90
  br label %520

520:                                              ; preds = %513, %504
  %521 = sub nsw i32 %505, %363
  %522 = load i32, ptr %440, align 8, !tbaa !90
  %523 = sub i32 %521, %522
  %524 = load i32, ptr %450, align 4, !tbaa !74
  %525 = add nsw i32 %523, %524
  store i32 %525, ptr %450, align 4, !tbaa !74
  store i32 %521, ptr %440, align 8, !tbaa !90
  %526 = load ptr, ptr %454, align 8, !tbaa !84
  %527 = icmp eq ptr %526, null
  br i1 %527, label %610, label %528, !prof !116

528:                                              ; preds = %520
  %529 = add nsw i32 %363, %361
  br label %601

530:                                              ; preds = %447
  br i1 %459, label %531, label %568, !prof !118

531:                                              ; preds = %530
  %532 = load ptr, ptr %358, align 8, !tbaa !84
  %533 = getelementptr inbounds %struct.et_occ, ptr %366, i64 0, i32 3
  store ptr %532, ptr %533, align 8, !tbaa !83
  %534 = icmp eq ptr %532, null
  br i1 %534, label %537, label %535, !prof !119

535:                                              ; preds = %531
  %536 = getelementptr inbounds %struct.et_occ, ptr %532, i64 0, i32 1
  store ptr %366, ptr %536, align 8, !tbaa !87
  br label %537

537:                                              ; preds = %535, %531
  %538 = load ptr, ptr %349, align 8, !tbaa !83
  store ptr %538, ptr %457, align 8, !tbaa !84
  %539 = icmp eq ptr %538, null
  br i1 %539, label %542, label %540, !prof !120

540:                                              ; preds = %537
  %541 = getelementptr inbounds %struct.et_occ, ptr %538, i64 0, i32 1
  store ptr %360, ptr %541, align 8, !tbaa !87
  br label %542

542:                                              ; preds = %540, %537
  store ptr %366, ptr %358, align 8, !tbaa !84
  store ptr %344, ptr %452, align 8, !tbaa !87
  store ptr %360, ptr %349, align 8, !tbaa !83
  store ptr %344, ptr %365, align 8, !tbaa !87
  %543 = sub nsw i32 0, %361
  %544 = load i32, ptr %362, align 8, !tbaa !90
  %545 = getelementptr inbounds %struct.et_occ, ptr %360, i64 0, i32 5
  %546 = load i32, ptr %545, align 4, !tbaa !74
  %547 = add i32 %544, %361
  %548 = sub i32 %546, %547
  store i32 %548, ptr %545, align 4, !tbaa !74
  store i32 %543, ptr %362, align 8, !tbaa !90
  %549 = load ptr, ptr %457, align 8, !tbaa !84
  %550 = icmp eq ptr %549, null
  br i1 %550, label %558, label %551, !prof !120

551:                                              ; preds = %542
  %552 = getelementptr inbounds %struct.et_occ, ptr %549, i64 0, i32 5
  %553 = load i32, ptr %552, align 4, !tbaa !74
  %554 = add nsw i32 %553, %361
  store i32 %554, ptr %552, align 4, !tbaa !74
  %555 = getelementptr inbounds %struct.et_occ, ptr %549, i64 0, i32 4
  %556 = load i32, ptr %555, align 8, !tbaa !90
  %557 = add nsw i32 %556, %361
  store i32 %557, ptr %555, align 8, !tbaa !90
  br label %558

558:                                              ; preds = %551, %542
  %559 = sub nsw i32 %543, %363
  %560 = load i32, ptr %440, align 8, !tbaa !90
  %561 = sub i32 %559, %560
  %562 = load i32, ptr %450, align 4, !tbaa !74
  %563 = add nsw i32 %561, %562
  store i32 %563, ptr %450, align 4, !tbaa !74
  store i32 %559, ptr %440, align 8, !tbaa !90
  %564 = load ptr, ptr %533, align 8, !tbaa !83
  %565 = icmp eq ptr %564, null
  br i1 %565, label %610, label %566, !prof !119

566:                                              ; preds = %558
  %567 = add nsw i32 %363, %361
  br label %601

568:                                              ; preds = %530
  %569 = getelementptr inbounds %struct.et_occ, ptr %366, i64 0, i32 3
  store ptr %458, ptr %569, align 8, !tbaa !83
  %570 = icmp eq ptr %458, null
  br i1 %570, label %573, label %571, !prof !121

571:                                              ; preds = %568
  %572 = getelementptr inbounds %struct.et_occ, ptr %458, i64 0, i32 1
  store ptr %366, ptr %572, align 8, !tbaa !87
  br label %573

573:                                              ; preds = %571, %568
  %574 = load ptr, ptr %358, align 8, !tbaa !84
  %575 = getelementptr inbounds %struct.et_occ, ptr %360, i64 0, i32 3
  store ptr %574, ptr %575, align 8, !tbaa !83
  %576 = icmp eq ptr %574, null
  br i1 %576, label %579, label %577, !prof !122

577:                                              ; preds = %573
  %578 = getelementptr inbounds %struct.et_occ, ptr %574, i64 0, i32 1
  store ptr %360, ptr %578, align 8, !tbaa !87
  br label %579

579:                                              ; preds = %577, %573
  store ptr %360, ptr %358, align 8, !tbaa !84
  store ptr %344, ptr %365, align 8, !tbaa !87
  store ptr %366, ptr %457, align 8, !tbaa !84
  store ptr %360, ptr %452, align 8, !tbaa !87
  %580 = sub nsw i32 0, %361
  %581 = load i32, ptr %362, align 8, !tbaa !90
  %582 = getelementptr inbounds %struct.et_occ, ptr %360, i64 0, i32 5
  %583 = load i32, ptr %582, align 4, !tbaa !74
  %584 = add i32 %581, %361
  %585 = sub i32 %583, %584
  store i32 %585, ptr %582, align 4, !tbaa !74
  store i32 %580, ptr %362, align 8, !tbaa !90
  br i1 %576, label %593, label %586, !prof !122

586:                                              ; preds = %579
  %587 = getelementptr inbounds %struct.et_occ, ptr %574, i64 0, i32 5
  %588 = load i32, ptr %587, align 4, !tbaa !74
  %589 = add nsw i32 %588, %361
  store i32 %589, ptr %587, align 4, !tbaa !74
  %590 = getelementptr inbounds %struct.et_occ, ptr %574, i64 0, i32 4
  %591 = load i32, ptr %590, align 8, !tbaa !90
  %592 = add nsw i32 %591, %361
  store i32 %592, ptr %590, align 8, !tbaa !90
  br label %593

593:                                              ; preds = %586, %579
  %594 = sub nsw i32 0, %363
  %595 = load i32, ptr %440, align 8, !tbaa !90
  %596 = load i32, ptr %450, align 4, !tbaa !74
  %597 = add i32 %595, %363
  %598 = sub i32 %596, %597
  store i32 %598, ptr %450, align 4, !tbaa !74
  store i32 %594, ptr %440, align 8, !tbaa !90
  %599 = load ptr, ptr %569, align 8, !tbaa !83
  %600 = icmp eq ptr %599, null
  br i1 %600, label %610, label %601, !prof !121

601:                                              ; preds = %593, %486, %528, %566
  %602 = phi ptr [ %526, %528 ], [ %564, %566 ], [ %491, %486 ], [ %599, %593 ]
  %603 = phi i32 [ %529, %528 ], [ %567, %566 ], [ %363, %486 ], [ %363, %593 ]
  %604 = getelementptr inbounds %struct.et_occ, ptr %602, i64 0, i32 5
  %605 = load i32, ptr %604, align 4, !tbaa !74
  %606 = add nsw i32 %605, %603
  store i32 %606, ptr %604, align 4, !tbaa !74
  %607 = getelementptr inbounds %struct.et_occ, ptr %602, i64 0, i32 4
  %608 = load i32, ptr %607, align 8, !tbaa !90
  %609 = add nsw i32 %608, %603
  store i32 %609, ptr %607, align 8, !tbaa !90
  br label %610

610:                                              ; preds = %601, %593, %558, %520, %486
  store ptr %453, ptr %350, align 8, !tbaa !87
  %611 = icmp eq ptr %453, null
  br i1 %611, label %618, label %612, !prof !123

612:                                              ; preds = %610
  %613 = getelementptr inbounds %struct.et_occ, ptr %453, i64 0, i32 2
  %614 = load ptr, ptr %613, align 8, !tbaa !84
  %615 = icmp eq ptr %614, %366
  %616 = getelementptr inbounds %struct.et_occ, ptr %453, i64 0, i32 3
  %617 = select i1 %615, ptr %613, ptr %616, !prof !124
  store ptr %344, ptr %617, align 8, !tbaa !47
  br label %618

618:                                              ; preds = %612, %610
  %619 = load ptr, ptr %454, align 8, !tbaa !84
  %620 = icmp eq ptr %619, null
  br i1 %620, label %631, label %621, !prof !125

621:                                              ; preds = %618
  %622 = getelementptr inbounds %struct.et_occ, ptr %366, i64 0, i32 3
  %623 = load ptr, ptr %622, align 8, !tbaa !83
  %624 = icmp eq ptr %623, null
  br i1 %624, label %634, label %625, !prof !126

625:                                              ; preds = %621
  %626 = getelementptr inbounds %struct.et_occ, ptr %619, i64 0, i32 5
  %627 = load i32, ptr %626, align 4, !tbaa !74
  %628 = getelementptr inbounds %struct.et_occ, ptr %623, i64 0, i32 5
  %629 = load i32, ptr %628, align 4, !tbaa !74
  %630 = icmp sgt i32 %627, %629
  br i1 %630, label %631, label %634, !prof !127

631:                                              ; preds = %625, %618
  %632 = getelementptr inbounds %struct.et_occ, ptr %366, i64 0, i32 3
  %633 = load ptr, ptr %632, align 8, !tbaa !83
  br label %634

634:                                              ; preds = %631, %625, %621
  %635 = phi ptr [ %633, %631 ], [ %619, %625 ], [ %619, %621 ]
  %636 = icmp eq ptr %635, null
  br i1 %636, label %646, label %637, !prof !128

637:                                              ; preds = %634
  %638 = getelementptr inbounds %struct.et_occ, ptr %635, i64 0, i32 5
  %639 = load i32, ptr %638, align 4, !tbaa !74
  %640 = icmp slt i32 %639, 0
  br i1 %640, label %641, label %646, !prof !129

641:                                              ; preds = %637
  %642 = load i32, ptr %440, align 8, !tbaa !90
  %643 = add nsw i32 %642, %639
  store i32 %643, ptr %450, align 4, !tbaa !74
  %644 = getelementptr inbounds %struct.et_occ, ptr %635, i64 0, i32 6
  %645 = load ptr, ptr %644, align 8, !tbaa !73
  br label %648

646:                                              ; preds = %637, %634
  %647 = load i32, ptr %440, align 8, !tbaa !90
  store i32 %647, ptr %450, align 4, !tbaa !74
  br label %648

648:                                              ; preds = %646, %641
  %649 = phi ptr [ %645, %641 ], [ %366, %646 ]
  store ptr %649, ptr %448, align 8, !tbaa !73
  %650 = getelementptr inbounds %struct.et_occ, ptr %360, i64 0, i32 2
  %651 = load ptr, ptr %650, align 8, !tbaa !84
  %652 = icmp eq ptr %651, null
  br i1 %652, label %663, label %653, !prof !130

653:                                              ; preds = %648
  %654 = getelementptr inbounds %struct.et_occ, ptr %360, i64 0, i32 3
  %655 = load ptr, ptr %654, align 8, !tbaa !83
  %656 = icmp eq ptr %655, null
  br i1 %656, label %666, label %657, !prof !131

657:                                              ; preds = %653
  %658 = getelementptr inbounds %struct.et_occ, ptr %651, i64 0, i32 5
  %659 = load i32, ptr %658, align 4, !tbaa !74
  %660 = getelementptr inbounds %struct.et_occ, ptr %655, i64 0, i32 5
  %661 = load i32, ptr %660, align 4, !tbaa !74
  %662 = icmp sgt i32 %659, %661
  br i1 %662, label %663, label %666, !prof !132

663:                                              ; preds = %657, %648
  %664 = getelementptr inbounds %struct.et_occ, ptr %360, i64 0, i32 3
  %665 = load ptr, ptr %664, align 8, !tbaa !83
  br label %666

666:                                              ; preds = %663, %657, %653
  %667 = phi ptr [ %665, %663 ], [ %651, %657 ], [ %651, %653 ]
  %668 = icmp eq ptr %667, null
  br i1 %668, label %679, label %669, !prof !133

669:                                              ; preds = %666
  %670 = getelementptr inbounds %struct.et_occ, ptr %667, i64 0, i32 5
  %671 = load i32, ptr %670, align 4, !tbaa !74
  %672 = icmp slt i32 %671, 0
  br i1 %672, label %673, label %679, !prof !134

673:                                              ; preds = %669
  %674 = load i32, ptr %362, align 8, !tbaa !90
  %675 = add nsw i32 %674, %671
  %676 = getelementptr inbounds %struct.et_occ, ptr %360, i64 0, i32 5
  store i32 %675, ptr %676, align 4, !tbaa !74
  %677 = getelementptr inbounds %struct.et_occ, ptr %667, i64 0, i32 6
  %678 = load ptr, ptr %677, align 8, !tbaa !73
  br label %682

679:                                              ; preds = %669, %666
  %680 = load i32, ptr %362, align 8, !tbaa !90
  %681 = getelementptr inbounds %struct.et_occ, ptr %360, i64 0, i32 5
  store i32 %680, ptr %681, align 4, !tbaa !74
  br label %682

682:                                              ; preds = %679, %673
  %683 = phi ptr [ %360, %679 ], [ %678, %673 ]
  %684 = getelementptr inbounds %struct.et_occ, ptr %360, i64 0, i32 6
  store ptr %683, ptr %684, align 8, !tbaa !73
  br i1 %611, label %687, label %359, !prof !135, !llvm.loop !136

685:                                              ; preds = %438, %434
  %686 = phi ptr [ %437, %434 ], [ %360, %438 ]
  store ptr %686, ptr %375, align 8, !tbaa !73
  br label %687

687:                                              ; preds = %682, %685, %348
  %688 = load ptr, ptr %344, align 8, !tbaa !71
  ret ptr %688
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!45}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!35 = !{ptr @et_new_tree, ptr @create_alloc_pool, i64 963}
!36 = !{ptr @et_new_tree, ptr @pool_alloc, i64 11077254}
!37 = !{ptr @et_free_tree, ptr @et_splay, i64 1330828}
!38 = !{ptr @et_free_tree, ptr @pool_free, i64 998121}
!39 = !{ptr @et_split, ptr @et_splay, i64 38076}
!40 = !{ptr @et_split, ptr @pool_free, i64 9519}
!41 = !{ptr @et_free_tree_force, ptr @pool_free, i64 15613787}
!42 = !{ptr @et_free_pools, ptr @free_alloc_pool_if_empty, i64 2052}
!43 = !{ptr @et_set_father, ptr @create_alloc_pool, i64 321}
!44 = !{ptr @et_set_father, ptr @pool_alloc, i64 5544173}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"any pointer", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !{!52, !48, i64 8}
!52 = !{!"_IO_FILE", !53, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !48, i64 80, !48, i64 88, !48, i64 96, !48, i64 104, !53, i64 112, !53, i64 116, !54, i64 120, !55, i64 128, !49, i64 130, !49, i64 131, !48, i64 136, !54, i64 144, !48, i64 152, !48, i64 160, !48, i64 168, !48, i64 176, !54, i64 184, !53, i64 192, !49, i64 196}
!53 = !{!"int", !49, i64 0}
!54 = !{!"long", !49, i64 0}
!55 = !{!"short", !49, i64 0}
!56 = !{!52, !48, i64 16}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{!49, !49, i64 0}
!59 = !{!52, !48, i64 40}
!60 = !{!52, !48, i64 48}
!61 = !{!52, !53, i64 0}
!62 = !{!53, !53, i64 0}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!"function_entry_count", i64 5538627}
!67 = !{!"branch_weights", i32 642, i32 5537985}
!68 = !{!69, !48, i64 0}
!69 = !{!"et_node", !48, i64 0, !53, i64 8, !53, i64 12, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !48, i64 56}
!70 = !{!"branch_weights", i32 642, i32 11082158}
!71 = !{!72, !48, i64 0}
!72 = !{!"et_occ", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !53, i64 32, !53, i64 36, !48, i64 40}
!73 = !{!72, !48, i64 40}
!74 = !{!72, !53, i64 36}
!75 = !{!69, !48, i64 48}
!76 = !{!69, !48, i64 56}
!77 = !{!"function_entry_count", i64 332707}
!78 = !{!69, !48, i64 24}
!79 = !{!"branch_weights", i32 1, i32 0}
!80 = distinct !{!80, !64, !65}
!81 = !{!69, !48, i64 16}
!82 = !{!"branch_weights", i32 0, i32 332707}
!83 = !{!72, !48, i64 24}
!84 = !{!72, !48, i64 16}
!85 = !{!"branch_weights", i32 342226, i32 778918}
!86 = distinct !{!86, !64, !65}
!87 = !{!72, !48, i64 8}
!88 = !{!"branch_weights", i32 0, i32 342226}
!89 = !{!"branch_weights", i32 342226, i32 0}
!90 = !{!72, !53, i64 32}
!91 = !{!"branch_weights", i32 132939, i32 209287}
!92 = !{!69, !48, i64 40}
!93 = !{!"branch_weights", i32 88160, i32 254066}
!94 = !{!69, !48, i64 32}
!95 = !{!"function_entry_count", i64 9519}
!96 = !{!"function_entry_count", i64 5205920}
!97 = !{!"branch_weights", i32 3973, i32 5201947}
!98 = !{!"function_entry_count", i64 1026}
!99 = !{!"function_entry_count", i64 5544173}
!100 = !{!"branch_weights", i32 1, i32 16468824}
!101 = !{!"branch_weights", i32 7015355, i32 25199800}
!102 = !{!"branch_weights", i32 0, i32 7015355}
!103 = !{!"branch_weights", i32 3294680, i32 3720675}
!104 = !{!"branch_weights", i32 244661, i32 3050019}
!105 = !{!"branch_weights", i32 1946847, i32 1773828}
!106 = !{!"branch_weights", i32 245663, i32 6769692}
!107 = !{!"branch_weights", i32 4215407, i32 2554285}
!108 = !{!"branch_weights", i32 757933, i32 1796352}
!109 = !{!"branch_weights", i32 156479, i32 6858876}
!110 = !{!"branch_weights", i32 6066514, i32 792362}
!111 = !{!"branch_weights", i32 0, i32 25199800}
!112 = !{!"branch_weights", i32 17981301, i32 7218499}
!113 = !{!"branch_weights", i32 11697647, i32 6283654}
!114 = !{!"branch_weights", i32 1592062, i32 10105585}
!115 = !{!"branch_weights", i32 534753, i32 11162894}
!116 = !{!"branch_weights", i32 4087036, i32 2196618}
!117 = !{!"branch_weights", i32 2317636, i32 3966018}
!118 = !{!"branch_weights", i32 3021986, i32 4196513}
!119 = !{!"branch_weights", i32 677036, i32 2344950}
!120 = !{!"branch_weights", i32 498883, i32 2523103}
!121 = !{!"branch_weights", i32 1261343, i32 2935170}
!122 = !{!"branch_weights", i32 823510, i32 3373003}
!123 = !{!"branch_weights", i32 6603254, i32 18596546}
!124 = !{!"branch_weights", i32 13320020, i32 5276526}
!125 = !{!"branch_weights", i32 6844588, i32 18355212}
!126 = !{!"branch_weights", i32 2364452, i32 15990760}
!127 = !{!"branch_weights", i32 4890962, i32 11099798}
!128 = !{!"branch_weights", i32 1712010, i32 23487790}
!129 = !{!"branch_weights", i32 18995088, i32 4492702}
!130 = !{!"branch_weights", i32 1411579, i32 23788221}
!131 = !{!"branch_weights", i32 3125965, i32 20662256}
!132 = !{!"branch_weights", i32 4338058, i32 16324198}
!133 = !{!"branch_weights", i32 289173, i32 24910627}
!134 = !{!"branch_weights", i32 22011051, i32 2899576}
!135 = !{!"branch_weights", i32 16468824, i32 15746331}
!136 = distinct !{!136, !64, !65}
!137 = !{!"branch_weights", i32 157566, i32 5386607}
!138 = !{!"branch_weights", i32 0, i32 5544173}
!139 = !{!"branch_weights", i32 0, i32 5386607}
!140 = !{!"branch_weights", i32 3148676, i32 2395497}
!141 = !{!"branch_weights", i32 2082902, i32 3461271}
!142 = !{!"function_entry_count", i64 1368904}
!143 = !{!"et-forest.c;et_splay"}
!144 = !{!"function_entry_count", i64 2879378}
!145 = !{!"branch_weights", i32 51709, i32 2827669}
!146 = !{!"branch_weights", i32 0, i32 2827669}
!147 = !{!"branch_weights", i32 7, i32 2827662}
!148 = !{!"branch_weights", i32 599144, i32 2228525}
!149 = !{!"branch_weights", i32 0, i32 2228525}
!150 = !{!"branch_weights", i32 54898, i32 2173627}
!151 = !{!"branch_weights", i32 0, i32 2772771}
!152 = !{!"branch_weights", i32 7, i32 2772764}
!153 = !{!"branch_weights", i32 0, i32 54898}
!154 = !{!"branch_weights", i32 2759496, i32 68173}
!155 = !{!"branch_weights", i32 994, i32 2826675}
!156 = !{!"branch_weights", i32 97475, i32 2729200}
!157 = !{!"function_entry_count", i64 1609017}
!158 = !{!"branch_weights", i32 37451, i32 1571566}
!159 = !{!"branch_weights", i32 0, i32 1571566}
!160 = !{!"branch_weights", i32 14, i32 1571552}
!161 = !{!"branch_weights", i32 208, i32 1571358}
!162 = !{!"branch_weights", i32 859, i32 1570499}
!163 = !{!"branch_weights", i32 0, i32 1570707}
!164 = !{!"branch_weights", i32 16115, i32 1554592}
!165 = !{!"branch_weights", i32 14, i32 845}
!166 = !{!"branch_weights", i32 125, i32 720}
!167 = !{!"branch_weights", i32 0, i32 720}
!168 = !{!"branch_weights", i32 3, i32 1554589}
!169 = !{!"function_entry_count", i64 1114230}
!170 = !{!"branch_weights", i32 1114230, i32 1811166}
!171 = distinct !{!171, !64, !65}

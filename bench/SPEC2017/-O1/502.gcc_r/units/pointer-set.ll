; ModuleID = 'pointer-set.c'
source_filename = "pointer-set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.pointer_set_t = type { i64, i64, i64, ptr }
%struct.pointer_map_t = type { i64, i64, i64, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
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
  %5 = tail call ptr @__ctype_tolower_loc() #15
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
  %5 = tail call ptr @__ctype_toupper_loc() #15
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #15
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

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @pointer_set_create() local_unnamed_addr #8 !prof !66 {
  %1 = tail call ptr @xmalloc(i64 noundef 32) #15
  %2 = getelementptr inbounds %struct.pointer_set_t, ptr %1, i64 0, i32 2
  store i64 0, ptr %2, align 8, !tbaa !67
  store i64 8, ptr %1, align 8, !tbaa !69
  %3 = getelementptr inbounds %struct.pointer_set_t, ptr %1, i64 0, i32 1
  store i64 256, ptr %3, align 8, !tbaa !70
  %4 = tail call ptr @xcalloc(i64 noundef 256, i64 noundef 8) #15
  %5 = getelementptr inbounds %struct.pointer_set_t, ptr %1, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !71
  ret ptr %1
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @pointer_set_destroy(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !66 {
  %2 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  tail call void @free(ptr noundef %3)
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @pointer_set_contains(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #11 !prof !72 {
  %3 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !70
  %5 = load i64, ptr %0, align 8, !tbaa !69
  %6 = sub i64 64, %5
  %7 = ptrtoint ptr %1 to i64
  %8 = mul i64 %7, -7046029254386353130
  %9 = lshr i64 %8, %6
  %10 = add i64 %4, -1
  %11 = and i64 %9, %10
  %12 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = getelementptr inbounds ptr, ptr %13, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %28, label %17, !prof !73

17:                                               ; preds = %2, %21
  %18 = phi ptr [ %26, %21 ], [ %15, %2 ]
  %19 = phi i64 [ %24, %21 ], [ %11, %2 ]
  %20 = icmp eq ptr %18, null
  br i1 %20, label %28, label %21, !prof !74

21:                                               ; preds = %17
  %22 = add i64 %19, 1
  %23 = icmp eq i64 %22, %4
  %24 = select i1 %23, i64 0, i64 %22, !prof !75
  %25 = getelementptr inbounds ptr, ptr %13, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %28, label %17, !prof !76, !llvm.loop !77

28:                                               ; preds = %21, %17, %2
  %29 = phi i32 [ 1, %2 ], [ 1, %21 ], [ 0, %17 ]
  ret i32 %29
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef i32 @pointer_set_insert(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !78 {
  %3 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !70
  %7 = lshr i64 %6, 2
  %8 = icmp ugt i64 %4, %7
  br i1 %8, label %9, label %52, !prof !79

9:                                                ; preds = %2
  %10 = load i64, ptr %0, align 8, !tbaa !69
  %11 = add i64 %10, 1
  %12 = shl i64 %6, 1
  %13 = tail call ptr @xcalloc(i64 noundef %12, i64 noundef 8) #15
  %14 = load i64, ptr %5, align 8, !tbaa !70
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %49, label %16, !prof !80

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 3
  %18 = sub i64 63, %10
  %19 = add i64 %12, -1
  br label %20

20:                                               ; preds = %16, %44
  %21 = phi i64 [ 0, %16 ], [ %47, %44 ]
  %22 = load ptr, ptr %17, align 8, !tbaa !71
  %23 = getelementptr inbounds ptr, ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = ptrtoint ptr %24 to i64
  %26 = mul i64 %25, -7046029254386353130
  %27 = lshr i64 %26, %18
  %28 = and i64 %27, %19
  %29 = getelementptr inbounds ptr, ptr %13, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !47
  %31 = icmp eq ptr %30, %24
  %32 = icmp eq ptr %30, null
  %33 = or i1 %31, %32
  br i1 %33, label %44, label %34, !prof !81

34:                                               ; preds = %20, %34
  %35 = phi i64 [ %38, %34 ], [ %28, %20 ]
  %36 = add i64 %35, 1
  %37 = icmp eq i64 %36, %12
  %38 = select i1 %37, i64 0, i64 %36, !prof !82
  %39 = getelementptr inbounds ptr, ptr %13, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !47
  %41 = icmp eq ptr %40, %24
  %42 = icmp eq ptr %40, null
  %43 = or i1 %41, %42
  br i1 %43, label %44, label %34, !prof !83, !llvm.loop !84

44:                                               ; preds = %34, %20
  %45 = phi i64 [ %28, %20 ], [ %38, %34 ]
  %46 = getelementptr inbounds ptr, ptr %13, i64 %45
  store ptr %24, ptr %46, align 8, !tbaa !47
  %47 = add nuw i64 %21, 1
  %48 = icmp eq i64 %47, %14
  br i1 %48, label %49, label %20, !prof !85, !llvm.loop !86

49:                                               ; preds = %44, %9
  %50 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !71
  tail call void @free(ptr noundef %51)
  store i64 %12, ptr %5, align 8, !tbaa !70
  store i64 %11, ptr %0, align 8, !tbaa !69
  store ptr %13, ptr %50, align 8, !tbaa !71
  br label %52

52:                                               ; preds = %49, %2
  %53 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !71
  %55 = load i64, ptr %5, align 8, !tbaa !70
  %56 = load i64, ptr %0, align 8, !tbaa !69
  %57 = sub i64 64, %56
  %58 = ptrtoint ptr %1 to i64
  %59 = mul i64 %58, -7046029254386353130
  %60 = lshr i64 %59, %57
  %61 = add i64 %55, -1
  %62 = and i64 %60, %61
  %63 = getelementptr inbounds ptr, ptr %54, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !47
  %65 = icmp eq ptr %64, %1
  %66 = icmp eq ptr %64, null
  %67 = or i1 %65, %66
  br i1 %67, label %78, label %68, !prof !87

68:                                               ; preds = %52, %68
  %69 = phi i64 [ %72, %68 ], [ %62, %52 ]
  %70 = add i64 %69, 1
  %71 = icmp eq i64 %70, %55
  %72 = select i1 %71, i64 0, i64 %70, !prof !88
  %73 = getelementptr inbounds ptr, ptr %54, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !47
  %75 = icmp eq ptr %74, %1
  %76 = icmp eq ptr %74, null
  %77 = or i1 %75, %76
  br i1 %77, label %78, label %68, !prof !89, !llvm.loop !84

78:                                               ; preds = %68, %52
  %79 = phi i64 [ %62, %52 ], [ %72, %68 ]
  %80 = phi i1 [ %66, %52 ], [ %76, %68 ]
  br i1 %80, label %81, label %85, !prof !90

81:                                               ; preds = %78
  %82 = getelementptr inbounds ptr, ptr %54, i64 %79
  store ptr %1, ptr %82, align 8, !tbaa !47
  %83 = load i64, ptr %3, align 8, !tbaa !67
  %84 = add i64 %83, 1
  store i64 %84, ptr %3, align 8, !tbaa !67
  br label %85

85:                                               ; preds = %78, %81
  %86 = phi i32 [ 0, %81 ], [ 1, %78 ]
  ret i32 %86
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pointer_set_traverse(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #13 !prof !46 {
  %4 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !70
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.pointer_set_t, ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %7, %18
  %10 = phi i64 [ 0, %7 ], [ %19, %18 ]
  %11 = load ptr, ptr %8, align 8, !tbaa !71
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = tail call zeroext i8 %1(ptr noundef nonnull %13, ptr noundef %2) #15
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %9, %15
  %19 = add nuw i64 %10, 1
  %20 = load i64, ptr %4, align 8, !tbaa !70
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %9, label %22, !llvm.loop !91

22:                                               ; preds = %18, %15, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @pointer_map_create() local_unnamed_addr #8 !prof !92 {
  %1 = tail call ptr @xmalloc(i64 noundef 40) #15
  %2 = getelementptr inbounds %struct.pointer_map_t, ptr %1, i64 0, i32 2
  store i64 0, ptr %2, align 8, !tbaa !93
  store i64 8, ptr %1, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.pointer_map_t, ptr %1, i64 0, i32 1
  store i64 256, ptr %3, align 8, !tbaa !96
  %4 = tail call ptr @xcalloc(i64 noundef 256, i64 noundef 8) #15
  %5 = getelementptr inbounds %struct.pointer_map_t, ptr %1, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !97
  %6 = load i64, ptr %3, align 8, !tbaa !96
  %7 = tail call ptr @xcalloc(i64 noundef %6, i64 noundef 8) #15
  %8 = getelementptr inbounds %struct.pointer_map_t, ptr %1, i64 0, i32 4
  store ptr %7, ptr %8, align 8, !tbaa !98
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @pointer_map_destroy(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !92 {
  %2 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  tail call void @free(ptr noundef %3)
  %4 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  tail call void @free(ptr noundef %5)
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @pointer_map_contains(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #14 !prof !99 {
  %3 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !96
  %5 = load i64, ptr %0, align 8, !tbaa !95
  %6 = sub i64 64, %5
  %7 = ptrtoint ptr %1 to i64
  %8 = mul i64 %7, -7046029254386353130
  %9 = lshr i64 %8, %6
  %10 = add i64 %4, -1
  %11 = and i64 %9, %10
  %12 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !97
  %14 = getelementptr inbounds ptr, ptr %13, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %22, !prof !100

17:                                               ; preds = %26, %2
  %18 = phi i64 [ %11, %2 ], [ %29, %26 ]
  %19 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !98
  %21 = getelementptr inbounds ptr, ptr %20, i64 %18
  br label %33

22:                                               ; preds = %2, %26
  %23 = phi ptr [ %31, %26 ], [ %15, %2 ]
  %24 = phi i64 [ %29, %26 ], [ %11, %2 ]
  %25 = icmp eq ptr %23, null
  br i1 %25, label %33, label %26, !prof !101

26:                                               ; preds = %22
  %27 = add i64 %24, 1
  %28 = icmp eq i64 %27, %4
  %29 = select i1 %28, i64 0, i64 %27, !prof !102
  %30 = getelementptr inbounds ptr, ptr %13, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !47
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %17, label %22, !prof !103, !llvm.loop !104

33:                                               ; preds = %22, %17
  %34 = phi ptr [ %21, %17 ], [ null, %22 ]
  ret ptr %34
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @pointer_map_insert(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !105 {
  %3 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !93
  %5 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !96
  %7 = lshr i64 %6, 2
  %8 = icmp ugt i64 %4, %7
  br i1 %8, label %9, label %63, !prof !106

9:                                                ; preds = %2
  %10 = load i64, ptr %0, align 8, !tbaa !95
  %11 = add i64 %10, 1
  %12 = shl i64 %6, 1
  %13 = tail call ptr @xcalloc(i64 noundef %12, i64 noundef 8) #15
  %14 = tail call ptr @xcalloc(i64 noundef %12, i64 noundef 8) #15
  %15 = load i64, ptr %5, align 8, !tbaa !96
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %58, label %17, !prof !107

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 3
  %19 = sub i64 63, %10
  %20 = add i64 %12, -1
  %21 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 4
  br label %22

22:                                               ; preds = %17, %55
  %23 = phi i64 [ 0, %17 ], [ %56, %55 ]
  %24 = load ptr, ptr %18, align 8, !tbaa !97
  %25 = getelementptr inbounds ptr, ptr %24, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = icmp eq ptr %26, null
  br i1 %27, label %55, label %28, !prof !108

28:                                               ; preds = %22
  %29 = ptrtoint ptr %26 to i64
  %30 = mul i64 %29, -7046029254386353130
  %31 = lshr i64 %30, %19
  %32 = and i64 %31, %20
  %33 = getelementptr inbounds ptr, ptr %13, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !47
  %35 = icmp eq ptr %34, %26
  %36 = icmp eq ptr %34, null
  %37 = or i1 %35, %36
  br i1 %37, label %48, label %38, !prof !109

38:                                               ; preds = %28, %38
  %39 = phi i64 [ %42, %38 ], [ %32, %28 ]
  %40 = add i64 %39, 1
  %41 = icmp eq i64 %40, %12
  %42 = select i1 %41, i64 0, i64 %40, !prof !110
  %43 = getelementptr inbounds ptr, ptr %13, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !47
  %45 = icmp eq ptr %44, %26
  %46 = icmp eq ptr %44, null
  %47 = or i1 %45, %46
  br i1 %47, label %48, label %38, !prof !111, !llvm.loop !84

48:                                               ; preds = %38, %28
  %49 = phi i64 [ %32, %28 ], [ %42, %38 ]
  %50 = getelementptr inbounds ptr, ptr %13, i64 %49
  store ptr %26, ptr %50, align 8, !tbaa !47
  %51 = load ptr, ptr %21, align 8, !tbaa !98
  %52 = getelementptr inbounds ptr, ptr %51, i64 %23
  %53 = load ptr, ptr %52, align 8, !tbaa !47
  %54 = getelementptr inbounds ptr, ptr %14, i64 %49
  store ptr %53, ptr %54, align 8, !tbaa !47
  br label %55

55:                                               ; preds = %22, %48
  %56 = add nuw i64 %23, 1
  %57 = icmp eq i64 %56, %15
  br i1 %57, label %58, label %22, !prof !112, !llvm.loop !113

58:                                               ; preds = %55, %9
  %59 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !97
  tail call void @free(ptr noundef %60)
  %61 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !98
  tail call void @free(ptr noundef %62)
  store i64 %12, ptr %5, align 8, !tbaa !96
  store i64 %11, ptr %0, align 8, !tbaa !95
  store ptr %13, ptr %59, align 8, !tbaa !97
  store ptr %14, ptr %61, align 8, !tbaa !98
  br label %63

63:                                               ; preds = %58, %2
  %64 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !97
  %66 = load i64, ptr %5, align 8, !tbaa !96
  %67 = load i64, ptr %0, align 8, !tbaa !95
  %68 = sub i64 64, %67
  %69 = ptrtoint ptr %1 to i64
  %70 = mul i64 %69, -7046029254386353130
  %71 = lshr i64 %70, %68
  %72 = add i64 %66, -1
  %73 = and i64 %71, %72
  %74 = getelementptr inbounds ptr, ptr %65, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !47
  %76 = icmp eq ptr %75, %1
  %77 = icmp eq ptr %75, null
  %78 = or i1 %76, %77
  br i1 %78, label %89, label %79, !prof !114

79:                                               ; preds = %63, %79
  %80 = phi i64 [ %83, %79 ], [ %73, %63 ]
  %81 = add i64 %80, 1
  %82 = icmp eq i64 %81, %66
  %83 = select i1 %82, i64 0, i64 %81, !prof !115
  %84 = getelementptr inbounds ptr, ptr %65, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !47
  %86 = icmp eq ptr %85, %1
  %87 = icmp eq ptr %85, null
  %88 = or i1 %86, %87
  br i1 %88, label %89, label %79, !prof !116, !llvm.loop !84

89:                                               ; preds = %79, %63
  %90 = phi i64 [ %73, %63 ], [ %83, %79 ]
  %91 = phi i1 [ %77, %63 ], [ %87, %79 ]
  br i1 %91, label %92, label %96, !prof !117

92:                                               ; preds = %89
  %93 = getelementptr inbounds ptr, ptr %65, i64 %90
  %94 = load i64, ptr %3, align 8, !tbaa !93
  %95 = add i64 %94, 1
  store i64 %95, ptr %3, align 8, !tbaa !93
  store ptr %1, ptr %93, align 8, !tbaa !47
  br label %96

96:                                               ; preds = %92, %89
  %97 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !98
  %99 = getelementptr inbounds ptr, ptr %98, i64 %90
  ret ptr %99
}

; Function Attrs: nounwind uwtable
define dso_local void @pointer_map_traverse(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #8 !prof !118 {
  %4 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !96
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %25, label %8, !prof !119

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.pointer_map_t, ptr %0, i64 0, i32 3
  br label %10

10:                                               ; preds = %8, %21
  %11 = phi i64 [ 0, %8 ], [ %22, %21 ]
  %12 = load ptr, ptr %9, align 8, !tbaa !97
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16, !prof !120

16:                                               ; preds = %10
  %17 = load ptr, ptr %4, align 8, !tbaa !98
  %18 = getelementptr inbounds ptr, ptr %17, i64 %11
  %19 = tail call zeroext i8 %1(ptr noundef nonnull %14, ptr noundef %18, ptr noundef %2) #15, !prof !121
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %25, label %21, !prof !122

21:                                               ; preds = %10, %16
  %22 = add nuw i64 %11, 1
  %23 = load i64, ptr %5, align 8, !tbaa !96
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %10, label %25, !prof !123, !llvm.loop !124

25:                                               ; preds = %21, %16, %3
  ret void
}

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }

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
!35 = !{ptr @pointer_set_create, ptr @xmalloc, i64 50977}
!36 = !{ptr @pointer_set_create, ptr @xcalloc, i64 50977}
!37 = !{ptr @pointer_set_destroy, ptr @free, i64 101954}
!38 = !{ptr @pointer_set_insert, ptr @xcalloc, i64 151}
!39 = !{ptr @pointer_set_insert, ptr @free, i64 151}
!40 = !{ptr @pointer_map_create, ptr @xmalloc, i64 52132}
!41 = !{ptr @pointer_map_create, ptr @xcalloc, i64 104264}
!42 = !{ptr @pointer_map_destroy, ptr @free, i64 156396}
!43 = !{ptr @pointer_map_insert, ptr @xcalloc, i64 940}
!44 = !{ptr @pointer_map_insert, ptr @free, i64 940}
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
!66 = !{!"function_entry_count", i64 50977}
!67 = !{!68, !54, i64 16}
!68 = !{!"pointer_set_t", !54, i64 0, !54, i64 8, !54, i64 16, !48, i64 24}
!69 = !{!68, !54, i64 0}
!70 = !{!68, !54, i64 8}
!71 = !{!68, !48, i64 24}
!72 = !{!"function_entry_count", i64 429}
!73 = !{!"branch_weights", i32 218, i32 107}
!74 = !{!"branch_weights", i32 104, i32 3}
!75 = !{!"branch_weights", i32 0, i32 3}
!76 = !{!"branch_weights", i32 107, i32 0}
!77 = distinct !{!77, !65}
!78 = !{!"function_entry_count", i64 1001646}
!79 = !{!"branch_weights", i32 151, i32 1001495}
!80 = !{!"branch_weights", i32 1, i32 150}
!81 = !{!"branch_weights", i32 981722, i32 29990}
!82 = !{!"branch_weights", i32 3, i32 29987}
!83 = !{!"branch_weights", i32 29990, i32 0}
!84 = distinct !{!84, !65}
!85 = !{!"branch_weights", i32 150, i32 1011562}
!86 = distinct !{!86, !64, !65}
!87 = !{!"branch_weights", i32 895606, i32 106040}
!88 = !{!"branch_weights", i32 2, i32 106038}
!89 = !{!"branch_weights", i32 106040, i32 0}
!90 = !{!"branch_weights", i32 217949, i32 783697}
!91 = distinct !{!91, !64, !65}
!92 = !{!"function_entry_count", i64 52132}
!93 = !{!94, !54, i64 16}
!94 = !{!"pointer_map_t", !54, i64 0, !54, i64 8, !54, i64 16, !48, i64 24, !48, i64 32}
!95 = !{!94, !54, i64 0}
!96 = !{!94, !54, i64 8}
!97 = !{!94, !48, i64 24}
!98 = !{!94, !48, i64 32}
!99 = !{!"function_entry_count", i64 3324850}
!100 = !{!"branch_weights", i32 636065, i32 1496492}
!101 = !{!"branch_weights", i32 1192293, i32 304199}
!102 = !{!"branch_weights", i32 42, i32 304157}
!103 = !{!"branch_weights", i32 1496492, i32 0}
!104 = distinct !{!104, !65}
!105 = !{!"function_entry_count", i64 696422}
!106 = !{!"branch_weights", i32 470, i32 695952}
!107 = !{!"branch_weights", i32 1, i32 469}
!108 = !{!"branch_weights", i32 2108074, i32 703318}
!109 = !{!"branch_weights", i32 679664, i32 23654}
!110 = !{!"branch_weights", i32 12, i32 23642}
!111 = !{!"branch_weights", i32 23654, i32 0}
!112 = !{!"branch_weights", i32 469, i32 2810923}
!113 = distinct !{!113, !64, !65}
!114 = !{!"branch_weights", i32 605858, i32 90564}
!115 = !{!"branch_weights", i32 14, i32 90550}
!116 = !{!"branch_weights", i32 90564, i32 0}
!117 = !{!"branch_weights", i32 509528, i32 186894}
!118 = !{!"function_entry_count", i64 945}
!119 = !{!"branch_weights", i32 1, i32 855}
!120 = !{!"branch_weights", i32 961508, i32 183919}
!121 = !{!"VP", i32 0, i64 183919, i64 5057004720027637372, i64 183830, i64 -7179725077254341525, i64 89}
!122 = !{!"branch_weights", i32 89, i32 183830}
!123 = !{!"branch_weights", i32 1144572, i32 855}
!124 = distinct !{!124, !64, !65}

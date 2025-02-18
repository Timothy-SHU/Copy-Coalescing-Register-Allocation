; ModuleID = 'domwalk.c'
source_filename = "domwalk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.dom_walk_data = type { i8, ptr, ptr, ptr, ptr, ptr, i64, ptr }
%struct.VEC_void_p_base = type { i32, i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !43 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !44
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !43 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !44
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !43 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !54

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #11
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !48
  %11 = load i8, ptr %3, align 1, !tbaa !55
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !43 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !54

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #11
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !48
  %11 = load i8, ptr %3, align 1, !tbaa !55
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !43 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !54

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #11
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !48
  %11 = load i8, ptr %3, align 1, !tbaa !55
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !43 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !44
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !43 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !54

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #11
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !56
  store i8 %12, ptr %4, align 1, !tbaa !55
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !43 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !54

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #11
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !56
  store i8 %12, ptr %4, align 1, !tbaa !55
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !43 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !44
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !54

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #11
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !56
  store i8 %12, ptr %4, align 1, !tbaa !55
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !43 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #11
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !43 {
  %2 = load i32, ptr %0, align 8, !tbaa !58
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !43 {
  %2 = load i32, ptr %0, align 8, !tbaa !58
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !43 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #11
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !59
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !43 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #11
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !59
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !43 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #11
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
  br i1 %23, label %7, label %24, !llvm.loop !60

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @walk_dominator_tree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 !prof !63 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !66
  %8 = shl nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call ptr @xmalloc(i64 noundef %10) #11
  %12 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 7
  %14 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 6
  %15 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 2
  %17 = getelementptr ptr, ptr %11, i64 -1
  %18 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 3
  %19 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 1
  %20 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 5
  %21 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 7
  br label %22

22:                                               ; preds = %159, %2
  %23 = phi ptr [ %1, %2 ], [ %163, %159 ]
  %24 = phi i32 [ 0, %2 ], [ %160, %159 ]
  %25 = load ptr, ptr %23, align 8, !tbaa !68
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !70

27:                                               ; preds = %22
  %28 = load i32, ptr %25, align 8, !tbaa !71
  br label %29

29:                                               ; preds = %22, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %22 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %42, !prof !70

32:                                               ; preds = %29
  %33 = load ptr, ptr @cfun, align 8, !tbaa !44
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !64
  %36 = load ptr, ptr %35, align 8, !tbaa !73
  %37 = icmp eq ptr %23, %36
  br i1 %37, label %42, label %38, !prof !74

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !75
  %41 = icmp eq ptr %23, %40
  br i1 %41, label %42, label %109

42:                                               ; preds = %38, %32, %29
  %43 = load ptr, ptr %12, align 8, !tbaa !76
  %44 = icmp eq ptr %43, null
  br i1 %44, label %81, label %45, !prof !78

45:                                               ; preds = %42
  %46 = load ptr, ptr %13, align 8, !tbaa !79
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48, !prof !80

48:                                               ; preds = %45
  %49 = load i32, ptr %46, align 8, !tbaa !81
  br label %50

50:                                               ; preds = %45, %48
  %51 = phi i32 [ %49, %48 ], [ 0, %45 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53, !prof !83

53:                                               ; preds = %50
  %54 = load i32, ptr %46, align 8, !tbaa !81
  %55 = add i32 %54, -1
  store i32 %55, ptr %46, align 8, !tbaa !81
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.VEC_void_p_base, ptr %46, i64 0, i32 2, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !44
  br label %62

59:                                               ; preds = %50
  %60 = load i64, ptr %14, align 8, !tbaa !84
  %61 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %60) #11
  br label %62

62:                                               ; preds = %59, %53
  %63 = phi ptr [ %58, %53 ], [ %61, %59 ]
  %64 = phi i8 [ 1, %53 ], [ 0, %59 ]
  %65 = load ptr, ptr %15, align 8, !tbaa !44
  %66 = icmp eq ptr %65, null
  br i1 %66, label %72, label %67, !prof !85

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.VEC_void_p_base, ptr %65, i64 0, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !86
  %70 = load i32, ptr %65, align 8, !tbaa !81
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %74, !prof !87

72:                                               ; preds = %62, %67
  %73 = tail call ptr @vec_heap_p_reserve(ptr noundef %65, i32 noundef 1) #11
  store ptr %73, ptr %15, align 8, !tbaa !44
  br label %74

74:                                               ; preds = %67, %72
  %75 = load ptr, ptr %15, align 8, !tbaa !44
  %76 = load i32, ptr %75, align 8, !tbaa !81
  %77 = add i32 %76, 1
  store i32 %77, ptr %75, align 8, !tbaa !81
  %78 = zext i32 %76 to i64
  %79 = getelementptr inbounds %struct.VEC_void_p_base, ptr %75, i64 0, i32 2, i64 %78
  store ptr %63, ptr %79, align 8, !tbaa !44
  %80 = load ptr, ptr %12, align 8, !tbaa !76
  tail call void %80(ptr noundef %0, ptr noundef nonnull %23, i8 noundef zeroext %64) #11, !prof !88
  br label %81

81:                                               ; preds = %74, %42
  %82 = load ptr, ptr %16, align 8, !tbaa !89
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84, !prof !90

84:                                               ; preds = %81
  tail call void %82(ptr noundef %0, ptr noundef nonnull %23) #11, !prof !91
  br label %85

85:                                               ; preds = %84, %81
  %86 = sext i32 %24 to i64
  %87 = getelementptr inbounds ptr, ptr %11, i64 %86
  store ptr %23, ptr %87, align 8, !tbaa !44
  %88 = add i32 %24, 2
  %89 = getelementptr ptr, ptr %87, i64 1
  store ptr null, ptr %89, align 8, !tbaa !44
  %90 = load i8, ptr %0, align 8
  %91 = and i8 %90, 3
  %92 = zext nneg i8 %91 to i32
  %93 = tail call ptr @first_dom_son(i32 noundef %92, ptr noundef nonnull %23) #11
  %94 = icmp eq ptr %93, null
  br i1 %94, label %109, label %95, !prof !92

95:                                               ; preds = %85
  %96 = sext i32 %88 to i64
  br label %97

97:                                               ; preds = %95, %97
  %98 = phi i64 [ %96, %95 ], [ %100, %97 ]
  %99 = phi ptr [ %93, %95 ], [ %105, %97 ]
  %100 = add i64 %98, 1
  %101 = getelementptr inbounds ptr, ptr %11, i64 %98
  store ptr %99, ptr %101, align 8, !tbaa !44
  %102 = load i8, ptr %0, align 8
  %103 = and i8 %102, 3
  %104 = zext nneg i8 %103 to i32
  %105 = tail call ptr @next_dom_son(i32 noundef %104, ptr noundef nonnull %99) #11
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %97, !prof !93, !llvm.loop !94

107:                                              ; preds = %97
  %108 = trunc i64 %100 to i32
  br label %109

109:                                              ; preds = %107, %85, %38
  %110 = phi i32 [ %24, %38 ], [ %88, %85 ], [ %108, %107 ]
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %156, !prof !95

112:                                              ; preds = %109
  %113 = zext nneg i32 %110 to i64
  br label %114

114:                                              ; preds = %112, %151
  %115 = phi i64 [ %113, %112 ], [ %120, %151 ]
  %116 = getelementptr ptr, ptr %17, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !44
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %153, !prof !96

119:                                              ; preds = %114
  %120 = add nsw i64 %115, -2
  %121 = load ptr, ptr %18, align 8, !tbaa !97
  %122 = icmp eq ptr %121, null
  br i1 %122, label %126, label %123, !prof !98

123:                                              ; preds = %119
  %124 = getelementptr inbounds ptr, ptr %11, i64 %120
  %125 = load ptr, ptr %124, align 8, !tbaa !44
  tail call void %121(ptr noundef %0, ptr noundef %125) #11, !prof !99
  br label %126

126:                                              ; preds = %123, %119
  %127 = load ptr, ptr %19, align 8, !tbaa !76
  %128 = icmp eq ptr %127, null
  br i1 %128, label %151, label %129, !prof !78

129:                                              ; preds = %126
  %130 = load ptr, ptr %20, align 8, !tbaa !100
  %131 = load i32, ptr %130, align 8, !tbaa !81
  %132 = add i32 %131, -1
  store i32 %132, ptr %130, align 8, !tbaa !81
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.VEC_void_p_base, ptr %130, i64 0, i32 2, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !44
  %136 = load ptr, ptr %21, align 8, !tbaa !44
  %137 = icmp eq ptr %136, null
  br i1 %137, label %143, label %138, !prof !85

138:                                              ; preds = %129
  %139 = getelementptr inbounds %struct.VEC_void_p_base, ptr %136, i64 0, i32 1
  %140 = load i32, ptr %139, align 4, !tbaa !86
  %141 = load i32, ptr %136, align 8, !tbaa !81
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %145, !prof !87

143:                                              ; preds = %129, %138
  %144 = tail call ptr @vec_heap_p_reserve(ptr noundef %136, i32 noundef 1) #11
  store ptr %144, ptr %21, align 8, !tbaa !44
  br label %145

145:                                              ; preds = %138, %143
  %146 = load ptr, ptr %21, align 8, !tbaa !44
  %147 = load i32, ptr %146, align 8, !tbaa !81
  %148 = add i32 %147, 1
  store i32 %148, ptr %146, align 8, !tbaa !81
  %149 = zext i32 %147 to i64
  %150 = getelementptr inbounds %struct.VEC_void_p_base, ptr %146, i64 0, i32 2, i64 %149
  store ptr %135, ptr %150, align 8, !tbaa !44
  br label %151

151:                                              ; preds = %145, %126
  %152 = icmp sgt i64 %115, 2
  br i1 %152, label %114, label %153, !prof !101, !llvm.loop !102

153:                                              ; preds = %151, %114
  %154 = phi i64 [ %115, %114 ], [ %120, %151 ]
  %155 = trunc i64 %154 to i32
  br label %156

156:                                              ; preds = %153, %109
  %157 = phi i32 [ %110, %109 ], [ %155, %153 ]
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %164, label %159, !prof !92

159:                                              ; preds = %156
  %160 = add nsw i32 %157, -1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds ptr, ptr %11, i64 %161
  %163 = load ptr, ptr %162, align 8, !tbaa !44
  br label %22, !llvm.loop !103

164:                                              ; preds = %156
  tail call void @free(ptr noundef %11)
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init_walk_dominator_tree(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 !prof !63 {
  %2 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 7
  store ptr null, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 5
  store ptr null, ptr %3, align 8, !tbaa !100
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @fini_walk_dominator_tree(ptr nocapture noundef %0) local_unnamed_addr #8 !prof !63 {
  %2 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5, !prof !104

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 7
  br label %7

7:                                                ; preds = %5, %15
  %8 = load ptr, ptr %6, align 8, !tbaa !79
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !105

10:                                               ; preds = %7
  %11 = load i32, ptr %8, align 8, !tbaa !81
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi i32 [ %11, %10 ], [ 0, %7 ]
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15, !prof !106

15:                                               ; preds = %12
  %16 = load i32, ptr %8, align 8, !tbaa !81
  %17 = add i32 %16, -1
  store i32 %17, ptr %8, align 8, !tbaa !81
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.VEC_void_p_base, ptr %8, i64 0, i32 2, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  tail call void @free(ptr noundef %20)
  br label %7, !llvm.loop !107

21:                                               ; preds = %12, %1
  %22 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25, !prof !104

25:                                               ; preds = %21
  tail call void @free(ptr noundef %23)
  br label %26

26:                                               ; preds = %21, %25
  store ptr null, ptr %22, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30, !prof !104

30:                                               ; preds = %26
  tail call void @free(ptr noundef %28)
  br label %31

31:                                               ; preds = %26, %30
  store ptr null, ptr %27, align 8, !tbaa !44
  ret void
}

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!42}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @walk_dominator_tree, ptr @xmalloc, i64 609}
!36 = !{ptr @walk_dominator_tree, ptr @xcalloc, i64 1208}
!37 = !{ptr @walk_dominator_tree, ptr @vec_heap_p_reserve, i64 338}
!38 = !{ptr @walk_dominator_tree, ptr @first_dom_son, i64 3101777}
!39 = !{ptr @walk_dominator_tree, ptr @next_dom_son, i64 3101168}
!40 = !{ptr @walk_dominator_tree, ptr @free, i64 609}
!41 = !{ptr @fini_walk_dominator_tree, ptr @free, i64 1360}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !{!49, !45, i64 8}
!49 = !{!"_IO_FILE", !50, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !50, i64 112, !50, i64 116, !51, i64 120, !52, i64 128, !46, i64 130, !46, i64 131, !45, i64 136, !51, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !51, i64 184, !50, i64 192, !46, i64 196}
!50 = !{!"int", !46, i64 0}
!51 = !{!"long", !46, i64 0}
!52 = !{!"short", !46, i64 0}
!53 = !{!49, !45, i64 16}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{!46, !46, i64 0}
!56 = !{!49, !45, i64 40}
!57 = !{!49, !45, i64 48}
!58 = !{!49, !50, i64 0}
!59 = !{!50, !50, i64 0}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!"function_entry_count", i64 609}
!64 = !{!65, !45, i64 8}
!65 = !{!"function", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !50, i64 104, !50, i64 108, !50, i64 112, !50, i64 116, !50, i64 120, !50, i64 124, !45, i64 128, !50, i64 136, !50, i64 137, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139}
!66 = !{!67, !50, i64 24}
!67 = !{!"control_flow_graph", !45, i64 0, !45, i64 8, !45, i64 16, !50, i64 24, !50, i64 28, !50, i64 32, !45, i64 40, !50, i64 48, !46, i64 52, !46, i64 60, !50, i64 68, !50, i64 72}
!68 = !{!69, !45, i64 0}
!69 = !{!"basic_block_def", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !46, i64 32, !45, i64 48, !45, i64 56, !46, i64 64, !51, i64 72, !50, i64 80, !50, i64 84, !50, i64 88, !50, i64 92, !50, i64 96}
!70 = !{!"branch_weights", i32 404, i32 3101371}
!71 = !{!72, !50, i64 0}
!72 = !{!"VEC_edge_base", !50, i64 0, !50, i64 4, !46, i64 8}
!73 = !{!67, !45, i64 0}
!74 = !{!"branch_weights", i32 404, i32 0}
!75 = !{!67, !45, i64 8}
!76 = !{!77, !45, i64 8}
!77 = !{!"dom_walk_data", !50, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !51, i64 48, !45, i64 56}
!78 = !{!"branch_weights", i32 2775031, i32 326744}
!79 = !{!77, !45, i64 56}
!80 = !{!"branch_weights", i32 228, i32 326516}
!81 = !{!82, !50, i64 0}
!82 = !{!"VEC_void_p_base", !50, i64 0, !50, i64 4, !46, i64 8}
!83 = !{!"branch_weights", i32 1208, i32 325536}
!84 = !{!77, !51, i64 48}
!85 = !{!"branch_weights", i32 76, i32 326668}
!86 = !{!82, !50, i64 4}
!87 = !{!"branch_weights", i32 93, i32 326575}
!88 = !{!"VP", i32 0, i64 326744, i64 7768899810479329542, i64 326744}
!89 = !{!77, !45, i64 16}
!90 = !{!"branch_weights", i32 0, i32 3101775}
!91 = !{!"VP", i32 0, i64 3101775, i64 5281373425892377726, i64 1428867, i64 9005913715475674506, i64 370635, i64 -2948195237037985692, i64 326744}
!92 = !{!"branch_weights", i32 609, i32 3101166}
!93 = !{!"branch_weights", i32 3101166, i32 0}
!94 = distinct !{!94, !61, !62}
!95 = !{!"branch_weights", i32 608, i32 1}
!96 = !{!"branch_weights", i32 3101775, i32 3101166}
!97 = !{!77, !45, i64 24}
!98 = !{!"branch_weights", i32 187366, i32 2914409}
!99 = !{!"VP", i32 0, i64 2914409, i64 1766680707625957205, i64 1428867, i64 6966309474261330233, i64 370635, i64 675609886334855028, i64 326744}
!100 = !{!77, !45, i64 40}
!101 = !{!"branch_weights", i32 6202333, i32 608}
!102 = distinct !{!102, !61, !62}
!103 = distinct !{!103, !62}
!104 = !{!"branch_weights", i32 533, i32 76}
!105 = !{!"branch_weights", i32 0, i32 1284}
!106 = !{!"branch_weights", i32 76, i32 1208}
!107 = distinct !{!107, !61, !62}

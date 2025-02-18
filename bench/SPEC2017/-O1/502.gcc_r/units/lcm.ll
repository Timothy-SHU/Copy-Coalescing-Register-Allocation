; ModuleID = 'lcm.c'
source_filename = "lcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.edge_list = type { i32, i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !69 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !70
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !69 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !70
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !69 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !80

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #11
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !74
  %11 = load i8, ptr %3, align 1, !tbaa !81
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !69 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !80

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #11
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !74
  %11 = load i8, ptr %3, align 1, !tbaa !81
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !69 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !80

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #11
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !74
  %11 = load i8, ptr %3, align 1, !tbaa !81
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !69 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !70
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !69 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !80

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #11
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !82
  store i8 %12, ptr %4, align 1, !tbaa !81
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !69 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !80

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #11
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !82
  store i8 %12, ptr %4, align 1, !tbaa !81
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !69 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !70
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !80

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #11
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !82
  store i8 %12, ptr %4, align 1, !tbaa !81
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !69 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #11
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !69 {
  %2 = load i32, ptr %0, align 8, !tbaa !84
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !69 {
  %2 = load i32, ptr %0, align 8, !tbaa !84
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !69 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #11
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !85
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !69 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #11
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !85
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !69 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !69 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !69 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !69 {
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
  br i1 %23, label %7, label %24, !llvm.loop !86

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !69 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @pre_edge_lcm(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #8 !prof !89 {
  %8 = tail call ptr @create_edge_list() #11
  %9 = getelementptr inbounds %struct.edge_list, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !90
  %11 = load ptr, ptr @cfun, align 8, !tbaa !70
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !92
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !94
  %16 = tail call ptr @sbitmap_vector_alloc(i32 noundef %15, i32 noundef %0) #11
  %17 = load ptr, ptr @cfun, align 8, !tbaa !70
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !92
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !94
  %22 = tail call ptr @sbitmap_vector_alloc(i32 noundef %21, i32 noundef %0) #11
  tail call void @compute_available(ptr noundef %2, ptr noundef %4, ptr noundef %22, ptr noundef %16)
  tail call void @free(ptr noundef %16)
  %23 = load ptr, ptr @cfun, align 8, !tbaa !70
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !92
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !94
  %28 = tail call ptr @sbitmap_vector_alloc(i32 noundef %27, i32 noundef %0) #11
  %29 = load ptr, ptr @cfun, align 8, !tbaa !70
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !92
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !94
  %34 = tail call ptr @sbitmap_vector_alloc(i32 noundef %33, i32 noundef %0) #11
  tail call fastcc void @compute_antinout_edge(ptr noundef %3, ptr noundef %1, ptr noundef %28, ptr noundef %34)
  %35 = tail call ptr @sbitmap_vector_alloc(i32 noundef %10, i32 noundef %0) #11
  %36 = load i32, ptr %9, align 4, !tbaa !90
  %37 = tail call ptr @sbitmap_alloc(i32 noundef %0) #11
  %38 = tail call ptr @sbitmap_alloc(i32 noundef %0) #11
  %39 = icmp sgt i32 %36, 0
  br i1 %39, label %40, label %95, !prof !96

40:                                               ; preds = %7
  %41 = getelementptr inbounds %struct.edge_list, ptr %8, i64 0, i32 2
  %42 = zext nneg i32 %36 to i64
  br label %43

43:                                               ; preds = %40, %92
  %44 = phi i64 [ 0, %40 ], [ %93, %92 ]
  %45 = load ptr, ptr %41, align 8, !tbaa !97
  %46 = getelementptr inbounds ptr, ptr %45, i64 %44
  %47 = load ptr, ptr %46, align 8, !tbaa !70
  %48 = load ptr, ptr %47, align 8, !tbaa !98
  %49 = getelementptr inbounds %struct.edge_def, ptr %47, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !100
  %51 = load ptr, ptr @cfun, align 8, !tbaa !70
  %52 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !92
  %54 = load ptr, ptr %53, align 8, !tbaa !101
  %55 = icmp eq ptr %48, %54
  br i1 %55, label %56, label %64, !prof !102

56:                                               ; preds = %43
  %57 = getelementptr inbounds ptr, ptr %35, i64 %44
  %58 = load ptr, ptr %57, align 8, !tbaa !70
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !103
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds ptr, ptr %28, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !70
  tail call void @sbitmap_copy(ptr noundef %58, ptr noundef %63) #11
  br label %92

64:                                               ; preds = %43
  %65 = getelementptr inbounds %struct.control_flow_graph, ptr %53, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !105
  %67 = icmp eq ptr %50, %66
  br i1 %67, label %68, label %71, !prof !106

68:                                               ; preds = %64
  %69 = getelementptr inbounds ptr, ptr %35, i64 %44
  %70 = load ptr, ptr %69, align 8, !tbaa !70
  tail call void @sbitmap_zero(ptr noundef %70) #11
  br label %92

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 9
  %73 = load i32, ptr %72, align 8, !tbaa !103
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %28, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !70
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 9
  %78 = load i32, ptr %77, align 8, !tbaa !103
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds ptr, ptr %22, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !70
  tail call void @sbitmap_difference(ptr noundef %37, ptr noundef %76, ptr noundef %81) #11
  %82 = load i32, ptr %77, align 8, !tbaa !103
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds ptr, ptr %34, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !70
  tail call void @sbitmap_not(ptr noundef %38, ptr noundef %85) #11
  %86 = getelementptr inbounds ptr, ptr %35, i64 %44
  %87 = load ptr, ptr %86, align 8, !tbaa !70
  %88 = load i32, ptr %77, align 8, !tbaa !103
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds ptr, ptr %4, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !70
  tail call void @sbitmap_a_and_b_or_c(ptr noundef %87, ptr noundef %37, ptr noundef %91, ptr noundef %38) #11
  br label %92

92:                                               ; preds = %71, %68, %56
  %93 = add nuw nsw i64 %44, 1
  %94 = icmp eq i64 %93, %42
  br i1 %94, label %95, label %43, !prof !107, !llvm.loop !108

95:                                               ; preds = %92, %7
  %96 = load ptr, ptr %38, align 8, !tbaa !109
  tail call void @free(ptr noundef %96)
  tail call void @free(ptr noundef %38)
  %97 = load ptr, ptr %37, align 8, !tbaa !109
  tail call void @free(ptr noundef %97)
  tail call void @free(ptr noundef %37)
  tail call void @free(ptr noundef %34)
  tail call void @free(ptr noundef %28)
  tail call void @free(ptr noundef %22)
  %98 = tail call ptr @sbitmap_vector_alloc(i32 noundef %10, i32 noundef %0) #11
  %99 = load ptr, ptr @cfun, align 8, !tbaa !70
  %100 = getelementptr inbounds %struct.function, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !92
  %102 = getelementptr inbounds %struct.control_flow_graph, ptr %101, i64 0, i32 5
  %103 = load i32, ptr %102, align 8, !tbaa !94
  %104 = add nsw i32 %103, 1
  %105 = tail call ptr @sbitmap_vector_alloc(i32 noundef %104, i32 noundef %0) #11
  %106 = load i32, ptr %9, align 4, !tbaa !90
  %107 = load ptr, ptr @cfun, align 8, !tbaa !70
  %108 = getelementptr inbounds %struct.function, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !92
  %110 = getelementptr inbounds %struct.control_flow_graph, ptr %109, i64 0, i32 3
  %111 = load i32, ptr %110, align 8, !tbaa !111
  %112 = sext i32 %111 to i64
  %113 = shl nsw i64 %112, 3
  %114 = tail call ptr @xmalloc(i64 noundef %113) #11
  %115 = icmp sgt i32 %106, 0
  br i1 %115, label %116, label %128, !prof !96

116:                                              ; preds = %95
  %117 = getelementptr inbounds %struct.edge_list, ptr %8, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !97
  %119 = zext nneg i32 %106 to i64
  br label %120

120:                                              ; preds = %116, %120
  %121 = phi i64 [ 0, %116 ], [ %126, %120 ]
  %122 = inttoptr i64 %121 to ptr
  %123 = getelementptr inbounds ptr, ptr %118, i64 %121
  %124 = load ptr, ptr %123, align 8, !tbaa !70
  %125 = getelementptr inbounds %struct.edge_def, ptr %124, i64 0, i32 3
  store ptr %122, ptr %125, align 8, !tbaa !112
  %126 = add nuw nsw i64 %121, 1
  %127 = icmp eq i64 %126, %119
  br i1 %127, label %128, label %120, !prof !107, !llvm.loop !113

128:                                              ; preds = %120, %95
  tail call void @sbitmap_vector_ones(ptr noundef %98, i32 noundef %106) #11
  %129 = load ptr, ptr @cfun, align 8, !tbaa !70
  %130 = getelementptr inbounds %struct.function, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !92
  %132 = load ptr, ptr %131, align 8, !tbaa !101
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %132, i64 0, i32 1
  br label %134

134:                                              ; preds = %165, %128
  %135 = phi i32 [ 0, %128 ], [ %166, %165 ]
  %136 = load ptr, ptr %133, align 8, !tbaa !70
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138, !prof !114

138:                                              ; preds = %134
  %139 = load i32, ptr %136, align 8, !tbaa !115
  br label %140

140:                                              ; preds = %138, %134
  %141 = phi i32 [ %139, %138 ], [ 0, %134 ]
  %142 = icmp eq i32 %141, %135
  br i1 %142, label %147, label %143, !prof !117

143:                                              ; preds = %140
  %144 = zext i32 %135 to i64
  %145 = getelementptr inbounds %struct.VEC_edge_base, ptr %136, i64 0, i32 2, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !70
  br label %147

147:                                              ; preds = %143, %140
  %148 = phi ptr [ %146, %143 ], [ null, %140 ]
  br i1 %142, label %167, label %149, !prof !117

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct.edge_def, ptr %148, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !112
  %152 = ptrtoint ptr %151 to i64
  %153 = getelementptr inbounds ptr, ptr %98, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !70
  %155 = getelementptr inbounds ptr, ptr %35, i64 %152
  %156 = load ptr, ptr %155, align 8, !tbaa !70
  tail call void @sbitmap_copy(ptr noundef %154, ptr noundef %156) #11
  %157 = load ptr, ptr %133, align 8, !tbaa !70
  %158 = icmp eq ptr %157, null
  br i1 %158, label %161, label %159, !prof !118

159:                                              ; preds = %149
  %160 = load i32, ptr %157, align 8, !tbaa !115
  br label %161

161:                                              ; preds = %159, %149
  %162 = phi i32 [ %160, %159 ], [ 0, %149 ]
  %163 = icmp ult i32 %135, %162
  br i1 %163, label %165, label %164, !prof !119

164:                                              ; preds = %161
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #11
  br label %165

165:                                              ; preds = %164, %161
  %166 = add i32 %135, 1
  br label %134, !llvm.loop !120

167:                                              ; preds = %147
  %168 = load ptr, ptr @cfun, align 8, !tbaa !70
  %169 = getelementptr inbounds %struct.function, ptr %168, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !92
  %171 = load ptr, ptr %170, align 8, !tbaa !101
  %172 = getelementptr inbounds %struct.basic_block_def, ptr %171, i64 0, i32 6
  %173 = load ptr, ptr %172, align 8, !tbaa !121
  %174 = getelementptr inbounds %struct.control_flow_graph, ptr %170, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !105
  %176 = icmp eq ptr %173, %175
  br i1 %176, label %190, label %177, !prof !122

177:                                              ; preds = %167, %177
  %178 = phi ptr [ %183, %177 ], [ %173, %167 ]
  %179 = phi ptr [ %180, %177 ], [ %114, %167 ]
  %180 = getelementptr inbounds ptr, ptr %179, i64 1
  store ptr %178, ptr %179, align 8, !tbaa !70
  %181 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 2
  store ptr %178, ptr %181, align 8, !tbaa !123
  %182 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 6
  %183 = load ptr, ptr %182, align 8, !tbaa !121
  %184 = load ptr, ptr @cfun, align 8, !tbaa !70
  %185 = getelementptr inbounds %struct.function, ptr %184, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !92
  %187 = getelementptr inbounds %struct.control_flow_graph, ptr %186, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !105
  %189 = icmp eq ptr %183, %188
  br i1 %189, label %190, label %177, !prof !124, !llvm.loop !125

190:                                              ; preds = %177, %167
  %191 = phi ptr [ %170, %167 ], [ %186, %177 ]
  %192 = getelementptr inbounds %struct.control_flow_graph, ptr %191, i64 0, i32 3
  %193 = load i32, ptr %192, align 8, !tbaa !111
  %194 = add nsw i32 %193, -2
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds ptr, ptr %114, i64 %195
  %197 = icmp eq i32 %194, 0
  br i1 %197, label %323, label %201, !prof !122

198:                                              ; preds = %270
  %199 = select i1 %208, ptr %205, ptr %114, !prof !126
  %200 = icmp eq i32 %257, 0
  br i1 %200, label %323, label %201, !prof !124, !llvm.loop !127

201:                                              ; preds = %190, %198
  %202 = phi ptr [ %258, %198 ], [ %114, %190 ]
  %203 = phi ptr [ %199, %198 ], [ %114, %190 ]
  %204 = phi i32 [ %257, %198 ], [ %194, %190 ]
  %205 = getelementptr inbounds ptr, ptr %203, i64 1
  %206 = load ptr, ptr %203, align 8, !tbaa !70
  %207 = getelementptr inbounds %struct.basic_block_def, ptr %206, i64 0, i32 2
  store ptr null, ptr %207, align 8, !tbaa !123
  %208 = icmp ult ptr %205, %196
  %209 = getelementptr inbounds %struct.basic_block_def, ptr %206, i64 0, i32 9
  %210 = load i32, ptr %209, align 8, !tbaa !103
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds ptr, ptr %105, i64 %211
  %213 = load ptr, ptr %212, align 8, !tbaa !70
  tail call void @sbitmap_ones(ptr noundef %213) #11
  %214 = icmp eq ptr %206, null
  br label %215

215:                                              ; preds = %250, %201
  %216 = phi i32 [ 0, %201 ], [ %251, %250 ]
  br i1 %214, label %217, label %218, !prof !128

217:                                              ; preds = %215
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 687, ptr noundef nonnull @.str.1) #11
  br label %218

218:                                              ; preds = %217, %215
  %219 = load ptr, ptr %206, align 8, !tbaa !70
  %220 = icmp eq ptr %219, null
  br i1 %220, label %223, label %221, !prof !128

221:                                              ; preds = %218
  %222 = load i32, ptr %219, align 8, !tbaa !115
  br label %223

223:                                              ; preds = %221, %218
  %224 = phi i32 [ %222, %221 ], [ 0, %218 ]
  %225 = icmp eq i32 %224, %216
  br i1 %225, label %230, label %226, !prof !129

226:                                              ; preds = %223
  %227 = zext i32 %216 to i64
  %228 = getelementptr inbounds %struct.VEC_edge_base, ptr %219, i64 0, i32 2, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !70
  br label %230

230:                                              ; preds = %226, %223
  %231 = phi ptr [ %229, %226 ], [ null, %223 ]
  br i1 %225, label %252, label %232, !prof !129

232:                                              ; preds = %230
  %233 = load i32, ptr %209, align 8, !tbaa !103
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds ptr, ptr %105, i64 %234
  %236 = load ptr, ptr %235, align 8, !tbaa !70
  %237 = getelementptr inbounds %struct.edge_def, ptr %231, i64 0, i32 3
  %238 = load ptr, ptr %237, align 8, !tbaa !112
  %239 = ptrtoint ptr %238 to i64
  %240 = getelementptr inbounds ptr, ptr %98, i64 %239
  %241 = load ptr, ptr %240, align 8, !tbaa !70
  tail call void @sbitmap_a_and_b(ptr noundef %236, ptr noundef %236, ptr noundef %241) #11
  %242 = load ptr, ptr %206, align 8, !tbaa !70
  %243 = icmp eq ptr %242, null
  br i1 %243, label %246, label %244, !prof !130

244:                                              ; preds = %232
  %245 = load i32, ptr %242, align 8, !tbaa !115
  br label %246

246:                                              ; preds = %244, %232
  %247 = phi i32 [ %245, %244 ], [ 0, %232 ]
  %248 = icmp ult i32 %216, %247
  br i1 %248, label %250, label %249, !prof !131

249:                                              ; preds = %246
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #11
  br label %250

250:                                              ; preds = %249, %246
  %251 = add i32 %216, 1
  br label %215, !llvm.loop !132

252:                                              ; preds = %230
  %253 = add i32 %204, -1
  %254 = getelementptr inbounds %struct.basic_block_def, ptr %206, i64 0, i32 1
  br label %255

255:                                              ; preds = %321, %252
  %256 = phi i32 [ 0, %252 ], [ %322, %321 ]
  %257 = phi i32 [ %253, %252 ], [ %311, %321 ]
  %258 = phi ptr [ %202, %252 ], [ %312, %321 ]
  %259 = load ptr, ptr %254, align 8, !tbaa !70
  %260 = icmp eq ptr %259, null
  br i1 %260, label %263, label %261, !prof !133

261:                                              ; preds = %255
  %262 = load i32, ptr %259, align 8, !tbaa !115
  br label %263

263:                                              ; preds = %261, %255
  %264 = phi i32 [ %262, %261 ], [ 0, %255 ]
  %265 = icmp eq i32 %264, %256
  br i1 %265, label %270, label %266, !prof !134

266:                                              ; preds = %263
  %267 = zext i32 %256 to i64
  %268 = getelementptr inbounds %struct.VEC_edge_base, ptr %259, i64 0, i32 2, i64 %267
  %269 = load ptr, ptr %268, align 8, !tbaa !70
  br label %270

270:                                              ; preds = %266, %263
  %271 = phi ptr [ %269, %266 ], [ null, %263 ]
  br i1 %265, label %198, label %272, !prof !134

272:                                              ; preds = %270
  %273 = getelementptr inbounds %struct.edge_def, ptr %271, i64 0, i32 3
  %274 = load ptr, ptr %273, align 8, !tbaa !112
  %275 = ptrtoint ptr %274 to i64
  %276 = getelementptr inbounds ptr, ptr %98, i64 %275
  %277 = load ptr, ptr %276, align 8, !tbaa !70
  %278 = getelementptr inbounds ptr, ptr %35, i64 %275
  %279 = load ptr, ptr %278, align 8, !tbaa !70
  %280 = load ptr, ptr %271, align 8, !tbaa !98
  %281 = getelementptr inbounds %struct.basic_block_def, ptr %280, i64 0, i32 9
  %282 = load i32, ptr %281, align 8, !tbaa !103
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds ptr, ptr %105, i64 %283
  %285 = load ptr, ptr %284, align 8, !tbaa !70
  %286 = getelementptr inbounds ptr, ptr %3, i64 %283
  %287 = load ptr, ptr %286, align 8, !tbaa !70
  %288 = tail call zeroext i8 @sbitmap_union_of_diff_cg(ptr noundef %277, ptr noundef %279, ptr noundef %285, ptr noundef %287) #11
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %310, label %290, !prof !135

290:                                              ; preds = %272
  %291 = getelementptr inbounds %struct.edge_def, ptr %271, i64 0, i32 1
  %292 = load ptr, ptr %291, align 8, !tbaa !100
  %293 = load ptr, ptr @cfun, align 8, !tbaa !70
  %294 = getelementptr inbounds %struct.function, ptr %293, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !92
  %296 = getelementptr inbounds %struct.control_flow_graph, ptr %295, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !105
  %298 = icmp eq ptr %292, %297
  br i1 %298, label %310, label %299, !prof !106

299:                                              ; preds = %290
  %300 = getelementptr inbounds %struct.basic_block_def, ptr %292, i64 0, i32 2
  %301 = load ptr, ptr %300, align 8, !tbaa !123
  %302 = icmp eq ptr %301, null
  br i1 %302, label %303, label %310, !prof !136

303:                                              ; preds = %299
  %304 = getelementptr inbounds ptr, ptr %258, i64 1
  store ptr %292, ptr %258, align 8, !tbaa !70
  %305 = load ptr, ptr %291, align 8, !tbaa !100
  %306 = getelementptr inbounds %struct.basic_block_def, ptr %305, i64 0, i32 2
  store ptr %271, ptr %306, align 8, !tbaa !123
  %307 = add i32 %257, 1
  %308 = icmp ult ptr %304, %196
  %309 = select i1 %308, ptr %304, ptr %114
  br label %310

310:                                              ; preds = %303, %299, %290, %272
  %311 = phi i32 [ %257, %299 ], [ %257, %290 ], [ %257, %272 ], [ %307, %303 ]
  %312 = phi ptr [ %258, %299 ], [ %258, %290 ], [ %258, %272 ], [ %309, %303 ]
  %313 = load ptr, ptr %254, align 8, !tbaa !70
  %314 = icmp eq ptr %313, null
  br i1 %314, label %317, label %315, !prof !135

315:                                              ; preds = %310
  %316 = load i32, ptr %313, align 8, !tbaa !115
  br label %317

317:                                              ; preds = %315, %310
  %318 = phi i32 [ %316, %315 ], [ 0, %310 ]
  %319 = icmp ult i32 %256, %318
  br i1 %319, label %321, label %320, !prof !137

320:                                              ; preds = %317
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #11
  br label %321

321:                                              ; preds = %320, %317
  %322 = add i32 %256, 1
  br label %255, !llvm.loop !138

323:                                              ; preds = %198, %190
  %324 = load ptr, ptr @cfun, align 8, !tbaa !70
  %325 = getelementptr inbounds %struct.function, ptr %324, i64 0, i32 1
  %326 = load ptr, ptr %325, align 8, !tbaa !92
  %327 = getelementptr inbounds %struct.control_flow_graph, ptr %326, i64 0, i32 5
  %328 = load i32, ptr %327, align 8, !tbaa !94
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds ptr, ptr %105, i64 %329
  %331 = load ptr, ptr %330, align 8, !tbaa !70
  tail call void @sbitmap_ones(ptr noundef %331) #11
  %332 = load ptr, ptr @cfun, align 8, !tbaa !70
  %333 = getelementptr inbounds %struct.function, ptr %332, i64 0, i32 1
  %334 = load ptr, ptr %333, align 8, !tbaa !92
  %335 = getelementptr inbounds %struct.control_flow_graph, ptr %334, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !105
  %337 = icmp eq ptr %336, null
  br label %338

338:                                              ; preds = %377, %323
  %339 = phi i32 [ 0, %323 ], [ %378, %377 ]
  br i1 %337, label %340, label %341, !prof !139

340:                                              ; preds = %338
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 687, ptr noundef nonnull @.str.1) #11
  br label %341

341:                                              ; preds = %340, %338
  %342 = load ptr, ptr %336, align 8, !tbaa !70
  %343 = icmp eq ptr %342, null
  br i1 %343, label %346, label %344, !prof !139

344:                                              ; preds = %341
  %345 = load i32, ptr %342, align 8, !tbaa !115
  br label %346

346:                                              ; preds = %344, %341
  %347 = phi i32 [ %345, %344 ], [ 0, %341 ]
  %348 = icmp eq i32 %347, %339
  br i1 %348, label %353, label %349, !prof !140

349:                                              ; preds = %346
  %350 = zext i32 %339 to i64
  %351 = getelementptr inbounds %struct.VEC_edge_base, ptr %342, i64 0, i32 2, i64 %350
  %352 = load ptr, ptr %351, align 8, !tbaa !70
  br label %353

353:                                              ; preds = %349, %346
  %354 = phi ptr [ %352, %349 ], [ null, %346 ]
  br i1 %348, label %379, label %355, !prof !140

355:                                              ; preds = %353
  %356 = load ptr, ptr @cfun, align 8, !tbaa !70
  %357 = getelementptr inbounds %struct.function, ptr %356, i64 0, i32 1
  %358 = load ptr, ptr %357, align 8, !tbaa !92
  %359 = getelementptr inbounds %struct.control_flow_graph, ptr %358, i64 0, i32 5
  %360 = load i32, ptr %359, align 8, !tbaa !94
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds ptr, ptr %105, i64 %361
  %363 = load ptr, ptr %362, align 8, !tbaa !70
  %364 = getelementptr inbounds %struct.edge_def, ptr %354, i64 0, i32 3
  %365 = load ptr, ptr %364, align 8, !tbaa !112
  %366 = ptrtoint ptr %365 to i64
  %367 = getelementptr inbounds ptr, ptr %98, i64 %366
  %368 = load ptr, ptr %367, align 8, !tbaa !70
  tail call void @sbitmap_a_and_b(ptr noundef %363, ptr noundef %363, ptr noundef %368) #11
  %369 = load ptr, ptr %336, align 8, !tbaa !70
  %370 = icmp eq ptr %369, null
  br i1 %370, label %373, label %371, !prof !141

371:                                              ; preds = %355
  %372 = load i32, ptr %369, align 8, !tbaa !115
  br label %373

373:                                              ; preds = %371, %355
  %374 = phi i32 [ %372, %371 ], [ 0, %355 ]
  %375 = icmp ult i32 %339, %374
  br i1 %375, label %377, label %376, !prof !142

376:                                              ; preds = %373
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #11
  br label %377

377:                                              ; preds = %376, %373
  %378 = add i32 %339, 1
  br label %338, !llvm.loop !143

379:                                              ; preds = %353
  tail call void @clear_aux_for_edges() #11
  tail call void @free(ptr noundef %114)
  tail call void @free(ptr noundef %35)
  %380 = tail call ptr @sbitmap_vector_alloc(i32 noundef %10, i32 noundef %0) #11
  store ptr %380, ptr %5, align 8, !tbaa !70
  %381 = load ptr, ptr @cfun, align 8, !tbaa !70
  %382 = getelementptr inbounds %struct.function, ptr %381, i64 0, i32 1
  %383 = load ptr, ptr %382, align 8, !tbaa !92
  %384 = getelementptr inbounds %struct.control_flow_graph, ptr %383, i64 0, i32 5
  %385 = load i32, ptr %384, align 8, !tbaa !94
  %386 = tail call ptr @sbitmap_vector_alloc(i32 noundef %385, i32 noundef %0) #11
  store ptr %386, ptr %6, align 8, !tbaa !70
  %387 = load ptr, ptr %5, align 8, !tbaa !70
  %388 = load ptr, ptr @cfun, align 8, !tbaa !70
  %389 = getelementptr inbounds %struct.function, ptr %388, i64 0, i32 1
  %390 = load ptr, ptr %389, align 8, !tbaa !92
  %391 = load ptr, ptr %390, align 8, !tbaa !101
  %392 = getelementptr inbounds %struct.basic_block_def, ptr %391, i64 0, i32 6
  %393 = load ptr, ptr %392, align 8, !tbaa !121
  %394 = getelementptr inbounds %struct.control_flow_graph, ptr %390, i64 0, i32 1
  %395 = load ptr, ptr %394, align 8, !tbaa !105
  %396 = icmp eq ptr %393, %395
  br i1 %396, label %397, label %402, !prof !122

397:                                              ; preds = %402, %379
  %398 = load i32, ptr %9, align 4, !tbaa !90
  %399 = icmp sgt i32 %398, 0
  br i1 %399, label %400, label %449, !prof !96

400:                                              ; preds = %397
  %401 = getelementptr inbounds %struct.edge_list, ptr %8, i64 0, i32 2
  br label %421

402:                                              ; preds = %379, %402
  %403 = phi ptr [ %414, %402 ], [ %393, %379 ]
  %404 = getelementptr inbounds %struct.basic_block_def, ptr %403, i64 0, i32 9
  %405 = load i32, ptr %404, align 8, !tbaa !103
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds ptr, ptr %386, i64 %406
  %408 = load ptr, ptr %407, align 8, !tbaa !70
  %409 = getelementptr inbounds ptr, ptr %3, i64 %406
  %410 = load ptr, ptr %409, align 8, !tbaa !70
  %411 = getelementptr inbounds ptr, ptr %105, i64 %406
  %412 = load ptr, ptr %411, align 8, !tbaa !70
  tail call void @sbitmap_difference(ptr noundef %408, ptr noundef %410, ptr noundef %412) #11
  %413 = getelementptr inbounds %struct.basic_block_def, ptr %403, i64 0, i32 6
  %414 = load ptr, ptr %413, align 8, !tbaa !121
  %415 = load ptr, ptr @cfun, align 8, !tbaa !70
  %416 = getelementptr inbounds %struct.function, ptr %415, i64 0, i32 1
  %417 = load ptr, ptr %416, align 8, !tbaa !92
  %418 = getelementptr inbounds %struct.control_flow_graph, ptr %417, i64 0, i32 1
  %419 = load ptr, ptr %418, align 8, !tbaa !105
  %420 = icmp eq ptr %414, %419
  br i1 %420, label %397, label %402, !prof !124, !llvm.loop !144

421:                                              ; preds = %400, %421
  %422 = phi i64 [ 0, %400 ], [ %445, %421 ]
  %423 = load ptr, ptr %401, align 8, !tbaa !97
  %424 = getelementptr inbounds ptr, ptr %423, i64 %422
  %425 = load ptr, ptr %424, align 8, !tbaa !70
  %426 = getelementptr inbounds %struct.edge_def, ptr %425, i64 0, i32 1
  %427 = load ptr, ptr %426, align 8, !tbaa !100
  %428 = load ptr, ptr @cfun, align 8, !tbaa !70
  %429 = getelementptr inbounds %struct.function, ptr %428, i64 0, i32 1
  %430 = load ptr, ptr %429, align 8, !tbaa !92
  %431 = getelementptr inbounds %struct.control_flow_graph, ptr %430, i64 0, i32 1
  %432 = load ptr, ptr %431, align 8, !tbaa !105
  %433 = icmp eq ptr %427, %432
  %434 = getelementptr inbounds ptr, ptr %387, i64 %422
  %435 = load ptr, ptr %434, align 8, !tbaa !70
  %436 = getelementptr inbounds ptr, ptr %98, i64 %422
  %437 = load ptr, ptr %436, align 8, !tbaa !70
  %438 = getelementptr inbounds %struct.basic_block_def, ptr %427, i64 0, i32 9
  %439 = getelementptr inbounds %struct.control_flow_graph, ptr %430, i64 0, i32 5
  %440 = select i1 %433, ptr %439, ptr %438, !prof !145
  %441 = load i32, ptr %440, align 8, !tbaa !85
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds ptr, ptr %105, i64 %442
  %444 = load ptr, ptr %443, align 8, !tbaa !70
  tail call void @sbitmap_difference(ptr noundef %435, ptr noundef %437, ptr noundef %444) #11
  %445 = add nuw nsw i64 %422, 1
  %446 = load i32, ptr %9, align 4, !tbaa !90
  %447 = sext i32 %446 to i64
  %448 = icmp slt i64 %445, %447
  br i1 %448, label %421, label %449, !prof !146, !llvm.loop !147

449:                                              ; preds = %421, %397
  tail call void @free(ptr noundef %105)
  tail call void @free(ptr noundef %98)
  ret ptr %8
}

declare ptr @create_edge_list() local_unnamed_addr #3

declare ptr @sbitmap_vector_alloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @compute_available(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #8 !prof !148 {
  %5 = load ptr, ptr @cfun, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !111
  %10 = add nsw i32 %9, -2
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 3
  %13 = tail call ptr @xmalloc(i64 noundef %12) #11
  %14 = load ptr, ptr @cfun, align 8, !tbaa !70
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !94
  tail call void @sbitmap_vector_ones(ptr noundef %2, i32 noundef %18) #11
  %19 = load ptr, ptr @cfun, align 8, !tbaa !70
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !92
  %22 = load ptr, ptr %21, align 8, !tbaa !101
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !121
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !105
  %27 = icmp eq ptr %24, %26
  br i1 %27, label %41, label %28, !prof !122

28:                                               ; preds = %4, %28
  %29 = phi ptr [ %34, %28 ], [ %24, %4 ]
  %30 = phi ptr [ %31, %28 ], [ %13, %4 ]
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  store ptr %29, ptr %30, align 8, !tbaa !70
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 2
  store ptr %29, ptr %32, align 8, !tbaa !123
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !121
  %35 = load ptr, ptr @cfun, align 8, !tbaa !70
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !92
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !105
  %40 = icmp eq ptr %34, %39
  br i1 %40, label %41, label %28, !prof !149, !llvm.loop !150

41:                                               ; preds = %28, %4
  %42 = phi ptr [ %21, %4 ], [ %37, %28 ]
  %43 = getelementptr inbounds %struct.control_flow_graph, ptr %42, i64 0, i32 3
  %44 = load i32, ptr %43, align 8, !tbaa !111
  %45 = add nsw i32 %44, -2
  %46 = sext i32 %45 to i64
  %47 = load ptr, ptr %42, align 8, !tbaa !101
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 1
  br label %49

49:                                               ; preds = %83, %41
  %50 = phi i32 [ 0, %41 ], [ %84, %83 ]
  %51 = load ptr, ptr %48, align 8, !tbaa !70
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53, !prof !151

53:                                               ; preds = %49
  %54 = load i32, ptr %51, align 8, !tbaa !115
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi i32 [ %54, %53 ], [ 0, %49 ]
  %57 = icmp eq i32 %56, %50
  br i1 %57, label %62, label %58, !prof !152

58:                                               ; preds = %55
  %59 = zext i32 %50 to i64
  %60 = getelementptr inbounds %struct.VEC_edge_base, ptr %51, i64 0, i32 2, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !70
  br label %62

62:                                               ; preds = %55, %58
  %63 = phi ptr [ %61, %58 ], [ null, %55 ]
  br i1 %57, label %64, label %67, !prof !152

64:                                               ; preds = %62
  %65 = getelementptr inbounds ptr, ptr %13, i64 %46
  %66 = icmp eq i32 %45, 0
  br i1 %66, label %183, label %85, !prof !122

67:                                               ; preds = %62
  %68 = load ptr, ptr @cfun, align 8, !tbaa !70
  %69 = getelementptr inbounds %struct.function, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !92
  %71 = load ptr, ptr %70, align 8, !tbaa !101
  %72 = getelementptr inbounds %struct.edge_def, ptr %63, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !100
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 2
  store ptr %71, ptr %74, align 8, !tbaa !123
  %75 = load ptr, ptr %48, align 8, !tbaa !70
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77, !prof !153

77:                                               ; preds = %67
  %78 = load i32, ptr %75, align 8, !tbaa !115
  br label %79

79:                                               ; preds = %77, %67
  %80 = phi i32 [ %78, %77 ], [ 0, %67 ]
  %81 = icmp ult i32 %50, %80
  br i1 %81, label %83, label %82, !prof !154

82:                                               ; preds = %79
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #11
  br label %83

83:                                               ; preds = %79, %82
  %84 = add i32 %50, 1
  br label %49, !llvm.loop !155

85:                                               ; preds = %64, %179
  %86 = phi ptr [ %181, %179 ], [ %13, %64 ]
  %87 = phi ptr [ %93, %179 ], [ %13, %64 ]
  %88 = phi i32 [ %180, %179 ], [ %45, %64 ]
  %89 = getelementptr inbounds ptr, ptr %87, i64 1
  %90 = load ptr, ptr %87, align 8, !tbaa !70
  %91 = add i32 %88, -1
  %92 = icmp ult ptr %89, %65
  %93 = select i1 %92, ptr %89, ptr %13, !prof !156
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !123
  %96 = load ptr, ptr @cfun, align 8, !tbaa !70
  %97 = getelementptr inbounds %struct.function, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !92
  %99 = load ptr, ptr %98, align 8, !tbaa !101
  %100 = icmp eq ptr %95, %99
  br i1 %100, label %101, label %107, !prof !157

101:                                              ; preds = %85
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 9
  %103 = load i32, ptr %102, align 8, !tbaa !103
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds ptr, ptr %3, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !70
  tail call void @sbitmap_zero(ptr noundef %106) #11
  br label %113

107:                                              ; preds = %85
  store ptr null, ptr %94, align 8, !tbaa !123
  %108 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 9
  %109 = load i32, ptr %108, align 8, !tbaa !103
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds ptr, ptr %3, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !70
  tail call void @sbitmap_intersection_of_preds(ptr noundef %112, ptr noundef %2, i32 noundef %109) #11
  br label %113

113:                                              ; preds = %107, %101
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 9
  %115 = load i32, ptr %114, align 8, !tbaa !103
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds ptr, ptr %2, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !70
  %119 = getelementptr inbounds ptr, ptr %0, i64 %116
  %120 = load ptr, ptr %119, align 8, !tbaa !70
  %121 = getelementptr inbounds ptr, ptr %3, i64 %116
  %122 = load ptr, ptr %121, align 8, !tbaa !70
  %123 = getelementptr inbounds ptr, ptr %1, i64 %116
  %124 = load ptr, ptr %123, align 8, !tbaa !70
  %125 = tail call zeroext i8 @sbitmap_union_of_diff_cg(ptr noundef %118, ptr noundef %120, ptr noundef %122, ptr noundef %124) #11
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %179, label %127, !prof !158

127:                                              ; preds = %113
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 1
  br label %129

129:                                              ; preds = %177, %127
  %130 = phi i32 [ 0, %127 ], [ %178, %177 ]
  %131 = phi i32 [ %91, %127 ], [ %167, %177 ]
  %132 = phi ptr [ %86, %127 ], [ %168, %177 ]
  %133 = load ptr, ptr %128, align 8, !tbaa !70
  %134 = icmp eq ptr %133, null
  br i1 %134, label %137, label %135, !prof !159

135:                                              ; preds = %129
  %136 = load i32, ptr %133, align 8, !tbaa !115
  br label %137

137:                                              ; preds = %135, %129
  %138 = phi i32 [ %136, %135 ], [ 0, %129 ]
  %139 = icmp eq i32 %138, %130
  br i1 %139, label %144, label %140, !prof !160

140:                                              ; preds = %137
  %141 = zext i32 %130 to i64
  %142 = getelementptr inbounds %struct.VEC_edge_base, ptr %133, i64 0, i32 2, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !70
  br label %144

144:                                              ; preds = %137, %140
  %145 = phi ptr [ %143, %140 ], [ null, %137 ]
  br i1 %139, label %179, label %146, !prof !160

146:                                              ; preds = %144
  %147 = getelementptr inbounds %struct.edge_def, ptr %145, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !100
  %149 = getelementptr inbounds %struct.basic_block_def, ptr %148, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !123
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %166, !prof !161

152:                                              ; preds = %146
  %153 = load ptr, ptr @cfun, align 8, !tbaa !70
  %154 = getelementptr inbounds %struct.function, ptr %153, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !92
  %156 = getelementptr inbounds %struct.control_flow_graph, ptr %155, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !105
  %158 = icmp eq ptr %148, %157
  br i1 %158, label %166, label %159, !prof !162

159:                                              ; preds = %152
  %160 = getelementptr inbounds ptr, ptr %132, i64 1
  store ptr %148, ptr %132, align 8, !tbaa !70
  %161 = load ptr, ptr %147, align 8, !tbaa !100
  %162 = getelementptr inbounds %struct.basic_block_def, ptr %161, i64 0, i32 2
  store ptr %145, ptr %162, align 8, !tbaa !123
  %163 = add i32 %131, 1
  %164 = icmp ult ptr %160, %65
  %165 = select i1 %164, ptr %160, ptr %13
  br label %166

166:                                              ; preds = %152, %146, %159
  %167 = phi i32 [ %131, %146 ], [ %131, %152 ], [ %163, %159 ]
  %168 = phi ptr [ %132, %146 ], [ %132, %152 ], [ %165, %159 ]
  %169 = load ptr, ptr %128, align 8, !tbaa !70
  %170 = icmp eq ptr %169, null
  br i1 %170, label %173, label %171, !prof !163

171:                                              ; preds = %166
  %172 = load i32, ptr %169, align 8, !tbaa !115
  br label %173

173:                                              ; preds = %171, %166
  %174 = phi i32 [ %172, %171 ], [ 0, %166 ]
  %175 = icmp ult i32 %130, %174
  br i1 %175, label %177, label %176, !prof !164

176:                                              ; preds = %173
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #11
  br label %177

177:                                              ; preds = %173, %176
  %178 = add i32 %130, 1
  br label %129, !llvm.loop !165

179:                                              ; preds = %144, %113
  %180 = phi i32 [ %91, %113 ], [ %131, %144 ]
  %181 = phi ptr [ %86, %113 ], [ %132, %144 ]
  %182 = icmp eq i32 %180, 0
  br i1 %182, label %183, label %85, !prof !149, !llvm.loop !166

183:                                              ; preds = %179, %64
  tail call void @clear_aux_for_edges() #11
  tail call void @clear_aux_for_blocks() #11
  tail call void @free(ptr noundef %13)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_antinout_edge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #8 !prof !89 !PGOFuncName !167 {
  %5 = load ptr, ptr @cfun, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !111
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = tail call ptr @xmalloc(i64 noundef %11) #11
  %13 = load ptr, ptr @cfun, align 8, !tbaa !70
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !94
  tail call void @sbitmap_vector_ones(ptr noundef %2, i32 noundef %17) #11
  %18 = load ptr, ptr @cfun, align 8, !tbaa !70
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !92
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !105
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !168
  %25 = load ptr, ptr @cfun, align 8, !tbaa !70
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !92
  %28 = load ptr, ptr %27, align 8, !tbaa !101
  %29 = icmp eq ptr %24, %28
  br i1 %29, label %42, label %30, !prof !122

30:                                               ; preds = %4, %30
  %31 = phi ptr [ %36, %30 ], [ %24, %4 ]
  %32 = phi ptr [ %33, %30 ], [ %12, %4 ]
  %33 = getelementptr inbounds ptr, ptr %32, i64 1
  store ptr %31, ptr %32, align 8, !tbaa !70
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 2
  store ptr %31, ptr %34, align 8, !tbaa !123
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !168
  %37 = load ptr, ptr @cfun, align 8, !tbaa !70
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !92
  %40 = load ptr, ptr %39, align 8, !tbaa !101
  %41 = icmp eq ptr %36, %40
  br i1 %41, label %42, label %30, !prof !124, !llvm.loop !169

42:                                               ; preds = %30, %4
  %43 = phi ptr [ %27, %4 ], [ %39, %30 ]
  %44 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !111
  %46 = add nsw i32 %45, -2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !105
  %50 = icmp eq ptr %49, null
  br label %51

51:                                               ; preds = %87, %42
  %52 = phi i32 [ 0, %42 ], [ %88, %87 ]
  br i1 %50, label %53, label %54, !prof !139

53:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 687, ptr noundef nonnull @.str.1) #11
  br label %54

54:                                               ; preds = %53, %51
  %55 = load ptr, ptr %49, align 8, !tbaa !70
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57, !prof !139

57:                                               ; preds = %54
  %58 = load i32, ptr %55, align 8, !tbaa !115
  br label %59

59:                                               ; preds = %57, %54
  %60 = phi i32 [ %58, %57 ], [ 0, %54 ]
  %61 = icmp eq i32 %60, %52
  br i1 %61, label %66, label %62, !prof !140

62:                                               ; preds = %59
  %63 = zext i32 %52 to i64
  %64 = getelementptr inbounds %struct.VEC_edge_base, ptr %55, i64 0, i32 2, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !70
  br label %66

66:                                               ; preds = %59, %62
  %67 = phi ptr [ %65, %62 ], [ null, %59 ]
  br i1 %61, label %68, label %71, !prof !140

68:                                               ; preds = %66
  %69 = getelementptr inbounds ptr, ptr %12, i64 %47
  %70 = icmp eq i32 %46, 0
  br i1 %70, label %188, label %89, !prof !122

71:                                               ; preds = %66
  %72 = load ptr, ptr @cfun, align 8, !tbaa !70
  %73 = getelementptr inbounds %struct.function, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !92
  %75 = getelementptr inbounds %struct.control_flow_graph, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !105
  %77 = load ptr, ptr %67, align 8, !tbaa !98
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 2
  store ptr %76, ptr %78, align 8, !tbaa !123
  %79 = load ptr, ptr %49, align 8, !tbaa !70
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81, !prof !141

81:                                               ; preds = %71
  %82 = load i32, ptr %79, align 8, !tbaa !115
  br label %83

83:                                               ; preds = %81, %71
  %84 = phi i32 [ %82, %81 ], [ 0, %71 ]
  %85 = icmp ult i32 %52, %84
  br i1 %85, label %87, label %86, !prof !142

86:                                               ; preds = %83
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #11
  br label %87

87:                                               ; preds = %83, %86
  %88 = add i32 %52, 1
  br label %51, !llvm.loop !170

89:                                               ; preds = %68, %184
  %90 = phi ptr [ %186, %184 ], [ %12, %68 ]
  %91 = phi ptr [ %97, %184 ], [ %12, %68 ]
  %92 = phi i32 [ %185, %184 ], [ %46, %68 ]
  %93 = getelementptr inbounds ptr, ptr %91, i64 1
  %94 = load ptr, ptr %91, align 8, !tbaa !70
  %95 = add i32 %92, -1
  %96 = icmp ult ptr %93, %69
  %97 = select i1 %96, ptr %93, ptr %12, !prof !126
  %98 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !123
  %100 = load ptr, ptr @cfun, align 8, !tbaa !70
  %101 = getelementptr inbounds %struct.function, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !92
  %103 = getelementptr inbounds %struct.control_flow_graph, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !105
  %105 = icmp eq ptr %99, %104
  br i1 %105, label %106, label %112, !prof !171

106:                                              ; preds = %89
  %107 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 9
  %108 = load i32, ptr %107, align 8, !tbaa !103
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds ptr, ptr %3, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !70
  tail call void @sbitmap_zero(ptr noundef %111) #11
  br label %118

112:                                              ; preds = %89
  store ptr null, ptr %98, align 8, !tbaa !123
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 9
  %114 = load i32, ptr %113, align 8, !tbaa !103
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds ptr, ptr %3, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !70
  tail call void @sbitmap_intersection_of_succs(ptr noundef %117, ptr noundef %2, i32 noundef %114) #11
  br label %118

118:                                              ; preds = %112, %106
  %119 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 9
  %120 = load i32, ptr %119, align 8, !tbaa !103
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds ptr, ptr %2, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !70
  %124 = getelementptr inbounds ptr, ptr %0, i64 %121
  %125 = load ptr, ptr %124, align 8, !tbaa !70
  %126 = getelementptr inbounds ptr, ptr %1, i64 %121
  %127 = load ptr, ptr %126, align 8, !tbaa !70
  %128 = getelementptr inbounds ptr, ptr %3, i64 %121
  %129 = load ptr, ptr %128, align 8, !tbaa !70
  %130 = tail call zeroext i8 @sbitmap_a_or_b_and_c_cg(ptr noundef %123, ptr noundef %125, ptr noundef %127, ptr noundef %129) #11
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %184, label %132, !prof !172

132:                                              ; preds = %118
  %133 = icmp eq ptr %94, null
  br label %134

134:                                              ; preds = %132, %182
  %135 = phi i32 [ %183, %182 ], [ 0, %132 ]
  %136 = phi i32 [ %172, %182 ], [ %95, %132 ]
  %137 = phi ptr [ %173, %182 ], [ %90, %132 ]
  br i1 %133, label %138, label %139, !prof !128

138:                                              ; preds = %134
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 687, ptr noundef nonnull @.str.1) #11
  br label %139

139:                                              ; preds = %138, %134
  %140 = load ptr, ptr %94, align 8, !tbaa !70
  %141 = icmp eq ptr %140, null
  br i1 %141, label %144, label %142, !prof !128

142:                                              ; preds = %139
  %143 = load i32, ptr %140, align 8, !tbaa !115
  br label %144

144:                                              ; preds = %142, %139
  %145 = phi i32 [ %143, %142 ], [ 0, %139 ]
  %146 = icmp eq i32 %145, %135
  br i1 %146, label %151, label %147, !prof !129

147:                                              ; preds = %144
  %148 = zext i32 %135 to i64
  %149 = getelementptr inbounds %struct.VEC_edge_base, ptr %140, i64 0, i32 2, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !70
  br label %151

151:                                              ; preds = %144, %147
  %152 = phi ptr [ %150, %147 ], [ null, %144 ]
  br i1 %146, label %184, label %153, !prof !129

153:                                              ; preds = %151
  %154 = load ptr, ptr %152, align 8, !tbaa !98
  %155 = getelementptr inbounds %struct.basic_block_def, ptr %154, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !123
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %171, !prof !173

158:                                              ; preds = %153
  %159 = load ptr, ptr @cfun, align 8, !tbaa !70
  %160 = getelementptr inbounds %struct.function, ptr %159, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !92
  %162 = load ptr, ptr %161, align 8, !tbaa !101
  %163 = icmp eq ptr %154, %162
  br i1 %163, label %171, label %164, !prof !119

164:                                              ; preds = %158
  %165 = getelementptr inbounds ptr, ptr %137, i64 1
  store ptr %154, ptr %137, align 8, !tbaa !70
  %166 = load ptr, ptr %152, align 8, !tbaa !98
  %167 = getelementptr inbounds %struct.basic_block_def, ptr %166, i64 0, i32 2
  store ptr %152, ptr %167, align 8, !tbaa !123
  %168 = add i32 %136, 1
  %169 = icmp ult ptr %165, %69
  %170 = select i1 %169, ptr %165, ptr %12
  br label %171

171:                                              ; preds = %158, %153, %164
  %172 = phi i32 [ %136, %153 ], [ %136, %158 ], [ %168, %164 ]
  %173 = phi ptr [ %137, %153 ], [ %137, %158 ], [ %170, %164 ]
  %174 = load ptr, ptr %94, align 8, !tbaa !70
  %175 = icmp eq ptr %174, null
  br i1 %175, label %178, label %176, !prof !130

176:                                              ; preds = %171
  %177 = load i32, ptr %174, align 8, !tbaa !115
  br label %178

178:                                              ; preds = %176, %171
  %179 = phi i32 [ %177, %176 ], [ 0, %171 ]
  %180 = icmp ult i32 %135, %179
  br i1 %180, label %182, label %181, !prof !131

181:                                              ; preds = %178
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #11
  br label %182

182:                                              ; preds = %178, %181
  %183 = add i32 %135, 1
  br label %134, !llvm.loop !174

184:                                              ; preds = %151, %118
  %185 = phi i32 [ %95, %118 ], [ %136, %151 ]
  %186 = phi ptr [ %90, %118 ], [ %137, %151 ]
  %187 = icmp eq i32 %185, 0
  br i1 %187, label %188, label %89, !prof !124, !llvm.loop !175

188:                                              ; preds = %184, %68
  tail call void @clear_aux_for_edges() #11
  tail call void @clear_aux_for_blocks() #11
  tail call void @free(ptr noundef %12)
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare void @sbitmap_vector_ones(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare void @sbitmap_intersection_of_preds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @sbitmap_union_of_diff_cg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @clear_aux_for_edges() local_unnamed_addr #3

declare void @clear_aux_for_blocks() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @pre_edge_rev_lcm(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #10 !prof !69 {
  %8 = tail call ptr @create_edge_list() #11
  %9 = getelementptr inbounds %struct.edge_list, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !90
  %11 = load ptr, ptr @cfun, align 8, !tbaa !70
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !92
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !94
  %16 = tail call ptr @sbitmap_vector_alloc(i32 noundef %15, i32 noundef %0) #11
  %17 = load ptr, ptr @cfun, align 8, !tbaa !70
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !92
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !94
  %22 = tail call ptr @sbitmap_vector_alloc(i32 noundef %21, i32 noundef %0) #11
  %23 = load ptr, ptr @cfun, align 8, !tbaa !70
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !92
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !94
  tail call void @sbitmap_vector_zero(ptr noundef %16, i32 noundef %27) #11
  %28 = load ptr, ptr @cfun, align 8, !tbaa !70
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !92
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !94
  tail call void @sbitmap_vector_zero(ptr noundef %22, i32 noundef %32) #11
  tail call fastcc void @compute_antinout_edge(ptr noundef %3, ptr noundef %1, ptr noundef %16, ptr noundef %22)
  %33 = load ptr, ptr @cfun, align 8, !tbaa !70
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !92
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !94
  %38 = tail call ptr @sbitmap_vector_alloc(i32 noundef %37, i32 noundef %0) #11
  %39 = load ptr, ptr @cfun, align 8, !tbaa !70
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !92
  %42 = getelementptr inbounds %struct.control_flow_graph, ptr %41, i64 0, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !94
  %44 = tail call ptr @sbitmap_vector_alloc(i32 noundef %43, i32 noundef %0) #11
  tail call void @compute_available(ptr noundef %2, ptr noundef %4, ptr noundef %38, ptr noundef %44)
  %45 = tail call ptr @sbitmap_vector_alloc(i32 noundef %10, i32 noundef %0) #11
  %46 = load i32, ptr %9, align 4, !tbaa !90
  %47 = tail call ptr @sbitmap_alloc(i32 noundef %0) #11
  %48 = tail call ptr @sbitmap_alloc(i32 noundef %0) #11
  %49 = icmp sgt i32 %46, 0
  br i1 %49, label %50, label %105

50:                                               ; preds = %7
  %51 = getelementptr inbounds %struct.edge_list, ptr %8, i64 0, i32 2
  %52 = zext nneg i32 %46 to i64
  br label %53

53:                                               ; preds = %50, %102
  %54 = phi i64 [ 0, %50 ], [ %103, %102 ]
  %55 = load ptr, ptr %51, align 8, !tbaa !97
  %56 = getelementptr inbounds ptr, ptr %55, i64 %54
  %57 = load ptr, ptr %56, align 8, !tbaa !70
  %58 = load ptr, ptr %57, align 8, !tbaa !98
  %59 = getelementptr inbounds %struct.edge_def, ptr %57, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !100
  %61 = load ptr, ptr @cfun, align 8, !tbaa !70
  %62 = getelementptr inbounds %struct.function, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !92
  %64 = getelementptr inbounds %struct.control_flow_graph, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !105
  %66 = icmp eq ptr %60, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %53
  %68 = getelementptr inbounds ptr, ptr %45, i64 %54
  %69 = load ptr, ptr %68, align 8, !tbaa !70
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 9
  %71 = load i32, ptr %70, align 8, !tbaa !103
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds ptr, ptr %38, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !70
  tail call void @sbitmap_copy(ptr noundef %69, ptr noundef %74) #11
  br label %102

75:                                               ; preds = %53
  %76 = load ptr, ptr %63, align 8, !tbaa !101
  %77 = icmp eq ptr %58, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = getelementptr inbounds ptr, ptr %45, i64 %54
  %80 = load ptr, ptr %79, align 8, !tbaa !70
  tail call void @sbitmap_zero(ptr noundef %80) #11
  br label %102

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 9
  %83 = load i32, ptr %82, align 8, !tbaa !103
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds ptr, ptr %38, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !70
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 9
  %88 = load i32, ptr %87, align 8, !tbaa !103
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds ptr, ptr %16, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !70
  tail call void @sbitmap_difference(ptr noundef %47, ptr noundef %86, ptr noundef %91) #11
  %92 = load i32, ptr %87, align 8, !tbaa !103
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds ptr, ptr %44, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !70
  tail call void @sbitmap_not(ptr noundef %48, ptr noundef %95) #11
  %96 = getelementptr inbounds ptr, ptr %45, i64 %54
  %97 = load ptr, ptr %96, align 8, !tbaa !70
  %98 = load i32, ptr %87, align 8, !tbaa !103
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds ptr, ptr %4, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !70
  tail call void @sbitmap_a_and_b_or_c(ptr noundef %97, ptr noundef %47, ptr noundef %101, ptr noundef %48) #11
  br label %102

102:                                              ; preds = %81, %78, %67
  %103 = add nuw nsw i64 %54, 1
  %104 = icmp eq i64 %103, %52
  br i1 %104, label %105, label %53, !llvm.loop !176

105:                                              ; preds = %102, %7
  %106 = load ptr, ptr %48, align 8, !tbaa !109
  tail call void @free(ptr noundef %106)
  tail call void @free(ptr noundef %48)
  %107 = load ptr, ptr %47, align 8, !tbaa !109
  tail call void @free(ptr noundef %107)
  tail call void @free(ptr noundef %47)
  tail call void @free(ptr noundef %16)
  tail call void @free(ptr noundef %22)
  tail call void @free(ptr noundef %44)
  tail call void @free(ptr noundef %38)
  %108 = tail call ptr @sbitmap_vector_alloc(i32 noundef %10, i32 noundef %0) #11
  %109 = load ptr, ptr @cfun, align 8, !tbaa !70
  %110 = getelementptr inbounds %struct.function, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !92
  %112 = getelementptr inbounds %struct.control_flow_graph, ptr %111, i64 0, i32 5
  %113 = load i32, ptr %112, align 8, !tbaa !94
  %114 = add nsw i32 %113, 1
  %115 = tail call ptr @sbitmap_vector_alloc(i32 noundef %114, i32 noundef %0) #11
  %116 = load i32, ptr %9, align 4, !tbaa !90
  %117 = load ptr, ptr @cfun, align 8, !tbaa !70
  %118 = getelementptr inbounds %struct.function, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !92
  %120 = getelementptr inbounds %struct.control_flow_graph, ptr %119, i64 0, i32 3
  %121 = load i32, ptr %120, align 8, !tbaa !111
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = shl nsw i64 %123, 3
  %125 = tail call ptr @xmalloc(i64 noundef %124) #11
  %126 = icmp sgt i32 %116, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %105
  %128 = getelementptr inbounds %struct.edge_list, ptr %8, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !97
  %130 = zext nneg i32 %116 to i64
  br label %131

131:                                              ; preds = %127, %131
  %132 = phi i64 [ 0, %127 ], [ %137, %131 ]
  %133 = inttoptr i64 %132 to ptr
  %134 = getelementptr inbounds ptr, ptr %129, i64 %132
  %135 = load ptr, ptr %134, align 8, !tbaa !70
  %136 = getelementptr inbounds %struct.edge_def, ptr %135, i64 0, i32 3
  store ptr %133, ptr %136, align 8, !tbaa !112
  %137 = add nuw nsw i64 %132, 1
  %138 = icmp eq i64 %137, %130
  br i1 %138, label %139, label %131, !llvm.loop !177

139:                                              ; preds = %131, %105
  tail call void @sbitmap_vector_ones(ptr noundef %108, i32 noundef %116) #11
  %140 = load ptr, ptr @cfun, align 8, !tbaa !70
  %141 = getelementptr inbounds %struct.function, ptr %140, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !92
  %143 = getelementptr inbounds %struct.control_flow_graph, ptr %142, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !105
  %145 = icmp eq ptr %144, null
  br label %146

146:                                              ; preds = %179, %139
  %147 = phi i32 [ 0, %139 ], [ %180, %179 ]
  br i1 %145, label %148, label %149

148:                                              ; preds = %146
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 687, ptr noundef nonnull @.str.1) #11
  br label %149

149:                                              ; preds = %148, %146
  %150 = load ptr, ptr %144, align 8, !tbaa !70
  %151 = icmp eq ptr %150, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %149
  %153 = load i32, ptr %150, align 8, !tbaa !115
  br label %154

154:                                              ; preds = %152, %149
  %155 = phi i32 [ %153, %152 ], [ 0, %149 ]
  %156 = icmp eq i32 %155, %147
  br i1 %156, label %161, label %157

157:                                              ; preds = %154
  %158 = zext i32 %147 to i64
  %159 = getelementptr inbounds %struct.VEC_edge_base, ptr %150, i64 0, i32 2, i64 %158
  %160 = load ptr, ptr %159, align 8, !tbaa !70
  br label %161

161:                                              ; preds = %157, %154
  %162 = phi ptr [ %160, %157 ], [ null, %154 ]
  br i1 %156, label %181, label %163

163:                                              ; preds = %161
  %164 = getelementptr inbounds %struct.edge_def, ptr %162, i64 0, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !112
  %166 = ptrtoint ptr %165 to i64
  %167 = getelementptr inbounds ptr, ptr %108, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !70
  %169 = getelementptr inbounds ptr, ptr %45, i64 %166
  %170 = load ptr, ptr %169, align 8, !tbaa !70
  tail call void @sbitmap_copy(ptr noundef %168, ptr noundef %170) #11
  %171 = load ptr, ptr %144, align 8, !tbaa !70
  %172 = icmp eq ptr %171, null
  br i1 %172, label %175, label %173

173:                                              ; preds = %163
  %174 = load i32, ptr %171, align 8, !tbaa !115
  br label %175

175:                                              ; preds = %173, %163
  %176 = phi i32 [ %174, %173 ], [ 0, %163 ]
  %177 = icmp ult i32 %147, %176
  br i1 %177, label %179, label %178

178:                                              ; preds = %175
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #11
  br label %179

179:                                              ; preds = %178, %175
  %180 = add i32 %147, 1
  br label %146, !llvm.loop !178

181:                                              ; preds = %161
  %182 = load ptr, ptr @cfun, align 8, !tbaa !70
  %183 = getelementptr inbounds %struct.function, ptr %182, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !92
  %185 = load ptr, ptr %184, align 8, !tbaa !101
  %186 = getelementptr inbounds %struct.basic_block_def, ptr %185, i64 0, i32 6
  %187 = load ptr, ptr %186, align 8, !tbaa !121
  %188 = getelementptr inbounds %struct.control_flow_graph, ptr %184, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !105
  %190 = icmp eq ptr %187, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %194, %181
  %192 = phi ptr [ %125, %181 ], [ %197, %194 ]
  %193 = icmp eq ptr %192, %125
  br i1 %193, label %321, label %209

194:                                              ; preds = %181, %194
  %195 = phi ptr [ %200, %194 ], [ %187, %181 ]
  %196 = phi ptr [ %197, %194 ], [ %125, %181 ]
  %197 = getelementptr inbounds ptr, ptr %196, i64 1
  store ptr %195, ptr %196, align 8, !tbaa !70
  %198 = getelementptr inbounds %struct.basic_block_def, ptr %195, i64 0, i32 2
  store ptr %195, ptr %198, align 8, !tbaa !123
  %199 = getelementptr inbounds %struct.basic_block_def, ptr %195, i64 0, i32 6
  %200 = load ptr, ptr %199, align 8, !tbaa !121
  %201 = load ptr, ptr @cfun, align 8, !tbaa !70
  %202 = getelementptr inbounds %struct.function, ptr %201, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !92
  %204 = getelementptr inbounds %struct.control_flow_graph, ptr %203, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !105
  %206 = icmp eq ptr %200, %205
  br i1 %206, label %191, label %194, !llvm.loop !179

207:                                              ; preds = %273
  %208 = icmp eq ptr %259, %125
  br i1 %208, label %321, label %209, !llvm.loop !180

209:                                              ; preds = %191, %207
  %210 = phi ptr [ %259, %207 ], [ %192, %191 ]
  %211 = getelementptr inbounds ptr, ptr %210, i64 -1
  %212 = load ptr, ptr %211, align 8, !tbaa !70
  %213 = getelementptr inbounds %struct.basic_block_def, ptr %212, i64 0, i32 2
  store ptr null, ptr %213, align 8, !tbaa !123
  %214 = getelementptr inbounds %struct.basic_block_def, ptr %212, i64 0, i32 9
  %215 = load i32, ptr %214, align 8, !tbaa !103
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds ptr, ptr %115, i64 %216
  %218 = load ptr, ptr %217, align 8, !tbaa !70
  tail call void @sbitmap_ones(ptr noundef %218) #11
  %219 = getelementptr inbounds %struct.basic_block_def, ptr %212, i64 0, i32 1
  br label %220

220:                                              ; preds = %255, %209
  %221 = phi i32 [ 0, %209 ], [ %256, %255 ]
  %222 = load ptr, ptr %219, align 8, !tbaa !70
  %223 = icmp eq ptr %222, null
  br i1 %223, label %226, label %224

224:                                              ; preds = %220
  %225 = load i32, ptr %222, align 8, !tbaa !115
  br label %226

226:                                              ; preds = %224, %220
  %227 = phi i32 [ %225, %224 ], [ 0, %220 ]
  %228 = icmp eq i32 %227, %221
  br i1 %228, label %233, label %229

229:                                              ; preds = %226
  %230 = zext i32 %221 to i64
  %231 = getelementptr inbounds %struct.VEC_edge_base, ptr %222, i64 0, i32 2, i64 %230
  %232 = load ptr, ptr %231, align 8, !tbaa !70
  br label %233

233:                                              ; preds = %229, %226
  %234 = phi ptr [ %232, %229 ], [ null, %226 ]
  br i1 %228, label %235, label %237

235:                                              ; preds = %233
  %236 = icmp eq ptr %212, null
  br label %257

237:                                              ; preds = %233
  %238 = load i32, ptr %214, align 8, !tbaa !103
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds ptr, ptr %115, i64 %239
  %241 = load ptr, ptr %240, align 8, !tbaa !70
  %242 = getelementptr inbounds %struct.edge_def, ptr %234, i64 0, i32 3
  %243 = load ptr, ptr %242, align 8, !tbaa !112
  %244 = ptrtoint ptr %243 to i64
  %245 = getelementptr inbounds ptr, ptr %108, i64 %244
  %246 = load ptr, ptr %245, align 8, !tbaa !70
  tail call void @sbitmap_a_and_b(ptr noundef %241, ptr noundef %241, ptr noundef %246) #11
  %247 = load ptr, ptr %219, align 8, !tbaa !70
  %248 = icmp eq ptr %247, null
  br i1 %248, label %251, label %249

249:                                              ; preds = %237
  %250 = load i32, ptr %247, align 8, !tbaa !115
  br label %251

251:                                              ; preds = %249, %237
  %252 = phi i32 [ %250, %249 ], [ 0, %237 ]
  %253 = icmp ult i32 %221, %252
  br i1 %253, label %255, label %254

254:                                              ; preds = %251
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #11
  br label %255

255:                                              ; preds = %254, %251
  %256 = add i32 %221, 1
  br label %220, !llvm.loop !181

257:                                              ; preds = %235, %319
  %258 = phi i32 [ %320, %319 ], [ 0, %235 ]
  %259 = phi ptr [ %310, %319 ], [ %211, %235 ]
  br i1 %236, label %260, label %261

260:                                              ; preds = %257
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 687, ptr noundef nonnull @.str.1) #11
  br label %261

261:                                              ; preds = %260, %257
  %262 = load ptr, ptr %212, align 8, !tbaa !70
  %263 = icmp eq ptr %262, null
  br i1 %263, label %266, label %264

264:                                              ; preds = %261
  %265 = load i32, ptr %262, align 8, !tbaa !115
  br label %266

266:                                              ; preds = %264, %261
  %267 = phi i32 [ %265, %264 ], [ 0, %261 ]
  %268 = icmp eq i32 %267, %258
  br i1 %268, label %273, label %269

269:                                              ; preds = %266
  %270 = zext i32 %258 to i64
  %271 = getelementptr inbounds %struct.VEC_edge_base, ptr %262, i64 0, i32 2, i64 %270
  %272 = load ptr, ptr %271, align 8, !tbaa !70
  br label %273

273:                                              ; preds = %269, %266
  %274 = phi ptr [ %272, %269 ], [ null, %266 ]
  br i1 %268, label %207, label %275

275:                                              ; preds = %273
  %276 = getelementptr inbounds %struct.edge_def, ptr %274, i64 0, i32 3
  %277 = load ptr, ptr %276, align 8, !tbaa !112
  %278 = ptrtoint ptr %277 to i64
  %279 = getelementptr inbounds ptr, ptr %108, i64 %278
  %280 = load ptr, ptr %279, align 8, !tbaa !70
  %281 = getelementptr inbounds ptr, ptr %45, i64 %278
  %282 = load ptr, ptr %281, align 8, !tbaa !70
  %283 = getelementptr inbounds %struct.edge_def, ptr %274, i64 0, i32 1
  %284 = load ptr, ptr %283, align 8, !tbaa !100
  %285 = getelementptr inbounds %struct.basic_block_def, ptr %284, i64 0, i32 9
  %286 = load i32, ptr %285, align 8, !tbaa !103
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds ptr, ptr %115, i64 %287
  %289 = load ptr, ptr %288, align 8, !tbaa !70
  %290 = getelementptr inbounds ptr, ptr %2, i64 %287
  %291 = load ptr, ptr %290, align 8, !tbaa !70
  %292 = tail call zeroext i8 @sbitmap_union_of_diff_cg(ptr noundef %280, ptr noundef %282, ptr noundef %289, ptr noundef %291) #11
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %309, label %294

294:                                              ; preds = %275
  %295 = load ptr, ptr %274, align 8, !tbaa !98
  %296 = load ptr, ptr @cfun, align 8, !tbaa !70
  %297 = getelementptr inbounds %struct.function, ptr %296, i64 0, i32 1
  %298 = load ptr, ptr %297, align 8, !tbaa !92
  %299 = load ptr, ptr %298, align 8, !tbaa !101
  %300 = icmp eq ptr %295, %299
  br i1 %300, label %309, label %301

301:                                              ; preds = %294
  %302 = getelementptr inbounds %struct.basic_block_def, ptr %295, i64 0, i32 2
  %303 = load ptr, ptr %302, align 8, !tbaa !123
  %304 = icmp eq ptr %303, null
  br i1 %304, label %305, label %309

305:                                              ; preds = %301
  %306 = getelementptr inbounds ptr, ptr %259, i64 1
  store ptr %295, ptr %259, align 8, !tbaa !70
  %307 = load ptr, ptr %274, align 8, !tbaa !98
  %308 = getelementptr inbounds %struct.basic_block_def, ptr %307, i64 0, i32 2
  store ptr %274, ptr %308, align 8, !tbaa !123
  br label %309

309:                                              ; preds = %305, %301, %294, %275
  %310 = phi ptr [ %306, %305 ], [ %259, %301 ], [ %259, %294 ], [ %259, %275 ]
  %311 = load ptr, ptr %212, align 8, !tbaa !70
  %312 = icmp eq ptr %311, null
  br i1 %312, label %315, label %313

313:                                              ; preds = %309
  %314 = load i32, ptr %311, align 8, !tbaa !115
  br label %315

315:                                              ; preds = %313, %309
  %316 = phi i32 [ %314, %313 ], [ 0, %309 ]
  %317 = icmp ult i32 %258, %316
  br i1 %317, label %319, label %318

318:                                              ; preds = %315
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #11
  br label %319

319:                                              ; preds = %318, %315
  %320 = add i32 %258, 1
  br label %257, !llvm.loop !182

321:                                              ; preds = %207, %191
  %322 = phi ptr [ %192, %191 ], [ %259, %207 ]
  %323 = load ptr, ptr @cfun, align 8, !tbaa !70
  %324 = getelementptr inbounds %struct.function, ptr %323, i64 0, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !92
  %326 = getelementptr inbounds %struct.control_flow_graph, ptr %325, i64 0, i32 5
  %327 = load i32, ptr %326, align 8, !tbaa !94
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds ptr, ptr %115, i64 %328
  %330 = load ptr, ptr %329, align 8, !tbaa !70
  tail call void @sbitmap_ones(ptr noundef %330) #11
  %331 = load ptr, ptr @cfun, align 8, !tbaa !70
  %332 = getelementptr inbounds %struct.function, ptr %331, i64 0, i32 1
  %333 = load ptr, ptr %332, align 8, !tbaa !92
  %334 = load ptr, ptr %333, align 8, !tbaa !101
  %335 = getelementptr inbounds %struct.basic_block_def, ptr %334, i64 0, i32 1
  br label %336

336:                                              ; preds = %373, %321
  %337 = phi i32 [ 0, %321 ], [ %374, %373 ]
  %338 = load ptr, ptr %335, align 8, !tbaa !70
  %339 = icmp eq ptr %338, null
  br i1 %339, label %342, label %340

340:                                              ; preds = %336
  %341 = load i32, ptr %338, align 8, !tbaa !115
  br label %342

342:                                              ; preds = %340, %336
  %343 = phi i32 [ %341, %340 ], [ 0, %336 ]
  %344 = icmp eq i32 %343, %337
  br i1 %344, label %349, label %345

345:                                              ; preds = %342
  %346 = zext i32 %337 to i64
  %347 = getelementptr inbounds %struct.VEC_edge_base, ptr %338, i64 0, i32 2, i64 %346
  %348 = load ptr, ptr %347, align 8, !tbaa !70
  br label %349

349:                                              ; preds = %345, %342
  %350 = phi ptr [ %348, %345 ], [ null, %342 ]
  br i1 %344, label %375, label %351

351:                                              ; preds = %349
  %352 = load ptr, ptr @cfun, align 8, !tbaa !70
  %353 = getelementptr inbounds %struct.function, ptr %352, i64 0, i32 1
  %354 = load ptr, ptr %353, align 8, !tbaa !92
  %355 = getelementptr inbounds %struct.control_flow_graph, ptr %354, i64 0, i32 5
  %356 = load i32, ptr %355, align 8, !tbaa !94
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds ptr, ptr %115, i64 %357
  %359 = load ptr, ptr %358, align 8, !tbaa !70
  %360 = getelementptr inbounds %struct.edge_def, ptr %350, i64 0, i32 3
  %361 = load ptr, ptr %360, align 8, !tbaa !112
  %362 = ptrtoint ptr %361 to i64
  %363 = getelementptr inbounds ptr, ptr %108, i64 %362
  %364 = load ptr, ptr %363, align 8, !tbaa !70
  tail call void @sbitmap_a_and_b(ptr noundef %359, ptr noundef %359, ptr noundef %364) #11
  %365 = load ptr, ptr %335, align 8, !tbaa !70
  %366 = icmp eq ptr %365, null
  br i1 %366, label %369, label %367

367:                                              ; preds = %351
  %368 = load i32, ptr %365, align 8, !tbaa !115
  br label %369

369:                                              ; preds = %367, %351
  %370 = phi i32 [ %368, %367 ], [ 0, %351 ]
  %371 = icmp ult i32 %337, %370
  br i1 %371, label %373, label %372

372:                                              ; preds = %369
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #11
  br label %373

373:                                              ; preds = %372, %369
  %374 = add i32 %337, 1
  br label %336, !llvm.loop !183

375:                                              ; preds = %349
  tail call void @clear_aux_for_edges() #11
  tail call void @free(ptr noundef %322)
  tail call void @free(ptr noundef %45)
  %376 = tail call ptr @sbitmap_vector_alloc(i32 noundef %10, i32 noundef %0) #11
  store ptr %376, ptr %5, align 8, !tbaa !70
  %377 = load ptr, ptr @cfun, align 8, !tbaa !70
  %378 = getelementptr inbounds %struct.function, ptr %377, i64 0, i32 1
  %379 = load ptr, ptr %378, align 8, !tbaa !92
  %380 = getelementptr inbounds %struct.control_flow_graph, ptr %379, i64 0, i32 5
  %381 = load i32, ptr %380, align 8, !tbaa !94
  %382 = tail call ptr @sbitmap_vector_alloc(i32 noundef %381, i32 noundef %0) #11
  store ptr %382, ptr %6, align 8, !tbaa !70
  %383 = load ptr, ptr %5, align 8, !tbaa !70
  %384 = load ptr, ptr @cfun, align 8, !tbaa !70
  %385 = getelementptr inbounds %struct.function, ptr %384, i64 0, i32 1
  %386 = load ptr, ptr %385, align 8, !tbaa !92
  %387 = load ptr, ptr %386, align 8, !tbaa !101
  %388 = getelementptr inbounds %struct.basic_block_def, ptr %387, i64 0, i32 6
  %389 = load ptr, ptr %388, align 8, !tbaa !121
  %390 = getelementptr inbounds %struct.control_flow_graph, ptr %386, i64 0, i32 1
  %391 = load ptr, ptr %390, align 8, !tbaa !105
  %392 = icmp eq ptr %389, %391
  br i1 %392, label %393, label %398

393:                                              ; preds = %398, %375
  %394 = load i32, ptr %9, align 4, !tbaa !90
  %395 = icmp sgt i32 %394, 0
  br i1 %395, label %396, label %443

396:                                              ; preds = %393
  %397 = getelementptr inbounds %struct.edge_list, ptr %8, i64 0, i32 2
  br label %417

398:                                              ; preds = %375, %398
  %399 = phi ptr [ %410, %398 ], [ %389, %375 ]
  %400 = getelementptr inbounds %struct.basic_block_def, ptr %399, i64 0, i32 9
  %401 = load i32, ptr %400, align 8, !tbaa !103
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds ptr, ptr %382, i64 %402
  %404 = load ptr, ptr %403, align 8, !tbaa !70
  %405 = getelementptr inbounds ptr, ptr %2, i64 %402
  %406 = load ptr, ptr %405, align 8, !tbaa !70
  %407 = getelementptr inbounds ptr, ptr %115, i64 %402
  %408 = load ptr, ptr %407, align 8, !tbaa !70
  tail call void @sbitmap_difference(ptr noundef %404, ptr noundef %406, ptr noundef %408) #11
  %409 = getelementptr inbounds %struct.basic_block_def, ptr %399, i64 0, i32 6
  %410 = load ptr, ptr %409, align 8, !tbaa !121
  %411 = load ptr, ptr @cfun, align 8, !tbaa !70
  %412 = getelementptr inbounds %struct.function, ptr %411, i64 0, i32 1
  %413 = load ptr, ptr %412, align 8, !tbaa !92
  %414 = getelementptr inbounds %struct.control_flow_graph, ptr %413, i64 0, i32 1
  %415 = load ptr, ptr %414, align 8, !tbaa !105
  %416 = icmp eq ptr %410, %415
  br i1 %416, label %393, label %398, !llvm.loop !184

417:                                              ; preds = %396, %417
  %418 = phi i64 [ 0, %396 ], [ %439, %417 ]
  %419 = load ptr, ptr %397, align 8, !tbaa !97
  %420 = getelementptr inbounds ptr, ptr %419, i64 %418
  %421 = load ptr, ptr %420, align 8, !tbaa !70
  %422 = load ptr, ptr %421, align 8, !tbaa !98
  %423 = load ptr, ptr @cfun, align 8, !tbaa !70
  %424 = getelementptr inbounds %struct.function, ptr %423, i64 0, i32 1
  %425 = load ptr, ptr %424, align 8, !tbaa !92
  %426 = load ptr, ptr %425, align 8, !tbaa !101
  %427 = icmp eq ptr %422, %426
  %428 = getelementptr inbounds ptr, ptr %383, i64 %418
  %429 = load ptr, ptr %428, align 8, !tbaa !70
  %430 = getelementptr inbounds ptr, ptr %108, i64 %418
  %431 = load ptr, ptr %430, align 8, !tbaa !70
  %432 = getelementptr inbounds %struct.basic_block_def, ptr %422, i64 0, i32 9
  %433 = getelementptr inbounds %struct.control_flow_graph, ptr %425, i64 0, i32 5
  %434 = select i1 %427, ptr %433, ptr %432
  %435 = load i32, ptr %434, align 8, !tbaa !85
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds ptr, ptr %115, i64 %436
  %438 = load ptr, ptr %437, align 8, !tbaa !70
  tail call void @sbitmap_difference(ptr noundef %429, ptr noundef %431, ptr noundef %438) #11
  %439 = add nuw nsw i64 %418, 1
  %440 = load i32, ptr %9, align 4, !tbaa !90
  %441 = sext i32 %440 to i64
  %442 = icmp slt i64 %439, %441
  br i1 %442, label %417, label %443, !llvm.loop !185

443:                                              ; preds = %417, %393
  tail call void @free(ptr noundef %115)
  tail call void @free(ptr noundef %108)
  ret ptr %8
}

declare void @sbitmap_vector_zero(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @sbitmap_intersection_of_succs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @sbitmap_a_or_b_and_c_cg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sbitmap_difference(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sbitmap_not(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sbitmap_a_and_b_or_c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #3

declare void @sbitmap_a_and_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

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
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!68}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!35 = !{ptr @pre_edge_lcm, ptr @create_edge_list, i64 31}
!36 = !{ptr @pre_edge_lcm, ptr @sbitmap_vector_alloc, i64 279}
!37 = !{ptr @pre_edge_lcm, ptr @compute_available, i64 31}
!38 = !{ptr @pre_edge_lcm, ptr @free, i64 372}
!39 = !{ptr @pre_edge_lcm, ptr @compute_antinout_edge, i64 31}
!40 = !{ptr @pre_edge_lcm, ptr @sbitmap_alloc, i64 62}
!41 = !{ptr @pre_edge_lcm, ptr @sbitmap_copy, i64 62}
!42 = !{ptr @pre_edge_lcm, ptr @sbitmap_zero, i64 106}
!43 = !{ptr @pre_edge_lcm, ptr @sbitmap_difference, i64 25600}
!44 = !{ptr @pre_edge_lcm, ptr @sbitmap_not, i64 9742}
!45 = !{ptr @pre_edge_lcm, ptr @sbitmap_a_and_b_or_c, i64 9742}
!46 = !{ptr @pre_edge_lcm, ptr @xmalloc, i64 31}
!47 = !{ptr @pre_edge_lcm, ptr @sbitmap_vector_ones, i64 31}
!48 = !{ptr @pre_edge_lcm, ptr @sbitmap_ones, i64 6010}
!49 = !{ptr @pre_edge_lcm, ptr @sbitmap_a_and_b, i64 9879}
!50 = !{ptr @pre_edge_lcm, ptr @sbitmap_union_of_diff_cg, i64 9848}
!51 = !{ptr @pre_edge_lcm, ptr @clear_aux_for_edges, i64 31}
!52 = !{ptr @compute_available, ptr @xmalloc, i64 124}
!53 = !{ptr @compute_available, ptr @sbitmap_vector_ones, i64 124}
!54 = !{ptr @compute_available, ptr @sbitmap_zero, i64 124}
!55 = !{ptr @compute_available, ptr @sbitmap_intersection_of_preds, i64 21977}
!56 = !{ptr @compute_available, ptr @sbitmap_union_of_diff_cg, i64 22101}
!57 = !{ptr @compute_available, ptr @clear_aux_for_edges, i64 124}
!58 = !{ptr @compute_available, ptr @clear_aux_for_blocks, i64 124}
!59 = !{ptr @compute_available, ptr @free, i64 124}
!60 = !{ptr @compute_antinout_edge, ptr @xmalloc, i64 31}
!61 = !{ptr @compute_antinout_edge, ptr @sbitmap_vector_ones, i64 31}
!62 = !{ptr @compute_antinout_edge, ptr @sbitmap_zero, i64 106}
!63 = !{ptr @compute_antinout_edge, ptr @sbitmap_intersection_of_succs, i64 5873}
!64 = !{ptr @compute_antinout_edge, ptr @sbitmap_a_or_b_and_c_cg, i64 5979}
!65 = !{ptr @compute_antinout_edge, ptr @clear_aux_for_edges, i64 31}
!66 = !{ptr @compute_antinout_edge, ptr @clear_aux_for_blocks, i64 31}
!67 = !{ptr @compute_antinout_edge, ptr @free, i64 31}
!68 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!69 = !{!"function_entry_count", i64 0}
!70 = !{!71, !71, i64 0}
!71 = !{!"any pointer", !72, i64 0}
!72 = !{!"omnipotent char", !73, i64 0}
!73 = !{!"Simple C/C++ TBAA"}
!74 = !{!75, !71, i64 8}
!75 = !{!"_IO_FILE", !76, i64 0, !71, i64 8, !71, i64 16, !71, i64 24, !71, i64 32, !71, i64 40, !71, i64 48, !71, i64 56, !71, i64 64, !71, i64 72, !71, i64 80, !71, i64 88, !71, i64 96, !71, i64 104, !76, i64 112, !76, i64 116, !77, i64 120, !78, i64 128, !72, i64 130, !72, i64 131, !71, i64 136, !77, i64 144, !71, i64 152, !71, i64 160, !71, i64 168, !71, i64 176, !77, i64 184, !76, i64 192, !72, i64 196}
!76 = !{!"int", !72, i64 0}
!77 = !{!"long", !72, i64 0}
!78 = !{!"short", !72, i64 0}
!79 = !{!75, !71, i64 16}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{!72, !72, i64 0}
!82 = !{!75, !71, i64 40}
!83 = !{!75, !71, i64 48}
!84 = !{!75, !76, i64 0}
!85 = !{!76, !76, i64 0}
!86 = distinct !{!86, !87, !88}
!87 = !{!"llvm.loop.mustprogress"}
!88 = !{!"llvm.loop.unroll.disable"}
!89 = !{!"function_entry_count", i64 31}
!90 = !{!91, !76, i64 4}
!91 = !{!"edge_list", !76, i64 0, !76, i64 4, !71, i64 8}
!92 = !{!93, !71, i64 8}
!93 = !{!"function", !71, i64 0, !71, i64 8, !71, i64 16, !71, i64 24, !71, i64 32, !71, i64 40, !71, i64 48, !71, i64 56, !71, i64 64, !71, i64 72, !71, i64 80, !71, i64 88, !71, i64 96, !76, i64 104, !76, i64 108, !76, i64 112, !76, i64 116, !76, i64 120, !76, i64 124, !71, i64 128, !76, i64 136, !76, i64 137, !76, i64 138, !76, i64 138, !76, i64 138, !76, i64 138, !76, i64 138, !76, i64 138, !76, i64 138, !76, i64 139, !76, i64 139, !76, i64 139, !76, i64 139, !76, i64 139, !76, i64 139, !76, i64 139}
!94 = !{!95, !76, i64 32}
!95 = !{!"control_flow_graph", !71, i64 0, !71, i64 8, !71, i64 16, !76, i64 24, !76, i64 28, !76, i64 32, !71, i64 40, !76, i64 48, !72, i64 52, !72, i64 60, !76, i64 68, !76, i64 72}
!96 = !{!"branch_weights", i32 247, i32 1}
!97 = !{!91, !71, i64 8}
!98 = !{!99, !71, i64 0}
!99 = !{!"edge_def", !71, i64 0, !71, i64 8, !72, i64 16, !71, i64 24, !71, i64 32, !76, i64 40, !76, i64 44, !76, i64 48, !76, i64 52, !77, i64 56}
!100 = !{!99, !71, i64 8}
!101 = !{!95, !71, i64 0}
!102 = !{!"branch_weights", i32 31, i32 9848}
!103 = !{!104, !76, i64 80}
!104 = !{!"basic_block_def", !71, i64 0, !71, i64 8, !71, i64 16, !71, i64 24, !72, i64 32, !71, i64 48, !71, i64 56, !72, i64 64, !77, i64 72, !76, i64 80, !76, i64 84, !76, i64 88, !76, i64 92, !76, i64 96}
!105 = !{!95, !71, i64 8}
!106 = !{!"branch_weights", i32 106, i32 9742}
!107 = !{!"branch_weights", i32 247, i32 78785}
!108 = distinct !{!108, !87, !88}
!109 = !{!110, !71, i64 0}
!110 = !{!"simple_bitmap_def", !71, i64 0, !76, i64 8, !76, i64 12, !72, i64 16}
!111 = !{!95, !76, i64 24}
!112 = !{!99, !71, i64 24}
!113 = distinct !{!113, !87, !88}
!114 = !{!"branch_weights", i32 0, i32 62}
!115 = !{!116, !76, i64 0}
!116 = !{!"VEC_edge_base", !76, i64 0, !76, i64 4, !72, i64 8}
!117 = !{!"branch_weights", i32 31, i32 31}
!118 = !{!"branch_weights", i32 0, i32 31}
!119 = !{!"branch_weights", i32 31, i32 0}
!120 = distinct !{!120, !87, !88}
!121 = !{!104, !71, i64 56}
!122 = !{!"branch_weights", i32 1, i32 247}
!123 = !{!104, !71, i64 16}
!124 = !{!"branch_weights", i32 247, i32 47585}
!125 = distinct !{!125, !87, !88}
!126 = !{!"branch_weights", i32 5948, i32 31}
!127 = distinct !{!127, !87, !88}
!128 = !{!"branch_weights", i32 0, i32 15752}
!129 = !{!"branch_weights", i32 5979, i32 9773}
!130 = !{!"branch_weights", i32 0, i32 9773}
!131 = !{!"branch_weights", i32 9773, i32 0}
!132 = distinct !{!132, !87, !88}
!133 = !{!"branch_weights", i32 0, i32 15827}
!134 = !{!"branch_weights", i32 5979, i32 9848}
!135 = !{!"branch_weights", i32 0, i32 9848}
!136 = !{!"branch_weights", i32 0, i32 9742}
!137 = !{!"branch_weights", i32 9848, i32 0}
!138 = distinct !{!138, !87, !88}
!139 = !{!"branch_weights", i32 0, i32 137}
!140 = !{!"branch_weights", i32 31, i32 106}
!141 = !{!"branch_weights", i32 0, i32 106}
!142 = !{!"branch_weights", i32 106, i32 0}
!143 = distinct !{!143, !87, !88}
!144 = distinct !{!144, !87, !88}
!145 = !{!"branch_weights", i32 106, i32 9773}
!146 = !{!"branch_weights", i32 78785, i32 247}
!147 = distinct !{!147, !87, !88}
!148 = !{!"function_entry_count", i64 124}
!149 = !{!"branch_weights", i32 247, i32 43955}
!150 = distinct !{!150, !87, !88}
!151 = !{!"branch_weights", i32 0, i32 248}
!152 = !{!"branch_weights", i32 124, i32 124}
!153 = !{!"branch_weights", i32 0, i32 124}
!154 = !{!"branch_weights", i32 124, i32 0}
!155 = distinct !{!155, !87, !88}
!156 = !{!"branch_weights", i32 21977, i32 124}
!157 = !{!"branch_weights", i32 124, i32 21977}
!158 = !{!"branch_weights", i32 9, i32 22092}
!159 = !{!"branch_weights", i32 0, i32 59194}
!160 = !{!"branch_weights", i32 22092, i32 37102}
!161 = !{!"branch_weights", i32 256, i32 36846}
!162 = !{!"branch_weights", i32 256, i32 0}
!163 = !{!"branch_weights", i32 0, i32 37102}
!164 = !{!"branch_weights", i32 37102, i32 0}
!165 = distinct !{!165, !87, !88}
!166 = distinct !{!166, !87, !88}
!167 = !{!"lcm.c;compute_antinout_edge"}
!168 = !{!104, !71, i64 48}
!169 = distinct !{!169, !87, !88}
!170 = distinct !{!170, !87, !88}
!171 = !{!"branch_weights", i32 106, i32 5873}
!172 = !{!"branch_weights", i32 0, i32 5979}
!173 = !{!"branch_weights", i32 31, i32 9742}
!174 = distinct !{!174, !87, !88}
!175 = distinct !{!175, !87, !88}
!176 = distinct !{!176, !87, !88}
!177 = distinct !{!177, !87, !88}
!178 = distinct !{!178, !87, !88}
!179 = distinct !{!179, !87, !88}
!180 = distinct !{!180, !87, !88}
!181 = distinct !{!181, !87, !88}
!182 = distinct !{!182, !87, !88}
!183 = distinct !{!183, !87, !88}
!184 = distinct !{!184, !87, !88}
!185 = distinct !{!185, !87, !88}

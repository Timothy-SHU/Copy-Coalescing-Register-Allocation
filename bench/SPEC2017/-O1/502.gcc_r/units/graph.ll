; ModuleID = 'graph.c'
source_filename = "graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@graph_ext = internal unnamed_addr constant [2 x ptr] [ptr @.str.8, ptr @.str.9], align 16
@graph_dump_format = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(nil)\0A\00", align 1
@dump_for_graph = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"can't open %s: %m\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"graph.c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"graph: {\0Aport_sharing: no\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".vcg\00", align 1
@.str.10 = private unnamed_addr constant [67 x i8] c"graph: { title: \22%s\22\0Afolding: 1\0Ahidden: 2\0Anode: { title: \22%s.0\22 }\0A\00", align 1
@.str.11 = private unnamed_addr constant [77 x i8] c"graph: {\0Atitle: \22%s.BB%d\22\0Afolding: 1\0Acolor: lightblue\0Alabel: \22basic block %d\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"\22\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"color: red \00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"color: blue \00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"color: green \00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"edge: { sourcename: \22%s.%d\22 targetname: \22%s.%d\22 %s\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"class: %d \00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"edge: { sourcename: \22%s.0\22 targetname: \22%s.%d\22 }\0A\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"node: {\0A  title: \22%s.%d\22\0A  color: %s\0A  label: \22%s %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"lightgrey\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"darkgreen\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"darkgrey\0A  shape: ellipse\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@rtx_name = external local_unnamed_addr constant [139 x ptr], align 16
@note_insn_name = external local_unnamed_addr constant [13 x ptr], align 16
@.str.25 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"\22\0A}\0A\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"node: { title: \22%s.999999\22 label: \22END\22 }\0A}\0A\00", align 1
@reltable.print_rtl_graph_with_bb = private unnamed_addr constant [6 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.21 to i64), i64 ptrtoint (ptr @reltable.print_rtl_graph_with_bb to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.22 to i64), i64 ptrtoint (ptr @reltable.print_rtl_graph_with_bb to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.22 to i64), i64 ptrtoint (ptr @reltable.print_rtl_graph_with_bb to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.20 to i64), i64 ptrtoint (ptr @reltable.print_rtl_graph_with_bb to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.20 to i64), i64 ptrtoint (ptr @reltable.print_rtl_graph_with_bb to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.20 to i64), i64 ptrtoint (ptr @reltable.print_rtl_graph_with_bb to i64)) to i32)], align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #14
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #14
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #14
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
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @print_rtl_graph_with_bb(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #8 !prof !34 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %4 = load i32, ptr @graph_dump_format, align 4, !tbaa !50
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [2 x ptr], ptr @graph_ext, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7)
  %9 = add i64 %8, 1
  %10 = add i64 %9, %3
  %11 = alloca i8, i64 %10, align 16
  %12 = load ptr, ptr @cfun, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  %17 = icmp eq ptr %16, null
  br i1 %17, label %334, label %18

18:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %11, ptr align 1 %0, i64 %3, i1 false)
  %19 = getelementptr inbounds i8, ptr %11, i64 %3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr align 1 %7, i64 %9, i1 false)
  %20 = call ptr @fopen_unlocked(ptr noundef nonnull %11, ptr noundef nonnull @.str) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %334, label %22

22:                                               ; preds = %18
  %23 = icmp eq ptr %1, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = call i64 @fwrite(ptr nonnull @.str.1, i64 6, i64 1, ptr nonnull %20)
  br label %332

26:                                               ; preds = %22
  %27 = call i32 @get_max_uid() #14
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 2
  %30 = call ptr @xmalloc(i64 noundef %29) #14
  %31 = call ptr @xmalloc(i64 noundef %29) #14
  %32 = call ptr @xmalloc(i64 noundef %29) #14
  %33 = icmp sgt i32 %27, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = zext nneg i32 %27 to i64
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi i64 [ 0, %34 ], [ %41, %36 ]
  %38 = getelementptr inbounds i32, ptr %31, i64 %37
  store i32 -1, ptr %38, align 4, !tbaa !50
  %39 = getelementptr inbounds i32, ptr %30, i64 %37
  store i32 -1, ptr %39, align 4, !tbaa !50
  %40 = getelementptr inbounds i32, ptr %32, i64 %37
  store i32 0, ptr %40, align 4, !tbaa !50
  %41 = add nuw nsw i64 %37, 1
  %42 = icmp eq i64 %41, %35
  br i1 %42, label %43, label %36, !llvm.loop !58

43:                                               ; preds = %36, %26
  %44 = load ptr, ptr @cfun, align 8, !tbaa !35
  %45 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !54
  %47 = getelementptr inbounds %struct.control_flow_graph, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !59
  %49 = load ptr, ptr %46, align 8, !tbaa !60
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !61
  %52 = icmp eq ptr %51, %49
  br i1 %52, label %96, label %53

53:                                               ; preds = %43, %92
  %54 = phi ptr [ %94, %92 ], [ %51, %43 ]
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !63
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !46
  %59 = load ptr, ptr %58, align 8, !tbaa !64
  %60 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !46
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, ptr %30, i64 %62
  store i32 %56, ptr %63, align 4, !tbaa !50
  %64 = load i32, ptr %55, align 8, !tbaa !63
  %65 = load ptr, ptr %57, align 8, !tbaa !46
  %66 = getelementptr inbounds %struct.rtl_bb_info, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !66
  %68 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !46
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, ptr %31, i64 %70
  store i32 %64, ptr %71, align 4, !tbaa !50
  %72 = load ptr, ptr %57, align 8, !tbaa !46
  %73 = load ptr, ptr %72, align 8, !tbaa !46
  %74 = icmp eq ptr %73, null
  br i1 %74, label %92, label %79

75:                                               ; preds = %79
  %76 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1, i32 0, i32 0, i64 2
  %77 = load ptr, ptr %76, align 8, !tbaa !46
  %78 = icmp eq ptr %77, null
  br i1 %78, label %92, label %79, !llvm.loop !67

79:                                               ; preds = %53, %75
  %80 = phi ptr [ %77, %75 ], [ %73, %53 ]
  %81 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1
  %82 = load i32, ptr %81, align 8, !tbaa !46
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, ptr %32, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !50
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, i32 1, i32 2
  store i32 %87, ptr %84, align 4, !tbaa !50
  %88 = load ptr, ptr %57, align 8, !tbaa !46
  %89 = getelementptr inbounds %struct.rtl_bb_info, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !66
  %91 = icmp eq ptr %80, %90
  br i1 %91, label %92, label %75

92:                                               ; preds = %75, %79, %53
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 5
  %94 = load ptr, ptr %93, align 8, !tbaa !61
  %95 = icmp eq ptr %94, %49
  br i1 %95, label %96, label %53, !llvm.loop !68

96:                                               ; preds = %92, %43
  store i32 1, ptr @dump_for_graph, align 4, !tbaa !50
  %97 = load i32, ptr @graph_dump_format, align 4, !tbaa !50
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = call ptr @current_function_name() #14
  %101 = call ptr @current_function_name() #14
  %102 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %20, ptr noundef nonnull @.str.10, ptr noundef %100, ptr noundef %101)
  br label %103

103:                                              ; preds = %96, %99
  %104 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %105 = load ptr, ptr %104, align 8, !tbaa !46
  %106 = icmp eq ptr %105, null
  br i1 %106, label %325, label %107

107:                                              ; preds = %103, %321
  %108 = phi ptr [ %323, %321 ], [ %105, %103 ]
  %109 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1
  %110 = load i32, ptr %109, align 8, !tbaa !46
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, ptr %30, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !50
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %107
  %116 = getelementptr inbounds i32, ptr %31, i64 %111
  %117 = load i32, ptr %116, align 4, !tbaa !50
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i32, ptr %108, align 8
  %121 = trunc i32 %120 to i16
  switch i16 %121, label %122 [
    i16 11, label %321
    i16 13, label %321
  ]

122:                                              ; preds = %119, %115, %107
  %123 = icmp sgt i32 %113, -1
  br i1 %123, label %124, label %139

124:                                              ; preds = %122
  %125 = load i32, ptr @graph_dump_format, align 4, !tbaa !50
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = call ptr @current_function_name() #14
  %129 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %20, ptr noundef nonnull @.str.11, ptr noundef %128, i32 noundef %113, i32 noundef %113)
  br label %130

130:                                              ; preds = %127, %124
  %131 = load i32, ptr @graph_dump_format, align 4, !tbaa !50
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i64 @fwrite(ptr nonnull @.str.12, i64 3, i64 1, ptr nonnull %20)
  br label %135

135:                                              ; preds = %130, %133
  %136 = icmp eq i32 %113, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %135
  %138 = load i32, ptr %109, align 8, !tbaa !46
  call fastcc void @draw_edge(ptr noundef nonnull %20, i32 noundef 0, i32 noundef %138, i32 noundef 1, i32 noundef 0)
  br label %139

139:                                              ; preds = %135, %137, %122
  %140 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1, i32 0, i32 0, i64 1
  %141 = load ptr, ptr %140, align 8, !tbaa !46
  %142 = icmp eq ptr %141, null
  %143 = load i32, ptr @graph_dump_format, align 4
  %144 = icmp eq i32 %143, 1
  %145 = select i1 %142, i1 %144, i1 false
  br i1 %145, label %146, label %151

146:                                              ; preds = %139
  %147 = call ptr @current_function_name() #14
  %148 = call ptr @current_function_name() #14
  %149 = load i32, ptr %109, align 8, !tbaa !46
  %150 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %20, ptr noundef nonnull @.str.18, ptr noundef %147, ptr noundef %148, i32 noundef %149)
  br label %151

151:                                              ; preds = %146, %139
  %152 = load i32, ptr @graph_dump_format, align 4, !tbaa !50
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %181

154:                                              ; preds = %151
  %155 = call ptr @current_function_name() #14
  %156 = load i32, ptr %109, align 8, !tbaa !46
  %157 = load i32, ptr %108, align 8
  %158 = trunc i32 %157 to i16
  %159 = add i16 %158, -8
  %160 = icmp ult i16 %159, 6
  br i1 %160, label %165, label %161

161:                                              ; preds = %165, %154
  %162 = and i32 %157, 65535
  %163 = icmp eq i32 %162, 12
  %164 = select i1 %163, ptr @.str.23, ptr @.str.24
  br label %174

165:                                              ; preds = %154
  %166 = trunc i16 %159 to i8
  %167 = lshr i8 39, %166
  %168 = and i8 %167, 1
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %161, label %170

170:                                              ; preds = %165
  %171 = zext nneg i16 %159 to i64
  %172 = shl i64 %171, 2
  %173 = call ptr @llvm.load.relative.i64(ptr @reltable.print_rtl_graph_with_bb, i64 %172)
  br label %174

174:                                              ; preds = %170, %161
  %175 = phi ptr [ %164, %161 ], [ %173, %170 ]
  %176 = and i32 %157, 65535
  %177 = zext nneg i32 %176 to i64
  %178 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %177
  %179 = load ptr, ptr %178, align 8, !tbaa !35
  %180 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %20, ptr noundef nonnull @.str.19, ptr noundef %155, i32 noundef %156, ptr noundef nonnull %175, ptr noundef %179, i32 noundef %156)
  br label %181

181:                                              ; preds = %174, %151
  %182 = load i32, ptr %108, align 8
  %183 = trunc i32 %182 to i16
  switch i16 %183, label %195 [
    i16 13, label %184
    i16 8, label %191
    i16 7, label %191
    i16 9, label %191
    i16 10, label %191
  ]

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 1
  %186 = load i32, ptr %185, align 8, !tbaa !46
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [13 x ptr], ptr @note_insn_name, i64 0, i64 %187
  %189 = load ptr, ptr %188, align 8, !tbaa !35
  %190 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %20, ptr noundef nonnull @.str.25, ptr noundef %189)
  br label %197

191:                                              ; preds = %181, %181, %181, %181
  %192 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 1
  %193 = load ptr, ptr %192, align 8, !tbaa !46
  %194 = call i32 @print_rtl_single(ptr noundef nonnull %20, ptr noundef %193) #14
  br label %197

195:                                              ; preds = %181
  %196 = call i32 @print_rtl_single(ptr noundef nonnull %20, ptr noundef nonnull %108) #14
  br label %197

197:                                              ; preds = %195, %191, %184
  %198 = load i32, ptr @graph_dump_format, align 4, !tbaa !50
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %202

200:                                              ; preds = %197
  %201 = call i64 @fwrite(ptr nonnull @.str.26, i64 4, i64 1, ptr nonnull %20)
  br label %202

202:                                              ; preds = %197, %200
  %203 = call ptr @next_nonnote_insn(ptr noundef nonnull %108) #14
  %204 = load i32, ptr %109, align 8, !tbaa !46
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, ptr %31, i64 %205
  %207 = load i32, ptr %206, align 4, !tbaa !50
  %208 = icmp sgt i32 %207, -1
  br i1 %208, label %209, label %283

209:                                              ; preds = %202
  %210 = load ptr, ptr @cfun, align 8, !tbaa !35
  %211 = getelementptr inbounds %struct.function, ptr %210, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !54
  %213 = getelementptr inbounds %struct.control_flow_graph, ptr %212, i64 0, i32 2
  %214 = load ptr, ptr %213, align 8, !tbaa !56
  %215 = zext nneg i32 %207 to i64
  %216 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %214, i64 0, i32 2, i64 %215
  %217 = load ptr, ptr %216, align 8, !tbaa !35
  %218 = load i32, ptr @graph_dump_format, align 4, !tbaa !50
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %222

220:                                              ; preds = %209
  %221 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr nonnull %20)
  br label %222

222:                                              ; preds = %209, %220
  %223 = getelementptr inbounds %struct.basic_block_def, ptr %217, i64 0, i32 1
  br label %224

224:                                              ; preds = %281, %222
  %225 = phi i32 [ 0, %222 ], [ %282, %281 ]
  %226 = phi i32 [ 0, %222 ], [ %272, %281 ]
  %227 = load ptr, ptr %223, align 8, !tbaa !35
  %228 = icmp eq ptr %227, null
  br i1 %228, label %231, label %229

229:                                              ; preds = %224
  %230 = load i32, ptr %227, align 8, !tbaa !69
  br label %231

231:                                              ; preds = %229, %224
  %232 = phi i32 [ %230, %229 ], [ 0, %224 ]
  %233 = icmp eq i32 %232, %225
  br i1 %233, label %238, label %234

234:                                              ; preds = %231
  %235 = zext i32 %225 to i64
  %236 = getelementptr inbounds %struct.VEC_edge_base, ptr %227, i64 0, i32 2, i64 %235
  %237 = load ptr, ptr %236, align 8, !tbaa !35
  br label %238

238:                                              ; preds = %231, %234
  %239 = phi ptr [ %237, %234 ], [ null, %231 ]
  br i1 %233, label %283, label %240

240:                                              ; preds = %238
  %241 = getelementptr inbounds %struct.edge_def, ptr %239, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !71
  %243 = load ptr, ptr @cfun, align 8, !tbaa !35
  %244 = getelementptr inbounds %struct.function, ptr %243, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !54
  %246 = getelementptr inbounds %struct.control_flow_graph, ptr %245, i64 0, i32 1
  %247 = load ptr, ptr %246, align 8, !tbaa !59
  %248 = icmp eq ptr %242, %247
  br i1 %248, label %262, label %249

249:                                              ; preds = %240
  %250 = getelementptr inbounds %struct.basic_block_def, ptr %242, i64 0, i32 7
  %251 = load ptr, ptr %250, align 8, !tbaa !46
  %252 = load ptr, ptr %251, align 8, !tbaa !64
  %253 = load i32, ptr %109, align 8, !tbaa !46
  %254 = getelementptr inbounds %struct.rtx_def, ptr %252, i64 0, i32 1
  %255 = load i32, ptr %254, align 8, !tbaa !46
  %256 = icmp ne ptr %203, %252
  %257 = zext i1 %256 to i32
  %258 = getelementptr inbounds %struct.edge_def, ptr %239, i64 0, i32 7
  %259 = load i32, ptr %258, align 8, !tbaa !73
  %260 = and i32 %259, 2
  call fastcc void @draw_edge(ptr noundef nonnull %20, i32 noundef %253, i32 noundef %255, i32 noundef %257, i32 noundef %260)
  %261 = icmp eq ptr %252, %203
  br label %270

262:                                              ; preds = %240
  %263 = icmp ne ptr %203, null
  %264 = zext i1 %263 to i32
  %265 = icmp eq ptr %203, null
  %266 = load i32, ptr %109, align 8, !tbaa !46
  %267 = getelementptr inbounds %struct.edge_def, ptr %239, i64 0, i32 7
  %268 = load i32, ptr %267, align 8, !tbaa !73
  %269 = and i32 %268, 2
  call fastcc void @draw_edge(ptr noundef nonnull %20, i32 noundef %266, i32 noundef 999999, i32 noundef %264, i32 noundef %269)
  br label %270

270:                                              ; preds = %249, %262
  %271 = phi i1 [ %261, %249 ], [ %265, %262 ]
  %272 = select i1 %271, i32 1, i32 %226
  %273 = load ptr, ptr %223, align 8, !tbaa !35
  %274 = icmp eq ptr %273, null
  br i1 %274, label %277, label %275

275:                                              ; preds = %270
  %276 = load i32, ptr %273, align 8, !tbaa !69
  br label %277

277:                                              ; preds = %275, %270
  %278 = phi i32 [ %276, %275 ], [ 0, %270 ]
  %279 = icmp ult i32 %225, %278
  br i1 %279, label %281, label %280

280:                                              ; preds = %277
  call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 738, ptr noundef nonnull @.str.5) #14
  br label %281

281:                                              ; preds = %277, %280
  %282 = add i32 %225, 1
  br label %224, !llvm.loop !74

283:                                              ; preds = %238, %202
  %284 = phi i32 [ 0, %202 ], [ %226, %238 ]
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %321

286:                                              ; preds = %283
  %287 = icmp eq ptr %203, null
  br i1 %287, label %296, label %288

288:                                              ; preds = %286
  %289 = load i32, ptr %203, align 8
  %290 = and i32 %289, 65535
  %291 = icmp eq i32 %290, 11
  br i1 %291, label %292, label %296

292:                                              ; preds = %288
  %293 = getelementptr inbounds %struct.rtx_def, ptr %203, i64 0, i32 1, i32 0, i32 0, i64 2
  %294 = load ptr, ptr %293, align 8, !tbaa !46
  %295 = icmp eq ptr %294, null
  br i1 %295, label %312, label %303

296:                                              ; preds = %288, %286
  %297 = load i32, ptr %109, align 8, !tbaa !46
  br i1 %287, label %301, label %298

298:                                              ; preds = %296
  %299 = getelementptr inbounds %struct.rtx_def, ptr %203, i64 0, i32 1
  %300 = load i32, ptr %299, align 8, !tbaa !46
  br label %301

301:                                              ; preds = %296, %298
  %302 = phi i32 [ %300, %298 ], [ 999999, %296 ]
  call fastcc void @draw_edge(ptr noundef nonnull %20, i32 noundef %297, i32 noundef %302, i32 noundef 0, i32 noundef 0)
  br label %321

303:                                              ; preds = %292, %308
  %304 = phi i1 [ %311, %308 ], [ %295, %292 ]
  %305 = phi ptr [ %310, %308 ], [ %294, %292 ]
  %306 = load i32, ptr %305, align 8
  %307 = trunc i32 %306 to i16
  switch i16 %307, label %312 [
    i16 13, label %308
    i16 11, label %308
  ]

308:                                              ; preds = %303, %303
  %309 = getelementptr inbounds %struct.rtx_def, ptr %305, i64 0, i32 1, i32 0, i32 0, i64 2
  %310 = load ptr, ptr %309, align 8, !tbaa !46
  %311 = icmp eq ptr %310, null
  br i1 %311, label %312, label %303

312:                                              ; preds = %308, %303, %292
  %313 = phi ptr [ %294, %292 ], [ %310, %308 ], [ %305, %303 ]
  %314 = phi i1 [ %295, %292 ], [ %311, %308 ], [ %304, %303 ]
  %315 = load i32, ptr %109, align 8, !tbaa !46
  br i1 %314, label %319, label %316

316:                                              ; preds = %312
  %317 = getelementptr inbounds %struct.rtx_def, ptr %313, i64 0, i32 1
  %318 = load i32, ptr %317, align 8, !tbaa !46
  br label %319

319:                                              ; preds = %312, %316
  %320 = phi i32 [ %318, %316 ], [ 999999, %312 ]
  call fastcc void @draw_edge(ptr noundef nonnull %20, i32 noundef %315, i32 noundef %320, i32 noundef 0, i32 noundef 3)
  br label %321

321:                                              ; preds = %119, %283, %319, %301, %119
  %322 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1, i32 0, i32 0, i64 2
  %323 = load ptr, ptr %322, align 8, !tbaa !46
  %324 = icmp eq ptr %323, null
  br i1 %324, label %325, label %107, !llvm.loop !75

325:                                              ; preds = %321, %103
  store i32 0, ptr @dump_for_graph, align 4, !tbaa !50
  %326 = load i32, ptr @graph_dump_format, align 4, !tbaa !50
  %327 = icmp eq i32 %326, 1
  br i1 %327, label %328, label %331

328:                                              ; preds = %325
  %329 = call ptr @current_function_name() #14
  %330 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %20, ptr noundef nonnull @.str.28, ptr noundef %329)
  br label %331

331:                                              ; preds = %325, %328
  call void @free(ptr noundef %30)
  call void @free(ptr noundef %31)
  call void @free(ptr noundef %32)
  br label %332

332:                                              ; preds = %331, %24
  %333 = call i32 @fclose(ptr noundef nonnull %20)
  br label %334

334:                                              ; preds = %18, %2, %332
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare ptr @fopen_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare i32 @get_max_uid() local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @draw_edge(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #8 !prof !34 {
  %6 = load i32, ptr @graph_dump_format, align 4, !tbaa !50
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %25

8:                                                ; preds = %5
  %9 = icmp eq i32 %4, 2
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = icmp eq i32 %4, 3
  %14 = select i1 %13, ptr @.str.15, ptr @.str.8
  br label %15

15:                                               ; preds = %12, %10, %8
  %16 = phi ptr [ @.str.13, %8 ], [ @.str.14, %10 ], [ %14, %12 ]
  %17 = tail call ptr @current_function_name() #14
  %18 = tail call ptr @current_function_name() #14
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %17, i32 noundef %1, ptr noundef %18, i32 noundef %2, ptr noundef nonnull %16)
  %20 = icmp eq i32 %4, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %4)
  br label %23

23:                                               ; preds = %21, %15
  %24 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0)
  br label %25

25:                                               ; preds = %5, %23
  ret void
}

declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @clean_graph_dump_file(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !34 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %3 = load i32, ptr @graph_dump_format, align 4, !tbaa !50
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [2 x ptr], ptr @graph_ext, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6)
  %8 = add i64 %7, 1
  %9 = add i64 %8, %2
  %10 = alloca i8, i64 %9, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %10, ptr align 1 %0, i64 %2, i1 false)
  %11 = getelementptr inbounds i8, ptr %10, i64 %2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %11, ptr align 1 %6, i64 %8, i1 false)
  %12 = call ptr @fopen_unlocked(ptr noundef nonnull %10, ptr noundef nonnull @.str.2) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.3, ptr noundef nonnull %10) #14
  br label %15

15:                                               ; preds = %14, %1
  %16 = load i32, ptr @graph_dump_format, align 4, !tbaa !50
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 403, ptr noundef nonnull @.str.5) #14
  br label %19

19:                                               ; preds = %15, %18
  %20 = call i64 @fwrite(ptr nonnull @.str.6, i64 26, i64 1, ptr %12)
  %21 = call i32 @fclose(ptr noundef %12)
  ret void
}

declare void @fatal_error(ptr noundef, ...) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @finish_graph_dump_file(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !34 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %3 = load i32, ptr @graph_dump_format, align 4, !tbaa !50
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [2 x ptr], ptr @graph_ext, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6)
  %8 = add i64 %7, 1
  %9 = add i64 %8, %2
  %10 = alloca i8, i64 %9, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %10, ptr align 1 %0, i64 %2, i1 false)
  %11 = getelementptr inbounds i8, ptr %10, i64 %2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %11, ptr align 1 %6, i64 %8, i1 false)
  %12 = call ptr @fopen_unlocked(ptr noundef nonnull %10, ptr noundef nonnull @.str) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load i32, ptr @graph_dump_format, align 4, !tbaa !50
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 425, ptr noundef nonnull @.str.5) #14
  br label %18

18:                                               ; preds = %14, %17
  %19 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr nonnull %12)
  %20 = call i32 @fclose(ptr noundef nonnull %12)
  br label %21

21:                                               ; preds = %18, %1
  ret void
}

declare ptr @current_function_name() local_unnamed_addr #3

declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #13

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !36, i64 8}
!55 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!56 = !{!57, !36, i64 16}
!57 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!58 = distinct !{!58, !52, !53}
!59 = !{!57, !36, i64 8}
!60 = !{!57, !36, i64 0}
!61 = !{!62, !36, i64 48}
!62 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!63 = !{!62, !41, i64 80}
!64 = !{!65, !36, i64 0}
!65 = !{!"rtl_bb_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!66 = !{!65, !36, i64 8}
!67 = distinct !{!67, !52, !53}
!68 = distinct !{!68, !52, !53}
!69 = !{!70, !41, i64 0}
!70 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!71 = !{!72, !36, i64 8}
!72 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!73 = !{!72, !41, i64 48}
!74 = distinct !{!74, !52, !53}
!75 = distinct !{!75, !52, !53}

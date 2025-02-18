; ModuleID = 'lto-cgraph.c'
source_filename = "lto-cgraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gcov_ctr_summary = type { i32, i32, i64, i64, i64 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.lto_cgraph_encoder_d = type { ptr, ptr }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x ptr] }
%struct.lto_simple_output_block = type { i32, ptr, ptr }
%struct.lto_out_decl_state = type { [7 x %struct.lto_tree_ref_encoder], ptr, ptr }
%struct.lto_tree_ref_encoder = type { ptr, i32, ptr }
%struct.cgraph_node_set_def = type { ptr, ptr, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.cgraph_asm_node = type { ptr, ptr, i32 }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.lto_file_decl_data = type { ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.lto_tree_ref_table = type { ptr, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"lto-cgraph.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cgraph_asm_nodes = external local_unnamed_addr global ptr, align 8
@flag_wpa = external local_unnamed_addr global i32, align 4
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@profile_info = external local_unnamed_addr global ptr, align 8
@lto_gcov_summary = internal global %struct.gcov_ctr_summary zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"Combining units with different profiles is not supported.\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"bytecode stream: found empty cgraph node\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"bytecode stream: no caller found while reading edge\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"bytecode stream: no callee found while reading edge\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"bytecode stream: found multiple instances of cgraph node %d\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"./lto-streamer.h\00", align 1
@switch.table.output_cgraph = private unnamed_addr constant [4 x i32] [i32 3, i32 2, i32 1, i32 1], align 4

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #12
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #12
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #12
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #12
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #12
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #12
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #12
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
  %5 = tail call ptr @__ctype_tolower_loc() #12
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
  %5 = tail call ptr @__ctype_toupper_loc() #12
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #12
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lto_cgraph_encoder_new() local_unnamed_addr #9 !prof !34 {
  %1 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #12
  %2 = tail call ptr @pointer_map_create() #12
  store ptr %2, ptr %1, align 8, !tbaa !54
  %3 = getelementptr inbounds %struct.lto_cgraph_encoder_d, ptr %1, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !56
  ret ptr %1
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @pointer_map_create() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_cgraph_encoder_delete(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.lto_cgraph_encoder_d, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef %3)
  br label %6

6:                                                ; preds = %1, %5
  store ptr null, ptr %2, align 8, !tbaa !35
  %7 = load ptr, ptr %0, align 8, !tbaa !54
  tail call void @pointer_map_destroy(ptr noundef %7) #12
  tail call void @free(ptr noundef %0)
  ret void
}

declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lto_cgraph_encoder_encode(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !54
  %4 = tail call ptr @pointer_map_contains(ptr noundef %3, ptr noundef %1) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %33

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.lto_cgraph_encoder_d, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 8, !tbaa !57
  br label %12

12:                                               ; preds = %6, %10
  %13 = phi i32 [ %11, %10 ], [ 0, %6 ]
  %14 = load ptr, ptr %0, align 8, !tbaa !54
  %15 = tail call ptr @pointer_map_insert(ptr noundef %14, ptr noundef %1) #12
  %16 = sext i32 %13 to i64
  %17 = inttoptr i64 %16 to ptr
  store ptr %17, ptr %15, align 8, !tbaa !35
  %18 = load ptr, ptr %7, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %18, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !59
  %23 = load i32, ptr %18, align 8, !tbaa !57
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %12, %20
  %26 = tail call ptr @vec_heap_p_reserve(ptr noundef %18, i32 noundef 1) #12
  store ptr %26, ptr %7, align 8, !tbaa !35
  br label %27

27:                                               ; preds = %20, %25
  %28 = load ptr, ptr %7, align 8, !tbaa !35
  %29 = load i32, ptr %28, align 8, !tbaa !57
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 8, !tbaa !57
  %31 = zext i32 %29 to i64
  %32 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %28, i64 0, i32 2, i64 %31
  store ptr %1, ptr %32, align 8, !tbaa !35
  br label %37

33:                                               ; preds = %2
  %34 = load ptr, ptr %4, align 8, !tbaa !35
  %35 = ptrtoint ptr %34 to i64
  %36 = trunc i64 %35 to i32
  br label %37

37:                                               ; preds = %33, %27
  %38 = phi i32 [ %36, %33 ], [ %13, %27 ]
  ret i32 %38
}

declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lto_cgraph_encoder_lookup(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !54
  %4 = tail call ptr @pointer_map_contains(ptr noundef %3, ptr noundef %1) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !35
  %8 = ptrtoint ptr %7 to i64
  %9 = trunc i64 %8 to i32
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -1, %2 ]
  ret i32 %11
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @lto_cgraph_encoder_deref(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #11 !prof !34 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.lto_cgraph_encoder_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %6, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  br label %10

10:                                               ; preds = %2, %4
  %11 = phi ptr [ %9, %4 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: cold nounwind uwtable
define dso_local void @output_cgraph(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call ptr @lto_create_simple_output_block(i32 noundef 3) #12
  %3 = load ptr, ptr @profile_info, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %3, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !60
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 364, ptr noundef nonnull @.str.1) #12
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.lto_simple_output_block, ptr %2, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = load ptr, ptr @profile_info, align 8, !tbaa !35
  %14 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !60
  %16 = zext i32 %15 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %12, i64 noundef %16) #12
  %17 = load ptr, ptr %11, align 8, !tbaa !62
  %18 = load ptr, ptr @profile_info, align 8, !tbaa !35
  %19 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %18, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !64
  tail call void @lto_output_sleb128_stream(ptr noundef %17, i64 noundef %20) #12
  %21 = load ptr, ptr %11, align 8, !tbaa !62
  %22 = load ptr, ptr @profile_info, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %22, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !65
  tail call void @lto_output_sleb128_stream(ptr noundef %21, i64 noundef %24) #12
  %25 = load ptr, ptr %11, align 8, !tbaa !62
  %26 = load ptr, ptr @profile_info, align 8, !tbaa !35
  %27 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %26, i64 0, i32 4
  %28 = load i64, ptr %27, align 8, !tbaa !66
  tail call void @lto_output_sleb128_stream(ptr noundef %25, i64 noundef %28) #12
  br label %32

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.lto_simple_output_block, ptr %2, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !62
  tail call void @lto_output_uleb128_stream(ptr noundef %31, i64 noundef 0) #12
  br label %32

32:                                               ; preds = %10, %29
  %33 = getelementptr inbounds %struct.lto_simple_output_block, ptr %2, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !67
  %35 = getelementptr inbounds %struct.lto_out_decl_state, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !68
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 395, ptr noundef nonnull @.str.1) #12
  br label %39

39:                                               ; preds = %32, %38
  %40 = load ptr, ptr %33, align 8, !tbaa !67
  %41 = getelementptr inbounds %struct.lto_out_decl_state, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !68
  %43 = tail call ptr @lto_bitmap_alloc() #12
  %44 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  br label %45

45:                                               ; preds = %56, %39
  %46 = phi i32 [ 0, %39 ], [ %61, %56 ]
  %47 = load ptr, ptr %44, align 8, !tbaa !70
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load i32, ptr %47, align 8, !tbaa !57
  br label %51

51:                                               ; preds = %45, %49
  %52 = phi i32 [ %50, %49 ], [ 0, %45 ]
  %53 = icmp ugt i32 %52, %46
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  br label %62

56:                                               ; preds = %51
  %57 = zext i32 %46 to i64
  %58 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %47, i64 0, i32 2, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !35
  %60 = tail call i32 @lto_cgraph_encoder_encode(ptr noundef %42, ptr noundef %59)
  %61 = add nuw i32 %46, 1
  br label %45, !llvm.loop !72

62:                                               ; preds = %54, %153
  %63 = phi i32 [ %154, %153 ], [ 0, %54 ]
  %64 = load ptr, ptr %55, align 8, !tbaa !70
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = load i32, ptr %64, align 8, !tbaa !57
  br label %68

68:                                               ; preds = %62, %66
  %69 = phi i32 [ %67, %66 ], [ 0, %62 ]
  %70 = icmp ugt i32 %69, %63
  br i1 %70, label %71, label %155

71:                                               ; preds = %68
  %72 = zext i32 %63 to i64
  %73 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %64, i64 0, i32 2, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !35
  %75 = getelementptr inbounds %struct.cgraph_node, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !35
  %77 = icmp eq ptr %76, null
  br i1 %77, label %128, label %78

78:                                               ; preds = %71, %124
  %79 = phi ptr [ %126, %124 ], [ %76, %71 ]
  %80 = getelementptr inbounds %struct.cgraph_edge, ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !73
  %82 = tail call { ptr, i32 } @cgraph_node_set_find(ptr noundef %0, ptr noundef %81) #12
  %83 = extractvalue { ptr, i32 } %82, 0
  %84 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !70
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %78
  %88 = load i32, ptr %85, align 8, !tbaa !57
  br label %89

89:                                               ; preds = %78, %87
  %90 = phi i32 [ %88, %87 ], [ 0, %78 ]
  %91 = extractvalue { ptr, i32 } %82, 1
  %92 = icmp ugt i32 %90, %91
  br i1 %92, label %124, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.cgraph_node, ptr %81, i64 0, i32 19, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !75
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 421, ptr noundef nonnull @.str.1) #12
  br label %98

98:                                               ; preds = %93, %97
  %99 = tail call i32 @lto_cgraph_encoder_encode(ptr noundef %42, ptr noundef %81)
  %100 = getelementptr inbounds %struct.cgraph_node, ptr %81, i64 0, i32 14
  %101 = load ptr, ptr %100, align 8, !tbaa !83
  %102 = icmp eq ptr %101, null
  %103 = icmp eq ptr %101, %81
  %104 = or i1 %102, %103
  br i1 %104, label %124, label %105

105:                                              ; preds = %98, %120
  %106 = phi ptr [ %122, %120 ], [ %101, %98 ]
  %107 = tail call { ptr, i32 } @cgraph_node_set_find(ptr noundef %0, ptr noundef %106) #12
  %108 = extractvalue { ptr, i32 } %107, 0
  %109 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !70
  %111 = icmp eq ptr %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %105
  %113 = load i32, ptr %110, align 8, !tbaa !57
  br label %114

114:                                              ; preds = %105, %112
  %115 = phi i32 [ %113, %112 ], [ 0, %105 ]
  %116 = extractvalue { ptr, i32 } %107, 1
  %117 = icmp ugt i32 %115, %116
  br i1 %117, label %120, label %118

118:                                              ; preds = %114
  %119 = tail call i32 @lto_cgraph_encoder_encode(ptr noundef %42, ptr noundef %106)
  br label %120

120:                                              ; preds = %114, %118
  %121 = getelementptr inbounds %struct.cgraph_node, ptr %106, i64 0, i32 14
  %122 = load ptr, ptr %121, align 8, !tbaa !83
  %123 = icmp eq ptr %122, %81
  br i1 %123, label %124, label %105, !llvm.loop !84

124:                                              ; preds = %120, %98, %89
  %125 = getelementptr inbounds %struct.cgraph_edge, ptr %79, i64 0, i32 6
  %126 = load ptr, ptr %125, align 8, !tbaa !35
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %78, !llvm.loop !85

128:                                              ; preds = %124, %71
  %129 = getelementptr inbounds %struct.cgraph_node, ptr %74, i64 0, i32 14
  %130 = load ptr, ptr %129, align 8, !tbaa !83
  %131 = icmp eq ptr %130, null
  %132 = icmp eq ptr %130, %74
  %133 = or i1 %131, %132
  br i1 %133, label %153, label %134

134:                                              ; preds = %128, %149
  %135 = phi ptr [ %151, %149 ], [ %130, %128 ]
  %136 = tail call { ptr, i32 } @cgraph_node_set_find(ptr noundef %0, ptr noundef %135) #12
  %137 = extractvalue { ptr, i32 } %136, 0
  %138 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !70
  %140 = icmp eq ptr %139, null
  br i1 %140, label %143, label %141

141:                                              ; preds = %134
  %142 = load i32, ptr %139, align 8, !tbaa !57
  br label %143

143:                                              ; preds = %134, %141
  %144 = phi i32 [ %142, %141 ], [ 0, %134 ]
  %145 = extractvalue { ptr, i32 } %136, 1
  %146 = icmp ugt i32 %144, %145
  br i1 %146, label %149, label %147

147:                                              ; preds = %143
  %148 = tail call i32 @lto_cgraph_encoder_encode(ptr noundef %42, ptr noundef %135)
  br label %149

149:                                              ; preds = %143, %147
  %150 = getelementptr inbounds %struct.cgraph_node, ptr %135, i64 0, i32 14
  %151 = load ptr, ptr %150, align 8, !tbaa !83
  %152 = icmp eq ptr %151, %74
  br i1 %152, label %153, label %134, !llvm.loop !86

153:                                              ; preds = %149, %128
  %154 = add i32 %63, 1
  br label %62, !llvm.loop !87

155:                                              ; preds = %68
  %156 = getelementptr inbounds %struct.lto_cgraph_encoder_d, ptr %42, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !56
  %158 = icmp eq ptr %157, null
  br i1 %158, label %161, label %159

159:                                              ; preds = %155
  %160 = load i32, ptr %157, align 8, !tbaa !57
  br label %161

161:                                              ; preds = %155, %159
  %162 = phi i32 [ %160, %159 ], [ 0, %155 ]
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %433

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.lto_simple_output_block, ptr %2, i64 0, i32 2
  %166 = zext nneg i32 %162 to i64
  br label %167

167:                                              ; preds = %164, %430
  %168 = phi i64 [ 0, %164 ], [ %431, %430 ]
  %169 = load ptr, ptr %156, align 8, !tbaa !56
  %170 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %169, i64 0, i32 2, i64 %168
  %171 = load ptr, ptr %170, align 8, !tbaa !35
  %172 = tail call { ptr, i32 } @cgraph_node_set_find(ptr noundef %0, ptr noundef %171) #12
  %173 = extractvalue { ptr, i32 } %172, 0
  %174 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !70
  %176 = icmp eq ptr %175, null
  br i1 %176, label %179, label %177

177:                                              ; preds = %167
  %178 = load i32, ptr %175, align 8, !tbaa !57
  br label %179

179:                                              ; preds = %177, %167
  %180 = phi i32 [ %178, %177 ], [ 0, %167 ]
  %181 = extractvalue { ptr, i32 } %172, 1
  %182 = icmp ule i32 %180, %181
  %183 = load ptr, ptr %171, align 8, !tbaa !88
  %184 = getelementptr inbounds %struct.tree_decl_minimal, ptr %183, i64 0, i32 2
  %185 = load i32, ptr %184, align 4, !tbaa !46
  %186 = tail call i32 @bitmap_bit_p(ptr noundef %43, i32 noundef %185) #12
  %187 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %171) #12
  %188 = add i32 %187, -1
  %189 = icmp ult i32 %188, 4
  br i1 %189, label %191, label %190

190:                                              ; preds = %179
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 206, ptr noundef nonnull @.str.1) #12
  br label %195

191:                                              ; preds = %179
  %192 = zext nneg i32 %188 to i64
  %193 = getelementptr inbounds [4 x i32], ptr @switch.table.output_cgraph, i64 0, i64 %192
  %194 = load i32, ptr %193, align 4
  br label %195

195:                                              ; preds = %191, %190
  %196 = phi i32 [ undef, %190 ], [ %194, %191 ]
  %197 = select i1 %182, i32 3, i32 %196
  %198 = load ptr, ptr %165, align 8, !tbaa !62
  %199 = zext i32 %197 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %198, i64 noundef %199) #12
  %200 = getelementptr inbounds %struct.cgraph_node, ptr %171, i64 0, i32 18, i32 2
  %201 = getelementptr inbounds %struct.cgraph_node, ptr %171, i64 0, i32 27
  %202 = load i16, ptr %201, align 4
  %203 = lshr i16 %202, 5
  %204 = and i16 %203, 1
  br i1 %182, label %205, label %210

205:                                              ; preds = %195
  %206 = getelementptr inbounds %struct.cgraph_node, ptr %171, i64 0, i32 19, i32 2
  %207 = load ptr, ptr %206, align 8, !tbaa !75
  %208 = icmp eq ptr %207, null
  br i1 %208, label %224, label %209

209:                                              ; preds = %205
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 232, ptr noundef nonnull @.str.1) #12
  br label %224

210:                                              ; preds = %195
  %211 = load i8, ptr %200, align 8
  %212 = lshr i8 %211, 3
  %213 = and i8 %212, 1
  %214 = zext nneg i8 %213 to i64
  %215 = lshr i8 %211, 1
  %216 = and i8 %215, 1
  %217 = zext nneg i8 %216 to i64
  %218 = and i8 %211, 1
  %219 = zext nneg i8 %218 to i64
  %220 = load ptr, ptr %171, align 8, !tbaa !88
  %221 = tail call zeroext i8 @lto_forced_extern_inline_p(ptr noundef %220) #12
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %210
  br label %224

224:                                              ; preds = %223, %210, %209, %205
  %225 = phi i64 [ 0, %223 ], [ %217, %210 ], [ 1, %205 ], [ 1, %209 ]
  %226 = phi i64 [ 1, %223 ], [ %214, %210 ], [ 0, %205 ], [ 0, %209 ]
  %227 = phi i16 [ %204, %223 ], [ %204, %210 ], [ 0, %205 ], [ 0, %209 ]
  %228 = phi i64 [ 1, %223 ], [ %219, %210 ], [ 0, %205 ], [ 0, %209 ]
  %229 = load ptr, ptr %165, align 8, !tbaa !62
  %230 = and i32 %186, 255
  %231 = zext nneg i32 %230 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %229, i64 noundef %231) #12
  %232 = icmp eq i32 %230, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %224
  %234 = load ptr, ptr %171, align 8, !tbaa !88
  %235 = getelementptr inbounds %struct.tree_decl_minimal, ptr %234, i64 0, i32 2
  %236 = load i32, ptr %235, align 4, !tbaa !46
  %237 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %43, i32 noundef %236) #12
  br label %238

238:                                              ; preds = %233, %224
  %239 = load ptr, ptr %33, align 8, !tbaa !67
  %240 = load ptr, ptr %165, align 8, !tbaa !62
  %241 = load ptr, ptr %171, align 8, !tbaa !88
  tail call void @lto_output_fn_decl_index(ptr noundef %239, ptr noundef %240, ptr noundef %241) #12
  %242 = load ptr, ptr %165, align 8, !tbaa !62
  %243 = getelementptr inbounds %struct.cgraph_node, ptr %171, i64 0, i32 23
  %244 = load i64, ptr %243, align 8, !tbaa !89
  tail call void @lto_output_sleb128_stream(ptr noundef %242, i64 noundef %244) #12
  %245 = tail call ptr @bitpack_create() #12
  tail call void @bp_pack_value(ptr noundef %245, i64 noundef %228, i32 noundef 1) #12
  tail call void @bp_pack_value(ptr noundef %245, i64 noundef %225, i32 noundef 1) #12
  %246 = load i8, ptr %200, align 8
  %247 = lshr i8 %246, 2
  %248 = and i8 %247, 1
  %249 = zext nneg i8 %248 to i64
  tail call void @bp_pack_value(ptr noundef %245, i64 noundef %249, i32 noundef 1) #12
  tail call void @bp_pack_value(ptr noundef %245, i64 noundef %226, i32 noundef 1) #12
  %250 = load i8, ptr %200, align 8
  %251 = lshr i8 %250, 4
  %252 = and i8 %251, 1
  %253 = zext nneg i8 %252 to i64
  tail call void @bp_pack_value(ptr noundef %245, i64 noundef %253, i32 noundef 1) #12
  %254 = load i8, ptr %200, align 8
  %255 = lshr i8 %254, 5
  %256 = and i8 %255, 1
  %257 = zext nneg i8 %256 to i64
  tail call void @bp_pack_value(ptr noundef %245, i64 noundef %257, i32 noundef 1) #12
  %258 = load i8, ptr %200, align 8
  %259 = lshr i8 %258, 6
  %260 = and i8 %259, 1
  %261 = zext nneg i8 %260 to i64
  tail call void @bp_pack_value(ptr noundef %245, i64 noundef %261, i32 noundef 1) #12
  %262 = load i8, ptr %200, align 8
  %263 = lshr i8 %262, 7
  %264 = zext nneg i8 %263 to i64
  tail call void @bp_pack_value(ptr noundef %245, i64 noundef %264, i32 noundef 1) #12
  %265 = load i16, ptr %201, align 4
  %266 = and i16 %265, 1
  %267 = zext nneg i16 %266 to i64
  tail call void @bp_pack_value(ptr noundef %245, i64 noundef %267, i32 noundef 1) #12
  %268 = load i16, ptr %201, align 4
  %269 = lshr i16 %268, 1
  %270 = and i16 %269, 1
  %271 = zext nneg i16 %270 to i64
  tail call void @bp_pack_value(ptr noundef %245, i64 noundef %271, i32 noundef 1) #12
  %272 = load i16, ptr %201, align 4
  %273 = lshr i16 %272, 2
  %274 = and i16 %273, 1
  %275 = zext nneg i16 %274 to i64
  tail call void @bp_pack_value(ptr noundef %245, i64 noundef %275, i32 noundef 1) #12
  %276 = load i16, ptr %201, align 4
  %277 = lshr i16 %276, 3
  %278 = and i16 %277, 1
  %279 = zext nneg i16 %278 to i64
  tail call void @bp_pack_value(ptr noundef %245, i64 noundef %279, i32 noundef 1) #12
  %280 = load i16, ptr %201, align 4
  %281 = lshr i16 %280, 4
  %282 = and i16 %281, 1
  %283 = zext nneg i16 %282 to i64
  tail call void @bp_pack_value(ptr noundef %245, i64 noundef %283, i32 noundef 1) #12
  %284 = zext nneg i16 %227 to i64
  tail call void @bp_pack_value(ptr noundef %245, i64 noundef %284, i32 noundef 1) #12
  %285 = load i16, ptr %201, align 4
  %286 = lshr i16 %285, 6
  %287 = and i16 %286, 1
  %288 = zext nneg i16 %287 to i64
  tail call void @bp_pack_value(ptr noundef %245, i64 noundef %288, i32 noundef 1) #12
  %289 = load i16, ptr %201, align 4
  %290 = lshr i16 %289, 7
  %291 = and i16 %290, 1
  %292 = zext nneg i16 %291 to i64
  tail call void @bp_pack_value(ptr noundef %245, i64 noundef %292, i32 noundef 1) #12
  %293 = load i16, ptr %201, align 4
  %294 = lshr i16 %293, 8
  %295 = and i16 %294, 1
  %296 = zext nneg i16 %295 to i64
  tail call void @bp_pack_value(ptr noundef %245, i64 noundef %296, i32 noundef 1) #12
  %297 = load ptr, ptr %165, align 8, !tbaa !62
  tail call void @lto_output_bitpack(ptr noundef %297, ptr noundef %245) #12
  tail call void @bitpack_delete(ptr noundef %245) #12
  %298 = icmp eq i32 %197, 3
  br i1 %298, label %319, label %299

299:                                              ; preds = %238
  %300 = load ptr, ptr %165, align 8, !tbaa !62
  %301 = getelementptr inbounds %struct.cgraph_node, ptr %171, i64 0, i32 18, i32 1
  %302 = load i64, ptr %301, align 8, !tbaa !90
  tail call void @lto_output_sleb128_stream(ptr noundef %300, i64 noundef %302) #12
  %303 = load ptr, ptr %165, align 8, !tbaa !62
  %304 = getelementptr inbounds %struct.cgraph_node, ptr %171, i64 0, i32 18, i32 1, i32 1
  %305 = load i32, ptr %304, align 8, !tbaa !91
  %306 = sext i32 %305 to i64
  tail call void @lto_output_sleb128_stream(ptr noundef %303, i64 noundef %306) #12
  %307 = load ptr, ptr %165, align 8, !tbaa !62
  %308 = getelementptr inbounds %struct.cgraph_node, ptr %171, i64 0, i32 18, i32 1, i32 2
  %309 = load i32, ptr %308, align 4, !tbaa !92
  %310 = sext i32 %309 to i64
  tail call void @lto_output_sleb128_stream(ptr noundef %307, i64 noundef %310) #12
  %311 = load ptr, ptr %165, align 8, !tbaa !62
  %312 = getelementptr inbounds %struct.cgraph_node, ptr %171, i64 0, i32 18, i32 1, i32 3
  %313 = load i32, ptr %312, align 8, !tbaa !93
  %314 = sext i32 %313 to i64
  tail call void @lto_output_sleb128_stream(ptr noundef %311, i64 noundef %314) #12
  %315 = load ptr, ptr %165, align 8, !tbaa !62
  %316 = getelementptr inbounds %struct.cgraph_node, ptr %171, i64 0, i32 18, i32 1, i32 4
  %317 = load i32, ptr %316, align 4, !tbaa !94
  %318 = sext i32 %317 to i64
  tail call void @lto_output_sleb128_stream(ptr noundef %315, i64 noundef %318) #12
  br label %319

319:                                              ; preds = %299, %238
  %320 = load ptr, ptr %165, align 8, !tbaa !62
  %321 = getelementptr inbounds %struct.cgraph_node, ptr %171, i64 0, i32 19
  %322 = load i64, ptr %321, align 8, !tbaa !95
  tail call void @lto_output_sleb128_stream(ptr noundef %320, i64 noundef %322) #12
  %323 = load ptr, ptr %165, align 8, !tbaa !62
  %324 = getelementptr inbounds %struct.cgraph_node, ptr %171, i64 0, i32 19, i32 1
  %325 = load i64, ptr %324, align 8, !tbaa !96
  tail call void @lto_output_sleb128_stream(ptr noundef %323, i64 noundef %325) #12
  %326 = getelementptr inbounds %struct.cgraph_node, ptr %171, i64 0, i32 19, i32 2
  %327 = load ptr, ptr %326, align 8, !tbaa !75
  %328 = icmp eq ptr %327, null
  %329 = or i1 %182, %328
  br i1 %329, label %343, label %330

330:                                              ; preds = %319
  %331 = load ptr, ptr %42, align 8, !tbaa !54
  %332 = tail call ptr @pointer_map_contains(ptr noundef %331, ptr noundef %327) #12
  %333 = icmp eq ptr %332, null
  br i1 %333, label %338, label %334

334:                                              ; preds = %330
  %335 = load ptr, ptr %332, align 8, !tbaa !35
  %336 = ptrtoint ptr %335 to i64
  %337 = trunc i64 %336 to i32
  br label %338

338:                                              ; preds = %334, %330
  %339 = phi i32 [ %337, %334 ], [ -1, %330 ]
  %340 = sext i32 %339 to i64
  %341 = icmp eq i32 %339, -1
  br i1 %341, label %342, label %343

342:                                              ; preds = %338
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 298, ptr noundef nonnull @.str.1) #12
  br label %343

343:                                              ; preds = %342, %338, %319
  %344 = phi i64 [ %340, %338 ], [ -1, %342 ], [ -1, %319 ]
  %345 = load ptr, ptr %165, align 8, !tbaa !62
  tail call void @lto_output_sleb128_stream(ptr noundef %345, i64 noundef %344) #12
  %346 = load ptr, ptr %165, align 8, !tbaa !62
  %347 = getelementptr inbounds %struct.cgraph_node, ptr %171, i64 0, i32 19, i32 3
  %348 = load i32, ptr %347, align 8, !tbaa !97
  %349 = sext i32 %348 to i64
  tail call void @lto_output_sleb128_stream(ptr noundef %346, i64 noundef %349) #12
  %350 = load ptr, ptr %165, align 8, !tbaa !62
  %351 = getelementptr inbounds %struct.cgraph_node, ptr %171, i64 0, i32 19, i32 4
  %352 = load i32, ptr %351, align 4, !tbaa !98
  %353 = sext i32 %352 to i64
  tail call void @lto_output_sleb128_stream(ptr noundef %350, i64 noundef %353) #12
  %354 = load ptr, ptr %165, align 8, !tbaa !62
  %355 = getelementptr inbounds %struct.cgraph_node, ptr %171, i64 0, i32 19, i32 5
  %356 = load i32, ptr %355, align 8, !tbaa !99
  %357 = sext i32 %356 to i64
  tail call void @lto_output_sleb128_stream(ptr noundef %354, i64 noundef %357) #12
  %358 = load ptr, ptr %165, align 8, !tbaa !62
  %359 = getelementptr inbounds %struct.cgraph_node, ptr %171, i64 0, i32 19, i32 6
  %360 = load i8, ptr %359, align 4, !tbaa !100
  %361 = zext i8 %360 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %358, i64 noundef %361) #12
  %362 = getelementptr inbounds %struct.cgraph_node, ptr %171, i64 0, i32 14
  %363 = load ptr, ptr %362, align 8, !tbaa !83
  %364 = icmp eq ptr %363, null
  br i1 %364, label %378, label %365

365:                                              ; preds = %343
  %366 = load ptr, ptr %42, align 8, !tbaa !54
  %367 = tail call ptr @pointer_map_contains(ptr noundef %366, ptr noundef nonnull %363) #12
  %368 = icmp eq ptr %367, null
  br i1 %368, label %373, label %369

369:                                              ; preds = %365
  %370 = load ptr, ptr %367, align 8, !tbaa !35
  %371 = ptrtoint ptr %370 to i64
  %372 = trunc i64 %371 to i32
  br label %373

373:                                              ; preds = %369, %365
  %374 = phi i32 [ %372, %369 ], [ -1, %365 ]
  %375 = sext i32 %374 to i64
  %376 = icmp eq i32 %374, -1
  br i1 %376, label %377, label %378

377:                                              ; preds = %373
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 312, ptr noundef nonnull @.str.1) #12
  br label %378

378:                                              ; preds = %377, %373, %343
  %379 = phi i64 [ %375, %373 ], [ -1, %377 ], [ -1, %343 ]
  %380 = load ptr, ptr %165, align 8, !tbaa !62
  tail call void @lto_output_sleb128_stream(ptr noundef %380, i64 noundef %379) #12
  %381 = getelementptr inbounds %struct.cgraph_node, ptr %171, i64 0, i32 13
  %382 = load ptr, ptr %381, align 8, !tbaa !101
  %383 = icmp eq ptr %382, null
  br i1 %383, label %428, label %384

384:                                              ; preds = %378, %384
  %385 = phi ptr [ %388, %384 ], [ %382, %378 ]
  %386 = phi i64 [ %390, %384 ], [ 1, %378 ]
  %387 = getelementptr inbounds %struct.cgraph_node, ptr %385, i64 0, i32 3
  %388 = load ptr, ptr %387, align 8, !tbaa !102
  %389 = icmp eq ptr %388, null
  %390 = add i64 %386, 1
  br i1 %389, label %391, label %384, !llvm.loop !103

391:                                              ; preds = %384
  %392 = load ptr, ptr %165, align 8, !tbaa !62
  tail call void @lto_output_uleb128_stream(ptr noundef %392, i64 noundef %386) #12
  br label %393

393:                                              ; preds = %420, %391
  %394 = phi ptr [ %385, %391 ], [ %426, %420 ]
  %395 = load ptr, ptr %33, align 8, !tbaa !67
  %396 = load ptr, ptr %165, align 8, !tbaa !62
  %397 = load ptr, ptr %394, align 8, !tbaa !88
  tail call void @lto_output_fn_decl_index(ptr noundef %395, ptr noundef %396, ptr noundef %397) #12
  %398 = getelementptr inbounds %struct.cgraph_node, ptr %394, i64 0, i32 22, i32 5
  %399 = load i8, ptr %398, align 2, !tbaa !104
  %400 = icmp eq i8 %399, 0
  br i1 %400, label %418, label %401

401:                                              ; preds = %393
  %402 = getelementptr inbounds %struct.cgraph_node, ptr %394, i64 0, i32 22
  %403 = load ptr, ptr %165, align 8, !tbaa !62
  %404 = getelementptr inbounds %struct.cgraph_node, ptr %394, i64 0, i32 22, i32 3
  %405 = load i8, ptr %404, align 8, !tbaa !105
  %406 = icmp eq i8 %405, 0
  %407 = select i1 %406, i64 1, i64 3
  %408 = getelementptr inbounds %struct.cgraph_node, ptr %394, i64 0, i32 22, i32 4
  %409 = load i8, ptr %408, align 1, !tbaa !106
  %410 = icmp eq i8 %409, 0
  %411 = select i1 %410, i64 0, i64 4
  %412 = or disjoint i64 %411, %407
  tail call void @lto_output_uleb128_stream(ptr noundef %403, i64 noundef %412) #12
  %413 = load ptr, ptr %165, align 8, !tbaa !62
  %414 = load i64, ptr %402, align 8, !tbaa !107
  tail call void @lto_output_uleb128_stream(ptr noundef %413, i64 noundef %414) #12
  %415 = load ptr, ptr %165, align 8, !tbaa !62
  %416 = getelementptr inbounds %struct.cgraph_node, ptr %394, i64 0, i32 22, i32 1
  %417 = load i64, ptr %416, align 8, !tbaa !108
  tail call void @lto_output_uleb128_stream(ptr noundef %415, i64 noundef %417) #12
  br label %420

418:                                              ; preds = %393
  %419 = load ptr, ptr %165, align 8, !tbaa !62
  tail call void @lto_output_uleb128_stream(ptr noundef %419, i64 noundef 0) #12
  br label %420

420:                                              ; preds = %418, %401
  %421 = load ptr, ptr %33, align 8, !tbaa !67
  %422 = load ptr, ptr %165, align 8, !tbaa !62
  %423 = getelementptr inbounds %struct.cgraph_node, ptr %394, i64 0, i32 22, i32 2
  %424 = load ptr, ptr %423, align 8, !tbaa !109
  tail call void @lto_output_fn_decl_index(ptr noundef %421, ptr noundef %422, ptr noundef %424) #12
  %425 = getelementptr inbounds %struct.cgraph_node, ptr %394, i64 0, i32 4
  %426 = load ptr, ptr %425, align 8, !tbaa !110
  %427 = icmp eq ptr %426, null
  br i1 %427, label %430, label %393, !llvm.loop !111

428:                                              ; preds = %378
  %429 = load ptr, ptr %165, align 8, !tbaa !62
  tail call void @lto_output_uleb128_stream(ptr noundef %429, i64 noundef 0) #12
  br label %430

430:                                              ; preds = %420, %428
  %431 = add nuw nsw i64 %168, 1
  %432 = icmp eq i64 %431, %166
  br i1 %432, label %433, label %167, !llvm.loop !112

433:                                              ; preds = %430, %161
  tail call void @lto_bitmap_free(ptr noundef %43) #12
  %434 = getelementptr inbounds %struct.lto_simple_output_block, ptr %2, i64 0, i32 2
  br label %435

435:                                              ; preds = %531, %433
  %436 = phi i32 [ 0, %433 ], [ %532, %531 ]
  %437 = load ptr, ptr %55, align 8, !tbaa !70
  %438 = icmp eq ptr %437, null
  br i1 %438, label %441, label %439

439:                                              ; preds = %435
  %440 = load i32, ptr %437, align 8, !tbaa !57
  br label %441

441:                                              ; preds = %435, %439
  %442 = phi i32 [ %440, %439 ], [ 0, %435 ]
  %443 = icmp ugt i32 %442, %436
  br i1 %443, label %444, label %533

444:                                              ; preds = %441
  %445 = zext i32 %436 to i64
  %446 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %437, i64 0, i32 2, i64 %445
  %447 = load ptr, ptr %446, align 8, !tbaa !35
  %448 = getelementptr inbounds %struct.cgraph_node, ptr %447, i64 0, i32 1
  %449 = load ptr, ptr %448, align 8, !tbaa !113
  %450 = icmp eq ptr %449, null
  br i1 %450, label %531, label %451

451:                                              ; preds = %444, %451
  %452 = phi ptr [ %454, %451 ], [ %449, %444 ]
  %453 = getelementptr inbounds %struct.cgraph_edge, ptr %452, i64 0, i32 6
  %454 = load ptr, ptr %453, align 8, !tbaa !114
  %455 = icmp eq ptr %454, null
  br i1 %455, label %456, label %451, !llvm.loop !115

456:                                              ; preds = %451, %502
  %457 = phi ptr [ %529, %502 ], [ %452, %451 ]
  %458 = load ptr, ptr %434, align 8, !tbaa !62
  tail call void @lto_output_uleb128_stream(ptr noundef %458, i64 noundef 4) #12
  %459 = getelementptr inbounds %struct.cgraph_edge, ptr %457, i64 0, i32 1
  %460 = load ptr, ptr %459, align 8, !tbaa !116
  %461 = load ptr, ptr %42, align 8, !tbaa !54
  %462 = tail call ptr @pointer_map_contains(ptr noundef %461, ptr noundef %460) #12
  %463 = icmp eq ptr %462, null
  br i1 %463, label %468, label %464

464:                                              ; preds = %456
  %465 = load ptr, ptr %462, align 8, !tbaa !35
  %466 = ptrtoint ptr %465 to i64
  %467 = trunc i64 %466 to i32
  br label %468

468:                                              ; preds = %464, %456
  %469 = phi i32 [ %467, %464 ], [ -1, %456 ]
  %470 = sext i32 %469 to i64
  %471 = icmp eq i32 %469, -1
  br i1 %471, label %472, label %473

472:                                              ; preds = %468
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 145, ptr noundef nonnull @.str.1) #12
  br label %473

473:                                              ; preds = %472, %468
  %474 = load ptr, ptr %434, align 8, !tbaa !62
  tail call void @lto_output_sleb128_stream(ptr noundef %474, i64 noundef %470) #12
  %475 = getelementptr inbounds %struct.cgraph_edge, ptr %457, i64 0, i32 2
  %476 = load ptr, ptr %475, align 8, !tbaa !73
  %477 = load ptr, ptr %42, align 8, !tbaa !54
  %478 = tail call ptr @pointer_map_contains(ptr noundef %477, ptr noundef %476) #12
  %479 = icmp eq ptr %478, null
  br i1 %479, label %484, label %480

480:                                              ; preds = %473
  %481 = load ptr, ptr %478, align 8, !tbaa !35
  %482 = ptrtoint ptr %481 to i64
  %483 = trunc i64 %482 to i32
  br label %484

484:                                              ; preds = %480, %473
  %485 = phi i32 [ %483, %480 ], [ -1, %473 ]
  %486 = sext i32 %485 to i64
  %487 = icmp eq i32 %485, -1
  br i1 %487, label %488, label %489

488:                                              ; preds = %484
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 149, ptr noundef nonnull @.str.1) #12
  br label %489

489:                                              ; preds = %488, %484
  %490 = load ptr, ptr %434, align 8, !tbaa !62
  tail call void @lto_output_sleb128_stream(ptr noundef %490, i64 noundef %486) #12
  %491 = load ptr, ptr %434, align 8, !tbaa !62
  %492 = load i64, ptr %457, align 8, !tbaa !117
  tail call void @lto_output_sleb128_stream(ptr noundef %491, i64 noundef %492) #12
  %493 = tail call ptr @bitpack_create() #12
  %494 = load i32, ptr @flag_wpa, align 4, !tbaa !50
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %498, label %496

496:                                              ; preds = %489
  %497 = getelementptr inbounds %struct.cgraph_edge, ptr %457, i64 0, i32 10
  br label %502

498:                                              ; preds = %489
  %499 = getelementptr inbounds %struct.cgraph_edge, ptr %457, i64 0, i32 7
  %500 = load ptr, ptr %499, align 8, !tbaa !118
  %501 = getelementptr inbounds %struct.gimple_statement_base, ptr %500, i64 0, i32 1
  br label %502

502:                                              ; preds = %496, %498
  %503 = phi ptr [ %497, %496 ], [ %501, %498 ]
  %504 = load i32, ptr %503, align 4, !tbaa !46
  %505 = zext i32 %504 to i64
  tail call void @bp_pack_value(ptr noundef %493, i64 noundef %505, i32 noundef 32) #12
  %506 = getelementptr inbounds %struct.cgraph_edge, ptr %457, i64 0, i32 9
  %507 = load i32, ptr %506, align 8, !tbaa !119
  %508 = zext i32 %507 to i64
  tail call void @bp_pack_value(ptr noundef %493, i64 noundef %508, i32 noundef 32) #12
  %509 = getelementptr inbounds %struct.cgraph_edge, ptr %457, i64 0, i32 11
  %510 = load i32, ptr %509, align 8, !tbaa !120
  %511 = sext i32 %510 to i64
  tail call void @bp_pack_value(ptr noundef %493, i64 noundef %511, i32 noundef 32) #12
  %512 = getelementptr inbounds %struct.cgraph_edge, ptr %457, i64 0, i32 13
  %513 = load i16, ptr %512, align 8, !tbaa !121
  %514 = zext i16 %513 to i64
  tail call void @bp_pack_value(ptr noundef %493, i64 noundef %514, i32 noundef 30) #12
  %515 = getelementptr inbounds %struct.cgraph_edge, ptr %457, i64 0, i32 14
  %516 = load i8, ptr %515, align 2
  %517 = and i8 %516, 1
  %518 = zext nneg i8 %517 to i64
  tail call void @bp_pack_value(ptr noundef %493, i64 noundef %518, i32 noundef 1) #12
  %519 = load i8, ptr %515, align 2
  %520 = lshr i8 %519, 1
  %521 = and i8 %520, 1
  %522 = zext nneg i8 %521 to i64
  tail call void @bp_pack_value(ptr noundef %493, i64 noundef %522, i32 noundef 1) #12
  %523 = load i8, ptr %515, align 2
  %524 = lshr i8 %523, 2
  %525 = and i8 %524, 1
  %526 = zext nneg i8 %525 to i64
  tail call void @bp_pack_value(ptr noundef %493, i64 noundef %526, i32 noundef 1) #12
  %527 = load ptr, ptr %434, align 8, !tbaa !62
  tail call void @lto_output_bitpack(ptr noundef %527, ptr noundef %493) #12
  tail call void @bitpack_delete(ptr noundef %493) #12
  %528 = getelementptr inbounds %struct.cgraph_edge, ptr %457, i64 0, i32 5
  %529 = load ptr, ptr %528, align 8, !tbaa !122
  %530 = icmp eq ptr %529, null
  br i1 %530, label %531, label %456, !llvm.loop !123

531:                                              ; preds = %502, %444
  %532 = add i32 %436, 1
  br label %435, !llvm.loop !124

533:                                              ; preds = %441
  %534 = getelementptr inbounds %struct.lto_simple_output_block, ptr %2, i64 0, i32 2
  %535 = load ptr, ptr %534, align 8, !tbaa !62
  tail call void @lto_output_uleb128_stream(ptr noundef %535, i64 noundef 0) #12
  %536 = load ptr, ptr @cgraph_asm_nodes, align 8, !tbaa !35
  %537 = icmp eq ptr %536, null
  br i1 %537, label %561, label %541

538:                                              ; preds = %552, %541
  %539 = load ptr, ptr %542, align 8, !tbaa !35
  %540 = icmp eq ptr %539, null
  br i1 %540, label %561, label %541, !llvm.loop !125

541:                                              ; preds = %533, %538
  %542 = phi ptr [ %539, %538 ], [ %536, %533 ]
  %543 = getelementptr inbounds %struct.cgraph_asm_node, ptr %542, i64 0, i32 1
  %544 = load ptr, ptr %543, align 8, !tbaa !126
  %545 = getelementptr inbounds %struct.tree_string, ptr %544, i64 0, i32 1
  %546 = load i32, ptr %545, align 8, !tbaa !46
  %547 = load ptr, ptr %534, align 8, !tbaa !62
  %548 = sext i32 %546 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %547, i64 noundef %548) #12
  %549 = icmp sgt i32 %546, 0
  br i1 %549, label %550, label %538

550:                                              ; preds = %541
  %551 = zext nneg i32 %546 to i64
  br label %552

552:                                              ; preds = %550, %552
  %553 = phi i64 [ 0, %550 ], [ %559, %552 ]
  %554 = load ptr, ptr %534, align 8, !tbaa !62
  %555 = load ptr, ptr %543, align 8, !tbaa !126
  %556 = getelementptr inbounds %struct.tree_string, ptr %555, i64 0, i32 2
  %557 = getelementptr inbounds i8, ptr %556, i64 %553
  %558 = load i8, ptr %557, align 1, !tbaa !46
  tail call void @lto_output_1_stream(ptr noundef %554, i8 noundef signext %558) #12
  %559 = add nuw nsw i64 %553, 1
  %560 = icmp eq i64 %559, %551
  br i1 %560, label %538, label %552, !llvm.loop !128

561:                                              ; preds = %538, %533
  %562 = load ptr, ptr %534, align 8, !tbaa !62
  tail call void @lto_output_uleb128_stream(ptr noundef %562, i64 noundef 0) #12
  tail call void @lto_destroy_simple_output_block(ptr noundef %2) #12
  ret void
}

declare ptr @lto_create_simple_output_block(i32 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lto_bitmap_alloc() local_unnamed_addr #3

declare void @lto_bitmap_free(ptr noundef) local_unnamed_addr #3

declare void @lto_output_uleb128_stream(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @lto_output_1_stream(ptr noundef, i8 noundef signext) local_unnamed_addr #3

declare void @lto_destroy_simple_output_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @input_cgraph() local_unnamed_addr #9 !prof !34 {
  %1 = alloca ptr, align 8
  %2 = alloca i64, align 8
  %3 = tail call ptr @lto_get_file_decl_data() #12
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %478, %0
  %7 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %495, label %484

9:                                                ; preds = %0, %478
  %10 = phi ptr [ %482, %478 ], [ %4, %0 ]
  %11 = phi i32 [ %479, %478 ], [ 1, %0 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %12 = call ptr @lto_create_simple_input_block(ptr noundef nonnull %10, i32 noundef 3, ptr noundef nonnull %1, ptr noundef nonnull %2) #12
  %13 = call i64 @lto_input_uleb128(ptr noundef %12) #12
  %14 = trunc i64 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %45, label %16

16:                                               ; preds = %9
  %17 = load ptr, ptr @profile_info, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  store ptr @lto_gcov_summary, ptr @profile_info, align 8, !tbaa !35
  store i32 %14, ptr getelementptr inbounds (%struct.gcov_ctr_summary, ptr @lto_gcov_summary, i64 0, i32 1), align 4, !tbaa !60
  %20 = call i64 @lto_input_sleb128(ptr noundef %12) #12
  store i64 %20, ptr getelementptr inbounds (%struct.gcov_ctr_summary, ptr @lto_gcov_summary, i64 0, i32 2), align 8, !tbaa !64
  %21 = call i64 @lto_input_sleb128(ptr noundef %12) #12
  store i64 %21, ptr getelementptr inbounds (%struct.gcov_ctr_summary, ptr @lto_gcov_summary, i64 0, i32 3), align 8, !tbaa !65
  %22 = call i64 @lto_input_sleb128(ptr noundef %12) #12
  store i64 %22, ptr getelementptr inbounds (%struct.gcov_ctr_summary, ptr @lto_gcov_summary, i64 0, i32 4), align 8, !tbaa !66
  br label %45

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %17, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !60
  %26 = icmp eq i32 %25, %14
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %17, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !64
  %30 = call i64 @lto_input_sleb128(ptr noundef %12) #12
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load ptr, ptr @profile_info, align 8, !tbaa !35
  %34 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %33, i64 0, i32 3
  %35 = load i64, ptr %34, align 8, !tbaa !65
  %36 = call i64 @lto_input_sleb128(ptr noundef %12) #12
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load ptr, ptr @profile_info, align 8, !tbaa !35
  %40 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %39, i64 0, i32 4
  %41 = load i64, ptr %40, align 8, !tbaa !66
  %42 = call i64 @lto_input_sleb128(ptr noundef %12) #12
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %45, label %44

44:                                               ; preds = %38, %32, %27, %23
  call void (ptr, ...) @sorry(ptr noundef nonnull @.str.2) #12
  br label %45

45:                                               ; preds = %9, %19, %38, %44
  %46 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #12
  %47 = call ptr @pointer_map_create() #12
  store ptr %47, ptr %46, align 8, !tbaa !54
  %48 = getelementptr inbounds %struct.lto_cgraph_encoder_d, ptr %46, i64 0, i32 1
  store ptr null, ptr %48, align 8, !tbaa !56
  %49 = getelementptr inbounds %struct.lto_file_decl_data, ptr %10, i64 0, i32 2
  store ptr %46, ptr %49, align 8, !tbaa !129
  br label %50

50:                                               ; preds = %402, %45
  %51 = phi ptr [ %403, %402 ], [ null, %45 ]
  br label %52

52:                                               ; preds = %115, %50
  %53 = call i64 @lto_input_uleb128(ptr noundef %12) #12
  %54 = trunc i64 %53 to i32
  switch i32 %54, label %116 [
    i32 0, label %410
    i32 4, label %55
  ]

55:                                               ; preds = %52
  %56 = call i64 @lto_input_sleb128(ptr noundef %12) #12
  %57 = and i64 %56, 4294967295
  %58 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %51, i64 0, i32 2, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !35
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = load ptr, ptr %59, align 8, !tbaa !88
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %61, %55
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.4) #12
  br label %65

65:                                               ; preds = %64, %61
  %66 = call i64 @lto_input_sleb128(ptr noundef %12) #12
  %67 = and i64 %66, 4294967295
  %68 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %51, i64 0, i32 2, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !35
  %70 = icmp eq ptr %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = load ptr, ptr %69, align 8, !tbaa !88
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %71, %65
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.5) #12
  br label %75

75:                                               ; preds = %74, %71
  %76 = call i64 @lto_input_sleb128(ptr noundef %12) #12
  %77 = call ptr @lto_input_bitpack(ptr noundef %12) #12
  %78 = call i64 @bp_unpack_value(ptr noundef %77, i32 noundef 32) #12
  %79 = call i64 @bp_unpack_value(ptr noundef %77, i32 noundef 32) #12
  %80 = call i64 @bp_unpack_value(ptr noundef %77, i32 noundef 32) #12
  %81 = call i64 @bp_unpack_value(ptr noundef %77, i32 noundef 30) #12
  %82 = load ptr, ptr %59, align 8, !tbaa !88
  %83 = call i32 @lto_symtab_get_resolution(ptr noundef %82) #12
  %84 = and i32 %83, -2
  %85 = icmp eq i32 %84, 4
  br i1 %85, label %115, label %86

86:                                               ; preds = %75
  %87 = trunc i64 %81 to i32
  %88 = trunc i64 %80 to i32
  %89 = trunc i64 %79 to i32
  %90 = trunc i64 %78 to i32
  %91 = call ptr @cgraph_create_edge(ptr noundef nonnull %59, ptr noundef %69, ptr noundef null, i64 noundef %76, i32 noundef %88, i32 noundef %87) #12
  %92 = getelementptr inbounds %struct.cgraph_edge, ptr %91, i64 0, i32 10
  store i32 %90, ptr %92, align 4, !tbaa !131
  %93 = getelementptr inbounds %struct.cgraph_edge, ptr %91, i64 0, i32 9
  store i32 %89, ptr %93, align 8, !tbaa !119
  %94 = call i64 @bp_unpack_value(ptr noundef %77, i32 noundef 1) #12
  %95 = getelementptr inbounds %struct.cgraph_edge, ptr %91, i64 0, i32 14
  %96 = trunc i64 %94 to i8
  %97 = load i8, ptr %95, align 2
  %98 = and i8 %96, 1
  %99 = and i8 %97, -2
  %100 = or disjoint i8 %99, %98
  store i8 %100, ptr %95, align 2
  %101 = call i64 @bp_unpack_value(ptr noundef %77, i32 noundef 1) #12
  %102 = trunc i64 %101 to i8
  %103 = load i8, ptr %95, align 2
  %104 = shl i8 %102, 1
  %105 = and i8 %104, 2
  %106 = and i8 %103, -3
  %107 = or disjoint i8 %105, %106
  store i8 %107, ptr %95, align 2
  %108 = call i64 @bp_unpack_value(ptr noundef %77, i32 noundef 1) #12
  %109 = trunc i64 %108 to i8
  %110 = load i8, ptr %95, align 2
  %111 = shl i8 %109, 2
  %112 = and i8 %111, 4
  %113 = and i8 %110, -5
  %114 = or disjoint i8 %112, %113
  store i8 %114, ptr %95, align 2
  call void @bitpack_delete(ptr noundef %77) #12
  br label %115

115:                                              ; preds = %86, %75
  br label %52, !llvm.loop !132

116:                                              ; preds = %52
  %117 = call i64 @lto_input_uleb128(ptr noundef %12) #12
  %118 = icmp eq i64 %117, 0
  %119 = call i64 @lto_input_uleb128(ptr noundef %12) #12
  %120 = trunc i64 %119 to i32
  %121 = load ptr, ptr %10, align 8, !tbaa !133
  %122 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %121, i64 0, i64 2, i32 1
  %123 = load i32, ptr %122, align 8, !tbaa !134
  %124 = icmp ugt i32 %123, %120
  br i1 %124, label %126, label %125

125:                                              ; preds = %116
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1043, ptr noundef nonnull @.str.1) #12
  br label %126

126:                                              ; preds = %125, %116
  %127 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %121, i64 0, i64 2
  %128 = load ptr, ptr %127, align 8, !tbaa !136
  %129 = and i64 %119, 4294967295
  %130 = getelementptr inbounds ptr, ptr %128, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !35
  %132 = call ptr @cgraph_node(ptr noundef %131) #12
  br i1 %118, label %135, label %133

133:                                              ; preds = %126
  %134 = call ptr @cgraph_clone_node(ptr noundef %132, i64 noundef 0, i32 noundef 1000, i32 noundef 0, i8 noundef zeroext 0, ptr noundef null) #12
  br label %135

135:                                              ; preds = %126, %133
  %136 = phi ptr [ %134, %133 ], [ %132, %126 ]
  %137 = call i64 @lto_input_sleb128(ptr noundef %12) #12
  %138 = getelementptr inbounds %struct.cgraph_node, ptr %136, i64 0, i32 23
  store i64 %137, ptr %138, align 8, !tbaa !89
  %139 = call ptr @lto_input_bitpack(ptr noundef %12) #12
  %140 = icmp eq i32 %54, 3
  br i1 %140, label %152, label %141

141:                                              ; preds = %135
  %142 = call i64 @lto_input_sleb128(ptr noundef %12) #12
  %143 = call i64 @lto_input_sleb128(ptr noundef %12) #12
  %144 = trunc i64 %143 to i32
  %145 = call i64 @lto_input_sleb128(ptr noundef %12) #12
  %146 = trunc i64 %145 to i32
  %147 = call i64 @lto_input_sleb128(ptr noundef %12) #12
  %148 = trunc i64 %147 to i32
  %149 = call i64 @lto_input_sleb128(ptr noundef %12) #12
  %150 = trunc i64 %149 to i32
  %151 = and i64 %142, 4294967295
  br label %152

152:                                              ; preds = %141, %135
  %153 = phi i32 [ %148, %141 ], [ 0, %135 ]
  %154 = phi i32 [ %144, %141 ], [ 0, %135 ]
  %155 = phi i32 [ %150, %141 ], [ 0, %135 ]
  %156 = phi i32 [ %146, %141 ], [ 0, %135 ]
  %157 = phi i64 [ %151, %141 ], [ 0, %135 ]
  %158 = call i64 @lto_input_sleb128(ptr noundef %12) #12
  %159 = call i64 @lto_input_sleb128(ptr noundef %12) #12
  %160 = call i64 @lto_input_sleb128(ptr noundef %12) #12
  %161 = call i64 @lto_input_sleb128(ptr noundef %12) #12
  %162 = trunc i64 %161 to i32
  %163 = call i64 @lto_input_sleb128(ptr noundef %12) #12
  %164 = trunc i64 %163 to i32
  %165 = call i64 @lto_input_sleb128(ptr noundef %12) #12
  %166 = trunc i64 %165 to i32
  %167 = call i64 @lto_input_uleb128(ptr noundef %12) #12
  %168 = trunc i64 %167 to i8
  %169 = call i64 @lto_input_sleb128(ptr noundef %12) #12
  %170 = call i64 @lto_input_uleb128(ptr noundef %12) #12
  %171 = getelementptr inbounds %struct.cgraph_node, ptr %136, i64 0, i32 16
  %172 = load ptr, ptr %171, align 8, !tbaa !137
  %173 = icmp eq ptr %172, null
  br i1 %173, label %182, label %174

174:                                              ; preds = %152
  %175 = load ptr, ptr %136, align 8, !tbaa !88
  %176 = getelementptr inbounds %struct.tree_decl_minimal, ptr %175, i64 0, i32 1
  %177 = load i32, ptr %176, align 8, !tbaa !46
  %178 = icmp ult i32 %177, 2
  br i1 %178, label %182, label %179

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.cgraph_node, ptr %136, i64 0, i32 24
  %181 = load i32, ptr %180, align 8, !tbaa !138
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.6, i32 noundef %181) #12
  br label %182

182:                                              ; preds = %179, %174, %152
  %183 = and i64 %53, 4294967295
  %184 = inttoptr i64 %183 to ptr
  store ptr %184, ptr %171, align 8, !tbaa !137
  %185 = getelementptr inbounds %struct.cgraph_node, ptr %136, i64 0, i32 18
  %186 = getelementptr inbounds %struct.cgraph_node, ptr %136, i64 0, i32 18, i32 1
  store i64 %157, ptr %186, align 8, !tbaa !90
  %187 = getelementptr inbounds %struct.cgraph_node, ptr %136, i64 0, i32 18, i32 1, i32 3
  store i32 %153, ptr %187, align 8, !tbaa !93
  %188 = getelementptr inbounds %struct.cgraph_node, ptr %136, i64 0, i32 18, i32 1, i32 4
  store i32 %155, ptr %188, align 4, !tbaa !94
  %189 = getelementptr inbounds %struct.cgraph_node, ptr %136, i64 0, i32 18, i32 1, i32 1
  store i32 %154, ptr %189, align 8, !tbaa !91
  %190 = getelementptr inbounds %struct.cgraph_node, ptr %136, i64 0, i32 18, i32 1, i32 2
  store i32 %156, ptr %190, align 4, !tbaa !92
  %191 = getelementptr inbounds %struct.cgraph_node, ptr %136, i64 0, i32 19, i32 3
  store i32 %153, ptr %191, align 8, !tbaa !97
  %192 = getelementptr inbounds %struct.cgraph_node, ptr %136, i64 0, i32 19, i32 4
  store i32 %154, ptr %192, align 4, !tbaa !98
  store ptr %10, ptr %185, align 8, !tbaa !139
  %193 = call i64 @bp_unpack_value(ptr noundef %139, i32 noundef 1) #12
  %194 = getelementptr inbounds %struct.cgraph_node, ptr %136, i64 0, i32 18, i32 2
  %195 = trunc i64 %193 to i8
  %196 = load i8, ptr %194, align 8
  %197 = and i8 %195, 1
  %198 = and i8 %196, -2
  %199 = or disjoint i8 %198, %197
  store i8 %199, ptr %194, align 8
  %200 = call i64 @bp_unpack_value(ptr noundef %139, i32 noundef 1) #12
  %201 = trunc i64 %200 to i8
  %202 = load i8, ptr %194, align 8
  %203 = shl i8 %201, 1
  %204 = and i8 %203, 2
  %205 = and i8 %202, -3
  %206 = or disjoint i8 %204, %205
  store i8 %206, ptr %194, align 8
  %207 = call i64 @bp_unpack_value(ptr noundef %139, i32 noundef 1) #12
  %208 = trunc i64 %207 to i8
  %209 = load i8, ptr %194, align 8
  %210 = shl i8 %208, 2
  %211 = and i8 %210, 4
  %212 = and i8 %209, -5
  %213 = or disjoint i8 %211, %212
  store i8 %213, ptr %194, align 8
  %214 = call i64 @bp_unpack_value(ptr noundef %139, i32 noundef 1) #12
  %215 = trunc i64 %214 to i8
  %216 = load i8, ptr %194, align 8
  %217 = shl i8 %215, 3
  %218 = and i8 %217, 8
  %219 = and i8 %216, -9
  %220 = or disjoint i8 %218, %219
  store i8 %220, ptr %194, align 8
  %221 = call i64 @bp_unpack_value(ptr noundef %139, i32 noundef 1) #12
  %222 = trunc i64 %221 to i8
  %223 = load i8, ptr %194, align 8
  %224 = shl i8 %222, 4
  %225 = and i8 %224, 16
  %226 = and i8 %223, -17
  %227 = or disjoint i8 %225, %226
  store i8 %227, ptr %194, align 8
  %228 = call i64 @bp_unpack_value(ptr noundef %139, i32 noundef 1) #12
  %229 = trunc i64 %228 to i8
  %230 = load i8, ptr %194, align 8
  %231 = shl i8 %229, 5
  %232 = and i8 %231, 32
  %233 = and i8 %230, -33
  %234 = or disjoint i8 %232, %233
  store i8 %234, ptr %194, align 8
  %235 = call i64 @bp_unpack_value(ptr noundef %139, i32 noundef 1) #12
  %236 = trunc i64 %235 to i8
  %237 = load i8, ptr %194, align 8
  %238 = shl i8 %236, 6
  %239 = and i8 %238, 64
  %240 = and i8 %237, -65
  %241 = or disjoint i8 %239, %240
  store i8 %241, ptr %194, align 8
  %242 = call i64 @bp_unpack_value(ptr noundef %139, i32 noundef 1) #12
  %243 = trunc i64 %242 to i8
  %244 = load i8, ptr %194, align 8
  %245 = shl i8 %243, 7
  %246 = and i8 %244, 127
  %247 = or disjoint i8 %246, %245
  store i8 %247, ptr %194, align 8
  %248 = call i64 @bp_unpack_value(ptr noundef %139, i32 noundef 1) #12
  %249 = getelementptr inbounds %struct.cgraph_node, ptr %136, i64 0, i32 27
  %250 = trunc i64 %248 to i16
  %251 = load i16, ptr %249, align 4
  %252 = and i16 %250, 1
  %253 = and i16 %251, -2
  %254 = or disjoint i16 %253, %252
  store i16 %254, ptr %249, align 4
  %255 = call i64 @bp_unpack_value(ptr noundef %139, i32 noundef 1) #12
  %256 = trunc i64 %255 to i16
  %257 = load i16, ptr %249, align 4
  %258 = shl i16 %256, 1
  %259 = and i16 %258, 2
  %260 = and i16 %257, -3
  %261 = or disjoint i16 %259, %260
  store i16 %261, ptr %249, align 4
  %262 = call i64 @bp_unpack_value(ptr noundef %139, i32 noundef 1) #12
  %263 = trunc i64 %262 to i16
  %264 = load i16, ptr %249, align 4
  %265 = shl i16 %263, 2
  %266 = and i16 %265, 4
  %267 = and i16 %264, -5
  %268 = or disjoint i16 %266, %267
  store i16 %268, ptr %249, align 4
  %269 = call i64 @bp_unpack_value(ptr noundef %139, i32 noundef 1) #12
  %270 = trunc i64 %269 to i16
  %271 = load i16, ptr %249, align 4
  %272 = shl i16 %270, 3
  %273 = and i16 %272, 8
  %274 = and i16 %271, -9
  %275 = or disjoint i16 %273, %274
  store i16 %275, ptr %249, align 4
  %276 = call i64 @bp_unpack_value(ptr noundef %139, i32 noundef 1) #12
  %277 = trunc i64 %276 to i16
  %278 = load i16, ptr %249, align 4
  %279 = shl i16 %277, 4
  %280 = and i16 %279, 16
  %281 = and i16 %278, -17
  %282 = or disjoint i16 %280, %281
  store i16 %282, ptr %249, align 4
  %283 = call i64 @bp_unpack_value(ptr noundef %139, i32 noundef 1) #12
  %284 = trunc i64 %283 to i16
  %285 = load i16, ptr %249, align 4
  %286 = shl i16 %284, 5
  %287 = and i16 %286, 32
  %288 = and i16 %285, -33
  %289 = or disjoint i16 %287, %288
  store i16 %289, ptr %249, align 4
  %290 = call i64 @bp_unpack_value(ptr noundef %139, i32 noundef 1) #12
  %291 = trunc i64 %290 to i16
  %292 = load i16, ptr %249, align 4
  %293 = shl i16 %291, 6
  %294 = and i16 %293, 64
  %295 = and i16 %292, -65
  %296 = or disjoint i16 %294, %295
  store i16 %296, ptr %249, align 4
  %297 = call i64 @bp_unpack_value(ptr noundef %139, i32 noundef 1) #12
  %298 = trunc i64 %297 to i16
  %299 = load i16, ptr %249, align 4
  %300 = shl i16 %298, 7
  %301 = and i16 %300, 128
  %302 = and i16 %299, -129
  %303 = or disjoint i16 %301, %302
  store i16 %303, ptr %249, align 4
  %304 = call i64 @bp_unpack_value(ptr noundef %139, i32 noundef 1) #12
  %305 = trunc i64 %304 to i16
  %306 = load i16, ptr %249, align 4
  %307 = shl i16 %305, 8
  %308 = and i16 %307, 256
  %309 = and i16 %306, -257
  %310 = or disjoint i16 %308, %309
  store i16 %310, ptr %249, align 4
  call void @bitpack_delete(ptr noundef %139) #12
  %311 = shl i64 %158, 32
  %312 = ashr exact i64 %311, 32
  %313 = getelementptr inbounds %struct.cgraph_node, ptr %136, i64 0, i32 19
  store i64 %312, ptr %313, align 8, !tbaa !95
  %314 = shl i64 %159, 32
  %315 = ashr exact i64 %314, 32
  %316 = getelementptr inbounds %struct.cgraph_node, ptr %136, i64 0, i32 19, i32 1
  store i64 %315, ptr %316, align 8, !tbaa !96
  store i32 %162, ptr %191, align 8, !tbaa !97
  store i32 %164, ptr %192, align 4, !tbaa !98
  %317 = shl i64 %160, 32
  %318 = ashr exact i64 %317, 32
  %319 = inttoptr i64 %318 to ptr
  %320 = getelementptr inbounds %struct.cgraph_node, ptr %136, i64 0, i32 19, i32 2
  store ptr %319, ptr %320, align 8, !tbaa !75
  %321 = getelementptr inbounds %struct.cgraph_node, ptr %136, i64 0, i32 19, i32 5
  store i32 %166, ptr %321, align 8, !tbaa !99
  %322 = getelementptr inbounds %struct.cgraph_node, ptr %136, i64 0, i32 19, i32 6
  store i8 %168, ptr %322, align 4, !tbaa !100
  %323 = shl i64 %169, 32
  %324 = ashr exact i64 %323, 32
  %325 = inttoptr i64 %324 to ptr
  %326 = getelementptr inbounds %struct.cgraph_node, ptr %136, i64 0, i32 14
  store ptr %325, ptr %326, align 8, !tbaa !83
  %327 = icmp eq i64 %170, 0
  br i1 %327, label %387, label %328

328:                                              ; preds = %182, %385
  %329 = phi i64 [ %330, %385 ], [ %170, %182 ]
  %330 = add i64 %329, -1
  %331 = call i64 @lto_input_uleb128(ptr noundef %12) #12
  %332 = trunc i64 %331 to i32
  %333 = load ptr, ptr %10, align 8, !tbaa !133
  %334 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %333, i64 0, i64 2, i32 1
  %335 = load i32, ptr %334, align 8, !tbaa !134
  %336 = icmp ugt i32 %335, %332
  br i1 %336, label %338, label %337

337:                                              ; preds = %328
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1043, ptr noundef nonnull @.str.1) #12
  br label %338

338:                                              ; preds = %337, %328
  %339 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %333, i64 0, i64 2
  %340 = load ptr, ptr %339, align 8, !tbaa !136
  %341 = and i64 %331, 4294967295
  %342 = getelementptr inbounds ptr, ptr %340, i64 %341
  %343 = load ptr, ptr %342, align 8, !tbaa !35
  %344 = call i64 @lto_input_uleb128(ptr noundef %12) #12
  %345 = trunc i64 %344 to i32
  %346 = icmp eq i32 %345, 0
  %347 = call i64 @lto_input_uleb128(ptr noundef %12) #12
  br i1 %346, label %348, label %362

348:                                              ; preds = %338
  %349 = trunc i64 %347 to i32
  %350 = load ptr, ptr %10, align 8, !tbaa !133
  %351 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %350, i64 0, i64 2, i32 1
  %352 = load i32, ptr %351, align 8, !tbaa !134
  %353 = icmp ugt i32 %352, %349
  br i1 %353, label %355, label %354

354:                                              ; preds = %348
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1043, ptr noundef nonnull @.str.1) #12
  br label %355

355:                                              ; preds = %354, %348
  %356 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %350, i64 0, i64 2
  %357 = load ptr, ptr %356, align 8, !tbaa !136
  %358 = and i64 %347, 4294967295
  %359 = getelementptr inbounds ptr, ptr %357, i64 %358
  %360 = load ptr, ptr %359, align 8, !tbaa !35
  %361 = call zeroext i8 @cgraph_same_body_alias(ptr noundef %343, ptr noundef %360) #12
  br label %385

362:                                              ; preds = %338
  %363 = call i64 @lto_input_uleb128(ptr noundef %12) #12
  %364 = call i64 @lto_input_uleb128(ptr noundef %12) #12
  %365 = trunc i64 %364 to i32
  %366 = load ptr, ptr %10, align 8, !tbaa !133
  %367 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %366, i64 0, i64 2, i32 1
  %368 = load i32, ptr %367, align 8, !tbaa !134
  %369 = icmp ugt i32 %368, %365
  br i1 %369, label %371, label %370

370:                                              ; preds = %362
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1043, ptr noundef nonnull @.str.1) #12
  br label %371

371:                                              ; preds = %370, %362
  %372 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %366, i64 0, i64 2
  %373 = load ptr, ptr %372, align 8, !tbaa !136
  %374 = and i64 %364, 4294967295
  %375 = getelementptr inbounds ptr, ptr %373, i64 %374
  %376 = load ptr, ptr %375, align 8, !tbaa !35
  %377 = trunc i64 %344 to i8
  %378 = and i8 %377, 2
  %379 = and i32 %345, 4
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %383, label %381

381:                                              ; preds = %371
  %382 = call ptr @size_int_kind(i64 noundef %363, i32 noundef 0) #12
  br label %383

383:                                              ; preds = %381, %371
  %384 = phi ptr [ %382, %381 ], [ null, %371 ]
  call void @cgraph_add_thunk(ptr noundef %343, ptr noundef %131, i8 noundef zeroext %378, i64 noundef %347, i64 noundef %363, ptr noundef %384, ptr noundef %376) #12
  br label %385

385:                                              ; preds = %383, %355
  %386 = icmp eq i64 %330, 0
  br i1 %386, label %387, label %328, !llvm.loop !140

387:                                              ; preds = %385, %182
  %388 = icmp eq ptr %136, null
  br i1 %388, label %392, label %389

389:                                              ; preds = %387
  %390 = load ptr, ptr %136, align 8, !tbaa !88
  %391 = icmp eq ptr %390, null
  br i1 %391, label %392, label %393

392:                                              ; preds = %389, %387
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.3) #12
  br label %393

393:                                              ; preds = %392, %389
  %394 = icmp eq ptr %51, null
  br i1 %394, label %400, label %395

395:                                              ; preds = %393
  %396 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %51, i64 0, i32 1
  %397 = load i32, ptr %396, align 4, !tbaa !59
  %398 = load i32, ptr %51, align 8, !tbaa !57
  %399 = icmp eq i32 %397, %398
  br i1 %399, label %400, label %402

400:                                              ; preds = %395, %393
  %401 = call ptr @vec_heap_p_reserve(ptr noundef %51, i32 noundef 1) #12
  br label %402

402:                                              ; preds = %400, %395
  %403 = phi ptr [ %401, %400 ], [ %51, %395 ]
  %404 = load i32, ptr %403, align 8, !tbaa !57
  %405 = add i32 %404, 1
  store i32 %405, ptr %403, align 8, !tbaa !57
  %406 = zext i32 %404 to i64
  %407 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %403, i64 0, i32 2, i64 %406
  store ptr %136, ptr %407, align 8, !tbaa !35
  %408 = load ptr, ptr %49, align 8, !tbaa !129
  %409 = call i32 @lto_cgraph_encoder_encode(ptr noundef %408, ptr noundef %136)
  br label %50, !llvm.loop !132

410:                                              ; preds = %52
  %411 = call i64 @lto_input_uleb128(ptr noundef %12) #12
  %412 = icmp eq i64 %411, 0
  br i1 %412, label %413, label %415

413:                                              ; preds = %427, %410
  %414 = icmp eq ptr %51, null
  br label %433

415:                                              ; preds = %410, %427
  %416 = phi i64 [ %431, %427 ], [ %411, %410 ]
  %417 = add i64 %416, 1
  %418 = call ptr @xmalloc(i64 noundef %417) #12
  br label %419

419:                                              ; preds = %415, %419
  %420 = phi i64 [ 0, %415 ], [ %425, %419 ]
  %421 = phi i32 [ 0, %415 ], [ %424, %419 ]
  %422 = call zeroext i8 @lto_input_1_unsigned(ptr noundef %12) #12
  %423 = getelementptr inbounds i8, ptr %418, i64 %420
  store i8 %422, ptr %423, align 1, !tbaa !46
  %424 = add i32 %421, 1
  %425 = zext i32 %424 to i64
  %426 = icmp ugt i64 %416, %425
  br i1 %426, label %419, label %427, !llvm.loop !141

427:                                              ; preds = %419
  %428 = trunc i64 %416 to i32
  %429 = call ptr @build_string(i32 noundef %428, ptr noundef %418) #12
  %430 = call ptr @cgraph_add_asm_node(ptr noundef %429) #12
  call void @free(ptr noundef %418)
  %431 = call i64 @lto_input_uleb128(ptr noundef %12) #12
  %432 = icmp eq i64 %431, 0
  br i1 %432, label %413, label %415, !llvm.loop !142

433:                                              ; preds = %413, %464
  %434 = phi i32 [ %466, %464 ], [ 0, %413 ]
  br i1 %414, label %442, label %435

435:                                              ; preds = %433
  %436 = load i32, ptr %51, align 8, !tbaa !57
  %437 = icmp ugt i32 %436, %434
  br i1 %437, label %438, label %442

438:                                              ; preds = %435
  %439 = zext i32 %434 to i64
  %440 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %51, i64 0, i32 2, i64 %439
  %441 = load ptr, ptr %440, align 8, !tbaa !35
  br label %442

442:                                              ; preds = %438, %435, %433
  %443 = phi ptr [ %441, %438 ], [ null, %435 ], [ null, %433 ]
  %444 = phi i1 [ false, %438 ], [ true, %435 ], [ true, %433 ]
  br i1 %444, label %467, label %445

445:                                              ; preds = %442
  %446 = getelementptr inbounds %struct.cgraph_node, ptr %443, i64 0, i32 19, i32 2
  %447 = load ptr, ptr %446, align 8, !tbaa !75
  %448 = ptrtoint ptr %447 to i64
  %449 = and i64 %448, 4294967295
  %450 = icmp eq i64 %449, 4294967295
  br i1 %450, label %454, label %451

451:                                              ; preds = %445
  %452 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %51, i64 0, i32 2, i64 %449
  %453 = load ptr, ptr %452, align 8, !tbaa !35
  br label %454

454:                                              ; preds = %445, %451
  %455 = phi ptr [ %453, %451 ], [ null, %445 ]
  store ptr %455, ptr %446, align 8, !tbaa !75
  %456 = getelementptr inbounds %struct.cgraph_node, ptr %443, i64 0, i32 14
  %457 = load ptr, ptr %456, align 8, !tbaa !83
  %458 = ptrtoint ptr %457 to i64
  %459 = and i64 %458, 4294967295
  %460 = icmp eq i64 %459, 4294967295
  br i1 %460, label %464, label %461

461:                                              ; preds = %454
  %462 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %51, i64 0, i32 2, i64 %459
  %463 = load ptr, ptr %462, align 8, !tbaa !35
  br label %464

464:                                              ; preds = %454, %461
  %465 = phi ptr [ %463, %461 ], [ null, %454 ]
  store ptr %465, ptr %456, align 8, !tbaa !83
  %466 = add i32 %434, 1
  br label %433, !llvm.loop !143

467:                                              ; preds = %442
  br i1 %414, label %469, label %468

468:                                              ; preds = %467
  call void @free(ptr noundef %51)
  br label %469

469:                                              ; preds = %467, %468
  %470 = load ptr, ptr %1, align 8, !tbaa !35
  %471 = load i64, ptr %2, align 8, !tbaa !144
  call void @lto_destroy_simple_input_block(ptr noundef nonnull %10, i32 noundef 3, ptr noundef %12, ptr noundef %470, i64 noundef %471) #12
  %472 = load i32, ptr @flag_wpa, align 4, !tbaa !50
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %478, label %474

474:                                              ; preds = %469
  %475 = getelementptr inbounds %struct.lto_file_decl_data, ptr %10, i64 0, i32 5
  %476 = load i8, ptr %475, align 8
  %477 = or i8 %476, 1
  store i8 %477, ptr %475, align 8
  br label %478

478:                                              ; preds = %474, %469
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #12
  %479 = add i32 %11, 1
  %480 = zext i32 %11 to i64
  %481 = getelementptr inbounds ptr, ptr %3, i64 %480
  %482 = load ptr, ptr %481, align 8, !tbaa !35
  %483 = icmp eq ptr %482, null
  br i1 %483, label %6, label %9, !llvm.loop !145

484:                                              ; preds = %6, %491
  %485 = phi ptr [ %493, %491 ], [ %7, %6 ]
  %486 = getelementptr inbounds %struct.cgraph_node, ptr %485, i64 0, i32 18
  %487 = load ptr, ptr %486, align 8, !tbaa !139
  %488 = icmp eq ptr %487, null
  br i1 %488, label %491, label %489

489:                                              ; preds = %484
  %490 = getelementptr inbounds %struct.cgraph_node, ptr %485, i64 0, i32 16
  store ptr null, ptr %490, align 8, !tbaa !137
  br label %491

491:                                              ; preds = %484, %489
  %492 = getelementptr inbounds %struct.cgraph_node, ptr %485, i64 0, i32 3
  %493 = load ptr, ptr %492, align 8, !tbaa !35
  %494 = icmp eq ptr %493, null
  br i1 %494, label %495, label %484, !llvm.loop !146

495:                                              ; preds = %491, %6
  ret void
}

declare ptr @lto_get_file_decl_data() local_unnamed_addr #3

declare ptr @lto_create_simple_input_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lto_destroy_simple_input_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @lto_output_sleb128_stream(ptr noundef, i64 noundef) local_unnamed_addr #3

declare { ptr, i32 } @cgraph_node_set_find(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cgraph_function_body_availability(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @lto_forced_extern_inline_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @lto_output_fn_decl_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @bitpack_create() local_unnamed_addr #3

declare void @bp_pack_value(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @lto_output_bitpack(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @bitpack_delete(ptr noundef) local_unnamed_addr #3

declare i64 @lto_input_uleb128(ptr noundef) local_unnamed_addr #3

declare i64 @lto_input_sleb128(ptr noundef) local_unnamed_addr #3

declare void @sorry(ptr noundef, ...) local_unnamed_addr #3

declare void @internal_error(ptr noundef, ...) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare zeroext i8 @lto_input_1_unsigned(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_add_asm_node(ptr noundef) local_unnamed_addr #3

declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lto_input_bitpack(ptr noundef) local_unnamed_addr #3

declare i64 @bp_unpack_value(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @lto_symtab_get_resolution(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_create_edge(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cgraph_clone_node(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @cgraph_same_body_alias(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cgraph_add_thunk(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }

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
!54 = !{!55, !36, i64 0}
!55 = !{!"lto_cgraph_encoder_d", !36, i64 0, !36, i64 8}
!56 = !{!55, !36, i64 8}
!57 = !{!58, !41, i64 0}
!58 = !{!"VEC_cgraph_node_ptr_base", !41, i64 0, !41, i64 4, !37, i64 8}
!59 = !{!58, !41, i64 4}
!60 = !{!61, !41, i64 4}
!61 = !{!"gcov_ctr_summary", !41, i64 0, !41, i64 4, !42, i64 8, !42, i64 16, !42, i64 24}
!62 = !{!63, !36, i64 16}
!63 = !{!"lto_simple_output_block", !41, i64 0, !36, i64 8, !36, i64 16}
!64 = !{!61, !42, i64 8}
!65 = !{!61, !42, i64 16}
!66 = !{!61, !42, i64 24}
!67 = !{!63, !36, i64 8}
!68 = !{!69, !36, i64 168}
!69 = !{!"lto_out_decl_state", !37, i64 0, !36, i64 168, !36, i64 176}
!70 = !{!71, !36, i64 8}
!71 = !{!"cgraph_node_set_def", !36, i64 0, !36, i64 8, !36, i64 16}
!72 = distinct !{!72, !52, !53}
!73 = !{!74, !36, i64 16}
!74 = !{!"cgraph_edge", !42, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !43, i64 88, !41, i64 90, !41, i64 90, !41, i64 90}
!75 = !{!76, !36, i64 200}
!76 = !{!"cgraph_node", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !77, i64 144, !79, i64 184, !80, i64 224, !81, i64 232, !82, i64 256, !42, i64 288, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 309, !41, i64 309}
!77 = !{!"cgraph_local_info", !36, i64 0, !78, i64 8, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32}
!78 = !{!"inline_summary", !42, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20}
!79 = !{!"cgraph_global_info", !42, i64 0, !42, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !37, i64 36}
!80 = !{!"cgraph_rtl_info", !41, i64 0}
!81 = !{!"cgraph_clone_info", !36, i64 0, !36, i64 8, !36, i64 16}
!82 = !{!"cgraph_thunk_info", !42, i64 0, !42, i64 8, !36, i64 16, !37, i64 24, !37, i64 25, !37, i64 26}
!83 = !{!76, !36, i64 112}
!84 = distinct !{!84, !52, !53}
!85 = distinct !{!85, !52, !53}
!86 = distinct !{!86, !52, !53}
!87 = distinct !{!87, !52, !53}
!88 = !{!76, !36, i64 0}
!89 = !{!76, !42, i64 288}
!90 = !{!76, !42, i64 152}
!91 = !{!76, !41, i64 160}
!92 = !{!76, !41, i64 164}
!93 = !{!76, !41, i64 168}
!94 = !{!76, !41, i64 172}
!95 = !{!76, !42, i64 184}
!96 = !{!76, !42, i64 192}
!97 = !{!76, !41, i64 208}
!98 = !{!76, !41, i64 212}
!99 = !{!76, !41, i64 216}
!100 = !{!76, !37, i64 220}
!101 = !{!76, !36, i64 104}
!102 = !{!76, !36, i64 24}
!103 = distinct !{!103, !52, !53}
!104 = !{!76, !37, i64 282}
!105 = !{!76, !37, i64 280}
!106 = !{!76, !37, i64 281}
!107 = !{!76, !42, i64 256}
!108 = !{!76, !42, i64 264}
!109 = !{!76, !36, i64 272}
!110 = !{!76, !36, i64 32}
!111 = distinct !{!111, !52, !53}
!112 = distinct !{!112, !52, !53}
!113 = !{!76, !36, i64 8}
!114 = !{!74, !36, i64 48}
!115 = distinct !{!115, !52, !53}
!116 = !{!74, !36, i64 8}
!117 = !{!74, !42, i64 0}
!118 = !{!74, !36, i64 56}
!119 = !{!74, !41, i64 72}
!120 = !{!74, !41, i64 80}
!121 = !{!74, !43, i64 88}
!122 = !{!74, !36, i64 40}
!123 = distinct !{!123, !52, !53}
!124 = distinct !{!124, !52, !53}
!125 = distinct !{!125, !52, !53}
!126 = !{!127, !36, i64 8}
!127 = !{!"cgraph_asm_node", !36, i64 0, !36, i64 8, !41, i64 16}
!128 = distinct !{!128, !52, !53}
!129 = !{!130, !36, i64 16}
!130 = !{!"lto_file_decl_data", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !36, i64 48, !36, i64 56}
!131 = !{!74, !41, i64 76}
!132 = distinct !{!132, !52, !53}
!133 = !{!130, !36, i64 0}
!134 = !{!135, !41, i64 8}
!135 = !{!"lto_tree_ref_table", !36, i64 0, !41, i64 8}
!136 = !{!135, !36, i64 0}
!137 = !{!76, !36, i64 128}
!138 = !{!76, !41, i64 296}
!139 = !{!76, !36, i64 144}
!140 = distinct !{!140, !52, !53}
!141 = distinct !{!141, !52, !53}
!142 = distinct !{!142, !52, !53}
!143 = distinct !{!143, !52, !53}
!144 = !{!42, !42, i64 0}
!145 = distinct !{!145, !52, !53}
!146 = distinct !{!146, !52, !53}

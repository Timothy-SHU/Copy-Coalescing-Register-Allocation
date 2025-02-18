; ModuleID = 'ipa-utils.c'
source_filename = "ipa-utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.searchc_env = type { ptr, i32, ptr, i32, ptr, i8, i32 }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.ipa_dfs_info = type { i32, i32, i8, i8, ptr, ptr }
%struct.splay_tree_node_s = type { i64, i64, ptr, ptr }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"\0A\0A ordered call graph: %s\0A\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@cgraph_n_nodes = external local_unnamed_addr global i32, align 4
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !47 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !48
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !47 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !48
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !47 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !58

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !52
  %11 = load i8, ptr %3, align 1, !tbaa !59
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !47 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !58

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !52
  %11 = load i8, ptr %3, align 1, !tbaa !59
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !47 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !58

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !52
  %11 = load i8, ptr %3, align 1, !tbaa !59
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !47 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !48
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !47 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !58

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !60
  store i8 %12, ptr %4, align 1, !tbaa !59
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !47 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !58

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !60
  store i8 %12, ptr %4, align 1, !tbaa !59
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !47 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !58

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !60
  store i8 %12, ptr %4, align 1, !tbaa !59
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !47 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !47 {
  %2 = load i32, ptr %0, align 8, !tbaa !62
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !47 {
  %2 = load i32, ptr %0, align 8, !tbaa !62
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !47 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !63
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !47 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !63
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !47 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !47 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !47 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !47 {
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
  br i1 %23, label %7, label %24, !llvm.loop !64

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !47 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @ipa_utils_print_order(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #9 !prof !47 {
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %1)
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = zext nneg i32 %3 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ %8, %7 ], [ %11, %9 ]
  %11 = add nsw i64 %10, -1
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !48
  %13 = getelementptr inbounds ptr, ptr %2, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  tail call void @dump_cgraph_node(ptr noundef %12, ptr noundef %14) #15
  %15 = icmp sgt i64 %10, 1
  br i1 %15, label %9, label %16, !llvm.loop !67

16:                                               ; preds = %9, %4
  %17 = tail call i32 @fputc(i32 10, ptr %0)
  %18 = tail call i32 @fflush(ptr noundef %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @dump_cgraph_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ipa_utils_reduced_inorder(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #10 !prof !68 {
  %5 = alloca %struct.searchc_env, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #15
  %6 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !63
  %7 = sext i32 %6 to i64
  %8 = tail call ptr @xcalloc(i64 noundef %7, i64 noundef 8) #15
  store ptr %8, ptr %5, align 8, !tbaa !69
  %9 = getelementptr inbounds %struct.searchc_env, ptr %5, i64 0, i32 1
  store i32 0, ptr %9, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.searchc_env, ptr %5, i64 0, i32 2
  store ptr %0, ptr %10, align 8, !tbaa !72
  %11 = getelementptr inbounds %struct.searchc_env, ptr %5, i64 0, i32 3
  store i32 0, ptr %11, align 8, !tbaa !73
  %12 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_ints, ptr noundef null, ptr noundef null) #15
  %13 = getelementptr inbounds %struct.searchc_env, ptr %5, i64 0, i32 4
  store ptr %12, ptr %13, align 8, !tbaa !74
  %14 = getelementptr inbounds %struct.searchc_env, ptr %5, i64 0, i32 6
  store i32 1, ptr %14, align 4, !tbaa !75
  %15 = getelementptr inbounds %struct.searchc_env, ptr %5, i64 0, i32 5
  store i8 %1, ptr %15, align 8, !tbaa !76
  %16 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !48
  %17 = icmp eq ptr %16, null
  br i1 %17, label %48, label %18, !prof !77

18:                                               ; preds = %4
  %19 = icmp ne i8 %2, 0
  br label %20

20:                                               ; preds = %18, %44
  %21 = phi ptr [ %16, %18 ], [ %46, %44 ]
  %22 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %21) #15
  %23 = icmp ugt i32 %22, 2
  %24 = icmp eq i32 %22, 2
  %25 = and i1 %19, %24
  %26 = or i1 %23, %25
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %21, i64 0, i32 16
  br i1 %26, label %28, label %43, !prof !78

28:                                               ; preds = %20
  %29 = load ptr, ptr %27, align 8, !tbaa !79
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33, !prof !87

31:                                               ; preds = %28
  %32 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #15
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi ptr [ %29, %28 ], [ %32, %31 ]
  %35 = getelementptr inbounds %struct.ipa_dfs_info, ptr %34, i64 0, i32 2
  store i8 1, ptr %35, align 8, !tbaa !88
  %36 = getelementptr inbounds %struct.ipa_dfs_info, ptr %34, i64 0, i32 3
  store i8 0, ptr %36, align 1, !tbaa !90
  %37 = getelementptr inbounds %struct.ipa_dfs_info, ptr %34, i64 0, i32 4
  store ptr null, ptr %37, align 8, !tbaa !91
  store ptr %34, ptr %27, align 8, !tbaa !79
  %38 = getelementptr inbounds %struct.cgraph_node, ptr %21, i64 0, i32 24
  %39 = load i32, ptr %38, align 8, !tbaa !92
  %40 = sext i32 %39 to i64
  %41 = ptrtoint ptr %21 to i64
  %42 = tail call ptr @splay_tree_insert(ptr noundef %12, i64 noundef %40, i64 noundef %41) #15
  br label %44

43:                                               ; preds = %20
  store ptr null, ptr %27, align 8, !tbaa !79
  br label %44

44:                                               ; preds = %43, %33
  %45 = getelementptr inbounds %struct.cgraph_node, ptr %21, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !48
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %20, !prof !93, !llvm.loop !94

48:                                               ; preds = %44, %4
  %49 = tail call ptr @splay_tree_min(ptr noundef %12) #15
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51, !prof !77

51:                                               ; preds = %48, %51
  %52 = phi ptr [ %57, %51 ], [ %49, %48 ]
  %53 = getelementptr inbounds %struct.splay_tree_node_s, ptr %52, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !95
  %55 = inttoptr i64 %54 to ptr
  call fastcc void @searchc(ptr noundef nonnull %5, ptr noundef %55, ptr noundef %3)
  %56 = load ptr, ptr %13, align 8, !tbaa !74
  %57 = tail call ptr @splay_tree_min(ptr noundef %56) #15
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %51, !prof !97, !llvm.loop !98

59:                                               ; preds = %51, %48
  %60 = load ptr, ptr %13, align 8, !tbaa !74
  tail call void @splay_tree_delete(ptr noundef %60) #15
  %61 = load ptr, ptr %5, align 8, !tbaa !69
  tail call void @free(ptr noundef %61)
  %62 = load i32, ptr %11, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #15
  ret i32 %62
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @splay_tree_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @splay_tree_compare_ints(i64 noundef, i64 noundef) #3

declare i32 @cgraph_function_body_availability(ptr noundef) local_unnamed_addr #3

declare ptr @splay_tree_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @splay_tree_min(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @searchc(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 !prof !99 !PGOFuncName !100 {
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.ipa_dfs_info, ptr %5, i64 0, i32 2
  store i8 0, ptr %6, align 8, !tbaa !88
  %7 = getelementptr inbounds %struct.searchc_env, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 24
  %10 = load i32, ptr %9, align 8, !tbaa !92
  %11 = sext i32 %10 to i64
  tail call void @splay_tree_remove(ptr noundef %8, i64 noundef %11) #15
  %12 = getelementptr inbounds %struct.searchc_env, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !75
  store i32 %13, ptr %5, align 8, !tbaa !101
  %14 = getelementptr inbounds %struct.ipa_dfs_info, ptr %5, i64 0, i32 1
  store i32 %13, ptr %14, align 4, !tbaa !102
  %15 = add nsw i32 %13, 1
  store i32 %15, ptr %12, align 4, !tbaa !75
  %16 = load ptr, ptr %0, align 8, !tbaa !69
  %17 = getelementptr inbounds %struct.searchc_env, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !71
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !71
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds ptr, ptr %16, i64 %20
  store ptr %1, ptr %21, align 8, !tbaa !48
  %22 = getelementptr inbounds %struct.ipa_dfs_info, ptr %5, i64 0, i32 3
  store i8 1, ptr %22, align 1, !tbaa !90
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = icmp eq ptr %24, null
  br i1 %25, label %68, label %26, !prof !103

26:                                               ; preds = %3
  %27 = icmp eq ptr %2, null
  br label %28

28:                                               ; preds = %26, %64
  %29 = phi ptr [ %24, %26 ], [ %66, %64 ]
  %30 = getelementptr inbounds %struct.cgraph_edge, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !104
  br i1 %27, label %35, label %32, !prof !106

32:                                               ; preds = %28
  %33 = tail call zeroext i8 %2(ptr noundef nonnull %29) #15, !prof !107
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %64, !prof !108

35:                                               ; preds = %32, %28
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %31, i64 0, i32 16
  %37 = load ptr, ptr %36, align 8, !tbaa !79
  %38 = icmp eq ptr %37, null
  br i1 %38, label %64, label %39, !prof !109

39:                                               ; preds = %35
  %40 = load ptr, ptr %30, align 8, !tbaa !104
  %41 = tail call i32 @cgraph_function_body_availability(ptr noundef %40) #15
  %42 = icmp ugt i32 %41, 2
  br i1 %42, label %43, label %64, !prof !110

43:                                               ; preds = %39
  %44 = load ptr, ptr %36, align 8, !tbaa !79
  %45 = getelementptr inbounds %struct.ipa_dfs_info, ptr %44, i64 0, i32 2
  %46 = load i8, ptr %45, align 8, !tbaa !88
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48, !prof !111

48:                                               ; preds = %43
  tail call fastcc void @searchc(ptr noundef nonnull %0, ptr noundef %31, ptr noundef %2)
  %49 = load i32, ptr %14, align 4, !tbaa !102
  %50 = getelementptr inbounds %struct.ipa_dfs_info, ptr %44, i64 0, i32 1
  br label %59

51:                                               ; preds = %43
  %52 = load i32, ptr %44, align 8, !tbaa !101
  %53 = load i32, ptr %5, align 8, !tbaa !101
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %64, !prof !112

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.ipa_dfs_info, ptr %44, i64 0, i32 3
  %57 = load i8, ptr %56, align 1, !tbaa !90
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %64, label %59, !prof !113

59:                                               ; preds = %55, %48
  %60 = phi ptr [ %50, %48 ], [ %14, %55 ]
  %61 = phi i32 [ %49, %48 ], [ %52, %55 ]
  %62 = load i32, ptr %60, align 4, !tbaa !102
  %63 = tail call i32 @llvm.smin.i32(i32 %61, i32 %62)
  store i32 %63, ptr %14, align 4, !tbaa !102
  br label %64

64:                                               ; preds = %59, %35, %39, %51, %55, %32
  %65 = getelementptr inbounds %struct.cgraph_edge, ptr %29, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !48
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %28, !prof !114, !llvm.loop !115

68:                                               ; preds = %64, %3
  %69 = load i32, ptr %14, align 4, !tbaa !102
  %70 = load i32, ptr %5, align 8, !tbaa !101
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %111, !prof !116

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.searchc_env, ptr %0, i64 0, i32 5
  %74 = load i8, ptr %73, align 8, !tbaa !76
  %75 = icmp eq i8 %74, 0
  %76 = load i32, ptr %17, align 8, !tbaa !71
  %77 = sext i32 %76 to i64
  br label %78

78:                                               ; preds = %72, %98
  %79 = phi i64 [ %77, %72 ], [ %82, %98 ]
  %80 = phi ptr [ null, %72 ], [ %99, %98 ]
  %81 = load ptr, ptr %0, align 8, !tbaa !69
  %82 = add nsw i64 %79, -1
  %83 = getelementptr inbounds ptr, ptr %81, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !48
  %85 = getelementptr inbounds %struct.cgraph_node, ptr %84, i64 0, i32 16
  %86 = load ptr, ptr %85, align 8, !tbaa !79
  %87 = getelementptr inbounds %struct.ipa_dfs_info, ptr %86, i64 0, i32 3
  store i8 0, ptr %87, align 1, !tbaa !90
  br i1 %75, label %90, label %88, !prof !117

88:                                               ; preds = %78
  %89 = getelementptr inbounds %struct.ipa_dfs_info, ptr %86, i64 0, i32 4
  store ptr %80, ptr %89, align 8, !tbaa !91
  br label %98

90:                                               ; preds = %78
  %91 = getelementptr inbounds %struct.searchc_env, ptr %0, i64 0, i32 2
  %92 = getelementptr inbounds %struct.searchc_env, ptr %0, i64 0, i32 3
  %93 = load ptr, ptr %91, align 8, !tbaa !72
  %94 = load i32, ptr %92, align 8, !tbaa !73
  %95 = add nsw i32 %94, 1
  store i32 %95, ptr %92, align 8, !tbaa !73
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds ptr, ptr %93, i64 %96
  store ptr %84, ptr %97, align 8, !tbaa !48
  br label %98

98:                                               ; preds = %88, %90
  %99 = phi ptr [ %84, %88 ], [ %80, %90 ]
  %100 = icmp eq ptr %84, %1
  br i1 %100, label %101, label %78, !prof !116, !llvm.loop !118

101:                                              ; preds = %98
  %102 = trunc i64 %82 to i32
  store i32 %102, ptr %17, align 8, !tbaa !71
  br i1 %75, label %111, label %103, !prof !117

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.searchc_env, ptr %0, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !72
  %106 = getelementptr inbounds %struct.searchc_env, ptr %0, i64 0, i32 3
  %107 = load i32, ptr %106, align 8, !tbaa !73
  %108 = add nsw i32 %107, 1
  store i32 %108, ptr %106, align 8, !tbaa !73
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds ptr, ptr %105, i64 %109
  store ptr %1, ptr %110, align 8, !tbaa !48
  br label %111

111:                                              ; preds = %101, %103, %68
  ret void
}

declare void @splay_tree_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @get_base_var(ptr noundef readonly %0) local_unnamed_addr #12 !prof !47 {
  br label %2

2:                                                ; preds = %19, %1
  %3 = phi ptr [ %0, %1 ], [ %21, %19 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %11 [
    i16 32, label %22
    i16 34, label %22
    i16 36, label %22
    i16 141, label %6
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %11 [
    i16 32, label %22
    i16 34, label %22
    i16 36, label %22
  ]

11:                                               ; preds = %6, %2
  %12 = and i64 %4, 65535
  %13 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !63
  %15 = freeze i32 %14
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = trunc i64 %4 to i16
  switch i16 %18, label %19 [
    i16 51, label %22
    i16 33, label %22
    i16 30, label %22
    i16 29, label %22
  ]

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !59
  br label %2, !llvm.loop !119

22:                                               ; preds = %17, %17, %17, %17, %11, %6, %6, %6, %2, %2, %2
  ret ptr %3
}

declare void @splay_tree_remove(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

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
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!46}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!35 = !{ptr @ipa_utils_reduced_inorder, ptr @xcalloc, i64 244}
!36 = !{ptr @ipa_utils_reduced_inorder, ptr @splay_tree_new, i64 4}
!37 = !{ptr @ipa_utils_reduced_inorder, ptr @cgraph_function_body_availability, i64 460}
!38 = !{ptr @ipa_utils_reduced_inorder, ptr @splay_tree_insert, i64 320}
!39 = !{ptr @ipa_utils_reduced_inorder, ptr @splay_tree_min, i64 252}
!40 = !{ptr @ipa_utils_reduced_inorder, ptr @searchc, i64 248}
!41 = !{ptr @ipa_utils_reduced_inorder, ptr @splay_tree_delete, i64 4}
!42 = !{ptr @ipa_utils_reduced_inorder, ptr @free, i64 4}
!43 = !{ptr @searchc, ptr @splay_tree_remove, i64 320}
!44 = !{ptr @searchc, ptr @cgraph_function_body_availability, i64 158352}
!45 = !{ptr @searchc, ptr @searchc, i64 72}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"any pointer", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !{!53, !49, i64 8}
!53 = !{!"_IO_FILE", !54, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !49, i64 96, !49, i64 104, !54, i64 112, !54, i64 116, !55, i64 120, !56, i64 128, !50, i64 130, !50, i64 131, !49, i64 136, !55, i64 144, !49, i64 152, !49, i64 160, !49, i64 168, !49, i64 176, !55, i64 184, !54, i64 192, !50, i64 196}
!54 = !{!"int", !50, i64 0}
!55 = !{!"long", !50, i64 0}
!56 = !{!"short", !50, i64 0}
!57 = !{!53, !49, i64 16}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{!50, !50, i64 0}
!60 = !{!53, !49, i64 40}
!61 = !{!53, !49, i64 48}
!62 = !{!53, !54, i64 0}
!63 = !{!54, !54, i64 0}
!64 = distinct !{!64, !65, !66}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = distinct !{!67, !65, !66}
!68 = !{!"function_entry_count", i64 4}
!69 = !{!70, !49, i64 0}
!70 = !{!"searchc_env", !49, i64 0, !54, i64 8, !49, i64 16, !54, i64 24, !49, i64 32, !50, i64 40, !54, i64 44}
!71 = !{!70, !54, i64 8}
!72 = !{!70, !49, i64 16}
!73 = !{!70, !54, i64 24}
!74 = !{!70, !49, i64 32}
!75 = !{!70, !54, i64 44}
!76 = !{!70, !50, i64 40}
!77 = !{!"branch_weights", i32 1, i32 127}
!78 = !{!"branch_weights", i32 44800, i32 19600}
!79 = !{!80, !49, i64 128}
!80 = !{!"cgraph_node", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !49, i64 96, !49, i64 104, !49, i64 112, !49, i64 120, !49, i64 128, !49, i64 136, !81, i64 144, !83, i64 184, !84, i64 224, !85, i64 232, !86, i64 256, !55, i64 288, !54, i64 296, !54, i64 300, !54, i64 304, !54, i64 308, !54, i64 308, !54, i64 308, !54, i64 308, !54, i64 308, !54, i64 308, !54, i64 308, !54, i64 308, !54, i64 309, !54, i64 309}
!81 = !{!"cgraph_local_info", !49, i64 0, !82, i64 8, !54, i64 32, !54, i64 32, !54, i64 32, !54, i64 32, !54, i64 32, !54, i64 32, !54, i64 32, !54, i64 32}
!82 = !{!"inline_summary", !55, i64 0, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20}
!83 = !{!"cgraph_global_info", !55, i64 0, !55, i64 8, !49, i64 16, !54, i64 24, !54, i64 28, !54, i64 32, !50, i64 36}
!84 = !{!"cgraph_rtl_info", !54, i64 0}
!85 = !{!"cgraph_clone_info", !49, i64 0, !49, i64 8, !49, i64 16}
!86 = !{!"cgraph_thunk_info", !55, i64 0, !55, i64 8, !49, i64 16, !50, i64 24, !50, i64 25, !50, i64 26}
!87 = !{!"branch_weights", i32 240, i32 80}
!88 = !{!89, !50, i64 8}
!89 = !{!"ipa_dfs_info", !54, i64 0, !54, i64 4, !50, i64 8, !50, i64 9, !49, i64 16, !49, i64 24}
!90 = !{!89, !50, i64 9}
!91 = !{!89, !49, i64 16}
!92 = !{!80, !54, i64 296}
!93 = !{!"branch_weights", i32 127, i32 14593}
!94 = distinct !{!94, !65, !66}
!95 = !{!96, !55, i64 8}
!96 = !{!"splay_tree_node_s", !55, i64 0, !55, i64 8, !49, i64 16, !49, i64 24}
!97 = !{!"branch_weights", i32 127, i32 7809}
!98 = distinct !{!98, !65, !66}
!99 = !{!"function_entry_count", i64 320}
!100 = !{!"ipa-utils.c;searchc"}
!101 = !{!89, !54, i64 0}
!102 = !{!89, !54, i64 4}
!103 = !{!"branch_weights", i32 1, i32 319}
!104 = !{!105, !49, i64 16}
!105 = !{!"cgraph_edge", !55, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !54, i64 72, !54, i64 76, !54, i64 80, !54, i64 84, !56, i64 88, !54, i64 90, !54, i64 90, !54, i64 90}
!106 = !{!"branch_weights", i32 207519, i32 69173}
!107 = !{!"VP", i32 0, i64 69173, i64 -64391695709739226, i64 69173}
!108 = !{!"branch_weights", i32 0, i32 69173}
!109 = !{!"branch_weights", i32 49167, i32 158352}
!110 = !{!"branch_weights", i32 158352, i32 0}
!111 = !{!"branch_weights", i32 158280, i32 72}
!112 = !{!"branch_weights", i32 155799, i32 2481}
!113 = !{!"branch_weights", i32 155799, i32 0}
!114 = !{!"branch_weights", i32 319, i32 276373}
!115 = distinct !{!115, !65, !66}
!116 = !{!"branch_weights", i32 320, i32 0}
!117 = !{!"branch_weights", i32 80, i32 240}
!118 = distinct !{!118, !65, !66}
!119 = distinct !{!119, !65, !66}

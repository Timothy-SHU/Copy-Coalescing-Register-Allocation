; ModuleID = 'tree-phinodes.c'
source_filename = "tree-phinodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@free_phinodes = internal global [8 x ptr] zeroinitializer, align 16
@free_phinode_count = internal unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"tree-phinodes.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gt_ggc_rd_gt_tree_phinodes_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @free_phinodes, i64 1, i64 64, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@cfun = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !56 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !57
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !56 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !57
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !56 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !67

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
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

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !56 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !67

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
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
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !56 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !67

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #14
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
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !56 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !57
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !56 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !67

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
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

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !56 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !67

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
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
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !56 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !57
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !67

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #14
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
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !56 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #14
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !56 {
  %2 = load i32, ptr %0, align 8, !tbaa !71
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !56 {
  %2 = load i32, ptr %0, align 8, !tbaa !71
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !56 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !72
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !56 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !72
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !56 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !56 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !56 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !56 {
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
  br i1 %23, label %7, label %24, !llvm.loop !73

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !56 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_phinodes() local_unnamed_addr #9 !prof !76 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @free_phinodes, i8 0, i64 64, i1 false), !tbaa !57
  store i64 0, ptr @free_phinode_count, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @fini_phinodes() local_unnamed_addr #9 !prof !76 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @free_phinodes, i8 0, i64 64, i1 false), !tbaa !57
  store i64 0, ptr @free_phinode_count, align 8, !tbaa !77
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @make_phi_node(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !78 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 2)
  %4 = add nsw i32 %3, -1
  %5 = zext nneg i32 %4 to i64
  %6 = mul nuw nsw i64 %5, 48
  %7 = add nuw nsw i64 %6, 96
  %8 = tail call i32 @ceil_log2(i64 noundef %7) #14
  %9 = shl nuw i32 1, %8
  %10 = sext i32 %9 to i64
  %11 = sub nsw i64 %10, %7
  %12 = udiv i64 %11, 48
  %13 = trunc i64 %12 to i32
  %14 = add i32 %3, %13
  %15 = sext i32 %14 to i64
  %16 = mul nsw i64 %15, 48
  %17 = add nsw i64 %16, 48
  %18 = load i64, ptr @free_phinode_count, align 8, !tbaa !77
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %31, label %20, !prof !79

20:                                               ; preds = %2
  %21 = add nsw i64 %15, -2
  %22 = icmp ult i64 %21, 8
  br i1 %22, label %23, label %31, !prof !80

23:                                               ; preds = %20, %28
  %24 = phi i64 [ %29, %28 ], [ %21, %20 ]
  %25 = getelementptr inbounds [8 x ptr], ptr @free_phinodes, i64 0, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !57
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31, !prof !81

28:                                               ; preds = %23
  %29 = add nuw nsw i64 %24, 1
  %30 = icmp eq i64 %29, 8
  br i1 %30, label %31, label %23, !prof !82, !llvm.loop !83

31:                                               ; preds = %28, %23, %20, %2
  %32 = phi i64 [ 8, %2 ], [ %21, %20 ], [ %24, %23 ], [ 8, %28 ]
  %33 = icmp ult i64 %32, 8
  br i1 %33, label %34, label %52, !prof !84

34:                                               ; preds = %31
  %35 = getelementptr inbounds [8 x ptr], ptr @free_phinodes, i64 0, i64 %32
  %36 = load ptr, ptr %35, align 8, !tbaa !57
  %37 = getelementptr inbounds %struct.VEC_gimple_base, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !57
  %39 = getelementptr inbounds %struct.gimple_statement_phi, ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !68
  %41 = zext i32 %40 to i64
  %42 = icmp ult i64 %41, %15
  br i1 %42, label %52, label %43, !prof !85

43:                                               ; preds = %34
  %44 = add i64 %18, -1
  store i64 %44, ptr @free_phinode_count, align 8, !tbaa !77
  %45 = load i32, ptr %36, align 8, !tbaa !86
  %46 = add i32 %45, -1
  store i32 %46, ptr %36, align 8, !tbaa !86
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.VEC_gimple_base, ptr %36, i64 0, i32 2, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !57
  %50 = icmp eq i32 %46, 0
  br i1 %50, label %51, label %54, !prof !88

51:                                               ; preds = %43
  tail call void @ggc_free(ptr noundef nonnull %36) #14
  store ptr null, ptr %35, align 8, !tbaa !57
  br label %54

52:                                               ; preds = %34, %31
  %53 = tail call ptr @ggc_alloc_stat(i64 noundef %17) #14
  br label %54

54:                                               ; preds = %43, %51, %52
  %55 = phi ptr [ %49, %51 ], [ %49, %43 ], [ %53, %52 ]
  %56 = sext i32 %1 to i64
  %57 = mul nsw i64 %56, 48
  %58 = add nsw i64 %57, 48
  tail call void @llvm.memset.p0.i64(ptr align 8 %55, i8 0, i64 %58, i1 false), !prof !89
  %59 = load i32, ptr %55, align 8
  %60 = and i32 %59, -256
  %61 = or disjoint i32 %60, 16
  store i32 %61, ptr %55, align 8
  %62 = getelementptr inbounds %struct.gimple_statement_phi, ptr %55, i64 0, i32 2
  store i32 %1, ptr %62, align 4, !tbaa !68
  %63 = getelementptr inbounds %struct.gimple_statement_phi, ptr %55, i64 0, i32 1
  store i32 %14, ptr %63, align 8, !tbaa !68
  %64 = load i64, ptr %0, align 8
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 141
  br i1 %66, label %70, label %67, !prof !90

67:                                               ; preds = %54
  %68 = load ptr, ptr @cfun, align 8, !tbaa !57
  %69 = tail call ptr @make_ssa_name_fn(ptr noundef %68, ptr noundef nonnull %0, ptr noundef nonnull %55) #14
  br label %70

70:                                               ; preds = %54, %67
  %71 = phi ptr [ %69, %67 ], [ %0, %54 ]
  %72 = getelementptr inbounds %struct.gimple_statement_phi, ptr %55, i64 0, i32 3
  store ptr %71, ptr %72, align 8, !tbaa !68
  %73 = icmp sgt i32 %14, 0
  br i1 %73, label %74, label %100, !prof !91

74:                                               ; preds = %70
  %75 = zext nneg i32 %14 to i64
  br label %76

76:                                               ; preds = %74, %94
  %77 = phi i64 [ 0, %74 ], [ %98, %94 ]
  %78 = load i32, ptr %63, align 8, !tbaa !68
  %79 = zext i32 %78 to i64
  %80 = icmp ugt i64 %77, %79
  br i1 %80, label %81, label %82, !prof !92

81:                                               ; preds = %76
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.1) #14
  br label %82

82:                                               ; preds = %76, %81
  %83 = getelementptr inbounds %struct.gimple_statement_phi, ptr %55, i64 0, i32 4, i64 %77, i32 2
  store i32 0, ptr %83, align 8, !tbaa !93
  %84 = load i32, ptr %63, align 8, !tbaa !68
  %85 = zext i32 %84 to i64
  %86 = icmp ugt i64 %77, %85
  br i1 %86, label %87, label %88, !prof !92

87:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.1) #14
  br label %88

88:                                               ; preds = %82, %87
  %89 = getelementptr inbounds %struct.gimple_statement_phi, ptr %55, i64 0, i32 4, i64 %77
  %90 = load i32, ptr %63, align 8, !tbaa !68
  %91 = zext i32 %90 to i64
  %92 = icmp ugt i64 %77, %91
  br i1 %92, label %93, label %94, !prof !92

93:                                               ; preds = %88
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.1) #14
  br label %94

94:                                               ; preds = %88, %93
  %95 = getelementptr inbounds %struct.gimple_statement_phi, ptr %55, i64 0, i32 4, i64 %77, i32 1
  %96 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %89, i64 0, i32 3
  store ptr %95, ptr %96, align 8, !tbaa !96
  %97 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %89, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %89, i8 0, i64 16, i1 false)
  store ptr %55, ptr %97, align 8, !tbaa !68
  %98 = add nuw nsw i64 %77, 1
  %99 = icmp eq i64 %98, %75
  br i1 %99, label %100, label %76, !prof !97, !llvm.loop !98

100:                                              ; preds = %94, %70
  ret ptr %55
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @release_phi_node(ptr noundef %0) local_unnamed_addr #10 !prof !56 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !68
  %4 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !68
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %27, label %7, !prof !99

7:                                                ; preds = %1, %22
  %8 = phi i64 [ %23, %22 ], [ 0, %1 ]
  %9 = trunc i64 %8 to i32
  %10 = load i32, ptr %2, align 8, !tbaa !68
  %11 = icmp ult i32 %10, %9
  br i1 %11, label %12, label %13, !prof !100

12:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.1) #14
  br label %13

13:                                               ; preds = %7, %12
  %14 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  %15 = load ptr, ptr %14, align 8, !tbaa !101
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17, !prof !102

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !103
  %20 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %15, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !103
  %21 = load ptr, ptr %18, align 8, !tbaa !103
  store ptr %15, ptr %21, align 8, !tbaa !101
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  br label %22

22:                                               ; preds = %13, %17
  %23 = add nuw nsw i64 %8, 1
  %24 = load i32, ptr %4, align 4, !tbaa !68
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %7, label %27, !prof !104, !llvm.loop !105

27:                                               ; preds = %22, %1
  %28 = tail call i32 @llvm.umin.i32(i32 %3, i32 9)
  %29 = zext nneg i32 %28 to i64
  %30 = add nsw i64 %29, -2
  %31 = getelementptr inbounds [8 x ptr], ptr @free_phinodes, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34, !prof !106

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.VEC_gimple_base, ptr %32, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !107
  %37 = load i32, ptr %32, align 8, !tbaa !86
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41, !prof !108

39:                                               ; preds = %27, %34
  %40 = tail call ptr @vec_gc_p_reserve(ptr noundef %32, i32 noundef 1) #14
  store ptr %40, ptr %31, align 8, !tbaa !57
  br label %41

41:                                               ; preds = %34, %39
  %42 = load ptr, ptr %31, align 8, !tbaa !57
  %43 = load i32, ptr %42, align 8, !tbaa !86
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 8, !tbaa !86
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds %struct.VEC_gimple_base, ptr %42, i64 0, i32 2, i64 %45
  store ptr %0, ptr %46, align 8, !tbaa !57
  %47 = load i64, ptr @free_phinode_count, align 8, !tbaa !77
  %48 = add i64 %47, 1
  store i64 %48, ptr @free_phinode_count, align 8, !tbaa !77
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @reserve_phi_args_for_new_edge(ptr noundef %0) local_unnamed_addr #10 !prof !109 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !110
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !112

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8, !tbaa !113
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %9 = add i32 %8, 4
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 2)
  %11 = add nsw i32 %10, -1
  %12 = zext nneg i32 %11 to i64
  %13 = mul nuw nsw i64 %12, 48
  %14 = add nuw nsw i64 %13, 96
  %15 = tail call i32 @ceil_log2(i64 noundef %14) #14
  %16 = shl nuw i32 1, %15
  %17 = sext i32 %16 to i64
  %18 = sub nsw i64 %17, %14
  %19 = udiv i64 %18, 48
  %20 = trunc i64 %19 to i32
  %21 = add i32 %10, %20
  %22 = sext i32 %21 to i64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %0) #14
  %23 = load ptr, ptr %2, align 8, !tbaa.struct !115
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %243, label %25, !prof !116

25:                                               ; preds = %7
  %26 = add i32 %8, -1
  %27 = zext i32 %26 to i64
  br label %28

28:                                               ; preds = %25, %233
  %29 = phi ptr [ %23, %25 ], [ %241, %233 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  %31 = getelementptr inbounds %struct.gimple_statement_phi, ptr %30, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !68
  %33 = icmp ugt i32 %8, %32
  br i1 %33, label %34, label %218, !prof !117

34:                                               ; preds = %28
  %35 = add nsw i64 %22, -2
  %36 = zext i32 %32 to i64
  %37 = icmp ult i64 %36, %22
  br i1 %37, label %39, label %38, !prof !118

38:                                               ; preds = %34
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 278, ptr noundef nonnull @.str.1) #14
  br label %39

39:                                               ; preds = %38, %34
  %40 = icmp ugt i64 %35, 7
  %41 = load ptr, ptr %29, align 8, !tbaa !57
  %42 = getelementptr inbounds %struct.gimple_statement_phi, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !68
  %44 = add i32 %43, -1
  %45 = zext i32 %44 to i64
  %46 = mul nuw nsw i64 %45, 48
  %47 = add nuw nsw i64 %46, 96
  %48 = load i64, ptr @free_phinode_count, align 8, !tbaa !77
  %49 = icmp eq i64 %48, 0
  %50 = select i1 %49, i1 true, i1 %40
  %51 = select i1 %49, i64 8, i64 %35, !prof !119
  br i1 %50, label %60, label %52, !prof !120

52:                                               ; preds = %39, %57
  %53 = phi i64 [ %58, %57 ], [ %35, %39 ]
  %54 = getelementptr inbounds [8 x ptr], ptr @free_phinodes, i64 0, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !57
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %60, !prof !121

57:                                               ; preds = %52
  %58 = add nsw i64 %53, 1
  %59 = icmp eq i64 %58, 8
  br i1 %59, label %60, label %52, !prof !122, !llvm.loop !83

60:                                               ; preds = %57, %52, %39
  %61 = phi i64 [ %51, %39 ], [ %53, %52 ], [ 8, %57 ]
  %62 = icmp ult i64 %61, 8
  br i1 %62, label %63, label %81, !prof !123

63:                                               ; preds = %60
  %64 = getelementptr inbounds [8 x ptr], ptr @free_phinodes, i64 0, i64 %61
  %65 = load ptr, ptr %64, align 8, !tbaa !57
  %66 = getelementptr inbounds %struct.VEC_gimple_base, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !57
  %68 = getelementptr inbounds %struct.gimple_statement_phi, ptr %67, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !68
  %70 = zext i32 %69 to i64
  %71 = icmp ult i64 %70, %22
  br i1 %71, label %81, label %72, !prof !124

72:                                               ; preds = %63
  %73 = add i64 %48, -1
  store i64 %73, ptr @free_phinode_count, align 8, !tbaa !77
  %74 = load i32, ptr %65, align 8, !tbaa !86
  %75 = add i32 %74, -1
  store i32 %75, ptr %65, align 8, !tbaa !86
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.VEC_gimple_base, ptr %65, i64 0, i32 2, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !57
  %79 = icmp eq i32 %75, 0
  br i1 %79, label %80, label %85, !prof !125

80:                                               ; preds = %72
  call void @ggc_free(ptr noundef nonnull %65) #14
  store ptr null, ptr %64, align 8, !tbaa !57
  br label %85

81:                                               ; preds = %63, %60
  %82 = mul nsw i64 %22, 48
  %83 = add nsw i64 %82, 48
  %84 = call ptr @ggc_alloc_stat(i64 noundef %83) #14
  br label %85

85:                                               ; preds = %81, %80, %72
  %86 = phi ptr [ %78, %80 ], [ %78, %72 ], [ %84, %81 ]
  %87 = load ptr, ptr %29, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %86, ptr noundef nonnull align 8 dereferenceable(1) %87, i64 %47, i1 false), !prof !126
  %88 = getelementptr inbounds %struct.gimple_statement_phi, ptr %86, i64 0, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !68
  %90 = zext i32 %89 to i64
  %91 = icmp eq i32 %89, 0
  br i1 %91, label %141, label %92, !prof !127

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.gimple_statement_phi, ptr %86, i64 0, i32 1
  %94 = icmp eq ptr %86, null
  br label %95

95:                                               ; preds = %92, %135
  %96 = phi i64 [ 0, %92 ], [ %137, %135 ]
  %97 = trunc i64 %96 to i32
  %98 = load i32, ptr %93, align 8, !tbaa !68
  %99 = icmp ult i32 %98, %97
  br i1 %99, label %100, label %101, !prof !128

100:                                              ; preds = %95
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.1) #14
  br label %101

101:                                              ; preds = %100, %95
  %102 = getelementptr inbounds %struct.gimple_statement_phi, ptr %86, i64 0, i32 4, i64 %96
  %103 = load ptr, ptr %29, align 8, !tbaa !57
  %104 = getelementptr inbounds %struct.gimple_statement_phi, ptr %103, i64 0, i32 1
  %105 = load i32, ptr %104, align 8, !tbaa !68
  %106 = icmp ult i32 %105, %97
  br i1 %106, label %107, label %108, !prof !128

107:                                              ; preds = %101
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.1) #14
  br label %108

108:                                              ; preds = %107, %101
  %109 = getelementptr inbounds %struct.gimple_statement_phi, ptr %103, i64 0, i32 4, i64 %96
  %110 = load i32, ptr %93, align 8, !tbaa !68
  %111 = icmp ult i32 %110, %97
  br i1 %111, label %112, label %113, !prof !128

112:                                              ; preds = %108
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.1) #14
  br label %113

113:                                              ; preds = %112, %108
  %114 = getelementptr inbounds %struct.gimple_statement_phi, ptr %86, i64 0, i32 4, i64 %96, i32 1
  %115 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %102, i64 0, i32 3
  store ptr %114, ptr %115, align 8, !tbaa !96
  br i1 %94, label %133, label %116, !prof !128

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %109, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !96
  %119 = load ptr, ptr %118, align 8, !tbaa !57
  %120 = load ptr, ptr %114, align 8, !tbaa !57
  %121 = icmp eq ptr %119, %120
  br i1 %121, label %123, label %122, !prof !129

122:                                              ; preds = %116
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 257, ptr noundef nonnull @.str.1) #14
  br label %123

123:                                              ; preds = %122, %116
  %124 = load ptr, ptr %109, align 8, !tbaa !101
  store ptr %124, ptr %102, align 8, !tbaa !101
  %125 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %109, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !103
  %127 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %102, i64 0, i32 1
  store ptr %126, ptr %127, align 8, !tbaa !103
  %128 = load ptr, ptr %109, align 8, !tbaa !101
  %129 = icmp eq ptr %128, null
  br i1 %129, label %135, label %130, !prof !130

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %128, i64 0, i32 1
  store ptr %102, ptr %131, align 8, !tbaa !103
  %132 = load ptr, ptr %125, align 8, !tbaa !103
  store ptr %102, ptr %132, align 8, !tbaa !101
  br label %133

133:                                              ; preds = %113, %130
  %134 = phi ptr [ %109, %130 ], [ %102, %113 ]
  store ptr null, ptr %134, align 8, !tbaa !101
  br label %135

135:                                              ; preds = %133, %123
  %136 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %102, i64 0, i32 2
  store ptr %86, ptr %136, align 8, !tbaa !68
  %137 = add nuw nsw i64 %96, 1
  %138 = load i32, ptr %88, align 4, !tbaa !68
  %139 = zext i32 %138 to i64
  %140 = icmp ult i64 %137, %139
  br i1 %140, label %95, label %141, !prof !131, !llvm.loop !132

141:                                              ; preds = %135, %85
  %142 = phi i64 [ %90, %85 ], [ %139, %135 ]
  %143 = getelementptr inbounds %struct.gimple_statement_phi, ptr %86, i64 0, i32 1
  store i32 %21, ptr %143, align 8, !tbaa !68
  %144 = icmp ult i64 %142, %22
  br i1 %144, label %145, label %168, !prof !133

145:                                              ; preds = %141, %162
  %146 = phi i64 [ %166, %162 ], [ %142, %141 ]
  %147 = trunc i64 %146 to i32
  %148 = load i32, ptr %143, align 8, !tbaa !68
  %149 = icmp ult i32 %148, %147
  br i1 %149, label %150, label %151, !prof !134

150:                                              ; preds = %145
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.1) #14
  br label %151

151:                                              ; preds = %150, %145
  %152 = and i64 %146, 4294967295
  %153 = getelementptr inbounds %struct.gimple_statement_phi, ptr %86, i64 0, i32 4, i64 %152, i32 2
  store i32 0, ptr %153, align 8, !tbaa !93
  %154 = load i32, ptr %143, align 8, !tbaa !68
  %155 = icmp ult i32 %154, %147
  br i1 %155, label %156, label %157, !prof !134

156:                                              ; preds = %151
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.1) #14
  br label %157

157:                                              ; preds = %156, %151
  %158 = getelementptr inbounds %struct.gimple_statement_phi, ptr %86, i64 0, i32 4, i64 %152
  %159 = load i32, ptr %143, align 8, !tbaa !68
  %160 = icmp ult i32 %159, %147
  br i1 %160, label %161, label %162, !prof !134

161:                                              ; preds = %157
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.1) #14
  br label %162

162:                                              ; preds = %161, %157
  %163 = getelementptr inbounds %struct.gimple_statement_phi, ptr %86, i64 0, i32 4, i64 %152, i32 1
  %164 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %158, i64 0, i32 3
  store ptr %163, ptr %164, align 8, !tbaa !96
  %165 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %158, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %158, i8 0, i64 16, i1 false)
  store ptr %86, ptr %165, align 8, !tbaa !68
  %166 = add i64 %146, 1
  %167 = icmp eq i64 %166, %22
  br i1 %167, label %168, label %145, !prof !135, !llvm.loop !136

168:                                              ; preds = %162, %141
  store ptr %86, ptr %29, align 8, !tbaa !57
  %169 = getelementptr inbounds %struct.gimple_statement_phi, ptr %86, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !68
  %171 = getelementptr inbounds %struct.tree_ssa_name, ptr %170, i64 0, i32 2
  store ptr %86, ptr %171, align 8, !tbaa !68
  %172 = load i32, ptr %31, align 8, !tbaa !68
  %173 = getelementptr inbounds %struct.gimple_statement_phi, ptr %30, i64 0, i32 2
  %174 = load i32, ptr %173, align 4, !tbaa !68
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %196, label %176, !prof !99

176:                                              ; preds = %168, %191
  %177 = phi i64 [ %192, %191 ], [ 0, %168 ]
  %178 = trunc i64 %177 to i32
  %179 = load i32, ptr %31, align 8, !tbaa !68
  %180 = icmp ult i32 %179, %178
  br i1 %180, label %181, label %182, !prof !100

181:                                              ; preds = %176
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.1) #14
  br label %182

182:                                              ; preds = %181, %176
  %183 = getelementptr inbounds %struct.gimple_statement_phi, ptr %30, i64 0, i32 4, i64 %177
  %184 = load ptr, ptr %183, align 8, !tbaa !101
  %185 = icmp eq ptr %184, null
  br i1 %185, label %191, label %186, !prof !102

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %183, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !103
  %189 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %184, i64 0, i32 1
  store ptr %188, ptr %189, align 8, !tbaa !103
  %190 = load ptr, ptr %187, align 8, !tbaa !103
  store ptr %184, ptr %190, align 8, !tbaa !101
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %183, i8 0, i64 16, i1 false)
  br label %191

191:                                              ; preds = %186, %182
  %192 = add nuw nsw i64 %177, 1
  %193 = load i32, ptr %173, align 4, !tbaa !68
  %194 = zext i32 %193 to i64
  %195 = icmp ult i64 %192, %194
  br i1 %195, label %176, label %196, !prof !104, !llvm.loop !105

196:                                              ; preds = %191, %168
  %197 = call i32 @llvm.umin.i32(i32 %172, i32 9)
  %198 = zext nneg i32 %197 to i64
  %199 = add nsw i64 %198, -2
  %200 = getelementptr inbounds [8 x ptr], ptr @free_phinodes, i64 0, i64 %199
  %201 = load ptr, ptr %200, align 8, !tbaa !57
  %202 = icmp eq ptr %201, null
  br i1 %202, label %208, label %203, !prof !106

203:                                              ; preds = %196
  %204 = getelementptr inbounds %struct.VEC_gimple_base, ptr %201, i64 0, i32 1
  %205 = load i32, ptr %204, align 4, !tbaa !107
  %206 = load i32, ptr %201, align 8, !tbaa !86
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %210, !prof !108

208:                                              ; preds = %203, %196
  %209 = call ptr @vec_gc_p_reserve(ptr noundef %201, i32 noundef 1) #14
  store ptr %209, ptr %200, align 8, !tbaa !57
  br label %210

210:                                              ; preds = %203, %208
  %211 = load ptr, ptr %200, align 8, !tbaa !57
  %212 = load i32, ptr %211, align 8, !tbaa !86
  %213 = add i32 %212, 1
  store i32 %213, ptr %211, align 8, !tbaa !86
  %214 = zext i32 %212 to i64
  %215 = getelementptr inbounds %struct.VEC_gimple_base, ptr %211, i64 0, i32 2, i64 %214
  store ptr %30, ptr %215, align 8, !tbaa !57
  %216 = load i64, ptr @free_phinode_count, align 8, !tbaa !77
  %217 = add i64 %216, 1
  store i64 %217, ptr @free_phinode_count, align 8, !tbaa !77
  br label %218

218:                                              ; preds = %210, %28
  %219 = load ptr, ptr %29, align 8, !tbaa !57
  %220 = getelementptr inbounds %struct.gimple_statement_phi, ptr %219, i64 0, i32 1
  %221 = load i32, ptr %220, align 8, !tbaa !68
  %222 = icmp ult i32 %221, %26
  br i1 %222, label %223, label %224, !prof !137

223:                                              ; preds = %218
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.1) #14
  br label %224

224:                                              ; preds = %218, %223
  %225 = getelementptr inbounds %struct.gimple_statement_phi, ptr %219, i64 0, i32 4, i64 %27
  %226 = load ptr, ptr %225, align 8, !tbaa !101
  %227 = icmp eq ptr %226, null
  br i1 %227, label %233, label %228, !prof !138

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %225, i64 0, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !103
  %231 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %226, i64 0, i32 1
  store ptr %230, ptr %231, align 8, !tbaa !103
  %232 = load ptr, ptr %229, align 8, !tbaa !103
  store ptr %226, ptr %232, align 8, !tbaa !101
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %225, i8 0, i64 16, i1 false)
  br label %233

233:                                              ; preds = %224, %228
  %234 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %225, i64 0, i32 3
  %235 = load ptr, ptr %234, align 8, !tbaa !96
  store ptr null, ptr %235, align 8, !tbaa !57
  store ptr null, ptr %225, align 8, !tbaa !101
  %236 = load ptr, ptr %29, align 8, !tbaa !57
  %237 = getelementptr inbounds %struct.gimple_statement_phi, ptr %236, i64 0, i32 2
  %238 = load i32, ptr %237, align 4, !tbaa !68
  %239 = add i32 %238, 1
  store i32 %239, ptr %237, align 4, !tbaa !68
  %240 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %29, i64 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !139
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %28, !prof !141, !llvm.loop !142

243:                                              ; preds = %233, %7
  ret void
}

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @add_phi_node_to_bb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !56 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = and i32 %5, 512
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !144

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 510, ptr noundef nonnull @.str.1) #14
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13, !prof !145

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gimple_bb_info, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !146
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %36, !prof !148

17:                                               ; preds = %9, %13
  %18 = tail call ptr @gimple_seq_alloc() #14
  %19 = load i32, ptr %4, align 8, !tbaa !143
  %20 = and i32 %19, 512
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22, !prof !149

22:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 523, ptr noundef nonnull @.str.1) #14
  br label %23

23:                                               ; preds = %22, %17
  %24 = load ptr, ptr %10, align 8, !tbaa !68
  %25 = getelementptr inbounds %struct.gimple_bb_info, ptr %24, i64 0, i32 1
  store ptr %18, ptr %25, align 8, !tbaa !146
  %26 = icmp eq ptr %18, null
  br i1 %26, label %36, label %27, !prof !150

27:                                               ; preds = %23
  %28 = load ptr, ptr %18, align 8, !tbaa !57
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30, !prof !80

30:                                               ; preds = %27, %30
  %31 = phi ptr [ %34, %30 ], [ %28, %27 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !151
  tail call void @gimple_set_bb(ptr noundef %32, ptr noundef %1) #14
  %33 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %31, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !57
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %30, !prof !80, !llvm.loop !152

36:                                               ; preds = %30, %27, %23, %13
  %37 = load i32, ptr %4, align 8, !tbaa !143
  %38 = and i32 %37, 512
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40, !prof !144

40:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 510, ptr noundef nonnull @.str.1) #14
  br label %41

41:                                               ; preds = %40, %36
  %42 = load ptr, ptr %10, align 8, !tbaa !68
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44, !prof !145

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.gimple_bb_info, ptr %42, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !146
  br label %47

47:                                               ; preds = %41, %44
  %48 = phi ptr [ %46, %44 ], [ null, %41 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50, !prof !145

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.gimple_seq_d, ptr %48, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !153, !noalias !155
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi ptr [ %52, %50 ], [ null, %47 ]
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56, !prof !158

56:                                               ; preds = %53
  %57 = load ptr, ptr %54, align 8, !tbaa !151, !noalias !155
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59, !prof !159

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.gimple_statement_base, ptr %57, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !68, !noalias !155
  br label %62

62:                                               ; preds = %53, %56, %59
  %63 = phi ptr [ %61, %59 ], [ null, %56 ], [ null, %53 ]
  store ptr %54, ptr %3, align 8, !tbaa.struct !115
  %64 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %48, ptr %64, align 8, !tbaa.struct !160
  %65 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr %63, ptr %65, align 8, !tbaa.struct !161
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0) #14
  call void @gimple_set_bb(ptr noundef %0, ptr noundef %1) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret void
}

declare ptr @gimple_seq_alloc() local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gimple_set_bb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @create_phi_node(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !78 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !110
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !162

6:                                                ; preds = %2
  %7 = load i32, ptr %4, align 8, !tbaa !113
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ %7, %6 ], [ 0, %2 ]
  %10 = tail call ptr @make_phi_node(ptr noundef %0, i32 noundef %9)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %12 = load i32, ptr %11, align 8, !tbaa !143
  %13 = and i32 %12, 512
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15, !prof !144

15:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 510, ptr noundef nonnull @.str.1) #14
  br label %16

16:                                               ; preds = %15, %8
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20, !prof !145

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.gimple_bb_info, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !146
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %43, !prof !148

24:                                               ; preds = %20, %16
  %25 = tail call ptr @gimple_seq_alloc() #14
  %26 = load i32, ptr %11, align 8, !tbaa !143
  %27 = and i32 %26, 512
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29, !prof !149

29:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 523, ptr noundef nonnull @.str.1) #14
  br label %30

30:                                               ; preds = %29, %24
  %31 = load ptr, ptr %17, align 8, !tbaa !68
  %32 = getelementptr inbounds %struct.gimple_bb_info, ptr %31, i64 0, i32 1
  store ptr %25, ptr %32, align 8, !tbaa !146
  %33 = icmp eq ptr %25, null
  br i1 %33, label %43, label %34, !prof !150

34:                                               ; preds = %30
  %35 = load ptr, ptr %25, align 8, !tbaa !57
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37, !prof !80

37:                                               ; preds = %34, %37
  %38 = phi ptr [ %41, %37 ], [ %35, %34 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !151
  tail call void @gimple_set_bb(ptr noundef %39, ptr noundef nonnull %1) #14
  %40 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %38, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !57
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %37, !prof !80, !llvm.loop !152

43:                                               ; preds = %37, %34, %30, %20
  %44 = load i32, ptr %11, align 8, !tbaa !143
  %45 = and i32 %44, 512
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47, !prof !144

47:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 510, ptr noundef nonnull @.str.1) #14
  br label %48

48:                                               ; preds = %47, %43
  %49 = load ptr, ptr %17, align 8, !tbaa !68
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51, !prof !145

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.gimple_bb_info, ptr %49, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !146
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi ptr [ %53, %51 ], [ null, %48 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57, !prof !145

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.gimple_seq_d, ptr %55, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !153, !noalias !163
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi ptr [ %59, %57 ], [ null, %54 ]
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63, !prof !158

63:                                               ; preds = %60
  %64 = load ptr, ptr %61, align 8, !tbaa !151, !noalias !163
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66, !prof !159

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.gimple_statement_base, ptr %64, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !68, !noalias !163
  br label %69

69:                                               ; preds = %60, %63, %66
  %70 = phi ptr [ %68, %66 ], [ null, %63 ], [ null, %60 ]
  store ptr %61, ptr %3, align 8, !tbaa.struct !115
  %71 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %55, ptr %71, align 8, !tbaa.struct !160
  %72 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr %70, ptr %72, align 8, !tbaa.struct !161
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %10, i32 noundef 0) #14
  call void @gimple_set_bb(ptr noundef %10, ptr noundef nonnull %1) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret ptr %10
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @add_phi_arg(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #10 !prof !166 {
  %5 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !167
  %7 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %11, label %10, !prof !169

10:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 395, ptr noundef nonnull @.str.1) #14
  br label %11

11:                                               ; preds = %4, %10
  %12 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !68
  %14 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = icmp ugt i32 %13, %15
  br i1 %16, label %17, label %18, !prof !170

17:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 399, ptr noundef nonnull @.str.1) #14
  br label %18

18:                                               ; preds = %11, %17
  %19 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !171
  %21 = load i32, ptr %12, align 4, !tbaa !68
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %24, label %23, !prof !169

23:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 403, ptr noundef nonnull @.str.1) #14
  br label %24

24:                                               ; preds = %18, %23
  %25 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !172
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29, !prof !169

29:                                               ; preds = %24
  %30 = load i64, ptr %1, align 8
  %31 = or i64 %30, 4194304
  store i64 %31, ptr %1, align 8
  %32 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !57
  %34 = load i64, ptr %33, align 8
  %35 = or i64 %34, 4194304
  store i64 %35, ptr %33, align 8
  br label %36

36:                                               ; preds = %29, %24
  %37 = load i32, ptr %19, align 4, !tbaa !171
  %38 = load i32, ptr %14, align 8, !tbaa !68
  %39 = icmp ult i32 %38, %37
  br i1 %39, label %40, label %41, !prof !170

40:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.1) #14
  br label %41

41:                                               ; preds = %36, %40
  %42 = zext i32 %37 to i64
  %43 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !101
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !169

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %43, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !103
  %49 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %44, i64 0, i32 1
  store ptr %48, ptr %49, align 8, !tbaa !103
  %50 = load ptr, ptr %47, align 8, !tbaa !103
  store ptr %44, ptr %50, align 8, !tbaa !101
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  br label %51

51:                                               ; preds = %46, %41
  %52 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %43, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !96
  store ptr %1, ptr %53, align 8, !tbaa !57
  %54 = icmp eq ptr %1, null
  br i1 %54, label %59, label %55, !prof !170

55:                                               ; preds = %51
  %56 = load i64, ptr %1, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 141
  br i1 %58, label %60, label %59, !prof !173

59:                                               ; preds = %55, %51
  store ptr null, ptr %43, align 8, !tbaa !101
  br label %66

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  store ptr %61, ptr %43, align 8, !tbaa !101
  %62 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !103
  %64 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %43, i64 0, i32 1
  store ptr %63, ptr %64, align 8, !tbaa !103
  %65 = load ptr, ptr %62, align 8, !tbaa !103
  store ptr %43, ptr %65, align 8, !tbaa !101
  store ptr %43, ptr %62, align 8, !tbaa !103
  br label %66

66:                                               ; preds = %59, %60
  %67 = load i32, ptr %19, align 4, !tbaa !171
  %68 = load i32, ptr %14, align 8, !tbaa !68
  %69 = icmp ult i32 %68, %67
  br i1 %69, label %70, label %71, !prof !170

70:                                               ; preds = %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.1) #14
  br label %71

71:                                               ; preds = %66, %70
  %72 = zext i32 %67 to i64
  %73 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %72, i32 2
  store i32 %3, ptr %73, align 8, !tbaa !93
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @remove_phi_args(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !174 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !167
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %4) #14
  %5 = load ptr, ptr %2, align 8, !tbaa.struct !115
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %85, label %7, !prof !175

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 6
  br label %9

9:                                                ; preds = %7, %79
  %10 = phi ptr [ %5, %7 ], [ %83, %79 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !151
  %12 = load i32, ptr %8, align 4, !tbaa !171
  %13 = getelementptr inbounds %struct.gimple_statement_phi, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !68
  %15 = icmp sgt i32 %14, %12
  br i1 %15, label %17, label %16, !prof !176

16:                                               ; preds = %9
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 428, ptr noundef nonnull @.str.1) #14
  br label %17

17:                                               ; preds = %16, %9
  %18 = getelementptr inbounds %struct.gimple_statement_phi, ptr %11, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !68
  %20 = icmp ult i32 %19, %12
  br i1 %20, label %21, label %22, !prof !177

21:                                               ; preds = %17
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.1) #14
  br label %22

22:                                               ; preds = %21, %17
  %23 = zext i32 %12 to i64
  %24 = getelementptr inbounds %struct.gimple_statement_phi, ptr %11, i64 0, i32 4, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !101
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27, !prof !178

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %24, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !103
  %30 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %25, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !103
  %31 = load ptr, ptr %28, align 8, !tbaa !103
  store ptr %25, ptr %31, align 8, !tbaa !101
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  br label %32

32:                                               ; preds = %27, %22
  %33 = add nsw i32 %14, -1
  %34 = icmp eq i32 %33, %12
  br i1 %34, label %79, label %35, !prof !179

35:                                               ; preds = %32
  %36 = load i32, ptr %18, align 8, !tbaa !68
  %37 = icmp ult i32 %36, %33
  br i1 %37, label %38, label %39, !prof !180

38:                                               ; preds = %35
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.1) #14
  br label %39

39:                                               ; preds = %38, %35
  %40 = zext i32 %33 to i64
  %41 = getelementptr inbounds %struct.gimple_statement_phi, ptr %11, i64 0, i32 4, i64 %40
  %42 = load i32, ptr %18, align 8, !tbaa !68
  %43 = icmp ult i32 %42, %12
  br i1 %43, label %44, label %45, !prof !180

44:                                               ; preds = %39
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.1) #14
  br label %45

45:                                               ; preds = %44, %39
  %46 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %41, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !96
  %48 = load ptr, ptr %47, align 8, !tbaa !57
  %49 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %24, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !96
  store ptr %48, ptr %50, align 8, !tbaa !57
  %51 = load ptr, ptr %46, align 8, !tbaa !96
  %52 = load ptr, ptr %51, align 8, !tbaa !57
  %53 = load ptr, ptr %49, align 8, !tbaa !96
  %54 = load ptr, ptr %53, align 8, !tbaa !57
  %55 = icmp eq ptr %52, %54
  br i1 %55, label %57, label %56, !prof !181

56:                                               ; preds = %45
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 257, ptr noundef nonnull @.str.1) #14
  br label %57

57:                                               ; preds = %56, %45
  %58 = load ptr, ptr %41, align 8, !tbaa !101
  store ptr %58, ptr %24, align 8, !tbaa !101
  %59 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %41, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !103
  %61 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %24, i64 0, i32 1
  store ptr %60, ptr %61, align 8, !tbaa !103
  %62 = load ptr, ptr %41, align 8, !tbaa !101
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64, !prof !182

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %62, i64 0, i32 1
  store ptr %24, ptr %65, align 8, !tbaa !103
  %66 = load ptr, ptr %59, align 8, !tbaa !103
  store ptr %24, ptr %66, align 8, !tbaa !101
  store ptr null, ptr %41, align 8, !tbaa !101
  br label %67

67:                                               ; preds = %64, %57
  %68 = load i32, ptr %18, align 8, !tbaa !68
  %69 = icmp ult i32 %68, %33
  br i1 %69, label %70, label %71, !prof !180

70:                                               ; preds = %67
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.1) #14
  br label %71

71:                                               ; preds = %70, %67
  %72 = getelementptr inbounds %struct.gimple_statement_phi, ptr %11, i64 0, i32 4, i64 %40, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !93
  %74 = load i32, ptr %18, align 8, !tbaa !68
  %75 = icmp ult i32 %74, %12
  br i1 %75, label %76, label %77, !prof !180

76:                                               ; preds = %71
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.1) #14
  br label %77

77:                                               ; preds = %76, %71
  %78 = getelementptr inbounds %struct.gimple_statement_phi, ptr %11, i64 0, i32 4, i64 %23, i32 2
  store i32 %73, ptr %78, align 8, !tbaa !93
  br label %79

79:                                               ; preds = %32, %77
  %80 = load i32, ptr %13, align 4, !tbaa !68
  %81 = add i32 %80, -1
  store i32 %81, ptr %13, align 4, !tbaa !68
  %82 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %10, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !139
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %9, !prof !183, !llvm.loop !184

85:                                               ; preds = %79, %1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @remove_phi_node(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #10 !prof !185 {
  %3 = load ptr, ptr %0, align 1
  %4 = load ptr, ptr %3, align 8, !tbaa !151
  %5 = icmp eq i8 %1, 0
  br i1 %5, label %56, label %6, !prof !186

6:                                                ; preds = %2
  tail call void @insert_debug_temps_for_defs(ptr noundef nonnull %0) #14
  tail call void @gsi_remove(ptr noundef nonnull %0, i8 noundef zeroext 0) #14
  %7 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !68
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !68
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %32, label %12, !prof !99

12:                                               ; preds = %6, %27
  %13 = phi i64 [ %28, %27 ], [ 0, %6 ]
  %14 = trunc i64 %13 to i32
  %15 = load i32, ptr %7, align 8, !tbaa !68
  %16 = icmp ult i32 %15, %14
  br i1 %16, label %17, label %18, !prof !100

17:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.1) #14
  br label %18

18:                                               ; preds = %17, %12
  %19 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 4, i64 %13
  %20 = load ptr, ptr %19, align 8, !tbaa !101
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22, !prof !102

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %19, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !103
  %25 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %20, i64 0, i32 1
  store ptr %24, ptr %25, align 8, !tbaa !103
  %26 = load ptr, ptr %23, align 8, !tbaa !103
  store ptr %20, ptr %26, align 8, !tbaa !101
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  br label %27

27:                                               ; preds = %22, %18
  %28 = add nuw nsw i64 %13, 1
  %29 = load i32, ptr %9, align 4, !tbaa !68
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %12, label %32, !prof !104, !llvm.loop !105

32:                                               ; preds = %27, %6
  %33 = tail call i32 @llvm.umin.i32(i32 %8, i32 9)
  %34 = zext nneg i32 %33 to i64
  %35 = add nsw i64 %34, -2
  %36 = getelementptr inbounds [8 x ptr], ptr @free_phinodes, i64 0, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !57
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39, !prof !106

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.VEC_gimple_base, ptr %37, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !107
  %42 = load i32, ptr %37, align 8, !tbaa !86
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46, !prof !108

44:                                               ; preds = %39, %32
  %45 = tail call ptr @vec_gc_p_reserve(ptr noundef %37, i32 noundef 1) #14
  store ptr %45, ptr %36, align 8, !tbaa !57
  br label %46

46:                                               ; preds = %39, %44
  %47 = load ptr, ptr %36, align 8, !tbaa !57
  %48 = load i32, ptr %47, align 8, !tbaa !86
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 8, !tbaa !86
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds %struct.VEC_gimple_base, ptr %47, i64 0, i32 2, i64 %50
  store ptr %4, ptr %51, align 8, !tbaa !57
  %52 = load i64, ptr @free_phinode_count, align 8, !tbaa !77
  %53 = add i64 %52, 1
  store i64 %53, ptr @free_phinode_count, align 8, !tbaa !77
  %54 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !68
  tail call void @release_ssa_name(ptr noundef %55) #14
  br label %57

56:                                               ; preds = %2
  tail call void @gsi_remove(ptr noundef nonnull %0, i8 noundef zeroext 0) #14
  tail call void @release_phi_node(ptr noundef %4)
  br label %57

57:                                               ; preds = %56, %46
  ret void
}

declare void @insert_debug_temps_for_defs(ptr noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @release_ssa_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @remove_phi_nodes(ptr noundef %0) local_unnamed_addr #10 !prof !187 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #14
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !188

5:                                                ; preds = %1, %5
  call void @remove_phi_node(ptr noundef nonnull %2, i8 noundef zeroext 1)
  %6 = load ptr, ptr %2, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %5, !prof !189, !llvm.loop !190

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %10 = load i32, ptr %9, align 8, !tbaa !143
  %11 = and i32 %10, 512
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !191

13:                                               ; preds = %8
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 523, ptr noundef nonnull @.str.1) #14
  br label %14

14:                                               ; preds = %8, %13
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  %17 = getelementptr inbounds %struct.gimple_bb_info, ptr %16, i64 0, i32 1
  store ptr null, ptr %17, align 8, !tbaa !146
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  ret void
}

declare i32 @ceil_log2(i64 noundef) local_unnamed_addr #3

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

declare void @ggc_free(ptr noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!55}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!35 = !{ptr @make_phi_node, ptr @ceil_log2, i64 93995}
!36 = !{ptr @make_phi_node, ptr @ggc_free, i64 2471}
!37 = !{ptr @make_phi_node, ptr @ggc_alloc_stat, i64 74652}
!38 = !{ptr @make_phi_node, ptr @make_ssa_name_fn, i64 41202}
!39 = !{ptr @reserve_phi_args_for_new_edge, ptr @ceil_log2, i64 542486}
!40 = !{ptr @reserve_phi_args_for_new_edge, ptr @gsi_start_phis, i64 542486}
!41 = !{ptr @reserve_phi_args_for_new_edge, ptr @ggc_free, i64 44}
!42 = !{ptr @reserve_phi_args_for_new_edge, ptr @ggc_alloc_stat, i64 6632}
!43 = !{ptr @reserve_phi_args_for_new_edge, ptr @vec_gc_p_reserve, i64 214}
!44 = !{ptr @create_phi_node, ptr @make_phi_node, i64 93995}
!45 = !{ptr @create_phi_node, ptr @gimple_seq_alloc, i64 87539}
!46 = !{ptr @create_phi_node, ptr @gsi_insert_after, i64 93995}
!47 = !{ptr @create_phi_node, ptr @gimple_set_bb, i64 93995}
!48 = !{ptr @remove_phi_args, ptr @gsi_start_phis, i64 493970}
!49 = !{ptr @remove_phi_node, ptr @insert_debug_temps_for_defs, i64 91706}
!50 = !{ptr @remove_phi_node, ptr @gsi_remove, i64 91706}
!51 = !{ptr @remove_phi_node, ptr @vec_gc_p_reserve, i64 2763}
!52 = !{ptr @remove_phi_node, ptr @release_ssa_name, i64 91706}
!53 = !{ptr @remove_phi_nodes, ptr @gsi_start_phis, i64 267984}
!54 = !{ptr @remove_phi_nodes, ptr @remove_phi_node, i64 59}
!55 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!56 = !{!"function_entry_count", i64 0}
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
!72 = !{!63, !63, i64 0}
!73 = distinct !{!73, !74, !75}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = !{!"function_entry_count", i64 41}
!77 = !{!64, !64, i64 0}
!78 = !{!"function_entry_count", i64 93995}
!79 = !{!"branch_weights", i32 74652, i32 19343}
!80 = !{!"branch_weights", i32 1, i32 0}
!81 = !{!"branch_weights", i32 290, i32 19343}
!82 = !{!"branch_weights", i32 0, i32 19633}
!83 = distinct !{!83, !74, !75}
!84 = !{!"branch_weights", i32 19343, i32 74652}
!85 = !{!"branch_weights", i32 0, i32 19343}
!86 = !{!87, !63, i64 0}
!87 = !{!"VEC_gimple_base", !63, i64 0, !63, i64 4, !59, i64 8}
!88 = !{!"branch_weights", i32 2471, i32 16872}
!89 = !{!"VP", i32 1, i64 93995, i64 129, i64 54667, i64 33, i64 37798, i64 257, i64 1493, i64 513, i64 37}
!90 = !{!"branch_weights", i32 52793, i32 41202}
!91 = !{!"branch_weights", i32 93994, i32 1}
!92 = !{!"branch_weights", i32 0, i32 440993}
!93 = !{!94, !63, i64 40}
!94 = !{!"phi_arg_d", !95, i64 0, !58, i64 32, !63, i64 40}
!95 = !{!"ssa_use_operand_d", !58, i64 0, !58, i64 8, !59, i64 16, !58, i64 24}
!96 = !{!95, !58, i64 24}
!97 = !{!"branch_weights", i32 93994, i32 346999}
!98 = distinct !{!98, !74, !75}
!99 = !{!"branch_weights", i32 1, i32 98817}
!100 = !{!"branch_weights", i32 0, i32 218561}
!101 = !{!95, !58, i64 0}
!102 = !{!"branch_weights", i32 100592, i32 117969}
!103 = !{!95, !58, i64 8}
!104 = !{!"branch_weights", i32 119744, i32 98817}
!105 = distinct !{!105, !74, !75}
!106 = !{!"branch_weights", i32 2582, i32 96236}
!107 = !{!87, !63, i64 4}
!108 = !{!"branch_weights", i32 395, i32 95841}
!109 = !{!"function_entry_count", i64 542486}
!110 = !{!111, !58, i64 0}
!111 = !{!"basic_block_def", !58, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !59, i64 32, !58, i64 48, !58, i64 56, !59, i64 64, !64, i64 72, !63, i64 80, !63, i64 84, !63, i64 88, !63, i64 92, !63, i64 96}
!112 = !{!"branch_weights", i32 0, i32 542486}
!113 = !{!114, !63, i64 0}
!114 = !{!"VEC_edge_base", !63, i64 0, !63, i64 4, !59, i64 8}
!115 = !{i64 0, i64 8, !57, i64 8, i64 8, !57, i64 16, i64 8, !57}
!116 = !{!"branch_weights", i32 1, i32 542485}
!117 = !{!"branch_weights", i32 7112, i32 555478}
!118 = !{!"branch_weights", i32 7112, i32 0}
!119 = !{!"branch_weights", i32 10281831, i32 4641}
!120 = !{!"branch_weights", i32 10286472, i32 19306560}
!121 = !{!"branch_weights", i32 4100, i32 480}
!122 = !{!"branch_weights", i32 4160, i32 420}
!123 = !{!"branch_weights", i32 480, i32 6632}
!124 = !{!"branch_weights", i32 0, i32 480}
!125 = !{!"branch_weights", i32 44, i32 436}
!126 = !{!"VP", i32 1, i64 7112, i64 129, i64 6985, i64 257, i64 115, i64 513, i64 12}
!127 = !{!"branch_weights", i32 1, i32 7111}
!128 = !{!"branch_weights", i32 0, i32 51870}
!129 = !{!"branch_weights", i32 51870, i32 0}
!130 = !{!"branch_weights", i32 22866, i32 29004}
!131 = !{!"branch_weights", i32 44759, i32 7111}
!132 = distinct !{!132, !74, !75}
!133 = !{!"branch_weights", i32 7111, i32 1}
!134 = !{!"branch_weights", i32 0, i32 59100}
!135 = !{!"branch_weights", i32 7111, i32 51989}
!136 = distinct !{!136, !74, !75}
!137 = !{!"branch_weights", i32 0, i32 562590}
!138 = !{!"branch_weights", i32 562590, i32 0}
!139 = !{!140, !58, i64 16}
!140 = !{!"gimple_seq_node_d", !58, i64 0, !58, i64 8, !58, i64 16}
!141 = !{!"branch_weights", i32 542485, i32 20105}
!142 = distinct !{!142, !74, !75}
!143 = !{!111, !63, i64 96}
!144 = !{!"branch_weights", i32 93995, i32 0}
!145 = !{!"branch_weights", i32 0, i32 93995}
!146 = !{!147, !58, i64 8}
!147 = !{!"gimple_bb_info", !58, i64 0, !58, i64 8}
!148 = !{!"branch_weights", i32 87539, i32 6456}
!149 = !{!"branch_weights", i32 87539, i32 0}
!150 = !{!"branch_weights", i32 0, i32 87539}
!151 = !{!140, !58, i64 0}
!152 = distinct !{!152, !74, !75}
!153 = !{!154, !58, i64 8}
!154 = !{!"gimple_seq_d", !58, i64 0, !58, i64 8, !58, i64 16}
!155 = !{!156}
!156 = distinct !{!156, !157, !"gsi_last: argument 0"}
!157 = distinct !{!157, !"gsi_last"}
!158 = !{!"branch_weights", i32 87660, i32 6335}
!159 = !{!"branch_weights", i32 0, i32 6335}
!160 = !{i64 0, i64 8, !57, i64 8, i64 8, !57}
!161 = !{i64 0, i64 8, !57}
!162 = !{!"branch_weights", i32 37798, i32 56197}
!163 = !{!164}
!164 = distinct !{!164, !165, !"gsi_last: argument 0"}
!165 = distinct !{!165, !"gsi_last"}
!166 = !{!"function_entry_count", i64 606901}
!167 = !{!168, !58, i64 8}
!168 = !{!"edge_def", !58, i64 0, !58, i64 8, !59, i64 16, !58, i64 24, !58, i64 32, !63, i64 40, !63, i64 44, !63, i64 48, !63, i64 52, !64, i64 56}
!169 = !{!"branch_weights", i32 606901, i32 0}
!170 = !{!"branch_weights", i32 0, i32 606901}
!171 = !{!168, !63, i64 44}
!172 = !{!168, !63, i64 48}
!173 = !{!"branch_weights", i32 419062, i32 187839}
!174 = !{!"function_entry_count", i64 493970}
!175 = !{!"branch_weights", i32 1, i32 493969}
!176 = !{!"branch_weights", i32 513607, i32 0}
!177 = !{!"branch_weights", i32 0, i32 513607}
!178 = !{!"branch_weights", i32 196871, i32 316736}
!179 = !{!"branch_weights", i32 51755, i32 461852}
!180 = !{!"branch_weights", i32 0, i32 461852}
!181 = !{!"branch_weights", i32 461852, i32 0}
!182 = !{!"branch_weights", i32 284238, i32 177614}
!183 = !{!"branch_weights", i32 493969, i32 19638}
!184 = distinct !{!184, !74, !75}
!185 = !{!"function_entry_count", i64 91706}
!186 = !{!"branch_weights", i32 0, i32 91706}
!187 = !{!"function_entry_count", i64 267984}
!188 = !{!"branch_weights", i32 267925, i32 59}
!189 = !{!"branch_weights", i32 59, i32 0}
!190 = distinct !{!190, !74, !75}
!191 = !{!"branch_weights", i32 267984, i32 0}

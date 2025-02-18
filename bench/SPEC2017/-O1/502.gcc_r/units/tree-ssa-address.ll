; ModuleID = 'tree-ssa-address.c'
source_filename = "tree-ssa-address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.mem_address = type { ptr, ptr, ptr, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.double_int = type { i64, i64 }
%struct.VEC_mem_addr_template_base = type { i32, i32, [1 x %struct.mem_addr_template] }
%struct.mem_addr_template = type { ptr, ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.affine_tree_combination = type { ptr, %struct.double_int, i32, [8 x %struct.aff_comb_elt], ptr }
%struct.aff_comb_elt = type { ptr, %struct.double_int }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@mem_addr_template_list = internal global ptr null, align 8
@.str = private unnamed_addr constant [12 x i8] c"test_symbol\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@current_function_decl = external local_unnamed_addr global ptr, align 8
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"tree-ssa-address.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"symbol: \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"base: \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"index: \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"step: \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"offset: \00", align 1
@gt_ggc_r_gt_tree_ssa_address_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @mem_addr_template_list, i64 1, i64 8, ptr @gt_ggc_mx_VEC_mem_addr_template_gc, ptr @gt_pch_nx_VEC_mem_addr_template_gc }, %struct.ggc_root_tab zeroinitializer], align 16
@global_trees = external local_unnamed_addr global [131 x ptr], align 16

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
define dso_local ptr @addr_for_mem_ref(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !54
  %6 = tail call i32 %5(i8 noundef zeroext %1) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %7 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @integer_onep(ptr noundef nonnull %8) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load ptr, ptr %7, align 8, !tbaa !66
  %15 = getelementptr inbounds %struct.tree_int_cst, ptr %14, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.tree_int_cst, ptr %14, i64 0, i32 1, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !46
  %19 = tail call ptr @immed_double_const(i64 noundef %16, i64 noundef %18, i32 noundef %6) #14
  br label %20

20:                                               ; preds = %3, %10, %13
  %21 = phi ptr [ %19, %13 ], [ null, %10 ], [ null, %3 ]
  %22 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !68
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = tail call i32 @integer_zerop(ptr noundef nonnull %23) #14
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load ptr, ptr %22, align 8, !tbaa !68
  %30 = getelementptr inbounds %struct.tree_int_cst, ptr %29, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !46
  %32 = getelementptr inbounds %struct.tree_int_cst, ptr %29, i64 0, i32 1, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !46
  %34 = tail call ptr @immed_double_const(i64 noundef %31, i64 noundef %33, i32 noundef %6) #14
  br label %35

35:                                               ; preds = %20, %25, %28
  %36 = phi ptr [ %34, %28 ], [ null, %25 ], [ null, %20 ]
  %37 = icmp eq i8 %2, 0
  br i1 %37, label %38, label %138

38:                                               ; preds = %35
  %39 = zext i8 %1 to i32
  %40 = shl nuw nsw i32 %39, 5
  %41 = load ptr, ptr %0, align 8, !tbaa !69
  %42 = icmp eq ptr %41, null
  %43 = select i1 %42, i32 0, i32 16
  %44 = or disjoint i32 %43, %40
  %45 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !70
  %47 = icmp eq ptr %46, null
  %48 = select i1 %47, i32 0, i32 8
  %49 = or disjoint i32 %44, %48
  %50 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !71
  %52 = icmp eq ptr %51, null
  %53 = select i1 %52, i32 0, i32 4
  %54 = or disjoint i32 %49, %53
  %55 = icmp eq ptr %21, null
  %56 = select i1 %55, i32 0, i32 2
  %57 = or disjoint i32 %54, %56
  %58 = icmp ne ptr %36, null
  %59 = zext i1 %58 to i32
  %60 = or disjoint i32 %57, %59
  %61 = load ptr, ptr @mem_addr_template_list, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %38
  %64 = load i32, ptr %61, align 8, !tbaa !72
  br label %65

65:                                               ; preds = %38, %63
  %66 = phi i32 [ %64, %63 ], [ 0, %38 ]
  %67 = icmp ult i32 %60, %66
  br i1 %67, label %99, label %68

68:                                               ; preds = %65
  %69 = add nuw nsw i32 %60, 1
  br i1 %62, label %72, label %70

70:                                               ; preds = %68
  %71 = load i32, ptr %61, align 8, !tbaa !72
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %71, %70 ], [ 0, %68 ]
  br i1 %62, label %76, label %74

74:                                               ; preds = %72
  %75 = load i32, ptr %61, align 8, !tbaa !72
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %75, %74 ], [ 0, %72 ]
  %78 = sub nsw i32 %69, %77
  br i1 %62, label %85, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.VEC_mem_addr_template_base, ptr %61, i64 0, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !74
  %82 = load i32, ptr %61, align 8, !tbaa !72
  %83 = sub i32 %81, %82
  %84 = icmp uge i32 %83, %78
  br label %87

85:                                               ; preds = %76
  %86 = icmp eq i32 %77, %69
  br label %87

87:                                               ; preds = %85, %79
  %88 = phi i1 [ %84, %79 ], [ %86, %85 ]
  br i1 %88, label %91, label %89

89:                                               ; preds = %87
  %90 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef %61, i32 noundef %78, i64 noundef 8, i64 noundef 24) #14
  store ptr %90, ptr @mem_addr_template_list, align 8, !tbaa !35
  br label %91

91:                                               ; preds = %87, %89
  %92 = load ptr, ptr @mem_addr_template_list, align 8, !tbaa !35, !nonnull !75, !noundef !75
  store i32 %69, ptr %92, align 8, !tbaa !72
  %93 = getelementptr inbounds %struct.VEC_mem_addr_template_base, ptr %92, i64 0, i32 2
  %94 = sext i32 %73 to i64
  %95 = getelementptr inbounds %struct.mem_addr_template, ptr %93, i64 %94
  %96 = sub nsw i32 %69, %73
  %97 = sext i32 %96 to i64
  %98 = mul nsw i64 %97, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %95, i8 0, i64 %98, i1 false)
  br label %99

99:                                               ; preds = %91, %65
  %100 = load ptr, ptr @mem_addr_template_list, align 8
  %101 = zext nneg i32 %60 to i64
  %102 = getelementptr inbounds %struct.VEC_mem_addr_template_base, ptr %100, i64 0, i32 2, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !76
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %130

105:                                              ; preds = %99
  %106 = load ptr, ptr %0, align 8, !tbaa !69
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = tail call ptr @ggc_alloc_string(ptr noundef nonnull @.str, i32 noundef -1) #14
  %110 = tail call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef %6, ptr noundef %109) #14
  br label %111

111:                                              ; preds = %105, %108
  %112 = phi ptr [ %110, %108 ], [ null, %105 ]
  %113 = load ptr, ptr %45, align 8, !tbaa !70
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  %116 = tail call ptr @gen_raw_REG(i32 noundef %6, i32 noundef 58) #14
  br label %117

117:                                              ; preds = %111, %115
  %118 = phi ptr [ %116, %115 ], [ null, %111 ]
  %119 = load ptr, ptr %50, align 8, !tbaa !71
  %120 = icmp eq ptr %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  %122 = tail call ptr @gen_raw_REG(i32 noundef %6, i32 noundef 59) #14
  br label %123

123:                                              ; preds = %117, %121
  %124 = phi ptr [ %122, %121 ], [ null, %117 ]
  %125 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %126 = select i1 %55, ptr null, ptr %125
  %127 = select i1 %58, ptr %125, ptr null
  %128 = getelementptr inbounds %struct.VEC_mem_addr_template_base, ptr %100, i64 0, i32 2, i64 %101, i32 1
  %129 = getelementptr inbounds %struct.VEC_mem_addr_template_base, ptr %100, i64 0, i32 2, i64 %101, i32 2
  tail call fastcc void @gen_addr_rtx(i32 noundef %6, ptr noundef %112, ptr noundef %118, ptr noundef %124, ptr noundef %126, ptr noundef %127, ptr noundef nonnull %102, ptr noundef nonnull %128, ptr noundef nonnull %129)
  br label %130

130:                                              ; preds = %123, %99
  br i1 %55, label %134, label %131

131:                                              ; preds = %130
  %132 = getelementptr inbounds %struct.VEC_mem_addr_template_base, ptr %100, i64 0, i32 2, i64 %101, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !78
  store ptr %21, ptr %133, align 8, !tbaa !35
  br label %134

134:                                              ; preds = %131, %130
  br i1 %58, label %135, label %161

135:                                              ; preds = %134
  %136 = getelementptr inbounds %struct.VEC_mem_addr_template_base, ptr %100, i64 0, i32 2, i64 %101, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !79
  store ptr %36, ptr %137, align 8, !tbaa !35
  br label %161

138:                                              ; preds = %35
  %139 = load ptr, ptr %0, align 8, !tbaa !69
  %140 = icmp eq ptr %139, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %138
  %142 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %143 = tail call ptr @build_addr(ptr noundef nonnull %139, ptr noundef %142) #14
  %144 = tail call ptr @expand_expr_real(ptr noundef %143, ptr noundef null, i32 noundef %6, i32 noundef 0, ptr noundef null) #14
  br label %145

145:                                              ; preds = %138, %141
  %146 = phi ptr [ %144, %141 ], [ null, %138 ]
  %147 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !70
  %149 = icmp eq ptr %148, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %145
  %151 = tail call ptr @expand_expr_real(ptr noundef nonnull %148, ptr noundef null, i32 noundef %6, i32 noundef 0, ptr noundef null) #14
  br label %152

152:                                              ; preds = %145, %150
  %153 = phi ptr [ %151, %150 ], [ null, %145 ]
  %154 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !71
  %156 = icmp eq ptr %155, null
  br i1 %156, label %159, label %157

157:                                              ; preds = %152
  %158 = tail call ptr @expand_expr_real(ptr noundef nonnull %155, ptr noundef null, i32 noundef %6, i32 noundef 0, ptr noundef null) #14
  br label %159

159:                                              ; preds = %152, %157
  %160 = phi ptr [ %158, %157 ], [ null, %152 ]
  call fastcc void @gen_addr_rtx(i32 noundef %6, ptr noundef %146, ptr noundef %153, ptr noundef %160, ptr noundef %21, ptr noundef %36, ptr noundef nonnull %4, ptr noundef null, ptr noundef null)
  br label %161

161:                                              ; preds = %134, %135, %159
  %162 = phi ptr [ %4, %159 ], [ %102, %135 ], [ %102, %134 ]
  %163 = load ptr, ptr %162, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret ptr %163
}

declare i32 @integer_onep(ptr noundef) local_unnamed_addr #3

declare ptr @immed_double_const(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_s00_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ggc_alloc_string(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_raw_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @gen_addr_rtx(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef writeonly %7, ptr noundef writeonly %8) unnamed_addr #9 !prof !34 {
  store ptr null, ptr %6, align 8, !tbaa !35
  %10 = icmp eq ptr %7, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  store ptr null, ptr %7, align 8, !tbaa !35
  br label %12

12:                                               ; preds = %11, %9
  %13 = icmp eq ptr %8, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %12
  store ptr null, ptr %8, align 8, !tbaa !35
  br label %15

15:                                               ; preds = %14, %12
  %16 = icmp eq ptr %3, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %15
  %18 = icmp eq ptr %4, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %17
  %20 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  br i1 %10, label %23, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %22, ptr %7, align 8, !tbaa !35
  br label %23

23:                                               ; preds = %19, %21, %17
  %24 = phi ptr [ %20, %21 ], [ %20, %19 ], [ %3, %17 ]
  store ptr %24, ptr %6, align 8, !tbaa !35
  br label %25

25:                                               ; preds = %23, %15
  %26 = icmp eq ptr %2, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr %6, align 8, !tbaa !35
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %28) #14
  br label %32

32:                                               ; preds = %27, %30
  %33 = phi ptr [ %31, %30 ], [ %2, %27 ]
  store ptr %33, ptr %6, align 8, !tbaa !35
  br label %34

34:                                               ; preds = %32, %25
  %35 = icmp eq ptr %1, null
  %36 = icmp eq ptr %5, null
  br i1 %35, label %54, label %37

37:                                               ; preds = %34
  br i1 %36, label %47, label %38

38:                                               ; preds = %37
  %39 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5) #14
  br i1 %13, label %42, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %41, ptr %8, align 8, !tbaa !35
  br label %42

42:                                               ; preds = %40, %38
  %43 = load i32, ptr %1, align 8
  %44 = trunc i32 %43 to i16
  switch i16 %44, label %47 [
    i16 45, label %45
    i16 44, label %45
    i16 35, label %45
  ]

45:                                               ; preds = %42, %42, %42
  %46 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 35, i32 noundef %0, ptr noundef %39) #14
  br label %47

47:                                               ; preds = %42, %45, %37
  %48 = phi ptr [ %46, %45 ], [ %1, %37 ], [ %39, %42 ]
  %49 = load ptr, ptr %6, align 8, !tbaa !35
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef nonnull %49, ptr noundef %48) #14
  store ptr %52, ptr %6, align 8, !tbaa !35
  br label %64

53:                                               ; preds = %47
  store ptr %48, ptr %6, align 8, !tbaa !35
  br label %64

54:                                               ; preds = %34
  br i1 %36, label %64, label %55

55:                                               ; preds = %54
  %56 = load ptr, ptr %6, align 8, !tbaa !35
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef nonnull %56, ptr noundef nonnull %5) #14
  store ptr %59, ptr %6, align 8, !tbaa !35
  br i1 %13, label %64, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %61, ptr %8, align 8, !tbaa !35
  br label %64

62:                                               ; preds = %55
  store ptr %5, ptr %6, align 8, !tbaa !35
  br i1 %13, label %64, label %63

63:                                               ; preds = %62
  store ptr %6, ptr %8, align 8, !tbaa !35
  br label %64

64:                                               ; preds = %54, %62, %63, %58, %60, %51, %53
  %65 = load ptr, ptr %6, align 8, !tbaa !35
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !35
  store ptr %68, ptr %6, align 8, !tbaa !35
  br label %69

69:                                               ; preds = %67, %64
  ret void
}

declare ptr @build_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @tree_mem_ref_addr(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %4 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = load ptr, ptr %3, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %8, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %14 = tail call ptr @build_addr(ptr noundef nonnull %8, ptr noundef %13) #14
  %15 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %14) #14
  br label %25

16:                                               ; preds = %2
  %17 = icmp eq ptr %10, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = load i64, ptr %20, align 8
  %22 = trunc i64 %21 to i16
  switch i16 %22, label %25 [
    i16 10, label %23
    i16 12, label %23
  ]

23:                                               ; preds = %18, %18
  %24 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef nonnull %10) #14
  br label %25

25:                                               ; preds = %18, %16, %23, %12
  %26 = phi ptr [ %10, %12 ], [ null, %23 ], [ null, %16 ], [ %10, %18 ]
  %27 = phi ptr [ %15, %12 ], [ %24, %23 ], [ null, %16 ], [ null, %18 ]
  %28 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = icmp eq ptr %5, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %31
  %34 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %35 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %34, ptr noundef nonnull %29, ptr noundef nonnull %5) #14
  br label %36

36:                                               ; preds = %31, %33, %25
  %37 = phi ptr [ null, %25 ], [ %35, %33 ], [ %29, %31 ]
  %38 = icmp eq ptr %26, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = icmp eq ptr %37, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %43 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %42, ptr noundef nonnull %37, ptr noundef nonnull %26) #14
  br label %44

44:                                               ; preds = %39, %41, %36
  %45 = phi ptr [ %43, %41 ], [ %37, %36 ], [ %26, %39 ]
  %46 = icmp eq ptr %7, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @integer_zerop(ptr noundef nonnull %7) #14
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = icmp eq ptr %45, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %50
  %53 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %54 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %53, ptr noundef nonnull %45, ptr noundef nonnull %7) #14
  br label %55

55:                                               ; preds = %50, %52, %47, %44
  %56 = phi ptr [ %45, %47 ], [ %54, %52 ], [ %45, %44 ], [ %7, %50 ]
  %57 = icmp eq ptr %56, null
  %58 = icmp eq ptr %27, null
  br i1 %57, label %64, label %59

59:                                               ; preds = %55
  br i1 %58, label %62, label %60

60:                                               ; preds = %59
  %61 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %0, ptr noundef nonnull %27, ptr noundef nonnull %56) #14
  br label %67

62:                                               ; preds = %59
  %63 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef nonnull %56) #14
  br label %67

64:                                               ; preds = %55
  br i1 %58, label %65, label %67

65:                                               ; preds = %64
  %66 = tail call ptr @build_int_cst(ptr noundef %0, i64 noundef 0) #14
  br label %67

67:                                               ; preds = %64, %65, %60, %62
  %68 = phi ptr [ %61, %60 ], [ %63, %62 ], [ %66, %65 ], [ %27, %64 ]
  ret ptr %68
}

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @create_mem_ref(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #9 !prof !34 {
  %6 = alloca %struct.mem_address, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #14
  %7 = getelementptr inbounds %struct.mem_address, ptr %6, i64 0, i32 1
  %8 = getelementptr inbounds %struct.mem_address, ptr %6, i64 0, i32 2
  %9 = getelementptr inbounds %struct.mem_address, ptr %6, i64 0, i32 3
  %10 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 1, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = icmp ne i64 %11, 0
  %15 = icmp ne i64 %13, 0
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %19 = tail call ptr @double_int_to_tree(ptr noundef %18, i64 %11, i64 %13) #14
  br label %20

20:                                               ; preds = %5, %17
  %21 = phi ptr [ %19, %17 ], [ null, %5 ]
  %22 = getelementptr inbounds %struct.mem_address, ptr %6, i64 0, i32 4
  store ptr %21, ptr %22, align 8, !tbaa !68
  %23 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !80
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %73, label %26

26:                                               ; preds = %20
  %27 = zext i32 %24 to i64
  br label %28

28:                                               ; preds = %26, %67
  %29 = phi i64 [ 0, %26 ], [ %69, %67 ]
  %30 = phi ptr [ null, %26 ], [ %68, %67 ]
  %31 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 3, i64 %29, i32 1
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds { i64, i64 }, ptr %31, i64 0, i32 1
  %34 = load i64, ptr %33, align 8
  %35 = icmp ne i64 %32, 1
  %36 = icmp ne i64 %34, 0
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %67, label %38

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 3, i64 %29
  %40 = load ptr, ptr %39, align 8, !tbaa !83
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 121
  br i1 %43, label %44, label %67

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.tree_exp, ptr %40, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 32
  br i1 %49, label %50, label %64

50:                                               ; preds = %44
  %51 = and i64 %47, 67108864
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.tree_decl_common, ptr %46, i64 0, i32 2
  %55 = load i64, ptr %54, align 8
  %56 = and i64 %55, 33554432
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53, %50
  %59 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %46, i64 0, i32 4
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 32
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i8
  br label %64

64:                                               ; preds = %58, %53, %44
  %65 = phi i8 [ 0, %53 ], [ 0, %44 ], [ %63, %58 ]
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64, %38, %28
  %68 = phi ptr [ %40, %64 ], [ %40, %38 ], [ %30, %28 ]
  %69 = add nuw nsw i64 %29, 1
  %70 = icmp eq i64 %69, %27
  br i1 %70, label %73, label %28, !llvm.loop !85

71:                                               ; preds = %64
  %72 = trunc i64 %29 to i32
  br label %73

73:                                               ; preds = %71, %67, %20
  %74 = phi i32 [ 0, %20 ], [ %72, %71 ], [ %24, %67 ]
  %75 = phi ptr [ null, %20 ], [ %40, %71 ], [ %68, %67 ]
  %76 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 2
  %77 = icmp eq i32 %74, %24
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.tree_exp, ptr %75, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !46
  store ptr %80, ptr %6, align 8, !tbaa !69
  tail call void @aff_combination_remove_elt(ptr noundef %2, i32 noundef %74) #14
  br label %81

81:                                               ; preds = %78, %73
  %82 = load i64, ptr %1, align 8
  %83 = lshr i64 %82, 56
  %84 = trunc i64 %83 to i8
  %85 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !54
  %86 = tail call i32 %85(i8 noundef zeroext %84) #14
  %87 = load i32, ptr %76, align 8, !tbaa !80
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %135, label %89

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  br label %91

91:                                               ; preds = %89, %127
  %92 = phi i64 [ 0, %89 ], [ %131, %127 ]
  %93 = phi i64 [ 0, %89 ], [ %130, %127 ]
  %94 = phi i64 [ 0, %89 ], [ %129, %127 ]
  %95 = phi i32 [ 0, %89 ], [ %128, %127 ]
  %96 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 3, i64 %92, i32 1
  %97 = load i64, ptr %96, align 8
  %98 = getelementptr inbounds { i64, i64 }, ptr %96, i64 0, i32 1
  %99 = load i64, ptr %98, align 8
  %100 = tail call zeroext i8 @double_int_fits_in_shwi_p(i64 %97, i64 %99) #14
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %127, label %102

102:                                              ; preds = %91
  %103 = load i64, ptr %96, align 8
  %104 = load i64, ptr %98, align 8
  %105 = tail call i64 @double_int_to_shwi(i64 %103, i64 %104) #14
  %106 = icmp eq i64 %105, 1
  br i1 %106, label %127, label %107

107:                                              ; preds = %102
  %108 = load i64, ptr %1, align 8
  %109 = and i64 %108, 65535
  %110 = icmp eq i64 %109, 14
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #14
  br label %117

113:                                              ; preds = %107
  %114 = load i32, ptr %90, align 4
  %115 = lshr i32 %114, 16
  %116 = and i32 %115, 255
  br label %117

117:                                              ; preds = %113, %111
  %118 = phi i32 [ %112, %111 ], [ %116, %113 ]
  %119 = tail call zeroext i8 @multiplier_allowed_in_address_p(i64 noundef %105, i32 noundef %118, i8 noundef zeroext %84) #14
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %117
  %122 = tail call i32 @multiply_by_cost(i64 noundef %105, i32 noundef %86, i8 noundef zeroext %4) #14
  %123 = icmp ugt i32 %122, %95
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i64, ptr %96, align 8, !tbaa.struct !86
  %126 = load i64, ptr %98, align 8, !tbaa.struct !88
  br label %127

127:                                              ; preds = %124, %121, %117, %102, %91
  %128 = phi i32 [ %95, %102 ], [ %122, %124 ], [ %95, %121 ], [ %95, %117 ], [ %95, %91 ]
  %129 = phi i64 [ %94, %102 ], [ %125, %124 ], [ %94, %121 ], [ %94, %117 ], [ %94, %91 ]
  %130 = phi i64 [ %93, %102 ], [ %126, %124 ], [ %93, %121 ], [ %93, %117 ], [ %93, %91 ]
  %131 = add nuw nsw i64 %92, 1
  %132 = load i32, ptr %76, align 8, !tbaa !80
  %133 = zext i32 %132 to i64
  %134 = icmp ult i64 %131, %133
  br i1 %134, label %91, label %135, !llvm.loop !89

135:                                              ; preds = %127, %81
  %136 = phi i32 [ 0, %81 ], [ %128, %127 ]
  %137 = phi i64 [ 0, %81 ], [ %129, %127 ]
  %138 = phi i64 [ 0, %81 ], [ %130, %127 ]
  %139 = icmp eq i32 %136, 0
  br i1 %139, label %194, label %140

140:                                              ; preds = %135
  %141 = load i32, ptr %76, align 8, !tbaa !80
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %189, label %143

143:                                              ; preds = %140, %182
  %144 = phi i64 [ %185, %182 ], [ 0, %140 ]
  %145 = phi ptr [ %184, %182 ], [ null, %140 ]
  %146 = phi i32 [ %183, %182 ], [ 0, %140 ]
  %147 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 3, i64 %144
  %148 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 3, i64 %144, i32 1
  %149 = load i64, ptr %148, align 8, !tbaa.struct !86
  %150 = getelementptr inbounds i8, ptr %148, i64 8
  %151 = load i64, ptr %150, align 8, !tbaa.struct !88
  %152 = tail call { i64, i64 } @double_int_neg(i64 %149, i64 %151) #14
  %153 = extractvalue { i64, i64 } %152, 0
  %154 = extractvalue { i64, i64 } %152, 1
  %155 = tail call { i64, i64 } @double_int_ext_for_comb(i64 %153, i64 %154, ptr noundef %2) #14
  %156 = icmp ne i64 %149, %137
  %157 = icmp ne i64 %151, %138
  %158 = select i1 %156, i1 true, i1 %157
  br i1 %158, label %159, label %169

159:                                              ; preds = %143
  %160 = extractvalue { i64, i64 } %155, 1
  %161 = extractvalue { i64, i64 } %155, 0
  %162 = icmp ne i64 %161, %137
  %163 = icmp ne i64 %160, %138
  %164 = select i1 %162, i1 true, i1 %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %159
  %166 = zext i32 %146 to i64
  %167 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 3, i64 %166
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %167, ptr noundef nonnull align 8 dereferenceable(24) %147, i64 24, i1 false), !tbaa.struct !90
  %168 = add i32 %146, 1
  br label %182

169:                                              ; preds = %159, %143
  %170 = phi i32 [ 63, %143 ], [ 64, %159 ]
  %171 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %172 = load ptr, ptr %147, align 8, !tbaa !83
  %173 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %171, ptr noundef %172) #14
  %174 = icmp eq ptr %145, null
  br i1 %174, label %178, label %175

175:                                              ; preds = %169
  %176 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %177 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %170, ptr noundef %176, ptr noundef nonnull %145, ptr noundef %173) #14
  br label %182

178:                                              ; preds = %169
  br i1 %158, label %179, label %182

179:                                              ; preds = %178
  %180 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %181 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %180, ptr noundef %173) #14
  br label %182

182:                                              ; preds = %179, %178, %175, %165
  %183 = phi i32 [ %146, %175 ], [ %146, %179 ], [ %168, %165 ], [ %146, %178 ]
  %184 = phi ptr [ %177, %175 ], [ %181, %179 ], [ %145, %165 ], [ %173, %178 ]
  %185 = add nuw nsw i64 %144, 1
  %186 = load i32, ptr %76, align 8, !tbaa !80
  %187 = zext i32 %186 to i64
  %188 = icmp ult i64 %185, %187
  br i1 %188, label %143, label %189, !llvm.loop !91

189:                                              ; preds = %182, %140
  %190 = phi i32 [ 0, %140 ], [ %183, %182 ]
  %191 = phi ptr [ null, %140 ], [ %184, %182 ]
  store i32 %190, ptr %76, align 8, !tbaa !80
  store ptr %191, ptr %8, align 8, !tbaa !71
  %192 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %193 = tail call ptr @double_int_to_tree(ptr noundef %192, i64 %137, i64 %138) #14
  store ptr %193, ptr %9, align 8, !tbaa !66
  br label %194

194:                                              ; preds = %189, %135
  %195 = load ptr, ptr %6, align 8, !tbaa !69
  %196 = icmp eq ptr %195, null
  %197 = icmp ne ptr %3, null
  %198 = and i1 %197, %196
  br i1 %198, label %199, label %241

199:                                              ; preds = %194
  %200 = load i32, ptr %76, align 8, !tbaa !80
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %227, label %202

202:                                              ; preds = %199, %217
  %203 = phi i64 [ %219, %217 ], [ 0, %199 ]
  %204 = phi ptr [ %218, %217 ], [ null, %199 ]
  %205 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 3, i64 %203, i32 1
  %206 = load i64, ptr %205, align 8
  %207 = getelementptr inbounds { i64, i64 }, ptr %205, i64 0, i32 1
  %208 = load i64, ptr %207, align 8
  %209 = icmp ne i64 %206, 1
  %210 = icmp ne i64 %208, 0
  %211 = select i1 %209, i1 true, i1 %210
  br i1 %211, label %217, label %212

212:                                              ; preds = %202
  %213 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 3, i64 %203
  %214 = load ptr, ptr %213, align 8, !tbaa !83
  %215 = tail call i32 @operand_equal_p(ptr noundef %214, ptr noundef nonnull %3, i32 noundef 0) #14
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %212, %202
  %218 = phi ptr [ %214, %212 ], [ %204, %202 ]
  %219 = add nuw nsw i64 %203, 1
  %220 = load i32, ptr %76, align 8, !tbaa !80
  %221 = zext i32 %220 to i64
  %222 = icmp ult i64 %219, %221
  br i1 %222, label %202, label %223, !llvm.loop !92

223:                                              ; preds = %212, %217
  %224 = phi i64 [ %219, %217 ], [ %203, %212 ]
  %225 = phi ptr [ %218, %217 ], [ %214, %212 ]
  %226 = trunc i64 %224 to i32
  br label %227

227:                                              ; preds = %223, %199
  %228 = phi i32 [ 0, %199 ], [ %226, %223 ]
  %229 = phi ptr [ null, %199 ], [ %225, %223 ]
  %230 = load i32, ptr %76, align 8, !tbaa !80
  %231 = icmp eq i32 %228, %230
  br i1 %231, label %241, label %232

232:                                              ; preds = %227
  %233 = load i64, ptr %1, align 8
  %234 = lshr i64 %233, 48
  %235 = trunc i64 %234 to i32
  %236 = and i32 %235, 65280
  %237 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %238 = tail call ptr @build_qualified_type(ptr noundef %237, i32 noundef %236) #14
  %239 = tail call ptr @build_pointer_type(ptr noundef %238) #14
  %240 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %239, ptr noundef %229) #14
  store ptr %240, ptr %7, align 8, !tbaa !70
  tail call void @aff_combination_remove_elt(ptr noundef %2, i32 noundef %228) #14
  br label %241

241:                                              ; preds = %227, %232, %194
  %242 = load ptr, ptr %6, align 8, !tbaa !69
  %243 = icmp eq ptr %242, null
  %244 = load ptr, ptr %7, align 8
  %245 = icmp eq ptr %244, null
  %246 = select i1 %243, i1 %245, i1 false
  br i1 %246, label %247, label %280

247:                                              ; preds = %241
  %248 = load i32, ptr %76, align 8, !tbaa !80
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %275, label %250

250:                                              ; preds = %247
  %251 = zext i32 %248 to i64
  br label %252

252:                                              ; preds = %250, %269
  %253 = phi i64 [ 0, %250 ], [ %271, %269 ]
  %254 = phi ptr [ null, %250 ], [ %270, %269 ]
  %255 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 3, i64 %253, i32 1
  %256 = load i64, ptr %255, align 8
  %257 = getelementptr inbounds { i64, i64 }, ptr %255, i64 0, i32 1
  %258 = load i64, ptr %257, align 8
  %259 = icmp ne i64 %256, 1
  %260 = icmp ne i64 %258, 0
  %261 = select i1 %259, i1 true, i1 %260
  br i1 %261, label %269, label %262

262:                                              ; preds = %252
  %263 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 3, i64 %253
  %264 = load ptr, ptr %263, align 8, !tbaa !83
  %265 = getelementptr inbounds %struct.tree_common, ptr %264, i64 0, i32 2
  %266 = load ptr, ptr %265, align 8, !tbaa !46
  %267 = load i64, ptr %266, align 8
  %268 = trunc i64 %267 to i16
  switch i16 %268, label %269 [
    i16 10, label %273
    i16 12, label %273
  ]

269:                                              ; preds = %262, %252
  %270 = phi ptr [ %254, %252 ], [ %264, %262 ]
  %271 = add nuw nsw i64 %253, 1
  %272 = icmp eq i64 %271, %251
  br i1 %272, label %275, label %252, !llvm.loop !93

273:                                              ; preds = %262, %262
  %274 = trunc i64 %253 to i32
  br label %275

275:                                              ; preds = %273, %269, %247
  %276 = phi i32 [ 0, %247 ], [ %274, %273 ], [ %248, %269 ]
  %277 = phi ptr [ null, %247 ], [ %264, %273 ], [ %270, %269 ]
  %278 = icmp eq i32 %276, %248
  br i1 %278, label %280, label %279

279:                                              ; preds = %275
  store ptr %277, ptr %7, align 8, !tbaa !70
  tail call void @aff_combination_remove_elt(ptr noundef %2, i32 noundef %276) #14
  br label %280

280:                                              ; preds = %275, %279, %241
  %281 = load i32, ptr %76, align 8, !tbaa !80
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %306, label %283

283:                                              ; preds = %280, %300
  %284 = phi i64 [ %302, %300 ], [ 0, %280 ]
  %285 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %286 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 3, i64 %284
  %287 = load ptr, ptr %286, align 8, !tbaa !83
  %288 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %285, ptr noundef %287) #14
  %289 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 3, i64 %284, i32 1
  %290 = load i64, ptr %289, align 8
  %291 = getelementptr inbounds { i64, i64 }, ptr %289, i64 0, i32 1
  %292 = load i64, ptr %291, align 8
  %293 = icmp ne i64 %290, 1
  %294 = icmp ne i64 %292, 0
  %295 = select i1 %293, i1 true, i1 %294
  br i1 %295, label %296, label %300

296:                                              ; preds = %283
  %297 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %298 = tail call ptr @double_int_to_tree(ptr noundef %297, i64 %290, i64 %292) #14
  %299 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %297, ptr noundef %288, ptr noundef %298) #14
  br label %300

300:                                              ; preds = %296, %283
  %301 = phi ptr [ %288, %283 ], [ %299, %296 ]
  call fastcc void @add_to_parts(ptr noundef nonnull %6, ptr noundef %301)
  %302 = add nuw nsw i64 %284, 1
  %303 = load i32, ptr %76, align 8, !tbaa !80
  %304 = zext i32 %303 to i64
  %305 = icmp ult i64 %302, %304
  br i1 %305, label %283, label %306, !llvm.loop !94

306:                                              ; preds = %300, %280
  %307 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 4
  %308 = load ptr, ptr %307, align 8, !tbaa !95
  %309 = icmp eq ptr %308, null
  br i1 %309, label %313, label %310

310:                                              ; preds = %306
  %311 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %312 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %311, ptr noundef nonnull %308) #14
  call fastcc void @add_to_parts(ptr noundef nonnull %6, ptr noundef %312)
  br label %313

313:                                              ; preds = %306, %310
  %314 = load ptr, ptr %7, align 8, !tbaa !70
  %315 = icmp eq ptr %314, null
  br i1 %315, label %318, label %316

316:                                              ; preds = %313
  %317 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef nonnull %314, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #14
  store ptr %317, ptr %7, align 8, !tbaa !70
  br label %318

318:                                              ; preds = %316, %313
  %319 = load ptr, ptr %8, align 8, !tbaa !71
  %320 = icmp eq ptr %319, null
  br i1 %320, label %323, label %321

321:                                              ; preds = %318
  %322 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef nonnull %319, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #14
  store ptr %322, ptr %8, align 8, !tbaa !71
  br label %323

323:                                              ; preds = %318, %321
  %324 = call fastcc ptr @create_mem_ref_raw(ptr noundef nonnull %1, ptr noundef nonnull %6)
  %325 = icmp eq ptr %324, null
  br i1 %325, label %326, label %435

326:                                              ; preds = %323
  %327 = load ptr, ptr %9, align 8, !tbaa !66
  %328 = icmp eq ptr %327, null
  br i1 %328, label %342, label %329

329:                                              ; preds = %326
  %330 = tail call i32 @integer_onep(ptr noundef nonnull %327) #14
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %342

332:                                              ; preds = %329
  %333 = load ptr, ptr %8, align 8, !tbaa !71
  %334 = icmp eq ptr %333, null
  br i1 %334, label %335, label %336

335:                                              ; preds = %332
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 650, ptr noundef nonnull @.str.2) #14
  br label %336

336:                                              ; preds = %332, %335
  %337 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %338 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %337, ptr noundef %333, ptr noundef nonnull %327) #14
  %339 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef %338, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #14
  store ptr %339, ptr %8, align 8, !tbaa !71
  store ptr null, ptr %9, align 8, !tbaa !66
  %340 = call fastcc ptr @create_mem_ref_raw(ptr noundef nonnull %1, ptr noundef nonnull %6)
  %341 = icmp eq ptr %340, null
  br i1 %341, label %342, label %435

342:                                              ; preds = %336, %329, %326
  %343 = load ptr, ptr %6, align 8, !tbaa !69
  %344 = icmp eq ptr %343, null
  br i1 %344, label %376, label %345

345:                                              ; preds = %342
  %346 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %347 = tail call ptr @build_addr(ptr noundef nonnull %343, ptr noundef %346) #14
  %348 = tail call zeroext i8 @is_gimple_val(ptr noundef %347) #14
  %349 = icmp eq i8 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %345
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 665, ptr noundef nonnull @.str.2) #14
  br label %351

351:                                              ; preds = %345, %350
  %352 = load ptr, ptr %7, align 8, !tbaa !70
  %353 = icmp eq ptr %352, null
  br i1 %353, label %372, label %354

354:                                              ; preds = %351
  %355 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %356 = getelementptr inbounds %struct.tree_common, ptr %352, i64 0, i32 2
  %357 = load ptr, ptr %356, align 8, !tbaa !46
  %358 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %355, ptr noundef %357) #14
  %359 = icmp eq i8 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %354
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 671, ptr noundef nonnull @.str.2) #14
  br label %361

361:                                              ; preds = %354, %360
  %362 = load ptr, ptr %8, align 8, !tbaa !71
  %363 = icmp eq ptr %362, null
  br i1 %363, label %371, label %364

364:                                              ; preds = %361
  %365 = getelementptr inbounds %struct.tree_common, ptr %347, i64 0, i32 2
  %366 = load ptr, ptr %365, align 8, !tbaa !46
  %367 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %368 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %367, ptr noundef nonnull %352) #14
  %369 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %366, ptr noundef %347, ptr noundef %368) #14
  %370 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef %369, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #14
  br label %372

371:                                              ; preds = %361
  store ptr %352, ptr %8, align 8, !tbaa !71
  br label %372

372:                                              ; preds = %351, %364, %371
  %373 = phi ptr [ %370, %364 ], [ %347, %371 ], [ %347, %351 ]
  store ptr %373, ptr %7, align 8, !tbaa !70
  store ptr null, ptr %6, align 8, !tbaa !69
  %374 = call fastcc ptr @create_mem_ref_raw(ptr noundef nonnull %1, ptr noundef nonnull %6)
  %375 = icmp eq ptr %374, null
  br i1 %375, label %376, label %435

376:                                              ; preds = %372, %342
  %377 = load ptr, ptr %8, align 8, !tbaa !71
  %378 = icmp eq ptr %377, null
  br i1 %378, label %391, label %379

379:                                              ; preds = %376
  %380 = load ptr, ptr %7, align 8, !tbaa !70
  %381 = icmp eq ptr %380, null
  br i1 %381, label %387, label %382

382:                                              ; preds = %379
  %383 = getelementptr inbounds %struct.tree_common, ptr %380, i64 0, i32 2
  %384 = load ptr, ptr %383, align 8, !tbaa !46
  %385 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %384, ptr noundef nonnull %380, ptr noundef nonnull %377) #14
  %386 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef %385, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #14
  br label %387

387:                                              ; preds = %379, %382
  %388 = phi ptr [ %386, %382 ], [ %377, %379 ]
  store ptr %388, ptr %7, align 8, !tbaa !70
  store ptr null, ptr %8, align 8, !tbaa !71
  %389 = call fastcc ptr @create_mem_ref_raw(ptr noundef nonnull %1, ptr noundef nonnull %6)
  %390 = icmp eq ptr %389, null
  br i1 %390, label %391, label %435

391:                                              ; preds = %387, %376
  %392 = getelementptr inbounds %struct.mem_address, ptr %6, i64 0, i32 4
  %393 = load ptr, ptr %392, align 8, !tbaa !68
  %394 = icmp eq ptr %393, null
  br i1 %394, label %412, label %395

395:                                              ; preds = %391
  %396 = tail call i32 @integer_zerop(ptr noundef nonnull %393) #14
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %412

398:                                              ; preds = %395
  %399 = load ptr, ptr %7, align 8, !tbaa !70
  %400 = icmp eq ptr %399, null
  br i1 %400, label %408, label %401

401:                                              ; preds = %398
  %402 = getelementptr inbounds %struct.tree_common, ptr %399, i64 0, i32 2
  %403 = load ptr, ptr %402, align 8, !tbaa !46
  %404 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %405 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %404, ptr noundef nonnull %393) #14
  %406 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %403, ptr noundef nonnull %399, ptr noundef %405) #14
  %407 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef %406, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #14
  br label %408

408:                                              ; preds = %398, %401
  %409 = phi ptr [ %407, %401 ], [ %393, %398 ]
  store ptr %409, ptr %7, align 8, !tbaa !70
  store ptr null, ptr %392, align 8, !tbaa !68
  %410 = call fastcc ptr @create_mem_ref_raw(ptr noundef nonnull %1, ptr noundef nonnull %6)
  %411 = icmp eq ptr %410, null
  br i1 %411, label %412, label %435

412:                                              ; preds = %408, %395, %391
  %413 = load ptr, ptr %6, align 8, !tbaa !69
  %414 = icmp eq ptr %413, null
  br i1 %414, label %416, label %415

415:                                              ; preds = %412
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 743, ptr noundef nonnull @.str.2) #14
  br label %416

416:                                              ; preds = %412, %415
  %417 = load ptr, ptr %8, align 8, !tbaa !71
  %418 = icmp eq ptr %417, null
  br i1 %418, label %420, label %419

419:                                              ; preds = %416
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 744, ptr noundef nonnull @.str.2) #14
  br label %420

420:                                              ; preds = %416, %419
  %421 = load ptr, ptr %9, align 8, !tbaa !66
  %422 = icmp eq ptr %421, null
  br i1 %422, label %427, label %423

423:                                              ; preds = %420
  %424 = tail call i32 @integer_onep(ptr noundef nonnull %421) #14
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %427

426:                                              ; preds = %423
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 745, ptr noundef nonnull @.str.2) #14
  br label %427

427:                                              ; preds = %420, %423, %426
  %428 = load ptr, ptr %392, align 8, !tbaa !68
  %429 = icmp eq ptr %428, null
  br i1 %429, label %434, label %430

430:                                              ; preds = %427
  %431 = tail call i32 @integer_zerop(ptr noundef nonnull %428) #14
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %434

433:                                              ; preds = %430
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 746, ptr noundef nonnull @.str.2) #14
  br label %434

434:                                              ; preds = %427, %430, %433
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 747, ptr noundef nonnull @.str.2) #14
  br label %435

435:                                              ; preds = %408, %387, %372, %336, %323, %434
  %436 = phi ptr [ null, %434 ], [ %324, %323 ], [ %340, %336 ], [ %374, %372 ], [ %389, %387 ], [ %410, %408 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #14
  ret ptr %436
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @create_mem_ref_raw(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !34 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 14
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #14
  br label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 255
  br label %13

13:                                               ; preds = %8, %6
  %14 = phi i32 [ %7, %6 ], [ %12, %8 ]
  %15 = load i64, ptr %0, align 8
  %16 = lshr i64 %15, 56
  %17 = trunc i64 %16 to i8
  %18 = tail call ptr @addr_for_mem_ref(ptr noundef %1, i8 noundef zeroext %17, i8 noundef zeroext 0)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %49, label %20

20:                                               ; preds = %13
  %21 = tail call i32 @memory_address_addr_space_p(i32 noundef %14, ptr noundef nonnull %18, i8 noundef zeroext %17) #14
  %22 = and i32 %21, 255
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %49, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !66
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @integer_onep(ptr noundef nonnull %26) #14
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store ptr null, ptr %25, align 8, !tbaa !66
  br label %32

32:                                               ; preds = %31, %28, %24
  %33 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !68
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = tail call i32 @integer_zerop(ptr noundef nonnull %34) #14
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store ptr null, ptr %33, align 8, !tbaa !68
  br label %40

40:                                               ; preds = %39, %36, %32
  %41 = load ptr, ptr %1, align 8, !tbaa !69
  %42 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !70
  %44 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !71
  %46 = load ptr, ptr %25, align 8, !tbaa !66
  %47 = load ptr, ptr %33, align 8, !tbaa !68
  %48 = tail call ptr @build6_stat(i32 noundef 152, ptr noundef nonnull %0, ptr noundef %41, ptr noundef %43, ptr noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef null) #14
  br label %49

49:                                               ; preds = %13, %20, %40
  %50 = phi ptr [ %48, %40 ], [ null, %20 ], [ null, %13 ]
  ret ptr %50
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_val(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @get_address_description(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 !prof !34 {
  %3 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  store ptr %4, ptr %1, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !70
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !71
  %11 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 3
  store ptr %12, ptr %13, align 8, !tbaa !66
  %14 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 4
  store ptr %15, ptr %16, align 8, !tbaa !68
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @copy_mem_ref_info(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !34 {
  %3 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !46
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 65536
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, -65537
  %10 = or disjoint i64 %9, %7
  store i64 %10, ptr %0, align 8
  %11 = load i64, ptr %1, align 8
  %12 = and i64 %11, 524288
  %13 = and i64 %10, -524289
  %14 = or disjoint i64 %13, %12
  store i64 %14, ptr %0, align 8
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @maybe_fold_tmr(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = alloca %struct.mem_address, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #14
  %3 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  store ptr %4, ptr %2, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.mem_address, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !70
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.mem_address, ptr %2, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !71
  %11 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.mem_address, ptr %2, i64 0, i32 3
  store ptr %12, ptr %13, align 8, !tbaa !66
  %14 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.mem_address, ptr %2, i64 0, i32 4
  store ptr %15, ptr %16, align 8, !tbaa !68
  %17 = icmp eq ptr %6, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %1
  %19 = load i64, ptr %6, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 23
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = icmp eq ptr %15, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %26 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %25, ptr noundef nonnull %6) #14
  %27 = tail call ptr @fold_binary_to_constant(i32 noundef 63, ptr noundef %25, ptr noundef nonnull %15, ptr noundef %26) #14
  br label %28

28:                                               ; preds = %22, %24
  %29 = phi ptr [ %27, %24 ], [ %6, %22 ]
  store ptr %29, ptr %16, align 8, !tbaa !68
  store ptr null, ptr %7, align 8, !tbaa !70
  br label %30

30:                                               ; preds = %28, %18, %1
  %31 = phi i8 [ 1, %28 ], [ 0, %18 ], [ 0, %1 ]
  %32 = icmp eq ptr %9, null
  br i1 %32, label %51, label %33

33:                                               ; preds = %30
  %34 = load i64, ptr %9, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 23
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = icmp eq ptr %12, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %37
  %40 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %41 = tail call ptr @fold_binary_to_constant(i32 noundef 65, ptr noundef %40, ptr noundef nonnull %9, ptr noundef nonnull %12) #14
  store ptr null, ptr %13, align 8, !tbaa !66
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi ptr [ %41, %39 ], [ %9, %37 ]
  %44 = load ptr, ptr %16, align 8, !tbaa !68
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %48 = tail call ptr @fold_binary_to_constant(i32 noundef 63, ptr noundef %47, ptr noundef nonnull %44, ptr noundef %43) #14
  br label %49

49:                                               ; preds = %42, %46
  %50 = phi ptr [ %48, %46 ], [ %43, %42 ]
  store ptr %50, ptr %16, align 8, !tbaa !68
  store ptr null, ptr %10, align 8, !tbaa !71
  br label %51

51:                                               ; preds = %49, %33, %30
  %52 = phi i8 [ 1, %49 ], [ %31, %33 ], [ %31, %30 ]
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  %57 = call fastcc ptr @create_mem_ref_raw(ptr noundef %56, ptr noundef nonnull %2)
  %58 = icmp eq ptr %57, null
  br i1 %58, label %72, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !46
  %62 = getelementptr inbounds %struct.tree_exp, ptr %57, i64 1, i32 2
  store ptr %61, ptr %62, align 8, !tbaa !46
  %63 = load i64, ptr %0, align 8
  %64 = and i64 %63, 65536
  %65 = load i64, ptr %57, align 8
  %66 = and i64 %65, -65537
  %67 = or disjoint i64 %66, %64
  store i64 %67, ptr %57, align 8
  %68 = load i64, ptr %0, align 8
  %69 = and i64 %68, 524288
  %70 = and i64 %67, -524289
  %71 = or disjoint i64 %70, %69
  store i64 %71, ptr %57, align 8
  br label %72

72:                                               ; preds = %54, %51, %59
  %73 = phi ptr [ %57, %59 ], [ null, %51 ], [ null, %54 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #14
  ret ptr %73
}

declare ptr @fold_binary_to_constant(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_mem_address(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !69
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 8, i64 1, ptr %0)
  %7 = load ptr, ptr %1, align 8, !tbaa !69
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %7, i32 noundef 2) #14
  %8 = tail call i32 @fputc(i32 10, ptr %0)
  br label %9

9:                                                ; preds = %5, %2
  %10 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 6, i64 1, ptr %0)
  %15 = load ptr, ptr %10, align 8, !tbaa !70
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %15, i32 noundef 2) #14
  %16 = tail call i32 @fputc(i32 10, ptr %0)
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 7, i64 1, ptr %0)
  %23 = load ptr, ptr %18, align 8, !tbaa !71
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %23, i32 noundef 2) #14
  %24 = tail call i32 @fputc(i32 10, ptr %0)
  br label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !66
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 6, i64 1, ptr %0)
  %31 = load ptr, ptr %26, align 8, !tbaa !66
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %31, i32 noundef 2) #14
  %32 = tail call i32 @fputc(i32 10, ptr %0)
  br label %33

33:                                               ; preds = %29, %25
  %34 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !68
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 8, i64 1, ptr %0)
  %39 = load ptr, ptr %34, align 8, !tbaa !68
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %39, i32 noundef 2) #14
  %40 = tail call i32 @fputc(i32 10, ptr %0)
  br label %41

41:                                               ; preds = %37, %33
  ret void
}

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_VEC_mem_addr_template_gc(ptr noundef %0) #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !96
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_mem_addr_template_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %13) #14
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !98

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #3

declare void @gt_ggc_mx_rtx_def(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_VEC_mem_addr_template_gc(ptr noundef %0) #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_24VEC_mem_addr_template_gc, i32 noundef 58) #14
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !96
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_mem_addr_template_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !76
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %11) #14
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !99

17:                                               ; preds = %14, %4, %1
  ret void
}

declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_24VEC_mem_addr_template_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = load i32, ptr %1, align 8, !tbaa !96
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, %0
  br label %10

10:                                               ; preds = %8, %14
  %11 = phi i64 [ 0, %8 ], [ %15, %14 ]
  br i1 %9, label %12, label %14

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.VEC_mem_addr_template_base, ptr %1, i64 0, i32 2, i64 %11
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #14
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !100

17:                                               ; preds = %14, %4
  ret void
}

declare void @gt_pch_nx_rtx_def(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

declare ptr @vec_gc_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @double_int_to_tree(ptr noundef, i64, i64) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_to_parts(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %8 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %7, ptr noundef %1) #14
  store ptr %8, ptr %3, align 8, !tbaa !71
  br label %27

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store ptr %1, ptr %10, align 8, !tbaa !70
  br label %27

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = load i64, ptr %16, align 8
  %18 = trunc i64 %17 to i16
  switch i16 %18, label %23 [
    i16 10, label %19
    i16 12, label %19
  ]

19:                                               ; preds = %14, %14
  %20 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %21 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %20, ptr noundef %1) #14
  %22 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %16, ptr noundef nonnull %11, ptr noundef %21) #14
  br label %25

23:                                               ; preds = %14
  %24 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %16, ptr noundef nonnull %11, ptr noundef %1) #14
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi ptr [ %24, %23 ], [ %22, %19 ]
  store ptr %26, ptr %10, align 8, !tbaa !70
  br label %27

27:                                               ; preds = %25, %13, %6
  ret void
}

declare void @aff_combination_remove_elt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

declare zeroext i8 @double_int_fits_in_shwi_p(i64, i64) local_unnamed_addr #3

declare i64 @double_int_to_shwi(i64, i64) local_unnamed_addr #3

declare zeroext i8 @multiplier_allowed_in_address_p(i64 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare i32 @multiply_by_cost(i64 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare { i64, i64 } @double_int_ext_for_comb(i64, i64, ptr noundef) local_unnamed_addr #3

declare { i64, i64 } @double_int_neg(i64, i64) local_unnamed_addr #3

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_qualified_type(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

declare ptr @build6_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

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
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree nounwind }
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
!54 = !{!55, !36, i64 1184}
!55 = !{!"gcc_target", !56, i64 0, !58, i64 368, !59, i64 664, !41, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !36, i64 840, !36, i64 848, !36, i64 856, !36, i64 864, !36, i64 872, !36, i64 880, !36, i64 888, !36, i64 896, !36, i64 904, !36, i64 912, !36, i64 920, !36, i64 928, !36, i64 936, !36, i64 944, !36, i64 952, !36, i64 960, !36, i64 968, !36, i64 976, !36, i64 984, !36, i64 992, !36, i64 1000, !36, i64 1008, !36, i64 1016, !36, i64 1024, !36, i64 1032, !36, i64 1040, !36, i64 1048, !36, i64 1056, !42, i64 1064, !42, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !60, i64 1176, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !42, i64 1464, !61, i64 1472, !36, i64 1664, !36, i64 1672, !36, i64 1680, !36, i64 1688, !36, i64 1696, !36, i64 1704, !36, i64 1712, !36, i64 1720, !36, i64 1728, !36, i64 1736, !36, i64 1744, !36, i64 1752, !36, i64 1760, !36, i64 1768, !36, i64 1776, !62, i64 1784, !63, i64 1792, !64, i64 1896, !65, i64 1968, !36, i64 2016, !37, i64 2024, !37, i64 2025, !37, i64 2026, !37, i64 2027, !37, i64 2028, !37, i64 2029, !37, i64 2030, !37, i64 2031, !37, i64 2032, !37, i64 2033, !37, i64 2034, !37, i64 2035}
!56 = !{!"asm_out", !36, i64 0, !36, i64 8, !36, i64 16, !57, i64 24, !57, i64 56, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360}
!57 = !{!"asm_int_op", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!58 = !{!"sched", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288}
!59 = !{!"vectorize", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!60 = !{!"addr_space", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!61 = !{!"calls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184}
!62 = !{!"c", !36, i64 0}
!63 = !{!"cxx", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96}
!64 = !{!"emutls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !37, i64 64, !37, i64 65}
!65 = !{!"target_option_hooks", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!66 = !{!67, !36, i64 24}
!67 = !{!"mem_address", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!68 = !{!67, !36, i64 32}
!69 = !{!67, !36, i64 0}
!70 = !{!67, !36, i64 8}
!71 = !{!67, !36, i64 16}
!72 = !{!73, !41, i64 0}
!73 = !{!"VEC_mem_addr_template_base", !41, i64 0, !41, i64 4, !37, i64 8}
!74 = !{!73, !41, i64 4}
!75 = !{}
!76 = !{!77, !36, i64 0}
!77 = !{!"mem_addr_template", !36, i64 0, !36, i64 8, !36, i64 16}
!78 = !{!77, !36, i64 8}
!79 = !{!77, !36, i64 16}
!80 = !{!81, !41, i64 24}
!81 = !{!"affine_tree_combination", !36, i64 0, !82, i64 8, !41, i64 24, !37, i64 32, !36, i64 224}
!82 = !{!"", !42, i64 0, !42, i64 8}
!83 = !{!84, !36, i64 0}
!84 = !{!"aff_comb_elt", !36, i64 0, !82, i64 8}
!85 = distinct !{!85, !52, !53}
!86 = !{i64 0, i64 8, !87, i64 8, i64 8, !87}
!87 = !{!42, !42, i64 0}
!88 = !{i64 0, i64 8, !87}
!89 = distinct !{!89, !52, !53}
!90 = !{i64 0, i64 8, !35, i64 8, i64 8, !87, i64 16, i64 8, !87}
!91 = distinct !{!91, !52, !53}
!92 = distinct !{!92, !52, !53}
!93 = distinct !{!93, !52, !53}
!94 = distinct !{!94, !52, !53}
!95 = !{!81, !36, i64 224}
!96 = !{!97, !41, i64 0}
!97 = !{!"VEC_mem_addr_template_gc", !73, i64 0}
!98 = distinct !{!98, !52, !53}
!99 = distinct !{!99, !52, !53}
!100 = distinct !{!100, !52, !53}

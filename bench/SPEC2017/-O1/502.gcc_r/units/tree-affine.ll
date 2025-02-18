; ModuleID = 'tree-affine.c'
source_filename = "tree-affine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%union.tree_type_symtab = type { ptr }
%struct.affine_tree_combination = type { ptr, %struct.double_int, i32, [8 x %struct.aff_comb_elt], ptr }
%struct.double_int = type { i64, i64 }
%struct.aff_comb_elt = type { ptr, %struct.double_int }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.name_expansion = type { %struct.affine_tree_combination, i8 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str = private unnamed_addr constant [14 x i8] c"tree-affine.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@flag_wrapv = external local_unnamed_addr global i32, align 4
@flag_trapv = external local_unnamed_addr global i32, align 4
@flag_strict_overflow = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"{\0A  type = \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"\0A  offset = \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"\0A  elements = {\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"    [%d] = \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" * \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c", \0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\0A  }\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"\0A  rest = \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\0A}\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.12 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #18
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #18
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #18
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
  %5 = tail call ptr @__ctype_tolower_loc() #18
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
  %5 = tail call ptr @__ctype_toupper_loc() #18
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #18
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
define dso_local { i64, i64 } @double_int_ext_for_comb(i64 %0, i64 %1, ptr nocapture noundef readonly %2) local_unnamed_addr #9 !prof !34 {
  %4 = load ptr, ptr %2, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1023
  %8 = tail call { i64, i64 } @double_int_sext(i64 %0, i64 %1, i32 noundef %7) #18
  ret { i64, i64 } %8
}

declare { i64, i64 } @double_int_sext(i64, i64, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @aff_combination_const(ptr nocapture noundef writeonly %0, ptr noundef %1, i64 %2, i64 %3) local_unnamed_addr #9 !prof !34 {
  store ptr %1, ptr %0, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1, i32 1
  %7 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 4
  store ptr null, ptr %7, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1023
  %11 = tail call { i64, i64 } @double_int_sext(i64 %2, i64 %3, i32 noundef %10) #18
  %12 = extractvalue { i64, i64 } %11, 0
  %13 = extractvalue { i64, i64 } %11, 1
  store i64 %12, ptr %5, align 8, !tbaa.struct !58
  store i64 %13, ptr %6, align 8, !tbaa.struct !60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @aff_combination_elt(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !prof !34 {
  store ptr %1, ptr %0, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 4
  store ptr null, ptr %6, align 8, !tbaa !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, i8 0, i64 20, i1 false)
  store i32 1, ptr %5, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3
  store ptr %2, ptr %7, align 8, !tbaa !62
  %8 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 0, i32 1
  store i64 1, ptr %8, align 8, !tbaa.struct !58
  %9 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 0, i32 1, i32 1
  store i64 0, ptr %9, align 8, !tbaa.struct !60
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @aff_combination_scale(ptr nocapture noundef %0, i64 %1, i64 %2) local_unnamed_addr #9 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1023
  %8 = tail call { i64, i64 } @double_int_sext(i64 %1, i64 %2, i32 noundef %7) #18
  %9 = extractvalue { i64, i64 } %8, 0
  %10 = extractvalue { i64, i64 } %8, 1
  %11 = icmp eq i64 %9, 1
  %12 = icmp eq i64 %10, 0
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %95, label %14

14:                                               ; preds = %3
  %15 = icmp eq i64 %9, 0
  %16 = select i1 %15, i1 %12, i1 false
  %17 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1
  br i1 %16, label %18, label %20

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 4
  store ptr null, ptr %19, align 8, !tbaa !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %17, i8 0, i64 20, i1 false)
  br label %95

20:                                               ; preds = %14
  %21 = load i64, ptr %17, align 8
  %22 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1, i32 1
  %23 = load i64, ptr %22, align 8
  %24 = tail call { i64, i64 } @double_int_mul(i64 %9, i64 %10, i64 %21, i64 %23) #18
  %25 = extractvalue { i64, i64 } %24, 0
  %26 = extractvalue { i64, i64 } %24, 1
  %27 = load ptr, ptr %0, align 8, !tbaa !54
  %28 = getelementptr inbounds %struct.tree_type, ptr %27, i64 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 1023
  %31 = tail call { i64, i64 } @double_int_sext(i64 %25, i64 %26, i32 noundef %30) #18
  %32 = extractvalue { i64, i64 } %31, 0
  %33 = extractvalue { i64, i64 } %31, 1
  store i64 %32, ptr %17, align 8, !tbaa.struct !58
  store i64 %33, ptr %22, align 8, !tbaa.struct !60
  %34 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !61
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %71, label %37

37:                                               ; preds = %20, %65
  %38 = phi i64 [ %67, %65 ], [ 0, %20 ]
  %39 = phi i32 [ %66, %65 ], [ 0, %20 ]
  %40 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %38, i32 1
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds { i64, i64 }, ptr %40, i64 0, i32 1
  %43 = load i64, ptr %42, align 8
  %44 = tail call { i64, i64 } @double_int_mul(i64 %9, i64 %10, i64 %41, i64 %43) #18
  %45 = extractvalue { i64, i64 } %44, 0
  %46 = extractvalue { i64, i64 } %44, 1
  %47 = load ptr, ptr %0, align 8, !tbaa !54
  %48 = getelementptr inbounds %struct.tree_type, ptr %47, i64 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 1023
  %51 = tail call { i64, i64 } @double_int_sext(i64 %45, i64 %46, i32 noundef %50) #18
  %52 = extractvalue { i64, i64 } %51, 0
  %53 = extractvalue { i64, i64 } %51, 1
  %54 = icmp ne i64 %52, 0
  %55 = icmp ne i64 %53, 0
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %37
  %58 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %38
  %59 = zext i32 %39 to i64
  %60 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %59
  %61 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %59, i32 1
  store i64 %52, ptr %61, align 8, !tbaa.struct !58
  %62 = getelementptr inbounds i8, ptr %61, i64 8
  store i64 %53, ptr %62, align 8, !tbaa.struct !60
  %63 = load ptr, ptr %58, align 8, !tbaa !62
  store ptr %63, ptr %60, align 8, !tbaa !62
  %64 = add i32 %39, 1
  br label %65

65:                                               ; preds = %37, %57
  %66 = phi i32 [ %64, %57 ], [ %39, %37 ]
  %67 = add nuw nsw i64 %38, 1
  %68 = load i32, ptr %34, align 8, !tbaa !61
  %69 = zext i32 %68 to i64
  %70 = icmp ult i64 %67, %69
  br i1 %70, label %37, label %71, !llvm.loop !64

71:                                               ; preds = %65, %20
  %72 = phi i32 [ 0, %20 ], [ %66, %65 ]
  %73 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  store i32 %72, ptr %73, align 8, !tbaa !61
  %74 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !57
  %76 = icmp eq ptr %75, null
  br i1 %76, label %95, label %77

77:                                               ; preds = %71
  %78 = load ptr, ptr %0, align 8, !tbaa !54
  %79 = load i64, ptr %78, align 8
  %80 = trunc i64 %79 to i16
  switch i16 %80, label %83 [
    i16 10, label %81
    i16 12, label %81
  ]

81:                                               ; preds = %77, %77
  %82 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  br label %83

83:                                               ; preds = %77, %81
  %84 = phi ptr [ %82, %81 ], [ %78, %77 ]
  %85 = icmp ult i32 %72, 8
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = zext nneg i32 %72 to i64
  %88 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %87, i32 1
  store i64 %9, ptr %88, align 8, !tbaa.struct !58
  %89 = getelementptr inbounds i8, ptr %88, i64 8
  store i64 %10, ptr %89, align 8, !tbaa.struct !60
  %90 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %87
  store ptr %75, ptr %90, align 8, !tbaa !62
  store ptr null, ptr %74, align 8, !tbaa !57
  %91 = add nuw nsw i32 %72, 1
  store i32 %91, ptr %73, align 8, !tbaa !61
  br label %95

92:                                               ; preds = %83
  %93 = tail call ptr @double_int_to_tree(ptr noundef %84, i64 %9, i64 %10) #18
  %94 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %84, ptr noundef nonnull %75, ptr noundef %93) #18
  store ptr %94, ptr %74, align 8, !tbaa !57
  br label %95

95:                                               ; preds = %71, %92, %86, %3, %18
  ret void
}

declare { i64, i64 } @double_int_mul(i64, i64, i64, i64) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @double_int_to_tree(ptr noundef, i64, i64) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @aff_combination_add_elt(ptr nocapture noundef %0, ptr noundef %1, i64 %2, i64 %3) local_unnamed_addr #9 !prof !34 {
  %5 = load ptr, ptr %0, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1023
  %9 = tail call { i64, i64 } @double_int_sext(i64 %2, i64 %3, i32 noundef %8) #18
  %10 = extractvalue { i64, i64 } %9, 0
  %11 = extractvalue { i64, i64 } %9, 1
  %12 = icmp eq i64 %10, 0
  %13 = icmp eq i64 %11, 0
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %102, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !61
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %69, label %24

19:                                               ; preds = %24
  %20 = add nuw nsw i64 %25, 1
  %21 = load i32, ptr %16, align 8, !tbaa !61
  %22 = zext i32 %21 to i64
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %24, label %69, !llvm.loop !65

24:                                               ; preds = %15, %19
  %25 = phi i64 [ %20, %19 ], [ 0, %15 ]
  %26 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !62
  %28 = tail call i32 @operand_equal_p(ptr noundef %27, ptr noundef %1, i32 noundef 0) #18
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %19, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  %32 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %25, i32 1
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds { i64, i64 }, ptr %32, i64 0, i32 1
  %35 = load i64, ptr %34, align 8
  %36 = tail call { i64, i64 } @double_int_add(i64 %33, i64 %35, i64 %10, i64 %11) #18
  %37 = extractvalue { i64, i64 } %36, 0
  %38 = extractvalue { i64, i64 } %36, 1
  %39 = load ptr, ptr %0, align 8, !tbaa !54
  %40 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 1023
  %43 = tail call { i64, i64 } @double_int_sext(i64 %37, i64 %38, i32 noundef %42) #18
  %44 = extractvalue { i64, i64 } %43, 0
  %45 = extractvalue { i64, i64 } %43, 1
  %46 = icmp ne i64 %44, 0
  %47 = icmp ne i64 %45, 0
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %30
  store i64 %44, ptr %32, align 8, !tbaa.struct !58
  store i64 %45, ptr %34, align 8, !tbaa.struct !60
  br label %102

50:                                               ; preds = %30
  %51 = load i32, ptr %31, align 8, !tbaa !61
  %52 = add i32 %51, -1
  store i32 %52, ptr %31, align 8, !tbaa !61
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %53
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %54, i64 24, i1 false), !tbaa.struct !66
  %55 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !57
  %57 = icmp eq ptr %56, null
  br i1 %57, label %102, label %58

58:                                               ; preds = %50
  %59 = icmp eq i32 %52, 7
  br i1 %59, label %61, label %60

60:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 160, ptr noundef nonnull @.str.1) #18
  br label %61

61:                                               ; preds = %58, %60
  %62 = load i32, ptr %31, align 8, !tbaa !61
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %63, i32 1
  store i64 1, ptr %64, align 8, !tbaa.struct !58
  %65 = getelementptr inbounds i8, ptr %64, i64 8
  store i64 0, ptr %65, align 8, !tbaa.struct !60
  %66 = load ptr, ptr %55, align 8, !tbaa !57
  %67 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %63
  store ptr %66, ptr %67, align 8, !tbaa !62
  store ptr null, ptr %55, align 8, !tbaa !57
  %68 = add i32 %62, 1
  store i32 %68, ptr %31, align 8, !tbaa !61
  br label %102

69:                                               ; preds = %19, %15
  %70 = phi i32 [ %17, %15 ], [ %21, %19 ]
  %71 = icmp ult i32 %70, 8
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  %74 = zext nneg i32 %70 to i64
  %75 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %74, i32 1
  store i64 %10, ptr %75, align 8, !tbaa.struct !58
  %76 = getelementptr inbounds i8, ptr %75, i64 8
  store i64 %11, ptr %76, align 8, !tbaa.struct !60
  %77 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %74
  store ptr %1, ptr %77, align 8, !tbaa !62
  %78 = add nuw nsw i32 %70, 1
  store i32 %78, ptr %73, align 8, !tbaa !61
  br label %102

79:                                               ; preds = %69
  %80 = load ptr, ptr %0, align 8, !tbaa !54
  %81 = load i64, ptr %80, align 8
  %82 = trunc i64 %81 to i16
  switch i16 %82, label %85 [
    i16 10, label %83
    i16 12, label %83
  ]

83:                                               ; preds = %79, %79
  %84 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  br label %85

85:                                               ; preds = %79, %83
  %86 = phi ptr [ %84, %83 ], [ %80, %79 ]
  %87 = icmp eq i64 %10, 1
  %88 = select i1 %87, i1 %13, i1 false
  %89 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %86, ptr noundef %1) #18
  br i1 %88, label %93, label %90

90:                                               ; preds = %85
  %91 = tail call ptr @double_int_to_tree(ptr noundef %86, i64 %10, i64 %11) #18
  %92 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %86, ptr noundef %89, ptr noundef %91) #18
  br label %93

93:                                               ; preds = %85, %90
  %94 = phi ptr [ %92, %90 ], [ %89, %85 ]
  %95 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !57
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %93
  %99 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %86, ptr noundef nonnull %96, ptr noundef %94) #18
  br label %100

100:                                              ; preds = %93, %98
  %101 = phi ptr [ %99, %98 ], [ %94, %93 ]
  store ptr %101, ptr %95, align 8, !tbaa !57
  br label %102

102:                                              ; preds = %49, %61, %50, %4, %100, %72
  ret void
}

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare { i64, i64 } @double_int_add(i64, i64, i64, i64) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @aff_combination_add(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 1
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 1, i32 1
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = tail call { i64, i64 } @double_int_add(i64 %8, i64 %10, i64 %4, i64 %6) #18
  %12 = extractvalue { i64, i64 } %11, 0
  %13 = extractvalue { i64, i64 } %11, 1
  %14 = load ptr, ptr %0, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1023
  %18 = tail call { i64, i64 } @double_int_sext(i64 %12, i64 %13, i32 noundef %17) #18
  %19 = extractvalue { i64, i64 } %18, 0
  %20 = extractvalue { i64, i64 } %18, 1
  store i64 %19, ptr %7, align 8, !tbaa.struct !58
  store i64 %20, ptr %9, align 8, !tbaa.struct !60
  %21 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !61
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %2, %24
  %25 = phi i64 [ %32, %24 ], [ 0, %2 ]
  %26 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !62
  %28 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %25, i32 1
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr inbounds { i64, i64 }, ptr %28, i64 0, i32 1
  %31 = load i64, ptr %30, align 8
  tail call void @aff_combination_add_elt(ptr noundef nonnull %0, ptr noundef %27, i64 %29, i64 %31)
  %32 = add nuw nsw i64 %25, 1
  %33 = load i32, ptr %21, align 8, !tbaa !61
  %34 = zext i32 %33 to i64
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %24, label %36, !llvm.loop !67

36:                                               ; preds = %24, %2
  %37 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !57
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @aff_combination_add_elt(ptr noundef nonnull %0, ptr noundef nonnull %38, i64 1, i64 0)
  br label %41

41:                                               ; preds = %40, %36
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @aff_combination_convert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1023
  %7 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1023
  %10 = icmp ugt i32 %6, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = tail call ptr @aff_combination_to_tree(ptr noundef nonnull %0)
  %13 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %1, ptr noundef %12) #18
  tail call void @tree_to_aff_combination(ptr noundef %13, ptr noundef %1, ptr noundef nonnull %0)
  br label %89

14:                                               ; preds = %2
  store ptr %1, ptr %0, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load i64, ptr %1, align 8
  %20 = trunc i64 %19 to i16
  switch i16 %20, label %21 [
    i16 10, label %23
    i16 12, label %23
  ]

21:                                               ; preds = %18
  %22 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %16) #18
  store ptr %22, ptr %15, align 8, !tbaa !57
  br label %23

23:                                               ; preds = %18, %18, %21, %14
  %24 = load i32, ptr %4, align 4
  %25 = load i32, ptr %7, align 4
  %26 = xor i32 %25, %24
  %27 = and i32 %26, 1023
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %89, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1, i32 1
  %33 = load i64, ptr %32, align 8
  %34 = load ptr, ptr %0, align 8, !tbaa !54
  %35 = getelementptr inbounds %struct.tree_type, ptr %34, i64 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 1023
  %38 = tail call { i64, i64 } @double_int_sext(i64 %31, i64 %33, i32 noundef %37) #18
  %39 = extractvalue { i64, i64 } %38, 0
  %40 = extractvalue { i64, i64 } %38, 1
  store i64 %39, ptr %30, align 8, !tbaa.struct !58
  store i64 %40, ptr %32, align 8, !tbaa.struct !60
  %41 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !61
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %76, label %44

44:                                               ; preds = %29, %70
  %45 = phi i64 [ %72, %70 ], [ 0, %29 ]
  %46 = phi i32 [ %71, %70 ], [ 0, %29 ]
  %47 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %45, i32 1
  %48 = load i64, ptr %47, align 8
  %49 = getelementptr inbounds { i64, i64 }, ptr %47, i64 0, i32 1
  %50 = load i64, ptr %49, align 8
  %51 = load ptr, ptr %0, align 8, !tbaa !54
  %52 = getelementptr inbounds %struct.tree_type, ptr %51, i64 0, i32 6
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 1023
  %55 = tail call { i64, i64 } @double_int_sext(i64 %48, i64 %50, i32 noundef %54) #18
  %56 = extractvalue { i64, i64 } %55, 0
  %57 = extractvalue { i64, i64 } %55, 1
  %58 = icmp ne i64 %56, 0
  %59 = icmp ne i64 %57, 0
  %60 = select i1 %58, i1 true, i1 %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %44
  %62 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %45
  %63 = zext i32 %46 to i64
  %64 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %63
  %65 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %63, i32 1
  store i64 %56, ptr %65, align 8, !tbaa.struct !58
  %66 = getelementptr inbounds i8, ptr %65, i64 8
  store i64 %57, ptr %66, align 8, !tbaa.struct !60
  %67 = load ptr, ptr %62, align 8, !tbaa !62
  %68 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %1, ptr noundef %67) #18
  store ptr %68, ptr %64, align 8, !tbaa !62
  %69 = add i32 %46, 1
  br label %70

70:                                               ; preds = %44, %61
  %71 = phi i32 [ %69, %61 ], [ %46, %44 ]
  %72 = add nuw nsw i64 %45, 1
  %73 = load i32, ptr %41, align 8, !tbaa !61
  %74 = zext i32 %73 to i64
  %75 = icmp ult i64 %72, %74
  br i1 %75, label %44, label %76, !llvm.loop !68

76:                                               ; preds = %70, %29
  %77 = phi i32 [ 0, %29 ], [ %71, %70 ]
  %78 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  store i32 %77, ptr %78, align 8, !tbaa !61
  %79 = icmp ult i32 %77, 8
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load ptr, ptr %15, align 8, !tbaa !57
  %82 = icmp eq ptr %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %80
  %84 = zext nneg i32 %77 to i64
  %85 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %84, i32 1
  store i64 1, ptr %85, align 8, !tbaa.struct !58
  %86 = getelementptr inbounds i8, ptr %85, i64 8
  store i64 0, ptr %86, align 8, !tbaa.struct !60
  %87 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %84
  store ptr %81, ptr %87, align 8, !tbaa !62
  store ptr null, ptr %15, align 8, !tbaa !57
  %88 = add nuw nsw i32 %77, 1
  store i32 %88, ptr %78, align 8, !tbaa !61
  br label %89

89:                                               ; preds = %76, %80, %83, %23, %11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @aff_combination_to_tree(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !54
  %3 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = load i64, ptr %2, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %9 [
    i16 10, label %7
    i16 12, label %7
  ]

7:                                                ; preds = %1, %1
  %8 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi ptr [ %8, %7 ], [ %2, %1 ]
  %11 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !61
  %13 = icmp eq i32 %12, 8
  %14 = icmp eq ptr %4, null
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 420, ptr noundef nonnull @.str.1) #18
  br label %17

17:                                               ; preds = %9, %16
  %18 = load i32, ptr %11, align 8, !tbaa !61
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %17, %20
  %21 = phi i64 [ %30, %20 ], [ 0, %17 ]
  %22 = phi ptr [ %29, %20 ], [ %4, %17 ]
  %23 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !62
  %25 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %21, i32 1
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds { i64, i64 }, ptr %25, i64 0, i32 1
  %28 = load i64, ptr %27, align 8
  %29 = tail call fastcc ptr @add_elt_to_tree(ptr noundef %22, ptr noundef nonnull %2, ptr noundef %24, i64 %26, i64 %28, ptr noundef nonnull %0)
  %30 = add nuw nsw i64 %21, 1
  %31 = load i32, ptr %11, align 8, !tbaa !61
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %20, label %34, !llvm.loop !69

34:                                               ; preds = %20, %17
  %35 = phi ptr [ %4, %17 ], [ %29, %20 ]
  %36 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1, i32 1
  %39 = load i64, ptr %38, align 8
  %40 = tail call zeroext i8 @double_int_negative_p(i64 %37, i64 %39) #18
  %41 = icmp eq i8 %40, 0
  %42 = load i64, ptr %36, align 8
  %43 = load i64, ptr %38, align 8
  br i1 %41, label %48, label %44

44:                                               ; preds = %34
  %45 = tail call { i64, i64 } @double_int_neg(i64 %42, i64 %43) #18
  %46 = extractvalue { i64, i64 } %45, 0
  %47 = extractvalue { i64, i64 } %45, 1
  br label %48

48:                                               ; preds = %34, %44
  %49 = phi { i64, i64 } [ { i64 -1, i64 -1 }, %44 ], [ { i64 1, i64 0 }, %34 ]
  %50 = phi i64 [ %46, %44 ], [ %42, %34 ]
  %51 = phi i64 [ %47, %44 ], [ %43, %34 ]
  %52 = extractvalue { i64, i64 } %49, 1
  %53 = extractvalue { i64, i64 } %49, 0
  %54 = tail call ptr @double_int_to_tree(ptr noundef %10, i64 %50, i64 %51) #18
  %55 = tail call fastcc ptr @add_elt_to_tree(ptr noundef %35, ptr noundef nonnull %2, ptr noundef %54, i64 %53, i64 %52, ptr noundef nonnull %0)
  ret ptr %55
}

; Function Attrs: cold nounwind uwtable
define dso_local void @tree_to_aff_combination(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca %struct.affine_tree_combination, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #18
  %11 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #18
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %102 [
    i16 23, label %14
    i16 66, label %27
    i16 63, label %33
    i16 64, label %33
    i16 65, label %42
    i16 79, label %54
    i16 90, label %57
    i16 121, label %74
  ]

14:                                               ; preds = %3
  %15 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %11) #18
  %16 = extractvalue { i64, i64 } %15, 0
  %17 = extractvalue { i64, i64 } %15, 1
  store ptr %1, ptr %2, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 1
  %19 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 1, i32 1
  %20 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 4
  store ptr null, ptr %20, align 8, !tbaa !57
  %21 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %18, i8 0, i64 20, i1 false)
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1023
  %24 = tail call { i64, i64 } @double_int_sext(i64 %16, i64 %17, i32 noundef %23) #18
  %25 = extractvalue { i64, i64 } %24, 0
  %26 = extractvalue { i64, i64 } %24, 1
  store i64 %25, ptr %18, align 8, !tbaa.struct !58
  store i64 %26, ptr %19, align 8, !tbaa.struct !60
  br label %109

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  tail call void @tree_to_aff_combination(ptr noundef %29, ptr noundef %1, ptr noundef %2)
  %30 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  call void @tree_to_aff_combination(ptr noundef %31, ptr noundef %32, ptr noundef nonnull %4)
  call void @aff_combination_add(ptr noundef %2, ptr noundef nonnull %4)
  br label %109

33:                                               ; preds = %3, %3
  %34 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  tail call void @tree_to_aff_combination(ptr noundef %35, ptr noundef %1, ptr noundef %2)
  %36 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  call void @tree_to_aff_combination(ptr noundef %37, ptr noundef %1, ptr noundef nonnull %4)
  %38 = and i64 %12, 65535
  %39 = icmp eq i64 %38, 64
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  call void @aff_combination_scale(ptr noundef nonnull %4, i64 -1, i64 -1)
  br label %41

41:                                               ; preds = %40, %33
  call void @aff_combination_add(ptr noundef %2, ptr noundef nonnull %4)
  br label %109

42:                                               ; preds = %3
  %43 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 23
  br i1 %47, label %48, label %102

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  tail call void @tree_to_aff_combination(ptr noundef %50, ptr noundef %1, ptr noundef %2)
  %51 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %44) #18
  %52 = extractvalue { i64, i64 } %51, 0
  %53 = extractvalue { i64, i64 } %51, 1
  tail call void @aff_combination_scale(ptr noundef %2, i64 %52, i64 %53)
  br label %109

54:                                               ; preds = %3
  %55 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  tail call void @tree_to_aff_combination(ptr noundef %56, ptr noundef %1, ptr noundef %2)
  tail call void @aff_combination_scale(ptr noundef %2, i64 -1, i64 -1)
  br label %109

57:                                               ; preds = %3
  %58 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !46
  tail call void @tree_to_aff_combination(ptr noundef %59, ptr noundef %1, ptr noundef %2)
  tail call void @aff_combination_scale(ptr noundef %2, i64 -1, i64 -1)
  %60 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 1
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 1, i32 1
  %63 = load i64, ptr %62, align 8
  %64 = tail call { i64, i64 } @double_int_add(i64 %61, i64 %63, i64 -1, i64 -1) #18
  %65 = extractvalue { i64, i64 } %64, 0
  %66 = extractvalue { i64, i64 } %64, 1
  %67 = load ptr, ptr %2, align 8, !tbaa !54
  %68 = getelementptr inbounds %struct.tree_type, ptr %67, i64 0, i32 6
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 1023
  %71 = tail call { i64, i64 } @double_int_sext(i64 %65, i64 %66, i32 noundef %70) #18
  %72 = extractvalue { i64, i64 } %71, 0
  %73 = extractvalue { i64, i64 } %71, 1
  store i64 %72, ptr %60, align 8, !tbaa.struct !58
  store i64 %73, ptr %62, align 8, !tbaa.struct !60
  br label %109

74:                                               ; preds = %3
  %75 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !46
  %77 = call ptr @get_inner_reference(ptr noundef %76, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, i8 noundef zeroext 0) #18
  %78 = load i64, ptr %6, align 8, !tbaa !59
  %79 = and i64 %78, 7
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %74
  %82 = ashr exact i64 %78, 3
  store ptr %1, ptr %2, align 8, !tbaa !54
  %83 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 1
  %84 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 1, i32 1
  %85 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 4
  store ptr null, ptr %85, align 8, !tbaa !57
  %86 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %83, i8 0, i64 20, i1 false)
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 1023
  %89 = call { i64, i64 } @double_int_sext(i64 %82, i64 0, i32 noundef %88) #18
  %90 = extractvalue { i64, i64 } %89, 0
  %91 = extractvalue { i64, i64 } %89, 1
  store i64 %90, ptr %83, align 8, !tbaa.struct !58
  store i64 %91, ptr %84, align 8, !tbaa.struct !60
  %92 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %77) #18
  %93 = load i64, ptr %92, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 121
  br i1 %95, label %96, label %97

96:                                               ; preds = %81
  call void @aff_combination_add_elt(ptr noundef nonnull %2, ptr noundef nonnull %92, i64 1, i64 0)
  br label %98

97:                                               ; preds = %81
  call void @tree_to_aff_combination(ptr noundef nonnull %92, ptr noundef %1, ptr noundef nonnull %4)
  call void @aff_combination_add(ptr noundef nonnull %2, ptr noundef nonnull %4)
  br label %98

98:                                               ; preds = %97, %96
  %99 = load ptr, ptr %5, align 8, !tbaa !35
  %100 = icmp eq ptr %99, null
  br i1 %100, label %109, label %101

101:                                              ; preds = %98
  call void @tree_to_aff_combination(ptr noundef nonnull %99, ptr noundef %1, ptr noundef nonnull %4)
  call void @aff_combination_add(ptr noundef nonnull %2, ptr noundef nonnull %4)
  br label %109

102:                                              ; preds = %3, %74, %42
  store ptr %1, ptr %2, align 8, !tbaa !54
  %103 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 1
  %104 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 2
  %105 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 4
  store ptr null, ptr %105, align 8, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %103, i8 0, i64 20, i1 false)
  store i32 1, ptr %104, align 8, !tbaa !61
  %106 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 3
  store ptr %11, ptr %106, align 8, !tbaa !62
  %107 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 3, i64 0, i32 1
  store i64 1, ptr %107, align 8, !tbaa.struct !58
  %108 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 3, i64 0, i32 1, i32 1
  store i64 0, ptr %108, align 8, !tbaa.struct !60
  br label %109

109:                                              ; preds = %98, %101, %102, %57, %54, %48, %41, %27, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %4) #18
  ret void
}

declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

declare { i64, i64 } @tree_to_double_int(ptr noundef) local_unnamed_addr #3

declare ptr @get_inner_reference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @add_elt_to_tree(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, i64 %4, ptr nocapture noundef readonly %5) unnamed_addr #9 !prof !34 {
  %7 = load i64, ptr %1, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %11 [
    i16 10, label %9
    i16 12, label %9
  ]

9:                                                ; preds = %6, %6
  %10 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi ptr [ %10, %9 ], [ %1, %6 ]
  %13 = load ptr, ptr %5, align 8, !tbaa !54
  %14 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1023
  %17 = tail call { i64, i64 } @double_int_sext(i64 %3, i64 %4, i32 noundef %16) #18
  %18 = extractvalue { i64, i64 } %17, 0
  %19 = extractvalue { i64, i64 } %17, 1
  %20 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %12, ptr noundef %2) #18
  %21 = icmp ne i64 %18, 1
  %22 = icmp ne i64 %19, 0
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %35, label %24

24:                                               ; preds = %11
  %25 = icmp eq ptr %0, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %1, ptr noundef %20) #18
  br label %80

28:                                               ; preds = %24
  %29 = load i64, ptr %1, align 8
  %30 = trunc i64 %29 to i16
  switch i16 %30, label %33 [
    i16 10, label %31
    i16 12, label %31
  ]

31:                                               ; preds = %28, %28
  %32 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef %20) #18
  br label %80

33:                                               ; preds = %28
  %34 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef %20) #18
  br label %80

35:                                               ; preds = %11
  %36 = icmp ne i64 %18, -1
  %37 = icmp ne i64 %19, -1
  %38 = select i1 %36, i1 true, i1 %37
  %39 = icmp eq ptr %0, null
  br i1 %38, label %52, label %40

40:                                               ; preds = %35
  br i1 %39, label %41, label %44

41:                                               ; preds = %40
  %42 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %12, ptr noundef %20) #18
  %43 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %1, ptr noundef %42) #18
  br label %80

44:                                               ; preds = %40
  %45 = load i64, ptr %1, align 8
  %46 = trunc i64 %45 to i16
  switch i16 %46, label %50 [
    i16 10, label %47
    i16 12, label %47
  ]

47:                                               ; preds = %44, %44
  %48 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %12, ptr noundef %20) #18
  %49 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef %48) #18
  br label %80

50:                                               ; preds = %44
  %51 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef %20) #18
  br label %80

52:                                               ; preds = %35
  br i1 %39, label %53, label %57

53:                                               ; preds = %52
  %54 = tail call ptr @double_int_to_tree(ptr noundef %12, i64 %18, i64 %19) #18
  %55 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %12, ptr noundef %20, ptr noundef %54) #18
  %56 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %1, ptr noundef %55) #18
  br label %80

57:                                               ; preds = %52
  %58 = tail call zeroext i8 @double_int_negative_p(i64 %18, i64 %19) #18
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = tail call { i64, i64 } @double_int_neg(i64 %18, i64 %19) #18
  %62 = extractvalue { i64, i64 } %61, 0
  %63 = extractvalue { i64, i64 } %61, 1
  br label %64

64:                                               ; preds = %57, %60
  %65 = phi i32 [ 64, %60 ], [ 63, %57 ]
  %66 = phi i64 [ %62, %60 ], [ %18, %57 ]
  %67 = phi i64 [ %63, %60 ], [ %19, %57 ]
  %68 = tail call ptr @double_int_to_tree(ptr noundef %12, i64 %66, i64 %67) #18
  %69 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %12, ptr noundef %20, ptr noundef %68) #18
  %70 = load i64, ptr %1, align 8
  %71 = trunc i64 %70 to i16
  switch i16 %71, label %78 [
    i16 10, label %72
    i16 12, label %72
  ]

72:                                               ; preds = %64, %64
  br i1 %59, label %75, label %73

73:                                               ; preds = %72
  %74 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %12, ptr noundef %69) #18
  br label %75

75:                                               ; preds = %73, %72
  %76 = phi ptr [ %74, %73 ], [ %69, %72 ]
  %77 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef %76) #18
  br label %80

78:                                               ; preds = %64
  %79 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %65, ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef %69) #18
  br label %80

80:                                               ; preds = %78, %75, %53, %50, %47, %41, %33, %31, %26
  %81 = phi ptr [ %32, %31 ], [ %34, %33 ], [ %27, %26 ], [ %49, %47 ], [ %51, %50 ], [ %43, %41 ], [ %77, %75 ], [ %79, %78 ], [ %56, %53 ]
  ret ptr %81
}

declare zeroext i8 @double_int_negative_p(i64, i64) local_unnamed_addr #3

declare { i64, i64 } @double_int_neg(i64, i64) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @unshare_aff_combination(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !61
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1, %5
  %6 = phi i64 [ %10, %5 ], [ 0, %1 ]
  %7 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = tail call ptr @unshare_expr(ptr noundef %8) #18
  store ptr %9, ptr %7, align 8, !tbaa !62
  %10 = add nuw nsw i64 %6, 1
  %11 = load i32, ptr %2, align 8, !tbaa !61
  %12 = zext i32 %11 to i64
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %5, label %14, !llvm.loop !70

14:                                               ; preds = %5, %1
  %15 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @unshare_expr(ptr noundef nonnull %16) #18
  store ptr %19, ptr %15, align 8, !tbaa !57
  br label %20

20:                                               ; preds = %18, %14
  ret void
}

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @aff_combination_remove_elt(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !34 {
  %3 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !61
  %5 = add i32 %4, -1
  store i32 %5, ptr %3, align 8, !tbaa !61
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %8
  %10 = zext i32 %5 to i64
  %11 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !66
  br label %12

12:                                               ; preds = %7, %2
  %13 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = zext i32 %5 to i64
  %18 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %17, i32 1
  store i64 1, ptr %18, align 8, !tbaa.struct !58
  %19 = getelementptr inbounds i8, ptr %18, i64 8
  store i64 0, ptr %19, align 8, !tbaa.struct !60
  %20 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %17
  store ptr %14, ptr %20, align 8, !tbaa !62
  store ptr null, ptr %13, align 8, !tbaa !57
  store i32 %4, ptr %3, align 8, !tbaa !61
  br label %21

21:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @aff_combination_mult(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %1, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = xor i32 %9, %6
  %11 = and i32 %10, 1023
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 523, ptr noundef nonnull @.str.1) #18
  br label %14

14:                                               ; preds = %3, %13
  %15 = load ptr, ptr %0, align 8, !tbaa !54
  store ptr %15, ptr %2, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 1
  %17 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 4
  store ptr null, ptr %17, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %16, i8 0, i64 20, i1 false)
  %19 = load i32, ptr %18, align 8, !tbaa !61
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %14, %21
  %22 = phi i64 [ %29, %21 ], [ 0, %14 ]
  %23 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %22
  %24 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %22, i32 1
  %25 = load ptr, ptr %23, align 8, !tbaa !62
  %26 = load i64, ptr %24, align 8
  %27 = getelementptr inbounds { i64, i64 }, ptr %24, i64 0, i32 1
  %28 = load i64, ptr %27, align 8
  tail call fastcc void @aff_combination_add_product(ptr noundef nonnull %0, i64 %26, i64 %28, ptr noundef %25, ptr noundef nonnull %2)
  %29 = add nuw nsw i64 %22, 1
  %30 = load i32, ptr %18, align 8, !tbaa !61
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %21, label %33, !llvm.loop !71

33:                                               ; preds = %21, %14
  %34 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call fastcc void @aff_combination_add_product(ptr noundef nonnull %0, i64 1, i64 0, ptr noundef nonnull %35, ptr noundef nonnull %2)
  br label %38

38:                                               ; preds = %37, %33
  %39 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 1, i32 1
  %42 = load i64, ptr %41, align 8
  tail call fastcc void @aff_combination_add_product(ptr noundef nonnull %0, i64 %40, i64 %42, ptr noundef null, ptr noundef nonnull %2)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @aff_combination_add_product(ptr nocapture noundef readonly %0, i64 %1, i64 %2, ptr noundef %3, ptr nocapture noundef %4) unnamed_addr #9 !prof !34 {
  %6 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !61
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %5
  %10 = icmp eq ptr %3, null
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i64 [ 0, %9 ], [ %29, %20 ]
  %13 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !62
  br i1 %10, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %17, ptr noundef nonnull %3) #18
  %19 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %17, ptr noundef %14, ptr noundef %18) #18
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi ptr [ %19, %15 ], [ %14, %11 ]
  %22 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %12, i32 1
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds { i64, i64 }, ptr %22, i64 0, i32 1
  %25 = load i64, ptr %24, align 8
  %26 = tail call { i64, i64 } @double_int_mul(i64 %1, i64 %2, i64 %23, i64 %25) #18
  %27 = extractvalue { i64, i64 } %26, 0
  %28 = extractvalue { i64, i64 } %26, 1
  tail call void @aff_combination_add_elt(ptr noundef %4, ptr noundef %21, i64 %27, i64 %28)
  %29 = add nuw nsw i64 %12, 1
  %30 = load i32, ptr %6, align 8, !tbaa !61
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %11, label %33, !llvm.loop !72

33:                                               ; preds = %20, %5
  %34 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %33
  %38 = icmp eq ptr %3, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  %42 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %41, ptr noundef nonnull %3) #18
  %43 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %41, ptr noundef nonnull %35, ptr noundef %42) #18
  br label %44

44:                                               ; preds = %39, %37
  %45 = phi ptr [ %43, %39 ], [ %35, %37 ]
  tail call void @aff_combination_add_elt(ptr noundef %4, ptr noundef %45, i64 %1, i64 %2)
  br label %46

46:                                               ; preds = %44, %33
  %47 = icmp eq ptr %3, null
  %48 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1, i32 1
  %51 = load i64, ptr %50, align 8
  %52 = tail call { i64, i64 } @double_int_mul(i64 %1, i64 %2, i64 %49, i64 %51) #18
  %53 = extractvalue { i64, i64 } %52, 0
  %54 = extractvalue { i64, i64 } %52, 1
  br i1 %47, label %56, label %55

55:                                               ; preds = %46
  tail call void @aff_combination_add_elt(ptr noundef %4, ptr noundef nonnull %3, i64 %53, i64 %54)
  br label %71

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.affine_tree_combination, ptr %4, i64 0, i32 1
  %58 = load i64, ptr %57, align 8
  %59 = getelementptr inbounds %struct.affine_tree_combination, ptr %4, i64 0, i32 1, i32 1
  %60 = load i64, ptr %59, align 8
  %61 = tail call { i64, i64 } @double_int_add(i64 %58, i64 %60, i64 %53, i64 %54) #18
  %62 = extractvalue { i64, i64 } %61, 0
  %63 = extractvalue { i64, i64 } %61, 1
  %64 = load ptr, ptr %4, align 8, !tbaa !54
  %65 = getelementptr inbounds %struct.tree_type, ptr %64, i64 0, i32 6
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 1023
  %68 = tail call { i64, i64 } @double_int_sext(i64 %62, i64 %63, i32 noundef %67) #18
  %69 = extractvalue { i64, i64 } %68, 0
  %70 = extractvalue { i64, i64 } %68, 1
  store i64 %69, ptr %57, align 8, !tbaa.struct !58
  store i64 %70, ptr %59, align 8, !tbaa.struct !60
  br label %71

71:                                               ; preds = %56, %55
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @aff_combination_expand(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.affine_tree_combination, align 8
  %4 = alloca %struct.affine_tree_combination, align 8
  %5 = alloca %struct.affine_tree_combination, align 8
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %5) #18
  %6 = load ptr, ptr %0, align 8, !tbaa !54
  store ptr %6, ptr %3, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.affine_tree_combination, ptr %3, i64 0, i32 1
  %8 = getelementptr inbounds %struct.affine_tree_combination, ptr %3, i64 0, i32 4
  store ptr null, ptr %8, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, i8 0, i64 20, i1 false)
  %10 = load i32, ptr %9, align 8, !tbaa !61
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %285, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.affine_tree_combination, ptr %5, i64 0, i32 1
  %14 = getelementptr inbounds %struct.affine_tree_combination, ptr %5, i64 0, i32 4
  br label %15

15:                                               ; preds = %12, %280
  %16 = phi i64 [ 0, %12 ], [ %281, %280 ]
  %17 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !62
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = load i64, ptr %18, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 116
  br i1 %23, label %24, label %37

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1023
  %28 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = getelementptr inbounds %struct.tree_type, ptr %31, i64 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 1023
  %35 = icmp ult i32 %27, %34
  %36 = select i1 %35, ptr %18, ptr %29
  br label %37

37:                                               ; preds = %24, %15
  %38 = phi ptr [ %18, %15 ], [ %36, %24 ]
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 141
  br i1 %41, label %42, label %280

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.tree_ssa_name, ptr %38, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 255
  %47 = icmp eq i32 %46, 6
  br i1 %47, label %48, label %280

48:                                               ; preds = %42
  %49 = zext nneg i32 %46 to i64
  %50 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !50
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !59
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %57

57:                                               ; preds = %56, %48
  %58 = getelementptr inbounds i8, ptr %44, i64 %54
  %59 = load ptr, ptr %58, align 8, !tbaa !35
  %60 = icmp eq ptr %59, %38
  br i1 %60, label %61, label %280

61:                                               ; preds = %57
  %62 = load i32, ptr %44, align 8
  %63 = trunc i32 %62 to i8
  switch i8 %63, label %66 [
    i8 6, label %64
    i8 1, label %64
    i8 8, label %67
  ]

64:                                               ; preds = %61, %61
  %65 = lshr i32 %62, 16
  br label %67

66:                                               ; preds = %61
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1446, ptr noundef nonnull @.str.1) #18
  br label %67

67:                                               ; preds = %66, %64, %61
  %68 = phi i32 [ %65, %64 ], [ 0, %66 ], [ 59, %61 ]
  %69 = zext nneg i32 %68 to i64
  %70 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !46
  %72 = icmp eq i8 %71, 3
  br i1 %72, label %73, label %93

73:                                               ; preds = %67
  %74 = load i32, ptr %44, align 8
  %75 = and i32 %74, 255
  %76 = add nsw i32 %75, -1
  %77 = icmp ult i32 %76, 9
  call void @llvm.assume(i1 %77)
  %78 = zext nneg i32 %75 to i64
  %79 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !50
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %81
  %83 = load i64, ptr %82, align 8, !tbaa !59
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %86

86:                                               ; preds = %85, %73
  %87 = getelementptr inbounds i8, ptr %44, i64 %83
  %88 = getelementptr inbounds ptr, ptr %87, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !35
  %90 = load i64, ptr %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = and i32 %91, 65535
  br label %93

93:                                               ; preds = %67, %86
  %94 = phi i32 [ %92, %86 ], [ %68, %67 ]
  %95 = icmp eq i32 %94, 141
  br i1 %95, label %129, label %96

96:                                               ; preds = %93
  %97 = zext nneg i32 %94 to i64
  %98 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !50
  %100 = add i32 %99, -4
  %101 = icmp ult i32 %100, 7
  br i1 %101, label %129, label %102

102:                                              ; preds = %96
  %103 = zext nneg i32 %94 to i64
  %104 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !46
  %106 = icmp eq i8 %105, 3
  br i1 %106, label %107, label %280

107:                                              ; preds = %102
  %108 = load i32, ptr %44, align 8
  %109 = and i32 %108, 255
  %110 = add nsw i32 %109, -10
  %111 = icmp ult i32 %110, -9
  br i1 %111, label %125, label %112

112:                                              ; preds = %107
  %113 = zext nneg i32 %109 to i64
  %114 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !50
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %116
  %118 = load i64, ptr %117, align 8, !tbaa !59
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %121

121:                                              ; preds = %120, %112
  %122 = getelementptr inbounds i8, ptr %44, i64 %118
  %123 = getelementptr inbounds ptr, ptr %122, i64 1
  %124 = load ptr, ptr %123, align 8, !tbaa !35
  br label %125

125:                                              ; preds = %107, %121
  %126 = phi ptr [ %124, %121 ], [ null, %107 ]
  %127 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %126) #18
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %280, label %129

129:                                              ; preds = %96, %125, %93
  %130 = zext nneg i32 %94 to i64
  %131 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !50
  %133 = icmp eq i32 %132, 4
  br i1 %133, label %280, label %134

134:                                              ; preds = %129
  %135 = load ptr, ptr %1, align 8, !tbaa !35
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = call ptr @pointer_map_create() #18
  store ptr %138, ptr %1, align 8, !tbaa !35
  br label %139

139:                                              ; preds = %137, %134
  %140 = load ptr, ptr %1, align 8, !tbaa !35
  %141 = call ptr @pointer_map_insert(ptr noundef %140, ptr noundef nonnull %18) #18
  %142 = load ptr, ptr %141, align 8, !tbaa !35
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %264

144:                                              ; preds = %139
  %145 = call ptr @xmalloc(i64 noundef 240) #18
  %146 = getelementptr inbounds %struct.name_expansion, ptr %145, i64 0, i32 1
  %147 = load i8, ptr %146, align 8
  %148 = or i8 %147, 1
  store i8 %148, ptr %146, align 8
  store ptr %145, ptr %141, align 8, !tbaa !35
  %149 = icmp eq ptr %18, %38
  br i1 %149, label %255, label %150

150:                                              ; preds = %144
  %151 = load i64, ptr %20, align 8
  %152 = trunc i64 %151 to i32
  %153 = and i32 %152, 65535
  %154 = add nsw i32 %153, -6
  %155 = icmp ult i32 %154, 3
  br i1 %155, label %156, label %255

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !46
  %159 = load i64, ptr %158, align 8
  %160 = trunc i64 %159 to i32
  %161 = and i32 %160, 65535
  %162 = add nsw i32 %161, -6
  %163 = icmp ult i32 %162, 3
  br i1 %163, label %164, label %255

164:                                              ; preds = %156
  %165 = and i64 %159, 2097152
  %166 = icmp eq i64 %165, 0
  %167 = load i32, ptr @flag_wrapv, align 4
  %168 = icmp eq i32 %167, 0
  %169 = select i1 %166, i1 %168, i1 false
  %170 = load i32, ptr @flag_trapv, align 4
  %171 = icmp eq i32 %170, 0
  %172 = select i1 %169, i1 %171, i1 false
  %173 = load i32, ptr @flag_strict_overflow, align 4
  %174 = icmp ne i32 %173, 0
  %175 = select i1 %172, i1 %174, i1 false
  br i1 %175, label %176, label %255

176:                                              ; preds = %164
  %177 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 6
  %178 = load i32, ptr %177, align 4
  %179 = and i32 %178, 1023
  %180 = getelementptr inbounds %struct.tree_type, ptr %158, i64 0, i32 6
  %181 = load i32, ptr %180, align 4
  %182 = and i32 %181, 1023
  %183 = icmp ugt i32 %179, %182
  %184 = add nsw i32 %94, -63
  %185 = icmp ult i32 %184, 3
  %186 = select i1 %183, i1 %185, i1 false
  br i1 %186, label %187, label %255

187:                                              ; preds = %176
  %188 = getelementptr inbounds %struct.gimple_statement_base, ptr %44, i64 0, i32 3
  %189 = load i32, ptr %188, align 4, !tbaa !46
  %190 = icmp ugt i32 %189, 2
  call void @llvm.assume(i1 %190)
  %191 = load i32, ptr %44, align 8
  %192 = and i32 %191, 255
  %193 = add nsw i32 %192, -1
  %194 = icmp ult i32 %193, 9
  call void @llvm.assume(i1 %194)
  %195 = zext nneg i32 %192 to i64
  %196 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %195
  %197 = load i32, ptr %196, align 4, !tbaa !50
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %198
  %200 = load i64, ptr %199, align 8, !tbaa !59
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %187
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %203

203:                                              ; preds = %202, %187
  %204 = getelementptr inbounds i8, ptr %44, i64 %200
  %205 = getelementptr inbounds ptr, ptr %204, i64 2
  %206 = load ptr, ptr %205, align 8, !tbaa !35
  %207 = load i64, ptr %206, align 8
  %208 = and i64 %207, 65535
  %209 = icmp eq i64 %208, 23
  br i1 %209, label %210, label %255

210:                                              ; preds = %203
  %211 = load i32, ptr %44, align 8
  %212 = and i32 %211, 255
  %213 = add nsw i32 %212, -10
  %214 = icmp ult i32 %213, -9
  br i1 %214, label %228, label %215

215:                                              ; preds = %210
  %216 = zext nneg i32 %212 to i64
  %217 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !50
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %219
  %221 = load i64, ptr %220, align 8, !tbaa !59
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %215
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %224

224:                                              ; preds = %223, %215
  %225 = getelementptr inbounds i8, ptr %44, i64 %221
  %226 = getelementptr inbounds ptr, ptr %225, i64 1
  %227 = load ptr, ptr %226, align 8, !tbaa !35
  br label %228

228:                                              ; preds = %210, %224
  %229 = phi ptr [ %227, %224 ], [ null, %210 ]
  %230 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %20, ptr noundef %229) #18
  %231 = load i32, ptr %188, align 4, !tbaa !46
  %232 = icmp ugt i32 %231, 2
  br i1 %232, label %233, label %251

233:                                              ; preds = %228
  %234 = load i32, ptr %44, align 8
  %235 = and i32 %234, 255
  %236 = add nsw i32 %235, -10
  %237 = icmp ult i32 %236, -9
  br i1 %237, label %251, label %238

238:                                              ; preds = %233
  %239 = zext nneg i32 %235 to i64
  %240 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %239
  %241 = load i32, ptr %240, align 4, !tbaa !50
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %242
  %244 = load i64, ptr %243, align 8, !tbaa !59
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %238
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %247

247:                                              ; preds = %246, %238
  %248 = getelementptr inbounds i8, ptr %44, i64 %244
  %249 = getelementptr inbounds ptr, ptr %248, i64 2
  %250 = load ptr, ptr %249, align 8, !tbaa !35
  br label %251

251:                                              ; preds = %228, %233, %247
  %252 = phi ptr [ null, %228 ], [ %250, %247 ], [ null, %233 ]
  %253 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %20, ptr noundef %252) #18
  %254 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %94, ptr noundef nonnull %20, ptr noundef %230, ptr noundef %253) #18
  br label %259

255:                                              ; preds = %156, %150, %203, %176, %164, %144
  %256 = call ptr @gimple_assign_rhs_to_tree(ptr noundef nonnull %44) #18
  br i1 %149, label %259, label %257

257:                                              ; preds = %255
  %258 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %20, ptr noundef %256) #18
  br label %259

259:                                              ; preds = %255, %257, %251
  %260 = phi ptr [ %254, %251 ], [ %258, %257 ], [ %256, %255 ]
  %261 = load ptr, ptr %0, align 8, !tbaa !54
  call void @tree_to_aff_combination(ptr noundef %260, ptr noundef %261, ptr noundef nonnull %4)
  call void @aff_combination_expand(ptr noundef nonnull %4, ptr noundef nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %145, ptr noundef nonnull align 8 dereferenceable(232) %4, i64 232, i1 false), !tbaa.struct !73
  %262 = load i8, ptr %146, align 8
  %263 = and i8 %262, -2
  store i8 %263, ptr %146, align 8
  br label %271

264:                                              ; preds = %139
  %265 = getelementptr inbounds %struct.name_expansion, ptr %142, i64 0, i32 1
  %266 = load i8, ptr %265, align 8
  %267 = and i8 %266, 1
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %264
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 653, ptr noundef nonnull @.str.1) #18
  br label %270

270:                                              ; preds = %264, %269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %4, ptr noundef nonnull align 8 dereferenceable(232) %142, i64 232, i1 false), !tbaa.struct !73
  br label %271

271:                                              ; preds = %270, %259
  %272 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %16, i32 1
  %273 = load i64, ptr %272, align 8, !tbaa.struct !58
  %274 = getelementptr inbounds i8, ptr %272, i64 8
  %275 = load i64, ptr %274, align 8, !tbaa.struct !60
  %276 = load ptr, ptr %0, align 8, !tbaa !54
  store ptr %276, ptr %5, align 8, !tbaa !54
  store ptr null, ptr %14, align 8, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %13, i8 0, i64 20, i1 false)
  %277 = call { i64, i64 } @double_int_neg(i64 %273, i64 %275) #18
  %278 = extractvalue { i64, i64 } %277, 0
  %279 = extractvalue { i64, i64 } %277, 1
  call void @aff_combination_add_elt(ptr noundef nonnull %5, ptr noundef nonnull %18, i64 %278, i64 %279)
  call void @aff_combination_scale(ptr noundef nonnull %4, i64 %273, i64 %275)
  call void @aff_combination_add(ptr noundef nonnull %3, ptr noundef nonnull %4)
  call void @aff_combination_add(ptr noundef nonnull %3, ptr noundef nonnull %5)
  br label %280

280:                                              ; preds = %125, %129, %102, %42, %57, %37, %271
  %281 = add nuw nsw i64 %16, 1
  %282 = load i32, ptr %9, align 8, !tbaa !61
  %283 = zext i32 %282 to i64
  %284 = icmp ult i64 %281, %283
  br i1 %284, label %15, label %285, !llvm.loop !74

285:                                              ; preds = %280, %2
  call void @aff_combination_add(ptr noundef nonnull %0, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %3) #18
  ret void
}

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare ptr @pointer_map_create() local_unnamed_addr #3

declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @gimple_assign_rhs_to_tree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @tree_to_aff_combination_expand(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #9 !prof !34 {
  tail call void @tree_to_aff_combination(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  tail call void @aff_combination_expand(ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @free_affine_expand_cache(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  tail call void @pointer_map_traverse(ptr noundef nonnull %2, ptr noundef nonnull @free_name_expansion, ptr noundef null) #18
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  tail call void @pointer_map_destroy(ptr noundef %5) #18
  store ptr null, ptr %0, align 8, !tbaa !35
  br label %6

6:                                                ; preds = %1, %4
  ret void
}

declare void @pointer_map_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define internal noundef zeroext i8 @free_name_expansion(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #13 !prof !34 {
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  tail call void @free(ptr noundef %4)
  ret i8 1
}

declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @aff_combination_constant_multiple_p(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #18
  store i8 0, ptr %4, align 1, !tbaa !46
  %5 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !61
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = icmp ne i64 %10, 0
  %14 = icmp ne i64 %12, 0
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %83

17:                                               ; preds = %8, %3
  %18 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !61
  %20 = icmp eq i32 %6, %19
  br i1 %20, label %21, label %83

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !57
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %83

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !57
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %83

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1
  %31 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 1
  %32 = load i64, ptr %30, align 8
  %33 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1, i32 1
  %34 = load i64, ptr %33, align 8
  %35 = load i64, ptr %31, align 8
  %36 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 1, i32 1
  %37 = load i64, ptr %36, align 8
  %38 = call fastcc zeroext i8 @double_int_constant_multiple_p(i64 %32, i64 %34, i64 %35, i64 %37, ptr noundef nonnull %4, ptr noundef %2), !range !75
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %83, label %40

40:                                               ; preds = %29
  %41 = load i32, ptr %18, align 8, !tbaa !61
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %79, label %48

43:                                               ; preds = %68
  %44 = add nuw nsw i64 %49, 1
  %45 = load i32, ptr %18, align 8, !tbaa !61
  %46 = zext i32 %45 to i64
  %47 = icmp ult i64 %44, %46
  br i1 %47, label %48, label %79, !llvm.loop !76

48:                                               ; preds = %40, %43
  %49 = phi i64 [ %44, %43 ], [ 0, %40 ]
  %50 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !62
  %52 = load i32, ptr %5, align 8, !tbaa !61
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %65, label %59

54:                                               ; preds = %59
  %55 = add nuw nsw i64 %60, 1
  %56 = load i32, ptr %5, align 8, !tbaa !61
  %57 = zext i32 %56 to i64
  %58 = icmp ult i64 %55, %57
  br i1 %58, label %59, label %65, !llvm.loop !77

59:                                               ; preds = %48, %54
  %60 = phi i64 [ %55, %54 ], [ 0, %48 ]
  %61 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !62
  %63 = tail call i32 @operand_equal_p(ptr noundef %62, ptr noundef %51, i32 noundef 0) #18
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %54, label %65

65:                                               ; preds = %59, %54, %48
  %66 = phi ptr [ null, %48 ], [ %61, %59 ], [ null, %54 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %83, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.aff_comb_elt, ptr %66, i64 0, i32 1
  %70 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %49, i32 1
  %71 = load i64, ptr %69, align 8
  %72 = getelementptr inbounds %struct.aff_comb_elt, ptr %66, i64 0, i32 1, i32 1
  %73 = load i64, ptr %72, align 8
  %74 = load i64, ptr %70, align 8
  %75 = getelementptr inbounds { i64, i64 }, ptr %70, i64 0, i32 1
  %76 = load i64, ptr %75, align 8
  %77 = call fastcc zeroext i8 @double_int_constant_multiple_p(i64 %71, i64 %73, i64 %74, i64 %76, ptr noundef nonnull %4, ptr noundef %2), !range !75
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %83, label %43

79:                                               ; preds = %43, %40
  %80 = load i8, ptr %4, align 1, !tbaa !46
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 782, ptr noundef nonnull @.str.1) #18
  br label %83

83:                                               ; preds = %65, %68, %82, %79, %29, %21, %25, %17, %16
  %84 = phi i8 [ 1, %16 ], [ 0, %17 ], [ 0, %25 ], [ 0, %21 ], [ 0, %29 ], [ 1, %79 ], [ 1, %82 ], [ 0, %68 ], [ 0, %65 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #18
  ret i8 %84
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @double_int_constant_multiple_p(i64 %0, i64 %1, i64 %2, i64 %3, ptr nocapture noundef %4, ptr nocapture noundef %5) unnamed_addr #9 !prof !34 {
  %7 = alloca %struct.double_int, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18
  %8 = icmp ne i64 %0, 0
  %9 = icmp ne i64 %1, 0
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %6
  %12 = icmp ne i64 %2, 0
  %13 = icmp ne i64 %3, 0
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = call { i64, i64 } @double_int_sdivmod(i64 %0, i64 %1, i64 %2, i64 %3, i32 noundef 69, ptr noundef nonnull %7) #18
  %17 = extractvalue { i64, i64 } %16, 0
  %18 = extractvalue { i64, i64 } %16, 1
  %19 = load i64, ptr %7, align 8
  %20 = getelementptr inbounds { i64, i64 }, ptr %7, i64 0, i32 1
  %21 = load i64, ptr %20, align 8
  %22 = icmp ne i64 %19, 0
  %23 = icmp ne i64 %21, 0
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %15
  %26 = load i8, ptr %4, align 1, !tbaa !46
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = load i64, ptr %5, align 8
  %30 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = icmp ne i64 %29, %17
  %33 = icmp ne i64 %31, %18
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %37, label %35

35:                                               ; preds = %28, %25
  store i8 1, ptr %4, align 1, !tbaa !46
  store i64 %17, ptr %5, align 8, !tbaa.struct !58
  %36 = getelementptr inbounds i8, ptr %5, i64 8
  store i64 %18, ptr %36, align 8, !tbaa.struct !60
  br label %37

37:                                               ; preds = %28, %15, %11, %6, %35
  %38 = phi i8 [ 1, %35 ], [ 1, %6 ], [ 0, %11 ], [ 0, %15 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  ret i8 %38
}

; Function Attrs: cold nounwind uwtable
define dso_local void @print_aff(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !54
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = lshr i64 %4, 21
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  %12 = icmp eq i32 %6, 12
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %2
  br label %14

14:                                               ; preds = %13, %8
  %15 = phi i8 [ 0, %13 ], [ %11, %8 ]
  %16 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 11, i64 1, ptr %0)
  %17 = load ptr, ptr %1, align 8, !tbaa !54
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %17, i32 noundef 16448) #18
  %18 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 12, i64 1, ptr %0)
  %19 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 1
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 1, i32 1
  %22 = load i64, ptr %21, align 8
  tail call void @dump_double_int(ptr noundef %0, i64 %20, i64 %22, i8 noundef zeroext %15) #18
  %23 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !61
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %54, label %26

26:                                               ; preds = %14
  %27 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 16, i64 1, ptr %0)
  %28 = load i32, ptr %23, align 8, !tbaa !61
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %52, label %30

30:                                               ; preds = %26, %47
  %31 = phi i64 [ %48, %47 ], [ 0, %26 ]
  %32 = trunc i64 %31 to i32
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %32)
  %34 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %31
  %35 = load ptr, ptr %34, align 8, !tbaa !62
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %35, i32 noundef 16448) #18
  %36 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 3, i64 1, ptr %0)
  %37 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %31, i32 1
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds { i64, i64 }, ptr %37, i64 0, i32 1
  %40 = load i64, ptr %39, align 8
  tail call void @dump_double_int(ptr noundef %0, i64 %38, i64 %40, i8 noundef zeroext %15) #18
  %41 = load i32, ptr %23, align 8, !tbaa !61
  %42 = add i32 %41, -1
  %43 = zext i32 %42 to i64
  %44 = icmp eq i64 %31, %43
  br i1 %44, label %47, label %45

45:                                               ; preds = %30
  %46 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 3, i64 1, ptr %0)
  br label %47

47:                                               ; preds = %30, %45
  %48 = add nuw nsw i64 %31, 1
  %49 = load i32, ptr %23, align 8, !tbaa !61
  %50 = zext i32 %49 to i64
  %51 = icmp ult i64 %48, %50
  br i1 %51, label %30, label %52, !llvm.loop !78

52:                                               ; preds = %47, %26
  %53 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 4, i64 1, ptr %0)
  br label %54

54:                                               ; preds = %52, %14
  %55 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !57
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 10, i64 1, ptr %0)
  %60 = load ptr, ptr %55, align 8, !tbaa !57
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %60, i32 noundef 16448) #18
  br label %61

61:                                               ; preds = %58, %54
  %62 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 2, i64 1, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dump_double_int(ptr noundef, i64, i64, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_aff(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !35
  tail call void @print_aff(ptr noundef %2, ptr noundef %0)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !35
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @get_inner_reference_aff(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.affine_tree_combination, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %10) #18
  %11 = call ptr @get_inner_reference(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext 0) #18
  %12 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %11) #18
  %13 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  call void @tree_to_aff_combination(ptr noundef %12, ptr noundef %13, ptr noundef %1)
  %14 = load ptr, ptr %6, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  call void @tree_to_aff_combination(ptr noundef nonnull %14, ptr noundef %17, ptr noundef nonnull %10)
  call void @aff_combination_add(ptr noundef %1, ptr noundef nonnull %10)
  br label %18

18:                                               ; preds = %16, %3
  %19 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %20 = load i64, ptr %5, align 8, !tbaa !59
  %21 = sdiv i64 %20, 8
  %22 = icmp slt i64 %20, -7
  %23 = sext i1 %22 to i64
  store ptr %19, ptr %10, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct.affine_tree_combination, ptr %10, i64 0, i32 1
  %25 = getelementptr inbounds %struct.affine_tree_combination, ptr %10, i64 0, i32 1, i32 1
  %26 = getelementptr inbounds %struct.affine_tree_combination, ptr %10, i64 0, i32 4
  store ptr null, ptr %26, align 8, !tbaa !57
  %27 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %24, i8 0, i64 20, i1 false)
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1023
  %30 = call { i64, i64 } @double_int_sext(i64 %21, i64 %23, i32 noundef %29) #18
  %31 = extractvalue { i64, i64 } %30, 0
  %32 = extractvalue { i64, i64 } %30, 1
  store i64 %31, ptr %24, align 8, !tbaa.struct !58
  store i64 %32, ptr %25, align 8, !tbaa.struct !60
  call void @aff_combination_add(ptr noundef %1, ptr noundef nonnull %10)
  %33 = load i64, ptr %4, align 8, !tbaa !59
  %34 = add nsw i64 %33, 7
  %35 = sdiv i64 %34, 8
  %36 = icmp slt i64 %33, -14
  %37 = sext i1 %36 to i64
  store i64 %35, ptr %2, align 8, !tbaa.struct !58
  %38 = getelementptr inbounds i8, ptr %2, i64 8
  store i64 %37, ptr %38, align 8, !tbaa.struct !60
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret void
}

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

declare { i64, i64 } @double_int_sdivmod(i64, i64, i64, i64, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

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
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }

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
!55 = !{!"affine_tree_combination", !36, i64 0, !56, i64 8, !41, i64 24, !37, i64 32, !36, i64 224}
!56 = !{!"", !42, i64 0, !42, i64 8}
!57 = !{!55, !36, i64 224}
!58 = !{i64 0, i64 8, !59, i64 8, i64 8, !59}
!59 = !{!42, !42, i64 0}
!60 = !{i64 0, i64 8, !59}
!61 = !{!55, !41, i64 24}
!62 = !{!63, !36, i64 0}
!63 = !{!"aff_comb_elt", !36, i64 0, !56, i64 8}
!64 = distinct !{!64, !52, !53}
!65 = distinct !{!65, !52, !53}
!66 = !{i64 0, i64 8, !35, i64 8, i64 8, !59, i64 16, i64 8, !59}
!67 = distinct !{!67, !52, !53}
!68 = distinct !{!68, !52, !53}
!69 = distinct !{!69, !52, !53}
!70 = distinct !{!70, !52, !53}
!71 = distinct !{!71, !52, !53}
!72 = distinct !{!72, !52, !53}
!73 = !{i64 0, i64 8, !35, i64 8, i64 8, !59, i64 16, i64 8, !59, i64 24, i64 4, !50, i64 32, i64 192, !46, i64 224, i64 8, !35}
!74 = distinct !{!74, !52, !53}
!75 = !{i8 0, i8 2}
!76 = distinct !{!76, !52, !53}
!77 = distinct !{!77, !52, !53}
!78 = distinct !{!78, !52, !53}

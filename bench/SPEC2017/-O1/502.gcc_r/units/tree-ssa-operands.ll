; ModuleID = 'tree-ssa-operands.c'
source_filename = "tree-ssa-operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.anon = type { i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.def_optype_d = type { ptr, ptr }
%struct.ssa_operand_memory_d = type { ptr, [1 x i8] }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@n_initialized = internal unnamed_addr global i32 0, align 4
@build_defs = internal unnamed_addr global ptr null, align 8
@build_uses = internal unnamed_addr global ptr null, align 8
@build_vuse = internal unnamed_addr global ptr null, align 8
@build_vdef = internal unnamed_addr global ptr null, align 8
@operands_bitmap_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"tree-ssa-operands.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@clobber_stats = internal unnamed_addr global %struct.anon zeroinitializer, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Original clobbered vars:           %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Static write clobbers avoided:     %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Static read clobbers avoided:      %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Unescapable clobbers avoided:      %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Original read-only clobbers:       %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Static read-only clobbers avoided: %d\0A\00", align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str.8 = private unnamed_addr constant [24 x i8] c" STMT MODIFIED. - <%p> \00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c" IMM ERROR : (use_p : tree - %p:%p)\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c" : -->\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c" no uses.\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c" single use.\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"%d uses.\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"***end of stmt iterator marker***\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Immediate_uses: \0A\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [5 x i8] c".MEM\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.18 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@optimize = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !57 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !58
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !57 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !58
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !57 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !68

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #20
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !62
  %11 = load i8, ptr %3, align 1, !tbaa !69
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !57 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !68

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #20
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !62
  %11 = load i8, ptr %3, align 1, !tbaa !69
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !57 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !68

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #20
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !62
  %11 = load i8, ptr %3, align 1, !tbaa !69
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !57 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !58
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !57 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !68

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !70
  store i8 %12, ptr %4, align 1, !tbaa !69
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !57 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !68

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !70
  store i8 %12, ptr %4, align 1, !tbaa !69
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !57 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !58
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !68

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !70
  store i8 %12, ptr %4, align 1, !tbaa !69
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !57 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #20
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !57 {
  %2 = load i32, ptr %0, align 8, !tbaa !72
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !57 {
  %2 = load i32, ptr %0, align 8, !tbaa !72
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !57 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #20
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !73
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !57 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #20
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !73
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !57 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !57 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !57 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !57 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #20
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
  br i1 %23, label %7, label %24, !llvm.loop !74

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !57 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @ssa_operands_active() local_unnamed_addr #9 !prof !77 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !58
  %2 = icmp eq ptr %1, null
  br i1 %2, label %12, label %3, !prof !78

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7, !prof !81

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gimple_df, ptr %5, i64 0, i32 11, i32 3
  %9 = load i8, ptr %8, align 8, !tbaa !82
  %10 = icmp ne i8 %9, 0
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %3, %7, %0
  %13 = phi i8 [ 0, %0 ], [ 0, %3 ], [ %11, %7 ]
  ret i8 %13
}

; Function Attrs: nounwind uwtable
define dso_local void @init_ssa_operands() local_unnamed_addr #10 !prof !84 {
  %1 = load i32, ptr @n_initialized, align 4, !tbaa !73
  %2 = add nsw i32 %1, 1
  store i32 %2, ptr @n_initialized, align 4, !tbaa !73
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7, !prof !85

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 5) #20
  store ptr %5, ptr @build_defs, align 8, !tbaa !58
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #20
  store ptr %6, ptr @build_uses, align 8, !tbaa !58
  store ptr null, ptr @build_vuse, align 8, !tbaa !58
  store ptr null, ptr @build_vdef, align 8, !tbaa !58
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @operands_bitmap_obstack) #20
  br label %7

7:                                                ; preds = %4, %0
  %8 = load ptr, ptr @cfun, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !87

14:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 231, ptr noundef nonnull @.str.1) #20
  br label %15

15:                                               ; preds = %7, %14
  %16 = load ptr, ptr @cfun, align 8, !tbaa !58
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !79
  %19 = getelementptr inbounds %struct.gimple_df, ptr %18, i64 0, i32 11, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !88
  %21 = getelementptr inbounds %struct.gimple_df, ptr %18, i64 0, i32 11, i32 1
  store i32 %20, ptr %21, align 8, !tbaa !89
  %22 = getelementptr inbounds %struct.gimple_df, ptr %18, i64 0, i32 11, i32 3
  store i8 1, ptr %22, align 8, !tbaa !82
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) @clobber_stats, i8 0, i64 24, i1 false)
  store i32 0, ptr %19, align 4, !tbaa !88
  %23 = getelementptr inbounds %struct.gimple_df, ptr %18, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !90
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26, !prof !87

26:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 186, ptr noundef nonnull @.str.1) #20
  br label %27

27:                                               ; preds = %15, %26
  %28 = tail call ptr @get_identifier(ptr noundef nonnull @.str.17) #20
  %29 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !58
  %30 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 32, ptr noundef %28, ptr noundef %29) #20
  %31 = getelementptr inbounds %struct.tree_decl_common, ptr %30, i64 0, i32 2
  %32 = load i64, ptr %31, align 8
  %33 = or i64 %32, 4096
  store i64 %33, ptr %31, align 8
  %34 = load i64, ptr %30, align 8
  %35 = and i64 %34, -1048577
  store i64 %35, ptr %30, align 8
  %36 = or i64 %32, 33558528
  store i64 %36, ptr %31, align 8
  %37 = and i64 %34, -84934657
  %38 = or disjoint i64 %37, 83886080
  store i64 %38, ptr %30, align 8
  %39 = getelementptr inbounds %struct.tree_decl_minimal, ptr %30, i64 0, i32 4
  store ptr null, ptr %39, align 8, !tbaa !69
  %40 = and i64 %38, -1835009
  store i64 %40, ptr %30, align 8
  %41 = tail call ptr @create_var_ann(ptr noundef nonnull %30) #20
  %42 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %30) #20
  %43 = load ptr, ptr @cfun, align 8, !tbaa !58
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !79
  %46 = getelementptr inbounds %struct.gimple_df, ptr %45, i64 0, i32 3
  store ptr %30, ptr %46, align 8, !tbaa !90
  ret void
}

declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define dso_local void @fini_ssa_operands() local_unnamed_addr #10 !prof !84 {
  %1 = load i32, ptr @n_initialized, align 4, !tbaa !73
  %2 = add nsw i32 %1, -1
  store i32 %2, ptr @n_initialized, align 4, !tbaa !73
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %13, !prof !85

4:                                                ; preds = %0
  %5 = load ptr, ptr @build_defs, align 8, !tbaa !58
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !93

7:                                                ; preds = %4
  tail call void @free(ptr noundef %5)
  br label %8

8:                                                ; preds = %4, %7
  store ptr null, ptr @build_defs, align 8, !tbaa !58
  %9 = load ptr, ptr @build_uses, align 8, !tbaa !58
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !93

11:                                               ; preds = %8
  tail call void @free(ptr noundef %9)
  br label %12

12:                                               ; preds = %8, %11
  store ptr null, ptr @build_uses, align 8, !tbaa !58
  store ptr null, ptr @build_vdef, align 8, !tbaa !58
  store ptr null, ptr @build_vuse, align 8, !tbaa !58
  br label %13

13:                                               ; preds = %12, %0
  %14 = load ptr, ptr @cfun, align 8, !tbaa !58
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !79
  %17 = getelementptr inbounds %struct.gimple_df, ptr %16, i64 0, i32 11, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %18 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !79
  %20 = getelementptr inbounds %struct.gimple_df, ptr %19, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !86
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23, !prof !94

23:                                               ; preds = %13, %23
  %24 = phi ptr [ %31, %23 ], [ %21, %13 ]
  %25 = phi ptr [ %30, %23 ], [ %20, %13 ]
  %26 = load ptr, ptr %24, align 8, !tbaa !95
  store ptr %26, ptr %25, align 8, !tbaa !86
  tail call void @ggc_free(ptr noundef nonnull %24) #20
  %27 = load ptr, ptr @cfun, align 8, !tbaa !58
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !79
  %30 = getelementptr inbounds %struct.gimple_df, ptr %29, i64 0, i32 11
  %31 = load ptr, ptr %30, align 8, !tbaa !86
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %23, !prof !97, !llvm.loop !98

33:                                               ; preds = %23, %13
  %34 = phi ptr [ %19, %13 ], [ %29, %23 ]
  %35 = getelementptr inbounds %struct.gimple_df, ptr %34, i64 0, i32 11, i32 3
  store i8 0, ptr %35, align 8, !tbaa !82
  %36 = load i32, ptr @n_initialized, align 4, !tbaa !73
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39, !prof !85

38:                                               ; preds = %33
  tail call void @bitmap_obstack_release(ptr noundef nonnull @operands_bitmap_obstack) #20
  br label %39

39:                                               ; preds = %38, %33
  %40 = load ptr, ptr @cfun, align 8, !tbaa !58
  %41 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !79
  %43 = getelementptr inbounds %struct.gimple_df, ptr %42, i64 0, i32 3
  store ptr null, ptr %43, align 8, !tbaa !90
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !58
  %45 = icmp eq ptr %44, null
  br i1 %45, label %68, label %46, !prof !87

46:                                               ; preds = %39
  %47 = load i32, ptr @dump_flags, align 4, !tbaa !73
  %48 = and i32 %47, 16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %68, label %50

50:                                               ; preds = %46
  %51 = load i32, ptr @clobber_stats, align 4, !tbaa !99
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %44, ptr noundef nonnull @.str.2, i32 noundef %51)
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !58
  %54 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @clobber_stats, i64 0, i32 1), align 4, !tbaa !101
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef nonnull @.str.3, i32 noundef %54)
  %56 = load ptr, ptr @dump_file, align 8, !tbaa !58
  %57 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @clobber_stats, i64 0, i32 2), align 4, !tbaa !102
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef nonnull @.str.4, i32 noundef %57)
  %59 = load ptr, ptr @dump_file, align 8, !tbaa !58
  %60 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @clobber_stats, i64 0, i32 3), align 4, !tbaa !103
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef nonnull @.str.5, i32 noundef %60)
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !58
  %63 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @clobber_stats, i64 0, i32 4), align 4, !tbaa !104
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.6, i32 noundef %63)
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !58
  %66 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @clobber_stats, i64 0, i32 5), align 4, !tbaa !105
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.7, i32 noundef %66)
  br label %68

68:                                               ; preds = %50, %46, %39
  ret void
}

declare void @ggc_free(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @free_stmt_operands(ptr nocapture noundef %0) local_unnamed_addr #12 !prof !57 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  %4 = add nsw i32 %3, -10
  %5 = icmp ult i32 %4, -9
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  br i1 %5, label %14, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  br label %14

14:                                               ; preds = %9, %11
  %15 = phi ptr [ %13, %11 ], [ null, %9 ]
  %16 = icmp eq ptr %10, null
  br i1 %16, label %38, label %17

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %19, %17 ], [ %10, %14 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !106
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %17, !llvm.loop !108

21:                                               ; preds = %17
  %22 = load ptr, ptr @cfun, align 8, !tbaa !58
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !79
  %25 = getelementptr inbounds %struct.gimple_df, ptr %24, i64 0, i32 11, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !109
  store ptr %26, ptr %18, align 8, !tbaa !106
  %27 = load ptr, ptr @cfun, align 8, !tbaa !58
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !79
  %30 = getelementptr inbounds %struct.gimple_df, ptr %29, i64 0, i32 11, i32 4
  store ptr %10, ptr %30, align 8, !tbaa !109
  %31 = load i32, ptr %0, align 8
  %32 = and i32 %31, 255
  %33 = add nsw i32 %32, -10
  %34 = icmp ult i32 %33, -9
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 1305, ptr noundef nonnull @.str.1) #20
  br label %36

36:                                               ; preds = %21, %35
  %37 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  store ptr null, ptr %37, align 8, !tbaa !69
  br label %38

38:                                               ; preds = %36, %14
  %39 = icmp eq ptr %15, null
  br i1 %39, label %84, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr %15, align 8, !tbaa !110
  %42 = icmp eq ptr %41, null
  br i1 %42, label %57, label %43

43:                                               ; preds = %40, %54
  %44 = phi ptr [ %55, %54 ], [ %41, %40 ]
  %45 = phi ptr [ %44, %54 ], [ %15, %40 ]
  %46 = getelementptr inbounds %struct.use_optype_d, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !113
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.use_optype_d, ptr %45, i64 0, i32 1, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !114
  %52 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %47, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !114
  %53 = load ptr, ptr %50, align 8, !tbaa !114
  store ptr %47, ptr %53, align 8, !tbaa !113
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, i8 0, i64 16, i1 false)
  br label %54

54:                                               ; preds = %43, %49
  %55 = load ptr, ptr %44, align 8, !tbaa !110
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %43, !llvm.loop !115

57:                                               ; preds = %54, %40
  %58 = phi ptr [ %15, %40 ], [ %44, %54 ]
  %59 = getelementptr inbounds %struct.use_optype_d, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !113
  %61 = icmp eq ptr %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.use_optype_d, ptr %58, i64 0, i32 1, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !114
  %65 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %60, i64 0, i32 1
  store ptr %64, ptr %65, align 8, !tbaa !114
  %66 = load ptr, ptr %63, align 8, !tbaa !114
  store ptr %60, ptr %66, align 8, !tbaa !113
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %59, i8 0, i64 16, i1 false)
  br label %67

67:                                               ; preds = %57, %62
  %68 = load ptr, ptr @cfun, align 8, !tbaa !58
  %69 = getelementptr inbounds %struct.function, ptr %68, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !79
  %71 = getelementptr inbounds %struct.gimple_df, ptr %70, i64 0, i32 11, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !116
  store ptr %72, ptr %58, align 8, !tbaa !110
  %73 = load ptr, ptr @cfun, align 8, !tbaa !58
  %74 = getelementptr inbounds %struct.function, ptr %73, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !79
  %76 = getelementptr inbounds %struct.gimple_df, ptr %75, i64 0, i32 11, i32 5
  store ptr %15, ptr %76, align 8, !tbaa !116
  %77 = load i32, ptr %0, align 8
  %78 = and i32 %77, 255
  %79 = add nsw i32 %78, -10
  %80 = icmp ult i32 %79, -9
  br i1 %80, label %81, label %82

81:                                               ; preds = %67
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 1326, ptr noundef nonnull @.str.1) #20
  br label %82

82:                                               ; preds = %67, %81
  %83 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  store ptr null, ptr %83, align 8, !tbaa !69
  br label %84

84:                                               ; preds = %82, %38
  %85 = load i32, ptr %0, align 8
  %86 = and i32 %85, 254
  %87 = add nsw i32 %86, -10
  %88 = icmp ult i32 %87, -4
  br i1 %88, label %98, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  store ptr null, ptr %90, align 8, !tbaa !69
  %91 = load i32, ptr %0, align 8
  %92 = and i32 %91, 254
  %93 = add nsw i32 %92, -10
  %94 = icmp ult i32 %93, -4
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 1416, ptr noundef nonnull @.str.1) #20
  br label %96

96:                                               ; preds = %89, %95
  %97 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  store ptr null, ptr %97, align 8, !tbaa !69
  br label %98

98:                                               ; preds = %96, %84
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @update_stmt_operands(ptr noundef %0) local_unnamed_addr #13 !prof !117 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !58
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6, !prof !118

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !79
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !119

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gimple_df, ptr %8, i64 0, i32 11, i32 3
  %12 = load i8, ptr %11, align 8, !tbaa !82
  %13 = icmp ne i8 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %1, %6, %10
  %16 = phi i8 [ 0, %1 ], [ 0, %6 ], [ %14, %10 ]
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %700, label %18, !prof !119

18:                                               ; preds = %15
  %19 = load i8, ptr @timevar_enable, align 1, !tbaa !69
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21, !prof !120

21:                                               ; preds = %18
  tail call void @timevar_push_1(i32 noundef 61) #20
  br label %22

22:                                               ; preds = %18, %21
  %23 = load i32, ptr %0, align 8
  %24 = and i32 %23, 255
  %25 = add nsw i32 %24, -10
  %26 = icmp ult i32 %25, -9
  %27 = and i32 %23, 8192
  %28 = icmp eq i32 %27, 0
  %29 = or i1 %28, %26
  br i1 %29, label %30, label %31, !prof !121

30:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1129, ptr noundef nonnull @.str.1) #20
  br label %31

31:                                               ; preds = %22, %30
  %32 = load i32, ptr %0, align 8
  %33 = and i32 %32, 254
  %34 = add nsw i32 %33, -10
  %35 = icmp ult i32 %34, -4
  br i1 %35, label %38, label %36, !prof !122

36:                                               ; preds = %31
  %37 = and i32 %32, -16385
  store i32 %37, ptr %0, align 8
  br label %38

38:                                               ; preds = %36, %31
  %39 = load ptr, ptr @build_defs, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41, !prof !121

41:                                               ; preds = %38
  %42 = load i32, ptr %39, align 8, !tbaa !123
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44, !prof !120

44:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 570, ptr noundef nonnull @.str.1) #20
  br label %45

45:                                               ; preds = %44, %41, %38
  %46 = load ptr, ptr @build_uses, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48, !prof !121

48:                                               ; preds = %45
  %49 = load i32, ptr %46, align 8, !tbaa !123
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51, !prof !120

51:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 571, ptr noundef nonnull @.str.1) #20
  br label %52

52:                                               ; preds = %51, %48, %45
  %53 = load ptr, ptr @build_vuse, align 8, !tbaa !58
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55, !prof !120

55:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 572, ptr noundef nonnull @.str.1) #20
  br label %56

56:                                               ; preds = %55, %52
  %57 = load ptr, ptr @build_vdef, align 8, !tbaa !58
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59, !prof !120

59:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 573, ptr noundef nonnull @.str.1) #20
  br label %60

60:                                               ; preds = %59, %56
  %61 = load i32, ptr %0, align 8
  %62 = and i32 %61, 255
  %63 = trunc i32 %61 to i8
  switch i8 %63, label %101 [
    i8 7, label %64
    i8 2, label %65
  ], !prof !125

64:                                               ; preds = %60
  tail call fastcc void @get_asm_expr_operands(ptr noundef nonnull %0)
  br label %219

65:                                               ; preds = %60
  %66 = and i32 %61, -65534
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %219

68:                                               ; preds = %65
  %69 = zext nneg i32 %62 to i64
  %70 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !73
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %72
  %74 = load i64, ptr %73, align 8, !tbaa !126
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %77

77:                                               ; preds = %76, %68
  %78 = getelementptr inbounds i8, ptr %0, i64 %74
  %79 = getelementptr inbounds ptr, ptr %78, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !58
  %81 = icmp eq ptr %80, null
  br i1 %81, label %219, label %82

82:                                               ; preds = %77
  %83 = load i32, ptr %0, align 8
  %84 = and i32 %83, 255
  %85 = add nsw i32 %84, -10
  %86 = icmp ult i32 %85, -9
  br i1 %86, label %99, label %87

87:                                               ; preds = %82
  %88 = zext nneg i32 %84 to i64
  %89 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !73
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %91
  %93 = load i64, ptr %92, align 8, !tbaa !126
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %96

96:                                               ; preds = %95, %87
  %97 = getelementptr inbounds i8, ptr %0, i64 %93
  %98 = getelementptr inbounds ptr, ptr %97, i64 1
  br label %99

99:                                               ; preds = %96, %82
  %100 = phi ptr [ %98, %96 ], [ null, %82 ]
  tail call fastcc void @get_expr_operands(ptr noundef nonnull %0, ptr noundef %100, i32 noundef 2)
  br label %219

101:                                              ; preds = %60
  %102 = icmp eq i32 %62, 8
  switch i8 %63, label %119 [
    i8 8, label %103
    i8 6, label %103
  ], !prof !127

103:                                              ; preds = %101, %101
  %104 = add nsw i32 %62, -10
  %105 = icmp ult i32 %104, -9
  br i1 %105, label %117, label %106, !prof !128

106:                                              ; preds = %103
  %107 = zext nneg i32 %62 to i64
  %108 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !73
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %110
  %112 = load i64, ptr %111, align 8, !tbaa !126
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %115, !prof !128

114:                                              ; preds = %106
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %115

115:                                              ; preds = %114, %106
  %116 = getelementptr inbounds i8, ptr %0, i64 %112
  br label %117

117:                                              ; preds = %115, %103
  %118 = phi ptr [ %116, %115 ], [ null, %103 ]
  tail call fastcc void @get_expr_operands(ptr noundef nonnull %0, ptr noundef %118, i32 noundef 1)
  br label %119

119:                                              ; preds = %117, %101
  %120 = phi i64 [ 1, %117 ], [ 0, %101 ]
  %121 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %122 = load i32, ptr %121, align 4, !tbaa !69
  %123 = zext i32 %122 to i64
  %124 = icmp ult i64 %120, %123
  br i1 %124, label %125, label %149, !prof !129

125:                                              ; preds = %119, %143
  %126 = phi i64 [ %145, %143 ], [ %120, %119 ]
  %127 = load i32, ptr %0, align 8
  %128 = and i32 %127, 255
  %129 = add nsw i32 %128, -10
  %130 = icmp ult i32 %129, -9
  br i1 %130, label %143, label %131, !prof !130

131:                                              ; preds = %125
  %132 = zext nneg i32 %128 to i64
  %133 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !73
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %135
  %137 = load i64, ptr %136, align 8, !tbaa !126
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %140, !prof !130

139:                                              ; preds = %131
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %140

140:                                              ; preds = %139, %131
  %141 = getelementptr inbounds i8, ptr %0, i64 %137
  %142 = getelementptr inbounds ptr, ptr %141, i64 %126
  br label %143

143:                                              ; preds = %140, %125
  %144 = phi ptr [ %142, %140 ], [ null, %125 ]
  tail call fastcc void @get_expr_operands(ptr noundef nonnull %0, ptr noundef %144, i32 noundef 0)
  %145 = add nuw nsw i64 %126, 1
  %146 = load i32, ptr %121, align 4, !tbaa !69
  %147 = zext i32 %146 to i64
  %148 = icmp ult i64 %145, %147
  br i1 %148, label %125, label %149, !prof !131, !llvm.loop !132

149:                                              ; preds = %143, %119
  br i1 %102, label %150, label %219, !prof !133

150:                                              ; preds = %149
  %151 = tail call i32 @gimple_call_flags(ptr noundef nonnull %0) #20
  %152 = and i32 %151, 512
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %219, !prof !134

154:                                              ; preds = %150
  %155 = and i32 %151, 11
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %189, !prof !135

157:                                              ; preds = %154
  %158 = load i32, ptr %0, align 8
  %159 = and i32 %158, 255
  %160 = icmp eq i32 %159, 2
  br i1 %160, label %161, label %162, !prof !136

161:                                              ; preds = %157
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 638, ptr noundef nonnull @.str.1) #20
  br label %162

162:                                              ; preds = %161, %157
  %163 = load ptr, ptr @cfun, align 8, !tbaa !58
  %164 = icmp eq ptr %163, null
  br i1 %164, label %169, label %165, !prof !137

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.function, ptr %163, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !79
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %170, !prof !137

169:                                              ; preds = %165, %162
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 51, ptr noundef nonnull @.str.1) #20
  br label %170

170:                                              ; preds = %169, %165
  %171 = getelementptr inbounds %struct.function, ptr %163, i64 0, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !79
  %173 = getelementptr inbounds %struct.gimple_df, ptr %172, i64 0, i32 3
  %174 = load ptr, ptr %173, align 8, !tbaa !90
  %175 = load i32, ptr @optimize, align 4, !tbaa !73
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %219, label %177, !prof !137

177:                                              ; preds = %170
  %178 = load ptr, ptr @build_vdef, align 8, !tbaa !58
  %179 = icmp eq ptr %178, null
  %180 = icmp eq ptr %178, %174
  %181 = or i1 %179, %180
  br i1 %181, label %182, label %187, !prof !138

182:                                              ; preds = %177
  %183 = load ptr, ptr @build_vuse, align 8, !tbaa !58
  %184 = icmp eq ptr %183, null
  %185 = icmp eq ptr %183, %174
  %186 = or i1 %184, %185
  br i1 %186, label %188, label %187, !prof !138

187:                                              ; preds = %182, %177
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 606, ptr noundef nonnull @.str.1) #20
  br label %188

188:                                              ; preds = %187, %182
  store ptr %174, ptr @build_vdef, align 8, !tbaa !58
  store ptr %174, ptr @build_vuse, align 8, !tbaa !58
  br label %219

189:                                              ; preds = %154
  %190 = and i32 %151, 1
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %219, !prof !139

192:                                              ; preds = %189
  %193 = load i32, ptr %0, align 8
  %194 = and i32 %193, 255
  %195 = icmp eq i32 %194, 2
  br i1 %195, label %196, label %197, !prof !136

196:                                              ; preds = %192
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 638, ptr noundef nonnull @.str.1) #20
  br label %197

197:                                              ; preds = %196, %192
  %198 = load ptr, ptr @cfun, align 8, !tbaa !58
  %199 = icmp eq ptr %198, null
  br i1 %199, label %204, label %200, !prof !140

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.function, ptr %198, i64 0, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !79
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %205, !prof !140

204:                                              ; preds = %200, %197
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 51, ptr noundef nonnull @.str.1) #20
  br label %205

205:                                              ; preds = %204, %200
  %206 = getelementptr inbounds %struct.function, ptr %198, i64 0, i32 3
  %207 = load ptr, ptr %206, align 8, !tbaa !79
  %208 = getelementptr inbounds %struct.gimple_df, ptr %207, i64 0, i32 3
  %209 = load ptr, ptr %208, align 8, !tbaa !90
  %210 = load i32, ptr @optimize, align 4, !tbaa !73
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %219, label %212, !prof !140

212:                                              ; preds = %205
  %213 = load ptr, ptr @build_vuse, align 8, !tbaa !58
  %214 = icmp eq ptr %213, null
  %215 = icmp eq ptr %213, %209
  %216 = or i1 %214, %215
  br i1 %216, label %218, label %217, !prof !141

217:                                              ; preds = %212
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 622, ptr noundef nonnull @.str.1) #20
  br label %218

218:                                              ; preds = %217, %212
  store ptr %209, ptr @build_vuse, align 8, !tbaa !58
  br label %219

219:                                              ; preds = %218, %205, %188, %170, %189, %150, %149, %99, %77, %65, %64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  %220 = load ptr, ptr @build_defs, align 8
  %221 = icmp eq ptr %220, null
  br i1 %221, label %224, label %222, !prof !121

222:                                              ; preds = %219
  %223 = load i32, ptr %220, align 8, !tbaa !123
  br label %224

224:                                              ; preds = %222, %219
  %225 = phi i32 [ %223, %222 ], [ 0, %219 ]
  %226 = icmp eq ptr %0, null
  br i1 %226, label %233, label %227, !prof !121

227:                                              ; preds = %224
  %228 = load i32, ptr %0, align 8
  %229 = and i32 %228, 255
  %230 = icmp ne i32 %229, 6
  %231 = icmp ult i32 %225, 2
  %232 = select i1 %230, i1 true, i1 %231, !prof !142
  br i1 %232, label %236, label %235, !prof !120

233:                                              ; preds = %224
  %234 = icmp ult i32 %225, 2
  br i1 %234, label %236, label %235

235:                                              ; preds = %233, %227
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 419, ptr noundef nonnull @.str.1) #20
  br label %236

236:                                              ; preds = %235, %233, %227
  %237 = load ptr, ptr @build_vdef, align 8, !tbaa !58
  %238 = icmp eq ptr %237, null
  br i1 %238, label %289, label %239, !prof !143

239:                                              ; preds = %236
  %240 = load i32, ptr %0, align 8
  %241 = and i32 %240, 254
  %242 = add nsw i32 %241, -10
  %243 = icmp ult i32 %242, -4
  br i1 %243, label %247, label %244, !prof !137

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !69
  br label %247

247:                                              ; preds = %244, %239
  %248 = phi ptr [ %246, %244 ], [ null, %239 ]
  %249 = icmp eq ptr %248, null
  br i1 %249, label %257, label %250, !prof !144

250:                                              ; preds = %247
  %251 = load i64, ptr %248, align 8
  %252 = and i64 %251, 65535
  %253 = icmp eq i64 %252, 141
  br i1 %253, label %254, label %257, !prof !145

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.tree_ssa_name, ptr %248, i64 0, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !69
  br label %257

257:                                              ; preds = %254, %250, %247
  %258 = phi ptr [ %256, %254 ], [ %248, %250 ], [ null, %247 ]
  %259 = icmp eq ptr %258, %237
  br i1 %259, label %264, label %260, !prof !146

260:                                              ; preds = %257
  br i1 %243, label %261, label %262, !prof !147

261:                                              ; preds = %260
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 1416, ptr noundef nonnull @.str.1) #20
  br label %262

262:                                              ; preds = %261, %260
  %263 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  store ptr %237, ptr %263, align 8, !tbaa !69
  br label %264

264:                                              ; preds = %262, %257
  %265 = load i32, ptr %0, align 8
  %266 = and i32 %265, 254
  %267 = add nsw i32 %266, -10
  %268 = icmp ult i32 %267, -4
  %269 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %270 = select i1 %268, ptr null, ptr %269, !prof !137
  %271 = load ptr, ptr @build_defs, align 8, !tbaa !58
  %272 = icmp eq ptr %271, null
  br i1 %272, label %278, label %273, !prof !137

273:                                              ; preds = %264
  %274 = getelementptr inbounds %struct.VEC_tree_base, ptr %271, i64 0, i32 1
  %275 = load i32, ptr %274, align 4, !tbaa !148
  %276 = load i32, ptr %271, align 8, !tbaa !123
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %278, label %280, !prof !137

278:                                              ; preds = %273, %264
  %279 = tail call ptr @vec_heap_p_reserve(ptr noundef %271, i32 noundef 1) #20
  store ptr %279, ptr @build_defs, align 8, !tbaa !58
  br label %280

280:                                              ; preds = %278, %273
  %281 = load ptr, ptr @build_defs, align 8, !tbaa !58
  %282 = load i32, ptr %281, align 8, !tbaa !123
  %283 = getelementptr inbounds %struct.VEC_tree_base, ptr %281, i64 0, i32 2
  %284 = getelementptr inbounds %struct.VEC_tree_base, ptr %281, i64 1
  %285 = add i32 %282, 1
  store i32 %285, ptr %281, align 8, !tbaa !123
  %286 = zext i32 %282 to i64
  %287 = shl nuw nsw i64 %286, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %284, ptr nonnull align 8 %283, i64 %287, i1 false), !prof !149
  store ptr %270, ptr %283, align 8, !tbaa !58
  %288 = add i32 %225, 1
  br label %289

289:                                              ; preds = %280, %236
  %290 = phi i32 [ %288, %280 ], [ %225, %236 ]
  store ptr null, ptr %3, align 8, !tbaa !106
  %291 = load i32, ptr %0, align 8
  %292 = and i32 %291, 255
  %293 = add nsw i32 %292, -10
  %294 = icmp ult i32 %293, -9
  br i1 %294, label %298, label %295, !prof !121

295:                                              ; preds = %289
  %296 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !69
  br label %298

298:                                              ; preds = %295, %289
  %299 = phi ptr [ %297, %295 ], [ null, %289 ]
  %300 = load ptr, ptr @build_vdef, align 8, !tbaa !58
  %301 = icmp eq ptr %300, null
  br i1 %301, label %302, label %336, !prof !143

302:                                              ; preds = %298
  %303 = and i32 %291, 254
  %304 = add nsw i32 %303, -10
  %305 = icmp ult i32 %304, -4
  br i1 %305, label %309, label %306, !prof !150

306:                                              ; preds = %302
  %307 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %308 = load ptr, ptr %307, align 8, !tbaa !69
  br label %309

309:                                              ; preds = %306, %302
  %310 = phi ptr [ %308, %306 ], [ null, %302 ]
  %311 = icmp eq ptr %310, null
  br i1 %311, label %336, label %312, !prof !151

312:                                              ; preds = %309
  %313 = add nsw i32 %303, -6
  %314 = icmp ult i32 %313, 4
  tail call void @llvm.assume(i1 %314)
  %315 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %316 = load ptr, ptr %315, align 8, !tbaa !69
  %317 = load i64, ptr %316, align 8
  %318 = and i64 %317, 65535
  %319 = icmp eq i64 %318, 141
  br i1 %319, label %320, label %329

320:                                              ; preds = %312
  tail call void @unlink_stmt_vdef(ptr noundef nonnull %0)
  %321 = load i32, ptr %0, align 8
  %322 = and i32 %321, 254
  %323 = add nsw i32 %322, -10
  %324 = icmp ult i32 %323, -4
  br i1 %324, label %327, label %325

325:                                              ; preds = %320
  %326 = load ptr, ptr %315, align 8, !tbaa !69
  br label %327

327:                                              ; preds = %325, %320
  %328 = phi ptr [ %326, %325 ], [ null, %320 ]
  tail call void @release_ssa_name(ptr noundef %328) #20
  br label %329

329:                                              ; preds = %327, %312
  %330 = load i32, ptr %0, align 8
  %331 = and i32 %330, 254
  %332 = add nsw i32 %331, -10
  %333 = icmp ult i32 %332, -4
  br i1 %333, label %334, label %335

334:                                              ; preds = %329
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 1416, ptr noundef nonnull @.str.1) #20
  br label %335

335:                                              ; preds = %334, %329
  store ptr null, ptr %315, align 8, !tbaa !69
  br label %336

336:                                              ; preds = %335, %309, %298
  %337 = load i32, ptr %0, align 8
  %338 = and i32 %337, 254
  %339 = add nsw i32 %338, -10
  %340 = icmp ult i32 %339, -4
  br i1 %340, label %352, label %341, !prof !122

341:                                              ; preds = %336
  %342 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %343 = load ptr, ptr %342, align 8, !tbaa !69
  %344 = icmp eq ptr %343, null
  br i1 %344, label %352, label %345, !prof !152

345:                                              ; preds = %341
  %346 = add nsw i32 %338, -6
  %347 = icmp ult i32 %346, 4
  tail call void @llvm.assume(i1 %347)
  %348 = load i64, ptr %343, align 8
  %349 = and i64 %348, 65535
  %350 = icmp eq i64 %349, 141
  br i1 %350, label %352, label %351, !prof !153

351:                                              ; preds = %345
  tail call void @mark_sym_for_renaming(ptr noundef nonnull %343) #20
  br label %352

352:                                              ; preds = %351, %345, %341, %336
  %353 = icmp eq ptr %299, null
  br i1 %353, label %376, label %354, !prof !154

354:                                              ; preds = %352
  %355 = load ptr, ptr %299, align 8, !tbaa !106
  %356 = icmp eq ptr %355, null
  %357 = icmp eq i32 %290, 1
  %358 = select i1 %356, i1 %357, i1 false, !prof !155
  br i1 %358, label %359, label %366, !prof !155

359:                                              ; preds = %354
  %360 = load ptr, ptr @build_defs, align 8
  %361 = getelementptr inbounds %struct.VEC_tree_base, ptr %360, i64 0, i32 2, i64 0
  %362 = load ptr, ptr %361, align 8, !tbaa !58
  %363 = getelementptr inbounds %struct.def_optype_d, ptr %299, i64 0, i32 1
  %364 = load ptr, ptr %363, align 8, !tbaa !156
  %365 = icmp eq ptr %362, %364
  br i1 %365, label %450, label %366, !prof !157

366:                                              ; preds = %359, %354
  %367 = load ptr, ptr @cfun, align 8, !tbaa !58
  %368 = getelementptr inbounds %struct.function, ptr %367, i64 0, i32 3
  %369 = load ptr, ptr %368, align 8, !tbaa !79
  %370 = getelementptr inbounds %struct.gimple_df, ptr %369, i64 0, i32 11, i32 4
  %371 = load ptr, ptr %370, align 8, !tbaa !109
  store ptr %371, ptr %299, align 8, !tbaa !106
  %372 = load ptr, ptr @cfun, align 8, !tbaa !58
  %373 = getelementptr inbounds %struct.function, ptr %372, i64 0, i32 3
  %374 = load ptr, ptr %373, align 8, !tbaa !79
  %375 = getelementptr inbounds %struct.gimple_df, ptr %374, i64 0, i32 11, i32 4
  store ptr %299, ptr %375, align 8, !tbaa !109
  br label %376

376:                                              ; preds = %366, %352
  %377 = icmp eq i32 %290, 0
  br i1 %377, label %441, label %378, !prof !158

378:                                              ; preds = %376
  %379 = zext i32 %290 to i64
  br label %380

380:                                              ; preds = %378, %436
  %381 = phi i64 [ 0, %378 ], [ %439, %436 ]
  %382 = phi ptr [ %3, %378 ], [ %437, %436 ]
  %383 = load ptr, ptr @build_defs, align 8
  %384 = getelementptr inbounds %struct.VEC_tree_base, ptr %383, i64 0, i32 2, i64 %381
  %385 = load ptr, ptr %384, align 8, !tbaa !58
  %386 = load ptr, ptr @cfun, align 8, !tbaa !58
  %387 = getelementptr inbounds %struct.function, ptr %386, i64 0, i32 3
  %388 = load ptr, ptr %387, align 8, !tbaa !79
  %389 = getelementptr inbounds %struct.gimple_df, ptr %388, i64 0, i32 11, i32 4
  %390 = load ptr, ptr %389, align 8, !tbaa !109
  %391 = icmp eq ptr %390, null
  br i1 %391, label %394, label %392, !prof !159

392:                                              ; preds = %380
  %393 = load ptr, ptr %390, align 8, !tbaa !106
  store ptr %393, ptr %389, align 8, !tbaa !109
  br label %436

394:                                              ; preds = %380
  %395 = getelementptr inbounds %struct.gimple_df, ptr %388, i64 0, i32 11, i32 1
  %396 = load i32, ptr %395, align 8, !tbaa !89
  %397 = add i32 %396, 16
  %398 = getelementptr inbounds %struct.gimple_df, ptr %388, i64 0, i32 11, i32 2
  %399 = load i32, ptr %398, align 4, !tbaa !88
  %400 = icmp ult i32 %397, %399
  br i1 %400, label %425, label %401, !prof !160

401:                                              ; preds = %394
  switch i32 %399, label %405 [
    i32 0, label %402
    i32 1016, label %403
    i32 4088, label %404
    i32 16376, label %404
  ], !prof !161

402:                                              ; preds = %401
  store i32 1016, ptr %398, align 4, !tbaa !88
  br label %406

403:                                              ; preds = %401
  store i32 4088, ptr %398, align 4, !tbaa !88
  br label %406

404:                                              ; preds = %401, %401
  store i32 16376, ptr %398, align 4, !tbaa !88
  br label %406

405:                                              ; preds = %401
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 319, ptr noundef nonnull @.str.1) #20
  br label %406

406:                                              ; preds = %405, %404, %403, %402
  %407 = load ptr, ptr @cfun, align 8, !tbaa !58
  %408 = getelementptr inbounds %struct.function, ptr %407, i64 0, i32 3
  %409 = load ptr, ptr %408, align 8, !tbaa !79
  %410 = getelementptr inbounds %struct.gimple_df, ptr %409, i64 0, i32 11, i32 2
  %411 = load i32, ptr %410, align 4, !tbaa !88
  %412 = zext i32 %411 to i64
  %413 = add nuw nsw i64 %412, 8
  %414 = tail call ptr @ggc_alloc_stat(i64 noundef %413) #20
  %415 = load ptr, ptr @cfun, align 8, !tbaa !58
  %416 = getelementptr inbounds %struct.function, ptr %415, i64 0, i32 3
  %417 = load ptr, ptr %416, align 8, !tbaa !79
  %418 = getelementptr inbounds %struct.gimple_df, ptr %417, i64 0, i32 11
  %419 = load ptr, ptr %418, align 8, !tbaa !86
  store ptr %419, ptr %414, align 8, !tbaa !95
  %420 = load ptr, ptr @cfun, align 8, !tbaa !58
  %421 = getelementptr inbounds %struct.function, ptr %420, i64 0, i32 3
  %422 = load ptr, ptr %421, align 8, !tbaa !79
  %423 = getelementptr inbounds %struct.gimple_df, ptr %422, i64 0, i32 11
  store ptr %414, ptr %423, align 8, !tbaa !86
  %424 = getelementptr inbounds %struct.gimple_df, ptr %422, i64 0, i32 11, i32 1
  store i32 0, ptr %424, align 8, !tbaa !89
  br label %425

425:                                              ; preds = %406, %394
  %426 = load ptr, ptr @cfun, align 8, !tbaa !58
  %427 = getelementptr inbounds %struct.function, ptr %426, i64 0, i32 3
  %428 = load ptr, ptr %427, align 8, !tbaa !79
  %429 = getelementptr inbounds %struct.gimple_df, ptr %428, i64 0, i32 11
  %430 = load ptr, ptr %429, align 8, !tbaa !86
  %431 = getelementptr inbounds %struct.gimple_df, ptr %428, i64 0, i32 11, i32 1
  %432 = load i32, ptr %431, align 8, !tbaa !89
  %433 = zext i32 %432 to i64
  %434 = getelementptr inbounds %struct.ssa_operand_memory_d, ptr %430, i64 0, i32 1, i64 %433
  %435 = add i32 %432, 16
  store i32 %435, ptr %431, align 8, !tbaa !89
  br label %436

436:                                              ; preds = %425, %392
  %437 = phi ptr [ %390, %392 ], [ %434, %425 ]
  %438 = getelementptr inbounds %struct.def_optype_d, ptr %437, i64 0, i32 1
  store ptr %385, ptr %438, align 8, !tbaa !156
  store ptr %437, ptr %382, align 8, !tbaa !106
  store ptr null, ptr %437, align 8, !tbaa !106
  %439 = add nuw nsw i64 %381, 1
  %440 = icmp eq i64 %439, %379
  br i1 %440, label %441, label %380, !prof !162, !llvm.loop !163

441:                                              ; preds = %436, %376
  %442 = load ptr, ptr %3, align 8, !tbaa !106
  %443 = load i32, ptr %0, align 8
  %444 = and i32 %443, 255
  %445 = add nsw i32 %444, -10
  %446 = icmp ult i32 %445, -9
  br i1 %446, label %447, label %448, !prof !164

447:                                              ; preds = %441
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 1305, ptr noundef nonnull @.str.1) #20
  br label %448

448:                                              ; preds = %447, %441
  %449 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  store ptr %442, ptr %449, align 8, !tbaa !69
  br label %450

450:                                              ; preds = %448, %359
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  %451 = load ptr, ptr @build_vuse, align 8
  %452 = icmp eq ptr %451, null
  br i1 %452, label %502, label %453, !prof !165

453:                                              ; preds = %450
  %454 = load i32, ptr %0, align 8
  %455 = and i32 %454, 254
  %456 = add nsw i32 %455, -10
  %457 = icmp ult i32 %456, -4
  br i1 %457, label %461, label %458, !prof !136

458:                                              ; preds = %453
  %459 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %460 = load ptr, ptr %459, align 8, !tbaa !69
  br label %461

461:                                              ; preds = %458, %453
  %462 = phi ptr [ %460, %458 ], [ null, %453 ]
  %463 = icmp eq ptr %462, null
  br i1 %463, label %471, label %464, !prof !166

464:                                              ; preds = %461
  %465 = load i64, ptr %462, align 8
  %466 = and i64 %465, 65535
  %467 = icmp eq i64 %466, 141
  br i1 %467, label %468, label %471, !prof !167

468:                                              ; preds = %464
  %469 = getelementptr inbounds %struct.tree_ssa_name, ptr %462, i64 0, i32 1
  %470 = load ptr, ptr %469, align 8, !tbaa !69
  br label %471

471:                                              ; preds = %468, %464, %461
  %472 = phi ptr [ %470, %468 ], [ %462, %464 ], [ null, %461 ]
  %473 = icmp eq ptr %472, %451
  br i1 %473, label %478, label %474, !prof !168

474:                                              ; preds = %471
  br i1 %457, label %475, label %476, !prof !169

475:                                              ; preds = %474
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 1407, ptr noundef nonnull @.str.1) #20
  br label %476

476:                                              ; preds = %475, %474
  %477 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  store ptr null, ptr %477, align 8, !tbaa !69
  br label %478

478:                                              ; preds = %476, %471
  %479 = load i32, ptr %0, align 8
  %480 = and i32 %479, 254
  %481 = add nsw i32 %480, -10
  %482 = icmp ult i32 %481, -4
  %483 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %484 = select i1 %482, ptr null, ptr %483, !prof !136
  %485 = load ptr, ptr @build_uses, align 8, !tbaa !58
  %486 = icmp eq ptr %485, null
  br i1 %486, label %492, label %487, !prof !136

487:                                              ; preds = %478
  %488 = getelementptr inbounds %struct.VEC_tree_base, ptr %485, i64 0, i32 1
  %489 = load i32, ptr %488, align 4, !tbaa !148
  %490 = load i32, ptr %485, align 8, !tbaa !123
  %491 = icmp eq i32 %489, %490
  br i1 %491, label %492, label %494, !prof !136

492:                                              ; preds = %487, %478
  %493 = tail call ptr @vec_heap_p_reserve(ptr noundef %485, i32 noundef 1) #20
  store ptr %493, ptr @build_uses, align 8, !tbaa !58
  br label %494

494:                                              ; preds = %492, %487
  %495 = load ptr, ptr @build_uses, align 8, !tbaa !58
  %496 = load i32, ptr %495, align 8, !tbaa !123
  %497 = getelementptr inbounds %struct.VEC_tree_base, ptr %495, i64 0, i32 2
  %498 = getelementptr inbounds %struct.VEC_tree_base, ptr %495, i64 1
  %499 = add i32 %496, 1
  store i32 %499, ptr %495, align 8, !tbaa !123
  %500 = zext i32 %496 to i64
  %501 = shl nuw nsw i64 %500, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %498, ptr nonnull align 8 %497, i64 %501, i1 false), !prof !170
  store ptr %484, ptr %497, align 8, !tbaa !58
  br label %502

502:                                              ; preds = %494, %450
  store ptr null, ptr %2, align 8, !tbaa !110
  %503 = load i32, ptr %0, align 8
  %504 = and i32 %503, 255
  %505 = add nsw i32 %504, -10
  %506 = icmp ult i32 %505, -9
  br i1 %506, label %510, label %507, !prof !121

507:                                              ; preds = %502
  %508 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %509 = load ptr, ptr %508, align 8, !tbaa !69
  br label %510

510:                                              ; preds = %507, %502
  %511 = phi ptr [ %509, %507 ], [ null, %502 ]
  %512 = load ptr, ptr @build_vuse, align 8, !tbaa !58
  %513 = icmp eq ptr %512, null
  br i1 %513, label %514, label %526, !prof !165

514:                                              ; preds = %510
  %515 = and i32 %503, 254
  %516 = add nsw i32 %515, -10
  %517 = icmp ult i32 %516, -4
  br i1 %517, label %526, label %518, !prof !171

518:                                              ; preds = %514
  %519 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %520 = load ptr, ptr %519, align 8, !tbaa !69
  %521 = icmp eq ptr %520, null
  br i1 %521, label %526, label %522, !prof !172

522:                                              ; preds = %518
  br i1 %517, label %523, label %524, !prof !173

523:                                              ; preds = %522
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 1407, ptr noundef nonnull @.str.1) #20
  br label %524

524:                                              ; preds = %523, %522
  %525 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  store ptr null, ptr %525, align 8, !tbaa !69
  br label %526

526:                                              ; preds = %514, %524, %518, %510
  %527 = icmp eq ptr %511, null
  br i1 %527, label %551, label %528, !prof !174

528:                                              ; preds = %526, %538
  %529 = phi ptr [ %539, %538 ], [ %511, %526 ]
  %530 = getelementptr inbounds %struct.use_optype_d, ptr %529, i64 0, i32 1
  %531 = load ptr, ptr %530, align 8, !tbaa !113
  %532 = icmp eq ptr %531, null
  br i1 %532, label %538, label %533, !prof !175

533:                                              ; preds = %528
  %534 = getelementptr inbounds %struct.use_optype_d, ptr %529, i64 0, i32 1, i32 1
  %535 = load ptr, ptr %534, align 8, !tbaa !114
  %536 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %531, i64 0, i32 1
  store ptr %535, ptr %536, align 8, !tbaa !114
  %537 = load ptr, ptr %534, align 8, !tbaa !114
  store ptr %531, ptr %537, align 8, !tbaa !113
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %530, i8 0, i64 16, i1 false)
  br label %538

538:                                              ; preds = %533, %528
  %539 = load ptr, ptr %529, align 8, !tbaa !110
  %540 = icmp eq ptr %539, null
  br i1 %540, label %541, label %528, !prof !176, !llvm.loop !177

541:                                              ; preds = %538
  %542 = load ptr, ptr @cfun, align 8, !tbaa !58
  %543 = getelementptr inbounds %struct.function, ptr %542, i64 0, i32 3
  %544 = load ptr, ptr %543, align 8, !tbaa !79
  %545 = getelementptr inbounds %struct.gimple_df, ptr %544, i64 0, i32 11, i32 5
  %546 = load ptr, ptr %545, align 8, !tbaa !116
  store ptr %546, ptr %511, align 8, !tbaa !110
  %547 = load ptr, ptr @cfun, align 8, !tbaa !58
  %548 = getelementptr inbounds %struct.function, ptr %547, i64 0, i32 3
  %549 = load ptr, ptr %548, align 8, !tbaa !79
  %550 = getelementptr inbounds %struct.gimple_df, ptr %549, i64 0, i32 11, i32 5
  store ptr %511, ptr %550, align 8, !tbaa !116
  br label %551

551:                                              ; preds = %541, %526
  %552 = load ptr, ptr @build_vuse, align 8, !tbaa !58
  %553 = icmp eq ptr %552, null
  br i1 %553, label %595, label %554, !prof !165

554:                                              ; preds = %551
  %555 = load i32, ptr %0, align 8
  %556 = and i32 %555, 254
  %557 = add nsw i32 %556, -10
  %558 = icmp ult i32 %557, -4
  br i1 %558, label %563, label %559, !prof !136

559:                                              ; preds = %554
  %560 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %561 = load ptr, ptr %560, align 8, !tbaa !69
  %562 = icmp eq ptr %561, null
  br i1 %562, label %563, label %595, !prof !166

563:                                              ; preds = %554, %559
  %564 = load ptr, ptr @cfun, align 8, !tbaa !58
  %565 = icmp eq ptr %564, null
  br i1 %565, label %570, label %566, !prof !169

566:                                              ; preds = %563
  %567 = getelementptr inbounds %struct.function, ptr %564, i64 0, i32 3
  %568 = load ptr, ptr %567, align 8, !tbaa !79
  %569 = icmp eq ptr %568, null
  br i1 %569, label %570, label %571, !prof !169

570:                                              ; preds = %566, %563
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 51, ptr noundef nonnull @.str.1) #20
  br label %571

571:                                              ; preds = %570, %566
  %572 = getelementptr inbounds %struct.function, ptr %564, i64 0, i32 3
  %573 = load ptr, ptr %572, align 8, !tbaa !79
  %574 = getelementptr inbounds %struct.gimple_df, ptr %573, i64 0, i32 3
  %575 = load ptr, ptr %574, align 8, !tbaa !90
  %576 = load i32, ptr %0, align 8
  %577 = and i32 %576, 254
  %578 = add nsw i32 %577, -10
  %579 = icmp ult i32 %578, -4
  br i1 %579, label %580, label %581, !prof !169

580:                                              ; preds = %571
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 1407, ptr noundef nonnull @.str.1) #20
  br label %581

581:                                              ; preds = %580, %571
  %582 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  store ptr %575, ptr %582, align 8, !tbaa !69
  %583 = load ptr, ptr @cfun, align 8, !tbaa !58
  %584 = icmp eq ptr %583, null
  br i1 %584, label %589, label %585, !prof !169

585:                                              ; preds = %581
  %586 = getelementptr inbounds %struct.function, ptr %583, i64 0, i32 3
  %587 = load ptr, ptr %586, align 8, !tbaa !79
  %588 = icmp eq ptr %587, null
  br i1 %588, label %589, label %590, !prof !169

589:                                              ; preds = %585, %581
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 51, ptr noundef nonnull @.str.1) #20
  br label %590

590:                                              ; preds = %589, %585
  %591 = getelementptr inbounds %struct.function, ptr %583, i64 0, i32 3
  %592 = load ptr, ptr %591, align 8, !tbaa !79
  %593 = getelementptr inbounds %struct.gimple_df, ptr %592, i64 0, i32 3
  %594 = load ptr, ptr %593, align 8, !tbaa !90
  tail call void @mark_sym_for_renaming(ptr noundef %594) #20
  br label %595

595:                                              ; preds = %590, %559, %551
  br label %596

596:                                              ; preds = %595, %677
  %597 = phi i64 [ %679, %677 ], [ 0, %595 ]
  %598 = phi ptr [ %661, %677 ], [ %2, %595 ]
  %599 = load ptr, ptr @build_uses, align 8
  %600 = icmp eq ptr %599, null
  br i1 %600, label %603, label %601, !prof !178

601:                                              ; preds = %596
  %602 = load i32, ptr %599, align 8, !tbaa !123
  br label %603

603:                                              ; preds = %601, %596
  %604 = phi i32 [ %602, %601 ], [ 0, %596 ]
  %605 = zext i32 %604 to i64
  %606 = icmp ult i64 %597, %605
  br i1 %606, label %607, label %680, !prof !179

607:                                              ; preds = %603
  %608 = getelementptr inbounds %struct.VEC_tree_base, ptr %599, i64 0, i32 2, i64 %597
  %609 = load ptr, ptr %608, align 8, !tbaa !58
  %610 = load ptr, ptr @cfun, align 8, !tbaa !58
  %611 = getelementptr inbounds %struct.function, ptr %610, i64 0, i32 3
  %612 = load ptr, ptr %611, align 8, !tbaa !79
  %613 = getelementptr inbounds %struct.gimple_df, ptr %612, i64 0, i32 11, i32 5
  %614 = load ptr, ptr %613, align 8, !tbaa !116
  %615 = icmp eq ptr %614, null
  br i1 %615, label %618, label %616, !prof !180

616:                                              ; preds = %607
  %617 = load ptr, ptr %614, align 8, !tbaa !110
  store ptr %617, ptr %613, align 8, !tbaa !116
  br label %660

618:                                              ; preds = %607
  %619 = getelementptr inbounds %struct.gimple_df, ptr %612, i64 0, i32 11, i32 1
  %620 = load i32, ptr %619, align 8, !tbaa !89
  %621 = add i32 %620, 40
  %622 = getelementptr inbounds %struct.gimple_df, ptr %612, i64 0, i32 11, i32 2
  %623 = load i32, ptr %622, align 4, !tbaa !88
  %624 = icmp ult i32 %621, %623
  br i1 %624, label %649, label %625, !prof !181

625:                                              ; preds = %618
  switch i32 %623, label %629 [
    i32 0, label %626
    i32 1016, label %627
    i32 4088, label %628
    i32 16376, label %628
  ], !prof !182

626:                                              ; preds = %625
  store i32 1016, ptr %622, align 4, !tbaa !88
  br label %630

627:                                              ; preds = %625
  store i32 4088, ptr %622, align 4, !tbaa !88
  br label %630

628:                                              ; preds = %625, %625
  store i32 16376, ptr %622, align 4, !tbaa !88
  br label %630

629:                                              ; preds = %625
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 319, ptr noundef nonnull @.str.1) #20
  br label %630

630:                                              ; preds = %629, %628, %627, %626
  %631 = load ptr, ptr @cfun, align 8, !tbaa !58
  %632 = getelementptr inbounds %struct.function, ptr %631, i64 0, i32 3
  %633 = load ptr, ptr %632, align 8, !tbaa !79
  %634 = getelementptr inbounds %struct.gimple_df, ptr %633, i64 0, i32 11, i32 2
  %635 = load i32, ptr %634, align 4, !tbaa !88
  %636 = zext i32 %635 to i64
  %637 = add nuw nsw i64 %636, 8
  %638 = tail call ptr @ggc_alloc_stat(i64 noundef %637) #20
  %639 = load ptr, ptr @cfun, align 8, !tbaa !58
  %640 = getelementptr inbounds %struct.function, ptr %639, i64 0, i32 3
  %641 = load ptr, ptr %640, align 8, !tbaa !79
  %642 = getelementptr inbounds %struct.gimple_df, ptr %641, i64 0, i32 11
  %643 = load ptr, ptr %642, align 8, !tbaa !86
  store ptr %643, ptr %638, align 8, !tbaa !95
  %644 = load ptr, ptr @cfun, align 8, !tbaa !58
  %645 = getelementptr inbounds %struct.function, ptr %644, i64 0, i32 3
  %646 = load ptr, ptr %645, align 8, !tbaa !79
  %647 = getelementptr inbounds %struct.gimple_df, ptr %646, i64 0, i32 11
  store ptr %638, ptr %647, align 8, !tbaa !86
  %648 = getelementptr inbounds %struct.gimple_df, ptr %646, i64 0, i32 11, i32 1
  store i32 0, ptr %648, align 8, !tbaa !89
  br label %649

649:                                              ; preds = %630, %618
  %650 = load ptr, ptr @cfun, align 8, !tbaa !58
  %651 = getelementptr inbounds %struct.function, ptr %650, i64 0, i32 3
  %652 = load ptr, ptr %651, align 8, !tbaa !79
  %653 = getelementptr inbounds %struct.gimple_df, ptr %652, i64 0, i32 11
  %654 = load ptr, ptr %653, align 8, !tbaa !86
  %655 = getelementptr inbounds %struct.gimple_df, ptr %652, i64 0, i32 11, i32 1
  %656 = load i32, ptr %655, align 8, !tbaa !89
  %657 = zext i32 %656 to i64
  %658 = getelementptr inbounds %struct.ssa_operand_memory_d, ptr %654, i64 0, i32 1, i64 %657
  %659 = add i32 %656, 40
  store i32 %659, ptr %655, align 8, !tbaa !89
  br label %660

660:                                              ; preds = %649, %616
  %661 = phi ptr [ %614, %616 ], [ %658, %649 ]
  %662 = getelementptr inbounds %struct.use_optype_d, ptr %661, i64 0, i32 1
  %663 = getelementptr inbounds %struct.use_optype_d, ptr %661, i64 0, i32 1, i32 3
  store ptr %609, ptr %663, align 8, !tbaa !183
  %664 = load ptr, ptr %609, align 8, !tbaa !58
  %665 = icmp eq ptr %664, null
  br i1 %665, label %670, label %666, !prof !184

666:                                              ; preds = %660
  %667 = load i64, ptr %664, align 8
  %668 = and i64 %667, 65535
  %669 = icmp eq i64 %668, 141
  br i1 %669, label %671, label %670, !prof !185

670:                                              ; preds = %666, %660
  store ptr null, ptr %662, align 8, !tbaa !113
  br label %677

671:                                              ; preds = %666
  %672 = getelementptr inbounds %struct.tree_ssa_name, ptr %664, i64 0, i32 5
  store ptr %672, ptr %662, align 8, !tbaa !113
  %673 = getelementptr inbounds %struct.tree_ssa_name, ptr %664, i64 0, i32 5, i32 1
  %674 = load ptr, ptr %673, align 8, !tbaa !114
  %675 = getelementptr inbounds %struct.use_optype_d, ptr %661, i64 0, i32 1, i32 1
  store ptr %674, ptr %675, align 8, !tbaa !114
  %676 = load ptr, ptr %673, align 8, !tbaa !114
  store ptr %662, ptr %676, align 8, !tbaa !113
  store ptr %662, ptr %673, align 8, !tbaa !114
  br label %677

677:                                              ; preds = %671, %670
  %678 = getelementptr inbounds %struct.use_optype_d, ptr %661, i64 0, i32 1, i32 2
  store ptr %0, ptr %678, align 8, !tbaa !69
  store ptr %661, ptr %598, align 8, !tbaa !110
  store ptr null, ptr %661, align 8, !tbaa !110
  %679 = add nuw nsw i64 %597, 1
  br label %596, !llvm.loop !186

680:                                              ; preds = %603
  %681 = load ptr, ptr %2, align 8, !tbaa !110
  %682 = load i32, ptr %0, align 8
  %683 = and i32 %682, 255
  %684 = add nsw i32 %683, -10
  %685 = icmp ult i32 %684, -9
  br i1 %685, label %686, label %687, !prof !121

686:                                              ; preds = %680
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 1326, ptr noundef nonnull @.str.1) #20
  br label %687

687:                                              ; preds = %686, %680
  %688 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  store ptr %681, ptr %688, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  store ptr null, ptr @build_vdef, align 8, !tbaa !58
  store ptr null, ptr @build_vuse, align 8, !tbaa !58
  %689 = load ptr, ptr @build_defs, align 8
  %690 = icmp eq ptr %689, null
  br i1 %690, label %692, label %691, !prof !121

691:                                              ; preds = %687
  store i32 0, ptr %689, align 8, !tbaa !123
  br label %692

692:                                              ; preds = %691, %687
  %693 = load ptr, ptr @build_uses, align 8
  %694 = icmp eq ptr %693, null
  br i1 %694, label %696, label %695, !prof !121

695:                                              ; preds = %692
  store i32 0, ptr %693, align 8, !tbaa !123
  br label %696

696:                                              ; preds = %692, %695
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 0) #20
  %697 = load i8, ptr @timevar_enable, align 1, !tbaa !69
  %698 = icmp eq i8 %697, 0
  br i1 %698, label %700, label %699, !prof !120

699:                                              ; preds = %696
  tail call void @timevar_pop_1(i32 noundef 61) #20
  br label %700

700:                                              ; preds = %696, %699, %15
  ret void
}

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @swap_tree_operands(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #14 !prof !57 {
  %4 = load ptr, ptr %1, align 8, !tbaa !58
  %5 = load ptr, ptr %2, align 8, !tbaa !58
  %6 = load ptr, ptr @cfun, align 8, !tbaa !58
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 11, i32 3
  %14 = load i8, ptr %13, align 8, !tbaa !82
  %15 = icmp eq i8 %14, 0
  br label %16

16:                                               ; preds = %3, %8, %12
  %17 = phi i1 [ true, %3 ], [ true, %8 ], [ %15, %12 ]
  %18 = icmp eq ptr %4, %5
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %65, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %0, align 8
  %22 = and i32 %21, 255
  %23 = add nsw i32 %22, -10
  %24 = icmp ult i32 %23, -9
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !69
  br label %28

28:                                               ; preds = %20, %25
  %29 = phi ptr [ %27, %25 ], [ null, %20 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %28, %36
  %32 = phi ptr [ %37, %36 ], [ %29, %28 ]
  %33 = getelementptr inbounds %struct.use_optype_d, ptr %32, i64 0, i32 1, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !183
  %35 = icmp eq ptr %34, %1
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %32, align 8, !tbaa !110
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %31, !llvm.loop !187

39:                                               ; preds = %36, %31, %28
  %40 = phi ptr [ null, %28 ], [ null, %36 ], [ %32, %31 ]
  br i1 %24, label %44, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !69
  br label %44

44:                                               ; preds = %39, %41
  %45 = phi ptr [ %43, %41 ], [ null, %39 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %44, %52
  %48 = phi ptr [ %53, %52 ], [ %45, %44 ]
  %49 = getelementptr inbounds %struct.use_optype_d, ptr %48, i64 0, i32 1, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !183
  %51 = icmp eq ptr %50, %2
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr %48, align 8, !tbaa !110
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %47, !llvm.loop !188

55:                                               ; preds = %52, %47, %44
  %56 = phi ptr [ null, %44 ], [ null, %52 ], [ %48, %47 ]
  %57 = icmp ne ptr %40, null
  %58 = icmp ne ptr %56, null
  %59 = and i1 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.use_optype_d, ptr %56, i64 0, i32 1, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !183
  %63 = getelementptr inbounds %struct.use_optype_d, ptr %40, i64 0, i32 1, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !183
  store ptr %64, ptr %61, align 8, !tbaa !183
  store ptr %62, ptr %63, align 8, !tbaa !183
  br label %65

65:                                               ; preds = %55, %60, %16
  store ptr %5, ptr %1, align 8, !tbaa !58
  store ptr %4, ptr %2, align 8, !tbaa !58
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @verify_imm_links(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #12 !prof !57 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1195, ptr noundef nonnull @.str.1) #20
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !189
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1198, ptr noundef nonnull @.str.1) #20
  br label %13

13:                                               ; preds = %7, %12
  %14 = load ptr, ptr %8, align 8, !tbaa !113
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !114
  br i1 %15, label %18, label %21

18:                                               ; preds = %13
  %19 = icmp eq ptr %17, null
  br i1 %19, label %79, label %20

20:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1202, ptr noundef nonnull @.str.1) #20
  br label %79

21:                                               ; preds = %13, %36
  %22 = phi ptr [ %38, %36 ], [ %17, %13 ]
  %23 = phi ptr [ %22, %36 ], [ %8, %13 ]
  %24 = phi i32 [ %39, %36 ], [ 0, %13 ]
  %25 = icmp eq ptr %22, %8
  br i1 %25, label %41, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %22, align 8, !tbaa !113
  %28 = icmp eq ptr %23, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %22, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !189
  %32 = icmp eq ptr %31, null
  br i1 %32, label %56, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %31, align 8, !tbaa !58
  %35 = icmp eq ptr %34, %1
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %22, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !114
  %39 = add nuw nsw i32 %24, 1
  %40 = icmp eq i32 %39, 50000002
  br i1 %40, label %56, label %21, !llvm.loop !190

41:                                               ; preds = %21, %50
  %42 = phi ptr [ %51, %50 ], [ %14, %21 ]
  %43 = phi ptr [ %42, %50 ], [ %8, %21 ]
  %44 = phi i32 [ %52, %50 ], [ %24, %21 ]
  %45 = icmp eq ptr %42, %8
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %42, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !114
  %49 = icmp eq ptr %43, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load ptr, ptr %42, align 8, !tbaa !113
  %52 = add nsw i32 %44, -1
  %53 = icmp slt i32 %44, 0
  br i1 %53, label %56, label %41, !llvm.loop !191

54:                                               ; preds = %41
  %55 = icmp eq i32 %44, 0
  br i1 %55, label %79, label %56

56:                                               ; preds = %36, %33, %29, %26, %50, %46, %54
  %57 = phi ptr [ %42, %54 ], [ %42, %46 ], [ %51, %50 ], [ %22, %26 ], [ %22, %29 ], [ %22, %33 ], [ %38, %36 ]
  %58 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !69
  %60 = icmp eq ptr %59, null
  br i1 %60, label %72, label %61

61:                                               ; preds = %56
  %62 = load i32, ptr %59, align 8
  %63 = and i32 %62, 255
  %64 = add nsw i32 %63, -10
  %65 = icmp ult i32 %64, -9
  %66 = and i32 %62, 8192
  %67 = icmp eq i32 %66, 0
  %68 = or i1 %67, %65
  br i1 %68, label %72, label %69

69:                                               ; preds = %61
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %59)
  %71 = load ptr, ptr %58, align 8, !tbaa !69
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %71, i32 noundef 0, i32 noundef 2) #20
  br label %72

72:                                               ; preds = %69, %61, %56
  %73 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %57, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !189
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %57, ptr noundef %74)
  %76 = load ptr, ptr %73, align 8, !tbaa !189
  %77 = load ptr, ptr %76, align 8, !tbaa !58
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %77, i32 noundef 2) #20
  %78 = tail call i32 @fputc(i32 10, ptr %0)
  br label %79

79:                                               ; preds = %54, %20, %18, %72
  %80 = phi i8 [ 1, %72 ], [ 0, %18 ], [ 0, %20 ], [ 0, %54 ]
  ret i8 %80
}

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_immediate_uses_for(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !57 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1266, ptr noundef nonnull @.str.1) #20
  br label %9

9:                                                ; preds = %4, %8
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %1, i32 noundef 2) #20
  %10 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 6, i64 1, ptr %0)
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !73
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = tail call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %11) #20
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %9, %18
  %22 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 10, i64 1, ptr %0)
  br label %77

23:                                               ; preds = %15, %18
  %24 = load ptr, ptr %12, align 8, !tbaa !114
  %25 = icmp eq ptr %11, %24
  br i1 %25, label %42, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %24, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !114
  %29 = icmp eq ptr %11, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %24, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !69
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 255
  %35 = icmp ne i32 %34, 2
  %36 = zext i1 %35 to i8
  br label %42

37:                                               ; preds = %26
  %38 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !73
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %11, ptr noundef null, ptr noundef null) #20
  br label %42

42:                                               ; preds = %23, %30, %37, %40
  %43 = phi i8 [ %36, %30 ], [ %41, %40 ], [ 0, %23 ], [ 0, %37 ]
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 13, i64 1, ptr %0)
  br label %77

47:                                               ; preds = %42
  %48 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !73
  %49 = icmp eq i32 %48, 0
  %50 = load ptr, ptr %12, align 8, !tbaa !114
  %51 = icmp eq ptr %50, %11
  br i1 %49, label %53, label %52

52:                                               ; preds = %47
  br i1 %51, label %74, label %61

53:                                               ; preds = %47
  br i1 %51, label %74, label %54

54:                                               ; preds = %53, %54
  %55 = phi ptr [ %59, %54 ], [ %50, %53 ]
  %56 = phi i32 [ %57, %54 ], [ 0, %53 ]
  %57 = add i32 %56, 1
  %58 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %55, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !114
  %60 = icmp eq ptr %59, %11
  br i1 %60, label %74, label %54, !llvm.loop !192

61:                                               ; preds = %52, %61
  %62 = phi ptr [ %72, %61 ], [ %50, %52 ]
  %63 = phi i32 [ %70, %61 ], [ 0, %52 ]
  %64 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %62, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !69
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %66, 255
  %68 = icmp ne i32 %67, 2
  %69 = zext i1 %68 to i32
  %70 = add i32 %63, %69
  %71 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %62, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !114
  %73 = icmp eq ptr %72, %11
  br i1 %73, label %74, label %61, !llvm.loop !193

74:                                               ; preds = %61, %54, %52, %53
  %75 = phi i32 [ 0, %53 ], [ 0, %52 ], [ %57, %54 ], [ %70, %61 ]
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %75)
  br label %77

77:                                               ; preds = %45, %74, %21
  %78 = load ptr, ptr %12, align 8, !tbaa !114
  %79 = icmp eq ptr %78, %11
  br i1 %79, label %107, label %80

80:                                               ; preds = %77, %101
  %81 = phi ptr [ %105, %101 ], [ %78, %77 ]
  %82 = phi ptr [ %103, %101 ], [ %78, %77 ]
  %83 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %81, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !69
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %81, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !189
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 34, i64 1, ptr %0)
  br label %101

92:                                               ; preds = %86, %80
  %93 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %81, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !189
  %95 = load ptr, ptr %94, align 8, !tbaa !58
  %96 = tail call zeroext i8 @is_gimple_reg(ptr noundef %95) #20
  %97 = icmp eq i8 %96, 0
  %98 = load ptr, ptr %83, align 8, !tbaa !69
  br i1 %97, label %99, label %100

99:                                               ; preds = %92
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %98, i32 noundef 0, i32 noundef 16448) #20
  br label %101

100:                                              ; preds = %92
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %98, i32 noundef 0, i32 noundef 2) #20
  br label %101

101:                                              ; preds = %90, %100, %99
  %102 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %82, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !114
  %104 = icmp eq ptr %103, %11
  %105 = select i1 %104, ptr null, ptr %103
  %106 = icmp eq ptr %103, %11
  br i1 %106, label %107, label %80, !llvm.loop !194

107:                                              ; preds = %101, %77
  %108 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_immediate_uses(ptr noundef %0) local_unnamed_addr #12 !prof !57 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 18, i64 1, ptr %0)
  br label %3

3:                                                ; preds = %22, %1
  %4 = phi i64 [ %23, %22 ], [ 1, %1 ]
  %5 = load ptr, ptr @cfun, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  %8 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !195
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load i32, ptr %9, align 8, !tbaa !123
  br label %13

13:                                               ; preds = %3, %11
  %14 = phi i32 [ %12, %11 ], [ 0, %3 ]
  %15 = zext i32 %14 to i64
  %16 = icmp ult i64 %4, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.VEC_tree_base, ptr %9, i64 0, i32 2, i64 %4
  %19 = load ptr, ptr %18, align 8, !tbaa !58
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @dump_immediate_uses_for(ptr noundef %0, ptr noundef nonnull %19)
  br label %22

22:                                               ; preds = %17, %21
  %23 = add nuw nsw i64 %4, 1
  br label %3, !llvm.loop !196

24:                                               ; preds = %13
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_immediate_uses() local_unnamed_addr #12 !prof !57 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !58
  tail call void @dump_immediate_uses(ptr noundef %1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_immediate_uses_for(ptr noundef %0) local_unnamed_addr #12 !prof !57 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !58
  tail call void @dump_immediate_uses_for(ptr noundef %2, ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @unlink_stmt_vdef(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !197 {
  %2 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #20
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 254
  %5 = add nsw i32 %4, -10
  %6 = icmp ult i32 %5, -4
  br i1 %6, label %10, label %7, !prof !198

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %114, label %13, !prof !199

13:                                               ; preds = %10
  %14 = load i64, ptr %11, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %114, !prof !200

17:                                               ; preds = %13
  %18 = add nsw i32 %4, -6
  %19 = icmp ult i32 %18, 4
  tail call void @llvm.assume(i1 %19)
  %20 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  %22 = getelementptr inbounds %struct.tree_ssa_name, ptr %21, i64 0, i32 5
  %23 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %2, i64 0, i32 1
  store ptr %22, ptr %23, align 8, !tbaa !201
  %24 = getelementptr inbounds %struct.tree_ssa_name, ptr %21, i64 0, i32 5, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !114
  store ptr %25, ptr %2, align 8, !tbaa !203
  %26 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %2, i64 0, i32 3
  %27 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %2, i64 0, i32 2
  %28 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %2, i64 0, i32 2, i32 1
  %29 = icmp eq ptr %25, %22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %27, i8 0, i64 40, i1 false)
  br i1 %29, label %31, label %30, !prof !204

30:                                               ; preds = %17
  call fastcc void @link_use_stmts_after(ptr noundef %25, ptr noundef nonnull %2)
  br label %31

31:                                               ; preds = %17, %30
  %32 = load ptr, ptr %2, align 8, !tbaa !203
  %33 = load ptr, ptr %23, align 8, !tbaa !201
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %100, label %35, !prof !205

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  br label %37

37:                                               ; preds = %35, %96
  %38 = phi ptr [ %32, %35 ], [ %97, %96 ]
  %39 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !114
  store ptr %40, ptr %26, align 8, !tbaa !206
  %41 = load ptr, ptr %2, align 8, !tbaa !203
  %42 = icmp eq ptr %41, %27
  br i1 %42, label %85, label %43, !prof !207

43:                                               ; preds = %37, %81
  %44 = phi ptr [ %82, %81 ], [ %38, %37 ]
  %45 = load i32, ptr %0, align 8
  %46 = and i32 %45, 254
  %47 = add nsw i32 %46, -10
  %48 = icmp ult i32 %47, -4
  br i1 %48, label %51, label %49, !prof !208

49:                                               ; preds = %43
  %50 = load ptr, ptr %36, align 8, !tbaa !69
  br label %51

51:                                               ; preds = %43, %49
  %52 = phi ptr [ %50, %49 ], [ null, %43 ]
  %53 = load ptr, ptr %44, align 8, !tbaa !113
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55, !prof !208

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %44, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !114
  %58 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %53, i64 0, i32 1
  store ptr %57, ptr %58, align 8, !tbaa !114
  %59 = load ptr, ptr %56, align 8, !tbaa !114
  store ptr %53, ptr %59, align 8, !tbaa !113
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %44, i8 0, i64 16, i1 false)
  br label %60

60:                                               ; preds = %55, %51
  %61 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %44, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !189
  store ptr %52, ptr %62, align 8, !tbaa !58
  %63 = icmp eq ptr %52, null
  br i1 %63, label %68, label %64, !prof !208

64:                                               ; preds = %60
  %65 = load i64, ptr %52, align 8
  %66 = and i64 %65, 65535
  %67 = icmp eq i64 %66, 141
  br i1 %67, label %69, label %68, !prof !209

68:                                               ; preds = %64, %60
  store ptr null, ptr %44, align 8, !tbaa !113
  br label %75

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.tree_ssa_name, ptr %52, i64 0, i32 5
  store ptr %70, ptr %44, align 8, !tbaa !113
  %71 = getelementptr inbounds %struct.tree_ssa_name, ptr %52, i64 0, i32 5, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !114
  %73 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %44, i64 0, i32 1
  store ptr %72, ptr %73, align 8, !tbaa !114
  %74 = load ptr, ptr %71, align 8, !tbaa !114
  store ptr %44, ptr %74, align 8, !tbaa !113
  store ptr %44, ptr %71, align 8, !tbaa !114
  br label %75

75:                                               ; preds = %68, %69
  %76 = load ptr, ptr %26, align 8, !tbaa !206
  store ptr %76, ptr %2, align 8, !tbaa !203
  %77 = icmp eq ptr %76, %27
  br i1 %77, label %81, label %78, !prof !209

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %76, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !114
  store ptr %80, ptr %26, align 8, !tbaa !206
  br label %81

81:                                               ; preds = %75, %78
  %82 = phi ptr [ %76, %78 ], [ null, %75 ]
  %83 = load ptr, ptr %2, align 8, !tbaa !203
  %84 = icmp eq ptr %83, %27
  br i1 %84, label %85, label %43, !prof !210, !llvm.loop !211

85:                                               ; preds = %81, %37
  %86 = load ptr, ptr %28, align 8, !tbaa !114
  store ptr %86, ptr %2, align 8, !tbaa !203
  %87 = load ptr, ptr %23, align 8, !tbaa !201
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %89, label %95, !prof !212

89:                                               ; preds = %85
  %90 = load ptr, ptr %27, align 8, !tbaa !113
  %91 = icmp eq ptr %90, null
  br i1 %91, label %96, label %92, !prof !204

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %90, i64 0, i32 1
  store ptr %86, ptr %93, align 8, !tbaa !114
  %94 = load ptr, ptr %28, align 8, !tbaa !114
  store ptr %90, ptr %94, align 8, !tbaa !113
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  br label %96

95:                                               ; preds = %85
  call fastcc void @link_use_stmts_after(ptr noundef %86, ptr noundef nonnull %2)
  br label %96

96:                                               ; preds = %89, %92, %95
  %97 = load ptr, ptr %2, align 8, !tbaa !203
  %98 = load ptr, ptr %23, align 8, !tbaa !201
  %99 = icmp eq ptr %97, %98
  br i1 %99, label %100, label %37, !prof !213, !llvm.loop !214

100:                                              ; preds = %96, %31
  %101 = load i32, ptr %0, align 8
  %102 = and i32 %101, 254
  %103 = add nsw i32 %102, -6
  %104 = icmp ult i32 %103, 4
  call void @llvm.assume(i1 %104)
  %105 = load ptr, ptr %20, align 8, !tbaa !69
  %106 = load i64, ptr %105, align 8
  %107 = and i64 %106, 4194304
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %114, label %109, !prof !215

109:                                              ; preds = %100
  %110 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !69
  %112 = load i64, ptr %111, align 8
  %113 = or i64 %112, 4194304
  store i64 %113, ptr %111, align 8
  br label %114

114:                                              ; preds = %100, %109, %10, %13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #20
  ret void
}

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

declare ptr @create_var_ann(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind uwtable
define internal fastcc void @get_asm_expr_operands(ptr nocapture noundef %0) unnamed_addr #12 !prof !57 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #20
  %6 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %7 = load i8, ptr %6, align 1, !tbaa !69
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 3
  %10 = zext nneg i32 %9 to i64
  %11 = alloca i8, i64 %10, align 16
  %12 = icmp eq i8 %7, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  br label %19

15:                                               ; preds = %91, %1
  %16 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %17 = load i8, ptr %16, align 8, !tbaa !69
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %97, label %102

19:                                               ; preds = %13, %91
  %20 = phi i8 [ %7, %13 ], [ %94, %91 ]
  %21 = phi i64 [ 0, %13 ], [ %93, %91 ]
  %22 = zext i8 %20 to i32
  %23 = trunc i64 %21 to i32
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 2655, ptr noundef nonnull @.str.1) #20
  br label %26

26:                                               ; preds = %25, %19
  %27 = load i8, ptr %14, align 8, !tbaa !69
  %28 = zext i8 %27 to i64
  %29 = add nuw i64 %21, %28
  %30 = load i32, ptr %0, align 8
  %31 = and i32 %30, 255
  %32 = add nsw i32 %31, -10
  %33 = icmp ult i32 %32, -9
  br i1 %33, label %48, label %34

34:                                               ; preds = %26
  %35 = zext nneg i32 %31 to i64
  %36 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !73
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !126
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %43

43:                                               ; preds = %42, %34
  %44 = getelementptr inbounds i8, ptr %0, i64 %40
  %45 = and i64 %29, 4294967295
  %46 = getelementptr inbounds ptr, ptr %44, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !58
  br label %48

48:                                               ; preds = %26, %43
  %49 = phi ptr [ %47, %43 ], [ null, %26 ]
  %50 = getelementptr inbounds %struct.tree_list, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !69
  %52 = getelementptr inbounds %struct.tree_list, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !69
  %54 = getelementptr inbounds %struct.tree_string, ptr %53, i64 0, i32 2
  store ptr %54, ptr %2, align 8, !tbaa !58
  %55 = getelementptr inbounds ptr, ptr %11, i64 %21
  store ptr %54, ptr %55, align 8, !tbaa !58
  %56 = call zeroext i8 @parse_output_constraint(ptr noundef nonnull %2, i32 noundef %23, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %57 = load i8, ptr %4, align 1, !tbaa !69
  %58 = icmp ne i8 %57, 0
  %59 = load i8, ptr %5, align 1
  %60 = icmp ne i8 %59, 0
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 796, ptr noundef nonnull @.str.1) #20
  br label %63

63:                                               ; preds = %48, %62
  %64 = load i8, ptr %4, align 1, !tbaa !69
  %65 = icmp eq i8 %64, 0
  %66 = load i8, ptr %3, align 1
  %67 = icmp ne i8 %66, 0
  %68 = select i1 %65, i1 %67, i1 false
  br i1 %68, label %69, label %91

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.tree_list, ptr %49, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !69
  %72 = call ptr @get_base_address(ptr noundef %71) #20
  %73 = icmp eq ptr %72, null
  br i1 %73, label %91, label %74

74:                                               ; preds = %69
  %75 = load i64, ptr %72, align 8
  %76 = and i64 %75, 65535
  %77 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !73
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %80, label %91

80:                                               ; preds = %74
  %81 = call ptr @get_base_address(ptr noundef nonnull %72) #20
  %82 = icmp eq ptr %81, null
  br i1 %82, label %91, label %83

83:                                               ; preds = %80
  %84 = load i64, ptr %81, align 8
  %85 = and i64 %84, 65535
  %86 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !73
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = or i64 %84, 262144
  store i64 %90, ptr %81, align 8
  br label %91

91:                                               ; preds = %89, %83, %80, %69, %74, %63
  %92 = getelementptr inbounds %struct.tree_list, ptr %49, i64 0, i32 2
  call fastcc void @get_expr_operands(ptr noundef nonnull %0, ptr noundef nonnull %92, i32 noundef 1)
  %93 = add nuw nsw i64 %21, 1
  %94 = load i8, ptr %6, align 1, !tbaa !69
  %95 = zext i8 %94 to i64
  %96 = icmp ult i64 %93, %95
  br i1 %96, label %19, label %15, !llvm.loop !216

97:                                               ; preds = %162, %15
  %98 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %99 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %100 = load i8, ptr %99, align 2, !tbaa !69
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %210, label %173

102:                                              ; preds = %15, %162
  %103 = phi i8 [ %165, %162 ], [ %17, %15 ]
  %104 = phi i64 [ %164, %162 ], [ 0, %15 ]
  %105 = zext i8 %103 to i32
  %106 = trunc i64 %104 to i32
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 2622, ptr noundef nonnull @.str.1) #20
  br label %109

109:                                              ; preds = %108, %102
  %110 = load i32, ptr %0, align 8
  %111 = and i32 %110, 255
  %112 = add nsw i32 %111, -10
  %113 = icmp ult i32 %112, -9
  br i1 %113, label %127, label %114

114:                                              ; preds = %109
  %115 = zext nneg i32 %111 to i64
  %116 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !73
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %118
  %120 = load i64, ptr %119, align 8, !tbaa !126
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %123

123:                                              ; preds = %122, %114
  %124 = getelementptr inbounds i8, ptr %0, i64 %120
  %125 = getelementptr inbounds ptr, ptr %124, i64 %104
  %126 = load ptr, ptr %125, align 8, !tbaa !58
  br label %127

127:                                              ; preds = %109, %123
  %128 = phi ptr [ %126, %123 ], [ null, %109 ]
  %129 = getelementptr inbounds %struct.tree_list, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !69
  %131 = getelementptr inbounds %struct.tree_list, ptr %130, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !69
  %133 = getelementptr inbounds %struct.tree_string, ptr %132, i64 0, i32 2
  store ptr %133, ptr %2, align 8, !tbaa !58
  %134 = call zeroext i8 @parse_input_constraint(ptr noundef nonnull %2, i32 noundef 0, i32 noundef 0, i32 noundef %8, i32 noundef 0, ptr noundef nonnull %11, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %135 = load i8, ptr %4, align 1, !tbaa !69
  %136 = icmp eq i8 %135, 0
  %137 = load i8, ptr %3, align 1
  %138 = icmp ne i8 %137, 0
  %139 = select i1 %136, i1 %138, i1 false
  br i1 %139, label %140, label %162

140:                                              ; preds = %127
  %141 = getelementptr inbounds %struct.tree_list, ptr %128, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !69
  %143 = call ptr @get_base_address(ptr noundef %142) #20
  %144 = icmp eq ptr %143, null
  br i1 %144, label %162, label %145

145:                                              ; preds = %140
  %146 = load i64, ptr %143, align 8
  %147 = and i64 %146, 65535
  %148 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !73
  %150 = icmp eq i32 %149, 3
  br i1 %150, label %151, label %162

151:                                              ; preds = %145
  %152 = call ptr @get_base_address(ptr noundef nonnull %143) #20
  %153 = icmp eq ptr %152, null
  br i1 %153, label %162, label %154

154:                                              ; preds = %151
  %155 = load i64, ptr %152, align 8
  %156 = and i64 %155, 65535
  %157 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !73
  %159 = icmp eq i32 %158, 3
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = or i64 %155, 262144
  store i64 %161, ptr %152, align 8
  br label %162

162:                                              ; preds = %160, %154, %151, %140, %145, %127
  %163 = getelementptr inbounds %struct.tree_list, ptr %128, i64 0, i32 2
  call fastcc void @get_expr_operands(ptr noundef nonnull %0, ptr noundef nonnull %163, i32 noundef 0)
  %164 = add nuw nsw i64 %104, 1
  %165 = load i8, ptr %16, align 8, !tbaa !69
  %166 = zext i8 %165 to i64
  %167 = icmp ult i64 %164, %166
  br i1 %167, label %102, label %97, !llvm.loop !217

168:                                              ; preds = %199
  %169 = add nuw nsw i64 %175, 1
  %170 = load i8, ptr %99, align 2, !tbaa !69
  %171 = zext i8 %170 to i64
  %172 = icmp ult i64 %169, %171
  br i1 %172, label %173, label %210, !llvm.loop !218

173:                                              ; preds = %97, %168
  %174 = phi i8 [ %170, %168 ], [ %100, %97 ]
  %175 = phi i64 [ %169, %168 ], [ 0, %97 ]
  %176 = zext i8 %174 to i32
  %177 = trunc i64 %175 to i32
  %178 = icmp ult i32 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 2688, ptr noundef nonnull @.str.1) #20
  br label %180

180:                                              ; preds = %179, %173
  %181 = load i8, ptr %98, align 8, !tbaa !69
  %182 = zext i8 %181 to i64
  %183 = add nuw i64 %175, %182
  %184 = load i8, ptr %6, align 1, !tbaa !69
  %185 = zext i8 %184 to i64
  %186 = add i64 %183, %185
  %187 = load i32, ptr %0, align 8
  %188 = and i32 %187, 255
  %189 = add nsw i32 %188, -1
  %190 = icmp ult i32 %189, 9
  call void @llvm.assume(i1 %190)
  %191 = zext nneg i32 %188 to i64
  %192 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %191
  %193 = load i32, ptr %192, align 4, !tbaa !73
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %194
  %196 = load i64, ptr %195, align 8, !tbaa !126
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %180
  call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %199

199:                                              ; preds = %198, %180
  %200 = getelementptr inbounds i8, ptr %0, i64 %196
  %201 = and i64 %186, 4294967295
  %202 = getelementptr inbounds ptr, ptr %200, i64 %201
  %203 = load ptr, ptr %202, align 8, !tbaa !58
  %204 = getelementptr inbounds %struct.tree_list, ptr %203, i64 0, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !69
  %206 = getelementptr inbounds %struct.tree_string, ptr %205, i64 0, i32 2
  %207 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %206, ptr noundef nonnull dereferenceable(7) @.str.19)
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %168

209:                                              ; preds = %199
  call fastcc void @add_virtual_operand(ptr noundef nonnull %0, i32 noundef 1)
  br label %210

210:                                              ; preds = %168, %97, %209
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @get_expr_operands(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #13 !prof !219 !PGOFuncName !220 {
  br label %4

4:                                                ; preds = %372, %369, %367, %337, %334, %330, %325, %298, %41, %3
  %5 = phi ptr [ %1, %3 ], [ %43, %41 ], [ %287, %298 ], [ %326, %325 ], [ %333, %330 ], [ %335, %334 ], [ %340, %337 ], [ %368, %367 ], [ %371, %369 ], [ %375, %372 ]
  %6 = phi i32 [ %2, %3 ], [ %42, %41 ], [ %13, %298 ], [ %14, %325 ], [ %14, %330 ], [ %6, %334 ], [ %14, %337 ], [ %6, %367 ], [ %6, %369 ], [ %6, %372 ]
  %7 = load ptr, ptr %5, align 8, !tbaa !58
  %8 = icmp eq ptr %7, null
  br i1 %8, label %385, label %9, !prof !221

9:                                                ; preds = %4
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 2
  %13 = and i32 %6, 2
  %14 = select i1 %12, i32 %13, i32 0, !prof !222
  %15 = load i64, ptr %7, align 8
  %16 = trunc i64 %15 to i32
  %17 = and i32 %16, 65535
  %18 = and i64 %15, 65535
  %19 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !73
  %21 = trunc i64 %15 to i16
  switch i16 %21, label %376 [
    i16 121, label %24
    i16 141, label %44
    i16 139, label %385
    i16 33, label %385
    i16 30, label %385
    i16 37, label %280
    i16 49, label %284
    i16 48, label %286
    i16 47, label %286
    i16 152, label %299
    i16 45, label %300
    i16 46, label %300
    i16 41, label %300
    i16 43, label %300
    i16 44, label %300
    i16 150, label %334
    i16 56, label %337
    i16 57, label %337
    i16 51, label %22
    i16 42, label %358
    i16 96, label %367
    i16 118, label %367
    i16 93, label %369
    i16 94, label %369
    i16 95, label %369
    i16 52, label %369
    i16 50, label %369
    i16 148, label %369
    i16 167, label %372
    i16 151, label %372
    i16 29, label %385
    i16 32, label %165
    i16 34, label %165
    i16 36, label %165
  ], !prof !223

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.tree_constructor, ptr %7, i64 0, i32 1
  br label %341

24:                                               ; preds = %9
  br i1 %12, label %38, label %25, !prof !224

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !69
  %28 = tail call ptr @get_base_address(ptr noundef %27) #20
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30, !prof !225

30:                                               ; preds = %25
  %31 = load i64, ptr %28, align 8
  %32 = and i64 %31, 65535
  %33 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !73
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %38, !prof !226

36:                                               ; preds = %30
  %37 = or i64 %31, 262144
  store i64 %37, ptr %28, align 8
  br label %38

38:                                               ; preds = %36, %30, %25, %24
  %39 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %7) #20
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %385, !prof !227

41:                                               ; preds = %38
  %42 = or i32 %6, 2
  %43 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  br label %4

44:                                               ; preds = %9
  %45 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !69
  %47 = load i64, ptr %46, align 8
  %48 = trunc i64 %47 to i16
  switch i16 %48, label %49 [
    i16 32, label %50
    i16 34, label %50
    i16 36, label %50
  ], !prof !228

49:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 657, ptr noundef nonnull @.str.1) #20
  br label %50

50:                                               ; preds = %49, %44, %44, %44
  %51 = load ptr, ptr %5, align 8, !tbaa !58
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 141
  br i1 %54, label %55, label %58, !prof !229

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.tree_ssa_name, ptr %51, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !69
  br label %58

58:                                               ; preds = %55, %50
  %59 = phi ptr [ %57, %55 ], [ %51, %50 ]
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 524288
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %70, label %63, !prof !230

63:                                               ; preds = %58
  %64 = load i32, ptr %0, align 8
  %65 = and i32 %64, 254
  %66 = add nsw i32 %65, -10
  %67 = icmp ult i32 %66, -4
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = or i32 %64, 16384
  store i32 %69, ptr %0, align 8
  br label %70

70:                                               ; preds = %68, %63, %58
  %71 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %59) #20
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %108, label %73, !prof !231

73:                                               ; preds = %70
  %74 = and i32 %6, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %92, label %76, !prof !232

76:                                               ; preds = %73
  %77 = load ptr, ptr @build_defs, align 8, !tbaa !58
  %78 = icmp eq ptr %77, null
  br i1 %78, label %84, label %79, !prof !233

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.VEC_tree_base, ptr %77, i64 0, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !148
  %82 = load i32, ptr %77, align 8, !tbaa !123
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86, !prof !233

84:                                               ; preds = %79, %76
  %85 = tail call ptr @vec_heap_p_reserve(ptr noundef %77, i32 noundef 1) #20
  store ptr %85, ptr @build_defs, align 8, !tbaa !58
  br label %86

86:                                               ; preds = %84, %79
  %87 = load ptr, ptr @build_defs, align 8, !tbaa !58
  %88 = load i32, ptr %87, align 8, !tbaa !123
  %89 = add i32 %88, 1
  store i32 %89, ptr %87, align 8, !tbaa !123
  %90 = zext i32 %88 to i64
  %91 = getelementptr inbounds %struct.VEC_tree_base, ptr %87, i64 0, i32 2, i64 %90
  store ptr %5, ptr %91, align 8, !tbaa !58
  br label %385

92:                                               ; preds = %73
  %93 = load ptr, ptr @build_uses, align 8, !tbaa !58
  %94 = icmp eq ptr %93, null
  br i1 %94, label %100, label %95, !prof !234

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.VEC_tree_base, ptr %93, i64 0, i32 1
  %97 = load i32, ptr %96, align 4, !tbaa !148
  %98 = load i32, ptr %93, align 8, !tbaa !123
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %102, !prof !234

100:                                              ; preds = %95, %92
  %101 = tail call ptr @vec_heap_p_reserve(ptr noundef %93, i32 noundef 1) #20
  store ptr %101, ptr @build_uses, align 8, !tbaa !58
  br label %102

102:                                              ; preds = %100, %95
  %103 = load ptr, ptr @build_uses, align 8, !tbaa !58
  %104 = load i32, ptr %103, align 8, !tbaa !123
  %105 = add i32 %104, 1
  store i32 %105, ptr %103, align 8, !tbaa !123
  %106 = zext i32 %104 to i64
  %107 = getelementptr inbounds %struct.VEC_tree_base, ptr %103, i64 0, i32 2, i64 %106
  store ptr %5, ptr %107, align 8, !tbaa !58
  br label %385

108:                                              ; preds = %70
  %109 = icmp eq i32 %13, 0
  br i1 %109, label %110, label %385, !prof !235

110:                                              ; preds = %108
  %111 = load i32, ptr %0, align 8
  %112 = and i32 %111, 255
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %114, label %115, !prof !136

114:                                              ; preds = %110
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 638, ptr noundef nonnull @.str.1) #20
  br label %115

115:                                              ; preds = %114, %110
  %116 = and i32 %6, 1
  %117 = icmp eq i32 %116, 0
  %118 = load ptr, ptr @cfun, align 8, !tbaa !58
  %119 = icmp eq ptr %118, null
  br i1 %117, label %145, label %120, !prof !236

120:                                              ; preds = %115
  br i1 %119, label %125, label %121, !prof !137

121:                                              ; preds = %120
  %122 = getelementptr inbounds %struct.function, ptr %118, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !79
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %126, !prof !137

125:                                              ; preds = %121, %120
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 51, ptr noundef nonnull @.str.1) #20
  br label %126

126:                                              ; preds = %125, %121
  %127 = getelementptr inbounds %struct.function, ptr %118, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !79
  %129 = getelementptr inbounds %struct.gimple_df, ptr %128, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !90
  %131 = load i32, ptr @optimize, align 4, !tbaa !73
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %385, label %133, !prof !137

133:                                              ; preds = %126
  %134 = load ptr, ptr @build_vdef, align 8, !tbaa !58
  %135 = icmp eq ptr %134, null
  %136 = icmp eq ptr %134, %130
  %137 = or i1 %135, %136
  br i1 %137, label %138, label %143, !prof !138

138:                                              ; preds = %133
  %139 = load ptr, ptr @build_vuse, align 8, !tbaa !58
  %140 = icmp eq ptr %139, null
  %141 = icmp eq ptr %139, %130
  %142 = or i1 %140, %141
  br i1 %142, label %144, label %143, !prof !138

143:                                              ; preds = %138, %133
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 606, ptr noundef nonnull @.str.1) #20
  br label %144

144:                                              ; preds = %143, %138
  store ptr %130, ptr @build_vdef, align 8, !tbaa !58
  store ptr %130, ptr @build_vuse, align 8, !tbaa !58
  br label %385

145:                                              ; preds = %115
  br i1 %119, label %150, label %146, !prof !140

146:                                              ; preds = %145
  %147 = getelementptr inbounds %struct.function, ptr %118, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !79
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %151, !prof !140

150:                                              ; preds = %146, %145
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 51, ptr noundef nonnull @.str.1) #20
  br label %151

151:                                              ; preds = %150, %146
  %152 = getelementptr inbounds %struct.function, ptr %118, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !79
  %154 = getelementptr inbounds %struct.gimple_df, ptr %153, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !90
  %156 = load i32, ptr @optimize, align 4, !tbaa !73
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %385, label %158, !prof !140

158:                                              ; preds = %151
  %159 = load ptr, ptr @build_vuse, align 8, !tbaa !58
  %160 = icmp eq ptr %159, null
  %161 = icmp eq ptr %159, %155
  %162 = or i1 %160, %161
  br i1 %162, label %164, label %163, !prof !141

163:                                              ; preds = %158
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 622, ptr noundef nonnull @.str.1) #20
  br label %164

164:                                              ; preds = %163, %158
  store ptr %155, ptr @build_vuse, align 8, !tbaa !58
  br label %385

165:                                              ; preds = %9, %9, %9
  %166 = load ptr, ptr %5, align 8, !tbaa !58
  %167 = load i64, ptr %166, align 8
  %168 = and i64 %167, 65535
  %169 = icmp eq i64 %168, 141
  br i1 %169, label %170, label %173, !prof !229

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.tree_ssa_name, ptr %166, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !69
  br label %173

173:                                              ; preds = %170, %165
  %174 = phi ptr [ %172, %170 ], [ %166, %165 ]
  %175 = load i64, ptr %174, align 8
  %176 = and i64 %175, 524288
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %185, label %178, !prof !230

178:                                              ; preds = %173
  %179 = load i32, ptr %0, align 8
  %180 = and i32 %179, 254
  %181 = add nsw i32 %180, -10
  %182 = icmp ult i32 %181, -4
  br i1 %182, label %185, label %183

183:                                              ; preds = %178
  %184 = or i32 %179, 16384
  store i32 %184, ptr %0, align 8
  br label %185

185:                                              ; preds = %183, %178, %173
  %186 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %174) #20
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %223, label %188, !prof !231

188:                                              ; preds = %185
  %189 = and i32 %6, 1
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %207, label %191, !prof !232

191:                                              ; preds = %188
  %192 = load ptr, ptr @build_defs, align 8, !tbaa !58
  %193 = icmp eq ptr %192, null
  br i1 %193, label %199, label %194, !prof !233

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.VEC_tree_base, ptr %192, i64 0, i32 1
  %196 = load i32, ptr %195, align 4, !tbaa !148
  %197 = load i32, ptr %192, align 8, !tbaa !123
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %201, !prof !233

199:                                              ; preds = %194, %191
  %200 = tail call ptr @vec_heap_p_reserve(ptr noundef %192, i32 noundef 1) #20
  store ptr %200, ptr @build_defs, align 8, !tbaa !58
  br label %201

201:                                              ; preds = %199, %194
  %202 = load ptr, ptr @build_defs, align 8, !tbaa !58
  %203 = load i32, ptr %202, align 8, !tbaa !123
  %204 = add i32 %203, 1
  store i32 %204, ptr %202, align 8, !tbaa !123
  %205 = zext i32 %203 to i64
  %206 = getelementptr inbounds %struct.VEC_tree_base, ptr %202, i64 0, i32 2, i64 %205
  store ptr %5, ptr %206, align 8, !tbaa !58
  br label %385

207:                                              ; preds = %188
  %208 = load ptr, ptr @build_uses, align 8, !tbaa !58
  %209 = icmp eq ptr %208, null
  br i1 %209, label %215, label %210, !prof !234

210:                                              ; preds = %207
  %211 = getelementptr inbounds %struct.VEC_tree_base, ptr %208, i64 0, i32 1
  %212 = load i32, ptr %211, align 4, !tbaa !148
  %213 = load i32, ptr %208, align 8, !tbaa !123
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %217, !prof !234

215:                                              ; preds = %210, %207
  %216 = tail call ptr @vec_heap_p_reserve(ptr noundef %208, i32 noundef 1) #20
  store ptr %216, ptr @build_uses, align 8, !tbaa !58
  br label %217

217:                                              ; preds = %215, %210
  %218 = load ptr, ptr @build_uses, align 8, !tbaa !58
  %219 = load i32, ptr %218, align 8, !tbaa !123
  %220 = add i32 %219, 1
  store i32 %220, ptr %218, align 8, !tbaa !123
  %221 = zext i32 %219 to i64
  %222 = getelementptr inbounds %struct.VEC_tree_base, ptr %218, i64 0, i32 2, i64 %221
  store ptr %5, ptr %222, align 8, !tbaa !58
  br label %385

223:                                              ; preds = %185
  %224 = icmp eq i32 %13, 0
  br i1 %224, label %225, label %385, !prof !235

225:                                              ; preds = %223
  %226 = load i32, ptr %0, align 8
  %227 = and i32 %226, 255
  %228 = icmp eq i32 %227, 2
  br i1 %228, label %229, label %230, !prof !136

229:                                              ; preds = %225
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 638, ptr noundef nonnull @.str.1) #20
  br label %230

230:                                              ; preds = %229, %225
  %231 = and i32 %6, 1
  %232 = icmp eq i32 %231, 0
  %233 = load ptr, ptr @cfun, align 8, !tbaa !58
  %234 = icmp eq ptr %233, null
  br i1 %232, label %260, label %235, !prof !236

235:                                              ; preds = %230
  br i1 %234, label %240, label %236, !prof !137

236:                                              ; preds = %235
  %237 = getelementptr inbounds %struct.function, ptr %233, i64 0, i32 3
  %238 = load ptr, ptr %237, align 8, !tbaa !79
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %241, !prof !137

240:                                              ; preds = %236, %235
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 51, ptr noundef nonnull @.str.1) #20
  br label %241

241:                                              ; preds = %240, %236
  %242 = getelementptr inbounds %struct.function, ptr %233, i64 0, i32 3
  %243 = load ptr, ptr %242, align 8, !tbaa !79
  %244 = getelementptr inbounds %struct.gimple_df, ptr %243, i64 0, i32 3
  %245 = load ptr, ptr %244, align 8, !tbaa !90
  %246 = load i32, ptr @optimize, align 4, !tbaa !73
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %385, label %248, !prof !137

248:                                              ; preds = %241
  %249 = load ptr, ptr @build_vdef, align 8, !tbaa !58
  %250 = icmp eq ptr %249, null
  %251 = icmp eq ptr %249, %245
  %252 = or i1 %250, %251
  br i1 %252, label %253, label %258, !prof !138

253:                                              ; preds = %248
  %254 = load ptr, ptr @build_vuse, align 8, !tbaa !58
  %255 = icmp eq ptr %254, null
  %256 = icmp eq ptr %254, %245
  %257 = or i1 %255, %256
  br i1 %257, label %259, label %258, !prof !138

258:                                              ; preds = %253, %248
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 606, ptr noundef nonnull @.str.1) #20
  br label %259

259:                                              ; preds = %258, %253
  store ptr %245, ptr @build_vdef, align 8, !tbaa !58
  store ptr %245, ptr @build_vuse, align 8, !tbaa !58
  br label %385

260:                                              ; preds = %230
  br i1 %234, label %265, label %261, !prof !140

261:                                              ; preds = %260
  %262 = getelementptr inbounds %struct.function, ptr %233, i64 0, i32 3
  %263 = load ptr, ptr %262, align 8, !tbaa !79
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %266, !prof !140

265:                                              ; preds = %261, %260
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 51, ptr noundef nonnull @.str.1) #20
  br label %266

266:                                              ; preds = %265, %261
  %267 = getelementptr inbounds %struct.function, ptr %233, i64 0, i32 3
  %268 = load ptr, ptr %267, align 8, !tbaa !79
  %269 = getelementptr inbounds %struct.gimple_df, ptr %268, i64 0, i32 3
  %270 = load ptr, ptr %269, align 8, !tbaa !90
  %271 = load i32, ptr @optimize, align 4, !tbaa !73
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %385, label %273, !prof !140

273:                                              ; preds = %266
  %274 = load ptr, ptr @build_vuse, align 8, !tbaa !58
  %275 = icmp eq ptr %274, null
  %276 = icmp eq ptr %274, %270
  %277 = or i1 %275, %276
  br i1 %277, label %279, label %278, !prof !141

278:                                              ; preds = %273
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 622, ptr noundef nonnull @.str.1) #20
  br label %279

279:                                              ; preds = %278, %273
  store ptr %270, ptr @build_vuse, align 8, !tbaa !58
  br label %385

280:                                              ; preds = %9
  %281 = and i32 %10, -65281
  %282 = icmp eq i32 %281, 2
  br i1 %282, label %385, label %283

283:                                              ; preds = %280
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 899, ptr noundef nonnull @.str.1) #20
  br label %385

284:                                              ; preds = %9
  %285 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  tail call fastcc void @get_expr_operands(ptr noundef nonnull %0, ptr noundef nonnull %285, i32 noundef %6)
  br label %286

286:                                              ; preds = %9, %9, %284
  %287 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %288 = load i64, ptr %7, align 8
  %289 = and i64 %288, 524288
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %298, label %291, !prof !237

291:                                              ; preds = %286
  %292 = load i32, ptr %0, align 8
  %293 = and i32 %292, 254
  %294 = add nsw i32 %293, -10
  %295 = icmp ult i32 %294, -4
  br i1 %295, label %298, label %296

296:                                              ; preds = %291
  %297 = or i32 %292, 16384
  store i32 %297, ptr %0, align 8
  br label %298

298:                                              ; preds = %296, %291, %286
  tail call fastcc void @add_virtual_operand(ptr noundef nonnull %0, i32 noundef %6)
  br label %4

299:                                              ; preds = %9
  tail call fastcc void @get_tmr_operands(ptr noundef nonnull %0, ptr noundef nonnull %7, i32 noundef %6)
  br label %385

300:                                              ; preds = %9, %9, %9, %9, %9
  %301 = and i64 %15, 524288
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %309, label %303, !prof !238

303:                                              ; preds = %300
  %304 = and i32 %10, 254
  %305 = add nsw i32 %304, -10
  %306 = icmp ult i32 %305, -4
  br i1 %306, label %309, label %307

307:                                              ; preds = %303
  %308 = or i32 %10, 16384
  store i32 %308, ptr %0, align 8
  br label %309

309:                                              ; preds = %307, %303, %300
  %310 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  tail call fastcc void @get_expr_operands(ptr noundef nonnull %0, ptr noundef nonnull %310, i32 noundef %6)
  %311 = icmp eq i32 %17, 41
  br i1 %311, label %312, label %327, !prof !239

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %314 = load ptr, ptr %313, align 8, !tbaa !69
  %315 = load i64, ptr %314, align 8
  %316 = and i64 %315, 524288
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %325, label %318, !prof !240

318:                                              ; preds = %312
  %319 = load i32, ptr %0, align 8
  %320 = and i32 %319, 254
  %321 = add nsw i32 %320, -10
  %322 = icmp ult i32 %321, -4
  br i1 %322, label %325, label %323

323:                                              ; preds = %318
  %324 = or i32 %319, 16384
  store i32 %324, ptr %0, align 8
  br label %325

325:                                              ; preds = %323, %318, %312
  %326 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1, i32 0, i32 1
  br label %4

327:                                              ; preds = %309
  %328 = add nsw i32 %17, -45
  %329 = icmp ult i32 %328, 2
  br i1 %329, label %330, label %385, !prof !241

330:                                              ; preds = %327
  %331 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  tail call fastcc void @get_expr_operands(ptr noundef nonnull %0, ptr noundef nonnull %331, i32 noundef %14)
  %332 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1, i32 0, i32 1
  tail call fastcc void @get_expr_operands(ptr noundef nonnull %0, ptr noundef nonnull %332, i32 noundef %14)
  %333 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1, i32 0, i32 2
  br label %4

334:                                              ; preds = %9
  %335 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %336 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  tail call fastcc void @get_expr_operands(ptr noundef nonnull %0, ptr noundef nonnull %336, i32 noundef %14)
  br label %4

337:                                              ; preds = %9, %9
  %338 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  tail call fastcc void @get_expr_operands(ptr noundef nonnull %0, ptr noundef nonnull %338, i32 noundef %14)
  %339 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  tail call fastcc void @get_expr_operands(ptr noundef nonnull %0, ptr noundef nonnull %339, i32 noundef %14)
  %340 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1, i32 0, i32 1
  br label %4

341:                                              ; preds = %22, %355
  %342 = phi i64 [ %357, %355 ], [ 0, %22 ]
  %343 = load ptr, ptr %23, align 8, !tbaa !69
  %344 = icmp eq ptr %343, null
  br i1 %344, label %352, label %345

345:                                              ; preds = %341
  %346 = trunc i64 %342 to i32
  %347 = load i32, ptr %343, align 8, !tbaa !242
  %348 = icmp ugt i32 %347, %346
  br i1 %348, label %349, label %352

349:                                              ; preds = %345
  %350 = and i64 %342, 4294967295
  %351 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %343, i64 0, i32 2, i64 %350
  br label %352

352:                                              ; preds = %341, %345, %349
  %353 = phi ptr [ %351, %349 ], [ null, %345 ], [ null, %341 ]
  %354 = phi i1 [ false, %349 ], [ true, %345 ], [ true, %341 ]
  br i1 %354, label %385, label %355

355:                                              ; preds = %352
  %356 = getelementptr inbounds %struct.constructor_elt_d, ptr %353, i64 0, i32 1
  tail call fastcc void @get_expr_operands(ptr noundef nonnull %0, ptr noundef nonnull %356, i32 noundef %14)
  %357 = add i64 %342, 1
  br label %341, !llvm.loop !244

358:                                              ; preds = %9
  %359 = and i64 %15, 524288
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %367, label %361

361:                                              ; preds = %358
  %362 = and i32 %10, 254
  %363 = add nsw i32 %362, -10
  %364 = icmp ult i32 %363, -4
  br i1 %364, label %367, label %365

365:                                              ; preds = %361
  %366 = or i32 %10, 16384
  store i32 %366, ptr %0, align 8
  br label %367

367:                                              ; preds = %9, %9, %365, %361, %376, %358
  %368 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  br label %4

369:                                              ; preds = %9, %9, %9, %9, %9, %9, %378
  %370 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  tail call fastcc void @get_expr_operands(ptr noundef nonnull %0, ptr noundef nonnull %370, i32 noundef %6)
  %371 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  br label %4

372:                                              ; preds = %9, %9
  %373 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  tail call fastcc void @get_expr_operands(ptr noundef nonnull %0, ptr noundef nonnull %373, i32 noundef %6)
  %374 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  tail call fastcc void @get_expr_operands(ptr noundef nonnull %0, ptr noundef nonnull %374, i32 noundef %6)
  %375 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1, i32 0, i32 1
  br label %4

376:                                              ; preds = %9
  %377 = icmp eq i32 %20, 6
  br i1 %377, label %367, label %378, !prof !245

378:                                              ; preds = %376
  %379 = and i32 %20, -3
  %380 = icmp eq i32 %379, 5
  br i1 %380, label %369, label %381, !prof !246

381:                                              ; preds = %378
  %382 = add i32 %20, -1
  %383 = icmp ult i32 %382, 2
  br i1 %383, label %385, label %384, !prof !247

384:                                              ; preds = %381
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1026, ptr noundef nonnull @.str.1) #20
  br label %385

385:                                              ; preds = %352, %279, %266, %259, %241, %223, %217, %201, %9, %9, %9, %9, %164, %151, %144, %126, %108, %102, %86, %381, %327, %283, %280, %38, %4, %384, %299
  ret void
}

declare zeroext i8 @parse_output_constraint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @parse_input_constraint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @add_virtual_operand(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #13 !prof !248 !PGOFuncName !249 {
  %3 = and i32 %1, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %61, !prof !235

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %10, !prof !136

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 638, ptr noundef nonnull @.str.1) #20
  br label %10

10:                                               ; preds = %5, %9
  %11 = and i32 %1, 1
  %12 = icmp eq i32 %11, 0
  %13 = load ptr, ptr @cfun, align 8, !tbaa !58
  %14 = icmp eq ptr %13, null
  br i1 %12, label %40, label %15, !prof !236

15:                                               ; preds = %10
  br i1 %14, label %20, label %16, !prof !137

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !79
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !137

20:                                               ; preds = %16, %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 51, ptr noundef nonnull @.str.1) #20
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !79
  %24 = getelementptr inbounds %struct.gimple_df, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !90
  %26 = load i32, ptr @optimize, align 4, !tbaa !73
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %61, label %28, !prof !137

28:                                               ; preds = %21
  %29 = load ptr, ptr @build_vdef, align 8, !tbaa !58
  %30 = icmp eq ptr %29, null
  %31 = icmp eq ptr %29, %25
  %32 = or i1 %30, %31
  br i1 %32, label %33, label %38, !prof !138

33:                                               ; preds = %28
  %34 = load ptr, ptr @build_vuse, align 8, !tbaa !58
  %35 = icmp eq ptr %34, null
  %36 = icmp eq ptr %34, %25
  %37 = or i1 %35, %36
  br i1 %37, label %39, label %38, !prof !138

38:                                               ; preds = %33, %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 606, ptr noundef nonnull @.str.1) #20
  br label %39

39:                                               ; preds = %38, %33
  store ptr %25, ptr @build_vdef, align 8, !tbaa !58
  br label %59

40:                                               ; preds = %10
  br i1 %14, label %45, label %41, !prof !140

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !79
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46, !prof !140

45:                                               ; preds = %41, %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 51, ptr noundef nonnull @.str.1) #20
  br label %46

46:                                               ; preds = %41, %45
  %47 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !79
  %49 = getelementptr inbounds %struct.gimple_df, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !90
  %51 = load i32, ptr @optimize, align 4, !tbaa !73
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %61, label %53, !prof !140

53:                                               ; preds = %46
  %54 = load ptr, ptr @build_vuse, align 8, !tbaa !58
  %55 = icmp eq ptr %54, null
  %56 = icmp eq ptr %54, %50
  %57 = or i1 %55, %56
  br i1 %57, label %59, label %58, !prof !141

58:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 622, ptr noundef nonnull @.str.1) #20
  br label %59

59:                                               ; preds = %53, %58, %39
  %60 = phi ptr [ %25, %39 ], [ %50, %58 ], [ %50, %53 ]
  store ptr %60, ptr @build_vuse, align 8, !tbaa !58
  br label %61

61:                                               ; preds = %59, %46, %21, %2
  ret void
}

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @get_tmr_operands(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #12 !prof !57 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 524288
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 254
  %10 = add nsw i32 %9, -10
  %11 = icmp ult i32 %10, -4
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = or i32 %8, 16384
  store i32 %13, ptr %0, align 8
  br label %14

14:                                               ; preds = %12, %7, %3
  %15 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %16 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %17 = and i32 %2, 2
  tail call fastcc void @get_expr_operands(ptr noundef %0, ptr noundef nonnull %16, i32 noundef %17)
  %18 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  tail call fastcc void @get_expr_operands(ptr noundef %0, ptr noundef nonnull %18, i32 noundef %17)
  %19 = load ptr, ptr %15, align 8, !tbaa !69
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %14
  %22 = tail call ptr @get_base_address(ptr noundef nonnull %19) #20
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = load i64, ptr %22, align 8
  %26 = and i64 %25, 65535
  %27 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !73
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = or i64 %25, 262144
  store i64 %31, ptr %22, align 8
  br label %32

32:                                               ; preds = %30, %24, %21, %14
  tail call fastcc void @add_virtual_operand(ptr noundef %0, i32 noundef %2)
  ret void
}

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

declare void @release_ssa_name(ptr noundef) local_unnamed_addr #3

declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #17

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !250 !PGOFuncName !251 {
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !189
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = tail call zeroext i8 @is_gimple_reg(ptr noundef %7) #20
  %9 = icmp eq i8 %8, 0
  %10 = load i32, ptr %4, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %77, !prof !252

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !69
  %16 = tail call zeroext i8 @is_gimple_reg(ptr noundef %15) #20
  %17 = icmp eq i8 %16, 0
  %18 = xor i1 %9, %17
  br i1 %18, label %25, label %19, !prof !253

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !69
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %25, !prof !254

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 4, i64 0
  br label %25

25:                                               ; preds = %19, %13, %23
  %26 = phi i32 [ %21, %23 ], [ 0, %13 ], [ %21, %19 ]
  %27 = phi i32 [ 1, %23 ], [ 0, %13 ], [ 0, %19 ]
  %28 = phi ptr [ %4, %23 ], [ null, %13 ], [ %4, %19 ]
  %29 = phi i1 [ true, %23 ], [ false, %13 ], [ false, %19 ]
  %30 = phi i8 [ 0, %23 ], [ 1, %13 ], [ 1, %19 ]
  %31 = phi ptr [ %24, %23 ], [ null, %13 ], [ null, %19 ]
  br i1 %29, label %32, label %188, !prof !255

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.gimple_statement_phi, ptr %28, i64 0, i32 1
  br label %34

34:                                               ; preds = %32, %72
  %35 = phi ptr [ %31, %32 ], [ %75, %72 ]
  %36 = phi ptr [ %0, %32 ], [ %62, %72 ]
  %37 = phi i8 [ %30, %32 ], [ %74, %72 ]
  %38 = phi i32 [ %27, %32 ], [ %73, %72 ]
  %39 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !189
  %41 = load ptr, ptr %40, align 8, !tbaa !58
  %42 = icmp ne ptr %41, %7
  %43 = icmp eq ptr %35, %0
  %44 = or i1 %42, %43
  br i1 %44, label %61, label %45, !prof !256

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %36, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !114
  %48 = icmp eq ptr %47, %35
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %35, align 8, !tbaa !113
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !114
  %55 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %50, i64 0, i32 1
  store ptr %54, ptr %55, align 8, !tbaa !114
  %56 = load ptr, ptr %53, align 8, !tbaa !114
  store ptr %50, ptr %56, align 8, !tbaa !113
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  br label %57

57:                                               ; preds = %52, %49
  store ptr %36, ptr %35, align 8, !tbaa !113
  %58 = load ptr, ptr %46, align 8, !tbaa !114
  %59 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !114
  %60 = load ptr, ptr %46, align 8, !tbaa !114
  store ptr %35, ptr %60, align 8, !tbaa !113
  store ptr %35, ptr %46, align 8, !tbaa !114
  br label %61

61:                                               ; preds = %34, %45, %57
  %62 = phi ptr [ %36, %34 ], [ %35, %57 ], [ %35, %45 ]
  %63 = icmp slt i32 %38, %26
  br i1 %63, label %64, label %72, !prof !257

64:                                               ; preds = %61
  %65 = add nsw i32 %38, 1
  %66 = load i32, ptr %33, align 8, !tbaa !69
  %67 = icmp ult i32 %66, %38
  br i1 %67, label %68, label %69, !prof !258

68:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 3103, ptr noundef nonnull @.str.1) #20
  br label %69

69:                                               ; preds = %68, %64
  %70 = zext i32 %38 to i64
  %71 = getelementptr inbounds %struct.gimple_statement_phi, ptr %28, i64 0, i32 4, i64 %70
  br label %72

72:                                               ; preds = %61, %69
  %73 = phi i32 [ %65, %69 ], [ %38, %61 ]
  %74 = phi i8 [ %37, %69 ], [ 1, %61 ]
  %75 = phi ptr [ %71, %69 ], [ null, %61 ]
  %76 = icmp eq i8 %74, 0
  br i1 %76, label %34, label %188, !prof !259, !llvm.loop !260

77:                                               ; preds = %2
  br i1 %9, label %147, label %78, !prof !261

78:                                               ; preds = %77
  %79 = load i32, ptr %4, align 8
  %80 = and i32 %79, 255
  %81 = add nsw i32 %80, -10
  %82 = icmp ult i32 %81, -9
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %4, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !69
  br label %86

86:                                               ; preds = %83, %78
  %87 = phi ptr [ %85, %83 ], [ null, %78 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %99, label %89

89:                                               ; preds = %86
  %90 = and i32 %79, 254
  %91 = add nsw i32 %90, -10
  %92 = icmp ult i32 %91, -4
  br i1 %92, label %99, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !69
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %87, align 8, !tbaa !110
  br label %99

99:                                               ; preds = %97, %93, %89, %86
  %100 = phi ptr [ %87, %86 ], [ %87, %89 ], [ %87, %93 ], [ %98, %97 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.use_optype_d, ptr %100, i64 0, i32 1
  %104 = load ptr, ptr %100, align 8, !tbaa !110
  br label %105

105:                                              ; preds = %99, %102
  %106 = phi ptr [ %104, %102 ], [ %100, %99 ]
  %107 = phi i8 [ 0, %102 ], [ 1, %99 ]
  %108 = phi ptr [ %103, %102 ], [ null, %99 ]
  br i1 %101, label %188, label %109

109:                                              ; preds = %105, %142
  %110 = phi ptr [ %145, %142 ], [ %108, %105 ]
  %111 = phi ptr [ %137, %142 ], [ %0, %105 ]
  %112 = phi i8 [ %144, %142 ], [ %107, %105 ]
  %113 = phi ptr [ %143, %142 ], [ %106, %105 ]
  %114 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !189
  %116 = load ptr, ptr %115, align 8, !tbaa !58
  %117 = icmp ne ptr %116, %7
  %118 = icmp eq ptr %110, %0
  %119 = or i1 %117, %118
  br i1 %119, label %136, label %120

120:                                              ; preds = %109
  %121 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %111, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !114
  %123 = icmp eq ptr %122, %110
  br i1 %123, label %136, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %110, align 8, !tbaa !113
  %126 = icmp eq ptr %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !114
  %130 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %125, i64 0, i32 1
  store ptr %129, ptr %130, align 8, !tbaa !114
  %131 = load ptr, ptr %128, align 8, !tbaa !114
  store ptr %125, ptr %131, align 8, !tbaa !113
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %110, i8 0, i64 16, i1 false)
  br label %132

132:                                              ; preds = %127, %124
  store ptr %111, ptr %110, align 8, !tbaa !113
  %133 = load ptr, ptr %121, align 8, !tbaa !114
  %134 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  store ptr %133, ptr %134, align 8, !tbaa !114
  %135 = load ptr, ptr %121, align 8, !tbaa !114
  store ptr %110, ptr %135, align 8, !tbaa !113
  store ptr %110, ptr %121, align 8, !tbaa !114
  br label %136

136:                                              ; preds = %132, %120, %109
  %137 = phi ptr [ %111, %109 ], [ %110, %132 ], [ %110, %120 ]
  %138 = icmp eq ptr %113, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.use_optype_d, ptr %113, i64 0, i32 1
  %141 = load ptr, ptr %113, align 8, !tbaa !110
  br label %142

142:                                              ; preds = %136, %139
  %143 = phi ptr [ %141, %139 ], [ %113, %136 ]
  %144 = phi i8 [ %112, %139 ], [ 1, %136 ]
  %145 = phi ptr [ %140, %139 ], [ null, %136 ]
  %146 = icmp eq i8 %144, 0
  br i1 %146, label %109, label %188, !llvm.loop !262

147:                                              ; preds = %77
  %148 = and i32 %10, 254
  %149 = add nsw i32 %148, -10
  %150 = icmp ult i32 %149, -4
  br i1 %150, label %162, label %151, !prof !263

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %4, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !69
  %154 = icmp eq ptr %153, null
  br i1 %154, label %162, label %155, !prof !263

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.use_optype_d, ptr %153, i64 0, i32 1, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !183
  %158 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 2
  %159 = icmp eq ptr %157, %158
  %160 = getelementptr inbounds %struct.use_optype_d, ptr %153, i64 0, i32 1
  %161 = select i1 %159, ptr %160, ptr null, !prof !261
  br label %162

162:                                              ; preds = %147, %151, %155
  %163 = phi ptr [ null, %147 ], [ null, %151 ], [ %161, %155 ]
  %164 = icmp eq ptr %163, null
  br i1 %164, label %188, label %165, !prof !263

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !189
  %168 = load ptr, ptr %167, align 8, !tbaa !58
  %169 = icmp ne ptr %168, %7
  %170 = icmp eq ptr %163, %0
  %171 = or i1 %170, %169
  br i1 %171, label %188, label %172, !prof !261

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !114
  %175 = icmp eq ptr %174, %163
  br i1 %175, label %188, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr %163, align 8, !tbaa !113
  %178 = icmp eq ptr %177, null
  br i1 %178, label %184, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !114
  %182 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %177, i64 0, i32 1
  store ptr %181, ptr %182, align 8, !tbaa !114
  %183 = load ptr, ptr %180, align 8, !tbaa !114
  store ptr %177, ptr %183, align 8, !tbaa !113
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %163, i8 0, i64 16, i1 false)
  br label %184

184:                                              ; preds = %179, %176
  store ptr %0, ptr %163, align 8, !tbaa !113
  %185 = load ptr, ptr %173, align 8, !tbaa !114
  %186 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  store ptr %185, ptr %186, align 8, !tbaa !114
  %187 = load ptr, ptr %173, align 8, !tbaa !114
  store ptr %163, ptr %187, align 8, !tbaa !113
  store ptr %163, ptr %173, align 8, !tbaa !114
  br label %188

188:                                              ; preds = %142, %72, %105, %25, %184, %172, %165, %162
  %189 = phi ptr [ %0, %165 ], [ %0, %162 ], [ %163, %184 ], [ %163, %172 ], [ %0, %25 ], [ %0, %105 ], [ %62, %72 ], [ %137, %142 ]
  %190 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !113
  %192 = icmp eq ptr %191, null
  br i1 %192, label %198, label %193, !prof !212

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !114
  %196 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %191, i64 0, i32 1
  store ptr %195, ptr %196, align 8, !tbaa !114
  %197 = load ptr, ptr %194, align 8, !tbaa !114
  store ptr %191, ptr %197, align 8, !tbaa !113
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %190, i8 0, i64 16, i1 false)
  br label %198

198:                                              ; preds = %193, %188
  store ptr %189, ptr %190, align 8, !tbaa !113
  %199 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %189, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !114
  %201 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  store ptr %200, ptr %201, align 8, !tbaa !114
  %202 = load ptr, ptr %199, align 8, !tbaa !114
  store ptr %190, ptr %202, align 8, !tbaa !113
  store ptr %190, ptr %199, align 8, !tbaa !114
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!56}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!35 = !{ptr @init_ssa_operands, ptr @vec_heap_p_reserve_exact, i64 2}
!36 = !{ptr @init_ssa_operands, ptr @bitmap_obstack_initialize, i64 1}
!37 = !{ptr @init_ssa_operands, ptr @get_identifier, i64 41}
!38 = !{ptr @init_ssa_operands, ptr @build_decl_stat, i64 41}
!39 = !{ptr @init_ssa_operands, ptr @create_var_ann, i64 41}
!40 = !{ptr @init_ssa_operands, ptr @add_referenced_var, i64 41}
!41 = !{ptr @fini_ssa_operands, ptr @free, i64 2}
!42 = !{ptr @fini_ssa_operands, ptr @ggc_free, i64 2030}
!43 = !{ptr @fini_ssa_operands, ptr @bitmap_obstack_release, i64 1}
!44 = !{ptr @update_stmt_operands, ptr @get_expr_operands, i64 1976415}
!45 = !{ptr @update_stmt_operands, ptr @gimple_call_flags, i64 69677}
!46 = !{ptr @update_stmt_operands, ptr @mark_sym_for_renaming, i64 230247}
!47 = !{ptr @update_stmt_operands, ptr @ggc_alloc_stat, i64 2030}
!48 = !{ptr @update_stmt_operands, ptr @gimple_set_modified, i64 653539}
!49 = !{ptr @unlink_stmt_vdef, ptr @link_use_stmts_after, i64 4439}
!50 = !{ptr @get_expr_operands, ptr @get_base_address, i64 73297}
!51 = !{ptr @get_expr_operands, ptr @is_gimple_min_invariant, i64 73297}
!52 = !{ptr @get_expr_operands, ptr @is_gimple_reg, i64 1149638}
!53 = !{ptr @get_expr_operands, ptr @add_virtual_operand, i64 785}
!54 = !{ptr @get_expr_operands, ptr @get_expr_operands, i64 139329}
!55 = !{ptr @link_use_stmts_after, ptr @is_gimple_reg, i64 4877}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = !{!"function_entry_count", i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !60, i64 0}
!60 = !{!"omnipotent char", !61, i64 0}
!61 = !{!"Simple C/C++ TBAA"}
!62 = !{!63, !59, i64 8}
!63 = !{!"_IO_FILE", !64, i64 0, !59, i64 8, !59, i64 16, !59, i64 24, !59, i64 32, !59, i64 40, !59, i64 48, !59, i64 56, !59, i64 64, !59, i64 72, !59, i64 80, !59, i64 88, !59, i64 96, !59, i64 104, !64, i64 112, !64, i64 116, !65, i64 120, !66, i64 128, !60, i64 130, !60, i64 131, !59, i64 136, !65, i64 144, !59, i64 152, !59, i64 160, !59, i64 168, !59, i64 176, !65, i64 184, !64, i64 192, !60, i64 196}
!64 = !{!"int", !60, i64 0}
!65 = !{!"long", !60, i64 0}
!66 = !{!"short", !60, i64 0}
!67 = !{!63, !59, i64 16}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{!60, !60, i64 0}
!70 = !{!63, !59, i64 40}
!71 = !{!63, !59, i64 48}
!72 = !{!63, !64, i64 0}
!73 = !{!64, !64, i64 0}
!74 = distinct !{!74, !75, !76}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = !{!"function_entry_count", i64 1057234}
!78 = !{!"branch_weights", i32 0, i32 1057234}
!79 = !{!80, !59, i64 24}
!80 = !{!"function", !59, i64 0, !59, i64 8, !59, i64 16, !59, i64 24, !59, i64 32, !59, i64 40, !59, i64 48, !59, i64 56, !59, i64 64, !59, i64 72, !59, i64 80, !59, i64 88, !59, i64 96, !64, i64 104, !64, i64 108, !64, i64 112, !64, i64 116, !64, i64 120, !64, i64 124, !59, i64 128, !64, i64 136, !64, i64 137, !64, i64 138, !64, i64 138, !64, i64 138, !64, i64 138, !64, i64 138, !64, i64 138, !64, i64 138, !64, i64 139, !64, i64 139, !64, i64 139, !64, i64 139, !64, i64 139, !64, i64 139, !64, i64 139}
!81 = !{!"branch_weights", i32 521257, i32 535977}
!82 = !{!83, !60, i64 16}
!83 = !{!"ssa_operands", !59, i64 0, !64, i64 8, !64, i64 12, !60, i64 16, !59, i64 24, !59, i64 32}
!84 = !{!"function_entry_count", i64 41}
!85 = !{!"branch_weights", i32 1, i32 40}
!86 = !{!83, !59, i64 0}
!87 = !{!"branch_weights", i32 41, i32 0}
!88 = !{!83, !64, i64 12}
!89 = !{!83, !64, i64 8}
!90 = !{!91, !59, i64 24}
!91 = !{!"gimple_df", !59, i64 0, !59, i64 8, !59, i64 16, !59, i64 24, !92, i64 32, !92, i64 48, !59, i64 64, !59, i64 72, !59, i64 80, !59, i64 88, !64, i64 96, !83, i64 104}
!92 = !{!"pt_solution", !64, i64 0, !64, i64 0, !64, i64 0, !64, i64 0, !64, i64 0, !64, i64 0, !59, i64 8}
!93 = !{!"branch_weights", i32 0, i32 1}
!94 = !{!"branch_weights", i32 1, i32 163}
!95 = !{!96, !59, i64 0}
!96 = !{!"ssa_operand_memory_d", !59, i64 0, !60, i64 8}
!97 = !{!"branch_weights", i32 163, i32 7957}
!98 = distinct !{!98, !75, !76}
!99 = !{!100, !64, i64 0}
!100 = !{!"", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !64, i64 16, !64, i64 20}
!101 = !{!100, !64, i64 4}
!102 = !{!100, !64, i64 8}
!103 = !{!100, !64, i64 12}
!104 = !{!100, !64, i64 16}
!105 = !{!100, !64, i64 20}
!106 = !{!107, !59, i64 0}
!107 = !{!"def_optype_d", !59, i64 0, !59, i64 8}
!108 = distinct !{!108, !75, !76}
!109 = !{!83, !59, i64 24}
!110 = !{!111, !59, i64 0}
!111 = !{!"use_optype_d", !59, i64 0, !112, i64 8}
!112 = !{!"ssa_use_operand_d", !59, i64 0, !59, i64 8, !60, i64 16, !59, i64 24}
!113 = !{!112, !59, i64 0}
!114 = !{!112, !59, i64 8}
!115 = distinct !{!115, !75, !76}
!116 = !{!83, !59, i64 32}
!117 = !{!"function_entry_count", i64 1057351}
!118 = !{!"branch_weights", i32 0, i32 1057351}
!119 = !{!"branch_weights", i32 403812, i32 653539}
!120 = !{!"branch_weights", i32 653539, i32 0}
!121 = !{!"branch_weights", i32 0, i32 653539}
!122 = !{!"branch_weights", i32 195233, i32 458306}
!123 = !{!124, !64, i64 0}
!124 = !{!"VEC_tree_base", !64, i64 0, !64, i64 4, !60, i64 8}
!125 = !{!"branch_weights", i32 653539, i32 0, i32 0}
!126 = !{!65, !65, i64 0}
!127 = !{!"branch_weights", i32 195278, i32 69677, i32 388584}
!128 = !{!"branch_weights", i32 0, i32 458261}
!129 = !{!"branch_weights", i32 653538, i32 1}
!130 = !{!"branch_weights", i32 0, i32 1518154}
!131 = !{!"branch_weights", i32 864616, i32 653538}
!132 = distinct !{!132, !75, !76}
!133 = !{!"branch_weights", i32 69677, i32 583862}
!134 = !{!"branch_weights", i32 69677, i32 0}
!135 = !{!"branch_weights", i32 69595, i32 82}
!136 = !{!"branch_weights", i32 0, i32 196164}
!137 = !{!"branch_weights", i32 0, i32 69716}
!138 = !{!"branch_weights", i32 69716, i32 0}
!139 = !{!"branch_weights", i32 70, i32 12}
!140 = !{!"branch_weights", i32 0, i32 126448}
!141 = !{!"branch_weights", i32 126448, i32 0}
!142 = !{!"branch_weights", i32 264955, i32 388584}
!143 = !{!"branch_weights", i32 583823, i32 69716}
!144 = !{!"branch_weights", i32 69154, i32 562}
!145 = !{!"branch_weights", i32 388, i32 174}
!146 = !{!"branch_weights", i32 562, i32 69154}
!147 = !{!"branch_weights", i32 0, i32 69154}
!148 = !{!124, !64, i64 4}
!149 = !{!"VP", i32 1, i64 69716, i64 8, i64 67380, i64 0, i64 2336}
!150 = !{!"branch_weights", i32 195233, i32 388590}
!151 = !{!"branch_weights", i32 583823, i32 0}
!152 = !{!"branch_weights", i32 388590, i32 69716}
!153 = !{!"branch_weights", i32 388, i32 69328}
!154 = !{!"branch_weights", i32 542351, i32 111188}
!155 = !{!"branch_weights", i32 110710, i32 478}
!156 = !{!107, !59, i64 8}
!157 = !{!"branch_weights", i32 110428, i32 282}
!158 = !{!"branch_weights", i32 127968, i32 415143}
!159 = !{!"branch_weights", i32 414383, i32 760}
!160 = !{!"branch_weights", i32 413924, i32 459}
!161 = !{!"branch_weights", i32 0, i32 40, i32 3, i32 5, i32 411}
!162 = !{!"branch_weights", i32 415143, i32 0}
!163 = distinct !{!163, !75, !76}
!164 = !{!"branch_weights", i32 0, i32 543111}
!165 = !{!"branch_weights", i32 457375, i32 196164}
!166 = !{!"branch_weights", i32 160919, i32 35245}
!167 = !{!"branch_weights", i32 34747, i32 498}
!168 = !{!"branch_weights", i32 35245, i32 160919}
!169 = !{!"branch_weights", i32 0, i32 160919}
!170 = !{!"VP", i32 1, i64 196164, i64 0, i64 125823, i64 8, i64 70093, i64 16, i64 248}
!171 = !{!"branch_weights", i32 195233, i32 262142}
!172 = !{!"branch_weights", i32 441269, i32 16106}
!173 = !{!"branch_weights", i32 0, i32 16106}
!174 = !{!"branch_weights", i32 572569, i32 80970}
!175 = !{!"branch_weights", i32 5448, i32 106807}
!176 = !{!"branch_weights", i32 80970, i32 31285}
!177 = distinct !{!177, !75, !76}
!178 = !{!"branch_weights", i32 0, i32 1363874}
!179 = !{!"branch_weights", i32 710335, i32 653539}
!180 = !{!"branch_weights", i32 629365, i32 80970}
!181 = !{!"branch_weights", i32 627794, i32 1571}
!182 = !{!"branch_weights", i32 0, i32 1, i32 36, i32 25, i32 1509}
!183 = !{!111, !59, i64 32}
!184 = !{!"branch_weights", i32 0, i32 710335}
!185 = !{!"branch_weights", i32 272314, i32 438021}
!186 = distinct !{!186, !75, !76}
!187 = distinct !{!187, !75, !76}
!188 = distinct !{!188, !75, !76}
!189 = !{!112, !59, i64 24}
!190 = distinct !{!190, !75, !76}
!191 = distinct !{!191, !75, !76}
!192 = distinct !{!192, !75, !76}
!193 = distinct !{!193, !75, !76}
!194 = distinct !{!194, !75, !76}
!195 = !{!91, !59, i64 16}
!196 = distinct !{!196, !75, !76}
!197 = !{!"function_entry_count", i64 50773}
!198 = !{!"branch_weights", i32 14, i32 50759}
!199 = !{!"branch_weights", i32 50731, i32 42}
!200 = !{!"branch_weights", i32 40, i32 2}
!201 = !{!202, !59, i64 8}
!202 = !{!"immediate_use_iterator_d", !59, i64 0, !59, i64 8, !112, i64 16, !59, i64 48}
!203 = !{!202, !59, i64 0}
!204 = !{!"branch_weights", i32 0, i32 40}
!205 = !{!"branch_weights", i32 1, i32 159}
!206 = !{!202, !59, i64 48}
!207 = !{!"branch_weights", i32 1, i32 4438}
!208 = !{!"branch_weights", i32 0, i32 4439}
!209 = !{!"branch_weights", i32 4439, i32 0}
!210 = !{!"branch_weights", i32 4438, i32 1}
!211 = distinct !{!211, !75, !76}
!212 = !{!"branch_weights", i32 40, i32 4399}
!213 = !{!"branch_weights", i32 159, i32 17597}
!214 = distinct !{!214, !75, !76}
!215 = !{!"branch_weights", i32 40, i32 0}
!216 = distinct !{!216, !75, !76}
!217 = distinct !{!217, !75, !76}
!218 = distinct !{!218, !75, !76}
!219 = !{!"function_entry_count", i64 2212798}
!220 = !{!"tree-ssa-operands.c;get_expr_operands"}
!221 = !{!"branch_weights", i32 501676, i32 1711122}
!222 = !{!"branch_weights", i32 0, i32 1711122}
!223 = !{!"branch_weights", i32 453403, i32 69866, i32 438106, i32 22843, i32 0, i32 3028, i32 0, i32 0, i32 0, i32 748, i32 0, i32 15461, i32 0, i32 14364, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35583, i32 0, i32 0, i32 0, i32 602527, i32 55193, i32 0}
!224 = !{!"branch_weights", i32 0, i32 69866}
!225 = !{!"branch_weights", i32 69677, i32 189}
!226 = !{!"branch_weights", i32 70, i32 119}
!227 = !{!"branch_weights", i32 49, i32 69817}
!228 = !{!"branch_weights", i32 0, i32 436779, i32 1327, i32 0}
!229 = !{!"branch_weights", i32 438106, i32 657720}
!230 = !{!"branch_weights", i32 1095826, i32 0}
!231 = !{!"branch_weights", i32 125800, i32 970026}
!232 = !{!"branch_weights", i32 514171, i32 455855}
!233 = !{!"branch_weights", i32 0, i32 455855}
!234 = !{!"branch_weights", i32 0, i32 514171}
!235 = !{!"branch_weights", i32 196164, i32 49}
!236 = !{!"branch_weights", i32 126448, i32 69716}
!237 = !{!"branch_weights", i32 748, i32 0}
!238 = !{!"branch_weights", i32 29825, i32 0}
!239 = !{!"branch_weights", i32 14364, i32 15461}
!240 = !{!"branch_weights", i32 14364, i32 0}
!241 = !{!"branch_weights", i32 15461, i32 0}
!242 = !{!243, !64, i64 0}
!243 = !{!"VEC_constructor_elt_base", !64, i64 0, !64, i64 4, !60, i64 8}
!244 = distinct !{!244, !75, !76}
!245 = !{!"branch_weights", i32 894, i32 452509}
!246 = !{!"branch_weights", i32 36477, i32 416032}
!247 = !{!"branch_weights", i32 416032, i32 0}
!248 = !{!"function_entry_count", i64 748}
!249 = !{!"tree-ssa-operands.c;add_virtual_operand"}
!250 = !{!"function_entry_count", i64 4439}
!251 = !{!"tree-ssa-operands.c;link_use_stmts_after"}
!252 = !{!"branch_weights", i32 438, i32 4001}
!253 = !{!"branch_weights", i32 0, i32 438}
!254 = !{!"branch_weights", i32 438, i32 0}
!255 = !{!"branch_weights", i32 437, i32 1}
!256 = !{!"branch_weights", i32 916, i32 0}
!257 = !{!"branch_weights", i32 478, i32 438}
!258 = !{!"branch_weights", i32 0, i32 478}
!259 = !{!"branch_weights", i32 479, i32 437}
!260 = distinct !{!260, !75, !76}
!261 = !{!"branch_weights", i32 4001, i32 0}
!262 = distinct !{!262, !75, !76}
!263 = !{!"branch_weights", i32 0, i32 4001}

; ModuleID = 'tree-switch-conversion.c'
source_filename = "tree-switch-conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"switchconv\00", align 1
@pass_convert_switch = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @switchconv_gate, ptr @do_switchconv, ptr null, ptr null, i32 0, i32 109, i32 40, i32 0, i32 0, i32 0, i32 2055 } }, align 8
@flag_tree_switch_conversion = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [72 x i8] c"beginning to process the following SWITCH statement (%s:%d) : ------- \0A\00", align 1
@info.0 = internal unnamed_addr global ptr null, align 8
@info.1 = internal unnamed_addr global ptr null, align 8
@info.2 = internal unnamed_addr global ptr null, align 8
@info.3 = internal unnamed_addr global ptr null, align 8
@info.4 = internal unnamed_addr global ptr null, align 8
@info.5 = internal unnamed_addr global i32 0, align 8
@info.6 = internal unnamed_addr global ptr null, align 8
@info.7 = internal unnamed_addr global ptr null, align 8
@info.8 = internal unnamed_addr global ptr null, align 8
@info.9 = internal unnamed_addr global ptr null, align 8
@info.10 = internal unnamed_addr global i32 0, align 8
@info.11 = internal unnamed_addr global i64 0, align 8
@info.12 = internal unnamed_addr global i64 0, align 8
@info.13 = internal unnamed_addr global ptr null, align 8
@info.14 = internal unnamed_addr global ptr null, align 8
@info.15 = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Switch converted\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"--------------------------------\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"tree-switch-conversion.c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Bailing out - \00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"switch has no labels\0A\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.8 = private unnamed_addr constant [14 x i8] c"index error.\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Processing of case %i failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.11 = private unnamed_addr constant [50 x i8] c"index range way too large or otherwise unusable.\0A\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [42 x i8] c"the maximum range-branch ratio exceeded.\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"  Bad case - cs BB  label is NULL\0A\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"  Bad case - a non-final BB has two predecessors\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"  Bad case - a non-final BB not empty\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"  Bad case - different final BB\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"   Non-invariant value from a case\0A\00", align 1
@flag_pic = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [53 x i8] c"   Value from a case would need runtime relocations\0A\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"   Value from a case is not a valid initializer\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"csti\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"CSWTCH\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"csui\00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #16
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #16
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #16
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
  %5 = tail call ptr @__ctype_tolower_loc() #16
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
  %5 = tail call ptr @__ctype_toupper_loc() #16
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #16
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @switchconv_gate() #9 !prof !63 !PGOFuncName !64 {
  %1 = load i32, ptr @flag_tree_switch_conversion, align 4, !tbaa !59
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @do_switchconv() #10 !prof !63 !PGOFuncName !65 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  %12 = alloca %struct.gimple_stmt_iterator, align 8
  %13 = alloca %struct.expanded_location, align 8
  %14 = load ptr, ptr @cfun, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !66
  %17 = load ptr, ptr %16, align 8, !tbaa !68
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !72
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %1006, label %23, !prof !73

23:                                               ; preds = %0, %997
  %24 = phi ptr [ %999, %997 ], [ %19, %0 ]
  %25 = call ptr @last_stmt(ptr noundef %24) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %997, label %27, !prof !74

27:                                               ; preds = %23
  %28 = load i32, ptr %25, align 8
  %29 = and i32 %28, 255
  %30 = icmp eq i32 %29, 5
  br i1 %30, label %31, label %997, !prof !75

31:                                               ; preds = %27
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %33 = icmp eq ptr %32, null
  br i1 %33, label %45, label %34, !prof !76

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.expanded_location, ptr %13, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #16
  %36 = getelementptr inbounds %struct.gimple_statement_base, ptr %25, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !55
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %13, i32 noundef %37) #16
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %39 = load ptr, ptr %13, align 8, !tbaa !77
  %40 = load i32, ptr %35, align 8, !tbaa !79
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.1, ptr noundef %39, i32 noundef %40)
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !44
  call void @print_gimple_stmt(ptr noundef %42, ptr noundef nonnull %25, i32 noundef 0, i32 noundef 2) #16
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %44 = call i32 @putc(i32 noundef 10, ptr noundef %43)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #16
  br label %45

45:                                               ; preds = %34, %31
  store ptr null, ptr @info.15, align 8, !tbaa !80
  %46 = getelementptr inbounds %struct.gimple_statement_base, ptr %25, i64 0, i32 3
  %47 = load i32, ptr %46, align 4, !tbaa !55
  %48 = icmp ugt i32 %47, 1
  br i1 %48, label %50, label %49, !prof !76

49:                                               ; preds = %45
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3162, ptr noundef nonnull @.str.5) #16
  br label %50

50:                                               ; preds = %49, %45
  %51 = add i32 %47, -1
  %52 = icmp ult i32 %51, 2
  br i1 %52, label %53, label %54, !prof !82

53:                                               ; preds = %50
  store ptr @.str.7, ptr @info.15, align 8, !tbaa !80
  br label %981

54:                                               ; preds = %50
  store ptr null, ptr @info.4, align 8, !tbaa !83
  %55 = getelementptr inbounds %struct.gimple_statement_base, ptr %25, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !55
  store ptr %56, ptr @info.3, align 8, !tbaa !84
  %57 = load i32, ptr %25, align 8
  %58 = and i32 %57, 255
  %59 = add nsw i32 %58, -1
  %60 = icmp ult i32 %59, 9
  call void @llvm.assume(i1 %60)
  %61 = zext nneg i32 %58 to i64
  %62 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !59
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %64
  %66 = load i64, ptr %65, align 8, !tbaa !85
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69, !prof !82

68:                                               ; preds = %54
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.5) #16
  br label %69

69:                                               ; preds = %68, %54
  %70 = getelementptr inbounds i8, ptr %25, i64 %66
  %71 = load ptr, ptr %70, align 8, !tbaa !44
  store ptr %71, ptr @info.0, align 8, !tbaa !86
  %72 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !55
  store ptr null, ptr @info.13, align 8, !tbaa !87
  store ptr null, ptr @info.14, align 8, !tbaa !88
  store i32 0, ptr @info.10, align 8, !tbaa !89
  store i64 0, ptr @info.11, align 8, !tbaa !90
  store i64 0, ptr @info.12, align 8, !tbaa !91
  %74 = load ptr, ptr @global_trees, align 16, !tbaa !44
  %75 = icmp eq ptr %73, %74
  br i1 %75, label %76, label %77, !prof !82

76:                                               ; preds = %69
  store ptr @.str.8, ptr @info.15, align 8, !tbaa !80
  br label %981

77:                                               ; preds = %69
  %78 = load i32, ptr %46, align 4, !tbaa !55
  %79 = icmp ugt i32 %78, 1
  br i1 %79, label %81, label %80, !prof !76

80:                                               ; preds = %77
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3162, ptr noundef nonnull @.str.5) #16
  br label %81

81:                                               ; preds = %80, %77
  %82 = add i32 %78, -1
  %83 = load i32, ptr %46, align 4, !tbaa !55
  %84 = icmp ugt i32 %83, 2
  br i1 %84, label %86, label %85, !prof !76

85:                                               ; preds = %81
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3215, ptr noundef nonnull @.str.5) #16
  br label %86

86:                                               ; preds = %85, %81
  %87 = load i32, ptr %25, align 8
  %88 = and i32 %87, 255
  %89 = add nsw i32 %88, -1
  %90 = icmp ult i32 %89, 9
  call void @llvm.assume(i1 %90)
  %91 = zext nneg i32 %88 to i64
  %92 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !59
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %94
  %96 = load i64, ptr %95, align 8, !tbaa !85
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99, !prof !82

98:                                               ; preds = %86
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.5) #16
  br label %99

99:                                               ; preds = %98, %86
  %100 = getelementptr inbounds i8, ptr %25, i64 %96
  %101 = getelementptr inbounds ptr, ptr %100, i64 2
  %102 = load ptr, ptr %101, align 8, !tbaa !44
  %103 = getelementptr inbounds %struct.tree_exp, ptr %102, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !55
  store ptr %104, ptr @info.1, align 8, !tbaa !92
  %105 = icmp ugt i32 %82, 1
  br i1 %105, label %107, label %106, !prof !76

106:                                              ; preds = %99
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 181, ptr noundef nonnull @.str.5) #16
  br label %107

107:                                              ; preds = %106, %99
  %108 = load i32, ptr %46, align 4, !tbaa !55
  %109 = icmp ugt i32 %108, 1
  br i1 %109, label %111, label %110, !prof !76

110:                                              ; preds = %107
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3215, ptr noundef nonnull @.str.5) #16
  br label %111

111:                                              ; preds = %110, %107
  %112 = load i32, ptr %25, align 8
  %113 = and i32 %112, 255
  %114 = add nsw i32 %113, -1
  %115 = icmp ult i32 %114, 9
  call void @llvm.assume(i1 %115)
  %116 = zext nneg i32 %113 to i64
  %117 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !59
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %119
  %121 = load i64, ptr %120, align 8, !tbaa !85
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %124, !prof !82

123:                                              ; preds = %111
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.5) #16
  br label %124

124:                                              ; preds = %123, %111
  %125 = getelementptr inbounds i8, ptr %25, i64 %121
  %126 = getelementptr inbounds ptr, ptr %125, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !44
  %128 = getelementptr inbounds %struct.tree_exp, ptr %127, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !55
  %130 = icmp eq ptr %129, null
  br i1 %130, label %132, label %131, !prof !76

131:                                              ; preds = %124
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 182, ptr noundef nonnull @.str.5) #16
  br label %132

132:                                              ; preds = %131, %124
  %133 = load i32, ptr %46, align 4, !tbaa !55
  %134 = icmp ugt i32 %133, %82
  br i1 %134, label %136, label %135, !prof !76

135:                                              ; preds = %132
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3215, ptr noundef nonnull @.str.5) #16
  br label %136

136:                                              ; preds = %135, %132
  %137 = load i32, ptr %25, align 8
  %138 = and i32 %137, 255
  %139 = add nsw i32 %138, -10
  %140 = icmp ult i32 %139, -9
  br i1 %140, label %155, label %141, !prof !82

141:                                              ; preds = %136
  %142 = zext nneg i32 %138 to i64
  %143 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !59
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %145
  %147 = load i64, ptr %146, align 8, !tbaa !85
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %150, !prof !82

149:                                              ; preds = %141
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.5) #16
  br label %150

150:                                              ; preds = %149, %141
  %151 = getelementptr inbounds i8, ptr %25, i64 %147
  %152 = zext i32 %82 to i64
  %153 = getelementptr inbounds ptr, ptr %151, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !44
  br label %155

155:                                              ; preds = %150, %136
  %156 = phi ptr [ %154, %150 ], [ null, %136 ]
  %157 = getelementptr inbounds %struct.tree_exp, ptr %156, i64 1
  %158 = load ptr, ptr %157, align 8, !tbaa !55
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %163, !prof !93

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.tree_exp, ptr %156, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !55
  br label %163

163:                                              ; preds = %160, %155
  %164 = phi ptr [ %162, %160 ], [ %158, %155 ]
  %165 = load ptr, ptr @info.1, align 8, !tbaa !92
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %168, !prof !82

167:                                              ; preds = %163
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 189, ptr noundef nonnull @.str.5) #16
  br label %168

168:                                              ; preds = %167, %163
  %169 = icmp eq ptr %164, null
  br i1 %169, label %170, label %171, !prof !82

170:                                              ; preds = %168
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 190, ptr noundef nonnull @.str.5) #16
  br label %171

171:                                              ; preds = %170, %168
  %172 = load ptr, ptr @info.1, align 8, !tbaa !92
  %173 = call ptr @int_const_binop(i32 noundef 64, ptr noundef %164, ptr noundef %172, i32 noundef 0) #16
  store ptr %173, ptr @info.2, align 8, !tbaa !94
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %176, !prof !82

175:                                              ; preds = %171
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 194, ptr noundef nonnull @.str.5) #16
  br label %176

176:                                              ; preds = %175, %171
  %177 = load ptr, ptr @info.2, align 8, !tbaa !94
  %178 = call i32 @host_integerp(ptr noundef %177, i32 noundef 1) #16
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %181, !prof !82

180:                                              ; preds = %176
  store ptr @.str.11, ptr @info.15, align 8, !tbaa !80
  br label %981

181:                                              ; preds = %176
  %182 = load ptr, ptr @info.2, align 8, !tbaa !94
  %183 = call i64 @tree_low_cst(ptr noundef %182, i32 noundef 1) #16
  %184 = load ptr, ptr @compiler_params, align 8, !tbaa !44
  %185 = getelementptr inbounds %struct.param_info, ptr %184, i64 108, i32 1
  %186 = load i32, ptr %185, align 8, !tbaa !95
  %187 = mul i32 %186, %82
  %188 = zext i32 %187 to i64
  %189 = icmp ugt i64 %183, %188
  br i1 %189, label %190, label %191, !prof !97

190:                                              ; preds = %181
  store ptr @.str.12, ptr @info.15, align 8, !tbaa !80
  br label %981

191:                                              ; preds = %181, %281
  %192 = phi i64 [ %194, %281 ], [ 0, %181 ]
  %193 = load i32, ptr %46, align 4, !tbaa !55
  %194 = add nuw nsw i64 %192, 1
  %195 = zext i32 %193 to i64
  %196 = icmp ult i64 %194, %195
  br i1 %196, label %198, label %197, !prof !98

197:                                              ; preds = %191
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3215, ptr noundef nonnull @.str.5) #16
  br label %198

198:                                              ; preds = %197, %191
  %199 = load i32, ptr %25, align 8
  %200 = and i32 %199, 255
  %201 = add nsw i32 %200, -1
  %202 = icmp ult i32 %201, 9
  call void @llvm.assume(i1 %202)
  %203 = zext nneg i32 %200 to i64
  %204 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %203
  %205 = load i32, ptr %204, align 4, !tbaa !59
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %206
  %208 = load i64, ptr %207, align 8, !tbaa !85
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %211, !prof !99

210:                                              ; preds = %198
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.5) #16
  br label %211

211:                                              ; preds = %210, %198
  %212 = getelementptr inbounds i8, ptr %25, i64 %208
  %213 = getelementptr inbounds ptr, ptr %212, i64 %194
  %214 = load ptr, ptr %213, align 8, !tbaa !44
  %215 = getelementptr inbounds %struct.tree_exp, ptr %214, i64 0, i32 3
  %216 = getelementptr inbounds %struct.tree_exp, ptr %214, i64 1, i32 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !55
  %218 = load ptr, ptr @cfun, align 8, !tbaa !44
  %219 = call ptr @label_to_block_fn(ptr noundef %218, ptr noundef %217) #16
  %220 = load ptr, ptr @info.3, align 8, !tbaa !84
  %221 = call ptr @find_edge(ptr noundef %220, ptr noundef %219) #16
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %224, !prof !99

223:                                              ; preds = %211
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 227, ptr noundef nonnull @.str.5) #16
  br label %224

224:                                              ; preds = %223, %211
  %225 = load ptr, ptr %215, align 8, !tbaa !55
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %232, !prof !100

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.edge_def, ptr %221, i64 0, i32 8
  %229 = load i32, ptr %228, align 4, !tbaa !101
  store i32 %229, ptr @info.10, align 8, !tbaa !89
  %230 = getelementptr inbounds %struct.edge_def, ptr %221, i64 0, i32 9
  %231 = load i64, ptr %230, align 8, !tbaa !103
  store i64 %231, ptr @info.11, align 8, !tbaa !90
  br label %237

232:                                              ; preds = %224
  %233 = getelementptr inbounds %struct.edge_def, ptr %221, i64 0, i32 9
  %234 = load i64, ptr %233, align 8, !tbaa !103
  %235 = load i64, ptr @info.12, align 8, !tbaa !91
  %236 = add nsw i64 %235, %234
  store i64 %236, ptr @info.12, align 8, !tbaa !91
  br label %237

237:                                              ; preds = %232, %227
  %238 = icmp eq ptr %219, null
  br i1 %238, label %285, label %239, !prof !99

239:                                              ; preds = %237
  %240 = load ptr, ptr %219, align 8, !tbaa !104
  %241 = icmp eq ptr %240, null
  br i1 %241, label %245, label %242, !prof !99

242:                                              ; preds = %239
  %243 = load i32, ptr %240, align 8, !tbaa !105
  %244 = icmp eq i32 %243, 1
  br i1 %244, label %250, label %245, !prof !107

245:                                              ; preds = %242, %239
  %246 = load ptr, ptr @info.4, align 8, !tbaa !83
  %247 = icmp eq ptr %246, null
  %248 = icmp eq ptr %246, %219
  %249 = or i1 %247, %248
  br i1 %249, label %274, label %285, !prof !108

250:                                              ; preds = %242
  %251 = call zeroext i8 @empty_block_p(ptr noundef nonnull %219) #16
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %285, label %253, !prof !109

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.basic_block_def, ptr %219, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !110
  %256 = icmp eq ptr %255, null
  br i1 %256, label %260, label %257, !prof !111

257:                                              ; preds = %253
  %258 = load i32, ptr %255, align 8, !tbaa !105
  %259 = icmp eq i32 %258, 1
  br i1 %259, label %261, label %260, !prof !112

260:                                              ; preds = %257, %253
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 645, ptr noundef nonnull @.str.5) #16
  br label %261

261:                                              ; preds = %260, %257
  %262 = load ptr, ptr %254, align 8, !tbaa !110
  %263 = icmp eq ptr %262, null
  br i1 %263, label %267, label %264, !prof !111

264:                                              ; preds = %261
  %265 = load i32, ptr %262, align 8, !tbaa !105
  %266 = icmp eq i32 %265, 1
  br i1 %266, label %268, label %267, !prof !112

267:                                              ; preds = %264, %261
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 645, ptr noundef nonnull @.str.5) #16
  br label %268

268:                                              ; preds = %267, %264
  %269 = load ptr, ptr %254, align 8, !tbaa !110
  %270 = getelementptr inbounds %struct.VEC_edge_base, ptr %269, i64 0, i32 2, i64 0
  %271 = load ptr, ptr %270, align 8, !tbaa !44
  %272 = getelementptr inbounds %struct.edge_def, ptr %271, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !113
  br label %274

274:                                              ; preds = %268, %245
  %275 = phi ptr [ %273, %268 ], [ %219, %245 ]
  %276 = load ptr, ptr @info.4, align 8, !tbaa !83
  %277 = icmp eq ptr %276, null
  br i1 %277, label %278, label %279, !prof !114

278:                                              ; preds = %274
  store ptr %275, ptr @info.4, align 8, !tbaa !83
  br label %281

279:                                              ; preds = %274
  %280 = icmp eq ptr %276, %275
  br i1 %280, label %281, label %285

281:                                              ; preds = %279, %278
  %282 = call i32 @llvm.umax.i32(i32 %51, i32 1)
  %283 = zext i32 %282 to i64
  %284 = icmp eq i64 %194, %283
  br i1 %284, label %292, label %191, !prof !99, !llvm.loop !115

285:                                              ; preds = %279, %250, %245, %237
  %286 = phi ptr [ @.str.13, %237 ], [ @.str.14, %245 ], [ @.str.15, %250 ], [ @.str.16, %279 ]
  store ptr %286, ptr @info.15, align 8, !tbaa !80
  %287 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %288 = icmp eq ptr %287, null
  br i1 %288, label %981, label %289, !prof !116

289:                                              ; preds = %285
  %290 = trunc i64 %192 to i32
  %291 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %287, ptr noundef nonnull @.str.9, i32 noundef %290)
  br label %981

292:                                              ; preds = %281
  store i32 0, ptr @info.5, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #16
  %293 = load ptr, ptr @info.4, align 8, !tbaa !83
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %12, ptr noundef %293) #16
  %294 = load ptr, ptr %12, align 8, !tbaa.struct !118
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #16
  %295 = icmp eq ptr %294, null
  br i1 %295, label %372, label %296

296:                                              ; preds = %292, %366
  %297 = phi ptr [ %368, %366 ], [ %294, %292 ]
  %298 = load ptr, ptr %297, align 8, !tbaa !119
  %299 = load i32, ptr @info.5, align 8, !tbaa !117
  %300 = add nsw i32 %299, 1
  store i32 %300, ptr @info.5, align 8, !tbaa !117
  %301 = getelementptr inbounds %struct.gimple_statement_phi, ptr %298, i64 0, i32 2
  %302 = load i32, ptr %301, align 4, !tbaa !55
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %366, label %304

304:                                              ; preds = %296
  %305 = getelementptr inbounds %struct.gimple_statement_base, ptr %298, i64 0, i32 4
  %306 = getelementptr inbounds %struct.gimple_statement_phi, ptr %298, i64 0, i32 1
  br label %307

307:                                              ; preds = %304, %361
  %308 = phi i64 [ 0, %304 ], [ %362, %361 ]
  %309 = load ptr, ptr %305, align 8, !tbaa !55
  %310 = load ptr, ptr %309, align 8, !tbaa !104, !nonnull !121, !noundef !121
  %311 = getelementptr inbounds %struct.VEC_edge_base, ptr %310, i64 0, i32 2, i64 %308
  %312 = load ptr, ptr %311, align 8, !tbaa !44
  %313 = load ptr, ptr %312, align 8, !tbaa !122
  %314 = load ptr, ptr @info.3, align 8, !tbaa !84
  %315 = icmp eq ptr %313, %314
  br i1 %315, label %338, label %316

316:                                              ; preds = %307
  %317 = load ptr, ptr %313, align 8, !tbaa !104
  %318 = icmp eq ptr %317, null
  br i1 %318, label %323, label %319

319:                                              ; preds = %316
  %320 = load i32, ptr %317, align 8, !tbaa !105
  %321 = icmp eq i32 %320, 1
  %322 = zext i1 %321 to i8
  br label %323

323:                                              ; preds = %319, %316
  %324 = phi i8 [ %322, %319 ], [ 0, %316 ]
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %361, label %326

326:                                              ; preds = %323
  br i1 %318, label %330, label %327

327:                                              ; preds = %326
  %328 = load i32, ptr %317, align 8, !tbaa !105
  %329 = icmp eq i32 %328, 1
  br i1 %329, label %331, label %330

330:                                              ; preds = %327, %326
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 655, ptr noundef nonnull @.str.5) #16
  br label %331

331:                                              ; preds = %330, %327
  %332 = load ptr, ptr %313, align 8, !tbaa !104
  %333 = getelementptr inbounds %struct.VEC_edge_base, ptr %332, i64 0, i32 2, i64 0
  %334 = load ptr, ptr %333, align 8, !tbaa !44
  %335 = load ptr, ptr %334, align 8, !tbaa !122
  %336 = load ptr, ptr @info.3, align 8, !tbaa !84
  %337 = icmp eq ptr %335, %336
  br i1 %337, label %338, label %361

338:                                              ; preds = %331, %307
  %339 = load i32, ptr %306, align 8, !tbaa !55
  %340 = zext i32 %339 to i64
  %341 = icmp ugt i64 %308, %340
  br i1 %341, label %342, label %343

342:                                              ; preds = %338
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3103, ptr noundef nonnull @.str.5) #16
  br label %343

343:                                              ; preds = %342, %338
  %344 = getelementptr inbounds %struct.gimple_statement_phi, ptr %298, i64 0, i32 4, i64 %308, i32 0, i32 3
  %345 = load ptr, ptr %344, align 8, !tbaa !123
  %346 = load ptr, ptr %345, align 8, !tbaa !44
  %347 = call zeroext i8 @is_gimple_ip_invariant(ptr noundef %346) #16
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %370, label %349

349:                                              ; preds = %343
  %350 = getelementptr inbounds %struct.tree_common, ptr %346, i64 0, i32 2
  %351 = load ptr, ptr %350, align 8, !tbaa !55
  %352 = call ptr @initializer_constant_valid_p(ptr noundef %346, ptr noundef %351) #16
  %353 = load i32, ptr @flag_pic, align 4, !tbaa !59
  %354 = icmp eq i32 %353, 0
  %355 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16
  %356 = icmp ne ptr %352, %355
  %357 = icmp eq ptr %352, null
  %358 = select i1 %354, i1 %357, i1 %356
  br i1 %358, label %359, label %361

359:                                              ; preds = %349
  %360 = select i1 %357, ptr @.str.20, ptr @.str.19
  br label %370

361:                                              ; preds = %349, %331, %323
  %362 = add nuw nsw i64 %308, 1
  %363 = load i32, ptr %301, align 4, !tbaa !55
  %364 = zext i32 %363 to i64
  %365 = icmp ult i64 %362, %364
  br i1 %365, label %307, label %366, !llvm.loop !125

366:                                              ; preds = %361, %296
  %367 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %297, i64 0, i32 2
  %368 = load ptr, ptr %367, align 8, !tbaa !126
  %369 = icmp eq ptr %368, null
  br i1 %369, label %372, label %296, !llvm.loop !127

370:                                              ; preds = %343, %359
  %371 = phi ptr [ %360, %359 ], [ @.str.18, %343 ]
  store ptr %371, ptr @info.15, align 8, !tbaa !80
  br label %981

372:                                              ; preds = %366, %292
  %373 = load i32, ptr @info.5, align 8, !tbaa !117
  %374 = sext i32 %373 to i64
  %375 = call ptr @xcalloc(i64 noundef %374, i64 noundef 8) #16
  store ptr %375, ptr @info.6, align 8, !tbaa !128
  %376 = load i32, ptr @info.5, align 8, !tbaa !117
  %377 = sext i32 %376 to i64
  %378 = call ptr @xcalloc(i64 noundef %377, i64 noundef 8) #16
  store ptr %378, ptr @info.7, align 8, !tbaa !129
  %379 = load i32, ptr @info.5, align 8, !tbaa !117
  %380 = sext i32 %379 to i64
  %381 = call ptr @xcalloc(i64 noundef %380, i64 noundef 8) #16
  store ptr %381, ptr @info.8, align 8, !tbaa !130
  %382 = load i32, ptr @info.5, align 8, !tbaa !117
  %383 = sext i32 %382 to i64
  %384 = call ptr @xcalloc(i64 noundef %383, i64 noundef 8) #16
  store ptr %384, ptr @info.9, align 8, !tbaa !131
  %385 = load i32, ptr @info.5, align 8, !tbaa !117
  %386 = icmp sgt i32 %385, 0
  br i1 %386, label %387, label %400

387:                                              ; preds = %372, %387
  %388 = phi i64 [ %396, %387 ], [ 0, %372 ]
  %389 = load ptr, ptr @info.2, align 8, !tbaa !94
  %390 = call i64 @tree_low_cst(ptr noundef %389, i32 noundef 1) #16
  %391 = trunc i64 %390 to i32
  %392 = add i32 %391, 1
  %393 = call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %392, i64 noundef 8, i64 noundef 16) #16
  %394 = load ptr, ptr @info.7, align 8, !tbaa !129
  %395 = getelementptr inbounds ptr, ptr %394, i64 %388
  store ptr %393, ptr %395, align 8, !tbaa !44
  %396 = add nuw nsw i64 %388, 1
  %397 = load i32, ptr @info.5, align 8, !tbaa !117
  %398 = sext i32 %397 to i64
  %399 = icmp slt i64 %396, %398
  br i1 %399, label %387, label %400, !llvm.loop !132

400:                                              ; preds = %387, %372
  %401 = load i32, ptr %46, align 4, !tbaa !55
  %402 = icmp ugt i32 %401, 1
  br i1 %402, label %404, label %403

403:                                              ; preds = %400
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3215, ptr noundef nonnull @.str.5) #16
  br label %404

404:                                              ; preds = %403, %400
  %405 = load i32, ptr %25, align 8
  %406 = and i32 %405, 255
  %407 = add nsw i32 %406, -1
  %408 = icmp ult i32 %407, 9
  call void @llvm.assume(i1 %408)
  %409 = zext nneg i32 %406 to i64
  %410 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %409
  %411 = load i32, ptr %410, align 4, !tbaa !59
  %412 = zext i32 %411 to i64
  %413 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %412
  %414 = load i64, ptr %413, align 8, !tbaa !85
  %415 = icmp eq i64 %414, 0
  br i1 %415, label %416, label %417

416:                                              ; preds = %404
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.5) #16
  br label %417

417:                                              ; preds = %416, %404
  %418 = getelementptr inbounds i8, ptr %25, i64 %414
  %419 = getelementptr inbounds ptr, ptr %418, i64 1
  %420 = load ptr, ptr %419, align 8, !tbaa !44
  %421 = load ptr, ptr @cfun, align 8, !tbaa !44
  %422 = getelementptr inbounds %struct.tree_exp, ptr %420, i64 0, i32 3
  %423 = getelementptr inbounds %struct.tree_exp, ptr %420, i64 1, i32 0, i32 1
  %424 = load ptr, ptr %423, align 8, !tbaa !55
  %425 = call ptr @label_to_block_fn(ptr noundef %421, ptr noundef %424) #16
  %426 = load ptr, ptr %422, align 8, !tbaa !55
  %427 = icmp eq ptr %426, null
  br i1 %427, label %429, label %428

428:                                              ; preds = %417
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 374, ptr noundef nonnull @.str.5) #16
  br label %429

429:                                              ; preds = %428, %417
  %430 = load ptr, ptr @info.4, align 8, !tbaa !83
  %431 = icmp eq ptr %425, %430
  br i1 %431, label %432, label %435

432:                                              ; preds = %429
  %433 = load ptr, ptr @info.3, align 8, !tbaa !84
  %434 = call ptr @find_edge(ptr noundef %433, ptr noundef %425) #16
  br label %447

435:                                              ; preds = %429
  %436 = getelementptr inbounds %struct.basic_block_def, ptr %425, i64 0, i32 1
  %437 = load ptr, ptr %436, align 8, !tbaa !110
  %438 = icmp eq ptr %437, null
  br i1 %438, label %442, label %439

439:                                              ; preds = %435
  %440 = load i32, ptr %437, align 8, !tbaa !105
  %441 = icmp eq i32 %440, 1
  br i1 %441, label %443, label %442

442:                                              ; preds = %439, %435
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 645, ptr noundef nonnull @.str.5) #16
  br label %443

443:                                              ; preds = %442, %439
  %444 = load ptr, ptr %436, align 8, !tbaa !110
  %445 = getelementptr inbounds %struct.VEC_edge_base, ptr %444, i64 0, i32 2, i64 0
  %446 = load ptr, ptr %445, align 8, !tbaa !44
  br label %447

447:                                              ; preds = %443, %432
  %448 = phi ptr [ %434, %432 ], [ %446, %443 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #16
  %449 = load ptr, ptr @info.4, align 8, !tbaa !83
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %11, ptr noundef %449) #16
  %450 = load ptr, ptr %11, align 8, !tbaa.struct !118
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #16
  %451 = icmp eq ptr %450, null
  br i1 %451, label %477, label %452

452:                                              ; preds = %447
  %453 = getelementptr inbounds %struct.edge_def, ptr %448, i64 0, i32 6
  br label %454

454:                                              ; preds = %452, %470
  %455 = phi i64 [ 0, %452 ], [ %472, %470 ]
  %456 = phi ptr [ %450, %452 ], [ %475, %470 ]
  %457 = load ptr, ptr %456, align 8, !tbaa !119
  %458 = load i32, ptr %453, align 4, !tbaa !133
  %459 = getelementptr inbounds %struct.gimple_statement_phi, ptr %457, i64 0, i32 1
  %460 = load i32, ptr %459, align 8, !tbaa !55
  %461 = icmp ult i32 %460, %458
  br i1 %461, label %462, label %463

462:                                              ; preds = %454
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3103, ptr noundef nonnull @.str.5) #16
  br label %463

463:                                              ; preds = %462, %454
  %464 = zext i32 %458 to i64
  %465 = getelementptr inbounds %struct.gimple_statement_phi, ptr %457, i64 0, i32 4, i64 %464, i32 0, i32 3
  %466 = load ptr, ptr %465, align 8, !tbaa !123
  %467 = load ptr, ptr %466, align 8, !tbaa !44
  %468 = icmp eq ptr %467, null
  br i1 %468, label %469, label %470

469:                                              ; preds = %463
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 385, ptr noundef nonnull @.str.5) #16
  br label %470

470:                                              ; preds = %469, %463
  %471 = load ptr, ptr @info.6, align 8, !tbaa !128
  %472 = add nuw i64 %455, 1
  %473 = getelementptr inbounds ptr, ptr %471, i64 %455
  store ptr %467, ptr %473, align 8, !tbaa !44
  %474 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %456, i64 0, i32 2
  %475 = load ptr, ptr %474, align 8, !tbaa !126
  %476 = icmp eq ptr %475, null
  br i1 %476, label %477, label %454, !llvm.loop !134

477:                                              ; preds = %470, %447
  %478 = load i32, ptr %46, align 4, !tbaa !55
  %479 = icmp ugt i32 %478, 1
  br i1 %479, label %481, label %480

480:                                              ; preds = %477
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3162, ptr noundef nonnull @.str.5) #16
  br label %481

481:                                              ; preds = %480, %477
  %482 = add i32 %478, -1
  %483 = icmp ugt i32 %482, 1
  br i1 %483, label %484, label %635

484:                                              ; preds = %481
  %485 = load ptr, ptr @info.1, align 8, !tbaa !92
  %486 = zext i32 %482 to i64
  br label %490

487:                                              ; preds = %630, %589
  %488 = phi ptr [ %578, %589 ], [ %624, %630 ]
  %489 = icmp eq i64 %494, %486
  br i1 %489, label %635, label %490, !llvm.loop !135

490:                                              ; preds = %484, %487
  %491 = phi i64 [ 1, %484 ], [ %494, %487 ]
  %492 = phi ptr [ %485, %484 ], [ %488, %487 ]
  %493 = load i32, ptr %46, align 4, !tbaa !55
  %494 = add nuw nsw i64 %491, 1
  %495 = zext i32 %493 to i64
  %496 = icmp ult i64 %494, %495
  br i1 %496, label %498, label %497

497:                                              ; preds = %490
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3215, ptr noundef nonnull @.str.5) #16
  br label %498

498:                                              ; preds = %497, %490
  %499 = load i32, ptr %25, align 8
  %500 = and i32 %499, 255
  %501 = add nsw i32 %500, -10
  %502 = icmp ult i32 %501, -9
  br i1 %502, label %516, label %503

503:                                              ; preds = %498
  %504 = zext nneg i32 %500 to i64
  %505 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %504
  %506 = load i32, ptr %505, align 4, !tbaa !59
  %507 = zext i32 %506 to i64
  %508 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %507
  %509 = load i64, ptr %508, align 8, !tbaa !85
  %510 = icmp eq i64 %509, 0
  br i1 %510, label %511, label %512

511:                                              ; preds = %503
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.5) #16
  br label %512

512:                                              ; preds = %511, %503
  %513 = getelementptr inbounds i8, ptr %25, i64 %509
  %514 = getelementptr inbounds ptr, ptr %513, i64 %494
  %515 = load ptr, ptr %514, align 8, !tbaa !44
  br label %516

516:                                              ; preds = %512, %498
  %517 = phi ptr [ %515, %512 ], [ null, %498 ]
  %518 = load ptr, ptr @cfun, align 8, !tbaa !44
  %519 = getelementptr inbounds %struct.tree_exp, ptr %517, i64 0, i32 3
  %520 = getelementptr inbounds %struct.tree_exp, ptr %517, i64 1, i32 0, i32 1
  %521 = load ptr, ptr %520, align 8, !tbaa !55
  %522 = call ptr @label_to_block_fn(ptr noundef %518, ptr noundef %521) #16
  %523 = load ptr, ptr @info.4, align 8, !tbaa !83
  %524 = icmp eq ptr %522, %523
  br i1 %524, label %525, label %528

525:                                              ; preds = %516
  %526 = load ptr, ptr @info.3, align 8, !tbaa !84
  %527 = call ptr @find_edge(ptr noundef %526, ptr noundef %522) #16
  br label %540

528:                                              ; preds = %516
  %529 = getelementptr inbounds %struct.basic_block_def, ptr %522, i64 0, i32 1
  %530 = load ptr, ptr %529, align 8, !tbaa !110
  %531 = icmp eq ptr %530, null
  br i1 %531, label %535, label %532

532:                                              ; preds = %528
  %533 = load i32, ptr %530, align 8, !tbaa !105
  %534 = icmp eq i32 %533, 1
  br i1 %534, label %536, label %535

535:                                              ; preds = %532, %528
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 645, ptr noundef nonnull @.str.5) #16
  br label %536

536:                                              ; preds = %535, %532
  %537 = load ptr, ptr %529, align 8, !tbaa !110
  %538 = getelementptr inbounds %struct.VEC_edge_base, ptr %537, i64 0, i32 2, i64 0
  %539 = load ptr, ptr %538, align 8, !tbaa !44
  br label %540

540:                                              ; preds = %536, %525
  %541 = phi ptr [ %527, %525 ], [ %539, %536 ]
  %542 = icmp eq ptr %541, null
  br i1 %542, label %543, label %544

543:                                              ; preds = %540
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 413, ptr noundef nonnull @.str.5) #16
  br label %544

544:                                              ; preds = %543, %540
  %545 = load ptr, ptr %519, align 8, !tbaa !55
  %546 = call i32 @tree_int_cst_lt(ptr noundef %492, ptr noundef %545) #16
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %577, label %548

548:                                              ; preds = %544, %571
  %549 = phi ptr [ %573, %571 ], [ %492, %544 ]
  %550 = load i32, ptr @info.5, align 8, !tbaa !117
  %551 = icmp sgt i32 %550, 0
  br i1 %551, label %552, label %571

552:                                              ; preds = %548, %552
  %553 = phi i64 [ %567, %552 ], [ 0, %548 ]
  %554 = load ptr, ptr @info.7, align 8, !tbaa !129
  %555 = getelementptr inbounds ptr, ptr %554, i64 %553
  %556 = load ptr, ptr %555, align 8, !tbaa !44
  %557 = load i32, ptr %556, align 8, !tbaa !136
  %558 = add i32 %557, 1
  store i32 %558, ptr %556, align 8, !tbaa !136
  %559 = zext i32 %557 to i64
  %560 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %556, i64 0, i32 2, i64 %559
  %561 = load ptr, ptr @info.1, align 8, !tbaa !92
  %562 = call ptr @int_const_binop(i32 noundef 64, ptr noundef %549, ptr noundef %561, i32 noundef 0) #16
  store ptr %562, ptr %560, align 8, !tbaa !138
  %563 = load ptr, ptr @info.6, align 8, !tbaa !128
  %564 = getelementptr inbounds ptr, ptr %563, i64 %553
  %565 = load ptr, ptr %564, align 8, !tbaa !44
  %566 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %556, i64 0, i32 2, i64 %559, i32 1
  store ptr %565, ptr %566, align 8, !tbaa !140
  %567 = add nuw nsw i64 %553, 1
  %568 = load i32, ptr @info.5, align 8, !tbaa !117
  %569 = sext i32 %568 to i64
  %570 = icmp slt i64 %567, %569
  br i1 %570, label %552, label %571, !llvm.loop !141

571:                                              ; preds = %552, %548
  %572 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !44
  %573 = call ptr @int_const_binop(i32 noundef 63, ptr noundef %549, ptr noundef %572, i32 noundef 0) #16
  %574 = load ptr, ptr %519, align 8, !tbaa !55
  %575 = call i32 @tree_int_cst_lt(ptr noundef %573, ptr noundef %574) #16
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %577, label %548, !llvm.loop !142

577:                                              ; preds = %571, %544
  %578 = phi ptr [ %492, %544 ], [ %573, %571 ]
  %579 = load ptr, ptr %519, align 8, !tbaa !55
  %580 = call i32 @tree_int_cst_equal(ptr noundef %578, ptr noundef %579) #16
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %582, label %583

582:                                              ; preds = %577
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 431, ptr noundef nonnull @.str.5) #16
  br label %583

583:                                              ; preds = %582, %577
  %584 = getelementptr inbounds %struct.tree_exp, ptr %517, i64 1
  %585 = load ptr, ptr %584, align 8, !tbaa !55
  %586 = icmp eq ptr %585, null
  br i1 %586, label %587, label %589

587:                                              ; preds = %583
  %588 = load ptr, ptr %519, align 8, !tbaa !55
  br label %589

589:                                              ; preds = %587, %583
  %590 = phi ptr [ %588, %587 ], [ %585, %583 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #16
  %591 = load ptr, ptr @info.4, align 8, !tbaa !83
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %591) #16
  %592 = load ptr, ptr %10, align 8, !tbaa.struct !118
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #16
  %593 = icmp eq ptr %592, null
  br i1 %593, label %487, label %594

594:                                              ; preds = %589
  %595 = getelementptr inbounds %struct.edge_def, ptr %541, i64 0, i32 6
  br label %596

596:                                              ; preds = %594, %630
  %597 = phi i64 [ 0, %594 ], [ %631, %630 ]
  %598 = phi ptr [ %592, %594 ], [ %633, %630 ]
  %599 = load ptr, ptr %598, align 8, !tbaa !119
  %600 = load i32, ptr %595, align 4, !tbaa !133
  %601 = getelementptr inbounds %struct.gimple_statement_phi, ptr %599, i64 0, i32 1
  %602 = load i32, ptr %601, align 8, !tbaa !55
  %603 = icmp ult i32 %602, %600
  br i1 %603, label %604, label %605

604:                                              ; preds = %596
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3103, ptr noundef nonnull @.str.5) #16
  br label %605

605:                                              ; preds = %604, %596
  %606 = zext i32 %600 to i64
  %607 = getelementptr inbounds %struct.gimple_statement_phi, ptr %599, i64 0, i32 4, i64 %606, i32 0, i32 3
  %608 = load ptr, ptr %607, align 8, !tbaa !123
  %609 = load ptr, ptr %608, align 8, !tbaa !44
  %610 = load ptr, ptr %519, align 8, !tbaa !55
  br label %611

611:                                              ; preds = %627, %605
  %612 = phi ptr [ %610, %605 ], [ %624, %627 ]
  %613 = load ptr, ptr @info.7, align 8, !tbaa !129
  %614 = getelementptr inbounds ptr, ptr %613, i64 %597
  %615 = load ptr, ptr %614, align 8, !tbaa !44
  %616 = load i32, ptr %615, align 8, !tbaa !136
  %617 = add i32 %616, 1
  store i32 %617, ptr %615, align 8, !tbaa !136
  %618 = zext i32 %616 to i64
  %619 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %615, i64 0, i32 2, i64 %618
  %620 = load ptr, ptr @info.1, align 8, !tbaa !92
  %621 = call ptr @int_const_binop(i32 noundef 64, ptr noundef %612, ptr noundef %620, i32 noundef 0) #16
  store ptr %621, ptr %619, align 8, !tbaa !138
  %622 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %615, i64 0, i32 2, i64 %618, i32 1
  store ptr %609, ptr %622, align 8, !tbaa !140
  %623 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !44
  %624 = call ptr @int_const_binop(i32 noundef 63, ptr noundef %612, ptr noundef %623, i32 noundef 0) #16
  %625 = call i32 @tree_int_cst_lt(ptr noundef %590, ptr noundef %624) #16
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %627, label %630

627:                                              ; preds = %611
  %628 = call i32 @tree_int_cst_lt(ptr noundef %610, ptr noundef %624) #16
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %630, label %611, !llvm.loop !143

630:                                              ; preds = %627, %611
  %631 = add nuw i64 %597, 1
  %632 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %598, i64 0, i32 2
  %633 = load ptr, ptr %632, align 8, !tbaa !126
  %634 = icmp eq ptr %633, null
  br i1 %634, label %487, label %596, !llvm.loop !144

635:                                              ; preds = %487, %481
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  %636 = getelementptr inbounds %struct.gimple_statement_base, ptr %25, i64 0, i32 2
  %637 = load i32, ptr %636, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef nonnull %25) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !118
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  %638 = load ptr, ptr @info.2, align 8, !tbaa !94
  %639 = call ptr @build_index_type(ptr noundef %638) #16
  %640 = load ptr, ptr @info.0, align 8, !tbaa !86
  %641 = getelementptr inbounds %struct.tree_common, ptr %640, i64 0, i32 2
  %642 = load ptr, ptr %641, align 8, !tbaa !55
  %643 = call ptr @create_tmp_var(ptr noundef %642, ptr noundef nonnull @.str.21) #16
  %644 = call zeroext i8 @add_referenced_var(ptr noundef %643) #16
  %645 = load ptr, ptr @cfun, align 8, !tbaa !44
  %646 = call ptr @make_ssa_name_fn(ptr noundef %645, ptr noundef %643, ptr noundef null) #16
  %647 = load ptr, ptr @info.0, align 8, !tbaa !86
  %648 = getelementptr inbounds %struct.tree_common, ptr %647, i64 0, i32 2
  %649 = load ptr, ptr %648, align 8, !tbaa !55
  %650 = load ptr, ptr @info.1, align 8, !tbaa !92
  %651 = call ptr @fold_convert_loc(i32 noundef %637, ptr noundef %649, ptr noundef %650) #16
  %652 = call ptr @fold_build2_stat_loc(i32 noundef %637, i32 noundef 64, ptr noundef %649, ptr noundef %647, ptr noundef %651) #16
  %653 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %7, ptr noundef %652, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #16
  %654 = call ptr @gimple_build_assign_stat(ptr noundef %646, ptr noundef %653) #16
  %655 = getelementptr inbounds %struct.tree_ssa_name, ptr %646, i64 0, i32 2
  store ptr %654, ptr %655, align 8, !tbaa !55
  call void @gsi_insert_before(ptr noundef nonnull %7, ptr noundef %654, i32 noundef 1) #16
  %656 = load i32, ptr %654, align 8
  %657 = and i32 %656, 255
  %658 = add nsw i32 %657, -10
  %659 = icmp ult i32 %658, -9
  br i1 %659, label %661, label %660

660:                                              ; preds = %635
  call void @gimple_set_modified(ptr noundef nonnull %654, i8 noundef zeroext 1) #16
  call void @update_stmt_operands(ptr noundef nonnull %654) #16
  br label %661

661:                                              ; preds = %660, %635
  store ptr %654, ptr @info.13, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #16
  %662 = load ptr, ptr @info.4, align 8, !tbaa !83
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %662) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !118
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  %663 = load ptr, ptr %7, align 8
  %664 = icmp eq ptr %663, null
  br i1 %664, label %757, label %665

665:                                              ; preds = %661, %751
  %666 = phi i64 [ %755, %751 ], [ 0, %661 ]
  %667 = phi ptr [ %754, %751 ], [ %663, %661 ]
  %668 = load ptr, ptr %667, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef nonnull %25) #16
  %669 = load i32, ptr %636, align 8, !tbaa !55
  %670 = load ptr, ptr @info.6, align 8, !tbaa !128
  %671 = getelementptr inbounds ptr, ptr %670, i64 %666
  %672 = load ptr, ptr %671, align 8, !tbaa !44
  %673 = icmp eq ptr %672, null
  br i1 %673, label %674, label %675

674:                                              ; preds = %665
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 504, ptr noundef nonnull @.str.5) #16
  br label %675

675:                                              ; preds = %674, %665
  %676 = getelementptr inbounds %struct.gimple_statement_phi, ptr %668, i64 0, i32 3
  %677 = load ptr, ptr %676, align 8, !tbaa !44
  %678 = getelementptr inbounds %struct.tree_ssa_name, ptr %677, i64 0, i32 1
  %679 = load ptr, ptr %678, align 8, !tbaa !55
  %680 = load ptr, ptr @cfun, align 8, !tbaa !44
  %681 = call ptr @make_ssa_name_fn(ptr noundef %680, ptr noundef %679, ptr noundef null) #16
  %682 = load ptr, ptr @info.8, align 8, !tbaa !130
  %683 = getelementptr inbounds ptr, ptr %682, i64 %666
  store ptr %681, ptr %683, align 8, !tbaa !44
  %684 = load ptr, ptr @info.7, align 8, !tbaa !129
  %685 = getelementptr inbounds ptr, ptr %684, i64 %666
  %686 = load ptr, ptr %685, align 8, !tbaa !44
  %687 = icmp eq ptr %686, null
  br i1 %687, label %690, label %688

688:                                              ; preds = %675
  %689 = load i32, ptr %686, align 8, !tbaa !136
  br label %690

690:                                              ; preds = %688, %675
  %691 = phi i32 [ %689, %688 ], [ 0, %675 ]
  %692 = icmp sgt i32 %691, 0
  br i1 %692, label %693, label %710

693:                                              ; preds = %690
  %694 = zext nneg i32 %691 to i64
  br label %698

695:                                              ; preds = %707
  %696 = add nuw nsw i64 %699, 1
  %697 = icmp eq i64 %696, %694
  br i1 %697, label %710, label %698, !llvm.loop !145

698:                                              ; preds = %693, %695
  %699 = phi i64 [ 0, %693 ], [ %696, %695 ]
  %700 = phi ptr [ null, %693 ], [ %708, %695 ]
  %701 = icmp eq ptr %700, null
  %702 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %686, i64 0, i32 2, i64 %699, i32 1
  %703 = load ptr, ptr %702, align 8, !tbaa !140
  br i1 %701, label %707, label %704

704:                                              ; preds = %698
  %705 = call i32 @operand_equal_p(ptr noundef %703, ptr noundef nonnull %700, i32 noundef 1) #16
  %706 = icmp ne i32 %705, 0
  br label %707

707:                                              ; preds = %698, %704
  %708 = phi ptr [ %700, %704 ], [ %703, %698 ]
  %709 = phi i1 [ %706, %704 ], [ true, %698 ]
  br i1 %709, label %695, label %710

710:                                              ; preds = %695, %707, %690
  %711 = phi ptr [ null, %690 ], [ %708, %695 ], [ null, %707 ]
  %712 = icmp eq ptr %711, null
  br i1 %712, label %715, label %713

713:                                              ; preds = %710
  %714 = call ptr @gimple_build_assign_stat(ptr noundef %681, ptr noundef nonnull %711) #16
  br label %743

715:                                              ; preds = %710
  %716 = load ptr, ptr @info.6, align 8, !tbaa !128
  %717 = getelementptr inbounds ptr, ptr %716, i64 %666
  %718 = load ptr, ptr %717, align 8, !tbaa !44
  %719 = getelementptr inbounds %struct.tree_common, ptr %718, i64 0, i32 2
  %720 = load ptr, ptr %719, align 8, !tbaa !55
  %721 = call ptr @build_array_type(ptr noundef %720, ptr noundef %639) #16
  %722 = load ptr, ptr @info.7, align 8, !tbaa !129
  %723 = getelementptr inbounds ptr, ptr %722, i64 %666
  %724 = load ptr, ptr %723, align 8, !tbaa !44
  %725 = call ptr @build_constructor(ptr noundef %721, ptr noundef %724) #16
  %726 = load i64, ptr %725, align 8
  %727 = or i64 %726, 131072
  store i64 %727, ptr %725, align 8
  %728 = call ptr @build_decl_stat(i32 noundef %669, i32 noundef 32, ptr noundef null, ptr noundef %721) #16
  %729 = load i64, ptr %728, align 8
  %730 = or i64 %729, 67108864
  store i64 %730, ptr %728, align 8
  %731 = getelementptr inbounds %struct.tree_decl_common, ptr %728, i64 0, i32 5
  store ptr %725, ptr %731, align 8, !tbaa !55
  %732 = call ptr @create_tmp_var_name(ptr noundef nonnull @.str.22) #16
  %733 = getelementptr inbounds %struct.tree_decl_minimal, ptr %728, i64 0, i32 3
  store ptr %732, ptr %733, align 8, !tbaa !55
  %734 = getelementptr inbounds %struct.tree_decl_common, ptr %728, i64 0, i32 2
  %735 = load i64, ptr %734, align 8
  %736 = or i64 %735, 4096
  store i64 %736, ptr %734, align 8
  %737 = load i64, ptr %728, align 8
  %738 = or i64 %737, 131072
  store i64 %738, ptr %728, align 8
  %739 = call zeroext i8 @add_referenced_var(ptr noundef nonnull %728) #16
  %740 = call ptr @varpool_node(ptr noundef nonnull %728) #16
  call void @varpool_mark_needed_node(ptr noundef %740) #16
  call void @varpool_finalize_decl(ptr noundef nonnull %728) #16
  %741 = call ptr @build4_stat(i32 noundef 45, ptr noundef %720, ptr noundef nonnull %728, ptr noundef %646, ptr noundef null, ptr noundef null) #16
  %742 = call ptr @gimple_build_assign_stat(ptr noundef %681, ptr noundef %741) #16
  br label %743

743:                                              ; preds = %715, %713
  %744 = phi ptr [ %714, %713 ], [ %742, %715 ]
  %745 = getelementptr inbounds %struct.tree_ssa_name, ptr %681, i64 0, i32 2
  store ptr %744, ptr %745, align 8, !tbaa !55
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %744, i32 noundef 1) #16
  %746 = load i32, ptr %744, align 8
  %747 = and i32 %746, 255
  %748 = add nsw i32 %747, -10
  %749 = icmp ult i32 %748, -9
  br i1 %749, label %751, label %750

750:                                              ; preds = %743
  call void @gimple_set_modified(ptr noundef nonnull %744, i8 noundef zeroext 1) #16
  call void @update_stmt_operands(ptr noundef nonnull %744) #16
  br label %751

751:                                              ; preds = %750, %743
  store ptr %744, ptr @info.14, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  %752 = load ptr, ptr %7, align 8, !tbaa !146
  %753 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %752, i64 0, i32 2
  %754 = load ptr, ptr %753, align 8, !tbaa !126
  store ptr %754, ptr %7, align 8, !tbaa !146
  %755 = add nuw i64 %666, 1
  %756 = icmp eq ptr %754, null
  br i1 %756, label %757, label %665, !llvm.loop !148

757:                                              ; preds = %751, %661
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  %758 = call ptr @create_artificial_label(i32 noundef 0) #16
  %759 = call ptr @create_artificial_label(i32 noundef 0) #16
  %760 = call ptr @create_artificial_label(i32 noundef 0) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  %761 = load i32, ptr %636, align 8, !tbaa !55
  %762 = load ptr, ptr @info.6, align 8, !tbaa !128
  %763 = icmp eq ptr %762, null
  br i1 %763, label %764, label %765

764:                                              ; preds = %757
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 691, ptr noundef nonnull @.str.5) #16
  br label %765

765:                                              ; preds = %764, %757
  %766 = load ptr, ptr %55, align 8, !tbaa !55
  %767 = load ptr, ptr @info.0, align 8, !tbaa !86
  %768 = getelementptr inbounds %struct.tree_common, ptr %767, i64 0, i32 2
  %769 = load ptr, ptr %768, align 8, !tbaa !55
  %770 = getelementptr inbounds %struct.tree_common, ptr %769, i64 0, i32 2
  %771 = load ptr, ptr %770, align 8, !tbaa !55
  %772 = icmp eq ptr %771, null
  br i1 %772, label %775, label %773

773:                                              ; preds = %765
  %774 = call ptr @unsigned_type_for(ptr noundef nonnull %771) #16
  br label %777

775:                                              ; preds = %765
  %776 = call ptr @unsigned_type_for(ptr noundef %769) #16
  br label %777

777:                                              ; preds = %775, %773
  %778 = phi ptr [ %774, %773 ], [ %776, %775 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  %779 = load ptr, ptr @info.13, align 8, !tbaa !87
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %779) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !118
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  %780 = call ptr @create_tmp_var(ptr noundef %778, ptr noundef nonnull @.str.23) #16
  %781 = call zeroext i8 @add_referenced_var(ptr noundef %780) #16
  %782 = load ptr, ptr @cfun, align 8, !tbaa !44
  %783 = call ptr @make_ssa_name_fn(ptr noundef %782, ptr noundef %780, ptr noundef null) #16
  %784 = load ptr, ptr @info.0, align 8, !tbaa !86
  %785 = call ptr @fold_convert_loc(i32 noundef %761, ptr noundef %778, ptr noundef %784) #16
  %786 = call ptr @gimple_build_assign_stat(ptr noundef %783, ptr noundef %785) #16
  %787 = getelementptr inbounds %struct.tree_ssa_name, ptr %783, i64 0, i32 2
  store ptr %786, ptr %787, align 8, !tbaa !55
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef %786, i32 noundef 1) #16
  %788 = load i32, ptr %786, align 8
  %789 = and i32 %788, 255
  %790 = add nsw i32 %789, -10
  %791 = icmp ult i32 %790, -9
  br i1 %791, label %793, label %792

792:                                              ; preds = %777
  call void @gimple_set_modified(ptr noundef nonnull %786, i8 noundef zeroext 1) #16
  call void @update_stmt_operands(ptr noundef nonnull %786) #16
  br label %793

793:                                              ; preds = %792, %777
  %794 = load ptr, ptr @info.1, align 8, !tbaa !92
  %795 = call ptr @fold_convert_loc(i32 noundef %761, ptr noundef %778, ptr noundef %794) #16
  %796 = call ptr @fold_build2_stat_loc(i32 noundef %761, i32 noundef 64, ptr noundef %778, ptr noundef %783, ptr noundef %795) #16
  %797 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %2, ptr noundef %796, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #16
  %798 = load ptr, ptr @cfun, align 8, !tbaa !44
  %799 = call ptr @make_ssa_name_fn(ptr noundef %798, ptr noundef %780, ptr noundef null) #16
  %800 = call ptr @gimple_build_assign_stat(ptr noundef %799, ptr noundef %797) #16
  %801 = getelementptr inbounds %struct.tree_ssa_name, ptr %799, i64 0, i32 2
  store ptr %800, ptr %801, align 8, !tbaa !55
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef %800, i32 noundef 1) #16
  %802 = load i32, ptr %800, align 8
  %803 = and i32 %802, 255
  %804 = add nsw i32 %803, -10
  %805 = icmp ult i32 %804, -9
  br i1 %805, label %807, label %806

806:                                              ; preds = %793
  call void @gimple_set_modified(ptr noundef nonnull %800, i8 noundef zeroext 1) #16
  call void @update_stmt_operands(ptr noundef nonnull %800) #16
  br label %807

807:                                              ; preds = %806, %793
  %808 = load ptr, ptr @info.2, align 8, !tbaa !94
  %809 = call ptr @fold_convert_loc(i32 noundef %761, ptr noundef %778, ptr noundef %808) #16
  %810 = call ptr @gimple_build_cond(i32 noundef 98, ptr noundef %799, ptr noundef %809, ptr noundef null, ptr noundef null) #16
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef %810, i32 noundef 1) #16
  %811 = load i32, ptr %810, align 8
  %812 = and i32 %811, 255
  %813 = add nsw i32 %812, -10
  %814 = icmp ult i32 %813, -9
  br i1 %814, label %816, label %815

815:                                              ; preds = %807
  call void @gimple_set_modified(ptr noundef nonnull %810, i8 noundef zeroext 1) #16
  call void @update_stmt_operands(ptr noundef nonnull %810) #16
  br label %816

816:                                              ; preds = %815, %807
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  %817 = load ptr, ptr @info.13, align 8, !tbaa !87
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %817) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !118
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  %818 = call ptr @gimple_build_label(ptr noundef %759) #16
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef %818, i32 noundef 1) #16
  %819 = load i32, ptr @info.5, align 8, !tbaa !117
  %820 = icmp sgt i32 %819, 0
  br i1 %820, label %821, label %847

821:                                              ; preds = %816, %842
  %822 = phi i64 [ %843, %842 ], [ 0, %816 ]
  %823 = load ptr, ptr @info.8, align 8, !tbaa !130
  %824 = getelementptr inbounds ptr, ptr %823, i64 %822
  %825 = load ptr, ptr %824, align 8, !tbaa !44
  %826 = getelementptr inbounds %struct.tree_ssa_name, ptr %825, i64 0, i32 1
  %827 = load ptr, ptr %826, align 8, !tbaa !55
  %828 = load ptr, ptr @cfun, align 8, !tbaa !44
  %829 = call ptr @make_ssa_name_fn(ptr noundef %828, ptr noundef %827, ptr noundef null) #16
  %830 = load ptr, ptr @info.9, align 8, !tbaa !131
  %831 = getelementptr inbounds ptr, ptr %830, i64 %822
  store ptr %829, ptr %831, align 8, !tbaa !44
  %832 = load ptr, ptr @info.6, align 8, !tbaa !128
  %833 = getelementptr inbounds ptr, ptr %832, i64 %822
  %834 = load ptr, ptr %833, align 8, !tbaa !44
  %835 = call ptr @gimple_build_assign_stat(ptr noundef %829, ptr noundef %834) #16
  %836 = getelementptr inbounds %struct.tree_ssa_name, ptr %829, i64 0, i32 2
  store ptr %835, ptr %836, align 8, !tbaa !55
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef %835, i32 noundef 1) #16
  %837 = load i32, ptr %835, align 8
  %838 = and i32 %837, 255
  %839 = add nsw i32 %838, -10
  %840 = icmp ult i32 %839, -9
  br i1 %840, label %842, label %841

841:                                              ; preds = %821
  call void @gimple_set_modified(ptr noundef nonnull %835, i8 noundef zeroext 1) #16
  call void @update_stmt_operands(ptr noundef nonnull %835) #16
  br label %842

842:                                              ; preds = %841, %821
  %843 = add nuw nsw i64 %822, 1
  %844 = load i32, ptr @info.5, align 8, !tbaa !117
  %845 = sext i32 %844 to i64
  %846 = icmp slt i64 %843, %845
  br i1 %846, label %821, label %847, !llvm.loop !149

847:                                              ; preds = %842, %816
  %848 = phi ptr [ null, %816 ], [ %835, %842 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  %849 = load ptr, ptr @info.13, align 8, !tbaa !87
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %849) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !118
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  %850 = call ptr @gimple_build_label(ptr noundef %758) #16
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef %850, i32 noundef 1) #16
  %851 = load ptr, ptr @info.4, align 8, !tbaa !83
  %852 = getelementptr inbounds %struct.basic_block_def, ptr %851, i64 0, i32 13
  %853 = load i32, ptr %852, align 8, !tbaa !150, !noalias !151
  %854 = and i32 %853, 512
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %856, label %862

856:                                              ; preds = %847
  %857 = getelementptr inbounds %struct.basic_block_def, ptr %851, i64 0, i32 7
  %858 = load ptr, ptr %857, align 8, !tbaa !55, !noalias !151
  %859 = icmp eq ptr %858, null
  br i1 %859, label %862, label %860

860:                                              ; preds = %856
  %861 = load ptr, ptr %858, align 8, !tbaa !154, !noalias !151
  br label %862

862:                                              ; preds = %860, %856, %847
  %863 = phi ptr [ %861, %860 ], [ null, %856 ], [ null, %847 ]
  %864 = icmp eq ptr %863, null
  br i1 %864, label %867, label %865

865:                                              ; preds = %862
  %866 = load ptr, ptr %863, align 8, !tbaa !156, !noalias !151
  br label %867

867:                                              ; preds = %865, %862
  %868 = phi ptr [ %866, %865 ], [ null, %862 ]
  %869 = getelementptr inbounds i8, ptr %2, i64 8
  %870 = getelementptr inbounds i8, ptr %2, i64 16
  store ptr %868, ptr %2, align 8, !tbaa.struct !118
  store ptr %863, ptr %869, align 8, !tbaa.struct !158
  store ptr %851, ptr %870, align 8, !tbaa.struct !159
  %871 = call ptr @gimple_build_label(ptr noundef %760) #16
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef %871, i32 noundef 1) #16
  %872 = call ptr @split_block(ptr noundef %766, ptr noundef nonnull %810) #16
  %873 = getelementptr inbounds %struct.edge_def, ptr %872, i64 0, i32 1
  %874 = load ptr, ptr %873, align 8, !tbaa !113
  %875 = call ptr @split_block(ptr noundef %874, ptr noundef %848) #16
  %876 = getelementptr inbounds %struct.edge_def, ptr %875, i64 0, i32 1
  %877 = load ptr, ptr %876, align 8, !tbaa !113
  call void @remove_edge(ptr noundef %875) #16
  %878 = load ptr, ptr @info.14, align 8, !tbaa !88
  %879 = call ptr @split_block(ptr noundef %877, ptr noundef %878) #16
  %880 = getelementptr inbounds %struct.edge_def, ptr %879, i64 0, i32 1
  %881 = load ptr, ptr %880, align 8, !tbaa !113
  call void @remove_edge(ptr noundef %879) #16
  %882 = call ptr @make_edge(ptr noundef %766, ptr noundef %877, i32 noundef 1024) #16
  %883 = load i32, ptr @info.10, align 8, !tbaa !89
  %884 = sub nsw i32 10000, %883
  %885 = getelementptr inbounds %struct.edge_def, ptr %882, i64 0, i32 8
  store i32 %884, ptr %885, align 4, !tbaa !101
  %886 = load i64, ptr @info.12, align 8, !tbaa !91
  %887 = getelementptr inbounds %struct.edge_def, ptr %882, i64 0, i32 9
  store i64 %886, ptr %887, align 8, !tbaa !103
  %888 = getelementptr inbounds %struct.edge_def, ptr %872, i64 0, i32 7
  %889 = load i32, ptr %888, align 8, !tbaa !160
  %890 = and i32 %889, -2050
  %891 = or disjoint i32 %890, 2048
  store i32 %891, ptr %888, align 8, !tbaa !160
  %892 = getelementptr inbounds %struct.edge_def, ptr %872, i64 0, i32 8
  store i32 %883, ptr %892, align 4, !tbaa !101
  %893 = load i64, ptr @info.11, align 8, !tbaa !90
  %894 = getelementptr inbounds %struct.edge_def, ptr %872, i64 0, i32 9
  store i64 %893, ptr %894, align 8, !tbaa !103
  %895 = load ptr, ptr @info.4, align 8, !tbaa !83
  %896 = call ptr @make_edge(ptr noundef %877, ptr noundef %895, i32 noundef 1) #16
  %897 = getelementptr inbounds %struct.edge_def, ptr %896, i64 0, i32 8
  store i32 10000, ptr %897, align 4, !tbaa !101
  %898 = load i64, ptr @info.12, align 8, !tbaa !91
  %899 = getelementptr inbounds %struct.edge_def, ptr %896, i64 0, i32 9
  store i64 %898, ptr %899, align 8, !tbaa !103
  %900 = call ptr @make_edge(ptr noundef %874, ptr noundef %895, i32 noundef 1) #16
  %901 = getelementptr inbounds %struct.edge_def, ptr %900, i64 0, i32 8
  store i32 10000, ptr %901, align 4, !tbaa !101
  %902 = load i64, ptr @info.11, align 8, !tbaa !90
  %903 = getelementptr inbounds %struct.edge_def, ptr %900, i64 0, i32 9
  store i64 %902, ptr %903, align 8, !tbaa !103
  %904 = load ptr, ptr %882, align 8, !tbaa !122
  %905 = getelementptr inbounds %struct.basic_block_def, ptr %904, i64 0, i32 11
  %906 = load i32, ptr %905, align 8, !tbaa !161
  %907 = load i32, ptr %885, align 4, !tbaa !101
  %908 = mul nsw i32 %907, %906
  %909 = add nsw i32 %908, 5000
  %910 = sdiv i32 %909, 10000
  %911 = getelementptr inbounds %struct.basic_block_def, ptr %877, i64 0, i32 11
  store i32 %910, ptr %911, align 8, !tbaa !161
  %912 = load ptr, ptr %872, align 8, !tbaa !122
  %913 = getelementptr inbounds %struct.basic_block_def, ptr %912, i64 0, i32 11
  %914 = load i32, ptr %913, align 8, !tbaa !161
  %915 = load i32, ptr %892, align 4, !tbaa !101
  %916 = mul nsw i32 %915, %914
  %917 = add nsw i32 %916, 5000
  %918 = sdiv i32 %917, 10000
  %919 = getelementptr inbounds %struct.basic_block_def, ptr %874, i64 0, i32 11
  store i32 %918, ptr %919, align 8, !tbaa !161
  %920 = load ptr, ptr %896, align 8, !tbaa !122
  %921 = getelementptr inbounds %struct.basic_block_def, ptr %920, i64 0, i32 11
  %922 = load i32, ptr %921, align 8, !tbaa !161
  %923 = load i32, ptr %897, align 4, !tbaa !101
  %924 = mul nsw i32 %923, %922
  %925 = add nsw i32 %924, 5000
  %926 = sdiv i32 %925, 10000
  %927 = load ptr, ptr %900, align 8, !tbaa !122
  %928 = getelementptr inbounds %struct.basic_block_def, ptr %927, i64 0, i32 11
  %929 = load i32, ptr %928, align 8, !tbaa !161
  %930 = mul nsw i32 %929, 10000
  %931 = add nsw i32 %930, 5000
  %932 = sdiv i32 %931, 10000
  %933 = add nsw i32 %932, %926
  %934 = getelementptr inbounds %struct.basic_block_def, ptr %895, i64 0, i32 11
  store i32 %933, ptr %934, align 8, !tbaa !161
  %935 = load ptr, ptr @info.4, align 8, !tbaa !83
  %936 = getelementptr inbounds %struct.basic_block_def, ptr %881, i64 0, i32 1
  br label %937

937:                                              ; preds = %954, %867
  %938 = load ptr, ptr %936, align 8, !tbaa !44
  %939 = icmp eq ptr %938, null
  br i1 %939, label %946, label %940

940:                                              ; preds = %937
  %941 = load i32, ptr %938, align 8, !tbaa !105
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %946, label %943

943:                                              ; preds = %940
  %944 = getelementptr inbounds %struct.VEC_edge_base, ptr %938, i64 0, i32 2, i64 0
  %945 = load ptr, ptr %944, align 8, !tbaa !44
  br label %946

946:                                              ; preds = %943, %940, %937
  %947 = phi ptr [ %945, %943 ], [ null, %940 ], [ null, %937 ]
  %948 = icmp eq ptr %947, null
  br i1 %948, label %955, label %949

949:                                              ; preds = %946
  %950 = getelementptr inbounds %struct.edge_def, ptr %947, i64 0, i32 1
  %951 = load ptr, ptr %950, align 8, !tbaa !113
  call void @remove_edge(ptr noundef nonnull %947) #16
  %952 = icmp eq ptr %951, %935
  br i1 %952, label %954, label %953

953:                                              ; preds = %949
  call void @delete_basic_block(ptr noundef %951) #16
  br label %954

954:                                              ; preds = %953, %949
  br label %937, !llvm.loop !162

955:                                              ; preds = %946
  call void @delete_basic_block(ptr noundef %881) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #16
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %895) #16
  %956 = load ptr, ptr %1, align 8, !tbaa.struct !118
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #16
  %957 = icmp eq ptr %956, null
  br i1 %957, label %972, label %958

958:                                              ; preds = %955, %958
  %959 = phi i64 [ %970, %958 ], [ 0, %955 ]
  %960 = phi ptr [ %969, %958 ], [ %956, %955 ]
  %961 = load ptr, ptr %960, align 8, !tbaa !119
  %962 = load ptr, ptr @info.8, align 8, !tbaa !130
  %963 = getelementptr inbounds ptr, ptr %962, i64 %959
  %964 = load ptr, ptr %963, align 8, !tbaa !44
  call void @add_phi_arg(ptr noundef %961, ptr noundef %964, ptr noundef nonnull %896, i32 noundef 0) #16
  %965 = load ptr, ptr @info.9, align 8, !tbaa !131
  %966 = getelementptr inbounds ptr, ptr %965, i64 %959
  %967 = load ptr, ptr %966, align 8, !tbaa !44
  call void @add_phi_arg(ptr noundef %961, ptr noundef %967, ptr noundef nonnull %900, i32 noundef 0) #16
  %968 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %960, i64 0, i32 2
  %969 = load ptr, ptr %968, align 8, !tbaa !126
  %970 = add nuw i64 %959, 1
  %971 = icmp eq ptr %969, null
  br i1 %971, label %972, label %958, !llvm.loop !163

972:                                              ; preds = %958, %955
  call void @free_dominance_info(i32 noundef 1) #16
  call void @free_dominance_info(i32 noundef 2) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  %973 = load ptr, ptr @info.7, align 8, !tbaa !129
  call void @free(ptr noundef %973)
  %974 = load ptr, ptr @info.6, align 8, !tbaa !128
  call void @free(ptr noundef %974)
  %975 = load ptr, ptr @info.8, align 8, !tbaa !130
  call void @free(ptr noundef %975)
  %976 = load ptr, ptr @info.9, align 8, !tbaa !131
  call void @free(ptr noundef %976)
  %977 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %978 = icmp eq ptr %977, null
  br i1 %978, label %997, label %979

979:                                              ; preds = %972
  %980 = call i64 @fwrite(ptr nonnull @.str.2, i64 17, i64 1, ptr nonnull %977)
  br label %994

981:                                              ; preds = %53, %76, %289, %285, %370, %180, %190
  %982 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %983 = icmp eq ptr %982, null
  br i1 %983, label %997, label %984, !prof !76

984:                                              ; preds = %981
  %985 = load ptr, ptr @info.15, align 8, !tbaa !80
  %986 = icmp eq ptr %985, null
  br i1 %986, label %987, label %988

987:                                              ; preds = %984
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 894, ptr noundef nonnull @.str.5) #16
  br label %988

988:                                              ; preds = %984, %987
  %989 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %990 = call i64 @fwrite(ptr nonnull @.str.6, i64 14, i64 1, ptr %989)
  %991 = load ptr, ptr @info.15, align 8, !tbaa !80
  %992 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %993 = call i32 @fputs(ptr noundef %991, ptr noundef %992)
  br label %994

994:                                              ; preds = %988, %979
  %995 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %996 = call i64 @fwrite(ptr nonnull @.str.3, i64 33, i64 1, ptr %995)
  br label %997

997:                                              ; preds = %994, %972, %981, %27, %23
  %998 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %999 = load ptr, ptr %998, align 8, !tbaa !70
  %1000 = load ptr, ptr @cfun, align 8, !tbaa !44
  %1001 = getelementptr inbounds %struct.function, ptr %1000, i64 0, i32 1
  %1002 = load ptr, ptr %1001, align 8, !tbaa !66
  %1003 = getelementptr inbounds %struct.control_flow_graph, ptr %1002, i64 0, i32 1
  %1004 = load ptr, ptr %1003, align 8, !tbaa !72
  %1005 = icmp eq ptr %999, %1004
  br i1 %1005, label %1006, label %23, !prof !164, !llvm.loop !165

1006:                                             ; preds = %997, %0
  ret i32 0
}

declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @int_const_binop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @label_to_block_fn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @empty_block_p(ptr noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

declare zeroext i8 @is_gimple_ip_invariant(ptr noundef) local_unnamed_addr #3

declare ptr @initializer_constant_valid_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @vec_gc_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare ptr @build_index_type(ptr noundef) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare ptr @build_array_type(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_constructor(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_tmp_var_name(ptr noundef) local_unnamed_addr #3

declare void @varpool_mark_needed_node(ptr noundef) local_unnamed_addr #3

declare ptr @varpool_node(ptr noundef) local_unnamed_addr #3

declare void @varpool_finalize_decl(ptr noundef) local_unnamed_addr #3

declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @create_artificial_label(i32 noundef) local_unnamed_addr #3

declare ptr @unsigned_type_for(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_label(ptr noundef) local_unnamed_addr #3

declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_edge(ptr noundef) local_unnamed_addr #3

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @delete_basic_block(ptr noundef) local_unnamed_addr #3

declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }

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
!35 = !{ptr @do_switchconv, ptr @last_stmt, i64 146574}
!36 = !{ptr @do_switchconv, ptr @int_const_binop, i64 38}
!37 = !{ptr @do_switchconv, ptr @host_integerp, i64 38}
!38 = !{ptr @do_switchconv, ptr @tree_low_cst, i64 38}
!39 = !{ptr @do_switchconv, ptr @label_to_block_fn, i64 16}
!40 = !{ptr @do_switchconv, ptr @find_edge, i64 16}
!41 = !{ptr @do_switchconv, ptr @empty_block_p, i64 15}
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
!63 = !{!"function_entry_count", i64 40}
!64 = !{!"tree-switch-conversion.c;switchconv_gate"}
!65 = !{!"tree-switch-conversion.c;do_switchconv"}
!66 = !{!67, !45, i64 8}
!67 = !{!"function", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !50, i64 104, !50, i64 108, !50, i64 112, !50, i64 116, !50, i64 120, !50, i64 124, !45, i64 128, !50, i64 136, !50, i64 137, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139}
!68 = !{!69, !45, i64 0}
!69 = !{!"control_flow_graph", !45, i64 0, !45, i64 8, !45, i64 16, !50, i64 24, !50, i64 28, !50, i64 32, !45, i64 40, !50, i64 48, !46, i64 52, !46, i64 60, !50, i64 68, !50, i64 72}
!70 = !{!71, !45, i64 56}
!71 = !{!"basic_block_def", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !46, i64 32, !45, i64 48, !45, i64 56, !46, i64 64, !51, i64 72, !50, i64 80, !50, i64 84, !50, i64 88, !50, i64 92, !50, i64 96}
!72 = !{!69, !45, i64 8}
!73 = !{!"branch_weights", i32 1, i32 159}
!74 = !{!"branch_weights", i32 2612, i32 143962}
!75 = !{!"branch_weights", i32 38, i32 143924}
!76 = !{!"branch_weights", i32 38, i32 0}
!77 = !{!78, !45, i64 0}
!78 = !{!"", !45, i64 0, !50, i64 8, !50, i64 12, !46, i64 16}
!79 = !{!78, !50, i64 8}
!80 = !{!81, !45, i64 120}
!81 = !{!"switch_conv_info", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !50, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !50, i64 80, !51, i64 88, !51, i64 96, !45, i64 104, !45, i64 112, !45, i64 120}
!82 = !{!"branch_weights", i32 0, i32 38}
!83 = !{!81, !45, i64 32}
!84 = !{!81, !45, i64 24}
!85 = !{!51, !51, i64 0}
!86 = !{!81, !45, i64 0}
!87 = !{!81, !45, i64 104}
!88 = !{!81, !45, i64 112}
!89 = !{!81, !50, i64 80}
!90 = !{!81, !51, i64 88}
!91 = !{!81, !51, i64 96}
!92 = !{!81, !45, i64 8}
!93 = !{!"branch_weights", i32 9, i32 29}
!94 = !{!81, !45, i64 16}
!95 = !{!96, !50, i64 8}
!96 = !{!"param_info", !45, i64 0, !50, i64 8, !46, i64 12, !50, i64 16, !50, i64 20, !45, i64 24}
!97 = !{!"branch_weights", i32 25, i32 13}
!98 = !{!"branch_weights", i32 16, i32 0}
!99 = !{!"branch_weights", i32 0, i32 16}
!100 = !{!"branch_weights", i32 13, i32 3}
!101 = !{!102, !50, i64 52}
!102 = !{!"edge_def", !45, i64 0, !45, i64 8, !46, i64 16, !45, i64 24, !45, i64 32, !50, i64 40, !50, i64 44, !50, i64 48, !50, i64 52, !51, i64 56}
!103 = !{!102, !51, i64 56}
!104 = !{!71, !45, i64 0}
!105 = !{!106, !50, i64 0}
!106 = !{!"VEC_edge_base", !50, i64 0, !50, i64 4, !46, i64 8}
!107 = !{!"branch_weights", i32 15, i32 1}
!108 = !{!"branch_weights", i32 1, i32 0}
!109 = !{!"branch_weights", i32 13, i32 2}
!110 = !{!71, !45, i64 8}
!111 = !{!"branch_weights", i32 0, i32 2}
!112 = !{!"branch_weights", i32 2, i32 0}
!113 = !{!102, !45, i64 8}
!114 = !{!"branch_weights", i32 3, i32 0}
!115 = distinct !{!115, !61, !62}
!116 = !{!"branch_weights", i32 13, i32 0}
!117 = !{!81, !50, i64 40}
!118 = !{i64 0, i64 8, !44, i64 8, i64 8, !44, i64 16, i64 8, !44}
!119 = !{!120, !45, i64 0}
!120 = !{!"gimple_seq_node_d", !45, i64 0, !45, i64 8, !45, i64 16}
!121 = !{}
!122 = !{!102, !45, i64 0}
!123 = !{!124, !45, i64 24}
!124 = !{!"ssa_use_operand_d", !45, i64 0, !45, i64 8, !46, i64 16, !45, i64 24}
!125 = distinct !{!125, !61, !62}
!126 = !{!120, !45, i64 16}
!127 = distinct !{!127, !61, !62}
!128 = !{!81, !45, i64 48}
!129 = !{!81, !45, i64 56}
!130 = !{!81, !45, i64 64}
!131 = !{!81, !45, i64 72}
!132 = distinct !{!132, !61, !62}
!133 = !{!102, !50, i64 44}
!134 = distinct !{!134, !61, !62}
!135 = distinct !{!135, !61, !62}
!136 = !{!137, !50, i64 0}
!137 = !{!"VEC_constructor_elt_base", !50, i64 0, !50, i64 4, !46, i64 8}
!138 = !{!139, !45, i64 0}
!139 = !{!"constructor_elt_d", !45, i64 0, !45, i64 8}
!140 = !{!139, !45, i64 8}
!141 = distinct !{!141, !61, !62}
!142 = distinct !{!142, !61, !62}
!143 = distinct !{!143, !61, !62}
!144 = distinct !{!144, !61, !62}
!145 = distinct !{!145, !61, !62}
!146 = !{!147, !45, i64 0}
!147 = !{!"", !45, i64 0, !45, i64 8, !45, i64 16}
!148 = distinct !{!148, !61, !62}
!149 = distinct !{!149, !61, !62}
!150 = !{!71, !50, i64 96}
!151 = !{!152}
!152 = distinct !{!152, !153, !"gsi_start_bb: argument 0"}
!153 = distinct !{!153, !"gsi_start_bb"}
!154 = !{!155, !45, i64 0}
!155 = !{!"gimple_bb_info", !45, i64 0, !45, i64 8}
!156 = !{!157, !45, i64 0}
!157 = !{!"gimple_seq_d", !45, i64 0, !45, i64 8, !45, i64 16}
!158 = !{i64 0, i64 8, !44, i64 8, i64 8, !44}
!159 = !{i64 0, i64 8, !44}
!160 = !{!102, !50, i64 48}
!161 = !{!71, !50, i64 88}
!162 = distinct !{!162, !61, !62}
!163 = distinct !{!163, !61, !62}
!164 = !{!"branch_weights", i32 159, i32 586137}
!165 = distinct !{!165, !61, !62}

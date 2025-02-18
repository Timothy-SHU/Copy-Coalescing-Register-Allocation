; ModuleID = 'ipa-type-escape.c'
source_filename = "ipa-type-escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%union.tree_type_symtab = type { ptr }
%struct.splay_tree_node_s = type { i64, i64, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.type_brand_s = type { ptr, i32 }
%struct.cast = type { i32, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.varpool_node = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_binfo = type { %struct.tree_common, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.VEC_tree_none }
%struct.VEC_tree_none = type { %struct.VEC_tree_base }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@initialized = internal unnamed_addr global i1 false, align 1
@global_types_full_escape = internal unnamed_addr global ptr null, align 8
@uid_to_addressof_down_map = internal unnamed_addr global ptr null, align 8
@visited_stmts = internal unnamed_addr global ptr null, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str = private unnamed_addr constant [16 x i8] c"type-escape-var\00", align 1
@pass_ipa_type_escape = dso_local local_unnamed_addr global %struct.simple_ipa_opt_pass { %struct.opt_pass { i32 2, ptr @.str, ptr @gate_type_escape_vars, ptr @type_escape_execute, ptr null, ptr null, i32 0, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@type_to_canon_type = internal unnamed_addr global ptr null, align 8
@all_canon_types = internal unnamed_addr global ptr null, align 8
@uid_to_canon_type = internal unnamed_addr global ptr null, align 8
@global_types_seen = internal unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"<UNNAMED>\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ipa-type-escape.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@global_types_exposed_parameter = internal unnamed_addr global ptr null, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@flag_ipa_type_escape = external local_unnamed_addr global i32, align 4
@global_dc = external local_unnamed_addr global ptr, align 8
@varpool_nodes_queue = external local_unnamed_addr global ptr, align 8
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@visited_nodes = internal unnamed_addr global ptr null, align 8
@ipa_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@been_there_done_that = internal unnamed_addr global ptr null, align 8
@bitmap_tmp = internal unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"type %d \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" escaped\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c" contained\0A\00", align 1
@uid_to_addressof_up_map = internal unnamed_addr global ptr null, align 8
@uid_to_subtype_map = internal unnamed_addr global ptr null, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.9 = private unnamed_addr constant [23 x i8] c"\0A local analysis of %s\00", align 1
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8

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

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ipa_type_escape_star_count_of_interesting_type(ptr noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1, %10
  %4 = phi ptr [ %12, %10 ], [ %0, %1 ]
  %5 = phi i32 [ %13, %10 ], [ 0, %1 ]
  %6 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %14 [
    i16 10, label %10
    i16 12, label %10
    i16 16, label %15
    i16 18, label %15
    i16 17, label %15
  ]

10:                                               ; preds = %3, %3
  %11 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = add nuw nsw i32 %5, 1
  br label %3, !llvm.loop !54

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %3, %3, %3, %14, %1
  %16 = phi i32 [ -1, %1 ], [ -1, %14 ], [ %5, %3 ], [ %5, %3 ], [ %5, %3 ]
  ret i32 %16
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ipa_type_escape_star_count_of_interesting_or_array_type(ptr noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1, %10
  %4 = phi ptr [ %12, %10 ], [ %0, %1 ]
  %5 = phi i32 [ %13, %10 ], [ 0, %1 ]
  %6 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %14 [
    i16 10, label %10
    i16 12, label %10
    i16 15, label %10
    i16 16, label %15
    i16 18, label %15
    i16 17, label %15
  ]

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = add nuw nsw i32 %5, 1
  br label %3, !llvm.loop !55

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %3, %3, %3, %14, %1
  %16 = phi i32 [ -1, %1 ], [ -1, %14 ], [ %5, %3 ], [ %5, %3 ], [ %5, %3 ]
  ret i32 %16
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @ipa_type_escape_type_contained_p(ptr noundef %0) local_unnamed_addr #10 !prof !34 {
  %2 = load i1, ptr @initialized, align 1
  br i1 %2, label %3, label %15

3:                                                ; preds = %1
  %4 = load ptr, ptr @global_types_full_escape, align 8, !tbaa !35
  %5 = tail call fastcc ptr @get_canon_type(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !46
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %3 ]
  %12 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %11) #18
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %1, %10
  %16 = phi i8 [ %14, %10 ], [ 0, %1 ]
  ret i8 %16
}

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @ipa_type_escape_field_does_not_clobber_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !34 {
  %3 = load i1, ptr @initialized, align 1
  br i1 %3, label %4, label %60

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  br label %7

7:                                                ; preds = %22, %4
  %8 = phi ptr [ %1, %4 ], [ %24, %22 ]
  %9 = phi ptr [ %6, %4 ], [ %18, %22 ]
  %10 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 16
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = load i64, ptr %9, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %34 [
    i16 10, label %14
    i16 12, label %14
  ]

14:                                               ; preds = %7, %7
  %15 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 16
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = load i64, ptr %11, align 8
  %20 = trunc i64 %19 to i16
  switch i16 %20, label %60 [
    i16 10, label %22
    i16 12, label %22
    i16 18, label %21
    i16 17, label %21
  ]

21:                                               ; preds = %14, %14
  br label %25

22:                                               ; preds = %14, %14
  %23 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  br label %7, !llvm.loop !56

25:                                               ; preds = %21, %29
  %26 = phi ptr [ %33, %29 ], [ %18, %21 ]
  %27 = load i64, ptr %26, align 8
  %28 = trunc i64 %27 to i16
  switch i16 %28, label %34 [
    i16 10, label %29
    i16 12, label %29
  ]

29:                                               ; preds = %25, %25
  %30 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = getelementptr inbounds %struct.tree_type, ptr %31, i64 0, i32 16
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  br label %25, !llvm.loop !57

34:                                               ; preds = %7, %25
  %35 = phi ptr [ %26, %25 ], [ %9, %7 ]
  %36 = tail call fastcc ptr @get_canon_type(ptr noundef nonnull %35, i8 noundef zeroext 1, i8 noundef zeroext 1)
  %37 = tail call zeroext i8 @ipa_type_escape_type_contained_p(ptr noundef %36), !range !58
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %60, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.tree_type, ptr %36, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !46
  %42 = load ptr, ptr @uid_to_addressof_down_map, align 8, !tbaa !35
  %43 = sext i32 %41 to i64
  %44 = tail call ptr @splay_tree_lookup(ptr noundef %42, i64 noundef %43) #18
  %45 = icmp eq ptr %44, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.splay_tree_node_s, ptr %44, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !59
  %49 = inttoptr i64 %48 to ptr
  %50 = tail call fastcc ptr @get_canon_type(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext 1)
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 5
  %54 = load i32, ptr %53, align 8, !tbaa !46
  br label %55

55:                                               ; preds = %46, %52
  %56 = phi i32 [ %54, %52 ], [ 0, %46 ]
  %57 = tail call i32 @bitmap_bit_p(ptr noundef %49, i32 noundef %56) #18
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i8
  br label %60

60:                                               ; preds = %14, %39, %34, %2, %55
  %61 = phi i8 [ %59, %55 ], [ 0, %2 ], [ 0, %34 ], [ 1, %39 ], [ 1, %14 ]
  ret i8 %61
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_canon_type(ptr noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #10 !prof !34 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %100, label %5

5:                                                ; preds = %3, %11
  %6 = phi ptr [ %13, %11 ], [ %0, %3 ]
  %7 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 16
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %100 [
    i16 10, label %11
    i16 12, label %11
    i16 15, label %11
    i16 7, label %14
    i16 13, label %14
    i16 6, label %14
    i16 8, label %14
    i16 18, label %14
    i16 9, label %14
    i16 11, label %14
    i16 16, label %14
    i16 17, label %14
    i16 14, label %14
    i16 19, label %14
  ]

11:                                               ; preds = %5, %5, %5
  %12 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  br label %5, !llvm.loop !61

14:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  %15 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = icmp eq i8 %2, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %14, %22
  %19 = phi ptr [ %26, %22 ], [ %16, %14 ]
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %38 [
    i16 10, label %22
    i16 12, label %22
    i16 15, label %22
  ]

22:                                               ; preds = %18, %18, %18
  %23 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.tree_type, ptr %24, i64 0, i32 16
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  br label %18, !llvm.loop !62

27:                                               ; preds = %14
  %28 = icmp eq i8 %1, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %27, %33
  %30 = phi ptr [ %37, %33 ], [ %16, %27 ]
  %31 = load i64, ptr %30, align 8
  %32 = trunc i64 %31 to i16
  switch i16 %32, label %38 [
    i16 10, label %33
    i16 12, label %33
  ]

33:                                               ; preds = %29, %29
  %34 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = getelementptr inbounds %struct.tree_type, ptr %35, i64 0, i32 16
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  br label %29, !llvm.loop !63

38:                                               ; preds = %18, %29, %27
  %39 = phi ptr [ %16, %27 ], [ %30, %29 ], [ %19, %18 ]
  %40 = load ptr, ptr @type_to_canon_type, align 8, !tbaa !35
  %41 = ptrtoint ptr %39 to i64
  %42 = tail call ptr @splay_tree_lookup(ptr noundef %40, i64 noundef %41) #18
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %96

44:                                               ; preds = %38
  %45 = tail call ptr @xmalloc(i64 noundef 16) #18
  %46 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 12
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = icmp eq ptr %47, null
  br i1 %48, label %60, label %49

49:                                               ; preds = %44
  %50 = load i64, ptr %47, align 8
  %51 = trunc i64 %50 to i16
  switch i16 %51, label %60 [
    i16 35, label %52
    i16 1, label %56
  ]

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.tree_decl_minimal, ptr %47, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %49, %52
  %57 = phi ptr [ %54, %52 ], [ %47, %49 ]
  %58 = getelementptr inbounds %struct.tree_identifier, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !46
  br label %60

60:                                               ; preds = %56, %52, %49, %44
  %61 = phi ptr [ @.str.1, %44 ], [ @.str.1, %52 ], [ @.str.1, %49 ], [ %59, %56 ]
  store ptr %61, ptr %45, align 8, !tbaa !64
  %62 = getelementptr inbounds %struct.type_brand_s, ptr %45, i64 0, i32 1
  %63 = ptrtoint ptr %45 to i64
  br label %64

64:                                               ; preds = %80, %60
  %65 = phi i32 [ 0, %60 ], [ %67, %80 ]
  %66 = phi ptr [ undef, %60 ], [ %81, %80 ]
  %67 = add nuw nsw i32 %65, 1
  store i32 %65, ptr %62, align 8, !tbaa !66
  %68 = load ptr, ptr @all_canon_types, align 8, !tbaa !35
  %69 = tail call ptr @splay_tree_lookup(ptr noundef %68, i64 noundef %63) #18
  %70 = icmp eq ptr %69, null
  br i1 %70, label %82, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.splay_tree_node_s, ptr %69, i64 0, i32 1
  %73 = load i64, ptr %72, align 8, !tbaa !59
  %74 = inttoptr i64 %73 to ptr
  %75 = tail call zeroext i8 @types_compatible_p(ptr noundef %39, ptr noundef %74) #18
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  tail call void @free(ptr noundef %45)
  %78 = load ptr, ptr @type_to_canon_type, align 8, !tbaa !35
  %79 = tail call ptr @splay_tree_insert(ptr noundef %78, i64 noundef %41, i64 noundef %73) #18
  br label %80

80:                                               ; preds = %77, %71
  %81 = phi ptr [ %74, %77 ], [ %66, %71 ]
  br i1 %76, label %64, label %100, !llvm.loop !67

82:                                               ; preds = %64
  %83 = getelementptr inbounds %struct.type_brand_s, ptr %45, i64 0, i32 1
  store i32 %67, ptr %83, align 8, !tbaa !66
  %84 = load ptr, ptr @all_canon_types, align 8, !tbaa !35
  %85 = tail call ptr @splay_tree_insert(ptr noundef %84, i64 noundef %63, i64 noundef %41) #18
  %86 = load ptr, ptr @type_to_canon_type, align 8, !tbaa !35
  %87 = tail call ptr @splay_tree_insert(ptr noundef %86, i64 noundef %41, i64 noundef %41) #18
  %88 = load ptr, ptr @uid_to_canon_type, align 8, !tbaa !35
  %89 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 5
  %90 = load i32, ptr %89, align 8, !tbaa !46
  %91 = zext i32 %90 to i64
  %92 = tail call ptr @splay_tree_insert(ptr noundef %88, i64 noundef %91, i64 noundef %41) #18
  %93 = load ptr, ptr @global_types_seen, align 8, !tbaa !35
  %94 = load i32, ptr %89, align 8, !tbaa !46
  %95 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %93, i32 noundef %94) #18
  br label %100

96:                                               ; preds = %38
  %97 = getelementptr inbounds %struct.splay_tree_node_s, ptr %42, i64 0, i32 1
  %98 = load i64, ptr %97, align 8, !tbaa !59
  %99 = inttoptr i64 %98 to ptr
  br label %100

100:                                              ; preds = %5, %80, %82, %3, %96
  %101 = phi ptr [ %99, %96 ], [ null, %3 ], [ %39, %82 ], [ %81, %80 ], [ null, %5 ]
  ret ptr %101
}

declare ptr @splay_tree_lookup(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @is_array_access_through_pointer_and_index(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #10 !prof !34 {
  %7 = alloca %struct.cast, align 8
  %8 = alloca %struct.cast, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #18
  store ptr null, ptr %3, align 8, !tbaa !35
  store ptr null, ptr %4, align 8, !tbaa !35
  store ptr null, ptr %5, align 8, !tbaa !35
  %9 = icmp eq i32 %0, 66
  br i1 %9, label %10, label %35

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 16
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 16
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = load i64, ptr %14, align 8
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %27, label %23

23:                                               ; preds = %10
  %24 = icmp eq i32 %21, 12
  %25 = icmp ne ptr %18, null
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %32, label %29

27:                                               ; preds = %10
  %28 = icmp eq ptr %18, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %27, %23
  %30 = load i64, ptr %18, align 8
  %31 = trunc i64 %30 to i16
  switch i16 %31, label %228 [
    i16 10, label %32
    i16 12, label %32
  ]

32:                                               ; preds = %29, %29, %27, %23
  %33 = phi ptr [ %1, %23 ], [ %1, %27 ], [ %2, %29 ], [ %2, %29 ]
  %34 = phi ptr [ %2, %23 ], [ %2, %27 ], [ %1, %29 ], [ %1, %29 ]
  store ptr %33, ptr %3, align 8, !tbaa !35
  store ptr %34, ptr %4, align 8, !tbaa !35
  br label %55

35:                                               ; preds = %6
  store i32 0, ptr %8, align 8, !tbaa !68
  store i32 0, ptr %7, align 8, !tbaa !68
  %36 = getelementptr inbounds %struct.cast, ptr %8, i64 0, i32 1
  store ptr null, ptr %36, align 8, !tbaa !70
  %37 = getelementptr inbounds %struct.cast, ptr %7, i64 0, i32 1
  store ptr null, ptr %37, align 8, !tbaa !70
  %38 = tail call ptr @pointer_set_create() #18
  store ptr %38, ptr @visited_stmts, align 8, !tbaa !35
  call void @walk_use_def_chains(ptr noundef %1, ptr noundef nonnull @is_cast_from_non_pointer, ptr noundef nonnull %7, i8 noundef zeroext 0) #18
  %39 = load ptr, ptr @visited_stmts, align 8, !tbaa !35
  call void @pointer_set_destroy(ptr noundef %39) #18
  %40 = call ptr @pointer_set_create() #18
  store ptr %40, ptr @visited_stmts, align 8, !tbaa !35
  call void @walk_use_def_chains(ptr noundef %2, ptr noundef nonnull @is_cast_from_non_pointer, ptr noundef nonnull %8, i8 noundef zeroext 0) #18
  %41 = load ptr, ptr @visited_stmts, align 8, !tbaa !35
  call void @pointer_set_destroy(ptr noundef %41) #18
  %42 = load i32, ptr %7, align 8, !tbaa !68
  %43 = icmp eq i32 %42, 1
  %44 = load i32, ptr %8, align 8
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  store ptr %2, ptr %3, align 8, !tbaa !35
  store ptr %1, ptr %4, align 8, !tbaa !35
  %48 = load ptr, ptr %37, align 8, !tbaa !70
  store ptr %48, ptr %5, align 8, !tbaa !35
  br label %55

49:                                               ; preds = %35
  %50 = icmp eq i32 %42, 0
  %51 = icmp eq i32 %44, 1
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %53, label %228

53:                                               ; preds = %49
  store ptr %1, ptr %3, align 8, !tbaa !35
  store ptr %2, ptr %4, align 8, !tbaa !35
  %54 = load ptr, ptr %36, align 8, !tbaa !70
  store ptr %54, ptr %5, align 8, !tbaa !35
  br label %55

55:                                               ; preds = %32, %47, %53
  %56 = load ptr, ptr %5, align 8, !tbaa !35
  %57 = icmp eq ptr %56, null
  br i1 %57, label %101, label %58

58:                                               ; preds = %55
  %59 = load i32, ptr %56, align 8
  %60 = and i32 %59, 255
  %61 = add nsw i32 %60, -10
  %62 = icmp ult i32 %61, -9
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %56, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !46
  br label %66

66:                                               ; preds = %63, %58
  %67 = phi ptr [ %65, %63 ], [ null, %58 ]
  %68 = icmp eq ptr %67, null
  br i1 %68, label %79, label %69

69:                                               ; preds = %66
  %70 = and i32 %59, 254
  %71 = add nsw i32 %70, -10
  %72 = icmp ult i32 %71, -4
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %56, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !46
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %67, align 8, !tbaa !71
  br label %79

79:                                               ; preds = %77, %73, %69, %66
  %80 = phi ptr [ %67, %66 ], [ %67, %69 ], [ %67, %73 ], [ %78, %77 ]
  %81 = icmp eq ptr %80, null
  br i1 %81, label %89, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.use_optype_d, ptr %80, i64 0, i32 1, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !74
  %85 = load ptr, ptr %84, align 8, !tbaa !35
  %86 = load ptr, ptr %80, align 8, !tbaa !71
  %87 = icmp eq ptr %86, null
  %88 = select i1 %87, ptr %85, ptr null
  br label %89

89:                                               ; preds = %82, %79
  %90 = phi ptr [ %88, %82 ], [ null, %79 ]
  %91 = icmp eq ptr %90, null
  %92 = select i1 %81, i1 true, i1 %91
  br i1 %92, label %228, label %93

93:                                               ; preds = %89
  %94 = load i64, ptr %90, align 8
  %95 = and i64 %94, 4294967296
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %228

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.tree_ssa_name, ptr %90, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !46
  %100 = icmp eq ptr %99, null
  br i1 %100, label %228, label %105

101:                                              ; preds = %55
  %102 = load ptr, ptr %4, align 8, !tbaa !35
  %103 = getelementptr inbounds %struct.tree_ssa_name, ptr %102, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !46
  br label %105

105:                                              ; preds = %97, %101
  %106 = phi ptr [ %99, %97 ], [ %104, %101 ]
  %107 = load i32, ptr %106, align 8
  %108 = and i32 %107, 255
  %109 = icmp eq i32 %108, 6
  br i1 %109, label %110, label %228

110:                                              ; preds = %105
  %111 = zext nneg i32 %108 to i64
  %112 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !50
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %114
  %116 = load i64, ptr %115, align 8, !tbaa !75
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %119

119:                                              ; preds = %118, %110
  %120 = getelementptr inbounds i8, ptr %106, i64 %116
  %121 = load ptr, ptr %120, align 8, !tbaa !35
  %122 = call zeroext i8 @is_gimple_reg(ptr noundef %121) #18
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %228, label %124

124:                                              ; preds = %119
  %125 = load i32, ptr %106, align 8
  %126 = trunc i32 %125 to i8
  switch i8 %126, label %129 [
    i8 6, label %127
    i8 1, label %127
    i8 8, label %130
  ]

127:                                              ; preds = %124, %124
  %128 = lshr i32 %125, 16
  br label %130

129:                                              ; preds = %124
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1446, ptr noundef nonnull @.str.3) #18
  br label %130

130:                                              ; preds = %129, %127, %124
  %131 = phi i32 [ %128, %127 ], [ 0, %129 ], [ 59, %124 ]
  %132 = zext nneg i32 %131 to i64
  %133 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %132
  %134 = load i8, ptr %133, align 1, !tbaa !46
  %135 = icmp eq i8 %134, 3
  br i1 %135, label %136, label %156

136:                                              ; preds = %130
  %137 = load i32, ptr %106, align 8
  %138 = and i32 %137, 255
  %139 = add nsw i32 %138, -1
  %140 = icmp ult i32 %139, 9
  call void @llvm.assume(i1 %140)
  %141 = zext nneg i32 %138 to i64
  %142 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !50
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %144
  %146 = load i64, ptr %145, align 8, !tbaa !75
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %136
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %149

149:                                              ; preds = %148, %136
  %150 = getelementptr inbounds i8, ptr %106, i64 %146
  %151 = getelementptr inbounds ptr, ptr %150, i64 1
  %152 = load ptr, ptr %151, align 8, !tbaa !35
  %153 = load i64, ptr %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = and i32 %154, 65535
  br label %156

156:                                              ; preds = %130, %149
  %157 = phi i32 [ %155, %149 ], [ %131, %130 ]
  %158 = icmp eq i32 %157, 65
  br i1 %158, label %159, label %228

159:                                              ; preds = %156
  %160 = load i32, ptr %106, align 8
  %161 = and i32 %160, 255
  %162 = add nsw i32 %161, -10
  %163 = icmp ult i32 %162, -9
  br i1 %163, label %177, label %164

164:                                              ; preds = %159
  %165 = zext nneg i32 %161 to i64
  %166 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !50
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %168
  %170 = load i64, ptr %169, align 8, !tbaa !75
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %173

173:                                              ; preds = %172, %164
  %174 = getelementptr inbounds i8, ptr %106, i64 %170
  %175 = getelementptr inbounds ptr, ptr %174, i64 1
  %176 = load ptr, ptr %175, align 8, !tbaa !35
  br label %177

177:                                              ; preds = %159, %173
  %178 = phi ptr [ %176, %173 ], [ null, %159 ]
  %179 = getelementptr inbounds %struct.gimple_statement_base, ptr %106, i64 0, i32 3
  %180 = load i32, ptr %179, align 4, !tbaa !46
  %181 = icmp ugt i32 %180, 2
  br i1 %181, label %182, label %200

182:                                              ; preds = %177
  %183 = load i32, ptr %106, align 8
  %184 = and i32 %183, 255
  %185 = add nsw i32 %184, -10
  %186 = icmp ult i32 %185, -9
  br i1 %186, label %200, label %187

187:                                              ; preds = %182
  %188 = zext nneg i32 %184 to i64
  %189 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %188
  %190 = load i32, ptr %189, align 4, !tbaa !50
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %191
  %193 = load i64, ptr %192, align 8, !tbaa !75
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %196

196:                                              ; preds = %195, %187
  %197 = getelementptr inbounds i8, ptr %106, i64 %193
  %198 = getelementptr inbounds ptr, ptr %197, i64 2
  %199 = load ptr, ptr %198, align 8, !tbaa !35
  br label %200

200:                                              ; preds = %177, %182, %196
  %201 = phi ptr [ null, %177 ], [ %199, %196 ], [ null, %182 ]
  %202 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !46
  %204 = getelementptr inbounds %struct.tree_type, ptr %203, i64 0, i32 16
  %205 = load ptr, ptr %204, align 8, !tbaa !46
  %206 = getelementptr inbounds %struct.tree_common, ptr %205, i64 0, i32 2
  %207 = load ptr, ptr %206, align 8, !tbaa !46
  %208 = getelementptr inbounds %struct.tree_type, ptr %207, i64 0, i32 3
  %209 = load ptr, ptr %208, align 8, !tbaa !46
  %210 = load i64, ptr %178, align 8
  %211 = and i64 %210, 65535
  %212 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %211
  %213 = load i32, ptr %212, align 4, !tbaa !50
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %215, label %218

215:                                              ; preds = %200
  %216 = call i32 @simple_cst_equal(ptr noundef nonnull %178, ptr noundef %209) #18
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %215, %200
  %219 = load i64, ptr %201, align 8
  %220 = and i64 %219, 65535
  %221 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %220
  %222 = load i32, ptr %221, align 4, !tbaa !50
  %223 = icmp eq i32 %222, 1
  br i1 %223, label %224, label %228

224:                                              ; preds = %218
  %225 = call i32 @simple_cst_equal(ptr noundef nonnull %201, ptr noundef %209) #18
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %224, %215
  br label %228

228:                                              ; preds = %227, %218, %224, %97, %105, %156, %119, %93, %89, %49, %29
  %229 = phi i8 [ 0, %29 ], [ 0, %49 ], [ 0, %89 ], [ 0, %93 ], [ 0, %119 ], [ 0, %156 ], [ 0, %105 ], [ 0, %97 ], [ 1, %227 ], [ 0, %218 ], [ 0, %224 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  ret i8 %229
}

declare ptr @pointer_set_create() local_unnamed_addr #3

declare void @walk_use_def_chains(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal zeroext i8 @is_cast_from_non_pointer(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) #10 !prof !34 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %0, null
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %209

7:                                                ; preds = %3
  %8 = load i32, ptr %1, align 8
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %209, label %11

11:                                               ; preds = %7
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, 4294967296
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %209

15:                                               ; preds = %11
  %16 = icmp eq i32 %9, 6
  br i1 %16, label %17, label %205

17:                                               ; preds = %15
  %18 = load i32, ptr %1, align 8
  %19 = and i32 %18, 255
  %20 = icmp eq i32 %19, 6
  br i1 %20, label %25, label %21

21:                                               ; preds = %52, %17
  %22 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !46
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %119, label %91

25:                                               ; preds = %17
  %26 = lshr i32 %18, 16
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !46
  %30 = icmp eq i8 %29, 3
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = zext nneg i32 %19 to i64
  %33 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !50
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !75
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %40

40:                                               ; preds = %39, %31
  %41 = getelementptr inbounds i8, ptr %1, i64 %37
  %42 = getelementptr inbounds ptr, ptr %41, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !35
  %44 = load i64, ptr %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = and i32 %45, 65535
  br label %47

47:                                               ; preds = %40, %25
  %48 = phi i32 [ %46, %40 ], [ %26, %25 ]
  %49 = freeze i32 %48
  %50 = and i32 %49, 65533
  %51 = icmp eq i32 %50, 116
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  switch i32 %49, label %21 [
    i32 113, label %53
    i32 77, label %53
  ]

53:                                               ; preds = %52, %52, %47
  %54 = load i32, ptr %1, align 8
  %55 = and i32 %54, 255
  %56 = add nsw i32 %55, -10
  %57 = icmp ult i32 %56, -9
  br i1 %57, label %71, label %58

58:                                               ; preds = %53
  %59 = zext nneg i32 %55 to i64
  %60 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !50
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !75
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %67

67:                                               ; preds = %66, %58
  %68 = getelementptr inbounds i8, ptr %1, i64 %64
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !35
  br label %71

71:                                               ; preds = %67, %53
  %72 = phi ptr [ %70, %67 ], [ null, %53 ]
  %73 = load i32, ptr %1, align 8
  %74 = and i32 %73, 255
  %75 = add nsw i32 %74, -1
  %76 = icmp ult i32 %75, 9
  tail call void @llvm.assume(i1 %76)
  %77 = zext nneg i32 %74 to i64
  %78 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !50
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !75
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %85

85:                                               ; preds = %84, %71
  %86 = getelementptr inbounds i8, ptr %1, i64 %82
  %87 = load ptr, ptr %86, align 8, !tbaa !35
  %88 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !46
  %90 = tail call fastcc i32 @check_cast(ptr noundef %89, ptr noundef %72)
  br label %119

91:                                               ; preds = %21, %111
  %92 = phi i64 [ %115, %111 ], [ 0, %21 ]
  %93 = phi i32 [ %114, %111 ], [ 0, %21 ]
  %94 = load i32, ptr %1, align 8
  %95 = and i32 %94, 255
  %96 = add nsw i32 %95, -10
  %97 = icmp ult i32 %96, -9
  br i1 %97, label %111, label %98

98:                                               ; preds = %91
  %99 = zext nneg i32 %95 to i64
  %100 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !50
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %102
  %104 = load i64, ptr %103, align 8, !tbaa !75
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %107

107:                                              ; preds = %106, %98
  %108 = getelementptr inbounds i8, ptr %1, i64 %104
  %109 = getelementptr inbounds ptr, ptr %108, i64 %92
  %110 = load ptr, ptr %109, align 8, !tbaa !35
  br label %111

111:                                              ; preds = %107, %91
  %112 = phi ptr [ %110, %107 ], [ null, %91 ]
  %113 = tail call fastcc i32 @look_for_casts(ptr noundef %112)
  %114 = or i32 %113, %93
  %115 = add nuw nsw i64 %92, 1
  %116 = load i32, ptr %22, align 4, !tbaa !46
  %117 = zext i32 %116 to i64
  %118 = icmp ult i64 %115, %117
  br i1 %118, label %91, label %119, !llvm.loop !76

119:                                              ; preds = %111, %21, %85
  %120 = phi i32 [ %90, %85 ], [ 0, %21 ], [ %114, %111 ]
  %121 = icmp eq i32 %120, 0
  %122 = select i1 %121, i32 256, i32 %120
  %123 = icmp eq i32 %122, 32
  br i1 %123, label %124, label %164

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.cast, ptr %2, i64 0, i32 1
  store ptr %1, ptr %125, align 8, !tbaa !70
  %126 = load i32, ptr %2, align 8, !tbaa !68
  %127 = add nsw i32 %126, 1
  store i32 %127, ptr %2, align 8, !tbaa !68
  %128 = load i32, ptr %1, align 8
  %129 = and i32 %128, 255
  %130 = add nsw i32 %129, -10
  %131 = icmp ult i32 %130, -9
  br i1 %131, label %135, label %132

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %1, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !46
  br label %135

135:                                              ; preds = %132, %124
  %136 = phi ptr [ %134, %132 ], [ null, %124 ]
  %137 = icmp eq ptr %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.use_optype_d, ptr %136, i64 0, i32 1
  %140 = load ptr, ptr %136, align 8, !tbaa !71
  br label %141

141:                                              ; preds = %135, %138
  %142 = phi ptr [ %140, %138 ], [ %136, %135 ]
  %143 = phi i8 [ 0, %138 ], [ 1, %135 ]
  %144 = phi ptr [ %139, %138 ], [ null, %135 ]
  br i1 %137, label %205, label %145

145:                                              ; preds = %141, %159
  %146 = phi ptr [ %162, %159 ], [ %144, %141 ]
  %147 = phi i8 [ %161, %159 ], [ %143, %141 ]
  %148 = phi ptr [ %160, %159 ], [ %142, %141 ]
  %149 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %146, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !74
  %151 = load ptr, ptr %150, align 8, !tbaa !35
  tail call void @walk_use_def_chains(ptr noundef %151, ptr noundef nonnull @is_cast_from_non_pointer, ptr noundef nonnull %2, i8 noundef zeroext 0) #18
  %152 = load i32, ptr %2, align 8, !tbaa !68
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %205, label %154

154:                                              ; preds = %145
  %155 = icmp eq ptr %148, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %154
  %157 = getelementptr inbounds %struct.use_optype_d, ptr %148, i64 0, i32 1
  %158 = load ptr, ptr %148, align 8, !tbaa !71
  br label %159

159:                                              ; preds = %154, %156
  %160 = phi ptr [ %158, %156 ], [ %148, %154 ]
  %161 = phi i8 [ %147, %156 ], [ 1, %154 ]
  %162 = phi ptr [ %157, %156 ], [ null, %154 ]
  %163 = icmp eq i8 %161, 0
  br i1 %163, label %145, label %205, !llvm.loop !77

164:                                              ; preds = %119
  %165 = and i32 %122, 395
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %204, label %167

167:                                              ; preds = %164
  %168 = load i32, ptr %1, align 8
  %169 = and i32 %168, 255
  %170 = add nsw i32 %169, -10
  %171 = icmp ult i32 %170, -9
  br i1 %171, label %175, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %1, i64 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !46
  br label %175

175:                                              ; preds = %172, %167
  %176 = phi ptr [ %174, %172 ], [ null, %167 ]
  %177 = icmp eq ptr %176, null
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.use_optype_d, ptr %176, i64 0, i32 1
  %180 = load ptr, ptr %176, align 8, !tbaa !71
  br label %181

181:                                              ; preds = %175, %178
  %182 = phi ptr [ %180, %178 ], [ %176, %175 ]
  %183 = phi i8 [ 0, %178 ], [ 1, %175 ]
  %184 = phi ptr [ %179, %178 ], [ null, %175 ]
  br i1 %177, label %205, label %185

185:                                              ; preds = %181, %199
  %186 = phi ptr [ %202, %199 ], [ %184, %181 ]
  %187 = phi i8 [ %201, %199 ], [ %183, %181 ]
  %188 = phi ptr [ %200, %199 ], [ %182, %181 ]
  %189 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %186, i64 0, i32 3
  %190 = load ptr, ptr %189, align 8, !tbaa !74
  %191 = load ptr, ptr %190, align 8, !tbaa !35
  tail call void @walk_use_def_chains(ptr noundef %191, ptr noundef nonnull @is_cast_from_non_pointer, ptr noundef %2, i8 noundef zeroext 0) #18
  %192 = load i32, ptr %2, align 8, !tbaa !68
  %193 = icmp eq i32 %192, -1
  br i1 %193, label %205, label %194

194:                                              ; preds = %185
  %195 = icmp eq ptr %188, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %194
  %197 = getelementptr inbounds %struct.use_optype_d, ptr %188, i64 0, i32 1
  %198 = load ptr, ptr %188, align 8, !tbaa !71
  br label %199

199:                                              ; preds = %194, %196
  %200 = phi ptr [ %198, %196 ], [ %188, %194 ]
  %201 = phi i8 [ %187, %196 ], [ 1, %194 ]
  %202 = phi ptr [ %197, %196 ], [ null, %194 ]
  %203 = icmp eq i8 %201, 0
  br i1 %203, label %185, label %205, !llvm.loop !78

204:                                              ; preds = %164
  store i32 -1, ptr %2, align 8, !tbaa !68
  br label %205

205:                                              ; preds = %185, %199, %159, %145, %181, %141, %204, %15
  %206 = load i32, ptr %2, align 8, !tbaa !68
  %207 = icmp eq i32 %206, -1
  %208 = zext i1 %207 to i8
  br label %209

209:                                              ; preds = %205, %11, %7, %3
  %210 = phi i8 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %208, %205 ]
  ret i8 %210
}

declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_type_escape_vars() #11 !prof !79 !PGOFuncName !80 {
  %1 = load i32, ptr @flag_ipa_type_escape, align 4, !tbaa !50
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %13, label %3, !prof !81

3:                                                ; preds = %0
  %4 = load ptr, ptr @global_dc, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 4
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 5
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %3, %8, %0
  %14 = phi i8 [ 0, %0 ], [ 0, %3 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @type_escape_execute() #10 !prof !34 {
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @ipa_obstack) #18
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @ipa_obstack) #18
  store ptr %1, ptr @global_types_exposed_parameter, align 8, !tbaa !35
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @ipa_obstack) #18
  store ptr %2, ptr @global_types_full_escape, align 8, !tbaa !35
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @ipa_obstack) #18
  store ptr %3, ptr @global_types_seen, align 8, !tbaa !35
  %4 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_ints, ptr noundef null, ptr noundef null) #18
  store ptr %4, ptr @uid_to_canon_type, align 8, !tbaa !35
  %5 = tail call ptr @splay_tree_new(ptr noundef nonnull @compare_type_brand, ptr noundef null, ptr noundef null) #18
  store ptr %5, ptr @all_canon_types, align 8, !tbaa !35
  %6 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_pointers, ptr noundef null, ptr noundef null) #18
  store ptr %6, ptr @type_to_canon_type, align 8, !tbaa !35
  %7 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_ints, ptr noundef null, ptr noundef null) #18
  store ptr %7, ptr @uid_to_subtype_map, align 8, !tbaa !35
  %8 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_ints, ptr noundef null, ptr noundef null) #18
  store ptr %8, ptr @uid_to_addressof_down_map, align 8, !tbaa !35
  %9 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_ints, ptr noundef null, ptr noundef null) #18
  store ptr %9, ptr @uid_to_addressof_up_map, align 8, !tbaa !35
  %10 = tail call ptr @pointer_set_create() #18
  store ptr %10, ptr @visited_nodes, align 8, !tbaa !35
  store i1 true, ptr @initialized, align 1
  %11 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %55, %0
  %14 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %888, label %59

16:                                               ; preds = %0, %55
  %17 = phi ptr [ %57, %55 ], [ %11, %0 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !82
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = tail call fastcc ptr @get_canon_type(ptr noundef %20, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %22 = getelementptr inbounds %struct.varpool_node, ptr %17, i64 0, i32 5
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 32
  %25 = icmp eq i8 %24, 0
  %26 = icmp eq ptr %21, null
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %45, label %28

28:                                               ; preds = %16, %35
  %29 = phi ptr [ %37, %35 ], [ %21, %16 ]
  %30 = phi i32 [ %38, %35 ], [ 0, %16 ]
  %31 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 16
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = load i64, ptr %32, align 8
  %34 = trunc i64 %33 to i16
  switch i16 %34, label %39 [
    i16 10, label %35
    i16 12, label %35
    i16 16, label %40
    i16 18, label %40
    i16 17, label %40
  ]

35:                                               ; preds = %28, %28
  %36 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = add nuw nsw i32 %30, 1
  br label %28, !llvm.loop !54

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %28, %28, %28, %39
  %41 = phi i32 [ -1, %39 ], [ %30, %28 ], [ %30, %28 ], [ %30, %28 ]
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = tail call fastcc ptr @mark_type(ptr noundef nonnull %21, i32 noundef 1)
  br label %45

45:                                               ; preds = %40, %43, %16
  %46 = load i64, ptr %18, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 32
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1645, ptr noundef nonnull @.str.3) #18
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr inbounds %struct.tree_decl_common, ptr %18, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call fastcc void @check_tree(ptr noundef nonnull %52)
  br label %55

55:                                               ; preds = %50, %54
  %56 = getelementptr inbounds %struct.varpool_node, ptr %17, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !35
  %58 = icmp eq ptr %57, null
  br i1 %58, label %13, label %16, !llvm.loop !84

59:                                               ; preds = %13, %884
  %60 = phi ptr [ %886, %884 ], [ %14, %13 ]
  %61 = getelementptr inbounds %struct.cgraph_node, ptr %60, i64 0, i32 27
  %62 = load i16, ptr %61, align 4
  %63 = and i16 %62, 32
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %884, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.cgraph_node, ptr %60, i64 0, i32 12
  %67 = load ptr, ptr %66, align 8, !tbaa !85
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %884

69:                                               ; preds = %65
  %70 = load ptr, ptr %60, align 8, !tbaa !93
  %71 = getelementptr inbounds %struct.cgraph_node, ptr %60, i64 0, i32 18, i32 2
  %72 = load i8, ptr %71, align 8
  %73 = lshr i8 %72, 1
  %74 = and i8 %73, 1
  tail call fastcc void @check_function_parameter_and_return_types(ptr noundef %70, i8 noundef zeroext %74)
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %69
  %78 = tail call ptr @cgraph_node_name(ptr noundef nonnull %60) #18
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %75, ptr noundef nonnull @.str.9, ptr noundef %78)
  br label %80

80:                                               ; preds = %77, %69
  %81 = getelementptr inbounds %struct.tree_function_decl, ptr %70, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !46
  %83 = getelementptr inbounds %struct.function, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !94
  %85 = load ptr, ptr %84, align 8, !tbaa !96
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 6
  %87 = load ptr, ptr %86, align 8, !tbaa !98
  %88 = getelementptr inbounds %struct.control_flow_graph, ptr %84, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !100
  %90 = icmp eq ptr %87, %89
  br i1 %90, label %855, label %98

91:                                               ; preds = %851, %115
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 6
  %93 = load ptr, ptr %92, align 8, !tbaa !98
  %94 = load ptr, ptr %83, align 8, !tbaa !94
  %95 = getelementptr inbounds %struct.control_flow_graph, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !100
  %97 = icmp eq ptr %93, %96
  br i1 %97, label %855, label %98, !llvm.loop !101

98:                                               ; preds = %80, %91
  %99 = phi ptr [ %93, %91 ], [ %87, %80 ]
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 13
  %101 = load i32, ptr %100, align 8, !tbaa !102, !noalias !103
  %102 = and i32 %101, 512
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 7
  %106 = load ptr, ptr %105, align 8, !tbaa !46, !noalias !103
  %107 = icmp eq ptr %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %106, align 8, !tbaa !106, !noalias !103
  br label %110

110:                                              ; preds = %108, %104, %98
  %111 = phi ptr [ %109, %108 ], [ null, %104 ], [ null, %98 ]
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr %111, align 8, !tbaa !108, !noalias !103
  br label %115

115:                                              ; preds = %113, %110
  %116 = phi ptr [ %114, %113 ], [ null, %110 ]
  %117 = icmp eq ptr %116, null
  br i1 %117, label %91, label %118

118:                                              ; preds = %115, %851
  %119 = phi ptr [ %853, %851 ], [ %116, %115 ]
  %120 = load ptr, ptr %119, align 8, !tbaa !110
  %121 = load i32, ptr %120, align 8
  %122 = and i32 %121, 255
  %123 = trunc i32 %121 to i8
  switch i8 %123, label %851 [
    i8 6, label %130
    i8 8, label %518
    i8 7, label %124
  ]

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.gimple_statement_asm, ptr %120, i64 0, i32 3
  %126 = load i8, ptr %125, align 1, !tbaa !46
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %781, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.gimple_statement_asm, ptr %120, i64 0, i32 2
  br label %785

130:                                              ; preds = %118
  %131 = add nsw i32 %122, -10
  %132 = icmp ult i32 %131, -9
  br i1 %132, label %145, label %133

133:                                              ; preds = %130
  %134 = zext nneg i32 %122 to i64
  %135 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !50
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %137
  %139 = load i64, ptr %138, align 8, !tbaa !75
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %142

142:                                              ; preds = %141, %133
  %143 = getelementptr inbounds i8, ptr %120, i64 %139
  %144 = load ptr, ptr %143, align 8, !tbaa !35
  br label %145

145:                                              ; preds = %142, %130
  %146 = phi ptr [ %144, %142 ], [ null, %130 ]
  tail call fastcc void @check_tree(ptr noundef %146)
  %147 = load i32, ptr %120, align 8
  %148 = trunc i32 %147 to i8
  switch i8 %148, label %151 [
    i8 6, label %149
    i8 1, label %149
    i8 8, label %152
  ]

149:                                              ; preds = %145, %145
  %150 = lshr i32 %147, 16
  br label %152

151:                                              ; preds = %145
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1446, ptr noundef nonnull @.str.3) #18
  br label %152

152:                                              ; preds = %151, %149, %145
  %153 = phi i32 [ %150, %149 ], [ 0, %151 ], [ 59, %145 ]
  %154 = zext nneg i32 %153 to i64
  %155 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !46
  %157 = icmp eq i8 %156, 3
  br i1 %157, label %158, label %178

158:                                              ; preds = %152
  %159 = load i32, ptr %120, align 8
  %160 = and i32 %159, 255
  %161 = add nsw i32 %160, -1
  %162 = icmp ult i32 %161, 9
  tail call void @llvm.assume(i1 %162)
  %163 = zext nneg i32 %160 to i64
  %164 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %163
  %165 = load i32, ptr %164, align 4, !tbaa !50
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %166
  %168 = load i64, ptr %167, align 8, !tbaa !75
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %158
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %171

171:                                              ; preds = %170, %158
  %172 = getelementptr inbounds i8, ptr %120, i64 %168
  %173 = getelementptr inbounds ptr, ptr %172, i64 1
  %174 = load ptr, ptr %173, align 8, !tbaa !35
  %175 = load i64, ptr %174, align 8
  %176 = trunc i64 %175 to i32
  %177 = and i32 %176, 65535
  br label %178

178:                                              ; preds = %171, %152
  %179 = phi i32 [ %177, %171 ], [ %153, %152 ]
  %180 = zext nneg i32 %179 to i64
  %181 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !50
  switch i32 %182, label %851 [
    i32 7, label %183
    i32 6, label %350
    i32 4, label %400
    i32 3, label %440
    i32 10, label %460
  ]

183:                                              ; preds = %178
  %184 = load i32, ptr %120, align 8
  %185 = and i32 %184, 255
  %186 = add nsw i32 %185, -10
  %187 = icmp ult i32 %186, -9
  br i1 %187, label %201, label %188

188:                                              ; preds = %183
  %189 = zext nneg i32 %185 to i64
  %190 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %189
  %191 = load i32, ptr %190, align 4, !tbaa !50
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %192
  %194 = load i64, ptr %193, align 8, !tbaa !75
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %188
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %197

197:                                              ; preds = %196, %188
  %198 = getelementptr inbounds i8, ptr %120, i64 %194
  %199 = getelementptr inbounds ptr, ptr %198, i64 1
  %200 = load ptr, ptr %199, align 8, !tbaa !35
  br label %201

201:                                              ; preds = %197, %183
  %202 = phi ptr [ %200, %197 ], [ null, %183 ]
  %203 = getelementptr inbounds %struct.tree_common, ptr %202, i64 0, i32 2
  %204 = load ptr, ptr %203, align 8, !tbaa !46
  %205 = tail call fastcc ptr @get_canon_type(ptr noundef %204, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %206 = getelementptr inbounds %struct.gimple_statement_base, ptr %120, i64 0, i32 3
  %207 = load i32, ptr %206, align 4, !tbaa !46
  %208 = icmp ugt i32 %207, 2
  br i1 %208, label %209, label %227

209:                                              ; preds = %201
  %210 = load i32, ptr %120, align 8
  %211 = and i32 %210, 255
  %212 = add nsw i32 %211, -10
  %213 = icmp ult i32 %212, -9
  br i1 %213, label %227, label %214

214:                                              ; preds = %209
  %215 = zext nneg i32 %211 to i64
  %216 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %215
  %217 = load i32, ptr %216, align 4, !tbaa !50
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %218
  %220 = load i64, ptr %219, align 8, !tbaa !75
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %214
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %223

223:                                              ; preds = %222, %214
  %224 = getelementptr inbounds i8, ptr %120, i64 %220
  %225 = getelementptr inbounds ptr, ptr %224, i64 2
  %226 = load ptr, ptr %225, align 8, !tbaa !35
  br label %227

227:                                              ; preds = %223, %209, %201
  %228 = phi ptr [ null, %201 ], [ %226, %223 ], [ null, %209 ]
  %229 = getelementptr inbounds %struct.tree_common, ptr %228, i64 0, i32 2
  %230 = load ptr, ptr %229, align 8, !tbaa !46
  %231 = tail call fastcc ptr @get_canon_type(ptr noundef %230, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %232 = icmp eq ptr %205, null
  br i1 %232, label %289, label %233

233:                                              ; preds = %227
  %234 = load i64, ptr %205, align 8
  %235 = trunc i64 %234 to i16
  switch i16 %235, label %289 [
    i16 10, label %236
    i16 12, label %236
  ]

236:                                              ; preds = %233, %233
  %237 = load i32, ptr %120, align 8
  %238 = trunc i32 %237 to i8
  switch i8 %238, label %241 [
    i8 6, label %239
    i8 1, label %239
    i8 8, label %242
  ]

239:                                              ; preds = %236, %236
  %240 = lshr i32 %237, 16
  br label %242

241:                                              ; preds = %236
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1446, ptr noundef nonnull @.str.3) #18
  br label %242

242:                                              ; preds = %236, %241, %239
  %243 = phi i32 [ %240, %239 ], [ 0, %241 ], [ 59, %236 ]
  %244 = zext nneg i32 %243 to i64
  %245 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %244
  %246 = load i8, ptr %245, align 1, !tbaa !46
  %247 = icmp eq i8 %246, 3
  br i1 %247, label %248, label %268

248:                                              ; preds = %242
  %249 = load i32, ptr %120, align 8
  %250 = and i32 %249, 255
  %251 = add nsw i32 %250, -1
  %252 = icmp ult i32 %251, 9
  tail call void @llvm.assume(i1 %252)
  %253 = zext nneg i32 %250 to i64
  %254 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !50
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %256
  %258 = load i64, ptr %257, align 8, !tbaa !75
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %248
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %261

261:                                              ; preds = %260, %248
  %262 = getelementptr inbounds i8, ptr %120, i64 %258
  %263 = getelementptr inbounds ptr, ptr %262, i64 1
  %264 = load ptr, ptr %263, align 8, !tbaa !35
  %265 = load i64, ptr %264, align 8
  %266 = trunc i64 %265 to i32
  %267 = and i32 %266, 65535
  br label %268

268:                                              ; preds = %261, %242
  %269 = phi i32 [ %267, %261 ], [ %243, %242 ]
  %270 = tail call fastcc zeroext i8 @okay_pointer_operation(i32 noundef %269, ptr noundef %202, ptr noundef %228), !range !58
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %272, label %289

272:                                              ; preds = %268, %279
  %273 = phi ptr [ %281, %279 ], [ %205, %268 ]
  %274 = phi i32 [ %282, %279 ], [ 0, %268 ]
  %275 = getelementptr inbounds %struct.tree_type, ptr %273, i64 0, i32 16
  %276 = load ptr, ptr %275, align 8, !tbaa !46
  %277 = load i64, ptr %276, align 8
  %278 = trunc i64 %277 to i16
  switch i16 %278, label %283 [
    i16 10, label %279
    i16 12, label %279
    i16 16, label %284
    i16 18, label %284
    i16 17, label %284
  ]

279:                                              ; preds = %272, %272
  %280 = getelementptr inbounds %struct.tree_common, ptr %276, i64 0, i32 2
  %281 = load ptr, ptr %280, align 8, !tbaa !46
  %282 = add nuw nsw i32 %274, 1
  br label %272, !llvm.loop !54

283:                                              ; preds = %272
  br label %284

284:                                              ; preds = %272, %272, %272, %283
  %285 = phi i32 [ -1, %283 ], [ %274, %272 ], [ %274, %272 ], [ %274, %272 ]
  %286 = icmp sgt i32 %285, -1
  br i1 %286, label %287, label %289

287:                                              ; preds = %284
  %288 = tail call fastcc ptr @mark_type(ptr noundef nonnull %205, i32 noundef 1)
  br label %289

289:                                              ; preds = %284, %287, %268, %233, %227
  %290 = icmp eq ptr %231, null
  br i1 %290, label %347, label %291

291:                                              ; preds = %289
  %292 = load i64, ptr %231, align 8
  %293 = trunc i64 %292 to i16
  switch i16 %293, label %347 [
    i16 10, label %294
    i16 12, label %294
  ]

294:                                              ; preds = %291, %291
  %295 = load i32, ptr %120, align 8
  %296 = trunc i32 %295 to i8
  switch i8 %296, label %299 [
    i8 6, label %297
    i8 1, label %297
    i8 8, label %300
  ]

297:                                              ; preds = %294, %294
  %298 = lshr i32 %295, 16
  br label %300

299:                                              ; preds = %294
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1446, ptr noundef nonnull @.str.3) #18
  br label %300

300:                                              ; preds = %294, %299, %297
  %301 = phi i32 [ %298, %297 ], [ 0, %299 ], [ 59, %294 ]
  %302 = zext nneg i32 %301 to i64
  %303 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %302
  %304 = load i8, ptr %303, align 1, !tbaa !46
  %305 = icmp eq i8 %304, 3
  br i1 %305, label %306, label %326

306:                                              ; preds = %300
  %307 = load i32, ptr %120, align 8
  %308 = and i32 %307, 255
  %309 = add nsw i32 %308, -1
  %310 = icmp ult i32 %309, 9
  tail call void @llvm.assume(i1 %310)
  %311 = zext nneg i32 %308 to i64
  %312 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %311
  %313 = load i32, ptr %312, align 4, !tbaa !50
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %314
  %316 = load i64, ptr %315, align 8, !tbaa !75
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %306
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %319

319:                                              ; preds = %318, %306
  %320 = getelementptr inbounds i8, ptr %120, i64 %316
  %321 = getelementptr inbounds ptr, ptr %320, i64 1
  %322 = load ptr, ptr %321, align 8, !tbaa !35
  %323 = load i64, ptr %322, align 8
  %324 = trunc i64 %323 to i32
  %325 = and i32 %324, 65535
  br label %326

326:                                              ; preds = %319, %300
  %327 = phi i32 [ %325, %319 ], [ %301, %300 ]
  %328 = tail call fastcc zeroext i8 @okay_pointer_operation(i32 noundef %327, ptr noundef %228, ptr noundef %202), !range !58
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %330, label %347

330:                                              ; preds = %326, %337
  %331 = phi ptr [ %339, %337 ], [ %231, %326 ]
  %332 = phi i32 [ %340, %337 ], [ 0, %326 ]
  %333 = getelementptr inbounds %struct.tree_type, ptr %331, i64 0, i32 16
  %334 = load ptr, ptr %333, align 8, !tbaa !46
  %335 = load i64, ptr %334, align 8
  %336 = trunc i64 %335 to i16
  switch i16 %336, label %341 [
    i16 10, label %337
    i16 12, label %337
    i16 16, label %342
    i16 18, label %342
    i16 17, label %342
  ]

337:                                              ; preds = %330, %330
  %338 = getelementptr inbounds %struct.tree_common, ptr %334, i64 0, i32 2
  %339 = load ptr, ptr %338, align 8, !tbaa !46
  %340 = add nuw nsw i32 %332, 1
  br label %330, !llvm.loop !54

341:                                              ; preds = %330
  br label %342

342:                                              ; preds = %330, %330, %330, %341
  %343 = phi i32 [ -1, %341 ], [ %332, %330 ], [ %332, %330 ], [ %332, %330 ]
  %344 = icmp sgt i32 %343, -1
  br i1 %344, label %345, label %347

345:                                              ; preds = %342
  %346 = tail call fastcc ptr @mark_type(ptr noundef nonnull %231, i32 noundef 1)
  br label %347

347:                                              ; preds = %342, %345, %326, %291, %289
  %348 = tail call fastcc i32 @look_for_casts(ptr noundef %202)
  %349 = tail call fastcc i32 @look_for_casts(ptr noundef %228)
  tail call fastcc void @check_rhs_var(ptr noundef %202)
  tail call fastcc void @check_rhs_var(ptr noundef %228)
  br label %851

350:                                              ; preds = %178
  %351 = load i32, ptr %120, align 8
  %352 = and i32 %351, 255
  %353 = add nsw i32 %352, -10
  %354 = icmp ult i32 %353, -9
  br i1 %354, label %368, label %355

355:                                              ; preds = %350
  %356 = zext nneg i32 %352 to i64
  %357 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %356
  %358 = load i32, ptr %357, align 4, !tbaa !50
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %359
  %361 = load i64, ptr %360, align 8, !tbaa !75
  %362 = icmp eq i64 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %355
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %364

364:                                              ; preds = %363, %355
  %365 = getelementptr inbounds i8, ptr %120, i64 %361
  %366 = getelementptr inbounds ptr, ptr %365, i64 1
  %367 = load ptr, ptr %366, align 8, !tbaa !35
  br label %368

368:                                              ; preds = %364, %350
  %369 = phi ptr [ %367, %364 ], [ null, %350 ]
  %370 = getelementptr inbounds %struct.tree_common, ptr %369, i64 0, i32 2
  %371 = load ptr, ptr %370, align 8, !tbaa !46
  %372 = tail call fastcc ptr @get_canon_type(ptr noundef %371, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %373 = icmp eq ptr %372, null
  br i1 %373, label %398, label %374

374:                                              ; preds = %368
  %375 = load i64, ptr %372, align 8
  %376 = trunc i64 %375 to i16
  switch i16 %376, label %398 [
    i16 10, label %377
    i16 12, label %377
  ]

377:                                              ; preds = %374, %374
  %378 = load i64, ptr %369, align 8
  %379 = trunc i64 %378 to i16
  switch i16 %379, label %398 [
    i16 79, label %380
    i16 82, label %380
  ]

380:                                              ; preds = %377, %377
  br label %381

381:                                              ; preds = %380, %388
  %382 = phi ptr [ %390, %388 ], [ %372, %380 ]
  %383 = phi i32 [ %391, %388 ], [ 0, %380 ]
  %384 = getelementptr inbounds %struct.tree_type, ptr %382, i64 0, i32 16
  %385 = load ptr, ptr %384, align 8, !tbaa !46
  %386 = load i64, ptr %385, align 8
  %387 = trunc i64 %386 to i16
  switch i16 %387, label %392 [
    i16 10, label %388
    i16 12, label %388
    i16 16, label %393
    i16 18, label %393
    i16 17, label %393
  ]

388:                                              ; preds = %381, %381
  %389 = getelementptr inbounds %struct.tree_common, ptr %385, i64 0, i32 2
  %390 = load ptr, ptr %389, align 8, !tbaa !46
  %391 = add nuw nsw i32 %383, 1
  br label %381, !llvm.loop !54

392:                                              ; preds = %381
  br label %393

393:                                              ; preds = %381, %381, %381, %392
  %394 = phi i32 [ -1, %392 ], [ %383, %381 ], [ %383, %381 ], [ %383, %381 ]
  %395 = icmp sgt i32 %394, -1
  br i1 %395, label %396, label %398

396:                                              ; preds = %393
  %397 = tail call fastcc ptr @mark_type(ptr noundef nonnull %372, i32 noundef 1)
  br label %398

398:                                              ; preds = %377, %396, %393, %374, %368
  tail call fastcc void @check_rhs_var(ptr noundef %369)
  %399 = tail call fastcc i32 @look_for_casts(ptr noundef %369)
  br label %851

400:                                              ; preds = %178
  %401 = load i32, ptr %120, align 8
  %402 = and i32 %401, 255
  %403 = add nsw i32 %402, -10
  %404 = icmp ult i32 %403, -9
  br i1 %404, label %418, label %405

405:                                              ; preds = %400
  %406 = zext nneg i32 %402 to i64
  %407 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %406
  %408 = load i32, ptr %407, align 4, !tbaa !50
  %409 = zext i32 %408 to i64
  %410 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %409
  %411 = load i64, ptr %410, align 8, !tbaa !75
  %412 = icmp eq i64 %411, 0
  br i1 %412, label %413, label %414

413:                                              ; preds = %405
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %414

414:                                              ; preds = %413, %405
  %415 = getelementptr inbounds i8, ptr %120, i64 %411
  %416 = getelementptr inbounds ptr, ptr %415, i64 1
  %417 = load ptr, ptr %416, align 8, !tbaa !35
  br label %418

418:                                              ; preds = %414, %400
  %419 = phi ptr [ %417, %414 ], [ null, %400 ]
  %420 = tail call fastcc i32 @look_for_casts(ptr noundef %419)
  %421 = load i32, ptr %120, align 8
  %422 = and i32 %421, 255
  %423 = add nsw i32 %422, -10
  %424 = icmp ult i32 %423, -9
  br i1 %424, label %438, label %425

425:                                              ; preds = %418
  %426 = zext nneg i32 %422 to i64
  %427 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %426
  %428 = load i32, ptr %427, align 4, !tbaa !50
  %429 = zext i32 %428 to i64
  %430 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %429
  %431 = load i64, ptr %430, align 8, !tbaa !75
  %432 = icmp eq i64 %431, 0
  br i1 %432, label %433, label %434

433:                                              ; preds = %425
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %434

434:                                              ; preds = %433, %425
  %435 = getelementptr inbounds i8, ptr %120, i64 %431
  %436 = getelementptr inbounds ptr, ptr %435, i64 1
  %437 = load ptr, ptr %436, align 8, !tbaa !35
  br label %438

438:                                              ; preds = %434, %418
  %439 = phi ptr [ %437, %434 ], [ null, %418 ]
  tail call fastcc void @check_rhs_var(ptr noundef %439)
  br label %851

440:                                              ; preds = %178
  %441 = load i32, ptr %120, align 8
  %442 = and i32 %441, 255
  %443 = add nsw i32 %442, -10
  %444 = icmp ult i32 %443, -9
  br i1 %444, label %458, label %445

445:                                              ; preds = %440
  %446 = zext nneg i32 %442 to i64
  %447 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %446
  %448 = load i32, ptr %447, align 4, !tbaa !50
  %449 = zext i32 %448 to i64
  %450 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %449
  %451 = load i64, ptr %450, align 8, !tbaa !75
  %452 = icmp eq i64 %451, 0
  br i1 %452, label %453, label %454

453:                                              ; preds = %445
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %454

454:                                              ; preds = %453, %445
  %455 = getelementptr inbounds i8, ptr %120, i64 %451
  %456 = getelementptr inbounds ptr, ptr %455, i64 1
  %457 = load ptr, ptr %456, align 8, !tbaa !35
  br label %458

458:                                              ; preds = %454, %440
  %459 = phi ptr [ %457, %454 ], [ null, %440 ]
  tail call fastcc void @check_rhs_var(ptr noundef %459)
  br label %851

460:                                              ; preds = %178
  %461 = load i32, ptr %120, align 8
  %462 = trunc i32 %461 to i8
  switch i8 %462, label %465 [
    i8 6, label %463
    i8 1, label %463
    i8 8, label %466
  ]

463:                                              ; preds = %460, %460
  %464 = lshr i32 %461, 16
  br label %466

465:                                              ; preds = %460
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1446, ptr noundef nonnull @.str.3) #18
  br label %466

466:                                              ; preds = %465, %463, %460
  %467 = phi i32 [ %464, %463 ], [ 0, %465 ], [ 59, %460 ]
  %468 = zext nneg i32 %467 to i64
  %469 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %468
  %470 = load i8, ptr %469, align 1, !tbaa !46
  %471 = icmp eq i8 %470, 3
  br i1 %471, label %472, label %492

472:                                              ; preds = %466
  %473 = load i32, ptr %120, align 8
  %474 = and i32 %473, 255
  %475 = add nsw i32 %474, -1
  %476 = icmp ult i32 %475, 9
  tail call void @llvm.assume(i1 %476)
  %477 = zext nneg i32 %474 to i64
  %478 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %477
  %479 = load i32, ptr %478, align 4, !tbaa !50
  %480 = zext i32 %479 to i64
  %481 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %480
  %482 = load i64, ptr %481, align 8, !tbaa !75
  %483 = icmp eq i64 %482, 0
  br i1 %483, label %484, label %485

484:                                              ; preds = %472
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %485

485:                                              ; preds = %484, %472
  %486 = getelementptr inbounds i8, ptr %120, i64 %482
  %487 = getelementptr inbounds ptr, ptr %486, i64 1
  %488 = load ptr, ptr %487, align 8, !tbaa !35
  %489 = load i64, ptr %488, align 8
  %490 = trunc i64 %489 to i32
  %491 = and i32 %490, 65535
  br label %492

492:                                              ; preds = %485, %466
  %493 = phi i32 [ %491, %485 ], [ %467, %466 ]
  %494 = icmp eq i32 %493, 121
  br i1 %494, label %495, label %851

495:                                              ; preds = %492
  %496 = load i32, ptr %120, align 8
  %497 = and i32 %496, 255
  %498 = add nsw i32 %497, -10
  %499 = icmp ult i32 %498, -9
  br i1 %499, label %513, label %500

500:                                              ; preds = %495
  %501 = zext nneg i32 %497 to i64
  %502 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %501
  %503 = load i32, ptr %502, align 4, !tbaa !50
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %504
  %506 = load i64, ptr %505, align 8, !tbaa !75
  %507 = icmp eq i64 %506, 0
  br i1 %507, label %508, label %509

508:                                              ; preds = %500
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %509

509:                                              ; preds = %508, %500
  %510 = getelementptr inbounds i8, ptr %120, i64 %506
  %511 = getelementptr inbounds ptr, ptr %510, i64 1
  %512 = load ptr, ptr %511, align 8, !tbaa !35
  br label %513

513:                                              ; preds = %509, %495
  %514 = phi ptr [ %512, %509 ], [ null, %495 ]
  %515 = getelementptr inbounds %struct.tree_exp, ptr %514, i64 0, i32 3
  %516 = load ptr, ptr %515, align 8, !tbaa !46
  %517 = tail call fastcc i32 @look_for_casts(ptr noundef %516)
  tail call fastcc void @check_rhs_var(ptr noundef %514)
  br label %851

518:                                              ; preds = %118
  %519 = add nsw i32 %122, -10
  %520 = icmp ult i32 %519, -9
  br i1 %520, label %534, label %521

521:                                              ; preds = %518
  %522 = zext nneg i32 %122 to i64
  %523 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %522
  %524 = load i32, ptr %523, align 4, !tbaa !50
  %525 = zext i32 %524 to i64
  %526 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %525
  %527 = load i64, ptr %526, align 8, !tbaa !75
  %528 = icmp eq i64 %527, 0
  br i1 %528, label %529, label %530

529:                                              ; preds = %521
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %530

530:                                              ; preds = %529, %521
  %531 = getelementptr inbounds i8, ptr %120, i64 %527
  %532 = getelementptr inbounds ptr, ptr %531, i64 1
  %533 = load ptr, ptr %532, align 8, !tbaa !35
  br label %534

534:                                              ; preds = %530, %518
  %535 = phi ptr [ %533, %530 ], [ null, %518 ]
  %536 = load i64, ptr %535, align 8
  %537 = and i64 %536, 65535
  %538 = icmp eq i64 %537, 121
  br i1 %538, label %539, label %542

539:                                              ; preds = %534
  %540 = getelementptr inbounds %struct.tree_exp, ptr %535, i64 0, i32 3
  %541 = load ptr, ptr %540, align 8, !tbaa !46
  br label %542

542:                                              ; preds = %539, %534
  %543 = phi ptr [ %541, %539 ], [ null, %534 ]
  %544 = getelementptr inbounds %struct.gimple_statement_base, ptr %120, i64 0, i32 3
  %545 = load i32, ptr %544, align 4, !tbaa !46
  %546 = icmp eq i32 %545, 3
  br i1 %546, label %575, label %547

547:                                              ; preds = %542, %568
  %548 = phi i64 [ %570, %568 ], [ 0, %542 ]
  %549 = add nuw nsw i64 %548, 3
  %550 = load i32, ptr %120, align 8
  %551 = and i32 %550, 255
  %552 = add nsw i32 %551, -10
  %553 = icmp ult i32 %552, -9
  br i1 %553, label %568, label %554

554:                                              ; preds = %547
  %555 = zext nneg i32 %551 to i64
  %556 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %555
  %557 = load i32, ptr %556, align 4, !tbaa !50
  %558 = zext i32 %557 to i64
  %559 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %558
  %560 = load i64, ptr %559, align 8, !tbaa !75
  %561 = icmp eq i64 %560, 0
  br i1 %561, label %562, label %563

562:                                              ; preds = %554
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %563

563:                                              ; preds = %562, %554
  %564 = getelementptr inbounds i8, ptr %120, i64 %560
  %565 = and i64 %549, 4294967295
  %566 = getelementptr inbounds ptr, ptr %564, i64 %565
  %567 = load ptr, ptr %566, align 8, !tbaa !35
  br label %568

568:                                              ; preds = %563, %547
  %569 = phi ptr [ %567, %563 ], [ null, %547 ]
  tail call fastcc void @check_rhs_var(ptr noundef %569)
  %570 = add nuw nsw i64 %548, 1
  %571 = load i32, ptr %544, align 4, !tbaa !46
  %572 = add i32 %571, -3
  %573 = zext i32 %572 to i64
  %574 = icmp ult i64 %570, %573
  br i1 %574, label %547, label %575, !llvm.loop !112

575:                                              ; preds = %568, %542
  %576 = getelementptr inbounds %struct.gimple_statement_base, ptr %120, i64 0, i32 3
  %577 = icmp eq ptr %543, null
  br i1 %577, label %743, label %578

578:                                              ; preds = %575
  %579 = tail call ptr @cgraph_node(ptr noundef nonnull %543) #18
  %580 = tail call i32 @cgraph_function_body_availability(ptr noundef %579) #18
  %581 = getelementptr inbounds %struct.tree_common, ptr %543, i64 0, i32 2
  %582 = load ptr, ptr %581, align 8, !tbaa !46
  %583 = getelementptr inbounds %struct.tree_type, ptr %582, i64 0, i32 1
  %584 = load ptr, ptr %583, align 8, !tbaa !46
  %585 = icmp eq ptr %584, null
  br i1 %585, label %632, label %586

586:                                              ; preds = %578, %627
  %587 = phi i64 [ %630, %627 ], [ 0, %578 ]
  %588 = phi ptr [ %629, %627 ], [ %584, %578 ]
  %589 = phi ptr [ %626, %627 ], [ null, %578 ]
  %590 = getelementptr inbounds %struct.tree_list, ptr %588, i64 0, i32 2
  %591 = load ptr, ptr %590, align 8, !tbaa !46
  %592 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %593 = icmp eq ptr %591, %592
  br i1 %593, label %678, label %594

594:                                              ; preds = %586
  %595 = load i32, ptr %576, align 4, !tbaa !46
  %596 = add i32 %595, -3
  %597 = zext i32 %596 to i64
  %598 = icmp ult i64 %587, %597
  br i1 %598, label %599, label %678

599:                                              ; preds = %594
  %600 = add nuw nsw i64 %587, 3
  %601 = load i32, ptr %120, align 8
  %602 = and i32 %601, 255
  %603 = add nsw i32 %602, -10
  %604 = icmp ult i32 %603, -9
  br i1 %604, label %619, label %605

605:                                              ; preds = %599
  %606 = zext nneg i32 %602 to i64
  %607 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %606
  %608 = load i32, ptr %607, align 4, !tbaa !50
  %609 = zext i32 %608 to i64
  %610 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %609
  %611 = load i64, ptr %610, align 8, !tbaa !75
  %612 = icmp eq i64 %611, 0
  br i1 %612, label %613, label %614

613:                                              ; preds = %605
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %614

614:                                              ; preds = %613, %605
  %615 = getelementptr inbounds i8, ptr %120, i64 %611
  %616 = and i64 %600, 4294967295
  %617 = getelementptr inbounds ptr, ptr %615, i64 %616
  %618 = load ptr, ptr %617, align 8, !tbaa !35
  br label %619

619:                                              ; preds = %614, %599
  %620 = phi ptr [ %618, %614 ], [ null, %599 ]
  %621 = icmp eq ptr %620, null
  br i1 %621, label %625, label %622

622:                                              ; preds = %619
  %623 = load ptr, ptr %590, align 8, !tbaa !46
  %624 = tail call fastcc i32 @check_cast(ptr noundef %623, ptr noundef nonnull %620)
  br label %625

625:                                              ; preds = %622, %619
  %626 = phi ptr [ %623, %622 ], [ %589, %619 ]
  br i1 %621, label %678, label %627

627:                                              ; preds = %625
  %628 = getelementptr inbounds %struct.tree_common, ptr %588, i64 0, i32 1
  %629 = load ptr, ptr %628, align 8, !tbaa !46
  %630 = add nuw nsw i64 %587, 1
  %631 = icmp eq ptr %629, null
  br i1 %631, label %678, label %586, !llvm.loop !113

632:                                              ; preds = %578
  %633 = getelementptr inbounds %struct.tree_decl_non_common, ptr %543, i64 0, i32 2
  %634 = load ptr, ptr %633, align 8, !tbaa !46
  %635 = icmp eq ptr %634, null
  br i1 %635, label %678, label %636

636:                                              ; preds = %632, %673
  %637 = phi ptr [ %676, %673 ], [ %634, %632 ]
  %638 = phi i64 [ %675, %673 ], [ 0, %632 ]
  %639 = phi ptr [ %672, %673 ], [ null, %632 ]
  %640 = load i32, ptr %576, align 4, !tbaa !46
  %641 = add i32 %640, -3
  %642 = zext i32 %641 to i64
  %643 = icmp ult i64 %638, %642
  br i1 %643, label %644, label %678

644:                                              ; preds = %636
  %645 = add nuw nsw i64 %638, 3
  %646 = load i32, ptr %120, align 8
  %647 = and i32 %646, 255
  %648 = add nsw i32 %647, -10
  %649 = icmp ult i32 %648, -9
  br i1 %649, label %664, label %650

650:                                              ; preds = %644
  %651 = zext nneg i32 %647 to i64
  %652 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %651
  %653 = load i32, ptr %652, align 4, !tbaa !50
  %654 = zext i32 %653 to i64
  %655 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %654
  %656 = load i64, ptr %655, align 8, !tbaa !75
  %657 = icmp eq i64 %656, 0
  br i1 %657, label %658, label %659

658:                                              ; preds = %650
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %659

659:                                              ; preds = %658, %650
  %660 = getelementptr inbounds i8, ptr %120, i64 %656
  %661 = and i64 %645, 4294967295
  %662 = getelementptr inbounds ptr, ptr %660, i64 %661
  %663 = load ptr, ptr %662, align 8, !tbaa !35
  br label %664

664:                                              ; preds = %659, %644
  %665 = phi ptr [ %663, %659 ], [ null, %644 ]
  %666 = icmp eq ptr %665, null
  br i1 %666, label %671, label %667

667:                                              ; preds = %664
  %668 = getelementptr inbounds %struct.tree_common, ptr %637, i64 0, i32 2
  %669 = load ptr, ptr %668, align 8, !tbaa !46
  %670 = tail call fastcc i32 @check_cast(ptr noundef %669, ptr noundef nonnull %665)
  br label %671

671:                                              ; preds = %667, %664
  %672 = phi ptr [ %669, %667 ], [ %639, %664 ]
  br i1 %666, label %678, label %673

673:                                              ; preds = %671
  %674 = getelementptr inbounds %struct.tree_common, ptr %637, i64 0, i32 1
  %675 = add nuw nsw i64 %638, 1
  %676 = load ptr, ptr %674, align 8, !tbaa !46
  %677 = icmp eq ptr %676, null
  br i1 %677, label %678, label %636, !llvm.loop !114

678:                                              ; preds = %625, %594, %586, %627, %673, %636, %671, %632
  %679 = phi ptr [ null, %632 ], [ %672, %671 ], [ %639, %636 ], [ %672, %673 ], [ %626, %625 ], [ %589, %594 ], [ %589, %586 ], [ %626, %627 ]
  %680 = phi i64 [ 0, %632 ], [ %638, %671 ], [ %638, %636 ], [ %675, %673 ], [ %587, %625 ], [ %587, %594 ], [ %587, %586 ], [ %630, %627 ]
  %681 = load i32, ptr %576, align 4, !tbaa !46
  %682 = add i32 %681, -3
  %683 = zext i32 %682 to i64
  %684 = icmp ult i64 %680, %683
  br i1 %684, label %685, label %740

685:                                              ; preds = %678
  %686 = icmp eq ptr %679, null
  br label %687

687:                                              ; preds = %685, %734
  %688 = phi i64 [ %680, %685 ], [ %735, %734 ]
  %689 = add nuw nsw i64 %688, 3
  %690 = load i32, ptr %120, align 8
  %691 = and i32 %690, 255
  %692 = add nsw i32 %691, -10
  %693 = icmp ult i32 %692, -9
  br i1 %693, label %708, label %694

694:                                              ; preds = %687
  %695 = zext nneg i32 %691 to i64
  %696 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %695
  %697 = load i32, ptr %696, align 4, !tbaa !50
  %698 = zext i32 %697 to i64
  %699 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %698
  %700 = load i64, ptr %699, align 8, !tbaa !75
  %701 = icmp eq i64 %700, 0
  br i1 %701, label %702, label %703

702:                                              ; preds = %694
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %703

703:                                              ; preds = %702, %694
  %704 = getelementptr inbounds i8, ptr %120, i64 %700
  %705 = and i64 %689, 4294967295
  %706 = getelementptr inbounds ptr, ptr %704, i64 %705
  %707 = load ptr, ptr %706, align 8, !tbaa !35
  br label %708

708:                                              ; preds = %703, %687
  %709 = phi ptr [ %707, %703 ], [ null, %687 ]
  br i1 %686, label %712, label %710

710:                                              ; preds = %708
  %711 = tail call fastcc i32 @check_cast(ptr noundef nonnull %679, ptr noundef %709)
  br label %734

712:                                              ; preds = %708
  %713 = getelementptr inbounds %struct.tree_common, ptr %709, i64 0, i32 2
  %714 = load ptr, ptr %713, align 8, !tbaa !46
  %715 = tail call fastcc ptr @get_canon_type(ptr noundef %714, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %716 = icmp eq ptr %715, null
  br i1 %716, label %734, label %717

717:                                              ; preds = %712, %724
  %718 = phi ptr [ %726, %724 ], [ %715, %712 ]
  %719 = phi i32 [ %727, %724 ], [ 0, %712 ]
  %720 = getelementptr inbounds %struct.tree_type, ptr %718, i64 0, i32 16
  %721 = load ptr, ptr %720, align 8, !tbaa !46
  %722 = load i64, ptr %721, align 8
  %723 = trunc i64 %722 to i16
  switch i16 %723, label %728 [
    i16 10, label %724
    i16 12, label %724
    i16 16, label %729
    i16 18, label %729
    i16 17, label %729
  ]

724:                                              ; preds = %717, %717
  %725 = getelementptr inbounds %struct.tree_common, ptr %721, i64 0, i32 2
  %726 = load ptr, ptr %725, align 8, !tbaa !46
  %727 = add nuw nsw i32 %719, 1
  br label %717, !llvm.loop !54

728:                                              ; preds = %717
  br label %729

729:                                              ; preds = %717, %717, %717, %728
  %730 = phi i32 [ -1, %728 ], [ %719, %717 ], [ %719, %717 ], [ %719, %717 ]
  %731 = icmp sgt i32 %730, -1
  br i1 %731, label %732, label %734

732:                                              ; preds = %729
  %733 = tail call fastcc ptr @mark_type(ptr noundef nonnull %715, i32 noundef 1)
  br label %734

734:                                              ; preds = %729, %732, %712, %710
  %735 = add nuw nsw i64 %688, 1
  %736 = load i32, ptr %576, align 4, !tbaa !46
  %737 = add i32 %736, -3
  %738 = zext i32 %737 to i64
  %739 = icmp ult i64 %735, %738
  br i1 %739, label %687, label %740, !llvm.loop !115

740:                                              ; preds = %734, %678
  %741 = add i32 %580, -1
  %742 = icmp ult i32 %741, 2
  br i1 %742, label %743, label %851

743:                                              ; preds = %740, %575
  %744 = load i32, ptr %576, align 4, !tbaa !46
  %745 = icmp eq i32 %744, 3
  br i1 %745, label %774, label %746

746:                                              ; preds = %743, %761
  %747 = phi i64 [ %769, %761 ], [ 0, %743 ]
  %748 = add nuw nsw i64 %747, 3
  %749 = load i32, ptr %120, align 8
  %750 = and i32 %749, 255
  %751 = add nsw i32 %750, -1
  %752 = icmp ult i32 %751, 9
  tail call void @llvm.assume(i1 %752)
  %753 = zext nneg i32 %750 to i64
  %754 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %753
  %755 = load i32, ptr %754, align 4, !tbaa !50
  %756 = zext i32 %755 to i64
  %757 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %756
  %758 = load i64, ptr %757, align 8, !tbaa !75
  %759 = icmp eq i64 %758, 0
  br i1 %759, label %760, label %761

760:                                              ; preds = %746
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %761

761:                                              ; preds = %760, %746
  %762 = getelementptr inbounds i8, ptr %120, i64 %758
  %763 = and i64 %748, 4294967295
  %764 = getelementptr inbounds ptr, ptr %762, i64 %763
  %765 = load ptr, ptr %764, align 8, !tbaa !35
  %766 = getelementptr inbounds %struct.tree_common, ptr %765, i64 0, i32 2
  %767 = load ptr, ptr %766, align 8, !tbaa !46
  %768 = tail call fastcc ptr @get_canon_type(ptr noundef %767, i8 noundef zeroext 0, i8 noundef zeroext 0)
  tail call fastcc void @mark_interesting_type(ptr noundef %768, i32 noundef 0)
  %769 = add nuw nsw i64 %747, 1
  %770 = load i32, ptr %576, align 4, !tbaa !46
  %771 = add i32 %770, -3
  %772 = zext i32 %771 to i64
  %773 = icmp ult i64 %769, %772
  br i1 %773, label %746, label %774, !llvm.loop !116

774:                                              ; preds = %761, %743
  br i1 %577, label %851, label %775

775:                                              ; preds = %774
  %776 = getelementptr inbounds %struct.tree_common, ptr %543, i64 0, i32 2
  %777 = load ptr, ptr %776, align 8, !tbaa !46
  %778 = getelementptr inbounds %struct.tree_common, ptr %777, i64 0, i32 2
  %779 = load ptr, ptr %778, align 8, !tbaa !46
  %780 = tail call fastcc ptr @get_canon_type(ptr noundef %779, i8 noundef zeroext 0, i8 noundef zeroext 0)
  tail call fastcc void @mark_interesting_type(ptr noundef %780, i32 noundef 0)
  br label %851

781:                                              ; preds = %814, %124
  %782 = getelementptr inbounds %struct.gimple_statement_asm, ptr %120, i64 0, i32 2
  %783 = load i8, ptr %782, align 8, !tbaa !46
  %784 = icmp eq i8 %783, 0
  br i1 %784, label %851, label %820

785:                                              ; preds = %128, %814
  %786 = phi i8 [ %126, %128 ], [ %817, %814 ]
  %787 = phi i64 [ 0, %128 ], [ %816, %814 ]
  %788 = zext i8 %786 to i32
  %789 = trunc i64 %787 to i32
  %790 = icmp ult i32 %788, %789
  br i1 %790, label %791, label %792

791:                                              ; preds = %785
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2655, ptr noundef nonnull @.str.3) #18
  br label %792

792:                                              ; preds = %791, %785
  %793 = load i8, ptr %129, align 8, !tbaa !46
  %794 = zext i8 %793 to i64
  %795 = add nuw i64 %787, %794
  %796 = load i32, ptr %120, align 8
  %797 = and i32 %796, 255
  %798 = add nsw i32 %797, -10
  %799 = icmp ult i32 %798, -9
  br i1 %799, label %814, label %800

800:                                              ; preds = %792
  %801 = zext nneg i32 %797 to i64
  %802 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %801
  %803 = load i32, ptr %802, align 4, !tbaa !50
  %804 = zext i32 %803 to i64
  %805 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %804
  %806 = load i64, ptr %805, align 8, !tbaa !75
  %807 = icmp eq i64 %806, 0
  br i1 %807, label %808, label %809

808:                                              ; preds = %800
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %809

809:                                              ; preds = %808, %800
  %810 = getelementptr inbounds i8, ptr %120, i64 %806
  %811 = and i64 %795, 4294967295
  %812 = getelementptr inbounds ptr, ptr %810, i64 %811
  %813 = load ptr, ptr %812, align 8, !tbaa !35
  br label %814

814:                                              ; preds = %809, %792
  %815 = phi ptr [ %813, %809 ], [ null, %792 ]
  tail call fastcc void @check_tree(ptr noundef %815)
  %816 = add nuw nsw i64 %787, 1
  %817 = load i8, ptr %125, align 1, !tbaa !46
  %818 = zext i8 %817 to i64
  %819 = icmp ult i64 %816, %818
  br i1 %819, label %785, label %781, !llvm.loop !117

820:                                              ; preds = %781, %845
  %821 = phi i8 [ %848, %845 ], [ %783, %781 ]
  %822 = phi i64 [ %847, %845 ], [ 0, %781 ]
  %823 = zext i8 %821 to i32
  %824 = trunc i64 %822 to i32
  %825 = icmp ult i32 %823, %824
  br i1 %825, label %826, label %827

826:                                              ; preds = %820
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2622, ptr noundef nonnull @.str.3) #18
  br label %827

827:                                              ; preds = %826, %820
  %828 = load i32, ptr %120, align 8
  %829 = and i32 %828, 255
  %830 = add nsw i32 %829, -10
  %831 = icmp ult i32 %830, -9
  br i1 %831, label %845, label %832

832:                                              ; preds = %827
  %833 = zext nneg i32 %829 to i64
  %834 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %833
  %835 = load i32, ptr %834, align 4, !tbaa !50
  %836 = zext i32 %835 to i64
  %837 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %836
  %838 = load i64, ptr %837, align 8, !tbaa !75
  %839 = icmp eq i64 %838, 0
  br i1 %839, label %840, label %841

840:                                              ; preds = %832
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %841

841:                                              ; preds = %840, %832
  %842 = getelementptr inbounds i8, ptr %120, i64 %838
  %843 = getelementptr inbounds ptr, ptr %842, i64 %822
  %844 = load ptr, ptr %843, align 8, !tbaa !35
  br label %845

845:                                              ; preds = %841, %827
  %846 = phi ptr [ %844, %841 ], [ null, %827 ]
  tail call fastcc void @check_rhs_var(ptr noundef %846)
  %847 = add nuw nsw i64 %822, 1
  %848 = load i8, ptr %782, align 8, !tbaa !46
  %849 = zext i8 %848 to i64
  %850 = icmp ult i64 %847, %849
  br i1 %850, label %820, label %851, !llvm.loop !118

851:                                              ; preds = %845, %781, %775, %774, %740, %513, %492, %458, %438, %398, %347, %178, %118
  %852 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %119, i64 0, i32 2
  %853 = load ptr, ptr %852, align 8, !tbaa !119
  %854 = icmp eq ptr %853, null
  br i1 %854, label %91, label %118, !llvm.loop !120

855:                                              ; preds = %91, %80
  %856 = load ptr, ptr %81, align 8, !tbaa !46
  %857 = icmp eq ptr %856, null
  br i1 %857, label %884, label %858

858:                                              ; preds = %855
  %859 = getelementptr inbounds %struct.function, ptr %856, i64 0, i32 9
  %860 = load ptr, ptr %859, align 8, !tbaa !46
  %861 = icmp eq ptr %860, null
  br i1 %861, label %884, label %862

862:                                              ; preds = %858, %877
  %863 = phi ptr [ %882, %877 ], [ %860, %858 ]
  %864 = getelementptr inbounds %struct.tree_list, ptr %863, i64 0, i32 2
  %865 = load ptr, ptr %864, align 8, !tbaa !46
  %866 = load i64, ptr %865, align 8
  %867 = and i64 %866, 65535
  %868 = icmp eq i64 %867, 32
  br i1 %868, label %869, label %877

869:                                              ; preds = %862
  %870 = getelementptr inbounds %struct.tree_decl_common, ptr %865, i64 0, i32 5
  %871 = load ptr, ptr %870, align 8, !tbaa !46
  %872 = icmp ne ptr %871, null
  %873 = and i64 %866, 67108864
  %874 = icmp eq i64 %873, 0
  %875 = and i1 %874, %872
  br i1 %875, label %876, label %877

876:                                              ; preds = %869
  tail call fastcc void @check_tree(ptr noundef nonnull %871)
  br label %877

877:                                              ; preds = %876, %869, %862
  %878 = getelementptr inbounds %struct.tree_common, ptr %865, i64 0, i32 2
  %879 = load ptr, ptr %878, align 8, !tbaa !46
  %880 = tail call fastcc ptr @get_canon_type(ptr noundef %879, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %881 = getelementptr inbounds %struct.tree_common, ptr %863, i64 0, i32 1
  %882 = load ptr, ptr %881, align 8, !tbaa !46
  %883 = icmp eq ptr %882, null
  br i1 %883, label %884, label %862, !llvm.loop !121

884:                                              ; preds = %877, %858, %855, %59, %65
  %885 = getelementptr inbounds %struct.cgraph_node, ptr %60, i64 0, i32 3
  %886 = load ptr, ptr %885, align 8, !tbaa !35
  %887 = icmp eq ptr %886, null
  br i1 %887, label %888, label %59, !llvm.loop !122

888:                                              ; preds = %884, %13
  %889 = load ptr, ptr @visited_nodes, align 8, !tbaa !35
  tail call void @pointer_set_destroy(ptr noundef %889) #18
  store ptr null, ptr @visited_nodes, align 8, !tbaa !35
  %890 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @ipa_obstack) #18
  store ptr %890, ptr @been_there_done_that, align 8, !tbaa !35
  %891 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @ipa_obstack) #18
  store ptr %891, ptr @bitmap_tmp, align 8, !tbaa !35
  %892 = load ptr, ptr @global_types_seen, align 8, !tbaa !35
  tail call void @bitmap_copy(ptr noundef %891, ptr noundef %892) #18
  %893 = load ptr, ptr @bitmap_tmp, align 8, !tbaa !35
  %894 = load ptr, ptr %893, align 8, !tbaa !123
  %895 = icmp eq ptr %894, null
  %896 = select i1 %895, ptr @bitmap_zero_bits, ptr %894
  %897 = getelementptr inbounds %struct.bitmap_element_def, ptr %896, i64 0, i32 2
  %898 = load i32, ptr %897, align 8, !tbaa !125
  %899 = shl i32 %898, 7
  %900 = getelementptr inbounds %struct.bitmap_element_def, ptr %896, i64 0, i32 3
  %901 = load i64, ptr %900, align 8, !tbaa !75
  %902 = icmp eq i64 %901, 0
  %903 = zext i1 %902 to i32
  %904 = or disjoint i32 %899, %903
  br label %905

905:                                              ; preds = %994, %888
  %906 = phi i64 [ %901, %888 ], [ %995, %994 ]
  %907 = phi i32 [ %904, %888 ], [ %996, %994 ]
  %908 = phi i32 [ 0, %888 ], [ %963, %994 ]
  %909 = phi ptr [ %896, %888 ], [ %964, %994 ]
  %910 = icmp eq i64 %906, 0
  br i1 %910, label %925, label %911

911:                                              ; preds = %939, %905
  %912 = phi i64 [ %906, %905 ], [ %944, %939 ]
  %913 = phi i32 [ %907, %905 ], [ %941, %939 ]
  %914 = phi i32 [ %908, %905 ], [ %940, %939 ]
  %915 = phi ptr [ %909, %905 ], [ %932, %939 ]
  %916 = and i64 %912, 1
  %917 = icmp eq i64 %916, 0
  br i1 %917, label %918, label %960

918:                                              ; preds = %911, %918
  %919 = phi i32 [ %922, %918 ], [ %913, %911 ]
  %920 = phi i64 [ %921, %918 ], [ %912, %911 ]
  %921 = lshr exact i64 %920, 1
  %922 = add i32 %919, 1
  %923 = and i64 %920, 2
  %924 = icmp eq i64 %923, 0
  br i1 %924, label %918, label %960, !llvm.loop !127

925:                                              ; preds = %905
  %926 = add i32 %907, 63
  %927 = and i32 %926, -64
  %928 = add i32 %908, 1
  br label %929

929:                                              ; preds = %956, %925
  %930 = phi i64 [ %906, %925 ], [ %951, %956 ]
  %931 = phi i32 [ %927, %925 ], [ %959, %956 ]
  %932 = phi ptr [ %909, %925 ], [ %954, %956 ]
  %933 = phi i32 [ %928, %925 ], [ 0, %956 ]
  %934 = icmp eq i32 %933, 2
  br i1 %934, label %950, label %935

935:                                              ; preds = %929
  %936 = add i32 %931, 128
  %937 = shl i32 %933, 6
  %938 = sub i32 %936, %937
  br label %939

939:                                              ; preds = %935, %946
  %940 = phi i32 [ %948, %946 ], [ %933, %935 ]
  %941 = phi i32 [ %947, %946 ], [ %931, %935 ]
  %942 = zext i32 %940 to i64
  %943 = getelementptr inbounds %struct.bitmap_element_def, ptr %932, i64 0, i32 3, i64 %942
  %944 = load i64, ptr %943, align 8, !tbaa !75
  %945 = icmp eq i64 %944, 0
  br i1 %945, label %946, label %911

946:                                              ; preds = %939
  %947 = add i32 %941, 64
  %948 = add i32 %940, 1
  %949 = icmp eq i32 %948, 2
  br i1 %949, label %950, label %939, !llvm.loop !128

950:                                              ; preds = %946, %929
  %951 = phi i64 [ %930, %929 ], [ %944, %946 ]
  %952 = phi i32 [ %931, %929 ], [ %938, %946 ]
  %953 = phi i32 [ %933, %929 ], [ 2, %946 ]
  %954 = load ptr, ptr %932, align 8, !tbaa !129
  %955 = icmp eq ptr %954, null
  br i1 %955, label %960, label %956

956:                                              ; preds = %950
  %957 = getelementptr inbounds %struct.bitmap_element_def, ptr %954, i64 0, i32 2
  %958 = load i32, ptr %957, align 8, !tbaa !125
  %959 = shl i32 %958, 7
  br label %929, !llvm.loop !130

960:                                              ; preds = %950, %918, %911
  %961 = phi i64 [ %912, %911 ], [ %921, %918 ], [ %951, %950 ]
  %962 = phi i32 [ %913, %911 ], [ %922, %918 ], [ %952, %950 ]
  %963 = phi i32 [ %914, %911 ], [ %914, %918 ], [ %953, %950 ]
  %964 = phi ptr [ %915, %911 ], [ %915, %918 ], [ %954, %950 ]
  %965 = phi i1 [ false, %911 ], [ false, %918 ], [ true, %950 ]
  br i1 %965, label %997, label %966

966:                                              ; preds = %960
  %967 = load ptr, ptr @uid_to_canon_type, align 8, !tbaa !35
  %968 = sext i32 %962 to i64
  %969 = tail call ptr @splay_tree_lookup(ptr noundef %967, i64 noundef %968) #18
  %970 = icmp eq ptr %969, null
  br i1 %970, label %975, label %971

971:                                              ; preds = %966
  %972 = getelementptr inbounds %struct.splay_tree_node_s, ptr %969, i64 0, i32 1
  %973 = load i64, ptr %972, align 8, !tbaa !59
  %974 = inttoptr i64 %973 to ptr
  br label %975

975:                                              ; preds = %966, %971
  %976 = phi ptr [ %974, %971 ], [ null, %966 ]
  %977 = icmp eq ptr %976, null
  br i1 %977, label %990, label %978

978:                                              ; preds = %975, %985
  %979 = phi ptr [ %987, %985 ], [ %976, %975 ]
  %980 = phi i32 [ %988, %985 ], [ 0, %975 ]
  %981 = getelementptr inbounds %struct.tree_type, ptr %979, i64 0, i32 16
  %982 = load ptr, ptr %981, align 8, !tbaa !46
  %983 = load i64, ptr %982, align 8
  %984 = trunc i64 %983 to i16
  switch i16 %984, label %989 [
    i16 10, label %985
    i16 12, label %985
    i16 15, label %985
    i16 16, label %990
    i16 18, label %990
    i16 17, label %990
  ]

985:                                              ; preds = %978, %978, %978
  %986 = getelementptr inbounds %struct.tree_common, ptr %982, i64 0, i32 2
  %987 = load ptr, ptr %986, align 8, !tbaa !46
  %988 = add nuw nsw i32 %980, 1
  br label %978, !llvm.loop !55

989:                                              ; preds = %978
  br label %990

990:                                              ; preds = %978, %978, %978, %989, %975
  %991 = phi i32 [ -1, %975 ], [ -1, %989 ], [ %980, %978 ], [ %980, %978 ], [ %980, %978 ]
  %992 = icmp sgt i32 %991, -1
  br i1 %992, label %993, label %994

993:                                              ; preds = %990
  tail call fastcc void @close_type_seen(ptr noundef %976)
  br label %994

994:                                              ; preds = %993, %990
  %995 = lshr i64 %961, 1
  %996 = add i32 %962, 1
  br label %905, !llvm.loop !131

997:                                              ; preds = %960
  %998 = load ptr, ptr @been_there_done_that, align 8, !tbaa !35
  tail call void @bitmap_clear(ptr noundef %998) #18
  %999 = load ptr, ptr @bitmap_tmp, align 8, !tbaa !35
  %1000 = load ptr, ptr @global_types_exposed_parameter, align 8, !tbaa !35
  tail call void @bitmap_copy(ptr noundef %999, ptr noundef %1000) #18
  %1001 = load ptr, ptr @bitmap_tmp, align 8, !tbaa !35
  %1002 = load ptr, ptr %1001, align 8, !tbaa !123
  %1003 = icmp eq ptr %1002, null
  %1004 = select i1 %1003, ptr @bitmap_zero_bits, ptr %1002
  %1005 = getelementptr inbounds %struct.bitmap_element_def, ptr %1004, i64 0, i32 2
  %1006 = load i32, ptr %1005, align 8, !tbaa !125
  %1007 = shl i32 %1006, 7
  %1008 = getelementptr inbounds %struct.bitmap_element_def, ptr %1004, i64 0, i32 3
  %1009 = load i64, ptr %1008, align 8, !tbaa !75
  %1010 = icmp eq i64 %1009, 0
  %1011 = zext i1 %1010 to i32
  %1012 = or disjoint i32 %1007, %1011
  br label %1013

1013:                                             ; preds = %1083, %997
  %1014 = phi i64 [ %1009, %997 ], [ %1085, %1083 ]
  %1015 = phi i32 [ %1012, %997 ], [ %1086, %1083 ]
  %1016 = phi i32 [ 0, %997 ], [ %1071, %1083 ]
  %1017 = phi ptr [ %1004, %997 ], [ %1072, %1083 ]
  %1018 = icmp eq i64 %1014, 0
  br i1 %1018, label %1033, label %1019

1019:                                             ; preds = %1047, %1013
  %1020 = phi i64 [ %1014, %1013 ], [ %1052, %1047 ]
  %1021 = phi i32 [ %1015, %1013 ], [ %1049, %1047 ]
  %1022 = phi i32 [ %1016, %1013 ], [ %1048, %1047 ]
  %1023 = phi ptr [ %1017, %1013 ], [ %1040, %1047 ]
  %1024 = and i64 %1020, 1
  %1025 = icmp eq i64 %1024, 0
  br i1 %1025, label %1026, label %1068

1026:                                             ; preds = %1019, %1026
  %1027 = phi i32 [ %1030, %1026 ], [ %1021, %1019 ]
  %1028 = phi i64 [ %1029, %1026 ], [ %1020, %1019 ]
  %1029 = lshr exact i64 %1028, 1
  %1030 = add i32 %1027, 1
  %1031 = and i64 %1028, 2
  %1032 = icmp eq i64 %1031, 0
  br i1 %1032, label %1026, label %1068, !llvm.loop !127

1033:                                             ; preds = %1013
  %1034 = add i32 %1015, 63
  %1035 = and i32 %1034, -64
  %1036 = add i32 %1016, 1
  br label %1037

1037:                                             ; preds = %1064, %1033
  %1038 = phi i64 [ %1014, %1033 ], [ %1059, %1064 ]
  %1039 = phi i32 [ %1035, %1033 ], [ %1067, %1064 ]
  %1040 = phi ptr [ %1017, %1033 ], [ %1062, %1064 ]
  %1041 = phi i32 [ %1036, %1033 ], [ 0, %1064 ]
  %1042 = icmp eq i32 %1041, 2
  br i1 %1042, label %1058, label %1043

1043:                                             ; preds = %1037
  %1044 = add i32 %1039, 128
  %1045 = shl i32 %1041, 6
  %1046 = sub i32 %1044, %1045
  br label %1047

1047:                                             ; preds = %1043, %1054
  %1048 = phi i32 [ %1056, %1054 ], [ %1041, %1043 ]
  %1049 = phi i32 [ %1055, %1054 ], [ %1039, %1043 ]
  %1050 = zext i32 %1048 to i64
  %1051 = getelementptr inbounds %struct.bitmap_element_def, ptr %1040, i64 0, i32 3, i64 %1050
  %1052 = load i64, ptr %1051, align 8, !tbaa !75
  %1053 = icmp eq i64 %1052, 0
  br i1 %1053, label %1054, label %1019

1054:                                             ; preds = %1047
  %1055 = add i32 %1049, 64
  %1056 = add i32 %1048, 1
  %1057 = icmp eq i32 %1056, 2
  br i1 %1057, label %1058, label %1047, !llvm.loop !128

1058:                                             ; preds = %1054, %1037
  %1059 = phi i64 [ %1038, %1037 ], [ %1052, %1054 ]
  %1060 = phi i32 [ %1039, %1037 ], [ %1046, %1054 ]
  %1061 = phi i32 [ %1041, %1037 ], [ 2, %1054 ]
  %1062 = load ptr, ptr %1040, align 8, !tbaa !129
  %1063 = icmp eq ptr %1062, null
  br i1 %1063, label %1068, label %1064

1064:                                             ; preds = %1058
  %1065 = getelementptr inbounds %struct.bitmap_element_def, ptr %1062, i64 0, i32 2
  %1066 = load i32, ptr %1065, align 8, !tbaa !125
  %1067 = shl i32 %1066, 7
  br label %1037, !llvm.loop !130

1068:                                             ; preds = %1058, %1026, %1019
  %1069 = phi i64 [ %1020, %1019 ], [ %1029, %1026 ], [ %1059, %1058 ]
  %1070 = phi i32 [ %1021, %1019 ], [ %1030, %1026 ], [ %1060, %1058 ]
  %1071 = phi i32 [ %1022, %1019 ], [ %1022, %1026 ], [ %1061, %1058 ]
  %1072 = phi ptr [ %1023, %1019 ], [ %1023, %1026 ], [ %1062, %1058 ]
  %1073 = phi i1 [ false, %1019 ], [ false, %1026 ], [ true, %1058 ]
  br i1 %1073, label %1087, label %1074

1074:                                             ; preds = %1068
  %1075 = load ptr, ptr @uid_to_canon_type, align 8, !tbaa !35
  %1076 = sext i32 %1070 to i64
  %1077 = tail call ptr @splay_tree_lookup(ptr noundef %1075, i64 noundef %1076) #18
  %1078 = icmp eq ptr %1077, null
  br i1 %1078, label %1083, label %1079

1079:                                             ; preds = %1074
  %1080 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1077, i64 0, i32 1
  %1081 = load i64, ptr %1080, align 8, !tbaa !59
  %1082 = inttoptr i64 %1081 to ptr
  br label %1083

1083:                                             ; preds = %1074, %1079
  %1084 = phi ptr [ %1082, %1079 ], [ null, %1074 ]
  tail call fastcc void @close_type_exposed_parameter(ptr noundef %1084)
  %1085 = lshr i64 %1069, 1
  %1086 = add i32 %1070, 1
  br label %1013, !llvm.loop !132

1087:                                             ; preds = %1068
  %1088 = load ptr, ptr @been_there_done_that, align 8, !tbaa !35
  tail call void @bitmap_clear(ptr noundef %1088) #18
  %1089 = load ptr, ptr @bitmap_tmp, align 8, !tbaa !35
  %1090 = load ptr, ptr @global_types_full_escape, align 8, !tbaa !35
  tail call void @bitmap_copy(ptr noundef %1089, ptr noundef %1090) #18
  %1091 = load ptr, ptr @bitmap_tmp, align 8, !tbaa !35
  %1092 = load ptr, ptr %1091, align 8, !tbaa !123
  %1093 = icmp eq ptr %1092, null
  %1094 = select i1 %1093, ptr @bitmap_zero_bits, ptr %1092
  %1095 = getelementptr inbounds %struct.bitmap_element_def, ptr %1094, i64 0, i32 2
  %1096 = load i32, ptr %1095, align 8, !tbaa !125
  %1097 = shl i32 %1096, 7
  %1098 = getelementptr inbounds %struct.bitmap_element_def, ptr %1094, i64 0, i32 3
  %1099 = load i64, ptr %1098, align 8, !tbaa !75
  %1100 = icmp eq i64 %1099, 0
  %1101 = zext i1 %1100 to i32
  %1102 = or disjoint i32 %1097, %1101
  br label %1103

1103:                                             ; preds = %1173, %1087
  %1104 = phi i64 [ %1099, %1087 ], [ %1175, %1173 ]
  %1105 = phi i32 [ %1102, %1087 ], [ %1176, %1173 ]
  %1106 = phi i32 [ 0, %1087 ], [ %1161, %1173 ]
  %1107 = phi ptr [ %1094, %1087 ], [ %1162, %1173 ]
  %1108 = icmp eq i64 %1104, 0
  br i1 %1108, label %1123, label %1109

1109:                                             ; preds = %1137, %1103
  %1110 = phi i64 [ %1104, %1103 ], [ %1142, %1137 ]
  %1111 = phi i32 [ %1105, %1103 ], [ %1139, %1137 ]
  %1112 = phi i32 [ %1106, %1103 ], [ %1138, %1137 ]
  %1113 = phi ptr [ %1107, %1103 ], [ %1130, %1137 ]
  %1114 = and i64 %1110, 1
  %1115 = icmp eq i64 %1114, 0
  br i1 %1115, label %1116, label %1158

1116:                                             ; preds = %1109, %1116
  %1117 = phi i32 [ %1120, %1116 ], [ %1111, %1109 ]
  %1118 = phi i64 [ %1119, %1116 ], [ %1110, %1109 ]
  %1119 = lshr exact i64 %1118, 1
  %1120 = add i32 %1117, 1
  %1121 = and i64 %1118, 2
  %1122 = icmp eq i64 %1121, 0
  br i1 %1122, label %1116, label %1158, !llvm.loop !127

1123:                                             ; preds = %1103
  %1124 = add i32 %1105, 63
  %1125 = and i32 %1124, -64
  %1126 = add i32 %1106, 1
  br label %1127

1127:                                             ; preds = %1154, %1123
  %1128 = phi i64 [ %1104, %1123 ], [ %1149, %1154 ]
  %1129 = phi i32 [ %1125, %1123 ], [ %1157, %1154 ]
  %1130 = phi ptr [ %1107, %1123 ], [ %1152, %1154 ]
  %1131 = phi i32 [ %1126, %1123 ], [ 0, %1154 ]
  %1132 = icmp eq i32 %1131, 2
  br i1 %1132, label %1148, label %1133

1133:                                             ; preds = %1127
  %1134 = add i32 %1129, 128
  %1135 = shl i32 %1131, 6
  %1136 = sub i32 %1134, %1135
  br label %1137

1137:                                             ; preds = %1133, %1144
  %1138 = phi i32 [ %1146, %1144 ], [ %1131, %1133 ]
  %1139 = phi i32 [ %1145, %1144 ], [ %1129, %1133 ]
  %1140 = zext i32 %1138 to i64
  %1141 = getelementptr inbounds %struct.bitmap_element_def, ptr %1130, i64 0, i32 3, i64 %1140
  %1142 = load i64, ptr %1141, align 8, !tbaa !75
  %1143 = icmp eq i64 %1142, 0
  br i1 %1143, label %1144, label %1109

1144:                                             ; preds = %1137
  %1145 = add i32 %1139, 64
  %1146 = add i32 %1138, 1
  %1147 = icmp eq i32 %1146, 2
  br i1 %1147, label %1148, label %1137, !llvm.loop !128

1148:                                             ; preds = %1144, %1127
  %1149 = phi i64 [ %1128, %1127 ], [ %1142, %1144 ]
  %1150 = phi i32 [ %1129, %1127 ], [ %1136, %1144 ]
  %1151 = phi i32 [ %1131, %1127 ], [ 2, %1144 ]
  %1152 = load ptr, ptr %1130, align 8, !tbaa !129
  %1153 = icmp eq ptr %1152, null
  br i1 %1153, label %1158, label %1154

1154:                                             ; preds = %1148
  %1155 = getelementptr inbounds %struct.bitmap_element_def, ptr %1152, i64 0, i32 2
  %1156 = load i32, ptr %1155, align 8, !tbaa !125
  %1157 = shl i32 %1156, 7
  br label %1127, !llvm.loop !130

1158:                                             ; preds = %1148, %1116, %1109
  %1159 = phi i64 [ %1110, %1109 ], [ %1119, %1116 ], [ %1149, %1148 ]
  %1160 = phi i32 [ %1111, %1109 ], [ %1120, %1116 ], [ %1150, %1148 ]
  %1161 = phi i32 [ %1112, %1109 ], [ %1112, %1116 ], [ %1151, %1148 ]
  %1162 = phi ptr [ %1113, %1109 ], [ %1113, %1116 ], [ %1152, %1148 ]
  %1163 = phi i1 [ false, %1109 ], [ false, %1116 ], [ true, %1148 ]
  br i1 %1163, label %1177, label %1164

1164:                                             ; preds = %1158
  %1165 = load ptr, ptr @uid_to_canon_type, align 8, !tbaa !35
  %1166 = sext i32 %1160 to i64
  %1167 = tail call ptr @splay_tree_lookup(ptr noundef %1165, i64 noundef %1166) #18
  %1168 = icmp eq ptr %1167, null
  br i1 %1168, label %1173, label %1169

1169:                                             ; preds = %1164
  %1170 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1167, i64 0, i32 1
  %1171 = load i64, ptr %1170, align 8, !tbaa !59
  %1172 = inttoptr i64 %1171 to ptr
  br label %1173

1173:                                             ; preds = %1164, %1169
  %1174 = phi ptr [ %1172, %1169 ], [ null, %1164 ]
  tail call fastcc void @close_type_full_escape(ptr noundef %1174)
  %1175 = lshr i64 %1159, 1
  %1176 = add i32 %1160, 1
  br label %1103, !llvm.loop !133

1177:                                             ; preds = %1158
  %1178 = load ptr, ptr @been_there_done_that, align 8, !tbaa !35
  tail call void @bitmap_clear(ptr noundef %1178) #18
  %1179 = load ptr, ptr @uid_to_addressof_down_map, align 8, !tbaa !35
  %1180 = tail call ptr @splay_tree_min(ptr noundef %1179) #18
  %1181 = icmp eq ptr %1180, null
  br i1 %1181, label %1192, label %1182

1182:                                             ; preds = %1177, %1182
  %1183 = phi ptr [ %1190, %1182 ], [ %1180, %1177 ]
  %1184 = load i64, ptr %1183, align 8, !tbaa !134
  %1185 = trunc i64 %1184 to i32
  %1186 = tail call fastcc ptr @close_addressof_down(i32 noundef %1185)
  %1187 = load ptr, ptr @uid_to_addressof_down_map, align 8, !tbaa !35
  %1188 = shl i64 %1184, 32
  %1189 = ashr exact i64 %1188, 32
  %1190 = tail call ptr @splay_tree_successor(ptr noundef %1187, i64 noundef %1189) #18
  %1191 = icmp eq ptr %1190, null
  br i1 %1191, label %1192, label %1182, !llvm.loop !135

1192:                                             ; preds = %1182, %1177
  %1193 = load ptr, ptr @all_canon_types, align 8, !tbaa !35
  %1194 = tail call ptr @splay_tree_min(ptr noundef %1193) #18
  %1195 = icmp eq ptr %1194, null
  br i1 %1195, label %1218, label %1196

1196:                                             ; preds = %1192, %1214
  %1197 = phi ptr [ %1216, %1214 ], [ %1194, %1192 ]
  %1198 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1197, i64 0, i32 1
  %1199 = load i64, ptr %1198, align 8, !tbaa !59
  %1200 = inttoptr i64 %1199 to ptr
  %1201 = load i64, ptr %1197, align 8, !tbaa !134
  %1202 = load i64, ptr %1200, align 8
  %1203 = trunc i64 %1202 to i16
  switch i16 %1203, label %1214 [
    i16 10, label %1204
    i16 12, label %1204
    i16 15, label %1204
  ]

1204:                                             ; preds = %1196, %1196, %1196
  %1205 = load ptr, ptr @all_canon_types, align 8, !tbaa !35
  tail call void @splay_tree_remove(ptr noundef %1205, i64 noundef %1201) #18
  %1206 = load ptr, ptr @type_to_canon_type, align 8, !tbaa !35
  tail call void @splay_tree_remove(ptr noundef %1206, i64 noundef %1199) #18
  %1207 = load ptr, ptr @uid_to_canon_type, align 8, !tbaa !35
  %1208 = getelementptr inbounds %struct.tree_type, ptr %1200, i64 0, i32 5
  %1209 = load i32, ptr %1208, align 8, !tbaa !46
  %1210 = zext i32 %1209 to i64
  tail call void @splay_tree_remove(ptr noundef %1207, i64 noundef %1210) #18
  %1211 = load ptr, ptr @global_types_seen, align 8, !tbaa !35
  %1212 = load i32, ptr %1208, align 8, !tbaa !46
  %1213 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1211, i32 noundef %1212) #18
  br label %1214

1214:                                             ; preds = %1196, %1204
  %1215 = load ptr, ptr @all_canon_types, align 8, !tbaa !35
  %1216 = tail call ptr @splay_tree_successor(ptr noundef %1215, i64 noundef %1201) #18
  %1217 = icmp eq ptr %1216, null
  br i1 %1217, label %1218, label %1196, !llvm.loop !136

1218:                                             ; preds = %1214, %1192
  %1219 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1220 = icmp eq ptr %1219, null
  br i1 %1220, label %1320, label %1221

1221:                                             ; preds = %1218
  %1222 = load ptr, ptr @global_types_seen, align 8, !tbaa !35
  %1223 = load ptr, ptr %1222, align 8, !tbaa !123
  %1224 = icmp eq ptr %1223, null
  %1225 = select i1 %1224, ptr @bitmap_zero_bits, ptr %1223
  %1226 = getelementptr inbounds %struct.bitmap_element_def, ptr %1225, i64 0, i32 2
  %1227 = load i32, ptr %1226, align 8, !tbaa !125
  %1228 = shl i32 %1227, 7
  %1229 = getelementptr inbounds %struct.bitmap_element_def, ptr %1225, i64 0, i32 3
  %1230 = load i64, ptr %1229, align 8, !tbaa !75
  %1231 = icmp eq i64 %1230, 0
  %1232 = zext i1 %1231 to i32
  %1233 = or disjoint i32 %1228, %1232
  br label %1234

1234:                                             ; preds = %1317, %1221
  %1235 = phi i64 [ %1230, %1221 ], [ %1318, %1317 ]
  %1236 = phi i32 [ %1233, %1221 ], [ %1319, %1317 ]
  %1237 = phi i32 [ 0, %1221 ], [ %1292, %1317 ]
  %1238 = phi ptr [ %1225, %1221 ], [ %1293, %1317 ]
  %1239 = icmp eq i64 %1235, 0
  br i1 %1239, label %1254, label %1240

1240:                                             ; preds = %1268, %1234
  %1241 = phi i64 [ %1235, %1234 ], [ %1273, %1268 ]
  %1242 = phi i32 [ %1236, %1234 ], [ %1270, %1268 ]
  %1243 = phi i32 [ %1237, %1234 ], [ %1269, %1268 ]
  %1244 = phi ptr [ %1238, %1234 ], [ %1261, %1268 ]
  %1245 = and i64 %1241, 1
  %1246 = icmp eq i64 %1245, 0
  br i1 %1246, label %1247, label %1289

1247:                                             ; preds = %1240, %1247
  %1248 = phi i32 [ %1251, %1247 ], [ %1242, %1240 ]
  %1249 = phi i64 [ %1250, %1247 ], [ %1241, %1240 ]
  %1250 = lshr exact i64 %1249, 1
  %1251 = add i32 %1248, 1
  %1252 = and i64 %1249, 2
  %1253 = icmp eq i64 %1252, 0
  br i1 %1253, label %1247, label %1289, !llvm.loop !127

1254:                                             ; preds = %1234
  %1255 = add i32 %1236, 63
  %1256 = and i32 %1255, -64
  %1257 = add i32 %1237, 1
  br label %1258

1258:                                             ; preds = %1285, %1254
  %1259 = phi i64 [ %1235, %1254 ], [ %1280, %1285 ]
  %1260 = phi i32 [ %1256, %1254 ], [ %1288, %1285 ]
  %1261 = phi ptr [ %1238, %1254 ], [ %1283, %1285 ]
  %1262 = phi i32 [ %1257, %1254 ], [ 0, %1285 ]
  %1263 = icmp eq i32 %1262, 2
  br i1 %1263, label %1279, label %1264

1264:                                             ; preds = %1258
  %1265 = add i32 %1260, 128
  %1266 = shl i32 %1262, 6
  %1267 = sub i32 %1265, %1266
  br label %1268

1268:                                             ; preds = %1264, %1275
  %1269 = phi i32 [ %1277, %1275 ], [ %1262, %1264 ]
  %1270 = phi i32 [ %1276, %1275 ], [ %1260, %1264 ]
  %1271 = zext i32 %1269 to i64
  %1272 = getelementptr inbounds %struct.bitmap_element_def, ptr %1261, i64 0, i32 3, i64 %1271
  %1273 = load i64, ptr %1272, align 8, !tbaa !75
  %1274 = icmp eq i64 %1273, 0
  br i1 %1274, label %1275, label %1240

1275:                                             ; preds = %1268
  %1276 = add i32 %1270, 64
  %1277 = add i32 %1269, 1
  %1278 = icmp eq i32 %1277, 2
  br i1 %1278, label %1279, label %1268, !llvm.loop !128

1279:                                             ; preds = %1275, %1258
  %1280 = phi i64 [ %1259, %1258 ], [ %1273, %1275 ]
  %1281 = phi i32 [ %1260, %1258 ], [ %1267, %1275 ]
  %1282 = phi i32 [ %1262, %1258 ], [ 2, %1275 ]
  %1283 = load ptr, ptr %1261, align 8, !tbaa !129
  %1284 = icmp eq ptr %1283, null
  br i1 %1284, label %1289, label %1285

1285:                                             ; preds = %1279
  %1286 = getelementptr inbounds %struct.bitmap_element_def, ptr %1283, i64 0, i32 2
  %1287 = load i32, ptr %1286, align 8, !tbaa !125
  %1288 = shl i32 %1287, 7
  br label %1258, !llvm.loop !130

1289:                                             ; preds = %1279, %1247, %1240
  %1290 = phi i64 [ %1241, %1240 ], [ %1250, %1247 ], [ %1280, %1279 ]
  %1291 = phi i32 [ %1242, %1240 ], [ %1251, %1247 ], [ %1281, %1279 ]
  %1292 = phi i32 [ %1243, %1240 ], [ %1243, %1247 ], [ %1282, %1279 ]
  %1293 = phi ptr [ %1244, %1240 ], [ %1244, %1247 ], [ %1283, %1279 ]
  %1294 = phi i1 [ false, %1240 ], [ false, %1247 ], [ true, %1279 ]
  br i1 %1294, label %1320, label %1295

1295:                                             ; preds = %1289
  %1296 = load ptr, ptr @uid_to_canon_type, align 8, !tbaa !35
  %1297 = sext i32 %1291 to i64
  %1298 = tail call ptr @splay_tree_lookup(ptr noundef %1296, i64 noundef %1297) #18
  %1299 = icmp eq ptr %1298, null
  br i1 %1299, label %1304, label %1300

1300:                                             ; preds = %1295
  %1301 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1298, i64 0, i32 1
  %1302 = load i64, ptr %1301, align 8, !tbaa !59
  %1303 = inttoptr i64 %1302 to ptr
  br label %1304

1304:                                             ; preds = %1295, %1300
  %1305 = phi ptr [ %1303, %1300 ], [ null, %1295 ]
  %1306 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1307 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1306, ptr noundef nonnull @.str.6, i32 noundef %1291)
  %1308 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @print_generic_expr(ptr noundef %1308, ptr noundef %1305, i32 noundef 0) #18
  %1309 = load ptr, ptr @global_types_full_escape, align 8, !tbaa !35
  %1310 = tail call i32 @bitmap_bit_p(ptr noundef %1309, i32 noundef %1291) #18
  %1311 = icmp eq i32 %1310, 0
  %1312 = load ptr, ptr @dump_file, align 8, !tbaa !35
  br i1 %1311, label %1315, label %1313

1313:                                             ; preds = %1304
  %1314 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 9, i64 1, ptr %1312)
  br label %1317

1315:                                             ; preds = %1304
  %1316 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 11, i64 1, ptr %1312)
  br label %1317

1317:                                             ; preds = %1315, %1313
  %1318 = lshr i64 %1290, 1
  %1319 = add i32 %1291, 1
  br label %1234, !llvm.loop !137

1320:                                             ; preds = %1289, %1218
  %1321 = load ptr, ptr @uid_to_addressof_up_map, align 8, !tbaa !35
  %1322 = tail call ptr @splay_tree_min(ptr noundef %1321) #18
  %1323 = icmp eq ptr %1322, null
  br i1 %1323, label %1336, label %1324

1324:                                             ; preds = %1320, %1324
  %1325 = phi ptr [ %1334, %1324 ], [ %1322, %1320 ]
  %1326 = load i64, ptr %1325, align 8, !tbaa !134
  %1327 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1325, i64 0, i32 1
  %1328 = load i64, ptr %1327, align 8, !tbaa !59
  %1329 = inttoptr i64 %1328 to ptr
  tail call void @bitmap_obstack_free(ptr noundef %1329) #18
  %1330 = load ptr, ptr @uid_to_addressof_up_map, align 8, !tbaa !35
  %1331 = shl i64 %1326, 32
  %1332 = ashr exact i64 %1331, 32
  tail call void @splay_tree_remove(ptr noundef %1330, i64 noundef %1332) #18
  %1333 = load ptr, ptr @uid_to_addressof_up_map, align 8, !tbaa !35
  %1334 = tail call ptr @splay_tree_successor(ptr noundef %1333, i64 noundef %1332) #18
  %1335 = icmp eq ptr %1334, null
  br i1 %1335, label %1336, label %1324, !llvm.loop !138

1336:                                             ; preds = %1324, %1320
  %1337 = load ptr, ptr @uid_to_subtype_map, align 8, !tbaa !35
  %1338 = tail call ptr @splay_tree_min(ptr noundef %1337) #18
  %1339 = icmp eq ptr %1338, null
  br i1 %1339, label %1350, label %1340

1340:                                             ; preds = %1336, %1340
  %1341 = phi ptr [ %1348, %1340 ], [ %1338, %1336 ]
  %1342 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1341, i64 0, i32 1
  %1343 = load i64, ptr %1342, align 8, !tbaa !59
  %1344 = inttoptr i64 %1343 to ptr
  tail call void @bitmap_obstack_free(ptr noundef %1344) #18
  %1345 = load ptr, ptr @uid_to_subtype_map, align 8, !tbaa !35
  %1346 = load i64, ptr %1341, align 8, !tbaa !134
  tail call void @splay_tree_remove(ptr noundef %1345, i64 noundef %1346) #18
  %1347 = load ptr, ptr @uid_to_subtype_map, align 8, !tbaa !35
  %1348 = tail call ptr @splay_tree_min(ptr noundef %1347) #18
  %1349 = icmp eq ptr %1348, null
  br i1 %1349, label %1350, label %1340, !llvm.loop !139

1350:                                             ; preds = %1340, %1336
  %1351 = load ptr, ptr @uid_to_subtype_map, align 8, !tbaa !35
  tail call void @splay_tree_delete(ptr noundef %1351) #18
  store ptr null, ptr @uid_to_subtype_map, align 8, !tbaa !35
  %1352 = load ptr, ptr @global_types_exposed_parameter, align 8, !tbaa !35
  tail call void @bitmap_obstack_free(ptr noundef %1352) #18
  store ptr null, ptr @global_types_exposed_parameter, align 8, !tbaa !35
  %1353 = load ptr, ptr @been_there_done_that, align 8, !tbaa !35
  tail call void @bitmap_obstack_free(ptr noundef %1353) #18
  store ptr null, ptr @been_there_done_that, align 8, !tbaa !35
  %1354 = load ptr, ptr @bitmap_tmp, align 8, !tbaa !35
  tail call void @bitmap_obstack_free(ptr noundef %1354) #18
  store ptr null, ptr @bitmap_tmp, align 8, !tbaa !35
  ret i32 0
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

declare ptr @splay_tree_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @check_cast(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #10 !prof !34 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call fastcc ptr @get_canon_type(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %6 = tail call fastcc ptr @get_canon_type(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %7 = icmp eq ptr %5, null
  %8 = icmp eq ptr %6, null
  %9 = select i1 %7, i1 true, i1 %8
  %10 = icmp eq ptr %5, %6
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %113, label %12

12:                                               ; preds = %2, %18
  %13 = phi ptr [ %20, %18 ], [ %6, %2 ]
  %14 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 16
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %21 [
    i16 10, label %18
    i16 12, label %18
    i16 16, label %22
    i16 18, label %22
    i16 17, label %22
  ]

18:                                               ; preds = %12, %12
  %19 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  br label %12, !llvm.loop !54

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %12, %12, %12, %21
  %23 = phi i1 [ false, %21 ], [ true, %12 ], [ true, %12 ], [ true, %12 ]
  br label %24

24:                                               ; preds = %22, %30
  %25 = phi ptr [ %32, %30 ], [ %5, %22 ]
  %26 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 16
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i16
  switch i16 %29, label %33 [
    i16 10, label %30
    i16 12, label %30
    i16 16, label %34
    i16 18, label %34
    i16 17, label %34
  ]

30:                                               ; preds = %24, %24
  %31 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  br label %24, !llvm.loop !54

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %24, %24, %24, %33
  %35 = phi i1 [ false, %33 ], [ true, %24 ], [ true, %24 ], [ true, %24 ]
  br i1 %23, label %36, label %108

36:                                               ; preds = %34
  br i1 %35, label %37, label %75

37:                                               ; preds = %36, %44
  %38 = phi ptr [ %47, %44 ], [ %6, %36 ]
  %39 = phi i32 [ %46, %44 ], [ 0, %36 ]
  %40 = getelementptr inbounds %struct.tree_type, ptr %38, i64 0, i32 16
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  %42 = load i64, ptr %41, align 8
  %43 = trunc i64 %42 to i16
  switch i16 %43, label %48 [
    i16 10, label %44
    i16 12, label %44
  ]

44:                                               ; preds = %37, %37
  %45 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %46 = add nuw nsw i32 %39, 1
  %47 = load ptr, ptr %45, align 8, !tbaa !46
  br label %37, !llvm.loop !140

48:                                               ; preds = %37, %55
  %49 = phi ptr [ %58, %55 ], [ %5, %37 ]
  %50 = phi i32 [ %57, %55 ], [ 0, %37 ]
  %51 = getelementptr inbounds %struct.tree_type, ptr %49, i64 0, i32 16
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = load i64, ptr %52, align 8
  %54 = trunc i64 %53 to i16
  switch i16 %54, label %59 [
    i16 10, label %55
    i16 12, label %55
  ]

55:                                               ; preds = %48, %48
  %56 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %57 = add nuw nsw i32 %50, 1
  %58 = load ptr, ptr %56, align 8, !tbaa !46
  br label %48, !llvm.loop !140

59:                                               ; preds = %48
  %60 = icmp eq i32 %39, %50
  br i1 %60, label %61, label %70

61:                                               ; preds = %59
  %62 = icmp eq ptr %41, %52
  br i1 %62, label %70, label %63

63:                                               ; preds = %61
  %64 = tail call fastcc zeroext i8 @parent_type_p(ptr noundef nonnull %41, ptr noundef nonnull %52)
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = tail call fastcc zeroext i8 @parent_type_p(ptr noundef nonnull %52, ptr noundef nonnull %41)
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %68, i32 4, i32 2
  br label %70

70:                                               ; preds = %59, %61, %63, %66
  %71 = phi i32 [ 4, %59 ], [ 8, %61 ], [ 1, %63 ], [ %69, %66 ]
  %72 = icmp eq i32 %71, 4
  br i1 %72, label %73, label %113

73:                                               ; preds = %70
  %74 = tail call fastcc ptr @mark_type(ptr noundef nonnull %6, i32 noundef 1)
  br label %109

75:                                               ; preds = %36
  %76 = load i64, ptr %6, align 8
  %77 = trunc i64 %76 to i16
  switch i16 %77, label %81 [
    i16 10, label %78
    i16 12, label %78
  ]

78:                                               ; preds = %75, %75
  %79 = load i64, ptr %5, align 8
  %80 = trunc i64 %79 to i16
  switch i16 %80, label %113 [
    i16 10, label %81
    i16 12, label %81
  ]

81:                                               ; preds = %78, %75, %78
  %82 = load i64, ptr %1, align 8
  %83 = and i64 %82, 4295032831
  %84 = icmp eq i64 %83, 141
  br i1 %84, label %85, label %109

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !46
  %88 = load i32, ptr %87, align 8
  %89 = and i32 %88, 255
  %90 = icmp eq i32 %89, 8
  br i1 %90, label %91, label %109

91:                                               ; preds = %85
  %92 = zext nneg i32 %89 to i64
  %93 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !50
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %95
  %97 = load i64, ptr %96, align 8, !tbaa !75
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %100

100:                                              ; preds = %99, %91
  %101 = getelementptr inbounds i8, ptr %87, i64 %97
  %102 = load ptr, ptr %101, align 8, !tbaa !35
  %103 = icmp eq ptr %102, %1
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = tail call i32 @gimple_call_flags(ptr noundef nonnull %87) #18
  %106 = and i32 %105, 16
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %113

108:                                              ; preds = %34
  br i1 %35, label %109, label %113

109:                                              ; preds = %108, %81, %104, %100, %85, %73
  %110 = phi ptr [ %5, %73 ], [ %6, %85 ], [ %6, %100 ], [ %6, %104 ], [ %6, %81 ], [ %5, %108 ]
  %111 = phi i32 [ 4, %73 ], [ 16, %85 ], [ 16, %100 ], [ 16, %104 ], [ 16, %81 ], [ 64, %108 ]
  %112 = tail call fastcc ptr @mark_type(ptr noundef nonnull %110, i32 noundef 1)
  br label %113

113:                                              ; preds = %109, %104, %108, %70, %78, %2
  %114 = phi i32 [ 256, %2 ], [ %71, %70 ], [ 256, %108 ], [ 32, %78 ], [ 128, %104 ], [ %111, %109 ]
  ret i32 %114
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @look_for_casts(ptr noundef %0) unnamed_addr #10 !prof !34 {
  %2 = tail call zeroext i8 @is_gimple_cast(ptr noundef %0) #18
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 118
  br i1 %7, label %8, label %31

8:                                                ; preds = %4, %1
  %9 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = tail call fastcc i32 @check_cast(ptr noundef %12, ptr noundef %10)
  br label %40

14:                                               ; preds = %23, %31
  %15 = phi ptr [ %33, %31 ], [ %20, %23 ]
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %40 [
    i16 42, label %18
    i16 41, label %18
    i16 45, label %18
    i16 46, label %18
    i16 118, label %18
    i16 43, label %18
    i16 44, label %18
  ]

18:                                               ; preds = %14, %14, %14, %14, %14, %14, %14
  %19 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = load i64, ptr %20, align 8
  %22 = trunc i64 %21 to i16
  switch i16 %22, label %23 [
    i16 118, label %24
    i16 41, label %34
  ]

23:                                               ; preds = %18, %34
  br label %14, !llvm.loop !141

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = tail call fastcc i32 @check_cast(ptr noundef %28, ptr noundef %26)
  %30 = or i32 %29, %32
  br label %31, !llvm.loop !141

31:                                               ; preds = %4, %24
  %32 = phi i32 [ %30, %24 ], [ 0, %4 ]
  %33 = phi ptr [ %20, %24 ], [ %0, %4 ]
  br label %14

34:                                               ; preds = %18
  %35 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = tail call fastcc ptr @get_canon_type(ptr noundef %38, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %23

40:                                               ; preds = %14, %8
  %41 = phi i32 [ %13, %8 ], [ %32, %14 ]
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 256, i32 %41
  ret i32 %43
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @mark_type(ptr noundef %0, i32 noundef %1) unnamed_addr #10 !prof !34 {
  %3 = tail call fastcc ptr @get_canon_type(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  %6 = icmp eq i32 %1, 0
  %7 = load ptr, ptr @global_types_exposed_parameter, align 8
  %8 = load ptr, ptr @global_types_full_escape, align 8
  %9 = select i1 %6, ptr %7, ptr %8
  %10 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !46
  %12 = tail call i32 @bitmap_bit_p(ptr noundef %9, i32 noundef %11) #18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %9, i32 noundef %11) #18
  %16 = icmp eq i32 %1, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load ptr, ptr @global_types_exposed_parameter, align 8, !tbaa !35
  %19 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %18, i32 noundef %11) #18
  br label %20

20:                                               ; preds = %17, %14, %5, %2
  %21 = phi ptr [ null, %2 ], [ %3, %5 ], [ %3, %14 ], [ %3, %17 ]
  ret ptr %21
}

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @parent_type_p(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #13 !prof !34 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_binfo, ptr %4, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !142
  %9 = zext i32 %8 to i64
  %10 = zext i32 %8 to i64
  br label %11

11:                                               ; preds = %24, %6
  %12 = phi i64 [ %27, %24 ], [ 0, %6 ]
  %13 = icmp ult i64 %12, %9
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.VEC_tree_base, ptr %7, i64 0, i32 2, i64 %12
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  br label %17

17:                                               ; preds = %11, %14
  %18 = phi ptr [ %16, %14 ], [ null, %11 ]
  %19 = icmp eq i64 %12, %10
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = icmp eq ptr %22, %1
  br i1 %23, label %116, label %24

24:                                               ; preds = %20
  %25 = tail call fastcc zeroext i8 @parent_type_p(ptr noundef %22, ptr noundef %1)
  %26 = icmp eq i8 %25, 0
  %27 = add nuw nsw i64 %12, 1
  br i1 %26, label %11, label %116, !llvm.loop !144

28:                                               ; preds = %17, %2
  %29 = load i64, ptr %0, align 8
  %30 = trunc i64 %29 to i32
  %31 = and i32 %30, 65535
  %32 = add nsw i32 %31, -17
  %33 = icmp ult i32 %32, 2
  br i1 %33, label %34, label %83

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %53, %34
  %39 = load ptr, ptr %35, align 8, !tbaa !46
  %40 = icmp eq ptr %39, null
  br i1 %40, label %80, label %57

41:                                               ; preds = %34, %53
  %42 = phi ptr [ %55, %53 ], [ %36, %34 ]
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 31
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = icmp eq ptr %48, %1
  %50 = zext i1 %49 to i32
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i32 [ 7, %41 ], [ %50, %46 ]
  switch i32 %52, label %80 [
    i32 0, label %53
    i32 7, label %53
  ]

53:                                               ; preds = %51, %51
  %54 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  %56 = icmp eq ptr %55, null
  br i1 %56, label %38, label %41, !llvm.loop !145

57:                                               ; preds = %38, %76
  %58 = phi ptr [ %78, %76 ], [ %39, %38 ]
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 31
  br i1 %61, label %62, label %74

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.tree_common, ptr %58, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !46
  %65 = load i64, ptr %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = and i32 %66, 65535
  %68 = add nsw i32 %67, -16
  %69 = icmp ult i32 %68, 3
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = tail call fastcc zeroext i8 @parent_type_p(ptr noundef nonnull %64, ptr noundef %1)
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62, %70
  br label %74

74:                                               ; preds = %70, %57, %73
  %75 = phi i32 [ 0, %73 ], [ 10, %57 ], [ 1, %70 ]
  switch i32 %75, label %80 [
    i32 0, label %76
    i32 10, label %76
  ]

76:                                               ; preds = %74, %74
  %77 = getelementptr inbounds %struct.tree_common, ptr %58, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !46
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %57, !llvm.loop !146

80:                                               ; preds = %51, %74, %76, %38
  %81 = phi i32 [ 0, %38 ], [ 0, %76 ], [ %75, %74 ], [ %52, %51 ]
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %116

83:                                               ; preds = %28, %80
  %84 = and i64 %29, 65535
  %85 = icmp eq i64 %84, 16
  br i1 %85, label %86, label %116

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !46
  %89 = icmp eq ptr %88, null
  br i1 %89, label %116, label %90

90:                                               ; preds = %86, %111
  %91 = phi ptr [ %113, %111 ], [ %88, %86 ]
  %92 = load i64, ptr %91, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 31
  br i1 %94, label %95, label %109

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.tree_common, ptr %91, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !46
  %98 = icmp eq ptr %97, %1
  br i1 %98, label %109, label %99

99:                                               ; preds = %95
  %100 = load i64, ptr %97, align 8
  %101 = trunc i64 %100 to i32
  %102 = and i32 %101, 65535
  %103 = add nsw i32 %102, -16
  %104 = icmp ult i32 %103, 3
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = tail call fastcc zeroext i8 @parent_type_p(ptr noundef nonnull %97, ptr noundef %1)
  %107 = icmp eq i8 %106, 0
  %108 = select i1 %107, i32 11, i32 1
  br label %109

109:                                              ; preds = %99, %105, %95, %90
  %110 = phi i32 [ 13, %90 ], [ 1, %95 ], [ %108, %105 ], [ 0, %99 ]
  switch i32 %110, label %116 [
    i32 0, label %111
    i32 13, label %111
    i32 11, label %115
  ]

111:                                              ; preds = %109, %109
  %112 = getelementptr inbounds %struct.tree_common, ptr %91, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !46
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %90, !llvm.loop !147

115:                                              ; preds = %109, %111
  br label %116

116:                                              ; preds = %20, %24, %109, %115, %86, %83, %80
  %117 = phi i8 [ 1, %80 ], [ 0, %83 ], [ 0, %86 ], [ 0, %115 ], [ 1, %109 ], [ 1, %24 ], [ 1, %20 ]
  ret i8 %117
}

declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_cast(ptr noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @close_type_seen(ptr noundef %0) unnamed_addr #10 !prof !34 {
  %2 = tail call fastcc ptr @get_canon_type(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 1)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %73, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr @been_there_done_that, align 8, !tbaa !35
  %8 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef %6) #18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %73

10:                                               ; preds = %4
  %11 = load ptr, ptr @been_there_done_that, align 8, !tbaa !35
  %12 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %11, i32 noundef %6) #18
  %13 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 17
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %39, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tree_binfo, ptr %14, i64 0, i32 9
  br label %18

18:                                               ; preds = %16, %28
  %19 = phi i64 [ 0, %16 ], [ %38, %28 ]
  %20 = load i32, ptr %17, align 8, !tbaa !142
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.VEC_tree_base, ptr %17, i64 0, i32 2, i64 %19
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  br label %26

26:                                               ; preds = %18, %23
  %27 = phi ptr [ %25, %23 ], [ null, %18 ]
  br i1 %22, label %28, label %39

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = getelementptr inbounds %struct.tree_type, ptr %30, i64 0, i32 16
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !46
  %35 = tail call fastcc ptr @subtype_map_for_uid(i32 noundef %34, i8 noundef zeroext 1)
  %36 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %35, i32 noundef %6) #18
  %37 = tail call fastcc ptr @get_canon_type(ptr noundef %30, i8 noundef zeroext 1, i8 noundef zeroext 1)
  tail call fastcc void @close_type_seen(ptr noundef %37)
  %38 = add nuw nsw i64 %19, 1
  br label %18, !llvm.loop !148

39:                                               ; preds = %26, %10
  %40 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  %42 = icmp eq ptr %41, null
  br i1 %42, label %73, label %43

43:                                               ; preds = %39, %69
  %44 = phi ptr [ %71, %69 ], [ %41, %39 ]
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 31
  br i1 %47, label %48, label %69

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  %51 = icmp eq ptr %50, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %48, %59
  %53 = phi ptr [ %61, %59 ], [ %50, %48 ]
  %54 = phi i32 [ %62, %59 ], [ 0, %48 ]
  %55 = getelementptr inbounds %struct.tree_type, ptr %53, i64 0, i32 16
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  %57 = load i64, ptr %56, align 8
  %58 = trunc i64 %57 to i16
  switch i16 %58, label %63 [
    i16 10, label %59
    i16 12, label %59
    i16 15, label %59
    i16 16, label %64
    i16 18, label %64
    i16 17, label %64
  ]

59:                                               ; preds = %52, %52, %52
  %60 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !46
  %62 = add nuw nsw i32 %54, 1
  br label %52, !llvm.loop !55

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %52, %52, %52, %63, %48
  %65 = phi i32 [ -1, %48 ], [ -1, %63 ], [ %54, %52 ], [ %54, %52 ], [ %54, %52 ]
  %66 = icmp sgt i32 %65, -1
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = tail call fastcc ptr @get_canon_type(ptr noundef %50, i8 noundef zeroext 1, i8 noundef zeroext 1)
  tail call fastcc void @close_type_seen(ptr noundef %68)
  br label %69

69:                                               ; preds = %64, %67, %43
  %70 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !46
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %43, !llvm.loop !149

73:                                               ; preds = %69, %39, %4, %1
  ret void
}

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @close_type_exposed_parameter(ptr noundef %0) unnamed_addr #10 !prof !34 {
  %2 = tail call fastcc ptr @get_canon_type(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %50, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !46
  %7 = load i64, ptr %2, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %10 [
    i16 10, label %9
    i16 12, label %9
  ]

9:                                                ; preds = %4, %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1797, ptr noundef nonnull @.str.3) #18
  br label %10

10:                                               ; preds = %4, %9
  %11 = load ptr, ptr @been_there_done_that, align 8, !tbaa !35
  %12 = tail call i32 @bitmap_bit_p(ptr noundef %11, i32 noundef %6) #18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %10
  %15 = load ptr, ptr @been_there_done_that, align 8, !tbaa !35
  %16 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %15, i32 noundef %6) #18
  %17 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %50, label %20

20:                                               ; preds = %14, %46
  %21 = phi ptr [ %48, %46 ], [ %18, %14 ]
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 31
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = tail call fastcc ptr @get_canon_type(ptr noundef %27, i8 noundef zeroext 0, i8 noundef zeroext 0)
  tail call fastcc void @mark_interesting_type(ptr noundef %28, i32 noundef 0)
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %25, %37
  %31 = phi ptr [ %39, %37 ], [ %28, %25 ]
  %32 = phi i32 [ %40, %37 ], [ 0, %25 ]
  %33 = getelementptr inbounds %struct.tree_type, ptr %31, i64 0, i32 16
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = load i64, ptr %34, align 8
  %36 = trunc i64 %35 to i16
  switch i16 %36, label %41 [
    i16 10, label %37
    i16 12, label %37
    i16 16, label %42
    i16 18, label %42
    i16 17, label %42
  ]

37:                                               ; preds = %30, %30
  %38 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = add nuw nsw i32 %32, 1
  br label %30, !llvm.loop !54

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %30, %30, %30, %41, %25
  %43 = phi i32 [ -1, %25 ], [ -1, %41 ], [ %32, %30 ], [ %32, %30 ], [ %32, %30 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  tail call fastcc void @close_type_exposed_parameter(ptr noundef %28)
  br label %46

46:                                               ; preds = %42, %45, %20
  %47 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %20, !llvm.loop !150

50:                                               ; preds = %46, %14, %10, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @close_type_full_escape(ptr noundef %0) unnamed_addr #10 !prof !34 {
  %2 = tail call fastcc ptr @get_canon_type(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 1)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %259, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr @been_there_done_that, align 8, !tbaa !35
  %8 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef %6) #18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %259

10:                                               ; preds = %4
  %11 = load ptr, ptr @been_there_done_that, align 8, !tbaa !35
  %12 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %11, i32 noundef %6) #18
  %13 = load ptr, ptr @uid_to_subtype_map, align 8, !tbaa !35
  %14 = sext i32 %6 to i64
  %15 = tail call ptr @splay_tree_lookup(ptr noundef %13, i64 noundef %14) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.splay_tree_node_s, ptr %15, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !59
  %20 = inttoptr i64 %19 to ptr
  br label %21

21:                                               ; preds = %10, %17
  %22 = phi ptr [ %20, %17 ], [ null, %10 ]
  %23 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 17
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.tree_binfo, ptr %24, i64 0, i32 9
  br label %28

28:                                               ; preds = %26, %38
  %29 = phi i32 [ %42, %38 ], [ 0, %26 ]
  %30 = load i32, ptr %27, align 8, !tbaa !142
  %31 = icmp ugt i32 %30, %29
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = zext i32 %29 to i64
  %34 = getelementptr inbounds %struct.VEC_tree_base, ptr %27, i64 0, i32 2, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  br label %36

36:                                               ; preds = %28, %32
  %37 = phi ptr [ %35, %32 ], [ null, %28 ]
  br i1 %31, label %38, label %43

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = tail call fastcc ptr @mark_type(ptr noundef %40, i32 noundef 1)
  tail call fastcc void @close_type_full_escape(ptr noundef %41)
  %42 = add nuw i32 %29, 1
  br label %28, !llvm.loop !151

43:                                               ; preds = %36, %21
  %44 = icmp eq ptr %22, null
  br i1 %44, label %132, label %45

45:                                               ; preds = %43
  %46 = load ptr, ptr %22, align 8, !tbaa !123
  %47 = icmp eq ptr %46, null
  %48 = select i1 %47, ptr @bitmap_zero_bits, ptr %46
  %49 = getelementptr inbounds %struct.bitmap_element_def, ptr %48, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !125
  %51 = shl i32 %50, 7
  %52 = getelementptr inbounds %struct.bitmap_element_def, ptr %48, i64 0, i32 3
  %53 = load i64, ptr %52, align 8, !tbaa !75
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = or disjoint i32 %51, %55
  br label %57

57:                                               ; preds = %127, %45
  %58 = phi i64 [ %53, %45 ], [ %130, %127 ]
  %59 = phi i32 [ %56, %45 ], [ %131, %127 ]
  %60 = phi i32 [ 0, %45 ], [ %115, %127 ]
  %61 = phi ptr [ %48, %45 ], [ %116, %127 ]
  %62 = icmp eq i64 %58, 0
  br i1 %62, label %77, label %63

63:                                               ; preds = %91, %57
  %64 = phi i64 [ %58, %57 ], [ %96, %91 ]
  %65 = phi i32 [ %59, %57 ], [ %93, %91 ]
  %66 = phi i32 [ %60, %57 ], [ %92, %91 ]
  %67 = phi ptr [ %61, %57 ], [ %84, %91 ]
  %68 = and i64 %64, 1
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %112

70:                                               ; preds = %63, %70
  %71 = phi i32 [ %74, %70 ], [ %65, %63 ]
  %72 = phi i64 [ %73, %70 ], [ %64, %63 ]
  %73 = lshr exact i64 %72, 1
  %74 = add i32 %71, 1
  %75 = and i64 %72, 2
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %70, label %112, !llvm.loop !127

77:                                               ; preds = %57
  %78 = add i32 %59, 63
  %79 = and i32 %78, -64
  %80 = add i32 %60, 1
  br label %81

81:                                               ; preds = %108, %77
  %82 = phi i64 [ %58, %77 ], [ %103, %108 ]
  %83 = phi i32 [ %79, %77 ], [ %111, %108 ]
  %84 = phi ptr [ %61, %77 ], [ %106, %108 ]
  %85 = phi i32 [ %80, %77 ], [ 0, %108 ]
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %102, label %87

87:                                               ; preds = %81
  %88 = add i32 %83, 128
  %89 = shl i32 %85, 6
  %90 = sub i32 %88, %89
  br label %91

91:                                               ; preds = %87, %98
  %92 = phi i32 [ %100, %98 ], [ %85, %87 ]
  %93 = phi i32 [ %99, %98 ], [ %83, %87 ]
  %94 = zext i32 %92 to i64
  %95 = getelementptr inbounds %struct.bitmap_element_def, ptr %84, i64 0, i32 3, i64 %94
  %96 = load i64, ptr %95, align 8, !tbaa !75
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %63

98:                                               ; preds = %91
  %99 = add i32 %93, 64
  %100 = add i32 %92, 1
  %101 = icmp eq i32 %100, 2
  br i1 %101, label %102, label %91, !llvm.loop !128

102:                                              ; preds = %98, %81
  %103 = phi i64 [ %82, %81 ], [ %96, %98 ]
  %104 = phi i32 [ %83, %81 ], [ %90, %98 ]
  %105 = phi i32 [ %85, %81 ], [ 2, %98 ]
  %106 = load ptr, ptr %84, align 8, !tbaa !129
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.bitmap_element_def, ptr %106, i64 0, i32 2
  %110 = load i32, ptr %109, align 8, !tbaa !125
  %111 = shl i32 %110, 7
  br label %81, !llvm.loop !130

112:                                              ; preds = %102, %70, %63
  %113 = phi i64 [ %64, %63 ], [ %73, %70 ], [ %103, %102 ]
  %114 = phi i32 [ %65, %63 ], [ %74, %70 ], [ %104, %102 ]
  %115 = phi i32 [ %66, %63 ], [ %66, %70 ], [ %105, %102 ]
  %116 = phi ptr [ %67, %63 ], [ %67, %70 ], [ %106, %102 ]
  %117 = phi i1 [ false, %63 ], [ false, %70 ], [ true, %102 ]
  br i1 %117, label %132, label %118

118:                                              ; preds = %112
  %119 = load ptr, ptr @uid_to_canon_type, align 8, !tbaa !35
  %120 = sext i32 %114 to i64
  %121 = tail call ptr @splay_tree_lookup(ptr noundef %119, i64 noundef %120) #18
  %122 = icmp eq ptr %121, null
  br i1 %122, label %127, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.splay_tree_node_s, ptr %121, i64 0, i32 1
  %125 = load i64, ptr %124, align 8, !tbaa !59
  %126 = inttoptr i64 %125 to ptr
  br label %127

127:                                              ; preds = %118, %123
  %128 = phi ptr [ %126, %123 ], [ null, %118 ]
  %129 = tail call fastcc ptr @mark_type(ptr noundef %128, i32 noundef 1)
  tail call fastcc void @close_type_full_escape(ptr noundef %129)
  %130 = lshr i64 %113, 1
  %131 = add i32 %114, 1
  br label %57, !llvm.loop !152

132:                                              ; preds = %112, %43
  %133 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !46
  %135 = icmp eq ptr %134, null
  br i1 %135, label %166, label %136

136:                                              ; preds = %132, %162
  %137 = phi ptr [ %164, %162 ], [ %134, %132 ]
  %138 = load i64, ptr %137, align 8
  %139 = and i64 %138, 65535
  %140 = icmp eq i64 %139, 31
  br i1 %140, label %141, label %162

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.tree_common, ptr %137, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !46
  %144 = icmp eq ptr %143, null
  br i1 %144, label %157, label %145

145:                                              ; preds = %141, %152
  %146 = phi ptr [ %154, %152 ], [ %143, %141 ]
  %147 = phi i32 [ %155, %152 ], [ 0, %141 ]
  %148 = getelementptr inbounds %struct.tree_type, ptr %146, i64 0, i32 16
  %149 = load ptr, ptr %148, align 8, !tbaa !46
  %150 = load i64, ptr %149, align 8
  %151 = trunc i64 %150 to i16
  switch i16 %151, label %156 [
    i16 10, label %152
    i16 12, label %152
    i16 15, label %152
    i16 16, label %157
    i16 18, label %157
    i16 17, label %157
  ]

152:                                              ; preds = %145, %145, %145
  %153 = getelementptr inbounds %struct.tree_common, ptr %149, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !46
  %155 = add nuw nsw i32 %147, 1
  br label %145, !llvm.loop !55

156:                                              ; preds = %145
  br label %157

157:                                              ; preds = %145, %145, %145, %156, %141
  %158 = phi i32 [ -1, %141 ], [ -1, %156 ], [ %147, %145 ], [ %147, %145 ], [ %147, %145 ]
  %159 = icmp sgt i32 %158, -1
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = tail call fastcc ptr @mark_type(ptr noundef %143, i32 noundef 1)
  tail call fastcc void @close_type_full_escape(ptr noundef %161)
  br label %162

162:                                              ; preds = %157, %160, %136
  %163 = getelementptr inbounds %struct.tree_common, ptr %137, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !46
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %136, !llvm.loop !153

166:                                              ; preds = %162, %132
  %167 = load ptr, ptr @uid_to_addressof_up_map, align 8, !tbaa !35
  %168 = tail call ptr @splay_tree_lookup(ptr noundef %167, i64 noundef %14) #18
  %169 = icmp eq ptr %168, null
  br i1 %169, label %259, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.splay_tree_node_s, ptr %168, i64 0, i32 1
  %172 = load i64, ptr %171, align 8, !tbaa !59
  %173 = inttoptr i64 %172 to ptr
  %174 = load ptr, ptr %173, align 8, !tbaa !123
  %175 = icmp eq ptr %174, null
  %176 = select i1 %175, ptr @bitmap_zero_bits, ptr %174
  %177 = getelementptr inbounds %struct.bitmap_element_def, ptr %176, i64 0, i32 2
  %178 = load i32, ptr %177, align 8, !tbaa !125
  %179 = shl i32 %178, 7
  %180 = getelementptr inbounds %struct.bitmap_element_def, ptr %176, i64 0, i32 3
  %181 = load i64, ptr %180, align 8, !tbaa !75
  %182 = icmp eq i64 %181, 0
  %183 = zext i1 %182 to i32
  %184 = or disjoint i32 %179, %183
  br label %185

185:                                              ; preds = %255, %170
  %186 = phi i64 [ %181, %170 ], [ %257, %255 ]
  %187 = phi i32 [ %184, %170 ], [ %258, %255 ]
  %188 = phi i32 [ 0, %170 ], [ %243, %255 ]
  %189 = phi ptr [ %176, %170 ], [ %244, %255 ]
  %190 = icmp eq i64 %186, 0
  br i1 %190, label %205, label %191

191:                                              ; preds = %219, %185
  %192 = phi i64 [ %186, %185 ], [ %224, %219 ]
  %193 = phi i32 [ %187, %185 ], [ %221, %219 ]
  %194 = phi i32 [ %188, %185 ], [ %220, %219 ]
  %195 = phi ptr [ %189, %185 ], [ %212, %219 ]
  %196 = and i64 %192, 1
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %240

198:                                              ; preds = %191, %198
  %199 = phi i32 [ %202, %198 ], [ %193, %191 ]
  %200 = phi i64 [ %201, %198 ], [ %192, %191 ]
  %201 = lshr exact i64 %200, 1
  %202 = add i32 %199, 1
  %203 = and i64 %200, 2
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %198, label %240, !llvm.loop !127

205:                                              ; preds = %185
  %206 = add i32 %187, 63
  %207 = and i32 %206, -64
  %208 = add i32 %188, 1
  br label %209

209:                                              ; preds = %236, %205
  %210 = phi i64 [ %186, %205 ], [ %231, %236 ]
  %211 = phi i32 [ %207, %205 ], [ %239, %236 ]
  %212 = phi ptr [ %189, %205 ], [ %234, %236 ]
  %213 = phi i32 [ %208, %205 ], [ 0, %236 ]
  %214 = icmp eq i32 %213, 2
  br i1 %214, label %230, label %215

215:                                              ; preds = %209
  %216 = add i32 %211, 128
  %217 = shl i32 %213, 6
  %218 = sub i32 %216, %217
  br label %219

219:                                              ; preds = %215, %226
  %220 = phi i32 [ %228, %226 ], [ %213, %215 ]
  %221 = phi i32 [ %227, %226 ], [ %211, %215 ]
  %222 = zext i32 %220 to i64
  %223 = getelementptr inbounds %struct.bitmap_element_def, ptr %212, i64 0, i32 3, i64 %222
  %224 = load i64, ptr %223, align 8, !tbaa !75
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %191

226:                                              ; preds = %219
  %227 = add i32 %221, 64
  %228 = add i32 %220, 1
  %229 = icmp eq i32 %228, 2
  br i1 %229, label %230, label %219, !llvm.loop !128

230:                                              ; preds = %226, %209
  %231 = phi i64 [ %210, %209 ], [ %224, %226 ]
  %232 = phi i32 [ %211, %209 ], [ %218, %226 ]
  %233 = phi i32 [ %213, %209 ], [ 2, %226 ]
  %234 = load ptr, ptr %212, align 8, !tbaa !129
  %235 = icmp eq ptr %234, null
  br i1 %235, label %240, label %236

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct.bitmap_element_def, ptr %234, i64 0, i32 2
  %238 = load i32, ptr %237, align 8, !tbaa !125
  %239 = shl i32 %238, 7
  br label %209, !llvm.loop !130

240:                                              ; preds = %230, %198, %191
  %241 = phi i64 [ %192, %191 ], [ %201, %198 ], [ %231, %230 ]
  %242 = phi i32 [ %193, %191 ], [ %202, %198 ], [ %232, %230 ]
  %243 = phi i32 [ %194, %191 ], [ %194, %198 ], [ %233, %230 ]
  %244 = phi ptr [ %195, %191 ], [ %195, %198 ], [ %234, %230 ]
  %245 = phi i1 [ false, %191 ], [ false, %198 ], [ true, %230 ]
  br i1 %245, label %259, label %246

246:                                              ; preds = %240
  %247 = load ptr, ptr @uid_to_canon_type, align 8, !tbaa !35
  %248 = sext i32 %242 to i64
  %249 = tail call ptr @splay_tree_lookup(ptr noundef %247, i64 noundef %248) #18
  %250 = icmp eq ptr %249, null
  br i1 %250, label %255, label %251

251:                                              ; preds = %246
  %252 = getelementptr inbounds %struct.splay_tree_node_s, ptr %249, i64 0, i32 1
  %253 = load i64, ptr %252, align 8, !tbaa !59
  %254 = inttoptr i64 %253 to ptr
  br label %255

255:                                              ; preds = %246, %251
  %256 = phi ptr [ %254, %251 ], [ null, %246 ]
  tail call fastcc void @close_type_full_escape(ptr noundef %256)
  %257 = lshr i64 %241, 1
  %258 = add i32 %242, 1
  br label %185, !llvm.loop !154

259:                                              ; preds = %240, %166, %4, %1
  ret void
}

declare ptr @splay_tree_min(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @close_addressof_down(i32 noundef %0) unnamed_addr #10 !prof !34 {
  %2 = load ptr, ptr @uid_to_addressof_down_map, align 8, !tbaa !35
  %3 = sext i32 %0 to i64
  %4 = tail call ptr @splay_tree_lookup(ptr noundef %2, i64 noundef %3) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %106, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.splay_tree_node_s, ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !59
  %9 = inttoptr i64 %8 to ptr
  %10 = load ptr, ptr @been_there_done_that, align 8, !tbaa !35
  %11 = tail call i32 @bitmap_bit_p(ptr noundef %10, i32 noundef %0) #18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %106

13:                                               ; preds = %6
  %14 = load ptr, ptr @been_there_done_that, align 8, !tbaa !35
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %14, i32 noundef %0) #18
  %16 = load ptr, ptr @global_types_full_escape, align 8, !tbaa !35
  %17 = tail call i32 @bitmap_bit_p(ptr noundef %16, i32 noundef %0) #18
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  tail call void @bitmap_obstack_free(ptr noundef %9) #18
  %20 = load ptr, ptr @uid_to_addressof_down_map, align 8, !tbaa !35
  tail call void @splay_tree_remove(ptr noundef %20, i64 noundef %3) #18
  br label %106

21:                                               ; preds = %13
  %22 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @ipa_obstack) #18
  %23 = load ptr, ptr %9, align 8, !tbaa !123
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, ptr @bitmap_zero_bits, ptr %23
  %26 = getelementptr inbounds %struct.bitmap_element_def, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !125
  %28 = shl i32 %27, 7
  %29 = getelementptr inbounds %struct.bitmap_element_def, ptr %25, i64 0, i32 3
  %30 = load i64, ptr %29, align 8, !tbaa !75
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = or disjoint i32 %28, %32
  br label %34

34:                                               ; preds = %101, %21
  %35 = phi i32 [ 0, %21 ], [ %90, %101 ]
  %36 = phi i64 [ %30, %21 ], [ %102, %101 ]
  %37 = phi ptr [ %25, %21 ], [ %92, %101 ]
  %38 = phi i32 [ %33, %21 ], [ %103, %101 ]
  %39 = icmp eq i64 %36, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %68, %34
  %41 = phi i32 [ %35, %34 ], [ %69, %68 ]
  %42 = phi i64 [ %36, %34 ], [ %73, %68 ]
  %43 = phi ptr [ %37, %34 ], [ %60, %68 ]
  %44 = phi i32 [ %38, %34 ], [ %70, %68 ]
  %45 = and i64 %42, 1
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %89

47:                                               ; preds = %40, %47
  %48 = phi i32 [ %51, %47 ], [ %44, %40 ]
  %49 = phi i64 [ %50, %47 ], [ %42, %40 ]
  %50 = lshr exact i64 %49, 1
  %51 = add i32 %48, 1
  %52 = and i64 %49, 2
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %47, label %89, !llvm.loop !127

54:                                               ; preds = %34
  %55 = add i32 %38, 63
  %56 = and i32 %55, -64
  %57 = add i32 %35, 1
  br label %58

58:                                               ; preds = %85, %54
  %59 = phi i64 [ %36, %54 ], [ %80, %85 ]
  %60 = phi ptr [ %37, %54 ], [ %83, %85 ]
  %61 = phi i32 [ %56, %54 ], [ %88, %85 ]
  %62 = phi i32 [ %57, %54 ], [ 0, %85 ]
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %79, label %64

64:                                               ; preds = %58
  %65 = add i32 %61, 128
  %66 = shl i32 %62, 6
  %67 = sub i32 %65, %66
  br label %68

68:                                               ; preds = %64, %75
  %69 = phi i32 [ %77, %75 ], [ %62, %64 ]
  %70 = phi i32 [ %76, %75 ], [ %61, %64 ]
  %71 = zext i32 %69 to i64
  %72 = getelementptr inbounds %struct.bitmap_element_def, ptr %60, i64 0, i32 3, i64 %71
  %73 = load i64, ptr %72, align 8, !tbaa !75
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %40

75:                                               ; preds = %68
  %76 = add i32 %70, 64
  %77 = add i32 %69, 1
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %68, !llvm.loop !128

79:                                               ; preds = %75, %58
  %80 = phi i64 [ %59, %58 ], [ %73, %75 ]
  %81 = phi i32 [ %61, %58 ], [ %67, %75 ]
  %82 = phi i32 [ %62, %58 ], [ 2, %75 ]
  %83 = load ptr, ptr %60, align 8, !tbaa !129
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.bitmap_element_def, ptr %83, i64 0, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !125
  %88 = shl i32 %87, 7
  br label %58, !llvm.loop !130

89:                                               ; preds = %79, %47, %40
  %90 = phi i32 [ %41, %40 ], [ %41, %47 ], [ %82, %79 ]
  %91 = phi i64 [ %42, %40 ], [ %50, %47 ], [ %80, %79 ]
  %92 = phi ptr [ %43, %40 ], [ %43, %47 ], [ %83, %79 ]
  %93 = phi i32 [ %44, %40 ], [ %51, %47 ], [ %81, %79 ]
  %94 = phi i1 [ false, %40 ], [ false, %47 ], [ true, %79 ]
  br i1 %94, label %104, label %95

95:                                               ; preds = %89
  %96 = tail call fastcc ptr @close_addressof_down(i32 noundef %93)
  %97 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %22, i32 noundef %93) #18
  %98 = icmp eq ptr %96, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  %100 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %22, ptr noundef nonnull %96) #18
  br label %101

101:                                              ; preds = %99, %95
  %102 = lshr i64 %91, 1
  %103 = add i32 %93, 1
  br label %34, !llvm.loop !155

104:                                              ; preds = %89
  %105 = ptrtoint ptr %22 to i64
  store i64 %105, ptr %7, align 8, !tbaa !59
  tail call void @bitmap_obstack_free(ptr noundef nonnull %9) #18
  br label %106

106:                                              ; preds = %6, %1, %104, %19
  %107 = phi ptr [ null, %19 ], [ %22, %104 ], [ null, %1 ], [ %9, %6 ]
  ret ptr %107
}

declare ptr @splay_tree_successor(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @splay_tree_remove(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare void @splay_tree_delete(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #3

declare ptr @splay_tree_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @splay_tree_compare_ints(i64 noundef, i64 noundef) #3

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_type_brand(i64 noundef %0, i64 noundef %1) #14 !prof !34 {
  %3 = inttoptr i64 %0 to ptr
  %4 = inttoptr i64 %1 to ptr
  %5 = load ptr, ptr %3, align 8, !tbaa !64
  %6 = load ptr, ptr %4, align 8, !tbaa !64
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.type_brand_s, ptr %4, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !66
  %12 = getelementptr inbounds %struct.type_brand_s, ptr %3, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !66
  %14 = sub nsw i32 %11, %13
  br label %15

15:                                               ; preds = %2, %9
  %16 = phi i32 [ %14, %9 ], [ %7, %2 ]
  ret i32 %16
}

declare i32 @splay_tree_compare_pointers(i64 noundef, i64 noundef) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind uwtable
define internal fastcc void @mark_interesting_type(ptr noundef %0, i32 noundef %1) unnamed_addr #10 !prof !34 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %2, %10
  %5 = phi ptr [ %12, %10 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %22 [
    i16 10, label %10
    i16 12, label %10
    i16 16, label %13
    i16 18, label %13
    i16 17, label %13
  ]

10:                                               ; preds = %4, %4
  %11 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  br label %4, !llvm.loop !54

13:                                               ; preds = %4, %4, %4
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = load i64, ptr %0, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %18 [
    i16 10, label %19
    i16 12, label %19
  ]

18:                                               ; preds = %15, %13
  br label %19

19:                                               ; preds = %15, %15, %18
  %20 = phi i32 [ %1, %18 ], [ 1, %15 ], [ 1, %15 ]
  %21 = tail call fastcc ptr @mark_type(ptr noundef nonnull %0, i32 noundef %20)
  br label %22

22:                                               ; preds = %4, %19, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @check_tree(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !34 {
  br label %2

2:                                                ; preds = %45, %1
  %3 = phi ptr [ %0, %1 ], [ %47, %45 ]
  br label %4

4:                                                ; preds = %19, %2
  %5 = phi ptr [ %3, %2 ], [ %21, %19 ]
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %8 [
    i16 42, label %13
    i16 41, label %13
    i16 45, label %13
    i16 46, label %13
    i16 118, label %13
    i16 43, label %13
    i16 44, label %13
  ]

8:                                                ; preds = %4
  %9 = trunc i64 %6 to i32
  %10 = and i32 %9, 65535
  %11 = add nsw i32 %10, -47
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %22, label %25

13:                                               ; preds = %4, %4, %4, %4, %4, %4, %4
  %14 = and i64 %6, 65535
  %15 = icmp eq i64 %14, 45
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  tail call fastcc void @check_operand(ptr noundef %18)
  br label %19

19:                                               ; preds = %16, %13
  %20 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  br label %4, !llvm.loop !156

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  tail call fastcc void @check_tree(ptr noundef %24)
  br label %25

25:                                               ; preds = %8, %22
  %26 = load i64, ptr %5, align 8
  %27 = trunc i64 %26 to i16
  switch i16 %27, label %33 [
    i16 141, label %28
    i16 32, label %38
    i16 34, label %39
    i16 36, label %39
  ]

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.tree_ssa_name, ptr %5, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = load i64, ptr %30, align 8
  %32 = trunc i64 %31 to i16
  switch i16 %32, label %33 [
    i16 32, label %36
    i16 34, label %36
    i16 36, label %36
  ]

33:                                               ; preds = %25, %28
  %34 = and i64 %26, 65535
  %35 = icmp eq i64 %34, 29
  br i1 %35, label %36, label %49

36:                                               ; preds = %33, %28, %28, %28
  switch i16 %27, label %39 [
    i16 29, label %37
    i16 32, label %38
  ]

37:                                               ; preds = %36
  tail call fastcc void @check_function_parameter_and_return_types(ptr noundef nonnull %5, i8 noundef zeroext 1)
  br label %39

38:                                               ; preds = %25, %36
  tail call fastcc void @has_proper_scope_for_analysis(ptr noundef nonnull %5)
  br label %39

39:                                               ; preds = %25, %25, %36, %37, %38
  %40 = load i64, ptr %5, align 8
  %41 = and i64 %40, 65535
  %42 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !50
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %2

49:                                               ; preds = %33, %39, %45
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @check_operand(ptr noundef readonly %0) unnamed_addr #10 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %8 [
    i16 29, label %6
    i16 32, label %7
  ]

6:                                                ; preds = %3
  tail call fastcc void @check_function_parameter_and_return_types(ptr noundef nonnull %0, i8 noundef zeroext 1)
  br label %8

7:                                                ; preds = %3
  tail call fastcc void @has_proper_scope_for_analysis(ptr noundef nonnull %0)
  br label %8

8:                                                ; preds = %3, %7, %1, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @check_function_parameter_and_return_types(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #10 !prof !34 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %2
  %9 = icmp eq i8 %1, 0
  br label %10

10:                                               ; preds = %8, %19
  %11 = phi ptr [ %6, %8 ], [ %21, %19 ]
  %12 = getelementptr inbounds %struct.tree_list, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %39, label %16

16:                                               ; preds = %10
  %17 = tail call fastcc ptr @get_canon_type(ptr noundef %13, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br i1 %9, label %19, label %18

18:                                               ; preds = %16
  tail call fastcc void @mark_interesting_type(ptr noundef %17, i32 noundef 0)
  br label %19

19:                                               ; preds = %18, %16
  %20 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %10, !llvm.loop !157

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = icmp eq i8 %1, 0
  br label %29

29:                                               ; preds = %27, %35
  %30 = phi ptr [ %25, %27 ], [ %37, %35 ]
  %31 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = tail call fastcc ptr @get_canon_type(ptr noundef %32, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br i1 %28, label %35, label %34

34:                                               ; preds = %29
  tail call fastcc void @mark_interesting_type(ptr noundef %33, i32 noundef 0)
  br label %35

35:                                               ; preds = %34, %29
  %36 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %29, !llvm.loop !158

39:                                               ; preds = %10, %19, %35, %23
  %40 = icmp eq i8 %1, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr %3, align 8, !tbaa !46
  %43 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  %45 = tail call fastcc ptr @get_canon_type(ptr noundef %44, i8 noundef zeroext 0, i8 noundef zeroext 0)
  tail call fastcc void @mark_interesting_type(ptr noundef %45, i32 noundef 0)
  br label %46

46:                                               ; preds = %41, %39
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc void @has_proper_scope_for_analysis(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = tail call fastcc ptr @get_canon_type(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %55, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 8192
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %6, %17
  %12 = phi ptr [ %19, %17 ], [ %4, %6 ]
  %13 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 16
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %55 [
    i16 10, label %17
    i16 12, label %17
    i16 16, label %53
    i16 18, label %53
    i16 17, label %53
  ]

17:                                               ; preds = %11, %11
  %18 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  br label %11, !llvm.loop !54

20:                                               ; preds = %6
  %21 = load i64, ptr %0, align 8
  %22 = and i64 %21, 524288
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  %25 = and i64 %21, 67108864
  %26 = and i64 %8, 33554432
  %27 = or disjoint i64 %25, %26
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %55, label %29

29:                                               ; preds = %24
  %30 = and i64 %21, 134217728
  %31 = or disjoint i64 %30, %26
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %55, label %33

33:                                               ; preds = %29
  %34 = and i64 %21, 1048576
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %38) #18
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40, %36, %33
  br label %44

44:                                               ; preds = %43, %50
  %45 = phi ptr [ %52, %50 ], [ %4, %43 ]
  %46 = getelementptr inbounds %struct.tree_type, ptr %45, i64 0, i32 16
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = load i64, ptr %47, align 8
  %49 = trunc i64 %48 to i16
  switch i16 %49, label %55 [
    i16 10, label %50
    i16 12, label %50
    i16 16, label %53
    i16 18, label %53
    i16 17, label %53
  ]

50:                                               ; preds = %44, %44
  %51 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  br label %44, !llvm.loop !54

53:                                               ; preds = %11, %11, %11, %44, %44, %44
  %54 = tail call fastcc ptr @mark_type(ptr noundef nonnull %4, i32 noundef 1)
  br label %55

55:                                               ; preds = %11, %44, %53, %29, %40, %24, %20, %1
  ret void
}

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_node_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @okay_pointer_operation(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 16
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  switch i32 %0, label %57 [
    i32 65, label %58
    i32 64, label %11
    i32 63, label %11
    i32 66, label %11
  ]

11:                                               ; preds = %3, %3, %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %12 = load i64, ptr %10, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %25 [
    i16 10, label %14
    i16 12, label %14
  ]

14:                                               ; preds = %11, %11
  %15 = load i64, ptr %1, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 141
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i64, ptr %2, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 141
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = call zeroext i8 @is_array_access_through_pointer_and_index(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6), !range !58
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %22, %14, %11, %18
  %26 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = getelementptr inbounds %struct.tree_type, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = load i64, ptr %2, align 8
  %31 = and i64 %30, 65535
  %32 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !50
  %34 = icmp eq i32 %33, 1
  %35 = icmp ne ptr %29, null
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = tail call i32 @multiple_of_p(ptr noundef %39, ptr noundef nonnull %2, ptr noundef nonnull %29) #18
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %37, %25
  %43 = load i64, ptr %1, align 8
  %44 = and i64 %43, 65535
  %45 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !50
  %47 = icmp eq i32 %46, 1
  %48 = select i1 %47, i1 %35, i1 false
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  %52 = tail call i32 @multiple_of_p(ptr noundef %51, ptr noundef nonnull %1, ptr noundef nonnull %29) #18
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %42
  br label %55

55:                                               ; preds = %54, %37, %49, %22
  %56 = phi i8 [ 1, %22 ], [ 0, %54 ], [ 1, %37 ], [ 1, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  br label %58

57:                                               ; preds = %3
  br label %58

58:                                               ; preds = %55, %3, %57
  %59 = phi i8 [ 0, %57 ], [ 1, %3 ], [ %56, %55 ]
  ret i8 %59
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @check_rhs_var(ptr noundef %0) unnamed_addr #10 !prof !34 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 121
  br i1 %4, label %5, label %95

5:                                                ; preds = %1
  %6 = tail call ptr @get_base_var(ptr noundef nonnull %0) #18
  %7 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, %6
  br i1 %9, label %90, label %10

10:                                               ; preds = %5, %86
  %11 = phi ptr [ %88, %86 ], [ %8, %5 ]
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %86 [
    i16 41, label %14
    i16 45, label %82
  ]

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = tail call fastcc ptr @get_canon_type(ptr noundef %20, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %22 = tail call fastcc ptr @get_canon_type(ptr noundef %18, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %23 = icmp ne ptr %21, null
  %24 = icmp ne ptr %22, null
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %86

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !46
  %29 = getelementptr inbounds %struct.tree_type, ptr %22, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !46
  br label %31

31:                                               ; preds = %38, %26
  %32 = phi ptr [ %40, %38 ], [ %21, %26 ]
  %33 = phi i32 [ %41, %38 ], [ 0, %26 ]
  %34 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 16
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = load i64, ptr %35, align 8
  %37 = trunc i64 %36 to i16
  switch i16 %37, label %42 [
    i16 10, label %38
    i16 12, label %38
    i16 16, label %43
    i16 18, label %43
    i16 17, label %43
  ]

38:                                               ; preds = %31, %31
  %39 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = add nuw nsw i32 %33, 1
  br label %31, !llvm.loop !54

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %31, %31, %31, %42
  %44 = phi i32 [ -1, %42 ], [ %33, %31 ], [ %33, %31 ], [ %33, %31 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1170, ptr noundef nonnull @.str.3) #18
  br label %47

47:                                               ; preds = %46, %43
  %48 = load ptr, ptr @uid_to_addressof_down_map, align 8, !tbaa !35
  %49 = sext i32 %28 to i64
  %50 = tail call ptr @splay_tree_lookup(ptr noundef %48, i64 noundef %49) #18
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.splay_tree_node_s, ptr %50, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !59
  %55 = inttoptr i64 %54 to ptr
  br label %61

56:                                               ; preds = %47
  %57 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @ipa_obstack) #18
  %58 = load ptr, ptr @uid_to_addressof_down_map, align 8, !tbaa !35
  %59 = ptrtoint ptr %57 to i64
  %60 = tail call ptr @splay_tree_insert(ptr noundef %58, i64 noundef %49, i64 noundef %59) #18
  br label %61

61:                                               ; preds = %56, %52
  %62 = phi ptr [ %55, %52 ], [ %57, %56 ]
  %63 = load i32, ptr %29, align 8, !tbaa !46
  %64 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %62, i32 noundef %63) #18
  %65 = load ptr, ptr @uid_to_addressof_up_map, align 8, !tbaa !35
  %66 = sext i32 %30 to i64
  %67 = tail call ptr @splay_tree_lookup(ptr noundef %65, i64 noundef %66) #18
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.splay_tree_node_s, ptr %67, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !59
  %72 = inttoptr i64 %71 to ptr
  br label %78

73:                                               ; preds = %61
  %74 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @ipa_obstack) #18
  %75 = load ptr, ptr @uid_to_addressof_up_map, align 8, !tbaa !35
  %76 = ptrtoint ptr %74 to i64
  %77 = tail call ptr @splay_tree_insert(ptr noundef %75, i64 noundef %66, i64 noundef %76) #18
  br label %78

78:                                               ; preds = %73, %69
  %79 = phi ptr [ %72, %69 ], [ %74, %73 ]
  %80 = load i32, ptr %27, align 8, !tbaa !46
  %81 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %79, i32 noundef %80) #18
  br label %86

82:                                               ; preds = %10
  %83 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !46
  %85 = tail call fastcc ptr @get_canon_type(ptr noundef %84, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %86

86:                                               ; preds = %82, %78, %14, %10
  %87 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !46
  %89 = icmp eq ptr %88, %6
  br i1 %89, label %90, label %10, !llvm.loop !159

90:                                               ; preds = %86, %5
  %91 = load i64, ptr %6, align 8
  %92 = and i64 %91, 65535
  %93 = icmp eq i64 %92, 32
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  tail call fastcc void @has_proper_scope_for_analysis(ptr noundef nonnull %6)
  br label %95

95:                                               ; preds = %1, %90, %94
  tail call fastcc void @check_tree(ptr noundef nonnull %0)
  ret void
}

declare i32 @multiple_of_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_base_var(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

declare i32 @cgraph_function_body_availability(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @subtype_map_for_uid(i32 noundef %0, i8 noundef zeroext %1) unnamed_addr #10 !prof !34 {
  %3 = load ptr, ptr @uid_to_subtype_map, align 8, !tbaa !35
  %4 = sext i32 %0 to i64
  %5 = tail call ptr @splay_tree_lookup(ptr noundef %3, i64 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.splay_tree_node_s, ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !59
  %10 = inttoptr i64 %9 to ptr
  br label %18

11:                                               ; preds = %2
  %12 = icmp eq i8 %1, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @ipa_obstack) #18
  %15 = load ptr, ptr @uid_to_subtype_map, align 8, !tbaa !35
  %16 = ptrtoint ptr %14 to i64
  %17 = tail call ptr @splay_tree_insert(ptr noundef %15, i64 noundef %4, i64 noundef %16) #18
  br label %18

18:                                               ; preds = %11, %13, %7
  %19 = phi ptr [ %10, %7 ], [ %14, %13 ], [ null, %11 ]
  ret ptr %19
}

declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
!54 = distinct !{!54, !52, !53}
!55 = distinct !{!55, !52, !53}
!56 = distinct !{!56, !52, !53}
!57 = distinct !{!57, !52, !53}
!58 = !{i8 0, i8 2}
!59 = !{!60, !42, i64 8}
!60 = !{!"splay_tree_node_s", !42, i64 0, !42, i64 8, !36, i64 16, !36, i64 24}
!61 = distinct !{!61, !52, !53}
!62 = distinct !{!62, !52, !53}
!63 = distinct !{!63, !52, !53}
!64 = !{!65, !36, i64 0}
!65 = !{!"type_brand_s", !36, i64 0, !41, i64 8}
!66 = !{!65, !41, i64 8}
!67 = distinct !{!67, !53}
!68 = !{!69, !41, i64 0}
!69 = !{!"cast", !41, i64 0, !36, i64 8}
!70 = !{!69, !36, i64 8}
!71 = !{!72, !36, i64 0}
!72 = !{!"use_optype_d", !36, i64 0, !73, i64 8}
!73 = !{!"ssa_use_operand_d", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24}
!74 = !{!73, !36, i64 24}
!75 = !{!42, !42, i64 0}
!76 = distinct !{!76, !52, !53}
!77 = distinct !{!77, !52, !53}
!78 = distinct !{!78, !52, !53}
!79 = !{!"function_entry_count", i64 1}
!80 = !{!"ipa-type-escape.c;gate_type_escape_vars"}
!81 = !{!"branch_weights", i32 1, i32 0}
!82 = !{!83, !36, i64 0}
!83 = !{!"varpool_node", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !41, i64 36, !41, i64 36, !41, i64 36, !41, i64 36, !41, i64 36, !41, i64 36}
!84 = distinct !{!84, !52, !53}
!85 = !{!86, !36, i64 96}
!86 = !{!"cgraph_node", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !87, i64 144, !89, i64 184, !90, i64 224, !91, i64 232, !92, i64 256, !42, i64 288, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 309, !41, i64 309}
!87 = !{!"cgraph_local_info", !36, i64 0, !88, i64 8, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32}
!88 = !{!"inline_summary", !42, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20}
!89 = !{!"cgraph_global_info", !42, i64 0, !42, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !37, i64 36}
!90 = !{!"cgraph_rtl_info", !41, i64 0}
!91 = !{!"cgraph_clone_info", !36, i64 0, !36, i64 8, !36, i64 16}
!92 = !{!"cgraph_thunk_info", !42, i64 0, !42, i64 8, !36, i64 16, !37, i64 24, !37, i64 25, !37, i64 26}
!93 = !{!86, !36, i64 0}
!94 = !{!95, !36, i64 8}
!95 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!96 = !{!97, !36, i64 0}
!97 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!98 = !{!99, !36, i64 56}
!99 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!100 = !{!97, !36, i64 8}
!101 = distinct !{!101, !52, !53}
!102 = !{!99, !41, i64 96}
!103 = !{!104}
!104 = distinct !{!104, !105, !"gsi_start_bb: argument 0"}
!105 = distinct !{!105, !"gsi_start_bb"}
!106 = !{!107, !36, i64 0}
!107 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!108 = !{!109, !36, i64 0}
!109 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!110 = !{!111, !36, i64 0}
!111 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!112 = distinct !{!112, !52, !53}
!113 = distinct !{!113, !52, !53}
!114 = distinct !{!114, !52, !53}
!115 = distinct !{!115, !52, !53}
!116 = distinct !{!116, !52, !53}
!117 = distinct !{!117, !52, !53}
!118 = distinct !{!118, !52, !53}
!119 = !{!111, !36, i64 16}
!120 = distinct !{!120, !52, !53}
!121 = distinct !{!121, !52, !53}
!122 = distinct !{!122, !52, !53}
!123 = !{!124, !36, i64 0}
!124 = !{!"bitmap_head_def", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24}
!125 = !{!126, !41, i64 16}
!126 = !{!"bitmap_element_def", !36, i64 0, !36, i64 8, !41, i64 16, !37, i64 24}
!127 = distinct !{!127, !52, !53}
!128 = distinct !{!128, !52, !53}
!129 = !{!126, !36, i64 0}
!130 = distinct !{!130, !53}
!131 = distinct !{!131, !52, !53}
!132 = distinct !{!132, !52, !53}
!133 = distinct !{!133, !52, !53}
!134 = !{!60, !42, i64 0}
!135 = distinct !{!135, !52, !53}
!136 = distinct !{!136, !52, !53}
!137 = distinct !{!137, !52, !53}
!138 = distinct !{!138, !52, !53}
!139 = distinct !{!139, !52, !53}
!140 = distinct !{!140, !52, !53}
!141 = distinct !{!141, !52, !53}
!142 = !{!143, !41, i64 0}
!143 = !{!"VEC_tree_base", !41, i64 0, !41, i64 4, !37, i64 8}
!144 = distinct !{!144, !52, !53}
!145 = distinct !{!145, !52, !53}
!146 = distinct !{!146, !52, !53}
!147 = distinct !{!147, !52, !53}
!148 = distinct !{!148, !52, !53}
!149 = distinct !{!149, !52, !53}
!150 = distinct !{!150, !52, !53}
!151 = distinct !{!151, !52, !53}
!152 = distinct !{!152, !52, !53}
!153 = distinct !{!153, !52, !53}
!154 = distinct !{!154, !52, !53}
!155 = distinct !{!155, !52, !53}
!156 = distinct !{!156, !52, !53}
!157 = distinct !{!157, !52, !53}
!158 = distinct !{!158, !52, !53}
!159 = distinct !{!159, !52, !53}

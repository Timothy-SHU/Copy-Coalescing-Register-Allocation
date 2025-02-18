; ModuleID = 'attribs.c'
source_filename = "attribs.c"
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
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.attribute_spec = type { ptr, i32, i32, i8, i8, i8, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.substring = type { ptr, i32 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@attribute_hash = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [10 x i8] c"attribs.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@attributes_initialized = internal unnamed_addr global i1 false, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"optimize\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%qE attribute directive ignored\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"wrong number of arguments specified for %qE attribute\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"%qE attribute does not apply to types\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"%qE attribute only applies to function types\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"type attributes ignored after type is already defined\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@attribute_tables = internal unnamed_addr global [4 x ptr] zeroinitializer, align 16
@empty_attribute_table = internal constant [1 x %struct.attribute_spec] zeroinitializer, align 16

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !49 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !50
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !49 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !50
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !49 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !60

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !54
  %11 = load i8, ptr %3, align 1, !tbaa !61
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !49 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !60

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !54
  %11 = load i8, ptr %3, align 1, !tbaa !61
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !49 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !60

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #13
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !54
  %11 = load i8, ptr %3, align 1, !tbaa !61
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !49 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !50
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !49 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !60

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !62
  store i8 %12, ptr %4, align 1, !tbaa !61
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !49 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !60

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !62
  store i8 %12, ptr %4, align 1, !tbaa !61
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !49 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !50
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !60

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !62
  store i8 %12, ptr %4, align 1, !tbaa !61
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !49 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #13
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !49 {
  %2 = load i32, ptr %0, align 8, !tbaa !64
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !49 {
  %2 = load i32, ptr %0, align 8, !tbaa !64
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !49 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !65
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !49 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !65
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !49 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !49 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !49 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !49 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #13
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
  br i1 %23, label %7, label %24, !llvm.loop !66

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !49 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @register_attribute(ptr noundef %0) local_unnamed_addr #9 !prof !49 {
  %2 = alloca %struct.substring, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  %3 = load ptr, ptr %0, align 8, !tbaa !69
  store ptr %3, ptr %2, align 8, !tbaa !71
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3)
  %5 = trunc i64 %4 to i32
  %6 = getelementptr inbounds %struct.substring, ptr %2, i64 0, i32 1
  store i32 %5, ptr %6, align 8, !tbaa !73
  %7 = load ptr, ptr @attribute_hash, align 8, !tbaa !50
  %8 = load i8, ptr %3, align 1, !tbaa !61
  %9 = sext i8 %8 to i32
  %10 = shl i64 %4, 32
  %11 = ashr exact i64 %10, 32
  %12 = getelementptr i8, ptr %3, i64 %11
  %13 = getelementptr i8, ptr %12, i64 -1
  %14 = load i8, ptr %13, align 1, !tbaa !61
  %15 = sext i8 %14 to i32
  %16 = shl nsw i32 %15, 8
  %17 = shl nsw i32 %5, 16
  %18 = add i32 %17, %9
  %19 = add i32 %18, %16
  %20 = call ptr @htab_find_slot_with_hash(ptr noundef %7, ptr noundef nonnull %2, i32 noundef %19, i32 noundef 1) #13
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23, !prof !74

23:                                               ; preds = %1
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 206, ptr noundef nonnull @.str.1) #13
  br label %24

24:                                               ; preds = %1, %23
  store ptr %0, ptr %20, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @lookup_attribute_spec(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !49 {
  %2 = alloca %struct.substring, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  %3 = getelementptr inbounds %struct.tree_identifier, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  store ptr %4, ptr %2, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.tree_identifier, ptr %0, i64 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.substring, ptr %2, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !73
  %8 = icmp sgt i32 %6, 4
  br i1 %8, label %9, label %29, !prof !75

9:                                                ; preds = %1
  %10 = load i8, ptr %4, align 1, !tbaa !61
  %11 = icmp eq i8 %10, 95
  br i1 %11, label %12, label %29, !prof !76

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !61
  %15 = icmp eq i8 %14, 95
  br i1 %15, label %16, label %29, !prof !77

16:                                               ; preds = %12
  %17 = zext nneg i32 %6 to i64
  %18 = getelementptr i8, ptr %4, i64 %17
  %19 = getelementptr i8, ptr %18, i64 -1
  %20 = load i8, ptr %19, align 1, !tbaa !61
  %21 = icmp eq i8 %20, 95
  br i1 %21, label %22, label %29, !prof !77

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %18, i64 -2
  %24 = load i8, ptr %23, align 1, !tbaa !61
  %25 = icmp eq i8 %24, 95
  br i1 %25, label %26, label %29, !prof !77

26:                                               ; preds = %22
  %27 = add nsw i32 %6, -4
  store i32 %27, ptr %7, align 8, !tbaa !73
  %28 = getelementptr inbounds i8, ptr %4, i64 2
  store ptr %28, ptr %2, align 8, !tbaa !71
  br label %29

29:                                               ; preds = %1, %9, %12, %16, %22, %26
  %30 = load ptr, ptr @attribute_hash, align 8, !tbaa !50
  %31 = load ptr, ptr %2, align 8, !tbaa !71
  %32 = load i32, ptr %7, align 8, !tbaa !73
  %33 = load i8, ptr %31, align 1, !tbaa !61
  %34 = sext i8 %33 to i32
  %35 = sext i32 %32 to i64
  %36 = getelementptr i8, ptr %31, i64 %35
  %37 = getelementptr i8, ptr %36, i64 -1
  %38 = load i8, ptr %37, align 1, !tbaa !61
  %39 = sext i8 %38 to i32
  %40 = shl nsw i32 %39, 8
  %41 = shl nsw i32 %32, 16
  %42 = add i32 %41, %34
  %43 = add i32 %42, %40
  %44 = call ptr @htab_find_with_hash(ptr noundef %30, ptr noundef nonnull %2, i32 noundef %43) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  ret ptr %44
}

declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @decl_attributes(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !78 {
  %4 = alloca %struct.substring, align 8
  %5 = alloca %struct.substring, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 8
  store ptr %1, ptr %6, align 8, !tbaa !50
  %9 = load ptr, ptr %0, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = load ptr, ptr @global_trees, align 16, !tbaa !50
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %450, label %14, !prof !79

14:                                               ; preds = %3
  %15 = load i1, ptr @attributes_initialized, align 1
  br i1 %15, label %73, label %16, !prof !80

16:                                               ; preds = %14
  %17 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 28), align 8, !tbaa !81
  store ptr %17, ptr @attribute_tables, align 16, !tbaa !50
  %18 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 27), align 8, !tbaa !89
  store ptr %18, ptr getelementptr inbounds ([4 x ptr], ptr @attribute_tables, i64 0, i64 1), align 8, !tbaa !50
  %19 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 29), align 8, !tbaa !90
  store ptr %19, ptr getelementptr inbounds ([4 x ptr], ptr @attribute_tables, i64 0, i64 2), align 16, !tbaa !50
  %20 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 13), align 8, !tbaa !91
  store ptr %20, ptr getelementptr inbounds ([4 x ptr], ptr @attribute_tables, i64 0, i64 3), align 8, !tbaa !50
  br label %21

21:                                               ; preds = %16, %27
  %22 = phi i64 [ 0, %16 ], [ %28, %27 ]
  %23 = getelementptr inbounds [4 x ptr], ptr @attribute_tables, i64 0, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !50
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27, !prof !103

26:                                               ; preds = %21
  store ptr @empty_attribute_table, ptr %23, align 8, !tbaa !50
  br label %27

27:                                               ; preds = %26, %21
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, 4
  br i1 %29, label %30, label %21, !prof !103, !llvm.loop !104

30:                                               ; preds = %27
  %31 = tail call ptr @htab_create(i64 noundef 200, ptr noundef nonnull @hash_attr, ptr noundef nonnull @eq_attr, ptr noundef null) #13
  store ptr %31, ptr @attribute_hash, align 8, !tbaa !50
  %32 = getelementptr inbounds %struct.substring, ptr %5, i64 0, i32 1
  br label %33

33:                                               ; preds = %30, %68
  %34 = phi i64 [ 0, %30 ], [ %69, %68 ]
  %35 = getelementptr inbounds [4 x ptr], ptr @attribute_tables, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !50
  %37 = load ptr, ptr %36, align 8, !tbaa !69
  %38 = icmp eq ptr %37, null
  br i1 %38, label %68, label %39, !prof !105

39:                                               ; preds = %33, %62
  %40 = phi i64 [ %63, %62 ], [ 0, %33 ]
  %41 = phi ptr [ %65, %62 ], [ %36, %33 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %42 = load ptr, ptr %41, align 8, !tbaa !69
  store ptr %42, ptr %5, align 8, !tbaa !71
  %43 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %42)
  %44 = trunc i64 %43 to i32
  store i32 %44, ptr %32, align 8, !tbaa !73
  %45 = load ptr, ptr @attribute_hash, align 8, !tbaa !50
  %46 = load i8, ptr %42, align 1, !tbaa !61
  %47 = sext i8 %46 to i32
  %48 = shl i64 %43, 32
  %49 = ashr exact i64 %48, 32
  %50 = getelementptr i8, ptr %42, i64 %49
  %51 = getelementptr i8, ptr %50, i64 -1
  %52 = load i8, ptr %51, align 1, !tbaa !61
  %53 = sext i8 %52 to i32
  %54 = shl nsw i32 %53, 8
  %55 = shl nsw i32 %44, 16
  %56 = add i32 %55, %47
  %57 = add i32 %56, %54
  %58 = call ptr @htab_find_slot_with_hash(ptr noundef %45, ptr noundef nonnull %5, i32 noundef %57, i32 noundef 1) #13
  %59 = load ptr, ptr %58, align 8, !tbaa !50
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61, !prof !74

61:                                               ; preds = %39
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 206, ptr noundef nonnull @.str.1) #13
  br label %62

62:                                               ; preds = %39, %61
  store ptr %41, ptr %58, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  %63 = add nuw i64 %40, 1
  %64 = load ptr, ptr %35, align 8, !tbaa !50
  %65 = getelementptr inbounds %struct.attribute_spec, ptr %64, i64 %63
  %66 = load ptr, ptr %65, align 8, !tbaa !69
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %39, !prof !106, !llvm.loop !107

68:                                               ; preds = %62, %33
  %69 = add nuw nsw i64 %34, 1
  %70 = icmp eq i64 %69, 4
  br i1 %70, label %71, label %33, !prof !103, !llvm.loop !108

71:                                               ; preds = %68
  %72 = call i32 @invoke_plugin_callbacks(i32 noundef 11, ptr noundef null) #13
  store i1 true, ptr @attributes_initialized, align 1
  br label %73

73:                                               ; preds = %71, %14
  %74 = load ptr, ptr %0, align 8, !tbaa !50
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 29
  %78 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 130), align 16
  %79 = icmp ne ptr %78, null
  %80 = select i1 %77, i1 %79, i1 false, !prof !109
  br i1 %80, label %81, label %95, !prof !79

81:                                               ; preds = %73
  %82 = load ptr, ptr %6, align 8, !tbaa !50
  %83 = call ptr @lookup_attribute(ptr noundef nonnull @.str.2, ptr noundef %82) #13
  %84 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 130), align 16, !tbaa !50
  %85 = call ptr @copy_list(ptr noundef %84) #13
  %86 = icmp eq ptr %83, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = call ptr @get_identifier(ptr noundef nonnull @.str.2) #13
  %89 = load ptr, ptr %6, align 8, !tbaa !50
  %90 = call ptr @tree_cons_stat(ptr noundef %88, ptr noundef %85, ptr noundef %89) #13
  store ptr %90, ptr %6, align 8, !tbaa !50
  br label %95

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.tree_list, ptr %83, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !61
  %94 = call ptr @chainon(ptr noundef %85, ptr noundef %93) #13
  store ptr %94, ptr %92, align 8, !tbaa !61
  br label %95

95:                                               ; preds = %87, %91, %73
  %96 = load ptr, ptr %0, align 8, !tbaa !50
  %97 = load i64, ptr %96, align 8
  %98 = and i64 %97, 65535
  %99 = icmp eq i64 %98, 29
  br i1 %99, label %100, label %109, !prof !109

100:                                              ; preds = %95
  %101 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !50
  %102 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 125), align 8, !tbaa !50
  %103 = icmp eq ptr %101, %102
  br i1 %103, label %109, label %104, !prof !110

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.tree_function_decl, ptr %96, i64 0, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !61
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store ptr %101, ptr %105, align 8, !tbaa !61
  br label %109

109:                                              ; preds = %108, %104, %100, %95
  %110 = load ptr, ptr %0, align 8, !tbaa !50
  %111 = load i64, ptr %110, align 8
  %112 = and i64 %111, 65535
  %113 = icmp eq i64 %112, 29
  %114 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 129), align 8
  %115 = icmp ne ptr %114, null
  %116 = select i1 %113, i1 %115, i1 false, !prof !109
  br i1 %116, label %117, label %135, !prof !79

117:                                              ; preds = %109
  %118 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 107), align 8, !tbaa !111
  %119 = call zeroext i8 %118(ptr noundef nonnull %110, ptr noundef null, ptr noundef nonnull %114, i32 noundef 0) #13
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %135, label %121

121:                                              ; preds = %117
  %122 = load ptr, ptr %6, align 8, !tbaa !50
  %123 = call ptr @lookup_attribute(ptr noundef nonnull @.str.3, ptr noundef %122) #13
  %124 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 129), align 8, !tbaa !50
  %125 = call ptr @copy_list(ptr noundef %124) #13
  %126 = icmp eq ptr %123, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = call ptr @get_identifier(ptr noundef nonnull @.str.3) #13
  %129 = load ptr, ptr %6, align 8, !tbaa !50
  %130 = call ptr @tree_cons_stat(ptr noundef %128, ptr noundef %125, ptr noundef %129) #13
  store ptr %130, ptr %6, align 8, !tbaa !50
  br label %135

131:                                              ; preds = %121
  %132 = getelementptr inbounds %struct.tree_list, ptr %123, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !61
  %134 = call ptr @chainon(ptr noundef %125, ptr noundef %133) #13
  store ptr %134, ptr %132, align 8, !tbaa !61
  br label %135

135:                                              ; preds = %127, %131, %117, %109
  %136 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 16), align 8, !tbaa !112
  %137 = load ptr, ptr %0, align 8, !tbaa !50
  call void %136(ptr noundef %137, ptr noundef nonnull %6) #13, !prof !113
  %138 = load ptr, ptr %6, align 8, !tbaa !61
  %139 = icmp eq ptr %138, null
  br i1 %139, label %450, label %140, !prof !114

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.substring, ptr %4, i64 0, i32 1
  br label %142

142:                                              ; preds = %140, %444
  %143 = phi ptr [ %138, %140 ], [ %448, %444 ]
  %144 = phi i32 [ %2, %140 ], [ %446, %444 ]
  %145 = phi ptr [ null, %140 ], [ %445, %444 ]
  %146 = getelementptr inbounds %struct.tree_list, ptr %143, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !61
  %148 = getelementptr inbounds %struct.tree_list, ptr %143, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %150 = getelementptr inbounds %struct.tree_identifier, ptr %147, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !61
  store ptr %151, ptr %4, align 8, !tbaa !71
  %152 = getelementptr inbounds %struct.tree_identifier, ptr %147, i64 0, i32 1, i32 1
  %153 = load i32, ptr %152, align 8, !tbaa !61
  store i32 %153, ptr %141, align 8, !tbaa !73
  %154 = icmp sgt i32 %153, 4
  br i1 %154, label %155, label %175, !prof !75

155:                                              ; preds = %142
  %156 = load i8, ptr %151, align 1, !tbaa !61
  %157 = icmp eq i8 %156, 95
  br i1 %157, label %158, label %175, !prof !76

158:                                              ; preds = %155
  %159 = getelementptr inbounds i8, ptr %151, i64 1
  %160 = load i8, ptr %159, align 1, !tbaa !61
  %161 = icmp eq i8 %160, 95
  br i1 %161, label %162, label %175, !prof !77

162:                                              ; preds = %158
  %163 = zext nneg i32 %153 to i64
  %164 = getelementptr i8, ptr %151, i64 %163
  %165 = getelementptr i8, ptr %164, i64 -1
  %166 = load i8, ptr %165, align 1, !tbaa !61
  %167 = icmp eq i8 %166, 95
  br i1 %167, label %168, label %175, !prof !77

168:                                              ; preds = %162
  %169 = getelementptr i8, ptr %164, i64 -2
  %170 = load i8, ptr %169, align 1, !tbaa !61
  %171 = icmp eq i8 %170, 95
  br i1 %171, label %172, label %175, !prof !77

172:                                              ; preds = %168
  %173 = add nsw i32 %153, -4
  store i32 %173, ptr %141, align 8, !tbaa !73
  %174 = getelementptr inbounds i8, ptr %151, i64 2
  store ptr %174, ptr %4, align 8, !tbaa !71
  br label %175

175:                                              ; preds = %142, %155, %158, %162, %168, %172
  %176 = load ptr, ptr @attribute_hash, align 8, !tbaa !50
  %177 = load ptr, ptr %4, align 8, !tbaa !71
  %178 = load i32, ptr %141, align 8, !tbaa !73
  %179 = load i8, ptr %177, align 1, !tbaa !61
  %180 = sext i8 %179 to i32
  %181 = sext i32 %178 to i64
  %182 = getelementptr i8, ptr %177, i64 %181
  %183 = getelementptr i8, ptr %182, i64 -1
  %184 = load i8, ptr %183, align 1, !tbaa !61
  %185 = sext i8 %184 to i32
  %186 = shl nsw i32 %185, 8
  %187 = shl nsw i32 %178, 16
  %188 = add i32 %187, %180
  %189 = add i32 %188, %186
  %190 = call ptr @htab_find_with_hash(ptr noundef %176, ptr noundef nonnull %4, i32 noundef %189) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #13
  store i8 0, ptr %7, align 1, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  store ptr null, ptr %8, align 8, !tbaa !50
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %194, !prof !115

192:                                              ; preds = %175
  %193 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 45, ptr noundef nonnull @.str.4, ptr noundef %147) #13
  br label %444

194:                                              ; preds = %175
  %195 = call i32 @list_length(ptr noundef %149) #13
  %196 = getelementptr inbounds %struct.attribute_spec, ptr %190, i64 0, i32 1
  %197 = load i32, ptr %196, align 8, !tbaa !116
  %198 = icmp slt i32 %195, %197
  br i1 %198, label %207, label %199, !prof !115

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.attribute_spec, ptr %190, i64 0, i32 2
  %201 = load i32, ptr %200, align 4, !tbaa !117
  %202 = icmp sgt i32 %201, -1
  br i1 %202, label %203, label %208, !prof !118

203:                                              ; preds = %199
  %204 = call i32 @list_length(ptr noundef %149) #13
  %205 = load i32, ptr %200, align 4, !tbaa !117
  %206 = icmp sgt i32 %204, %205
  br i1 %206, label %207, label %208, !prof !119

207:                                              ; preds = %203, %194
  call void (ptr, ...) @error(ptr noundef nonnull @.str.5, ptr noundef %147) #13
  br label %444

208:                                              ; preds = %199, %203
  %209 = load ptr, ptr %190, align 8, !tbaa !69
  %210 = call i32 @is_attribute_p(ptr noundef %209, ptr noundef %147) #13
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %213, !prof !115

212:                                              ; preds = %208
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 307, ptr noundef nonnull @.str.1) #13
  br label %213

213:                                              ; preds = %208, %212
  %214 = getelementptr inbounds %struct.attribute_spec, ptr %190, i64 0, i32 3
  %215 = load i8, ptr %214, align 8, !tbaa !120
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %231, label %217, !prof !121

217:                                              ; preds = %213
  %218 = load ptr, ptr %0, align 8, !tbaa !50
  %219 = load i64, ptr %218, align 8
  %220 = and i64 %219, 65535
  %221 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %220
  %222 = load i32, ptr %221, align 4, !tbaa !65
  %223 = icmp eq i32 %222, 3
  br i1 %223, label %231, label %224, !prof !122

224:                                              ; preds = %217
  %225 = and i32 %144, 7
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %224
  %228 = call ptr @tree_cons_stat(ptr noundef %147, ptr noundef %149, ptr noundef %145) #13
  br label %444

229:                                              ; preds = %224
  %230 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 45, ptr noundef nonnull @.str.6, ptr noundef %147) #13
  br label %444

231:                                              ; preds = %217, %213
  %232 = getelementptr inbounds %struct.attribute_spec, ptr %190, i64 0, i32 4
  %233 = load i8, ptr %232, align 1, !tbaa !123
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %258, label %235, !prof !124

235:                                              ; preds = %231
  %236 = load ptr, ptr %0, align 8, !tbaa !50
  %237 = load i64, ptr %236, align 8
  %238 = and i64 %237, 65535
  %239 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %238
  %240 = load i32, ptr %239, align 4, !tbaa !65
  %241 = icmp eq i32 %240, 3
  br i1 %241, label %242, label %258, !prof !125

242:                                              ; preds = %235
  %243 = getelementptr inbounds %struct.tree_common, ptr %236, i64 0, i32 2
  %244 = load ptr, ptr %243, align 8, !tbaa !50
  %245 = load i64, ptr %244, align 8
  %246 = and i64 %245, 65535
  %247 = icmp eq i64 %246, 35
  br i1 %247, label %248, label %256, !prof !126

248:                                              ; preds = %242
  %249 = getelementptr inbounds %struct.tree_common, ptr %244, i64 0, i32 2
  %250 = load ptr, ptr %249, align 8, !tbaa !61
  %251 = getelementptr inbounds %struct.tree_type, ptr %250, i64 0, i32 16
  %252 = load ptr, ptr %251, align 8, !tbaa !61
  %253 = getelementptr inbounds %struct.tree_type, ptr %252, i64 0, i32 12
  %254 = load ptr, ptr %253, align 8, !tbaa !61
  %255 = icmp eq ptr %244, %254
  br i1 %255, label %258, label %256

256:                                              ; preds = %248, %242
  %257 = and i32 %144, -9
  br label %258

258:                                              ; preds = %248, %256, %235, %231
  %259 = phi i32 [ %144, %248 ], [ %257, %256 ], [ %144, %235 ], [ %144, %231 ]
  %260 = phi ptr [ %243, %248 ], [ %243, %256 ], [ %0, %235 ], [ %0, %231 ]
  %261 = getelementptr inbounds %struct.attribute_spec, ptr %190, i64 0, i32 5
  %262 = load i8, ptr %261, align 2, !tbaa !127
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %307, label %264, !prof !128

264:                                              ; preds = %258
  %265 = load ptr, ptr %260, align 8, !tbaa !50
  %266 = load i64, ptr %265, align 8
  %267 = trunc i64 %266 to i16
  switch i16 %267, label %292 [
    i16 20, label %307
    i16 21, label %307
    i16 10, label %268
  ], !prof !129

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.tree_common, ptr %265, i64 0, i32 2
  %270 = load ptr, ptr %269, align 8, !tbaa !61
  %271 = load i64, ptr %270, align 8
  %272 = and i64 %271, 65534
  %273 = icmp eq i64 %272, 20
  br i1 %273, label %274, label %292

274:                                              ; preds = %268
  store ptr %270, ptr %8, align 8, !tbaa !50
  %275 = load i64, ptr %265, align 8
  %276 = trunc i64 %275 to i32
  %277 = lshr i32 %276, 20
  %278 = and i32 %277, 1
  %279 = lshr i32 %276, 18
  %280 = and i32 %279, 2
  %281 = or disjoint i32 %278, %280
  %282 = getelementptr inbounds %struct.tree_type, ptr %265, i64 0, i32 6
  %283 = load i32, ptr %282, align 4
  %284 = lshr i32 %283, 11
  %285 = and i32 %284, 4
  %286 = or disjoint i32 %281, %285
  %287 = lshr i64 %275, 48
  %288 = trunc i64 %287 to i32
  %289 = and i32 %288, 65280
  %290 = or disjoint i32 %286, %289
  %291 = and i32 %259, -9
  br label %297

292:                                              ; preds = %268, %264
  %293 = and i32 %259, 2
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %297, label %295

295:                                              ; preds = %292
  %296 = call ptr @tree_cons_stat(ptr noundef %147, ptr noundef %149, ptr noundef %145) #13
  br label %444

297:                                              ; preds = %292, %274
  %298 = phi i32 [ %291, %274 ], [ %259, %292 ]
  %299 = phi ptr [ %8, %274 ], [ %260, %292 ]
  %300 = phi i32 [ %290, %274 ], [ 0, %292 ]
  %301 = load ptr, ptr %299, align 8, !tbaa !50
  %302 = load i64, ptr %301, align 8
  %303 = and i64 %302, 65534
  %304 = icmp eq i64 %303, 20
  br i1 %304, label %307, label %305

305:                                              ; preds = %297
  %306 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 45, ptr noundef nonnull @.str.7, ptr noundef %147) #13
  br label %444

307:                                              ; preds = %297, %264, %264, %258
  %308 = phi i32 [ %259, %258 ], [ %259, %264 ], [ %259, %264 ], [ %298, %297 ]
  %309 = phi ptr [ %260, %258 ], [ %260, %264 ], [ %260, %264 ], [ %299, %297 ]
  %310 = phi i32 [ 0, %258 ], [ 0, %264 ], [ 0, %264 ], [ %300, %297 ]
  %311 = load ptr, ptr %309, align 8, !tbaa !50
  %312 = load i64, ptr %311, align 8
  %313 = and i64 %312, 65535
  %314 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %313
  %315 = load i32, ptr %314, align 4, !tbaa !65
  %316 = icmp ne i32 %315, 2
  %317 = and i32 %308, 8
  %318 = icmp eq i32 %317, 0
  %319 = select i1 %316, i1 true, i1 %318, !prof !124
  br i1 %319, label %326, label %320, !prof !130

320:                                              ; preds = %307
  %321 = getelementptr inbounds %struct.tree_type, ptr %311, i64 0, i32 2
  %322 = load ptr, ptr %321, align 8, !tbaa !61
  %323 = icmp eq ptr %322, null
  br i1 %323, label %326, label %324

324:                                              ; preds = %320
  %325 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 45, ptr noundef nonnull @.str.8) #13
  br label %444

326:                                              ; preds = %320, %307
  %327 = getelementptr inbounds %struct.attribute_spec, ptr %190, i64 0, i32 6
  %328 = load ptr, ptr %327, align 8, !tbaa !131
  %329 = icmp eq ptr %328, null
  br i1 %329, label %333, label %330, !prof !115

330:                                              ; preds = %326
  %331 = call ptr %328(ptr noundef nonnull %309, ptr noundef %147, ptr noundef %149, i32 noundef %308, ptr noundef nonnull %7) #13, !prof !132
  %332 = call ptr @chainon(ptr noundef %331, ptr noundef %145) #13
  br label %333

333:                                              ; preds = %330, %326
  %334 = phi ptr [ %332, %330 ], [ %145, %326 ]
  %335 = load i8, ptr %232, align 1, !tbaa !123
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %347, label %337, !prof !124

337:                                              ; preds = %333
  %338 = load ptr, ptr %0, align 8, !tbaa !50
  %339 = load i64, ptr %338, align 8
  %340 = and i64 %339, 65535
  %341 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %340
  %342 = load i32, ptr %341, align 4, !tbaa !65
  %343 = icmp eq i32 %342, 3
  br i1 %343, label %344, label %347, !prof !125

344:                                              ; preds = %337
  %345 = trunc i64 %339 to i16
  switch i16 %345, label %347 [
    i16 32, label %346
    i16 34, label %346
    i16 36, label %346
  ], !prof !133

346:                                              ; preds = %344, %344, %344
  call void @relayout_decl(ptr noundef nonnull %338) #13
  br label %347

347:                                              ; preds = %344, %346, %337, %333
  %348 = load i8, ptr %7, align 1, !tbaa !61
  %349 = icmp eq i8 %348, 0
  br i1 %349, label %350, label %421, !prof !134

350:                                              ; preds = %347
  %351 = load ptr, ptr %309, align 8, !tbaa !50
  %352 = load i64, ptr %351, align 8
  %353 = and i64 %352, 65535
  %354 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %353
  %355 = load i32, ptr %354, align 4, !tbaa !65
  %356 = icmp eq i32 %355, 3
  %357 = getelementptr inbounds %struct.tree_decl_common, ptr %351, i64 0, i32 6
  %358 = getelementptr inbounds %struct.tree_type, ptr %351, i64 0, i32 4
  %359 = select i1 %356, ptr %357, ptr %358, !prof !135
  %360 = load ptr, ptr %359, align 8, !tbaa !61
  %361 = load ptr, ptr %190, align 8, !tbaa !69
  %362 = call ptr @lookup_attribute(ptr noundef %361, ptr noundef %360) #13
  %363 = icmp eq ptr %362, null
  br i1 %363, label %376, label %364, !prof !136

364:                                              ; preds = %350, %370
  %365 = phi ptr [ %374, %370 ], [ %362, %350 ]
  %366 = getelementptr inbounds %struct.tree_list, ptr %365, i64 0, i32 2
  %367 = load ptr, ptr %366, align 8, !tbaa !61
  %368 = call i32 @simple_cst_equal(ptr noundef %367, ptr noundef %149) #13
  %369 = icmp eq i32 %368, 1
  br i1 %369, label %421, label %370, !prof !137

370:                                              ; preds = %364
  %371 = load ptr, ptr %190, align 8, !tbaa !69
  %372 = getelementptr inbounds %struct.tree_common, ptr %365, i64 0, i32 1
  %373 = load ptr, ptr %372, align 8, !tbaa !61
  %374 = call ptr @lookup_attribute(ptr noundef %371, ptr noundef %373) #13
  %375 = icmp eq ptr %374, null
  br i1 %375, label %376, label %364, !prof !138, !llvm.loop !139

376:                                              ; preds = %370, %350
  %377 = load ptr, ptr %309, align 8, !tbaa !50
  %378 = load i64, ptr %377, align 8
  %379 = and i64 %378, 65535
  %380 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %379
  %381 = load i32, ptr %380, align 4, !tbaa !65
  %382 = icmp eq i32 %381, 3
  %383 = call ptr @tree_cons_stat(ptr noundef %147, ptr noundef %149, ptr noundef %360) #13
  br i1 %382, label %384, label %387, !prof !135

384:                                              ; preds = %376
  %385 = load ptr, ptr %309, align 8, !tbaa !50
  %386 = getelementptr inbounds %struct.tree_decl_common, ptr %385, i64 0, i32 6
  store ptr %383, ptr %386, align 8, !tbaa !61
  br label %421

387:                                              ; preds = %376
  br i1 %318, label %419, label %388, !prof !140

388:                                              ; preds = %387
  %389 = load ptr, ptr %309, align 8, !tbaa !50
  %390 = getelementptr inbounds %struct.tree_type, ptr %389, i64 0, i32 4
  store ptr %383, ptr %390, align 8, !tbaa !61
  %391 = load ptr, ptr %309, align 8, !tbaa !50
  %392 = getelementptr inbounds %struct.tree_type, ptr %391, i64 0, i32 16
  %393 = load ptr, ptr %392, align 8, !tbaa !61
  %394 = icmp ne ptr %391, %393
  %395 = icmp eq ptr %391, null
  %396 = or i1 %394, %395
  br i1 %396, label %421, label %397

397:                                              ; preds = %388, %415
  %398 = phi ptr [ %417, %415 ], [ %391, %388 ]
  %399 = getelementptr inbounds %struct.tree_type, ptr %398, i64 0, i32 4
  %400 = load ptr, ptr %399, align 8, !tbaa !61
  %401 = icmp eq ptr %400, %360
  br i1 %401, label %402, label %406

402:                                              ; preds = %397
  %403 = load ptr, ptr %309, align 8, !tbaa !50
  %404 = getelementptr inbounds %struct.tree_type, ptr %403, i64 0, i32 4
  %405 = load ptr, ptr %404, align 8, !tbaa !61
  br label %413

406:                                              ; preds = %397
  %407 = load ptr, ptr %190, align 8, !tbaa !69
  %408 = call ptr @lookup_attribute(ptr noundef %407, ptr noundef %400) #13
  %409 = icmp eq ptr %408, null
  br i1 %409, label %410, label %415

410:                                              ; preds = %406
  %411 = load ptr, ptr %399, align 8, !tbaa !61
  %412 = call ptr @tree_cons_stat(ptr noundef %147, ptr noundef %149, ptr noundef %411) #13
  br label %413

413:                                              ; preds = %410, %402
  %414 = phi ptr [ %405, %402 ], [ %412, %410 ]
  store ptr %414, ptr %399, align 8, !tbaa !61
  br label %415

415:                                              ; preds = %413, %406
  %416 = getelementptr inbounds %struct.tree_type, ptr %398, i64 0, i32 15
  %417 = load ptr, ptr %416, align 8, !tbaa !61
  %418 = icmp eq ptr %417, null
  br i1 %418, label %421, label %397, !llvm.loop !141

419:                                              ; preds = %387
  %420 = call ptr @build_type_attribute_variant(ptr noundef nonnull %377, ptr noundef %383) #13
  store ptr %420, ptr %309, align 8, !tbaa !50
  br label %421

421:                                              ; preds = %364, %415, %419, %388, %384, %347
  %422 = load ptr, ptr %8, align 8, !tbaa !50
  %423 = icmp eq ptr %422, null
  br i1 %423, label %444, label %424, !prof !130

424:                                              ; preds = %421
  %425 = call ptr @build_pointer_type(ptr noundef nonnull %422) #13
  store ptr %425, ptr %8, align 8, !tbaa !50
  %426 = icmp eq i32 %310, 0
  br i1 %426, label %429, label %427

427:                                              ; preds = %424
  %428 = call ptr @build_qualified_type(ptr noundef %425, i32 noundef %310) #13
  store ptr %428, ptr %8, align 8, !tbaa !50
  br label %429

429:                                              ; preds = %427, %424
  %430 = load ptr, ptr %0, align 8, !tbaa !50
  %431 = load i64, ptr %430, align 8
  %432 = and i64 %431, 65535
  %433 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %432
  %434 = load i32, ptr %433, align 4, !tbaa !65
  %435 = icmp eq i32 %434, 3
  br i1 %435, label %436, label %439

436:                                              ; preds = %429
  %437 = load ptr, ptr %8, align 8, !tbaa !50
  %438 = getelementptr inbounds %struct.tree_common, ptr %430, i64 0, i32 2
  store ptr %437, ptr %438, align 8, !tbaa !61
  br label %444

439:                                              ; preds = %429
  %440 = icmp eq i64 %432, 10
  br i1 %440, label %442, label %441

441:                                              ; preds = %439
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 461, ptr noundef nonnull @.str.1) #13
  br label %442

442:                                              ; preds = %439, %441
  %443 = load ptr, ptr %8, align 8, !tbaa !50
  store ptr %443, ptr %0, align 8, !tbaa !50
  br label %444

444:                                              ; preds = %421, %442, %436, %324, %305, %295, %229, %227, %207, %192
  %445 = phi ptr [ %145, %192 ], [ %145, %207 ], [ %145, %305 ], [ %145, %324 ], [ %296, %295 ], [ %228, %227 ], [ %145, %229 ], [ %334, %436 ], [ %334, %442 ], [ %334, %421 ]
  %446 = phi i32 [ %144, %192 ], [ %144, %207 ], [ %298, %305 ], [ %308, %324 ], [ %259, %295 ], [ %144, %227 ], [ %144, %229 ], [ %308, %436 ], [ %308, %442 ], [ %308, %421 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  %447 = getelementptr inbounds %struct.tree_common, ptr %143, i64 0, i32 1
  %448 = load ptr, ptr %447, align 8, !tbaa !61
  %449 = icmp eq ptr %448, null
  br i1 %449, label %450, label %142, !prof !130, !llvm.loop !142

450:                                              ; preds = %444, %135, %3
  %451 = phi ptr [ null, %3 ], [ null, %135 ], [ %445, %444 ]
  ret ptr %451
}

declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @copy_list(ptr noundef) local_unnamed_addr #3

declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

declare ptr @chainon(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @list_length(ptr noundef) local_unnamed_addr #3

declare void @error(ptr noundef, ...) local_unnamed_addr #3

declare i32 @is_attribute_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @relayout_decl(ptr noundef) local_unnamed_addr #3

declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_type_attribute_variant(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

declare ptr @build_qualified_type(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @hash_attr(ptr nocapture noundef readonly %0) #11 !prof !49 {
  %2 = load ptr, ptr %0, align 8, !tbaa !69
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2)
  %4 = trunc i64 %3 to i32
  %5 = load i8, ptr %2, align 1, !tbaa !61
  %6 = sext i8 %5 to i32
  %7 = shl i64 %3, 32
  %8 = ashr exact i64 %7, 32
  %9 = getelementptr i8, ptr %2, i64 %8
  %10 = getelementptr i8, ptr %9, i64 -1
  %11 = load i8, ptr %10, align 1, !tbaa !61
  %12 = sext i8 %11 to i32
  %13 = shl nsw i32 %12, 8
  %14 = shl nsw i32 %4, 16
  %15 = add i32 %14, %6
  %16 = add i32 %15, %13
  ret i32 %16
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @eq_attr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !prof !143 !PGOFuncName !144 {
  %3 = load ptr, ptr %0, align 8, !tbaa !69
  %4 = load ptr, ptr %1, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.substring, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !73
  %7 = sext i32 %6 to i64
  %8 = tail call i32 @strncmp(ptr noundef %3, ptr noundef %4, i64 noundef %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15, !prof !145

10:                                               ; preds = %2
  %11 = getelementptr inbounds i8, ptr %3, i64 %7
  %12 = load i8, ptr %11, align 1, !tbaa !61
  %13 = icmp eq i8 %12, 0
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i32 [ 0, %2 ], [ %14, %10 ]
  ret i32 %16
}

declare i32 @invoke_plugin_callbacks(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!48}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!35 = !{ptr @decl_attributes, ptr @htab_create, i64 1}
!36 = !{ptr @decl_attributes, ptr @strlen, i64 61}
!37 = !{ptr @decl_attributes, ptr @htab_find_slot_with_hash, i64 61}
!38 = !{ptr @decl_attributes, ptr @invoke_plugin_callbacks, i64 1}
!39 = !{ptr @decl_attributes, ptr @htab_find_with_hash, i64 3102}
!40 = !{ptr @decl_attributes, ptr @list_length, i64 5786}
!41 = !{ptr @decl_attributes, ptr @is_attribute_p, i64 3102}
!42 = !{ptr @decl_attributes, ptr @chainon, i64 3102}
!43 = !{ptr @decl_attributes, ptr @lookup_attribute, i64 3079}
!44 = !{ptr @decl_attributes, ptr @simple_cst_equal, i64 2}
!45 = !{ptr @decl_attributes, ptr @tree_cons_stat, i64 3077}
!46 = !{ptr @decl_attributes, ptr @build_type_attribute_variant, i64 521}
!47 = !{ptr @eq_attr, ptr @strncmp, i64 3393}
!48 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!49 = !{!"function_entry_count", i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"any pointer", !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C/C++ TBAA"}
!54 = !{!55, !51, i64 8}
!55 = !{!"_IO_FILE", !56, i64 0, !51, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !51, i64 56, !51, i64 64, !51, i64 72, !51, i64 80, !51, i64 88, !51, i64 96, !51, i64 104, !56, i64 112, !56, i64 116, !57, i64 120, !58, i64 128, !52, i64 130, !52, i64 131, !51, i64 136, !57, i64 144, !51, i64 152, !51, i64 160, !51, i64 168, !51, i64 176, !57, i64 184, !56, i64 192, !52, i64 196}
!56 = !{!"int", !52, i64 0}
!57 = !{!"long", !52, i64 0}
!58 = !{!"short", !52, i64 0}
!59 = !{!55, !51, i64 16}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{!52, !52, i64 0}
!62 = !{!55, !51, i64 40}
!63 = !{!55, !51, i64 48}
!64 = !{!55, !56, i64 0}
!65 = !{!56, !56, i64 0}
!66 = distinct !{!66, !67, !68}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = !{!70, !51, i64 0}
!70 = !{!"attribute_spec", !51, i64 0, !56, i64 8, !56, i64 12, !52, i64 16, !52, i64 17, !52, i64 18, !51, i64 24}
!71 = !{!72, !51, i64 0}
!72 = !{!"substring", !51, i64 0, !56, i64 8}
!73 = !{!72, !56, i64 8}
!74 = !{!"branch_weights", i32 61, i32 0}
!75 = !{!"branch_weights", i32 3015, i32 87}
!76 = !{!"branch_weights", i32 1268, i32 1747}
!77 = !{!"branch_weights", i32 1268, i32 0}
!78 = !{!"function_entry_count", i64 23306}
!79 = !{!"branch_weights", i32 0, i32 23306}
!80 = !{!"branch_weights", i32 23305, i32 1}
!81 = !{!82, !51, i64 224}
!82 = !{!"lang_hooks", !51, i64 0, !57, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !51, i64 56, !51, i64 64, !51, i64 72, !51, i64 80, !51, i64 88, !51, i64 96, !51, i64 104, !51, i64 112, !51, i64 120, !51, i64 128, !51, i64 136, !51, i64 144, !51, i64 152, !51, i64 160, !51, i64 168, !51, i64 176, !51, i64 184, !51, i64 192, !51, i64 200, !51, i64 208, !51, i64 216, !51, i64 224, !51, i64 232, !83, i64 240, !84, i64 248, !85, i64 256, !86, i64 272, !87, i64 432, !88, i64 560, !51, i64 584, !51, i64 592, !51, i64 600, !51, i64 608, !51, i64 616, !51, i64 624, !51, i64 632, !51, i64 640, !51, i64 648, !51, i64 656, !51, i64 664, !52, i64 672}
!83 = !{!"lang_hooks_for_tree_inlining", !51, i64 0}
!84 = !{!"lang_hooks_for_callgraph", !51, i64 0}
!85 = !{!"lang_hooks_for_tree_dump", !51, i64 0, !51, i64 8}
!86 = !{!"lang_hooks_for_decls", !51, i64 0, !51, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !51, i64 56, !51, i64 64, !51, i64 72, !51, i64 80, !51, i64 88, !51, i64 96, !51, i64 104, !51, i64 112, !51, i64 120, !51, i64 128, !51, i64 136, !51, i64 144, !51, i64 152}
!87 = !{!"lang_hooks_for_types", !51, i64 0, !51, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !51, i64 56, !51, i64 64, !51, i64 72, !51, i64 80, !51, i64 88, !51, i64 96, !51, i64 104, !51, i64 112, !52, i64 120}
!88 = !{!"lang_hooks_for_lto", !51, i64 0, !51, i64 8, !51, i64 16}
!89 = !{!82, !51, i64 216}
!90 = !{!82, !51, i64 232}
!91 = !{!92, !51, i64 824}
!92 = !{!"gcc_target", !93, i64 0, !95, i64 368, !96, i64 664, !56, i64 744, !51, i64 752, !51, i64 760, !51, i64 768, !51, i64 776, !51, i64 784, !51, i64 792, !51, i64 800, !51, i64 808, !51, i64 816, !51, i64 824, !51, i64 832, !51, i64 840, !51, i64 848, !51, i64 856, !51, i64 864, !51, i64 872, !51, i64 880, !51, i64 888, !51, i64 896, !51, i64 904, !51, i64 912, !51, i64 920, !51, i64 928, !51, i64 936, !51, i64 944, !51, i64 952, !51, i64 960, !51, i64 968, !51, i64 976, !51, i64 984, !51, i64 992, !51, i64 1000, !51, i64 1008, !51, i64 1016, !51, i64 1024, !51, i64 1032, !51, i64 1040, !51, i64 1048, !51, i64 1056, !57, i64 1064, !57, i64 1072, !51, i64 1080, !51, i64 1088, !51, i64 1096, !51, i64 1104, !51, i64 1112, !51, i64 1120, !51, i64 1128, !51, i64 1136, !51, i64 1144, !51, i64 1152, !51, i64 1160, !51, i64 1168, !97, i64 1176, !51, i64 1232, !51, i64 1240, !51, i64 1248, !51, i64 1256, !51, i64 1264, !51, i64 1272, !51, i64 1280, !51, i64 1288, !51, i64 1296, !51, i64 1304, !51, i64 1312, !51, i64 1320, !51, i64 1328, !51, i64 1336, !51, i64 1344, !51, i64 1352, !51, i64 1360, !51, i64 1368, !51, i64 1376, !51, i64 1384, !51, i64 1392, !51, i64 1400, !51, i64 1408, !51, i64 1416, !51, i64 1424, !51, i64 1432, !51, i64 1440, !51, i64 1448, !51, i64 1456, !57, i64 1464, !98, i64 1472, !51, i64 1664, !51, i64 1672, !51, i64 1680, !51, i64 1688, !51, i64 1696, !51, i64 1704, !51, i64 1712, !51, i64 1720, !51, i64 1728, !51, i64 1736, !51, i64 1744, !51, i64 1752, !51, i64 1760, !51, i64 1768, !51, i64 1776, !99, i64 1784, !100, i64 1792, !101, i64 1896, !102, i64 1968, !51, i64 2016, !52, i64 2024, !52, i64 2025, !52, i64 2026, !52, i64 2027, !52, i64 2028, !52, i64 2029, !52, i64 2030, !52, i64 2031, !52, i64 2032, !52, i64 2033, !52, i64 2034, !52, i64 2035}
!93 = !{!"asm_out", !51, i64 0, !51, i64 8, !51, i64 16, !94, i64 24, !94, i64 56, !51, i64 88, !51, i64 96, !51, i64 104, !51, i64 112, !51, i64 120, !51, i64 128, !51, i64 136, !51, i64 144, !51, i64 152, !51, i64 160, !51, i64 168, !51, i64 176, !51, i64 184, !51, i64 192, !51, i64 200, !51, i64 208, !51, i64 216, !51, i64 224, !51, i64 232, !51, i64 240, !51, i64 248, !51, i64 256, !51, i64 264, !51, i64 272, !51, i64 280, !51, i64 288, !51, i64 296, !51, i64 304, !51, i64 312, !51, i64 320, !51, i64 328, !51, i64 336, !51, i64 344, !51, i64 352, !51, i64 360}
!94 = !{!"asm_int_op", !51, i64 0, !51, i64 8, !51, i64 16, !51, i64 24}
!95 = !{!"sched", !51, i64 0, !51, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !51, i64 56, !51, i64 64, !51, i64 72, !51, i64 80, !51, i64 88, !51, i64 96, !51, i64 104, !51, i64 112, !51, i64 120, !51, i64 128, !51, i64 136, !51, i64 144, !51, i64 152, !51, i64 160, !51, i64 168, !51, i64 176, !51, i64 184, !51, i64 192, !51, i64 200, !51, i64 208, !51, i64 216, !51, i64 224, !51, i64 232, !51, i64 240, !51, i64 248, !51, i64 256, !51, i64 264, !51, i64 272, !51, i64 280, !51, i64 288}
!96 = !{!"vectorize", !51, i64 0, !51, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !51, i64 56, !51, i64 64, !51, i64 72}
!97 = !{!"addr_space", !51, i64 0, !51, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !51, i64 48}
!98 = !{!"calls", !51, i64 0, !51, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !51, i64 56, !51, i64 64, !51, i64 72, !51, i64 80, !51, i64 88, !51, i64 96, !51, i64 104, !51, i64 112, !51, i64 120, !51, i64 128, !51, i64 136, !51, i64 144, !51, i64 152, !51, i64 160, !51, i64 168, !51, i64 176, !51, i64 184}
!99 = !{!"c", !51, i64 0}
!100 = !{!"cxx", !51, i64 0, !51, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !51, i64 56, !51, i64 64, !51, i64 72, !51, i64 80, !51, i64 88, !51, i64 96}
!101 = !{!"emutls", !51, i64 0, !51, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !51, i64 56, !52, i64 64, !52, i64 65}
!102 = !{!"target_option_hooks", !51, i64 0, !51, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !51, i64 40}
!103 = !{!"branch_weights", i32 1, i32 3}
!104 = distinct !{!104, !67, !68}
!105 = !{!"branch_weights", i32 1, i32 127}
!106 = !{!"branch_weights", i32 127, i32 1825}
!107 = distinct !{!107, !67, !68}
!108 = distinct !{!108, !67, !68}
!109 = !{!"branch_weights", i32 6557, i32 16749}
!110 = !{!"branch_weights", i32 6557, i32 0}
!111 = !{!92, !51, i64 1968}
!112 = !{!92, !51, i64 848}
!113 = !{!"VP", i32 0, i64 23306, i64 -4156388472940072232, i64 23306}
!114 = !{!"branch_weights", i32 20204, i32 3102}
!115 = !{!"branch_weights", i32 0, i32 3102}
!116 = !{!70, !56, i64 8}
!117 = !{!70, !56, i64 12}
!118 = !{!"branch_weights", i32 2684, i32 418}
!119 = !{!"branch_weights", i32 0, i32 2684}
!120 = !{!70, !52, i64 16}
!121 = !{!"branch_weights", i32 826, i32 2276}
!122 = !{!"branch_weights", i32 2276, i32 0}
!123 = !{!70, !52, i64 17}
!124 = !{!"branch_weights", i32 2568, i32 534}
!125 = !{!"branch_weights", i32 534, i32 0}
!126 = !{!"branch_weights", i32 0, i32 534}
!127 = !{!70, !52, i64 18}
!128 = !{!"branch_weights", i32 2581, i32 521}
!129 = !{!"branch_weights", i32 0, i32 521, i32 0, i32 0}
!130 = !{!"branch_weights", i32 3102, i32 0}
!131 = !{!70, !51, i64 24}
!132 = !{!"VP", i32 0, i64 3102, i64 1533494711389653313, i64 1607, i64 -5414519733346119022, i64 418, i64 -2065019281613971026, i64 414}
!133 = !{!"branch_weights", i32 534, i32 0, i32 0, i32 0}
!134 = !{!"branch_weights", i32 3077, i32 25}
!135 = !{!"branch_weights", i32 2556, i32 521}
!136 = !{!"branch_weights", i32 3075, i32 2}
!137 = !{!"branch_weights", i32 0, i32 2}
!138 = !{!"branch_weights", i32 2, i32 0}
!139 = distinct !{!139, !67, !68}
!140 = !{!"branch_weights", i32 521, i32 0}
!141 = distinct !{!141, !67, !68}
!142 = distinct !{!142, !67, !68}
!143 = !{!"function_entry_count", i64 3393}
!144 = !{!"attribs.c;eq_attr"}
!145 = !{!"branch_weights", i32 3102, i32 291}

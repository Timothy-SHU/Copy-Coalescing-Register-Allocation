; ModuleID = 'ipa.c'
source_filename = "ipa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipa_opt_pass_d = type { %struct.opt_pass, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.varpool_node = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.cgraph_node_set_def = type { ptr, ptr, ptr }
%struct.cgraph_node_set_element_def = type { ptr, i64 }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@cgraph_n_nodes = external local_unnamed_addr global i32, align 4
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"\0AReclaiming functions:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ipa.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"visibility\00", align 1
@pass_ipa_function_and_variable_visibility = dso_local local_unnamed_addr global %struct.simple_ipa_opt_pass { %struct.opt_pass { i32 2, ptr @.str.4, ptr null, ptr @local_function_and_variable_visibility, ptr null, ptr null, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 384 } }, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"whole-program\00", align 1
@pass_ipa_whole_program_visibility = dso_local local_unnamed_addr global %struct.ipa_opt_pass_d { %struct.opt_pass { i32 3, ptr @.str.5, ptr @gate_whole_program_function_and_variable_visibility, ptr @whole_program_function_and_variable_visibility, ptr null, ptr null, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 384 }, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null }, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@flag_whole_program = external local_unnamed_addr global i32, align 4
@flag_lto = external local_unnamed_addr global i32, align 4
@flag_whopr = external local_unnamed_addr global i32, align 4
@varpool_nodes = external local_unnamed_addr global ptr, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@varpool_nodes_queue = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"externally_visible\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"\0AMarking local functions:\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"\0AMarking externally visible functions:\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"\0AMarking externally visible variables:\00", align 1
@cgraph_function_flags_ready = external local_unnamed_addr global i8, align 1
@flag_ltrans = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"\0ANeeded variables:\00", align 1
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !46 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !47
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !46 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !47
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !46 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !57

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !51
  %11 = load i8, ptr %3, align 1, !tbaa !58
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !46 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !57

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !51
  %11 = load i8, ptr %3, align 1, !tbaa !58
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !46 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !57

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !51
  %11 = load i8, ptr %3, align 1, !tbaa !58
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !46 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !47
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !46 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !57

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !59
  store i8 %12, ptr %4, align 1, !tbaa !58
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !46 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !57

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !59
  store i8 %12, ptr %4, align 1, !tbaa !58
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !46 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !57

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !59
  store i8 %12, ptr %4, align 1, !tbaa !58
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !46 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !46 {
  %2 = load i32, ptr %0, align 8, !tbaa !61
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !46 {
  %2 = load i32, ptr %0, align 8, !tbaa !61
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !46 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !62
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !46 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !62
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !46 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !46 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !46 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !46 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #17
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
  br i1 %23, label %7, label %24, !llvm.loop !63

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !46 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @cgraph_postorder(ptr nocapture noundef writeonly %0) local_unnamed_addr #9 !prof !66 {
  %2 = alloca %struct.cgraph_edge, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #17
  %3 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !62
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @xcalloc(i64 noundef %4, i64 noundef 8) #17
  %6 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8, !prof !67

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %12, %8 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 16
  store ptr null, ptr %10, align 8, !tbaa !68
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %8, !prof !76, !llvm.loop !77

14:                                               ; preds = %8, %1
  br label %15

15:                                               ; preds = %14, %110
  %16 = phi i32 [ %113, %110 ], [ 0, %14 ]
  %17 = phi i32 [ %112, %110 ], [ 0, %14 ]
  %18 = phi i32 [ %111, %110 ], [ 0, %14 ]
  %19 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !47
  %20 = icmp eq ptr %19, null
  br i1 %20, label %110, label %21, !prof !67

21:                                               ; preds = %15
  %22 = icmp eq i32 %16, 0
  br label %23

23:                                               ; preds = %21, %104
  %24 = phi ptr [ %19, %21 ], [ %108, %104 ]
  %25 = phi i32 [ %17, %21 ], [ %106, %104 ]
  %26 = phi i32 [ %18, %21 ], [ %105, %104 ]
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 16
  %28 = load ptr, ptr %27, align 8, !tbaa !68
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %104, !prof !78

30:                                               ; preds = %23
  br i1 %22, label %31, label %48, !prof !79

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 27
  %33 = load i16, ptr %32, align 4
  %34 = and i16 %33, 1
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %42, !prof !80

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 18, i32 2
  %38 = load i8, ptr %37, align 8
  %39 = lshr i8 %38, 1
  %40 = and i8 %39, 1
  %41 = xor i8 %40, 1
  br label %42

42:                                               ; preds = %31, %36
  %43 = phi i8 [ 0, %31 ], [ %41, %36 ]
  %44 = icmp eq i8 %43, 0
  %45 = and i16 %33, 2
  %46 = icmp eq i16 %45, 0
  %47 = and i1 %46, %44
  br i1 %47, label %48, label %104, !prof !81

48:                                               ; preds = %42, %30
  %49 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !82
  %51 = icmp eq ptr %50, null
  %52 = select i1 %51, ptr %2, ptr %50, !prof !83
  store ptr %52, ptr %27, align 8, !tbaa !68
  br label %53

53:                                               ; preds = %48, %99
  %54 = phi ptr [ %24, %48 ], [ %102, %99 ]
  %55 = phi i32 [ %25, %48 ], [ %101, %99 ]
  %56 = phi i32 [ %26, %48 ], [ %100, %99 ]
  %57 = getelementptr inbounds %struct.cgraph_node, ptr %54, i64 0, i32 16
  %58 = load ptr, ptr %57, align 8, !tbaa !68
  br label %59

59:                                               ; preds = %53, %62
  %60 = phi ptr [ %58, %53 ], [ %66, %62 ]
  %61 = icmp eq ptr %60, %2
  br i1 %61, label %83, label %62, !prof !84

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.cgraph_edge, ptr %60, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !85
  %65 = icmp eq ptr %64, null
  %66 = select i1 %65, ptr %2, ptr %64, !prof !87
  store ptr %66, ptr %57, align 8, !tbaa !68
  %67 = getelementptr inbounds %struct.cgraph_edge, ptr %60, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !88
  %69 = getelementptr inbounds %struct.cgraph_node, ptr %68, i64 0, i32 16
  %70 = load ptr, ptr %69, align 8, !tbaa !68
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %59, !prof !89, !llvm.loop !90

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.cgraph_edge, ptr %60, i64 0, i32 1
  %74 = getelementptr inbounds %struct.cgraph_node, ptr %68, i64 0, i32 16
  %75 = getelementptr inbounds %struct.cgraph_node, ptr %68, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !82
  %77 = icmp eq ptr %76, null
  %78 = select i1 %77, ptr %2, ptr %76, !prof !91
  store ptr %78, ptr %74, align 8, !tbaa !68
  %79 = add nsw i32 %56, 1
  %80 = sext i32 %56 to i64
  %81 = getelementptr inbounds ptr, ptr %5, i64 %80
  store ptr %54, ptr %81, align 8, !tbaa !47
  %82 = load ptr, ptr %73, align 8, !tbaa !88
  br label %83

83:                                               ; preds = %59, %72
  %84 = phi i32 [ %79, %72 ], [ %56, %59 ]
  %85 = phi ptr [ %82, %72 ], [ %54, %59 ]
  %86 = getelementptr inbounds %struct.cgraph_node, ptr %85, i64 0, i32 16
  %87 = load ptr, ptr %86, align 8, !tbaa !68
  %88 = icmp eq ptr %87, %2
  br i1 %88, label %89, label %99, !prof !92

89:                                               ; preds = %83
  %90 = add nsw i32 %55, 1
  %91 = sext i32 %55 to i64
  %92 = getelementptr inbounds ptr, ptr %0, i64 %91
  store ptr %85, ptr %92, align 8, !tbaa !47
  %93 = icmp eq i32 %84, 0
  br i1 %93, label %99, label %94, !prof !93

94:                                               ; preds = %89
  %95 = add nsw i32 %84, -1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds ptr, ptr %5, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !47
  br label %99

99:                                               ; preds = %89, %94, %83
  %100 = phi i32 [ %95, %94 ], [ %84, %83 ], [ 0, %89 ]
  %101 = phi i32 [ %90, %94 ], [ %55, %83 ], [ %90, %89 ]
  %102 = phi ptr [ %98, %94 ], [ %85, %83 ], [ null, %89 ]
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %53, !prof !94, !llvm.loop !95

104:                                              ; preds = %99, %23, %42
  %105 = phi i32 [ %26, %23 ], [ %26, %42 ], [ %100, %99 ]
  %106 = phi i32 [ %25, %23 ], [ %25, %42 ], [ %101, %99 ]
  %107 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !47
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %23, !prof !76, !llvm.loop !96

110:                                              ; preds = %104, %15
  %111 = phi i32 [ %18, %15 ], [ %105, %104 ]
  %112 = phi i32 [ %17, %15 ], [ %106, %104 ]
  %113 = add nuw nsw i32 %16, 1
  %114 = icmp eq i32 %16, 0
  br i1 %114, label %15, label %115, !prof !97, !llvm.loop !98

115:                                              ; preds = %110
  call void @free(ptr noundef %5)
  %116 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !47
  %117 = icmp eq ptr %116, null
  br i1 %117, label %124, label %118, !prof !67

118:                                              ; preds = %115, %118
  %119 = phi ptr [ %122, %118 ], [ %116, %115 ]
  %120 = getelementptr inbounds %struct.cgraph_node, ptr %119, i64 0, i32 16
  store ptr null, ptr %120, align 8, !tbaa !68
  %121 = getelementptr inbounds %struct.cgraph_node, ptr %119, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !47
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %118, !prof !76, !llvm.loop !99

124:                                              ; preds = %118, %115
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #17
  ret i32 %112
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cgraph_remove_unreachable_nodes(i8 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #9 !prof !100 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4, !prof !101

4:                                                ; preds = %2
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr nonnull %1)
  br label %6

6:                                                ; preds = %4, %2
  %7 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12, !prof !102

9:                                                ; preds = %62, %6
  %10 = phi ptr [ inttoptr (i64 1 to ptr), %6 ], [ %64, %62 ]
  %11 = icmp eq ptr %10, inttoptr (i64 1 to ptr)
  br i1 %11, label %184, label %68, !prof !102

12:                                               ; preds = %6, %62
  %13 = phi ptr [ %66, %62 ], [ %7, %6 ]
  %14 = phi ptr [ %64, %62 ], [ inttoptr (i64 1 to ptr), %6 ]
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %13, i64 0, i32 27
  %16 = load i16, ptr %15, align 4
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %31, !prof !103

19:                                               ; preds = %12
  %20 = load ptr, ptr %13, align 8, !tbaa !104
  %21 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %20, i64 0, i32 4
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 512
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31, !prof !105

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.cgraph_node, ptr %13, i64 0, i32 18, i32 2
  %27 = load i8, ptr %26, align 8
  %28 = lshr i8 %27, 1
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  br label %31

31:                                               ; preds = %12, %19, %25
  %32 = phi i8 [ 0, %12 ], [ 1, %19 ], [ %30, %25 ]
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %54, !prof !106

34:                                               ; preds = %31
  %35 = load ptr, ptr %13, align 8, !tbaa !104
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %35, i64 0, i32 2
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 33554432
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %45, label %40, !prof !107

40:                                               ; preds = %34
  %41 = icmp ne i8 %0, 0
  %42 = and i16 %16, 32
  %43 = icmp eq i16 %42, 0
  %44 = or i1 %41, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %40, %34
  %46 = getelementptr inbounds %struct.cgraph_node, ptr %13, i64 0, i32 19, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !108
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49, !prof !107

49:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 143, ptr noundef nonnull @.str.2) #17
  br label %50

50:                                               ; preds = %45, %49
  %51 = getelementptr inbounds %struct.cgraph_node, ptr %13, i64 0, i32 16
  store ptr %14, ptr %51, align 8, !tbaa !68
  %52 = load i16, ptr %15, align 4
  %53 = or i16 %52, 8
  br label %62

54:                                               ; preds = %40, %31
  %55 = getelementptr inbounds %struct.cgraph_node, ptr %13, i64 0, i32 16
  %56 = load ptr, ptr %55, align 8, !tbaa !68
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58, !prof !105

58:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 150, ptr noundef nonnull @.str.2) #17
  br label %59

59:                                               ; preds = %54, %58
  %60 = load i16, ptr %15, align 4
  %61 = and i16 %60, -9
  br label %62

62:                                               ; preds = %50, %59
  %63 = phi i16 [ %61, %59 ], [ %53, %50 ]
  %64 = phi ptr [ %14, %59 ], [ %13, %50 ]
  store i16 %63, ptr %15, align 4
  %65 = getelementptr inbounds %struct.cgraph_node, ptr %13, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !47
  %67 = icmp eq ptr %66, null
  br i1 %67, label %9, label %12, !prof !109, !llvm.loop !110

68:                                               ; preds = %9, %181
  %69 = phi ptr [ %182, %181 ], [ %10, %9 ]
  %70 = getelementptr inbounds %struct.cgraph_node, ptr %69, i64 0, i32 16
  %71 = load ptr, ptr %70, align 8, !tbaa !68
  store ptr inttoptr (i64 2 to ptr), ptr %70, align 8, !tbaa !68
  %72 = getelementptr inbounds %struct.cgraph_node, ptr %69, i64 0, i32 27
  %73 = load i16, ptr %72, align 4
  %74 = and i16 %73, 8
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %126, label %76, !prof !111

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.cgraph_node, ptr %69, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !47
  %79 = icmp eq ptr %78, null
  br i1 %79, label %126, label %80, !prof !112

80:                                               ; preds = %76, %121
  %81 = phi ptr [ %124, %121 ], [ %78, %76 ]
  %82 = phi ptr [ %122, %121 ], [ %71, %76 ]
  %83 = getelementptr inbounds %struct.cgraph_edge, ptr %81, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !113
  %85 = getelementptr inbounds %struct.cgraph_node, ptr %84, i64 0, i32 27
  %86 = load i16, ptr %85, align 4
  %87 = and i16 %86, 8
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %89, label %121, !prof !114

89:                                               ; preds = %80
  %90 = load i16, ptr %72, align 4
  %91 = and i16 %90, 32
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %121, label %93, !prof !115

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.cgraph_edge, ptr %81, i64 0, i32 9
  %95 = load i32, ptr %94, align 8, !tbaa !116
  %96 = icmp eq i32 %95, 0
  %97 = and i16 %86, 32
  %98 = icmp eq i16 %97, 0
  %99 = or i1 %98, %96
  br i1 %99, label %108, label %100, !prof !117

100:                                              ; preds = %93
  %101 = icmp ne i8 %0, 0
  %102 = load ptr, ptr %84, align 8, !tbaa !104
  %103 = getelementptr inbounds %struct.tree_decl_common, ptr %102, i64 0, i32 2
  %104 = load i64, ptr %103, align 8
  %105 = and i64 %104, 33554432
  %106 = icmp eq i64 %105, 0
  %107 = or i1 %101, %106
  br i1 %107, label %108, label %121, !prof !118

108:                                              ; preds = %100, %93
  %109 = and i16 %90, 8
  %110 = or disjoint i16 %109, %86
  store i16 %110, ptr %85, align 4
  %111 = load ptr, ptr %83, align 8, !tbaa !113
  %112 = getelementptr inbounds %struct.cgraph_node, ptr %111, i64 0, i32 16
  %113 = load ptr, ptr %112, align 8, !tbaa !68
  %114 = ptrtoint ptr %113 to i64
  switch i64 %114, label %121 [
    i64 0, label %120
    i64 2, label %115
  ], !prof !119

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.cgraph_node, ptr %111, i64 0, i32 27
  %117 = load i16, ptr %116, align 4
  %118 = and i16 %117, 8
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %115, %108
  store ptr %82, ptr %112, align 8, !tbaa !68
  br label %121

121:                                              ; preds = %100, %115, %120, %108, %80, %89
  %122 = phi ptr [ %82, %80 ], [ %82, %89 ], [ %111, %120 ], [ %82, %115 ], [ %82, %108 ], [ %82, %100 ]
  %123 = getelementptr inbounds %struct.cgraph_edge, ptr %81, i64 0, i32 6
  %124 = load ptr, ptr %123, align 8, !tbaa !47
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %80, !prof !120, !llvm.loop !121

126:                                              ; preds = %121, %76, %68
  %127 = phi ptr [ %71, %68 ], [ %71, %76 ], [ %122, %121 ]
  %128 = getelementptr inbounds %struct.cgraph_node, ptr %69, i64 0, i32 14
  %129 = load ptr, ptr %128, align 8, !tbaa !122
  %130 = icmp eq ptr %129, null
  br i1 %130, label %156, label %131, !prof !123

131:                                              ; preds = %126
  %132 = load i16, ptr %72, align 4
  %133 = and i16 %132, 8
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %156, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.cgraph_node, ptr %69, i64 0, i32 19, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !108
  %138 = icmp ne ptr %137, null
  %139 = icmp eq ptr %129, %69
  %140 = or i1 %138, %139
  br i1 %140, label %156, label %141

141:                                              ; preds = %135, %151
  %142 = phi ptr [ %152, %151 ], [ %127, %135 ]
  %143 = phi ptr [ %154, %151 ], [ %129, %135 ]
  %144 = getelementptr inbounds %struct.cgraph_node, ptr %143, i64 0, i32 27
  %145 = load i16, ptr %144, align 4
  %146 = and i16 %145, 8
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.cgraph_node, ptr %143, i64 0, i32 16
  store ptr %142, ptr %149, align 8, !tbaa !68
  %150 = or disjoint i16 %145, 8
  store i16 %150, ptr %144, align 4
  br label %151

151:                                              ; preds = %141, %148
  %152 = phi ptr [ %142, %141 ], [ %143, %148 ]
  %153 = getelementptr inbounds %struct.cgraph_node, ptr %143, i64 0, i32 14
  %154 = load ptr, ptr %153, align 8, !tbaa !122
  %155 = icmp eq ptr %154, %69
  br i1 %155, label %156, label %141, !llvm.loop !124

156:                                              ; preds = %151, %135, %131, %126
  %157 = phi ptr [ %127, %126 ], [ %127, %131 ], [ %127, %135 ], [ %152, %151 ]
  br label %158

158:                                              ; preds = %156, %179
  %159 = phi ptr [ %173, %179 ], [ %69, %156 ]
  %160 = phi ptr [ %180, %179 ], [ %157, %156 ]
  %161 = getelementptr inbounds %struct.cgraph_node, ptr %159, i64 0, i32 12
  %162 = load ptr, ptr %161, align 8, !tbaa !125
  %163 = icmp eq ptr %162, null
  br i1 %163, label %181, label %164, !prof !126

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.cgraph_node, ptr %162, i64 0, i32 16
  %166 = load ptr, ptr %165, align 8, !tbaa !68
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %181, !prof !127

168:                                              ; preds = %164
  %169 = load ptr, ptr %159, align 8, !tbaa !104
  %170 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %169) #17
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %181, !prof !128

172:                                              ; preds = %168
  %173 = load ptr, ptr %161, align 8, !tbaa !125
  %174 = load ptr, ptr %173, align 8, !tbaa !104
  %175 = load ptr, ptr %159, align 8, !tbaa !104
  %176 = icmp eq ptr %174, %175
  br i1 %176, label %179, label %177

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.cgraph_node, ptr %173, i64 0, i32 16
  store ptr %160, ptr %178, align 8, !tbaa !68
  br label %179

179:                                              ; preds = %172, %177
  %180 = phi ptr [ %173, %177 ], [ %160, %172 ]
  br i1 %176, label %158, label %181

181:                                              ; preds = %179, %164, %158, %168
  %182 = phi ptr [ %160, %164 ], [ %160, %168 ], [ %160, %158 ], [ %180, %179 ]
  %183 = icmp eq ptr %182, inttoptr (i64 1 to ptr)
  br i1 %183, label %184, label %68, !prof !129, !llvm.loop !130

184:                                              ; preds = %181, %9
  %185 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !47
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %191, !prof !102

187:                                              ; preds = %294, %184
  %188 = phi i8 [ 0, %184 ], [ %295, %294 ]
  %189 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !47
  %190 = icmp eq ptr %189, null
  br i1 %190, label %317, label %297, !prof !102

191:                                              ; preds = %184, %294
  %192 = phi ptr [ %195, %294 ], [ %185, %184 ]
  %193 = phi i8 [ %295, %294 ], [ 0, %184 ]
  %194 = getelementptr inbounds %struct.cgraph_node, ptr %192, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !131
  %196 = getelementptr inbounds %struct.cgraph_node, ptr %192, i64 0, i32 16
  %197 = load ptr, ptr %196, align 8, !tbaa !68
  %198 = icmp eq ptr %197, null
  br i1 %198, label %210, label %199, !prof !132

199:                                              ; preds = %191
  %200 = getelementptr inbounds %struct.cgraph_node, ptr %192, i64 0, i32 27
  %201 = load i16, ptr %200, align 4
  %202 = and i16 %201, 8
  %203 = icmp eq i16 %202, 0
  br i1 %203, label %204, label %210, !prof !111

204:                                              ; preds = %199
  tail call void @cgraph_node_remove_callees(ptr noundef nonnull %192) #17
  %205 = load i16, ptr %200, align 4
  %206 = and i16 %205, -33
  store i16 %206, ptr %200, align 4
  %207 = getelementptr inbounds %struct.cgraph_node, ptr %192, i64 0, i32 18, i32 2
  %208 = load i8, ptr %207, align 8
  %209 = and i8 %208, -9
  store i8 %209, ptr %207, align 8
  br label %210

210:                                              ; preds = %204, %199, %191
  %211 = load ptr, ptr %196, align 8, !tbaa !68
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %294, !prof !132

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.cgraph_node, ptr %192, i64 0, i32 19, i32 2
  store ptr null, ptr %214, align 8, !tbaa !108
  br i1 %3, label %218, label %215, !prof !133

215:                                              ; preds = %213
  %216 = tail call ptr @cgraph_node_name(ptr noundef nonnull %192) #17
  %217 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef %216)
  br label %218

218:                                              ; preds = %215, %213
  %219 = getelementptr inbounds %struct.cgraph_node, ptr %192, i64 0, i32 27
  %220 = load i16, ptr %219, align 4
  %221 = and i16 %220, 32
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %231, label %223, !prof !133

223:                                              ; preds = %218
  %224 = icmp ne i8 %0, 0
  %225 = load ptr, ptr %192, align 8, !tbaa !104
  %226 = getelementptr inbounds %struct.tree_decl_common, ptr %225, i64 0, i32 2
  %227 = load i64, ptr %226, align 8
  %228 = and i64 %227, 33554432
  %229 = icmp eq i64 %228, 0
  %230 = or i1 %224, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %223, %218
  tail call void @cgraph_remove_node(ptr noundef nonnull %192) #17
  br label %294

232:                                              ; preds = %223
  %233 = getelementptr inbounds %struct.cgraph_node, ptr %192, i64 0, i32 2
  %234 = load ptr, ptr %233, align 8, !tbaa !47
  %235 = icmp eq ptr %234, null
  br i1 %235, label %247, label %240

236:                                              ; preds = %240
  %237 = getelementptr inbounds %struct.cgraph_edge, ptr %241, i64 0, i32 4
  %238 = load ptr, ptr %237, align 8, !tbaa !47
  %239 = icmp eq ptr %238, null
  br i1 %239, label %247, label %240, !llvm.loop !134

240:                                              ; preds = %232, %236
  %241 = phi ptr [ %238, %236 ], [ %234, %232 ]
  %242 = getelementptr inbounds %struct.cgraph_edge, ptr %241, i64 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !88
  %244 = getelementptr inbounds %struct.cgraph_node, ptr %243, i64 0, i32 16
  %245 = load ptr, ptr %244, align 8, !tbaa !68
  %246 = icmp eq ptr %245, null
  br i1 %246, label %236, label %250

247:                                              ; preds = %236, %232
  %248 = and i16 %220, 1
  %249 = icmp eq i16 %248, 0
  br i1 %249, label %293, label %250

250:                                              ; preds = %240, %247
  %251 = getelementptr inbounds %struct.cgraph_node, ptr %192, i64 0, i32 11
  %252 = load ptr, ptr %251, align 8, !tbaa !47
  %253 = icmp eq ptr %252, null
  br i1 %253, label %263, label %258

254:                                              ; preds = %258
  %255 = getelementptr inbounds %struct.cgraph_node, ptr %259, i64 0, i32 9
  %256 = load ptr, ptr %255, align 8, !tbaa !47
  %257 = icmp eq ptr %256, null
  br i1 %257, label %263, label %258, !llvm.loop !135

258:                                              ; preds = %250, %254
  %259 = phi ptr [ %256, %254 ], [ %252, %250 ]
  %260 = getelementptr inbounds %struct.cgraph_node, ptr %259, i64 0, i32 16
  %261 = load ptr, ptr %260, align 8, !tbaa !68
  %262 = icmp eq ptr %261, null
  br i1 %262, label %254, label %269

263:                                              ; preds = %254, %250
  tail call void @cgraph_release_function_body(ptr noundef nonnull %192) #17
  %264 = load i16, ptr %219, align 4
  %265 = and i16 %264, -33
  store i16 %265, ptr %219, align 4
  %266 = getelementptr inbounds %struct.cgraph_node, ptr %192, i64 0, i32 18, i32 2
  %267 = load i8, ptr %266, align 8
  %268 = and i8 %267, -9
  store i8 %268, ptr %266, align 8
  br label %269

269:                                              ; preds = %258, %263
  tail call void @cgraph_node_remove_callees(ptr noundef nonnull %192) #17
  %270 = getelementptr inbounds %struct.cgraph_node, ptr %192, i64 0, i32 10
  %271 = load ptr, ptr %270, align 8, !tbaa !136
  %272 = icmp eq ptr %271, null
  br i1 %272, label %277, label %273

273:                                              ; preds = %269
  %274 = getelementptr inbounds %struct.cgraph_node, ptr %192, i64 0, i32 9
  %275 = load ptr, ptr %274, align 8, !tbaa !137
  %276 = getelementptr inbounds %struct.cgraph_node, ptr %271, i64 0, i32 9
  store ptr %275, ptr %276, align 8, !tbaa !137
  br label %285

277:                                              ; preds = %269
  %278 = getelementptr inbounds %struct.cgraph_node, ptr %192, i64 0, i32 12
  %279 = load ptr, ptr %278, align 8, !tbaa !125
  %280 = icmp eq ptr %279, null
  br i1 %280, label %285, label %281

281:                                              ; preds = %277
  %282 = getelementptr inbounds %struct.cgraph_node, ptr %192, i64 0, i32 9
  %283 = load ptr, ptr %282, align 8, !tbaa !137
  %284 = getelementptr inbounds %struct.cgraph_node, ptr %279, i64 0, i32 11
  store ptr %283, ptr %284, align 8, !tbaa !138
  br label %285

285:                                              ; preds = %277, %281, %273
  %286 = getelementptr inbounds %struct.cgraph_node, ptr %192, i64 0, i32 9
  %287 = load ptr, ptr %286, align 8, !tbaa !137
  %288 = icmp eq ptr %287, null
  br i1 %288, label %291, label %289

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.cgraph_node, ptr %287, i64 0, i32 10
  store ptr %271, ptr %290, align 8, !tbaa !136
  br label %291

291:                                              ; preds = %289, %285
  %292 = getelementptr inbounds %struct.cgraph_node, ptr %192, i64 0, i32 12
  store ptr null, ptr %292, align 8, !tbaa !125
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %286, i8 0, i64 16, i1 false)
  br label %294

293:                                              ; preds = %247
  tail call void @cgraph_remove_node(ptr noundef nonnull %192) #17
  br label %294

294:                                              ; preds = %231, %293, %291, %210
  %295 = phi i8 [ %193, %210 ], [ 1, %291 ], [ 1, %293 ], [ 1, %231 ]
  %296 = icmp eq ptr %195, null
  br i1 %296, label %187, label %191, !prof !109, !llvm.loop !139

297:                                              ; preds = %187, %312
  %298 = phi ptr [ %315, %312 ], [ %189, %187 ]
  %299 = getelementptr inbounds %struct.cgraph_node, ptr %298, i64 0, i32 19, i32 2
  %300 = load ptr, ptr %299, align 8, !tbaa !108
  %301 = icmp eq ptr %300, null
  br i1 %301, label %312, label %302, !prof !140

302:                                              ; preds = %297
  %303 = getelementptr inbounds %struct.cgraph_node, ptr %298, i64 0, i32 2
  %304 = load ptr, ptr %303, align 8, !tbaa !82
  %305 = icmp eq ptr %304, null
  br i1 %305, label %306, label %312, !prof !141

306:                                              ; preds = %302
  %307 = getelementptr inbounds %struct.cgraph_node, ptr %298, i64 0, i32 11
  %308 = load ptr, ptr %307, align 8, !tbaa !138
  %309 = icmp eq ptr %308, null
  br i1 %309, label %310, label %311

310:                                              ; preds = %306
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 293, ptr noundef nonnull @.str.2) #17
  br label %311

311:                                              ; preds = %306, %310
  store ptr null, ptr %299, align 8, !tbaa !108
  tail call fastcc void @update_inlined_to_pointer(ptr noundef nonnull %298, ptr noundef nonnull %298)
  br label %312

312:                                              ; preds = %311, %302, %297
  %313 = getelementptr inbounds %struct.cgraph_node, ptr %298, i64 0, i32 16
  store ptr null, ptr %313, align 8, !tbaa !68
  %314 = getelementptr inbounds %struct.cgraph_node, ptr %298, i64 0, i32 3
  %315 = load ptr, ptr %314, align 8, !tbaa !47
  %316 = icmp eq ptr %315, null
  br i1 %316, label %317, label %297, !prof !129, !llvm.loop !142

317:                                              ; preds = %312, %187
  tail call void @remove_unreachable_alias_pairs() #17
  ret i8 %188
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_has_body_p(ptr noundef) local_unnamed_addr #3

declare void @cgraph_node_remove_callees(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_node_name(ptr noundef) local_unnamed_addr #3

declare void @cgraph_remove_node(ptr noundef) local_unnamed_addr #3

declare void @cgraph_release_function_body(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @update_inlined_to_pointer(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #11 !prof !46 {
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2, %14
  %7 = phi ptr [ %16, %14 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.cgraph_edge, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 19, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !108
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  store ptr %1, ptr %10, align 8, !tbaa !108
  tail call fastcc void @update_inlined_to_pointer(ptr noundef %9, ptr noundef %1)
  br label %14

14:                                               ; preds = %6, %13
  %15 = getelementptr inbounds %struct.cgraph_edge, ptr %7, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !143

18:                                               ; preds = %14, %2
  ret void
}

declare void @remove_unreachable_alias_pairs() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @local_function_and_variable_visibility() #12 !prof !144 !PGOFuncName !145 {
  %1 = load i32, ptr @flag_whole_program, align 4, !tbaa !62
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_lto, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !146
  %6 = load i32, ptr @flag_whopr, align 4
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %5, i1 %7, i1 false, !prof !146
  %9 = zext i1 %8 to i8
  tail call fastcc void @function_and_variable_visibility(i8 noundef zeroext %9)
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_whole_program_function_and_variable_visibility() #13 !prof !147 !PGOFuncName !148 {
  %1 = load i32, ptr @flag_ltrans, align 4, !tbaa !62
  %2 = icmp eq i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @whole_program_function_and_variable_visibility() #9 !prof !144 !PGOFuncName !149 {
  %1 = load i32, ptr @flag_whole_program, align 4, !tbaa !62
  %2 = trunc i32 %1 to i8
  tail call fastcc void @function_and_variable_visibility(i8 noundef zeroext %2)
  %3 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8, !prof !150

5:                                                ; preds = %24, %0
  %6 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %45, label %28, !prof !150

8:                                                ; preds = %0, %24
  %9 = phi ptr [ %26, %24 ], [ %3, %0 ]
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 18, i32 2
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %24, label %14, !prof !151

14:                                               ; preds = %8
  %15 = load ptr, ptr %9, align 8, !tbaa !104
  %16 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %15, i64 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 512
  %19 = icmp ne i32 %18, 0
  %20 = and i8 %11, 4
  %21 = icmp eq i8 %20, 0
  %22 = or i1 %21, %19
  br i1 %22, label %24, label %23, !prof !152

23:                                               ; preds = %14
  tail call void @cgraph_mark_needed_node(ptr noundef nonnull %9) #17
  br label %24

24:                                               ; preds = %8, %14, %23
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = icmp eq ptr %26, null
  br i1 %27, label %5, label %8, !prof !153, !llvm.loop !154

28:                                               ; preds = %5, %41
  %29 = phi ptr [ %43, %41 ], [ %6, %5 ]
  %30 = getelementptr inbounds %struct.varpool_node, ptr %29, i64 0, i32 5
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, 32
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %41, label %34, !prof !155

34:                                               ; preds = %28
  %35 = load ptr, ptr %29, align 8, !tbaa !156
  %36 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %35, i64 0, i32 4
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 512
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41, !prof !158

40:                                               ; preds = %34
  tail call void @varpool_mark_needed_node(ptr noundef nonnull %29) #17
  br label %41

41:                                               ; preds = %28, %34, %40
  %42 = getelementptr inbounds %struct.varpool_node, ptr %29, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !47
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %28, !prof !159, !llvm.loop !160

45:                                               ; preds = %41, %5
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !47
  %47 = icmp eq ptr %46, null
  br i1 %47, label %69, label %48, !prof !158

48:                                               ; preds = %45
  %49 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 18, i64 1, ptr nonnull %46)
  %50 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !47
  %51 = icmp eq ptr %50, null
  br i1 %51, label %66, label %52

52:                                               ; preds = %48, %62
  %53 = phi ptr [ %64, %62 ], [ %50, %48 ]
  %54 = getelementptr inbounds %struct.varpool_node, ptr %53, i64 0, i32 5
  %55 = load i8, ptr %54, align 4
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = load ptr, ptr @dump_file, align 8, !tbaa !47
  %60 = tail call ptr @varpool_node_name(ptr noundef nonnull %53) #17
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef nonnull @.str.3, ptr noundef %60)
  br label %62

62:                                               ; preds = %52, %58
  %63 = getelementptr inbounds %struct.varpool_node, ptr %53, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !47
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %52, !llvm.loop !161

66:                                               ; preds = %62, %48
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !47
  %68 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %67)
  br label %69

69:                                               ; preds = %66, %45
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @cgraph_node_set_new() local_unnamed_addr #12 !prof !46 {
  %1 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #17
  %2 = tail call ptr @htab_create_alloc(i64 noundef 10, ptr noundef nonnull @hash_cgraph_node_set_element, ptr noundef nonnull @eq_cgraph_node_set_element, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #17
  store ptr %2, ptr %1, align 8, !tbaa !162
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %1, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !164
  ret ptr %1
}

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @hash_cgraph_node_set_element(ptr nocapture noundef readonly %0) #12 !prof !46 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !47
  %3 = load ptr, ptr %0, align 8, !tbaa !165
  %4 = tail call i32 %2(ptr noundef %3) #17
  ret i32 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @eq_cgraph_node_set_element(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #14 !prof !46 {
  %3 = load ptr, ptr %0, align 8, !tbaa !165
  %4 = load ptr, ptr %1, align 8, !tbaa !165
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

declare ptr @ggc_calloc(i64 noundef, i64 noundef) #3

declare void @ggc_free(ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define dso_local void @cgraph_node_set_add(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !46 {
  %3 = alloca %struct.cgraph_node_set_element_def, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  store ptr %1, ptr %3, align 8, !tbaa !165
  %4 = load ptr, ptr %0, align 8, !tbaa !162
  %5 = call ptr @htab_find_slot(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 1) #17
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !165
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !164
  %14 = getelementptr inbounds %struct.cgraph_node_set_element_def, ptr %6, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !167
  %16 = and i64 %15, 4294967295
  %17 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %13, i64 0, i32 2, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %47, label %20

20:                                               ; preds = %11, %8
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 631, ptr noundef nonnull @.str.2) #17
  br label %47

21:                                               ; preds = %2
  %22 = call ptr @ggc_alloc_stat(i64 noundef 16) #17
  store ptr %1, ptr %22, align 8, !tbaa !165
  %23 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !164
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, ptr %24, align 8, !tbaa !168
  %28 = zext i32 %27 to i64
  br label %29

29:                                               ; preds = %21, %26
  %30 = phi i64 [ %28, %26 ], [ 0, %21 ]
  %31 = getelementptr inbounds %struct.cgraph_node_set_element_def, ptr %22, i64 0, i32 1
  store i64 %30, ptr %31, align 8, !tbaa !167
  store ptr %22, ptr %5, align 8, !tbaa !47
  %32 = load ptr, ptr %23, align 8, !tbaa !47
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %32, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !170
  %37 = load i32, ptr %32, align 8, !tbaa !168
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %29, %34
  %40 = call ptr @vec_gc_p_reserve(ptr noundef %32, i32 noundef 1) #17
  store ptr %40, ptr %23, align 8, !tbaa !47
  br label %41

41:                                               ; preds = %34, %39
  %42 = load ptr, ptr %23, align 8, !tbaa !47
  %43 = load i32, ptr %42, align 8, !tbaa !168
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 8, !tbaa !168
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %42, i64 0, i32 2, i64 %45
  store ptr %1, ptr %46, align 8, !tbaa !47
  br label %47

47:                                               ; preds = %20, %11, %41
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  ret void
}

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @cgraph_node_set_remove(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #12 !prof !46 {
  %3 = alloca %struct.cgraph_node_set_element_def, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  store ptr %1, ptr %3, align 8, !tbaa !165
  %4 = load ptr, ptr %0, align 8, !tbaa !162
  %5 = call ptr @htab_find_slot(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 0) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %40, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !164
  %11 = getelementptr inbounds %struct.cgraph_node_set_element_def, ptr %8, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !167
  %13 = and i64 %12, 4294967295
  %14 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %10, i64 0, i32 2, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %18, label %17

17:                                               ; preds = %7
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 663, ptr noundef nonnull @.str.2) #17
  br label %18

18:                                               ; preds = %7, %17
  %19 = load ptr, ptr %9, align 8, !tbaa !164
  %20 = load i32, ptr %19, align 8, !tbaa !168
  %21 = add i32 %20, -1
  store i32 %21, ptr %19, align 8, !tbaa !168
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %19, i64 0, i32 2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %38, label %26

26:                                               ; preds = %18
  store ptr %24, ptr %3, align 8, !tbaa !165
  %27 = load ptr, ptr %0, align 8, !tbaa !162
  %28 = call ptr @htab_find_slot(ptr noundef %27, ptr noundef nonnull %3, i32 noundef 0) #17
  %29 = load ptr, ptr %28, align 8, !tbaa !47
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 673, ptr noundef nonnull @.str.2) #17
  br label %32

32:                                               ; preds = %26, %31
  %33 = load i64, ptr %11, align 8, !tbaa !167
  %34 = getelementptr inbounds %struct.cgraph_node_set_element_def, ptr %29, i64 0, i32 1
  store i64 %33, ptr %34, align 8, !tbaa !167
  %35 = load ptr, ptr %9, align 8, !tbaa !164
  %36 = and i64 %33, 4294967295
  %37 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %35, i64 0, i32 2, i64 %36
  store ptr %24, ptr %37, align 8, !tbaa !47
  br label %38

38:                                               ; preds = %32, %18
  %39 = load ptr, ptr %0, align 8, !tbaa !162
  call void @htab_clear_slot(ptr noundef %39, ptr noundef nonnull %5) #17
  call void @ggc_free(ptr noundef %8) #17
  br label %40

40:                                               ; preds = %2, %38
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  ret void
}

declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local { ptr, i32 } @cgraph_node_set_find(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !46 {
  %3 = alloca %struct.cgraph_node_set_element_def, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  store ptr %1, ptr %3, align 8, !tbaa !165
  %4 = load ptr, ptr %0, align 8, !tbaa !162
  %5 = call ptr @htab_find_slot(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 0) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !164
  %11 = getelementptr inbounds %struct.cgraph_node_set_element_def, ptr %8, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !167
  %13 = and i64 %12, 4294967295
  %14 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %10, i64 0, i32 2, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %18, label %17

17:                                               ; preds = %7
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 705, ptr noundef nonnull @.str.2) #17
  br label %18

18:                                               ; preds = %7, %17
  %19 = load i64, ptr %11, align 8, !tbaa !167
  %20 = trunc i64 %19 to i32
  br label %21

21:                                               ; preds = %2, %18
  %22 = phi i32 [ %20, %18 ], [ -1, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  %23 = insertvalue { ptr, i32 } poison, ptr %0, 0
  %24 = insertvalue { ptr, i32 } %23, i32 %22, 1
  ret { ptr, i32 } %24
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_cgraph_node_set(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 !prof !46 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %1, i64 0, i32 1
  br label %4

4:                                                ; preds = %13, %2
  %5 = phi i32 [ 0, %2 ], [ %17, %13 ]
  %6 = load ptr, ptr %3, align 8, !tbaa !164
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %6, align 8, !tbaa !168
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi i32 [ %9, %8 ], [ 0, %4 ]
  %12 = icmp ugt i32 %11, %5
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = zext i32 %5 to i64
  %15 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %6, i64 0, i32 2, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  tail call void @dump_cgraph_node(ptr noundef %0, ptr noundef %16) #17
  %17 = add nuw i32 %5, 1
  br label %4, !llvm.loop !171

18:                                               ; preds = %10
  ret void
}

declare void @dump_cgraph_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_cgraph_node_set(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !prof !46 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %13, %1
  %5 = phi i32 [ 0, %1 ], [ %17, %13 ]
  %6 = load ptr, ptr %3, align 8, !tbaa !164
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %6, align 8, !tbaa !168
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %9, %8 ], [ 0, %4 ]
  %12 = icmp ugt i32 %11, %5
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = zext i32 %5 to i64
  %15 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %6, i64 0, i32 2, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  tail call void @dump_cgraph_node(ptr noundef %2, ptr noundef %16) #17
  %17 = add nuw i32 %5, 1
  br label %4, !llvm.loop !171

18:                                               ; preds = %10
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @function_and_variable_visibility(i8 noundef zeroext %0) unnamed_addr #9 !prof !147 !PGOFuncName !172 {
  %2 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !47
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4, !prof !150

4:                                                ; preds = %1
  %5 = icmp eq i8 %0, 0
  %6 = icmp eq i8 %0, 0
  br label %10

7:                                                ; preds = %182, %1
  %8 = load ptr, ptr @varpool_nodes, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %191, label %197, !prof !150

10:                                               ; preds = %4, %182
  %11 = phi ptr [ %2, %4 ], [ %189, %182 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !104
  %13 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %12, i64 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 512
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17, !prof !173

17:                                               ; preds = %10
  %18 = load i64, ptr %12, align 8
  %19 = and i64 %18, 134217728
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = and i32 %14, -513
  store i32 %22, ptr %13, align 8
  br label %23

23:                                               ; preds = %21, %17, %10
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %11, i64 0, i32 14
  %25 = load ptr, ptr %24, align 8, !tbaa !122
  %26 = icmp eq ptr %25, null
  br i1 %26, label %45, label %27, !prof !173

27:                                               ; preds = %23
  %28 = load ptr, ptr %11, align 8, !tbaa !104
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %28, i64 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 33554432
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %27, %41
  %34 = phi ptr [ %43, %41 ], [ %11, %27 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !104
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %35, i64 0, i32 2
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 33554432
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 385, ptr noundef nonnull @.str.2) #17
  br label %41

41:                                               ; preds = %33, %40
  %42 = getelementptr inbounds %struct.cgraph_node, ptr %34, i64 0, i32 14
  %43 = load ptr, ptr %42, align 8, !tbaa !122
  store ptr null, ptr %42, align 8, !tbaa !122
  %44 = icmp eq ptr %43, %11
  br i1 %44, label %45, label %33, !llvm.loop !174

45:                                               ; preds = %41, %27, %23
  %46 = load ptr, ptr %11, align 8, !tbaa !104
  %47 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %46, i64 0, i32 4
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, 640
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %61, label %51, !prof !173

51:                                               ; preds = %45
  %52 = load i64, ptr %46, align 8
  %53 = and i64 %52, 134217728
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.tree_decl_common, ptr %46, i64 0, i32 2
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, 33554432
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 393, ptr noundef nonnull @.str.2) #17
  br label %61

61:                                               ; preds = %45, %51, %55, %60
  %62 = getelementptr inbounds %struct.cgraph_node, ptr %11, i64 0, i32 18, i32 2
  %63 = load i8, ptr %62, align 8
  %64 = and i8 %63, 4
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %130, label %66, !prof !175

66:                                               ; preds = %61
  %67 = load ptr, ptr %11, align 8, !tbaa !104
  %68 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %67, i64 0, i32 4
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 512
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %83, !prof !176

72:                                               ; preds = %66
  %73 = load i64, ptr %67, align 8
  %74 = and i64 %73, 134217728
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %130, label %76, !prof !177

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.tree_decl_common, ptr %67, i64 0, i32 2
  %78 = load i64, ptr %77, align 8
  %79 = and i64 %78, 33554432
  %80 = icmp ne i64 %79, 0
  %81 = or i1 %80, %5
  %82 = xor i1 %80, true
  br i1 %81, label %120, label %84, !prof !178

83:                                               ; preds = %66
  br i1 %5, label %122, label %84, !prof !179

84:                                               ; preds = %76, %83
  %85 = getelementptr inbounds %struct.tree_decl_common, ptr %67, i64 0, i32 2
  %86 = load i64, ptr %85, align 8
  %87 = and i64 %86, 8192
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %122

89:                                               ; preds = %84
  br i1 %71, label %110, label %90

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.cgraph_node, ptr %11, i64 0, i32 27
  %92 = load i16, ptr %91, align 4
  %93 = and i16 %92, 34
  %94 = icmp eq i16 %93, 32
  br i1 %94, label %95, label %122

95:                                               ; preds = %90
  %96 = load ptr, ptr %24, align 8, !tbaa !122
  %97 = icmp eq ptr %96, null
  %98 = icmp eq ptr %96, %11
  %99 = or i1 %97, %98
  br i1 %99, label %110, label %100

100:                                              ; preds = %95, %106
  %101 = phi ptr [ %108, %106 ], [ %96, %95 ]
  %102 = getelementptr inbounds %struct.cgraph_node, ptr %101, i64 0, i32 27
  %103 = load i16, ptr %102, align 4
  %104 = and i16 %103, 34
  %105 = icmp eq i16 %104, 32
  br i1 %105, label %106, label %122

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.cgraph_node, ptr %101, i64 0, i32 14
  %108 = load ptr, ptr %107, align 8, !tbaa !122
  %109 = icmp eq ptr %108, %11
  br i1 %109, label %110, label %100, !llvm.loop !180

110:                                              ; preds = %106, %95, %89
  %111 = getelementptr inbounds %struct.tree_decl_minimal, ptr %67, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !58
  %113 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 56), align 16, !tbaa !47
  %114 = icmp eq ptr %112, %113
  br i1 %114, label %122, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.tree_decl_common, ptr %67, i64 0, i32 6
  %117 = load ptr, ptr %116, align 8, !tbaa !58
  %118 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.6, ptr noundef %117) #17
  %119 = icmp ne ptr %118, null
  br label %120

120:                                              ; preds = %76, %115
  %121 = phi i1 [ %119, %115 ], [ %82, %76 ]
  br i1 %121, label %122, label %130, !prof !181

122:                                              ; preds = %100, %83, %84, %90, %110, %120
  %123 = getelementptr inbounds %struct.cgraph_node, ptr %11, i64 0, i32 19, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !108
  %125 = icmp eq ptr %124, null
  br i1 %125, label %127, label %126, !prof !179

126:                                              ; preds = %122
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 396, ptr noundef nonnull @.str.2) #17
  br label %127

127:                                              ; preds = %122, %126
  %128 = load i8, ptr %62, align 8
  %129 = or i8 %128, 2
  br label %133

130:                                              ; preds = %61, %72, %120
  %131 = load i8, ptr %62, align 8
  %132 = and i8 %131, -3
  br label %133

133:                                              ; preds = %130, %127
  %134 = phi i8 [ %129, %127 ], [ %132, %130 ]
  store i8 %134, ptr %62, align 8
  %135 = and i8 %134, 2
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %156, !prof !182

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.cgraph_node, ptr %11, i64 0, i32 27
  %139 = load i16, ptr %138, align 4
  %140 = and i16 %139, 32
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %156, label %142, !prof !183

142:                                              ; preds = %137
  %143 = load ptr, ptr %11, align 8, !tbaa !104
  %144 = getelementptr inbounds %struct.tree_decl_common, ptr %143, i64 0, i32 2
  %145 = load i64, ptr %144, align 8
  %146 = and i64 %145, 33554432
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %156, !prof !184

148:                                              ; preds = %142
  br i1 %6, label %149, label %154, !prof !184

149:                                              ; preds = %148
  %150 = load i64, ptr %143, align 8
  %151 = and i64 %150, 134217728
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %154, label %153, !prof !184

153:                                              ; preds = %149
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 404, ptr noundef nonnull @.str.2) #17
  br label %154

154:                                              ; preds = %148, %149, %153
  %155 = load ptr, ptr %11, align 8, !tbaa !104
  tail call void @cgraph_make_decl_local(ptr noundef %155) #17
  br label %156

156:                                              ; preds = %154, %142, %137, %133
  %157 = getelementptr inbounds %struct.cgraph_node, ptr %11, i64 0, i32 27
  %158 = load i16, ptr %157, align 4
  %159 = and i16 %158, 1
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %161, label %166, !prof !182

161:                                              ; preds = %156
  %162 = load i8, ptr %62, align 8
  %163 = lshr i8 %162, 1
  %164 = and i8 %163, 1
  %165 = xor i8 %164, 1
  br label %166

166:                                              ; preds = %156, %161
  %167 = phi i8 [ 0, %156 ], [ %165, %161 ]
  %168 = icmp eq i8 %167, 0
  %169 = and i16 %158, 32
  %170 = icmp eq i16 %169, 0
  %171 = or i1 %170, %168
  br i1 %171, label %182, label %172, !prof !185

172:                                              ; preds = %166
  %173 = load ptr, ptr %11, align 8, !tbaa !104
  %174 = getelementptr inbounds %struct.tree_decl_common, ptr %173, i64 0, i32 2
  %175 = load i64, ptr %174, align 8
  %176 = and i64 %175, 33554432
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %182, !prof !184

178:                                              ; preds = %172
  %179 = load i8, ptr %62, align 8
  %180 = and i8 %179, 2
  %181 = icmp eq i8 %180, 0
  br label %182

182:                                              ; preds = %178, %172, %166
  %183 = phi i1 [ false, %172 ], [ false, %166 ], [ %181, %178 ]
  %184 = zext i1 %183 to i8
  %185 = load i8, ptr %62, align 8
  %186 = and i8 %185, -2
  %187 = or disjoint i8 %186, %184
  store i8 %187, ptr %62, align 8
  %188 = getelementptr inbounds %struct.cgraph_node, ptr %11, i64 0, i32 3
  %189 = load ptr, ptr %188, align 8, !tbaa !47
  %190 = icmp eq ptr %189, null
  br i1 %190, label %7, label %10, !prof !186, !llvm.loop !187

191:                                              ; preds = %250, %7
  %192 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !47
  %193 = icmp eq ptr %192, null
  br i1 %193, label %311, label %194, !prof !150

194:                                              ; preds = %191
  %195 = icmp eq i8 %0, 0
  %196 = icmp eq i8 %0, 0
  br label %254

197:                                              ; preds = %7, %250
  %198 = phi ptr [ %252, %250 ], [ %8, %7 ]
  %199 = load ptr, ptr %198, align 8, !tbaa !156
  %200 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %199, i64 0, i32 4
  %201 = load i32, ptr %200, align 8
  %202 = and i32 %201, 128
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %214, label %204, !prof !188

204:                                              ; preds = %197
  %205 = load i64, ptr %199, align 8
  %206 = and i64 %205, 134217728
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.tree_decl_common, ptr %199, i64 0, i32 2
  %210 = load i64, ptr %209, align 8
  %211 = and i64 %210, 33554432
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %208
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 416, ptr noundef nonnull @.str.2) #17
  br label %214

214:                                              ; preds = %197, %204, %208, %213
  %215 = load ptr, ptr %198, align 8, !tbaa !156
  %216 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %215, i64 0, i32 4
  %217 = load i32, ptr %216, align 8
  %218 = and i32 %217, 8
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %250, label %220, !prof !189

220:                                              ; preds = %214
  %221 = load i64, ptr %215, align 8
  %222 = and i64 %221, 134217728
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %229, !prof !190

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.tree_decl_common, ptr %215, i64 0, i32 2
  %226 = load i64, ptr %225, align 8
  %227 = and i64 %226, 33554432
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %248, label %229

229:                                              ; preds = %224, %220
  %230 = getelementptr inbounds %struct.tree_decl_common, ptr %215, i64 0, i32 5
  %231 = load ptr, ptr %230, align 8, !tbaa !58
  %232 = icmp eq ptr %231, null
  %233 = load ptr, ptr @global_trees, align 16
  %234 = icmp eq ptr %231, %233
  %235 = select i1 %232, i1 true, i1 %234, !prof !191
  %236 = and i32 %217, 128
  %237 = icmp eq i32 %236, 0
  %238 = and i1 %237, %235
  br i1 %238, label %239, label %248, !prof !192

239:                                              ; preds = %229
  %240 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %215, i64 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !58
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %248, !prof !191

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.tree_common, ptr %215, i64 0, i32 2
  %245 = load ptr, ptr %244, align 8, !tbaa !58
  %246 = load i64, ptr %245, align 8
  %247 = icmp ult i64 %246, 72057594037927936
  br i1 %247, label %250, label %248, !prof !191

248:                                              ; preds = %229, %243, %239, %224
  %249 = and i32 %217, -9
  store i32 %249, ptr %216, align 8
  br label %250

250:                                              ; preds = %214, %243, %248
  %251 = getelementptr inbounds %struct.varpool_node, ptr %198, i64 0, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !47
  %253 = icmp eq ptr %252, null
  br i1 %253, label %191, label %197, !prof !193, !llvm.loop !194

254:                                              ; preds = %194, %307
  %255 = phi ptr [ %192, %194 ], [ %309, %307 ]
  %256 = getelementptr inbounds %struct.varpool_node, ptr %255, i64 0, i32 5
  %257 = load i8, ptr %256, align 4
  %258 = and i8 %257, 8
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %307, label %260, !prof !195

260:                                              ; preds = %254
  %261 = and i8 %257, 1
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %285, label %263, !prof !195

263:                                              ; preds = %260
  %264 = load ptr, ptr %255, align 8, !tbaa !156
  %265 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %264, i64 0, i32 4
  %266 = load i32, ptr %265, align 8
  %267 = and i32 %266, 512
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %273, !prof !196

269:                                              ; preds = %263
  %270 = load i64, ptr %264, align 8
  %271 = and i64 %270, 134217728
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %285, label %273, !prof !197

273:                                              ; preds = %269, %263
  br i1 %195, label %282, label %274, !prof !198

274:                                              ; preds = %273
  %275 = and i32 %266, 640
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %274
  %278 = getelementptr inbounds %struct.tree_decl_common, ptr %264, i64 0, i32 6
  %279 = load ptr, ptr %278, align 8, !tbaa !58
  %280 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.6, ptr noundef %279) #17
  %281 = icmp eq ptr %280, null
  br i1 %281, label %285, label %282

282:                                              ; preds = %277, %274, %273
  %283 = load i8, ptr %256, align 4
  %284 = or i8 %283, 32
  br label %288

285:                                              ; preds = %277, %269, %260
  %286 = load i8, ptr %256, align 4
  %287 = and i8 %286, -33
  br label %288

288:                                              ; preds = %285, %282
  %289 = phi i8 [ %287, %285 ], [ %284, %282 ]
  store i8 %289, ptr %256, align 4
  %290 = and i8 %289, 32
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %292, label %301, !prof !197

292:                                              ; preds = %288
  br i1 %196, label %293, label %299, !prof !179

293:                                              ; preds = %292
  %294 = load ptr, ptr %255, align 8, !tbaa !156
  %295 = load i64, ptr %294, align 8
  %296 = and i64 %295, 134217728
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %299, label %298, !prof !179

298:                                              ; preds = %293
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 459, ptr noundef nonnull @.str.2) #17
  br label %299

299:                                              ; preds = %292, %293, %298
  %300 = load ptr, ptr %255, align 8, !tbaa !156
  tail call void @cgraph_make_decl_local(ptr noundef %300) #17
  br label %301

301:                                              ; preds = %299, %288
  %302 = load ptr, ptr %255, align 8, !tbaa !156
  %303 = load i64, ptr %302, align 8
  %304 = and i64 %303, 67108864
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %306, label %307, !prof !195

306:                                              ; preds = %301
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 462, ptr noundef nonnull @.str.2) #17
  br label %307

307:                                              ; preds = %306, %301, %254
  %308 = getelementptr inbounds %struct.varpool_node, ptr %255, i64 0, i32 2
  %309 = load ptr, ptr %308, align 8, !tbaa !47
  %310 = icmp eq ptr %309, null
  br i1 %310, label %311, label %254, !prof !159, !llvm.loop !199

311:                                              ; preds = %307, %191
  %312 = load ptr, ptr @dump_file, align 8, !tbaa !47
  %313 = icmp eq ptr %312, null
  br i1 %313, label %377, label %314, !prof !198

314:                                              ; preds = %311
  %315 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 25, i64 1, ptr nonnull %312)
  %316 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !47
  %317 = icmp eq ptr %316, null
  br i1 %317, label %332, label %318

318:                                              ; preds = %314, %328
  %319 = phi ptr [ %330, %328 ], [ %316, %314 ]
  %320 = getelementptr inbounds %struct.cgraph_node, ptr %319, i64 0, i32 18, i32 2
  %321 = load i8, ptr %320, align 8
  %322 = and i8 %321, 1
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %328, label %324

324:                                              ; preds = %318
  %325 = load ptr, ptr @dump_file, align 8, !tbaa !47
  %326 = tail call ptr @cgraph_node_name(ptr noundef nonnull %319) #17
  %327 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %325, ptr noundef nonnull @.str.3, ptr noundef %326)
  br label %328

328:                                              ; preds = %318, %324
  %329 = getelementptr inbounds %struct.cgraph_node, ptr %319, i64 0, i32 3
  %330 = load ptr, ptr %329, align 8, !tbaa !47
  %331 = icmp eq ptr %330, null
  br i1 %331, label %332, label %318, !llvm.loop !200

332:                                              ; preds = %328, %314
  %333 = load ptr, ptr @dump_file, align 8, !tbaa !47
  %334 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %333)
  %335 = load ptr, ptr @dump_file, align 8, !tbaa !47
  %336 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 38, i64 1, ptr %335)
  %337 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !47
  %338 = icmp eq ptr %337, null
  br i1 %338, label %353, label %339

339:                                              ; preds = %332, %349
  %340 = phi ptr [ %351, %349 ], [ %337, %332 ]
  %341 = getelementptr inbounds %struct.cgraph_node, ptr %340, i64 0, i32 18, i32 2
  %342 = load i8, ptr %341, align 8
  %343 = and i8 %342, 2
  %344 = icmp eq i8 %343, 0
  br i1 %344, label %349, label %345

345:                                              ; preds = %339
  %346 = load ptr, ptr @dump_file, align 8, !tbaa !47
  %347 = tail call ptr @cgraph_node_name(ptr noundef nonnull %340) #17
  %348 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %346, ptr noundef nonnull @.str.3, ptr noundef %347)
  br label %349

349:                                              ; preds = %339, %345
  %350 = getelementptr inbounds %struct.cgraph_node, ptr %340, i64 0, i32 3
  %351 = load ptr, ptr %350, align 8, !tbaa !47
  %352 = icmp eq ptr %351, null
  br i1 %352, label %353, label %339, !llvm.loop !201

353:                                              ; preds = %349, %332
  %354 = load ptr, ptr @dump_file, align 8, !tbaa !47
  %355 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %354)
  %356 = load ptr, ptr @dump_file, align 8, !tbaa !47
  %357 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 38, i64 1, ptr %356)
  %358 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !47
  %359 = icmp eq ptr %358, null
  br i1 %359, label %374, label %360

360:                                              ; preds = %353, %370
  %361 = phi ptr [ %372, %370 ], [ %358, %353 ]
  %362 = getelementptr inbounds %struct.varpool_node, ptr %361, i64 0, i32 5
  %363 = load i8, ptr %362, align 4
  %364 = and i8 %363, 32
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %370, label %366

366:                                              ; preds = %360
  %367 = load ptr, ptr @dump_file, align 8, !tbaa !47
  %368 = tail call ptr @varpool_node_name(ptr noundef nonnull %361) #17
  %369 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %367, ptr noundef nonnull @.str.3, ptr noundef %368)
  br label %370

370:                                              ; preds = %360, %366
  %371 = getelementptr inbounds %struct.varpool_node, ptr %361, i64 0, i32 2
  %372 = load ptr, ptr %371, align 8, !tbaa !47
  %373 = icmp eq ptr %372, null
  br i1 %373, label %374, label %360, !llvm.loop !202

374:                                              ; preds = %370, %353
  %375 = load ptr, ptr @dump_file, align 8, !tbaa !47
  %376 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %375)
  br label %377

377:                                              ; preds = %374, %311
  store i8 1, ptr @cgraph_function_flags_ready, align 1, !tbaa !58
  ret void
}

declare void @cgraph_make_decl_local(ptr noundef) local_unnamed_addr #3

declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @varpool_node_name(ptr noundef) local_unnamed_addr #3

declare void @cgraph_mark_needed_node(ptr noundef) local_unnamed_addr #3

declare void @varpool_mark_needed_node(ptr noundef) local_unnamed_addr #3

declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

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
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!45}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!35 = !{ptr @cgraph_postorder, ptr @xcalloc, i64 3}
!36 = !{ptr @cgraph_postorder, ptr @free, i64 3}
!37 = !{ptr @cgraph_remove_unreachable_nodes, ptr @gimple_has_body_p, i64 114}
!38 = !{ptr @cgraph_remove_unreachable_nodes, ptr @cgraph_remove_node, i64 615}
!39 = !{ptr @cgraph_remove_unreachable_nodes, ptr @remove_unreachable_alias_pairs, i64 9}
!40 = !{ptr @local_function_and_variable_visibility, ptr @function_and_variable_visibility, i64 1}
!41 = !{ptr @whole_program_function_and_variable_visibility, ptr @function_and_variable_visibility, i64 1}
!42 = !{ptr @whole_program_function_and_variable_visibility, ptr @cgraph_mark_needed_node, i64 38}
!43 = !{ptr @whole_program_function_and_variable_visibility, ptr @varpool_mark_needed_node, i64 1}
!44 = !{ptr @function_and_variable_visibility, ptr @cgraph_make_decl_local, i64 79}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"any pointer", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !{!52, !48, i64 8}
!52 = !{!"_IO_FILE", !53, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !48, i64 80, !48, i64 88, !48, i64 96, !48, i64 104, !53, i64 112, !53, i64 116, !54, i64 120, !55, i64 128, !49, i64 130, !49, i64 131, !48, i64 136, !54, i64 144, !48, i64 152, !48, i64 160, !48, i64 168, !48, i64 176, !54, i64 184, !53, i64 192, !49, i64 196}
!53 = !{!"int", !49, i64 0}
!54 = !{!"long", !49, i64 0}
!55 = !{!"short", !49, i64 0}
!56 = !{!52, !48, i64 16}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{!49, !49, i64 0}
!59 = !{!52, !48, i64 40}
!60 = !{!52, !48, i64 48}
!61 = !{!52, !53, i64 0}
!62 = !{!53, !53, i64 0}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!"function_entry_count", i64 3}
!67 = !{!"branch_weights", i32 1, i32 191}
!68 = !{!69, !48, i64 128}
!69 = !{!"cgraph_node", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !48, i64 80, !48, i64 88, !48, i64 96, !48, i64 104, !48, i64 112, !48, i64 120, !48, i64 128, !48, i64 136, !70, i64 144, !72, i64 184, !73, i64 224, !74, i64 232, !75, i64 256, !54, i64 288, !53, i64 296, !53, i64 300, !53, i64 304, !53, i64 308, !53, i64 308, !53, i64 308, !53, i64 308, !53, i64 308, !53, i64 308, !53, i64 308, !53, i64 308, !53, i64 309, !53, i64 309}
!70 = !{!"cgraph_local_info", !48, i64 0, !71, i64 8, !53, i64 32, !53, i64 32, !53, i64 32, !53, i64 32, !53, i64 32, !53, i64 32, !53, i64 32, !53, i64 32}
!71 = !{!"inline_summary", !54, i64 0, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20}
!72 = !{!"cgraph_global_info", !54, i64 0, !54, i64 8, !48, i64 16, !53, i64 24, !53, i64 28, !53, i64 32, !49, i64 36}
!73 = !{!"cgraph_rtl_info", !53, i64 0}
!74 = !{!"cgraph_clone_info", !48, i64 0, !48, i64 8, !48, i64 16}
!75 = !{!"cgraph_thunk_info", !54, i64 0, !54, i64 8, !48, i64 16, !49, i64 24, !49, i64 25, !49, i64 26}
!76 = !{!"branch_weights", i32 191, i32 16705}
!77 = distinct !{!77, !64, !65}
!78 = !{!"branch_weights", i32 349, i32 179}
!79 = !{!"branch_weights", i32 204, i32 145}
!80 = !{!"branch_weights", i32 150, i32 54}
!81 = !{!"branch_weights", i32 2916, i32 8100}
!82 = !{!69, !48, i64 16}
!83 = !{!"branch_weights", i32 28, i32 171}
!84 = !{!"branch_weights", i32 246, i32 207435}
!85 = !{!86, !48, i64 32}
!86 = !{!"cgraph_edge", !54, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !53, i64 72, !53, i64 76, !53, i64 80, !53, i64 84, !55, i64 88, !53, i64 90, !53, i64 90, !53, i64 90}
!87 = !{!"branch_weights", i32 218, i32 207217}
!88 = !{!86, !48, i64 8}
!89 = !{!"branch_weights", i32 65, i32 207370}
!90 = distinct !{!90, !64, !65}
!91 = !{!"branch_weights", i32 18, i32 47}
!92 = !{!"branch_weights", i32 264, i32 47}
!93 = !{!"branch_weights", i32 199, i32 65}
!94 = !{!"branch_weights", i32 199, i32 112}
!95 = distinct !{!95, !64, !65}
!96 = distinct !{!96, !64, !65}
!97 = !{!"branch_weights", i32 3, i32 3}
!98 = distinct !{!98, !64, !65}
!99 = distinct !{!99, !64, !65}
!100 = !{!"function_entry_count", i64 9}
!101 = !{!"branch_weights", i32 9, i32 0}
!102 = !{!"branch_weights", i32 1, i32 143}
!103 = !{!"branch_weights", i32 1064, i32 342}
!104 = !{!69, !48, i64 0}
!105 = !{!"branch_weights", i32 1064, i32 0}
!106 = !{!"branch_weights", i32 342, i32 1064}
!107 = !{!"branch_weights", i32 342, i32 0}
!108 = !{!69, !48, i64 200}
!109 = !{!"branch_weights", i32 143, i32 22353}
!110 = distinct !{!110, !64, !65}
!111 = !{!"branch_weights", i32 0, i32 791}
!112 = !{!"branch_weights", i32 1, i32 790}
!113 = !{!86, !48, i64 16}
!114 = !{!"branch_weights", i32 449, i32 621850}
!115 = !{!"branch_weights", i32 0, i32 449}
!116 = !{!86, !53, i64 72}
!117 = !{!"branch_weights", i32 441, i32 8}
!118 = !{!"branch_weights", i32 8, i32 0}
!119 = !{!"branch_weights", i32 0, i32 449, i32 0}
!120 = !{!"branch_weights", i32 790, i32 621509}
!121 = distinct !{!121, !64, !65}
!122 = !{!69, !48, i64 112}
!123 = !{!"branch_weights", i32 791, i32 0}
!124 = distinct !{!124, !64, !65}
!125 = !{!69, !48, i64 96}
!126 = !{!"branch_weights", i32 668, i32 123}
!127 = !{!"branch_weights", i32 114, i32 9}
!128 = !{!"branch_weights", i32 0, i32 114}
!129 = !{!"branch_weights", i32 143, i32 12513}
!130 = distinct !{!130, !64, !65}
!131 = !{!69, !48, i64 24}
!132 = !{!"branch_weights", i32 615, i32 791}
!133 = !{!"branch_weights", i32 615, i32 0}
!134 = distinct !{!134, !64, !65}
!135 = distinct !{!135, !64, !65}
!136 = !{!69, !48, i64 80}
!137 = !{!69, !48, i64 72}
!138 = !{!69, !48, i64 88}
!139 = distinct !{!139, !64, !65}
!140 = !{!"branch_weights", i32 665, i32 126}
!141 = !{!"branch_weights", i32 0, i32 126}
!142 = distinct !{!142, !64, !65}
!143 = distinct !{!143, !64, !65}
!144 = !{!"function_entry_count", i64 1}
!145 = !{!"ipa.c;local_function_and_variable_visibility"}
!146 = !{!"branch_weights", i32 0, i32 1}
!147 = !{!"function_entry_count", i64 2}
!148 = !{!"ipa.c;gate_whole_program_function_and_variable_visibility"}
!149 = !{!"ipa.c;whole_program_function_and_variable_visibility"}
!150 = !{!"branch_weights", i32 1, i32 127}
!151 = !{!"branch_weights", i32 36, i32 38}
!152 = !{!"branch_weights", i32 0, i32 38}
!153 = !{!"branch_weights", i32 127, i32 9345}
!154 = distinct !{!154, !64, !65}
!155 = !{!"branch_weights", i32 38, i32 1}
!156 = !{!157, !48, i64 0}
!157 = !{!"varpool_node", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !53, i64 32, !53, i64 36, !53, i64 36, !53, i64 36, !53, i64 36, !53, i64 36, !53, i64 36, !53, i64 36}
!158 = !{!"branch_weights", i32 1, i32 0}
!159 = !{!"branch_weights", i32 127, i32 4865}
!160 = distinct !{!160, !64, !65}
!161 = distinct !{!161, !64, !65}
!162 = !{!163, !48, i64 0}
!163 = !{!"cgraph_node_set_def", !48, i64 0, !48, i64 8, !48, i64 16}
!164 = !{!163, !48, i64 8}
!165 = !{!166, !48, i64 0}
!166 = !{!"cgraph_node_set_element_def", !48, i64 0, !54, i64 8}
!167 = !{!166, !54, i64 8}
!168 = !{!169, !53, i64 0}
!169 = !{!"VEC_cgraph_node_ptr_base", !53, i64 0, !53, i64 4, !49, i64 8}
!170 = !{!169, !53, i64 4}
!171 = distinct !{!171, !64, !65}
!172 = !{!"ipa.c;function_and_variable_visibility"}
!173 = !{!"branch_weights", i32 764, i32 0}
!174 = distinct !{!174, !64, !65}
!175 = !{!"branch_weights", i32 685, i32 79}
!176 = !{!"branch_weights", i32 79, i32 0}
!177 = !{!"branch_weights", i32 3, i32 76}
!178 = !{!"branch_weights", i32 5776, i32 0}
!179 = !{!"branch_weights", i32 76, i32 0}
!180 = distinct !{!180, !64, !65}
!181 = !{!"branch_weights", i32 76, i32 688}
!182 = !{!"branch_weights", i32 688, i32 76}
!183 = !{!"branch_weights", i32 685, i32 3}
!184 = !{!"branch_weights", i32 3, i32 0}
!185 = !{!"branch_weights", i32 523568, i32 2064}
!186 = !{!"branch_weights", i32 127, i32 48769}
!187 = distinct !{!187, !64, !65}
!188 = !{!"branch_weights", i32 92, i32 0}
!189 = !{!"branch_weights", i32 78, i32 14}
!190 = !{!"branch_weights", i32 0, i32 14}
!191 = !{!"branch_weights", i32 14, i32 0}
!192 = !{!"branch_weights", i32 196, i32 0}
!193 = !{!"branch_weights", i32 127, i32 5761}
!194 = distinct !{!194, !64, !65}
!195 = !{!"branch_weights", i32 0, i32 78}
!196 = !{!"branch_weights", i32 78, i32 0}
!197 = !{!"branch_weights", i32 76, i32 2}
!198 = !{!"branch_weights", i32 2, i32 0}
!199 = distinct !{!199, !64, !65}
!200 = distinct !{!200, !64, !65}
!201 = distinct !{!201, !64, !65}
!202 = distinct !{!202, !64, !65}

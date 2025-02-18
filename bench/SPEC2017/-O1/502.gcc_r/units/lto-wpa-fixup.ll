; ModuleID = 'lto-wpa-fixup.c'
source_filename = "lto-wpa-fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ipa_opt_pass_d = type { %struct.opt_pass, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.cgraph_node_set_def = type { ptr, ptr, ptr }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x ptr] }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.lto_simple_output_block = type { i32, ptr, ptr }
%struct.lto_tree_ref_table = type { ptr, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@flag_wpa = external local_unnamed_addr global i32, align 4
@lto_nothrow_fndecls = internal unnamed_addr global ptr null, align 8
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"lto-wpa-fixup.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"lto_wpa_fixup\00", align 1
@pass_ipa_lto_wpa_fixup = dso_local local_unnamed_addr global %struct.ipa_opt_pass_d { %struct.opt_pass { i32 3, ptr @.str.2, ptr @gate_wpa_fixup, ptr null, ptr null, ptr null, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 1 }, ptr null, ptr @lto_output_wpa_fixup, ptr @lto_input_wpa_fixup, ptr null, ptr null, i32 0, ptr null, ptr null }, align 8
@flag_ltrans = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"./lto-streamer.h\00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #11
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #11
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #11
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #11
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #11
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #11
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #11
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
  %5 = tail call ptr @__ctype_tolower_loc() #11
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
  %5 = tail call ptr @__ctype_toupper_loc() #11
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #11
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
define dso_local void @lto_fixup_nothrow_decls() local_unnamed_addr #9 !prof !34 {
  %1 = load i32, ptr @flag_wpa, align 4, !tbaa !50
  %2 = icmp ne i32 %1, 0
  %3 = load ptr, ptr @lto_nothrow_fndecls, align 8
  %4 = icmp eq ptr %3, null
  %5 = select i1 %2, i1 true, i1 %4
  %6 = load ptr, ptr @cgraph_nodes, align 8
  %7 = icmp eq ptr %6, null
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %51, label %9

9:                                                ; preds = %0, %47
  %10 = phi ptr [ %49, %47 ], [ %6, %0 ]
  %11 = load ptr, ptr @lto_nothrow_fndecls, align 8, !tbaa !35
  %12 = load ptr, ptr %10, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !46
  %15 = tail call i32 @bitmap_bit_p(ptr noundef %11, i32 noundef %14) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %47, label %17

17:                                               ; preds = %9
  %18 = load ptr, ptr %10, align 8, !tbaa !54
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 33554432
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 106, ptr noundef nonnull @.str.1) #11
  br label %23

23:                                               ; preds = %17, %22
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = icmp eq ptr %25, null
  br i1 %26, label %47, label %27

27:                                               ; preds = %23, %43
  %28 = phi ptr [ %45, %43 ], [ %25, %23 ]
  %29 = getelementptr inbounds %struct.cgraph_edge, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !62
  %31 = load ptr, ptr %30, align 8, !tbaa !54
  %32 = getelementptr inbounds %struct.tree_function_decl, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  %34 = getelementptr inbounds %struct.cgraph_edge, ptr %28, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !64
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 111, ptr noundef nonnull @.str.1) #11
  br label %38

38:                                               ; preds = %27, %37
  %39 = tail call i32 @lookup_stmt_eh_lp_fn(ptr noundef %33, ptr noundef %35) #11
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call zeroext i8 @remove_stmt_from_eh_lp_fn(ptr noundef %33, ptr noundef %35) #11
  br label %43

43:                                               ; preds = %38, %41
  %44 = getelementptr inbounds %struct.cgraph_edge, ptr %28, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !35
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %27, !llvm.loop !65

47:                                               ; preds = %43, %23, %9
  %48 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !35
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %9, !llvm.loop !66

51:                                               ; preds = %47, %0
  ret void
}

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @lookup_stmt_eh_lp_fn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @remove_stmt_from_eh_lp_fn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_mark_nothrow_fndecl(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 29
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 123, ptr noundef nonnull @.str.1) #11
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr @lto_nothrow_fndecls, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call ptr @lto_bitmap_alloc() #11
  store ptr %10, ptr @lto_nothrow_fndecls, align 8, !tbaa !35
  br label %11

11:                                               ; preds = %9, %6
  %12 = load ptr, ptr @lto_nothrow_fndecls, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !46
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %12, i32 noundef %14) #11
  ret void
}

declare ptr @lto_bitmap_alloc() local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal zeroext i8 @gate_wpa_fixup() #9 !prof !67 !PGOFuncName !68 {
  %1 = load i32, ptr @flag_wpa, align 4, !tbaa !50
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_ltrans, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4, !prof !69
  br i1 %5, label %6, label %10, !prof !69

6:                                                ; preds = %0
  %7 = tail call zeroext i8 @gate_lto_out() #11
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %0, %6
  %11 = phi i8 [ %9, %6 ], [ 0, %0 ]
  ret i8 %11
}

; Function Attrs: cold nounwind uwtable
define internal void @lto_output_wpa_fixup(ptr nocapture noundef readonly %0) #9 !prof !34 {
  %2 = tail call ptr @lto_create_simple_output_block(i32 noundef 8) #11
  %3 = tail call ptr @lto_bitmap_alloc() #11
  %4 = load ptr, ptr @lto_nothrow_fndecls, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %94, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  br label %8

8:                                                ; preds = %6, %91
  %9 = phi i32 [ %93, %91 ], [ 0, %6 ]
  %10 = phi ptr [ %92, %91 ], [ null, %6 ]
  %11 = load ptr, ptr %7, align 8, !tbaa !70
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr %11, align 8, !tbaa !72
  br label %15

15:                                               ; preds = %8, %13
  %16 = phi i32 [ %14, %13 ], [ 0, %8 ]
  %17 = icmp ugt i32 %16, %9
  br i1 %17, label %18, label %94

18:                                               ; preds = %15
  %19 = zext i32 %9 to i64
  %20 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %11, i64 0, i32 2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  %23 = getelementptr inbounds %struct.tree_decl_minimal, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !46
  %25 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %24) #11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %18
  %28 = load i32, ptr %23, align 4, !tbaa !46
  %29 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %28) #11
  %30 = load ptr, ptr @lto_nothrow_fndecls, align 8, !tbaa !35
  %31 = load i32, ptr %23, align 4, !tbaa !46
  %32 = tail call i32 @bitmap_bit_p(ptr noundef %30, i32 noundef %31) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %27
  %35 = icmp eq ptr %10, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.VEC_tree_base, ptr %10, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !74
  %39 = load i32, ptr %10, align 8, !tbaa !76
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34, %36
  %42 = tail call ptr @vec_heap_p_reserve(ptr noundef %10, i32 noundef 1) #11
  br label %43

43:                                               ; preds = %36, %41
  %44 = phi ptr [ %42, %41 ], [ %10, %36 ]
  %45 = load i32, ptr %44, align 8, !tbaa !76
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 8, !tbaa !76
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds %struct.VEC_tree_base, ptr %44, i64 0, i32 2, i64 %47
  store ptr %22, ptr %48, align 8, !tbaa !35
  br label %49

49:                                               ; preds = %27, %43, %18
  %50 = phi ptr [ %10, %27 ], [ %44, %43 ], [ %10, %18 ]
  %51 = getelementptr inbounds %struct.cgraph_node, ptr %21, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !35
  %53 = icmp eq ptr %52, null
  br i1 %53, label %91, label %54

54:                                               ; preds = %49, %86
  %55 = phi ptr [ %89, %86 ], [ %52, %49 ]
  %56 = phi ptr [ %87, %86 ], [ %50, %49 ]
  %57 = getelementptr inbounds %struct.cgraph_edge, ptr %55, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !77
  %59 = load ptr, ptr %58, align 8, !tbaa !54
  %60 = getelementptr inbounds %struct.tree_decl_minimal, ptr %59, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !46
  %62 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %61) #11
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %54
  %65 = load i32, ptr %60, align 4, !tbaa !46
  %66 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %65) #11
  %67 = load ptr, ptr @lto_nothrow_fndecls, align 8, !tbaa !35
  %68 = load i32, ptr %60, align 4, !tbaa !46
  %69 = tail call i32 @bitmap_bit_p(ptr noundef %67, i32 noundef %68) #11
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %64
  %72 = icmp eq ptr %56, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.VEC_tree_base, ptr %56, i64 0, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !74
  %76 = load i32, ptr %56, align 8, !tbaa !76
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %71, %73
  %79 = tail call ptr @vec_heap_p_reserve(ptr noundef %56, i32 noundef 1) #11
  br label %80

80:                                               ; preds = %73, %78
  %81 = phi ptr [ %79, %78 ], [ %56, %73 ]
  %82 = load i32, ptr %81, align 8, !tbaa !76
  %83 = add i32 %82, 1
  store i32 %83, ptr %81, align 8, !tbaa !76
  %84 = zext i32 %82 to i64
  %85 = getelementptr inbounds %struct.VEC_tree_base, ptr %81, i64 0, i32 2, i64 %84
  store ptr %59, ptr %85, align 8, !tbaa !35
  br label %86

86:                                               ; preds = %54, %80, %64
  %87 = phi ptr [ %56, %64 ], [ %81, %80 ], [ %56, %54 ]
  %88 = getelementptr inbounds %struct.cgraph_edge, ptr %55, i64 0, i32 6
  %89 = load ptr, ptr %88, align 8, !tbaa !35
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %54, !llvm.loop !78

91:                                               ; preds = %86, %49
  %92 = phi ptr [ %50, %49 ], [ %87, %86 ]
  %93 = add i32 %9, 1
  br label %8, !llvm.loop !79

94:                                               ; preds = %15, %1
  %95 = phi ptr [ null, %1 ], [ %10, %15 ]
  %96 = icmp eq ptr %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i32, ptr %95, align 8, !tbaa !76
  %99 = zext i32 %98 to i64
  br label %100

100:                                              ; preds = %94, %97
  %101 = phi i64 [ %99, %97 ], [ 0, %94 ]
  %102 = getelementptr inbounds %struct.lto_simple_output_block, ptr %2, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !80
  tail call void @lto_output_uleb128_stream(ptr noundef %103, i64 noundef %101) #11
  %104 = icmp eq i64 %101, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.lto_simple_output_block, ptr %2, i64 0, i32 1
  br label %107

107:                                              ; preds = %105, %107
  %108 = phi i64 [ 0, %105 ], [ %113, %107 ]
  %109 = getelementptr inbounds %struct.VEC_tree_base, ptr %95, i64 0, i32 2, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !35
  %111 = load ptr, ptr %106, align 8, !tbaa !82
  %112 = load ptr, ptr %102, align 8, !tbaa !80
  tail call void @lto_output_fn_decl_index(ptr noundef %111, ptr noundef %112, ptr noundef %110) #11
  %113 = add nuw nsw i64 %108, 1
  %114 = icmp eq i64 %113, %101
  br i1 %114, label %115, label %107, !llvm.loop !83

115:                                              ; preds = %107, %100
  tail call void @lto_destroy_simple_output_block(ptr noundef %2) #11
  br i1 %96, label %117, label %116

116:                                              ; preds = %115
  tail call void @free(ptr noundef %95)
  br label %117

117:                                              ; preds = %115, %116
  tail call void @lto_bitmap_free(ptr noundef %3) #11
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @lto_input_wpa_fixup() #9 !prof !34 {
  %1 = alloca ptr, align 8
  %2 = alloca i64, align 8
  %3 = tail call ptr @lto_get_file_decl_data() #11
  %4 = load i32, ptr @flag_ltrans, align 4, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %39, label %6

6:                                                ; preds = %0
  %7 = load ptr, ptr %3, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %39, label %9

9:                                                ; preds = %6, %33
  %10 = phi i64 [ %12, %33 ], [ 0, %6 ]
  %11 = phi ptr [ %37, %33 ], [ %7, %6 ]
  %12 = add nuw i64 %10, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %13 = call ptr @lto_create_simple_input_block(ptr noundef nonnull %11, i32 noundef 8, ptr noundef nonnull %1, ptr noundef nonnull %2) #11
  %14 = call i64 @lto_input_uleb128(ptr noundef %13) #11
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %9, %25
  %17 = phi i64 [ %31, %25 ], [ 0, %9 ]
  %18 = call i64 @lto_input_uleb128(ptr noundef %13) #11
  %19 = trunc i64 %18 to i32
  %20 = load ptr, ptr %11, align 8, !tbaa !84
  %21 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %20, i64 0, i64 2, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !86
  %23 = icmp ugt i32 %22, %19
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1043, ptr noundef nonnull @.str.1) #11
  br label %25

25:                                               ; preds = %24, %16
  %26 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %20, i64 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !88
  %28 = and i64 %18, 4294967295
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  call void @lto_mark_nothrow_fndecl(ptr noundef %30)
  %31 = add nuw i64 %17, 1
  %32 = icmp eq i64 %31, %14
  br i1 %32, label %33, label %16, !llvm.loop !89

33:                                               ; preds = %25, %9
  %34 = load ptr, ptr %1, align 8, !tbaa !35
  %35 = load i64, ptr %2, align 8, !tbaa !90
  call void @lto_destroy_simple_input_block(ptr noundef nonnull %11, i32 noundef 8, ptr noundef %13, ptr noundef %34, i64 noundef %35) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #11
  %36 = getelementptr inbounds ptr, ptr %3, i64 %12
  %37 = load ptr, ptr %36, align 8, !tbaa !35
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %9, !llvm.loop !91

39:                                               ; preds = %33, %6, %0
  ret void
}

declare zeroext i8 @gate_lto_out() local_unnamed_addr #3

declare ptr @lto_create_simple_output_block(i32 noundef) local_unnamed_addr #3

declare void @lto_output_uleb128_stream(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @lto_output_fn_decl_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lto_destroy_simple_output_block(ptr noundef) local_unnamed_addr #3

declare void @lto_bitmap_free(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

declare ptr @lto_get_file_decl_data() local_unnamed_addr #3

declare ptr @lto_create_simple_input_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lto_destroy_simple_input_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @lto_input_uleb128(ptr noundef) local_unnamed_addr #3

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
attributes #11 = { nounwind }

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
!55 = !{!"cgraph_node", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !56, i64 144, !58, i64 184, !59, i64 224, !60, i64 232, !61, i64 256, !42, i64 288, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 309, !41, i64 309}
!56 = !{!"cgraph_local_info", !36, i64 0, !57, i64 8, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32}
!57 = !{!"inline_summary", !42, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20}
!58 = !{!"cgraph_global_info", !42, i64 0, !42, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !37, i64 36}
!59 = !{!"cgraph_rtl_info", !41, i64 0}
!60 = !{!"cgraph_clone_info", !36, i64 0, !36, i64 8, !36, i64 16}
!61 = !{!"cgraph_thunk_info", !42, i64 0, !42, i64 8, !36, i64 16, !37, i64 24, !37, i64 25, !37, i64 26}
!62 = !{!63, !36, i64 8}
!63 = !{!"cgraph_edge", !42, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !43, i64 88, !41, i64 90, !41, i64 90, !41, i64 90}
!64 = !{!63, !36, i64 56}
!65 = distinct !{!65, !52, !53}
!66 = distinct !{!66, !52, !53}
!67 = !{!"function_entry_count", i64 1}
!68 = !{!"lto-wpa-fixup.c;gate_wpa_fixup"}
!69 = !{!"branch_weights", i32 0, i32 1}
!70 = !{!71, !36, i64 8}
!71 = !{!"cgraph_node_set_def", !36, i64 0, !36, i64 8, !36, i64 16}
!72 = !{!73, !41, i64 0}
!73 = !{!"VEC_cgraph_node_ptr_base", !41, i64 0, !41, i64 4, !37, i64 8}
!74 = !{!75, !41, i64 4}
!75 = !{!"VEC_tree_base", !41, i64 0, !41, i64 4, !37, i64 8}
!76 = !{!75, !41, i64 0}
!77 = !{!63, !36, i64 16}
!78 = distinct !{!78, !52, !53}
!79 = distinct !{!79, !52, !53}
!80 = !{!81, !36, i64 16}
!81 = !{!"lto_simple_output_block", !41, i64 0, !36, i64 8, !36, i64 16}
!82 = !{!81, !36, i64 8}
!83 = distinct !{!83, !52, !53}
!84 = !{!85, !36, i64 0}
!85 = !{!"lto_file_decl_data", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !36, i64 48, !36, i64 56}
!86 = !{!87, !41, i64 8}
!87 = !{!"lto_tree_ref_table", !36, i64 0, !41, i64 8}
!88 = !{!87, !36, i64 0}
!89 = distinct !{!89, !52, !53}
!90 = !{!42, !42, i64 0}
!91 = distinct !{!91, !52, !53}

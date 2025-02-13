; ModuleID = 'lto-streamer.c'
source_filename = "lto-streamer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.lto_stats_d = type { i64, i64, i64, i64, i64, [10 x i64], i64, [188 x i64], i64, i64, i64, i64 }
%struct.bitpack_d = type { i64, i64, ptr }
%struct.VEC_bitpack_word_t_base = type { i32, i32, [1 x i64] }
%struct.tree_int_map = type { %struct.tree_map_base, i32 }
%struct.tree_map_base = type { ptr }
%struct.lto_streamer_cache_d = type { ptr, i32, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.VEC_unsigned_base = type { i32, i32, [1 x i32] }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }

@tree_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@gimple_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str = private unnamed_addr constant [9 x i8] c"LTO_null\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"LTO_bb0\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"LTO_bb1\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"LTO_eh_region\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"LTO_function\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"LTO_eh_table\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"LTO_ert_cleanup\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"LTO_ert_try\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"LTO_ert_allowed_exceptions\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"LTO_ert_must_not_throw\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"LTO_tree_pickle_reference\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"LTO_field_decl_ref\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"LTO_function_decl_ref\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"LTO_label_decl_ref\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"LTO_namespace_decl_ref\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"LTO_result_decl_ref\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"LTO_ssa_name_ref\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"LTO_type_decl_ref\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"LTO_type_ref\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"LTO_global_decl_ref\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"LTO_UNKNOWN\00", align 1
@lto_obstack_initialized = internal unnamed_addr global i1 false, align 1
@lto_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@.str.21 = private unnamed_addr constant [15 x i8] c"lto-streamer.c\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c".gnu.lto_\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c".statics\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c".symtab\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c".decls\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c".cgraph\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c".jmpfuncs\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c".pureconst\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c".reference\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c".wpa_fixup\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c".opts\00", align 1
@.str.33 = private unnamed_addr constant [43 x i8] c"bytecode stream: unexpected LTO section %s\00", align 1
@flag_lto = external local_unnamed_addr global i32, align 4
@.str.34 = private unnamed_addr constant [4 x i8] c"LTO\00", align 1
@flag_wpa = external local_unnamed_addr global i32, align 4
@.str.35 = private unnamed_addr constant [4 x i8] c"WPA\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"LTRANS\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.37 = private unnamed_addr constant [15 x i8] c"%s statistics\0A\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"[%s] # of input files: %lu\0A\00", align 1
@lto_stats = dso_local local_unnamed_addr global %struct.lto_stats_d zeroinitializer, align 8
@.str.39 = private unnamed_addr constant [35 x i8] c"[%s] # of input cgraph nodes: %lu\0A\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"[%s] # of function bodies: %lu\0A\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"[%s] # of '%s' objects read: %lu\0A\00", align 1
@.str.43 = private unnamed_addr constant [57 x i8] c"[%s] Compression: %lu output bytes, %lu compressed bytes\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c" (ratio: %f)\00", align 1
@.str.46 = private unnamed_addr constant [29 x i8] c"[%s] # of output files: %lu\0A\00", align 1
@.str.47 = private unnamed_addr constant [36 x i8] c"[%s] # of output cgraph nodes: %lu\0A\00", align 1
@.str.48 = private unnamed_addr constant [34 x i8] c"[%s] # callgraph partitions: %lu\0A\00", align 1
@.str.49 = private unnamed_addr constant [58 x i8] c"[%s] Compression: %lu input bytes, %lu uncompressed bytes\00", align 1
@.str.50 = private unnamed_addr constant [43 x i8] c"[%s] Size of mmap'd section %s: %lu bytes\0A\00", align 1
@lto_section_name = external local_unnamed_addr global [0 x ptr], align 8
@flag_generate_lto = external local_unnamed_addr global i32, align 4
@in_lto_p = external local_unnamed_addr global i8, align 1
@global_dc = external local_unnamed_addr global ptr, align 8
@.str.51 = private unnamed_addr constant [79 x i8] c"bytecode stream generated with LTO version %d.%d instead of the expected %d.%d\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"./lto-streamer.h\00", align 1
@global_trees = external global [131 x ptr], align 16
@.str.53 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@integer_types = external global [11 x ptr], align 16
@sizetype_tab = external global [4 x ptr], align 16
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lto_tag_name(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call fastcc zeroext i8 @lto_tag_is_tree_code_p(i32 noundef %0) #13, !range !35
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @lto_tag_to_tree_code(i32 noundef %0) #13
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  br label %38

9:                                                ; preds = %1
  %10 = tail call fastcc zeroext i8 @lto_tag_is_gimple_code_p(i32 noundef %0) #13, !range !35
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @lto_tag_to_gimple_code(i32 noundef %0) #13
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [0 x ptr], ptr @gimple_code_name, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !36
  br label %38

17:                                               ; preds = %9
  switch i32 %0, label %37 [
    i32 0, label %38
    i32 224, label %18
    i32 225, label %19
    i32 226, label %20
    i32 228, label %21
    i32 229, label %22
    i32 230, label %23
    i32 231, label %24
    i32 232, label %25
    i32 233, label %26
    i32 236, label %27
    i32 238, label %28
    i32 239, label %29
    i32 240, label %30
    i32 241, label %31
    i32 242, label %32
    i32 243, label %33
    i32 244, label %34
    i32 245, label %35
    i32 248, label %36
  ]

18:                                               ; preds = %17
  br label %38

19:                                               ; preds = %17
  br label %38

20:                                               ; preds = %17
  br label %38

21:                                               ; preds = %17
  br label %38

22:                                               ; preds = %17
  br label %38

23:                                               ; preds = %17
  br label %38

24:                                               ; preds = %17
  br label %38

25:                                               ; preds = %17
  br label %38

26:                                               ; preds = %17
  br label %38

27:                                               ; preds = %17
  br label %38

28:                                               ; preds = %17
  br label %38

29:                                               ; preds = %17
  br label %38

30:                                               ; preds = %17
  br label %38

31:                                               ; preds = %17
  br label %38

32:                                               ; preds = %17
  br label %38

33:                                               ; preds = %17
  br label %38

34:                                               ; preds = %17
  br label %38

35:                                               ; preds = %17
  br label %38

36:                                               ; preds = %17
  br label %38

37:                                               ; preds = %17
  br label %38

38:                                               ; preds = %17, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %12, %4
  %39 = phi ptr [ %8, %4 ], [ %16, %12 ], [ @.str.20, %37 ], [ @.str.19, %36 ], [ @.str.18, %35 ], [ @.str.17, %34 ], [ @.str.16, %33 ], [ @.str.15, %32 ], [ @.str.14, %31 ], [ @.str.13, %30 ], [ @.str.12, %29 ], [ @.str.11, %28 ], [ @.str.10, %27 ], [ @.str.9, %26 ], [ @.str.8, %25 ], [ @.str.7, %24 ], [ @.str.6, %23 ], [ @.str.5, %22 ], [ @.str.4, %21 ], [ @.str.3, %20 ], [ @.str.2, %19 ], [ @.str.1, %18 ], [ @.str, %17 ]
  ret ptr %39
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @lto_tag_is_tree_code_p(i32 noundef %0) unnamed_addr #1 !prof !34 !PGOFuncName !40 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 188
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @lto_tag_to_tree_code(i32 noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !41 {
  %2 = tail call fastcc zeroext i8 @lto_tag_is_tree_code_p(i32 noundef %0) #13, !range !35
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 926, ptr noundef nonnull @.str.22) #14
  br label %5

5:                                                ; preds = %1, %4
  %6 = add i32 %0, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @lto_tag_is_gimple_code_p(i32 noundef %0) unnamed_addr #1 !prof !34 !PGOFuncName !42 {
  %2 = add i32 %0, -189
  %3 = icmp ult i32 %2, 35
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @lto_tag_to_gimple_code(i32 noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !43 {
  %2 = tail call fastcc zeroext i8 @lto_tag_is_gimple_code_p(i32 noundef %0) #13, !range !35
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 907, ptr noundef nonnull @.str.22) #14
  br label %5

5:                                                ; preds = %1, %4
  %6 = add i32 %0, -189
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lto_bitmap_alloc() local_unnamed_addr #0 !prof !34 {
  %1 = load i1, ptr @lto_obstack_initialized, align 1
  br i1 %1, label %3, label %2

2:                                                ; preds = %0
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @lto_obstack) #14
  store i1 true, ptr @lto_obstack_initialized, align 1
  br label %3

3:                                                ; preds = %2, %0
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @lto_obstack) #14
  ret ptr %4
}

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_bitmap_free(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  tail call void @bitmap_obstack_free(ptr noundef %0) #14
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lto_get_section_name(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  switch i32 %0, label %30 [
    i32 1, label %3
    i32 2, label %12
    i32 7, label %14
    i32 0, label %16
    i32 3, label %18
    i32 4, label %20
    i32 5, label %22
    i32 6, label %24
    i32 8, label %26
    i32 9, label %28
  ]

3:                                                ; preds = %2
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 146, ptr noundef nonnull @.str.22) #14
  br label %6

6:                                                ; preds = %3, %5
  %7 = load i8, ptr %1, align 1, !tbaa !44
  %8 = icmp eq i8 %7, 42
  %9 = zext i1 %8 to i64
  %10 = getelementptr inbounds i8, ptr %1, i64 %9
  %11 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.23, ptr noundef nonnull %10, ptr noundef null) #14
  br label %31

12:                                               ; preds = %2
  %13 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef null) #14
  br label %31

14:                                               ; preds = %2
  %15 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.25, ptr noundef null) #14
  br label %31

16:                                               ; preds = %2
  %17 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.26, ptr noundef null) #14
  br label %31

18:                                               ; preds = %2
  %19 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.27, ptr noundef null) #14
  br label %31

20:                                               ; preds = %2
  %21 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.28, ptr noundef null) #14
  br label %31

22:                                               ; preds = %2
  %23 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.29, ptr noundef null) #14
  br label %31

24:                                               ; preds = %2
  %25 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.30, ptr noundef null) #14
  br label %31

26:                                               ; preds = %2
  %27 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.31, ptr noundef null) #14
  br label %31

28:                                               ; preds = %2
  %29 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.32, ptr noundef null) #14
  br label %31

30:                                               ; preds = %2
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.33, ptr noundef %1) #14
  br label %31

31:                                               ; preds = %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %6
  %32 = phi ptr [ null, %30 ], [ %29, %28 ], [ %27, %26 ], [ %25, %24 ], [ %23, %22 ], [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %15, %14 ], [ %13, %12 ], [ %11, %6 ]
  ret ptr %32
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @concat(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @internal_error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_lto_report() local_unnamed_addr #0 !prof !34 {
  %1 = load i32, ptr @flag_lto, align 4, !tbaa !45
  %2 = icmp eq i32 %1, 0
  %3 = load i32, ptr @flag_wpa, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, ptr @.str.36, ptr @.str.35
  %6 = select i1 %2, ptr %5, ptr @.str.34
  %7 = load ptr, ptr @stderr, align 8, !tbaa !36
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.37, ptr noundef nonnull %6) #15
  %9 = load ptr, ptr @stderr, align 8, !tbaa !36
  %10 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 2), align 8, !tbaa !47
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.38, ptr noundef nonnull %6, i64 noundef %10) #15
  %12 = load ptr, ptr @stderr, align 8, !tbaa !36
  %13 = load i64, ptr @lto_stats, align 8, !tbaa !50
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.39, ptr noundef nonnull %6, i64 noundef %13) #15
  %15 = load ptr, ptr @stderr, align 8, !tbaa !36
  %16 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 6), align 8, !tbaa !51
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.40, ptr noundef nonnull %6, i64 noundef %16) #15
  %18 = load ptr, ptr @stderr, align 8, !tbaa !36
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.41, ptr noundef nonnull %6) #15
  tail call void @print_gimple_types_stats() #14
  br label %20

20:                                               ; preds = %0, %30
  %21 = phi i64 [ 0, %0 ], [ %31, %30 ]
  %22 = getelementptr inbounds %struct.lto_stats_d, ptr @lto_stats, i64 0, i32 7, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !52
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr @stderr, align 8, !tbaa !36
  %27 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %21
  %28 = load ptr, ptr %27, align 8, !tbaa !36
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.42, ptr noundef nonnull %6, ptr noundef %28, i64 noundef %23) #15
  br label %30

30:                                               ; preds = %20, %25
  %31 = add nuw nsw i64 %21, 1
  %32 = icmp eq i64 %31, 188
  br i1 %32, label %33, label %20, !llvm.loop !53

33:                                               ; preds = %30
  %34 = load i32, ptr @flag_lto, align 4, !tbaa !45
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr @stderr, align 8, !tbaa !36
  %38 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 8), align 8, !tbaa !55
  %39 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 9), align 8, !tbaa !56
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.43, ptr noundef nonnull %6, i64 noundef %38, i64 noundef %39) #15
  %41 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 8), align 8, !tbaa !55
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %36
  %44 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 9), align 8, !tbaa !56
  %45 = uitofp i64 %44 to float
  %46 = uitofp i64 %41 to float
  %47 = load ptr, ptr @stderr, align 8, !tbaa !36
  %48 = fdiv float %45, %46
  %49 = fpext float %48 to double
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.44, double noundef %49) #15
  br label %51

51:                                               ; preds = %43, %36
  %52 = load ptr, ptr @stderr, align 8, !tbaa !36
  %53 = tail call i32 @fputc(i32 10, ptr %52)
  br label %54

54:                                               ; preds = %51, %33
  %55 = load i32, ptr @flag_wpa, align 4, !tbaa !45
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %84, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr @stderr, align 8, !tbaa !36
  %59 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 3), align 8, !tbaa !57
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.46, ptr noundef nonnull %6, i64 noundef %59) #15
  %61 = load ptr, ptr @stderr, align 8, !tbaa !36
  %62 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 1), align 8, !tbaa !58
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.47, ptr noundef nonnull %6, i64 noundef %62) #15
  %64 = load ptr, ptr @stderr, align 8, !tbaa !36
  %65 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 4), align 8, !tbaa !59
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.48, ptr noundef nonnull %6, i64 noundef %65) #15
  %67 = load ptr, ptr @stderr, align 8, !tbaa !36
  %68 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 10), align 8, !tbaa !60
  %69 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 11), align 8, !tbaa !61
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.49, ptr noundef nonnull %6, i64 noundef %68, i64 noundef %69) #15
  %71 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 10), align 8, !tbaa !60
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %57
  %74 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 11), align 8, !tbaa !61
  %75 = uitofp i64 %74 to float
  %76 = uitofp i64 %71 to float
  %77 = load ptr, ptr @stderr, align 8, !tbaa !36
  %78 = fdiv float %75, %76
  %79 = fpext float %78 to double
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef nonnull @.str.44, double noundef %79) #15
  br label %81

81:                                               ; preds = %73, %57
  %82 = load ptr, ptr @stderr, align 8, !tbaa !36
  %83 = tail call i32 @fputc(i32 10, ptr %82)
  br label %84

84:                                               ; preds = %81, %54
  br label %85

85:                                               ; preds = %84, %85
  %86 = phi i64 [ %93, %85 ], [ 0, %84 ]
  %87 = load ptr, ptr @stderr, align 8, !tbaa !36
  %88 = getelementptr inbounds [0 x ptr], ptr @lto_section_name, i64 0, i64 %86
  %89 = load ptr, ptr %88, align 8, !tbaa !36
  %90 = getelementptr inbounds %struct.lto_stats_d, ptr @lto_stats, i64 0, i32 5, i64 %86
  %91 = load i64, ptr %90, align 8, !tbaa !52
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.50, ptr noundef nonnull %6, ptr noundef %89, i64 noundef %91) #15
  %93 = add nuw nsw i64 %86, 1
  %94 = icmp eq i64 %93, 10
  br i1 %94, label %95, label %85, !llvm.loop !62

95:                                               ; preds = %85
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @print_gimple_types_stats() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @bitpack_create() local_unnamed_addr #0 !prof !34 {
  %1 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @bitpack_delete(ptr nocapture noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = getelementptr inbounds %struct.bitpack_d, ptr %0, i64 0, i32 2
  tail call fastcc void @VEC_bitpack_word_t_heap_free(ptr noundef nonnull %2) #13
  tail call void @free(ptr noundef %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_bitpack_word_t_heap_free(ptr nocapture noundef %0) unnamed_addr #5 !prof !34 !PGOFuncName !63 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #13
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bp_pack_value(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = add i32 %2, -1
  %5 = icmp ult i32 %4, 64
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 324, ptr noundef nonnull @.str.22) #14
  br label %7

7:                                                ; preds = %3, %6
  %8 = tail call fastcc i32 @bp_get_next_word(ptr noundef %0, i32 noundef %2) #13
  %9 = getelementptr inbounds %struct.bitpack_d, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = tail call fastcc i32 @VEC_bitpack_word_t_base_length(ptr noundef %10) #13
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = add i32 %11, 1
  %15 = icmp ult i32 %8, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 334, ptr noundef nonnull @.str.22) #14
  br label %17

17:                                               ; preds = %13, %16
  tail call fastcc void @VEC_bitpack_word_t_heap_safe_push(ptr noundef nonnull %9) #13
  %18 = load ptr, ptr %9, align 8, !tbaa !64
  br label %19

19:                                               ; preds = %17, %7
  %20 = phi ptr [ %18, %17 ], [ %10, %7 ]
  %21 = tail call fastcc i64 @VEC_bitpack_word_t_base_index(ptr noundef %20, i32 noundef %8) #13
  %22 = getelementptr inbounds %struct.bitpack_d, ptr %0, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !66
  %24 = zext i32 %2 to i64
  %25 = add i64 %23, %24
  %26 = icmp ult i64 %25, 65
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 343, ptr noundef nonnull @.str.22) #14
  %28 = load i64, ptr %22, align 8, !tbaa !66
  %29 = load ptr, ptr %9, align 8, !tbaa !64
  br label %30

30:                                               ; preds = %19, %27
  %31 = phi ptr [ %20, %19 ], [ %29, %27 ]
  %32 = phi i64 [ %23, %19 ], [ %28, %27 ]
  %33 = shl i64 %1, %32
  %34 = or i64 %33, %21
  tail call fastcc void @VEC_bitpack_word_t_base_replace(ptr noundef %31, i32 noundef %8, i64 noundef %34) #13
  %35 = load <2 x i64>, ptr %0, align 8, !tbaa !52
  %36 = insertelement <2 x i64> poison, i64 %24, i64 0
  %37 = shufflevector <2 x i64> %36, <2 x i64> poison, <2 x i32> zeroinitializer
  %38 = add <2 x i64> %35, %37
  store <2 x i64> %38, ptr %0, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @bp_get_next_word(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 !prof !34 !PGOFuncName !67 {
  %3 = load i64, ptr %0, align 8, !tbaa !68
  %4 = lshr i64 %3, 6
  %5 = trunc i64 %4 to i32
  %6 = getelementptr inbounds %struct.bitpack_d, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !66
  %8 = and i64 %7, 63
  store i64 %8, ptr %6, align 8, !tbaa !66
  %9 = trunc i64 %8 to i32
  %10 = add i32 %1, -65
  %11 = add i32 %10, %9
  %12 = icmp ult i32 %11, -64
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = add i32 %5, 1
  %15 = add i64 %3, 64
  %16 = sub i64 %15, %8
  store i64 %16, ptr %0, align 8, !tbaa !68
  store i64 0, ptr %6, align 8, !tbaa !66
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi i32 [ %14, %13 ], [ %5, %2 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_bitpack_word_t_base_length(ptr noundef readonly %0) unnamed_addr #8 !prof !34 !PGOFuncName !69 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !70
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_bitpack_word_t_heap_safe_push(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !72 {
  tail call fastcc void @VEC_bitpack_word_t_heap_reserve(ptr noundef %0) #13
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  tail call fastcc void @VEC_bitpack_word_t_base_quick_push(ptr noundef %2) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @VEC_bitpack_word_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !34 !PGOFuncName !73 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_bitpack_word_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !52
  ret i64 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_bitpack_word_t_base_replace(ptr nocapture noundef %0, i32 noundef %1, i64 noundef %2) unnamed_addr #7 !prof !34 !PGOFuncName !74 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_bitpack_word_t_base, ptr %0, i64 0, i32 2, i64 %4
  store i64 %2, ptr %5, align 8, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @bp_unpack_value(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 64
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 365, ptr noundef nonnull @.str.22) #14
  br label %6

6:                                                ; preds = %2, %5
  %7 = tail call fastcc i32 @bp_get_next_word(ptr noundef %0, i32 noundef %1) #13
  %8 = getelementptr inbounds %struct.bitpack_d, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = tail call fastcc i64 @VEC_bitpack_word_t_base_index(ptr noundef %9, i32 noundef %7) #13
  %11 = icmp eq i32 %1, 64
  %12 = zext i32 %1 to i64
  %13 = shl nsw i64 -1, %12
  %14 = xor i64 %13, -1
  %15 = select i1 %11, i64 -1, i64 %14
  %16 = getelementptr inbounds %struct.bitpack_d, ptr %0, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !66
  %18 = lshr i64 %10, %17
  %19 = and i64 %18, %15
  %20 = load i64, ptr %0, align 8, !tbaa !68
  %21 = add i64 %20, %12
  store i64 %21, ptr %0, align 8, !tbaa !68
  %22 = add i64 %17, %12
  store i64 %22, ptr %16, align 8, !tbaa !66
  ret i64 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @lto_streamer_cache_insert(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !34 {
  %5 = tail call fastcc zeroext i8 @lto_streamer_cache_insert_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1) #13, !range !35
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @lto_streamer_cache_insert_1(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !34 !PGOFuncName !75 {
  %6 = alloca %struct.tree_int_map, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 491, ptr noundef nonnull @.str.22) #14
  br label %9

9:                                                ; preds = %5, %8
  store ptr %1, ptr %6, align 8, !tbaa !76
  %10 = load ptr, ptr %0, align 8, !tbaa !79
  %11 = call ptr @htab_find_slot(ptr noundef %10, ptr noundef nonnull %6, i32 noundef 1) #14
  %12 = load ptr, ptr %11, align 8, !tbaa !36
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %9
  %15 = icmp eq i8 %4, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.lto_streamer_cache_d, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !81
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !81
  br label %22

20:                                               ; preds = %14
  %21 = load i32, ptr %2, align 4, !tbaa !45
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i32 [ %18, %16 ], [ %21, %20 ]
  %24 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #14
  store ptr %1, ptr %24, align 8, !tbaa !76
  %25 = getelementptr inbounds %struct.tree_int_map, ptr %24, i64 0, i32 1
  store i32 %23, ptr %25, align 8, !tbaa !82
  store ptr %24, ptr %11, align 8, !tbaa !36
  %26 = icmp eq ptr %3, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, ptr %3, align 4, !tbaa !45
  br label %29

29:                                               ; preds = %22, %27
  %30 = phi i32 [ %28, %27 ], [ -1, %22 ]
  call fastcc void @lto_streamer_cache_add_to_node_array(ptr noundef nonnull %0, i32 noundef %23, ptr noundef %1, i32 noundef %30) #13
  br label %48

31:                                               ; preds = %9
  %32 = getelementptr inbounds %struct.tree_int_map, ptr %12, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !82
  %34 = getelementptr inbounds %struct.lto_streamer_cache_d, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !83
  %36 = call fastcc i32 @VEC_unsigned_base_index(ptr noundef %35, i32 noundef %33) #13
  %37 = icmp eq i8 %4, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = load i32, ptr %2, align 4, !tbaa !45
  %40 = icmp eq i32 %33, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  %42 = call fastcc zeroext i8 @lto_stream_as_builtin_p(ptr noundef %1) #13, !range !35
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 536, ptr noundef nonnull @.str.22) #14
  %45 = load i32, ptr %2, align 4, !tbaa !45
  br label %46

46:                                               ; preds = %41, %44
  %47 = phi i32 [ %39, %41 ], [ %45, %44 ]
  call fastcc void @lto_streamer_cache_add_to_node_array(ptr noundef nonnull %0, i32 noundef %47, ptr noundef %1, i32 noundef -1) #13
  br label %53

48:                                               ; preds = %31, %29
  %49 = phi i32 [ %23, %29 ], [ %33, %31 ]
  %50 = phi i32 [ %30, %29 ], [ %36, %31 ]
  %51 = phi i8 [ 0, %29 ], [ 1, %31 ]
  %52 = icmp eq ptr %2, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %46, %38, %48
  %54 = phi i8 [ %51, %48 ], [ 1, %38 ], [ 1, %46 ]
  %55 = phi i32 [ %50, %48 ], [ %36, %38 ], [ %36, %46 ]
  %56 = phi i32 [ %49, %48 ], [ %33, %38 ], [ %47, %46 ]
  store i32 %56, ptr %2, align 4, !tbaa !45
  br label %57

57:                                               ; preds = %53, %48
  %58 = phi i8 [ %54, %53 ], [ %51, %48 ]
  %59 = phi i32 [ %55, %53 ], [ %50, %48 ]
  %60 = icmp eq ptr %3, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  store i32 %59, ptr %3, align 4, !tbaa !45
  br label %62

62:                                               ; preds = %61, %57
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret i8 %58
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @lto_streamer_cache_insert_at(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = alloca i32, align 4
  store i32 %2, ptr %4, align 4, !tbaa !45
  %5 = call fastcc zeroext i8 @lto_streamer_cache_insert_1(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 0) #13, !range !35
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @lto_streamer_cache_lookup(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 !prof !34 {
  %4 = alloca %struct.tree_int_map, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 605, ptr noundef nonnull @.str.22) #14
  br label %7

7:                                                ; preds = %3, %6
  store ptr %1, ptr %4, align 8, !tbaa !76
  %8 = load ptr, ptr %0, align 8, !tbaa !79
  %9 = call ptr @htab_find_slot(ptr noundef %8, ptr noundef nonnull %4, i32 noundef 0) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 8, !tbaa !36
  %13 = getelementptr inbounds %struct.tree_int_map, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !82
  br label %15

15:                                               ; preds = %7, %11
  %16 = phi i8 [ 1, %11 ], [ 0, %7 ]
  %17 = phi i32 [ %14, %11 ], [ -1, %7 ]
  %18 = icmp eq ptr %2, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 %17, ptr %2, align 4, !tbaa !45
  br label %20

20:                                               ; preds = %19, %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  ret i8 %16
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lto_streamer_cache_get(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 632, ptr noundef nonnull @.str.22) #14
  br label %5

5:                                                ; preds = %2, %4
  %6 = getelementptr inbounds %struct.lto_streamer_cache_d, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !84
  %8 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %7) #13
  %9 = icmp ugt i32 %8, %1
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %7, i32 noundef %1) #13
  br label %12

12:                                               ; preds = %5, %10
  %13 = phi ptr [ %11, %10 ], [ null, %5 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #8 !prof !34 !PGOFuncName !85 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !86
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !34 !PGOFuncName !88 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lto_streamer_cache_create() local_unnamed_addr #0 !prof !34 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #14
  %4 = tail call ptr @htab_create(i64 noundef 101, ptr noundef nonnull @tree_map_base_hash, ptr noundef nonnull @tree_map_base_eq, ptr noundef null) #14
  store ptr %4, ptr %3, align 8, !tbaa !79
  %5 = tail call fastcc ptr @lto_get_common_nodes() #13
  store ptr %5, ptr %1, align 8, !tbaa !36
  %6 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %2) #13, !range !89
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %0, %8
  %9 = phi i32 [ %11, %8 ], [ 0, %0 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !36
  tail call fastcc void @preload_common_node(ptr noundef nonnull %3, ptr noundef %10) #13
  %11 = add i32 %9, 1
  %12 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %5, i32 noundef %11, ptr noundef nonnull %2) #13, !range !89
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %8, !llvm.loop !90

14:                                               ; preds = %8, %0
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %1) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_map_base_hash(ptr noundef) #2

; Function Attrs: optsize
declare i32 @tree_map_base_eq(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lto_get_common_nodes() unnamed_addr #0 !prof !34 !PGOFuncName !91 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  store ptr null, ptr %1, align 8, !tbaa !36
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 56), align 16, !tbaa !36
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.tree_identifier, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(5) @.str.53) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 691, ptr noundef nonnull @.str.22) #14
  br label %12

10:                                               ; preds = %0
  %11 = tail call ptr @get_identifier(ptr noundef nonnull @.str.53) #14
  store ptr %11, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 56), align 16, !tbaa !36
  br label %12

12:                                               ; preds = %9, %4, %10
  %13 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 43), align 8, !tbaa !36
  %14 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !36
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #14
  br label %17

17:                                               ; preds = %12, %16
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 48), align 16, !tbaa !36
  %19 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !36
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 704, ptr noundef nonnull @.str.22) #14
  %22 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 48), align 16, !tbaa !36
  %23 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !36
  br label %24

24:                                               ; preds = %17, %21
  %25 = phi ptr [ %18, %17 ], [ %23, %21 ]
  %26 = phi ptr [ %18, %17 ], [ %22, %21 ]
  %27 = getelementptr inbounds %struct.tree_type, ptr %26, i64 0, i32 16
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = icmp eq ptr %28, %25
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 705, ptr noundef nonnull @.str.22) #14
  br label %31

31:                                               ; preds = %24, %30
  %32 = tail call ptr @pointer_set_create() #14
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi i64 [ 1, %31 ], [ %36, %33 ]
  %35 = getelementptr inbounds [11 x ptr], ptr @integer_types, i64 0, i64 %34
  call fastcc void @lto_record_common_node(ptr noundef nonnull %35, ptr noundef nonnull %1, ptr noundef %32) #13
  %36 = add nuw nsw i64 %34, 1
  %37 = icmp eq i64 %36, 11
  br i1 %37, label %38, label %33, !llvm.loop !92

38:                                               ; preds = %33, %38
  %39 = phi i64 [ %41, %38 ], [ 0, %33 ]
  %40 = getelementptr inbounds [4 x ptr], ptr @sizetype_tab, i64 0, i64 %39
  call fastcc void @lto_record_common_node(ptr noundef nonnull %40, ptr noundef nonnull %1, ptr noundef %32) #13
  %41 = add nuw nsw i64 %39, 1
  %42 = icmp eq i64 %41, 4
  br i1 %42, label %43, label %38, !llvm.loop !93

43:                                               ; preds = %38, %43
  %44 = phi i64 [ %46, %43 ], [ 0, %38 ]
  %45 = getelementptr inbounds [131 x ptr], ptr @global_trees, i64 0, i64 %44
  call fastcc void @lto_record_common_node(ptr noundef nonnull %45, ptr noundef nonnull %1, ptr noundef %32) #13
  %46 = add nuw nsw i64 %44, 1
  %47 = icmp eq i64 %46, 131
  br i1 %47, label %48, label %43, !llvm.loop !94

48:                                               ; preds = %43
  tail call void @pointer_set_destroy(ptr noundef %32) #14
  %49 = load ptr, ptr %1, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  ret ptr %49
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 !prof !34 !PGOFuncName !95 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !86
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !36
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !36
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @preload_common_node(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !96 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 732, ptr noundef nonnull @.str.22) #14
  br label %5

5:                                                ; preds = %2, %4
  %6 = tail call zeroext i8 @lto_streamer_cache_insert(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null) #13, !range !35
  %7 = load i64, ptr %1, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 16
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %17, %14 ], [ %12, %10 ]
  tail call fastcc void @preload_common_node(ptr noundef %0, ptr noundef nonnull %15) #13
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !llvm.loop !97

19:                                               ; preds = %14, %10, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #5 !prof !34 !PGOFuncName !98 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #13
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_streamer_cache_delete(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !79
  tail call void @htab_delete(ptr noundef %4) #14
  %5 = getelementptr inbounds %struct.lto_streamer_cache_d, ptr %0, i64 0, i32 2
  tail call fastcc void @VEC_tree_gc_free(ptr noundef nonnull %5) #13
  %6 = getelementptr inbounds %struct.lto_streamer_cache_d, ptr %0, i64 0, i32 3
  tail call fastcc void @VEC_unsigned_heap_free(ptr noundef nonnull %6) #13
  tail call void @free(ptr noundef nonnull %0) #13
  br label %7

7:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_free(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !99 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @ggc_free(ptr noundef nonnull %2) #14
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_unsigned_heap_free(ptr nocapture noundef %0) unnamed_addr #5 !prof !34 !PGOFuncName !100 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #13
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_streamer_init() local_unnamed_addr #0 !prof !34 {
  tail call fastcc void @check_handled_ts_structures() #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_handled_ts_structures() unnamed_addr #0 !prof !34 !PGOFuncName !101 {
  %1 = alloca [34 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %1) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(34) %1, i8 1, i64 34, i1 false)
  br label %2

2:                                                ; preds = %0, %8
  %3 = phi i64 [ 0, %0 ], [ %9, %8 ]
  %4 = getelementptr inbounds [34 x i8], ptr %1, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !44
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 444, ptr noundef nonnull @.str.22) #14
  br label %8

8:                                                ; preds = %2, %7
  %9 = add nuw nsw i64 %3, 1
  %10 = icmp eq i64 %9, 34
  br i1 %10, label %11, label %2, !llvm.loop !102

11:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %1) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @gate_lto_out() local_unnamed_addr #9 !prof !103 {
  %1 = load i32, ptr @flag_generate_lto, align 4, !tbaa !45
  %2 = icmp ne i32 %1, 0
  %3 = load i8, ptr @in_lto_p, align 1
  %4 = icmp ne i8 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %6, label %16, !prof !104

6:                                                ; preds = %0
  %7 = load ptr, ptr @global_dc, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.diagnostic_context, ptr %7, i64 0, i32 1, i64 4
  %9 = load i32, ptr %8, align 8, !tbaa !45
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.diagnostic_context, ptr %7, i64 0, i32 1, i64 5
  %13 = load i32, ptr %12, align 4, !tbaa !45
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %6, %11, %0
  %17 = phi i8 [ 0, %0 ], [ 0, %6 ], [ %15, %11 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_check_version(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = icmp ne i32 %0, 1
  %4 = icmp ne i32 %1, 0
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.51, i32 noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 0) #14
  br label %7

7:                                                ; preds = %2, %6
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_bitpack_word_t_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !105 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = tail call fastcc i32 @VEC_bitpack_word_t_base_space(ptr noundef %2) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 8) #14
  store ptr %6, ptr %0, align 8, !tbaa !36
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_bitpack_word_t_base_quick_push(ptr noundef %0) unnamed_addr #7 !prof !34 !PGOFuncName !106 {
  %2 = load i32, ptr %0, align 8, !tbaa !70
  %3 = add i32 %2, 1
  store i32 %3, ptr %0, align 8, !tbaa !70
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %struct.VEC_bitpack_word_t_base, ptr %0, i64 0, i32 2, i64 %4
  store i64 0, ptr %5, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_bitpack_word_t_base_space(ptr noundef readonly %0) unnamed_addr #8 !prof !34 !PGOFuncName !107 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_bitpack_word_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !108
  %6 = load i32, ptr %0, align 8, !tbaa !70
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_streamer_cache_add_to_node_array(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !34 !PGOFuncName !109 {
  %5 = icmp sgt i32 %1, -1
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 455, ptr noundef nonnull @.str.22) #14
  br label %7

7:                                                ; preds = %4, %6
  %8 = getelementptr inbounds %struct.lto_streamer_cache_d, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  %10 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %9) #13
  %11 = icmp sgt i32 %10, %1
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = add nsw i32 %1, 20
  %14 = sdiv i32 %13, 4
  %15 = add nsw i32 %14, %1
  tail call fastcc void @VEC_tree_gc_safe_grow_cleared(ptr noundef nonnull %8, i32 noundef %15) #13
  %16 = getelementptr inbounds %struct.lto_streamer_cache_d, ptr %0, i64 0, i32 3
  tail call fastcc void @VEC_unsigned_heap_safe_grow_cleared(ptr noundef nonnull %16, i32 noundef %15) #13
  %17 = load ptr, ptr %8, align 8, !tbaa !84
  br label %18

18:                                               ; preds = %12, %7
  %19 = phi ptr [ %17, %12 ], [ %9, %7 ]
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %19, i32 noundef %1, ptr noundef %2) #13
  %20 = getelementptr inbounds %struct.lto_streamer_cache_d, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !83
  tail call fastcc void @VEC_unsigned_base_replace(ptr noundef %21, i32 noundef %1, i32 noundef %3) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_unsigned_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !34 !PGOFuncName !110 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !45
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @lto_stream_as_builtin_p(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !34 !PGOFuncName !111 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 29
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !44
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 11
  %13 = and i32 %12, 3
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = icmp eq i32 %13, 2
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %9, %15, %5, %1
  %19 = phi i8 [ 0, %5 ], [ 0, %1 ], [ 1, %9 ], [ %17, %15 ]
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_safe_grow_cleared(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !112 {
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  %4 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %3) #13
  tail call fastcc void @VEC_tree_gc_safe_grow(ptr noundef nonnull %0, i32 noundef %1) #13
  %5 = load ptr, ptr %0, align 8, !tbaa !36
  %6 = tail call fastcc ptr @VEC_tree_base_address(ptr noundef %5) #13
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = sub nsw i32 %1, %4
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 %11, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_unsigned_heap_safe_grow_cleared(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !113 {
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  %4 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %3) #13
  tail call fastcc void @VEC_unsigned_heap_safe_grow(ptr noundef nonnull %0, i32 noundef %1) #13
  %5 = load ptr, ptr %0, align 8, !tbaa !36
  %6 = tail call fastcc ptr @VEC_unsigned_base_address(ptr noundef %5) #13
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = sub nsw i32 %1, %4
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %8, i8 0, i64 %11, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #7 !prof !34 !PGOFuncName !114 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_unsigned_base_replace(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 !prof !34 !PGOFuncName !115 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 2, i64 %4
  store i32 %2, ptr %5, align 4, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_safe_grow(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !116 {
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !86
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = sub nsw i32 %1, %8
  tail call fastcc void @VEC_tree_gc_reserve_exact(ptr noundef nonnull %0, i32 noundef %9) #13
  %10 = load ptr, ptr %0, align 8, !tbaa !36, !nonnull !117, !noundef !117
  store i32 %1, ptr %10, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_tree_base_address(ptr noundef readnone %0) unnamed_addr #1 !prof !34 !PGOFuncName !118 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_reserve_exact(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !119 {
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  %4 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %3, i32 noundef %1) #13, !range !89
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef %3, i32 noundef %1) #14
  store ptr %7, ptr %0, align 8, !tbaa !36
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !34 !PGOFuncName !120 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !121
  %7 = load i32, ptr %0, align 8, !tbaa !86
  %8 = sub i32 %6, %7
  %9 = icmp uge i32 %8, %1
  br label %12

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i1 [ %9, %4 ], [ %11, %10 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_unsigned_base_length(ptr noundef readonly %0) unnamed_addr #8 !prof !34 !PGOFuncName !122 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !123
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_unsigned_heap_safe_grow(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !125 {
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 4, !tbaa !123
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = sub nsw i32 %1, %8
  tail call fastcc void @VEC_unsigned_heap_reserve_exact(ptr noundef nonnull %0, i32 noundef %9) #13
  %10 = load ptr, ptr %0, align 8, !tbaa !36, !nonnull !117, !noundef !117
  store i32 %1, ptr %10, align 4, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_unsigned_base_address(ptr noundef readnone %0) unnamed_addr #1 !prof !34 !PGOFuncName !126 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_unsigned_heap_reserve_exact(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !127 {
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  %4 = tail call fastcc i32 @VEC_unsigned_base_space(ptr noundef %3, i32 noundef %1) #13, !range !89
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %3, i32 noundef %1, i64 noundef 8, i64 noundef 4) #14
  store ptr %7, ptr %0, align 8, !tbaa !36
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_unsigned_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !34 !PGOFuncName !128 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !129
  %7 = load i32, ptr %0, align 4, !tbaa !123
  %8 = sub i32 %6, %7
  %9 = icmp uge i32 %8, %1
  br label %12

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i1 [ %9, %4 ], [ %11, %10 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_record_common_node(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !130 {
  %4 = load ptr, ptr %0, align 8, !tbaa !36
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %3, %26
  %7 = phi ptr [ %28, %26 ], [ %4, %3 ]
  %8 = phi ptr [ %27, %26 ], [ %0, %3 ]
  %9 = load i64, ptr %7, align 8
  %10 = and i64 %9, 65535
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !45
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %6
  %15 = tail call ptr @gimple_register_type(ptr noundef nonnull %7) #14
  store ptr %15, ptr %8, align 8, !tbaa !36
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi ptr [ %15, %14 ], [ %7, %6 ]
  %18 = tail call i32 @pointer_set_insert(ptr noundef %2, ptr noundef %17) #14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef %1, ptr noundef %17) #13
  %21 = tail call zeroext i8 @tree_node_can_be_shared(ptr noundef %17) #14
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load i64, ptr %17, align 8
  %25 = trunc i64 %24 to i16
  switch i16 %25, label %30 [
    i16 10, label %26
    i16 12, label %26
    i16 13, label %26
    i16 15, label %26
  ]

26:                                               ; preds = %23, %23, %23, %23
  %27 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !36
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %6

30:                                               ; preds = %26, %16, %23, %20, %3
  ret void
}

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_register_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !131 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #13
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @tree_node_can_be_shared(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !132 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2, i32 noundef 1) #13, !range !89
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #14
  store ptr %6, ptr %0, align 8, !tbaa !36
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 !prof !34 !PGOFuncName !133 {
  %3 = load i32, ptr %0, align 8, !tbaa !86
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !86
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !36
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { cold optsize }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{i8 0, i8 2}
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"lto-streamer.c:lto_tag_is_tree_code_p"}
!41 = !{!"lto-streamer.c:lto_tag_to_tree_code"}
!42 = !{!"lto-streamer.c:lto_tag_is_gimple_code_p"}
!43 = !{!"lto-streamer.c:lto_tag_to_gimple_code"}
!44 = !{!38, !38, i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"int", !38, i64 0}
!47 = !{!48, !49, i64 16}
!48 = !{!"lto_stats_d", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !38, i64 40, !49, i64 120, !38, i64 128, !49, i64 1632, !49, i64 1640, !49, i64 1648, !49, i64 1656}
!49 = !{!"long", !38, i64 0}
!50 = !{!48, !49, i64 0}
!51 = !{!48, !49, i64 120}
!52 = !{!49, !49, i64 0}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!48, !49, i64 1632}
!56 = !{!48, !49, i64 1640}
!57 = !{!48, !49, i64 24}
!58 = !{!48, !49, i64 8}
!59 = !{!48, !49, i64 32}
!60 = !{!48, !49, i64 1648}
!61 = !{!48, !49, i64 1656}
!62 = distinct !{!62, !54}
!63 = !{!"lto-streamer.c:VEC_bitpack_word_t_heap_free"}
!64 = !{!65, !37, i64 16}
!65 = !{!"bitpack_d", !49, i64 0, !49, i64 8, !37, i64 16}
!66 = !{!65, !49, i64 8}
!67 = !{!"lto-streamer.c:bp_get_next_word"}
!68 = !{!65, !49, i64 0}
!69 = !{!"lto-streamer.c:VEC_bitpack_word_t_base_length"}
!70 = !{!71, !46, i64 0}
!71 = !{!"VEC_bitpack_word_t_base", !46, i64 0, !46, i64 4, !38, i64 8}
!72 = !{!"lto-streamer.c:VEC_bitpack_word_t_heap_safe_push"}
!73 = !{!"lto-streamer.c:VEC_bitpack_word_t_base_index"}
!74 = !{!"lto-streamer.c:VEC_bitpack_word_t_base_replace"}
!75 = !{!"lto-streamer.c:lto_streamer_cache_insert_1"}
!76 = !{!77, !37, i64 0}
!77 = !{!"tree_int_map", !78, i64 0, !46, i64 8}
!78 = !{!"tree_map_base", !37, i64 0}
!79 = !{!80, !37, i64 0}
!80 = !{!"lto_streamer_cache_d", !37, i64 0, !46, i64 8, !37, i64 16, !37, i64 24}
!81 = !{!80, !46, i64 8}
!82 = !{!77, !46, i64 8}
!83 = !{!80, !37, i64 24}
!84 = !{!80, !37, i64 16}
!85 = !{!"lto-streamer.c:VEC_tree_base_length"}
!86 = !{!87, !46, i64 0}
!87 = !{!"VEC_tree_base", !46, i64 0, !46, i64 4, !38, i64 8}
!88 = !{!"lto-streamer.c:VEC_tree_base_index"}
!89 = !{i32 0, i32 2}
!90 = distinct !{!90, !54}
!91 = !{!"lto-streamer.c:lto_get_common_nodes"}
!92 = distinct !{!92, !54}
!93 = distinct !{!93, !54}
!94 = distinct !{!94, !54}
!95 = !{!"lto-streamer.c:VEC_tree_base_iterate"}
!96 = !{!"lto-streamer.c:preload_common_node"}
!97 = distinct !{!97, !54}
!98 = !{!"lto-streamer.c:VEC_tree_heap_free"}
!99 = !{!"lto-streamer.c:VEC_tree_gc_free"}
!100 = !{!"lto-streamer.c:VEC_unsigned_heap_free"}
!101 = !{!"lto-streamer.c:check_handled_ts_structures"}
!102 = distinct !{!102, !54}
!103 = !{!"function_entry_count", i64 2}
!104 = !{!"branch_weights", i32 7, i32 9}
!105 = !{!"lto-streamer.c:VEC_bitpack_word_t_heap_reserve"}
!106 = !{!"lto-streamer.c:VEC_bitpack_word_t_base_quick_push"}
!107 = !{!"lto-streamer.c:VEC_bitpack_word_t_base_space"}
!108 = !{!71, !46, i64 4}
!109 = !{!"lto-streamer.c:lto_streamer_cache_add_to_node_array"}
!110 = !{!"lto-streamer.c:VEC_unsigned_base_index"}
!111 = !{!"lto-streamer.c:lto_stream_as_builtin_p"}
!112 = !{!"lto-streamer.c:VEC_tree_gc_safe_grow_cleared"}
!113 = !{!"lto-streamer.c:VEC_unsigned_heap_safe_grow_cleared"}
!114 = !{!"lto-streamer.c:VEC_tree_base_replace"}
!115 = !{!"lto-streamer.c:VEC_unsigned_base_replace"}
!116 = !{!"lto-streamer.c:VEC_tree_gc_safe_grow"}
!117 = !{}
!118 = !{!"lto-streamer.c:VEC_tree_base_address"}
!119 = !{!"lto-streamer.c:VEC_tree_gc_reserve_exact"}
!120 = !{!"lto-streamer.c:VEC_tree_base_space"}
!121 = !{!87, !46, i64 4}
!122 = !{!"lto-streamer.c:VEC_unsigned_base_length"}
!123 = !{!124, !46, i64 0}
!124 = !{!"VEC_unsigned_base", !46, i64 0, !46, i64 4, !38, i64 8}
!125 = !{!"lto-streamer.c:VEC_unsigned_heap_safe_grow"}
!126 = !{!"lto-streamer.c:VEC_unsigned_base_address"}
!127 = !{!"lto-streamer.c:VEC_unsigned_heap_reserve_exact"}
!128 = !{!"lto-streamer.c:VEC_unsigned_base_space"}
!129 = !{!124, !46, i64 4}
!130 = !{!"lto-streamer.c:lto_record_common_node"}
!131 = !{!"lto-streamer.c:VEC_tree_heap_safe_push"}
!132 = !{!"lto-streamer.c:VEC_tree_heap_reserve"}
!133 = !{!"lto-streamer.c:VEC_tree_base_quick_push"}

; ModuleID = 'stor-layout.c'
source_filename = "stor-layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
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
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.record_layout_info_s = type { ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }

@sizetype_tab = dso_local local_unnamed_addr global [4 x ptr] zeroinitializer, align 16
@maximum_field_alignment = dso_local local_unnamed_addr global i32 0, align 4
@initial_max_fld_align = dso_local local_unnamed_addr global i32 0, align 4
@reference_types_internal = internal unnamed_addr global i1 false, align 4
@pending_sizes = internal global ptr null, align 8
@.str = private unnamed_addr constant [14 x i8] c"stor-layout.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"type size can%'t be explicitly evaluated\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"variable-size type declared outside of any function\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@self_referential_size.fnno = internal unnamed_addr global i64 0, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"p%d\00", align 1
@input_location = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@.str.5 = private unnamed_addr constant [6 x i8] c"SZ%lu\00", align 1
@size_functions = internal global ptr null, align 8
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@class_narrowest_mode = external local_unnamed_addr constant [18 x i8], align 16
@mode_precision = external local_unnamed_addr constant [87 x i16], align 16
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@mode_base_align = external local_unnamed_addr global [87 x i8], align 16
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@warn_larger_than = external local_unnamed_addr global i8, align 1
@larger_than_size = external local_unnamed_addr global i64, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"size of %q+D is %d bytes\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"size of %q+D is larger than %wd bytes\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"\0Aoffset\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c" bitpos\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"\0Aaligns: rec = %u, unpack = %u, off = %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"remaining in alignment = %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"packed may be necessary\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"pending statics:\0A\00", align 1
@warn_packed = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [41 x i8] c"packed attribute is unnecessary for %q+D\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"padding struct to align %q+D\00", align 1
@warn_packed_bitfield_compat = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [54 x i8] c"Offset of packed bit-field %qD has changed in GCC 4.4\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"padding struct size to alignment boundary\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"packed attribute is unnecessary for %qE\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"packed attribute is unnecessary\00", align 1
@mode_nunits = external local_unnamed_addr constant [87 x i8], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@have_regs_of_mode = external local_unnamed_addr global [87 x i8], align 16
@.str.21 = private unnamed_addr constant [57 x i8] c"alignment of array elements is greater than element size\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"bit_size_type\00", align 1
@gt_ggc_r_gt_stor_layout_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @size_functions, i64 1, i64 8, ptr @gt_ggc_mx_VEC_tree_gc, ptr @gt_pch_nx_VEC_tree_gc }, %struct.ggc_root_tab { ptr @pending_sizes, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @internal_reference_types() local_unnamed_addr #0 !prof !182 {
  store i1 true, ptr @reference_types_internal, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @get_pending_sizes() local_unnamed_addr #1 !prof !183 {
  %1 = load ptr, ptr @pending_sizes, align 8, !tbaa !184
  store ptr null, ptr @pending_sizes, align 8, !tbaa !184
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @put_pending_size(ptr noundef %0) local_unnamed_addr #3 !prof !182 {
  %2 = tail call ptr @skip_simple_arithmetic(ptr noundef %0) #16
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 120
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load ptr, ptr @pending_sizes, align 8, !tbaa !184
  %8 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %2, ptr noundef %7) #16
  store ptr %8, ptr @pending_sizes, align 8, !tbaa !184
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare ptr @skip_simple_arithmetic(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @put_pending_sizes(ptr noundef %0) local_unnamed_addr #3 !prof !188 {
  %2 = load ptr, ptr @pending_sizes, align 8, !tbaa !184
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !189

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 113, ptr noundef nonnull @.str.1) #16
  br label %5

5:                                                ; preds = %1, %4
  store ptr %0, ptr @pending_sizes, align 8, !tbaa !184
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @variable_size(ptr noundef %0) local_unnamed_addr #3 !prof !190 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 131072
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %35, !prof !191

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @contains_placeholder_p(ptr noundef nonnull %0) #16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8, !prof !191

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @self_referential_size(ptr noundef nonnull %0) #17
  br label %35

10:                                               ; preds = %5
  %11 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33), align 8, !tbaa !192
  %12 = tail call i32 %11() #16
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %35, label %14, !prof !201

14:                                               ; preds = %10
  %15 = tail call ptr @save_expr(ptr noundef nonnull %0) #16
  %16 = tail call ptr @skip_simple_arithmetic(ptr noundef %15) #16
  %17 = load ptr, ptr @cfun, align 8, !tbaa !184
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19, !prof !201

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 20
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 8388608
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %35, !prof !201

24:                                               ; preds = %19, %14
  %25 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33), align 8, !tbaa !192
  %26 = tail call i32 %25() #16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load i64, ptr %15, align 8
  %30 = and i64 %29, 131072
  %31 = icmp eq i64 %30, 0
  %32 = select i1 %31, ptr @.str.3, ptr @.str.2
  tail call void (ptr, ...) @error(ptr noundef nonnull %32) #16
  %33 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 18), align 16, !tbaa !184
  br label %35

34:                                               ; preds = %24
  tail call void @put_pending_size(ptr noundef %16) #17
  br label %35

35:                                               ; preds = %19, %10, %1, %34, %28, %8
  %36 = phi ptr [ %33, %28 ], [ %15, %34 ], [ %9, %8 ], [ %0, %1 ], [ %0, %10 ], [ %15, %19 ]
  ret ptr %36
}

; Function Attrs: optsize
declare zeroext i8 @contains_placeholder_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @self_referential_size(ptr noundef %0) unnamed_addr #3 !prof !182 !PGOFuncName !202 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  store ptr null, ptr %2, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #18
  %6 = tail call ptr @skip_simple_arithmetic(ptr noundef %0) #16
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 59
  br i1 %9, label %139, label %10

10:                                               ; preds = %1
  call void @find_placeholder_in_expr(ptr noundef %0, ptr noundef nonnull %2) #16
  %11 = load ptr, ptr %2, align 8
  %12 = call fastcc i32 @VEC_tree_base_length(ptr noundef %11) #17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 248, ptr noundef nonnull @.str.1) #16
  br label %15

15:                                               ; preds = %10, %14
  store ptr %0, ptr %3, align 8, !tbaa !184
  %16 = call ptr @walk_tree_1(ptr noundef nonnull %3, ptr noundef nonnull @copy_self_referential_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %139

18:                                               ; preds = %15
  %19 = load ptr, ptr %3, align 8, !tbaa !184
  %20 = load ptr, ptr %2, align 8
  %21 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %20, i32 noundef 0, ptr noundef nonnull %4) #17, !range !203
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %87, label %23

23:                                               ; preds = %18, %71
  %24 = phi ptr [ %79, %71 ], [ %19, %18 ]
  %25 = phi ptr [ %80, %71 ], [ null, %18 ]
  %26 = phi i32 [ %83, %71 ], [ 0, %18 ]
  %27 = phi ptr [ %81, %71 ], [ null, %18 ]
  %28 = phi ptr [ %82, %71 ], [ null, %18 ]
  %29 = load ptr, ptr %4, align 8, !tbaa !184
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !204
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = and i64 %30, 1048576
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 265, ptr noundef nonnull @.str.1) #16
  br label %44

39:                                               ; preds = %23
  %40 = icmp eq i64 %31, 121
  br i1 %40, label %44, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !206
  br label %44

44:                                               ; preds = %38, %35, %39, %41
  %45 = phi ptr [ %43, %41 ], [ %29, %39 ], [ %29, %35 ], [ %29, %38 ]
  %46 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %26) #17
  %47 = call ptr @get_identifier(ptr noundef nonnull %5) #16
  %48 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !206
  %50 = load i32, ptr @input_location, align 4, !tbaa !204
  %51 = call ptr @build_decl_stat(i32 noundef %50, i32 noundef 34, ptr noundef %47, ptr noundef %49) #16
  %52 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 1), align 8, !tbaa !207
  %53 = call zeroext i8 %52(ptr noundef null) #16
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %44
  %56 = load i64, ptr %49, align 8
  %57 = trunc i64 %56 to i32
  %58 = and i32 %57, 65535
  %59 = add nsw i32 %58, -6
  %60 = icmp ult i32 %59, 3
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.tree_type, ptr %49, i64 0, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 1023
  %65 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !184
  %66 = getelementptr inbounds %struct.tree_type, ptr %65, i64 0, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 1023
  %69 = icmp ult i32 %64, %68
  br i1 %69, label %71, label %70

70:                                               ; preds = %55, %61, %44
  br label %71

71:                                               ; preds = %61, %70
  %72 = phi ptr [ %49, %70 ], [ %65, %61 ]
  %73 = getelementptr inbounds %struct.tree_decl_common, ptr %51, i64 0, i32 5
  store ptr %72, ptr %73, align 8, !tbaa !206
  %74 = getelementptr inbounds %struct.tree_decl_common, ptr %51, i64 0, i32 2
  %75 = load i64, ptr %74, align 8
  %76 = or i64 %75, 4096
  store i64 %76, ptr %74, align 8
  %77 = load i64, ptr %51, align 8
  %78 = or i64 %77, 1048576
  store i64 %78, ptr %51, align 8
  %79 = call ptr @substitute_in_expr(ptr noundef %24, ptr noundef %45, ptr noundef nonnull %51) #16
  %80 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %49, ptr noundef %25) #16
  %81 = call ptr @chainon(ptr noundef nonnull %51, ptr noundef %27) #16
  %82 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %29, ptr noundef %28) #16
  %83 = add i32 %26, 1
  %84 = load ptr, ptr %2, align 8
  %85 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %84, i32 noundef %83, ptr noundef nonnull %4) #17, !range !203
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %23, !llvm.loop !219

87:                                               ; preds = %71, %18
  %88 = phi ptr [ null, %18 ], [ %82, %71 ]
  %89 = phi ptr [ null, %18 ], [ %81, %71 ]
  %90 = phi ptr [ null, %18 ], [ %80, %71 ]
  %91 = phi ptr [ %19, %18 ], [ %79, %71 ]
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %2) #17
  %92 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !184
  %93 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %92, ptr noundef %90) #16
  %94 = call ptr @nreverse(ptr noundef %93) #16
  %95 = call ptr @nreverse(ptr noundef %89) #16
  %96 = call ptr @nreverse(ptr noundef %88) #16
  %97 = getelementptr inbounds %struct.tree_common, ptr %91, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !206
  %99 = call ptr @build_function_type(ptr noundef %98, ptr noundef %94) #16
  %100 = load i64, ptr @self_referential_size.fnno, align 8, !tbaa !221
  %101 = add i64 %100, 1
  store i64 %101, ptr @self_referential_size.fnno, align 8, !tbaa !221
  %102 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.5, i64 noundef %100) #17
  %103 = call ptr @get_file_function_name(ptr noundef nonnull %5) #16
  %104 = load i32, ptr @input_location, align 4, !tbaa !204
  %105 = call ptr @build_decl_stat(i32 noundef %104, i32 noundef 29, ptr noundef %103, ptr noundef %99) #16
  %106 = icmp eq ptr %95, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %87, %107
  %108 = phi ptr [ %111, %107 ], [ %95, %87 ]
  %109 = getelementptr inbounds %struct.tree_decl_minimal, ptr %108, i64 0, i32 4
  store ptr %105, ptr %109, align 8, !tbaa !206
  %110 = getelementptr inbounds %struct.tree_common, ptr %108, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !206
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %107, !llvm.loop !222

113:                                              ; preds = %107, %87
  store ptr null, ptr %3, align 8, !tbaa !184
  %114 = getelementptr inbounds %struct.tree_decl_non_common, ptr %105, i64 0, i32 2
  store ptr %95, ptr %114, align 8, !tbaa !206
  %115 = load i32, ptr @input_location, align 4, !tbaa !204
  %116 = call ptr @build_decl_stat(i32 noundef %115, i32 noundef 36, ptr noundef null, ptr noundef %98) #16
  %117 = getelementptr inbounds %struct.tree_decl_non_common, ptr %105, i64 0, i32 3
  store ptr %116, ptr %117, align 8, !tbaa !206
  %118 = getelementptr inbounds %struct.tree_decl_minimal, ptr %116, i64 0, i32 4
  store ptr %105, ptr %118, align 8, !tbaa !206
  %119 = getelementptr inbounds %struct.tree_decl_common, ptr %105, i64 0, i32 2
  %120 = load i64, ptr %119, align 8
  %121 = or i64 %120, 5120
  store i64 %121, ptr %119, align 8
  %122 = load i64, ptr %105, align 8
  %123 = or i64 %122, 34603008
  store i64 %123, ptr %105, align 8
  %124 = getelementptr inbounds %struct.tree_function_decl, ptr %105, i64 0, i32 5
  %125 = load i32, ptr %124, align 8
  %126 = or i32 %125, 2097152
  store i32 %126, ptr %124, align 8
  %127 = call ptr @make_node_stat(i32 noundef 4) #16
  %128 = getelementptr inbounds %struct.tree_decl_common, ptr %105, i64 0, i32 5
  store ptr %127, ptr %128, align 8, !tbaa !206
  %129 = getelementptr inbounds %struct.tree_block, ptr %127, i64 0, i32 6
  store ptr %105, ptr %129, align 8, !tbaa !206
  %130 = load ptr, ptr %117, align 8, !tbaa !206
  %131 = call ptr @build2_stat(i32 noundef 53, ptr noundef %98, ptr noundef %130, ptr noundef %91) #16
  store ptr %131, ptr %3, align 8, !tbaa !184
  %132 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !184
  %133 = call ptr @build1_stat(i32 noundef 135, ptr noundef %132, ptr noundef %131) #16
  %134 = getelementptr inbounds %struct.tree_decl_non_common, ptr %105, i64 0, i32 1
  store ptr %133, ptr %134, align 8, !tbaa !206
  %135 = load i64, ptr %105, align 8
  %136 = or i64 %135, 67108864
  store i64 %136, ptr %105, align 8
  call fastcc void @VEC_tree_gc_safe_push(ptr noundef nonnull %105) #17
  %137 = load i32, ptr @input_location, align 4, !tbaa !204
  %138 = call ptr @build_function_call_expr(i32 noundef %137, ptr noundef nonnull %105, ptr noundef %96) #16
  br label %139

139:                                              ; preds = %15, %1, %113
  %140 = phi ptr [ %138, %113 ], [ %0, %1 ], [ %0, %15 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret ptr %140
}

; Function Attrs: optsize
declare ptr @save_expr(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @find_placeholder_in_expr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !182 !PGOFuncName !223 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !224
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @copy_self_referential_tree_r(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 !prof !182 !PGOFuncName !226 {
  %4 = load ptr, ptr %0, align 8, !tbaa !184
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !204
  %9 = add i32 %8, -1
  %10 = icmp ult i32 %9, 3
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !204
  br label %37

12:                                               ; preds = %3
  %13 = trunc i64 %5 to i16
  switch i16 %13, label %35 [
    i16 121, label %14
    i16 41, label %21
    i16 120, label %33
  ]

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !206
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 62
  br i1 %19, label %20, label %35

20:                                               ; preds = %14
  store i32 0, ptr %1, align 4, !tbaa !204
  br label %37

21:                                               ; preds = %12, %21
  %22 = phi ptr [ %24, %21 ], [ %4, %12 ]
  %23 = getelementptr inbounds %struct.tree_exp, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !206
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !204
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %21, label %30, !llvm.loop !227

30:                                               ; preds = %21
  %31 = icmp eq i64 %26, 62
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  store i32 0, ptr %1, align 4, !tbaa !204
  br label %37

33:                                               ; preds = %12
  %34 = load ptr, ptr @global_trees, align 16, !tbaa !184
  br label %37

35:                                               ; preds = %14, %30, %12
  %36 = tail call ptr @copy_tree_r(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #16
  br label %37

37:                                               ; preds = %32, %35, %33, %20, %11
  %38 = phi ptr [ null, %11 ], [ null, %20 ], [ %36, %35 ], [ null, %32 ], [ %34, %33 ]
  ret ptr %38
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !228 !PGOFuncName !229 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !230

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !224
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !184
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !184
  ret i32 %14
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @substitute_in_expr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @chainon(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #8 !prof !182 !PGOFuncName !231 {
  %2 = load ptr, ptr %0, align 8, !tbaa !184
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #17
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !184
  ret void
}

; Function Attrs: optsize
declare ptr @nreverse(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @build_function_type(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @get_file_function_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_safe_push(ptr noundef %0) unnamed_addr #3 !prof !182 !PGOFuncName !232 {
  tail call fastcc void @VEC_tree_gc_reserve() #17
  %2 = load ptr, ptr @size_functions, align 8, !tbaa !184
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %2, ptr noundef %0) #17
  ret void
}

; Function Attrs: optsize
declare ptr @build_function_call_expr(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @copy_tree_r(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_reserve() unnamed_addr #3 !prof !182 !PGOFuncName !233 {
  %1 = load ptr, ptr @size_functions, align 8, !tbaa !184
  %2 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %1) #17
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_gc_p_reserve(ptr noundef %1, i32 noundef 1) #16
  store ptr %5, ptr @size_functions, align 8, !tbaa !184
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !182 !PGOFuncName !234 {
  %3 = load i32, ptr %0, align 8, !tbaa !224
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !224
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !184
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #5 !prof !182 !PGOFuncName !235 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !236
  %6 = load i32, ptr %0, align 8, !tbaa !224
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @finalize_size_functions() local_unnamed_addr #3 !prof !228 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #18
  %2 = load ptr, ptr @size_functions, align 8
  %3 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %1) #17, !range !203
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5, !prof !237

5:                                                ; preds = %0, %5
  %6 = phi i32 [ %8, %5 ], [ 0, %0 ]
  %7 = load ptr, ptr %1, align 8, !tbaa !184
  tail call void @dump_function(i32 noundef 4, ptr noundef %7) #16
  tail call void @gimplify_function_tree(ptr noundef %7) #16
  tail call void @dump_function(i32 noundef 5, ptr noundef %7) #16
  tail call void @cgraph_finalize_function(ptr noundef %7, i8 noundef zeroext 0) #16
  %8 = add i32 %6, 1
  %9 = load ptr, ptr @size_functions, align 8
  %10 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %9, i32 noundef %8, ptr noundef nonnull %1) #17, !range !203
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %5, !prof !238, !llvm.loop !239

12:                                               ; preds = %5, %0
  tail call fastcc void @VEC_tree_gc_free() #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #18
  ret void
}

; Function Attrs: optsize
declare void @dump_function(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gimplify_function_tree(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @cgraph_finalize_function(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_free() unnamed_addr #3 !prof !228 !PGOFuncName !240 {
  %1 = load ptr, ptr @size_functions, align 8, !tbaa !184
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !230

3:                                                ; preds = %0
  tail call void @ggc_free(ptr noundef nonnull %1) #16
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @size_functions, align 8, !tbaa !184
  ret void
}

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @mode_for_size(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !241 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %10, label %5, !prof !242

5:                                                ; preds = %3
  %6 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 17), align 1, !tbaa !206
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 3
  %9 = icmp ult i32 %8, %0
  br i1 %9, label %28, label %10, !prof !243

10:                                               ; preds = %5, %3
  %11 = zext i32 %1 to i64
  %12 = getelementptr inbounds [18 x i8], ptr @class_narrowest_mode, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !206
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %28, label %15, !prof !244

15:                                               ; preds = %10, %22
  %16 = phi i8 [ %24, %22 ], [ %13, %10 ]
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %17
  %19 = load i16, ptr %18, align 2, !tbaa !245
  %20 = zext i16 %19 to i32
  %21 = icmp eq i32 %20, %0
  br i1 %21, label %26, label %22, !prof !247

22:                                               ; preds = %15
  %23 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %17
  %24 = load i8, ptr %23, align 1, !tbaa !206
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %15, !prof !248, !llvm.loop !249

26:                                               ; preds = %15
  %27 = zext i8 %16 to i32
  br label %28

28:                                               ; preds = %22, %26, %10, %5
  %29 = phi i32 [ 1, %5 ], [ %27, %26 ], [ 1, %10 ], [ 1, %22 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @mode_for_size_tree(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !250 {
  %4 = tail call i32 @host_integerp(ptr noundef %0, i32 noundef 1) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6, !prof !251

6:                                                ; preds = %3
  %7 = tail call i64 @tree_low_cst(ptr noundef %0, i32 noundef 1) #16
  %8 = icmp ult i64 %7, 4294967296
  br i1 %8, label %9, label %12, !prof !252

9:                                                ; preds = %6
  %10 = trunc i64 %7 to i32
  %11 = tail call i32 @mode_for_size(i32 noundef %10, i32 noundef %1, i32 noundef %2) #17, !range !253
  br label %12

12:                                               ; preds = %6, %3, %9
  %13 = phi i32 [ %11, %9 ], [ 1, %3 ], [ 1, %6 ]
  ret i32 %13
}

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @smallest_mode_for_size(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !prof !254 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [18 x i8], ptr @class_narrowest_mode, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !206
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %18, label %7, !prof !255

7:                                                ; preds = %2, %14
  %8 = phi i8 [ %16, %14 ], [ %5, %2 ]
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !245
  %12 = zext i16 %11 to i32
  %13 = icmp ult i32 %12, %0
  br i1 %13, label %14, label %19, !prof !256

14:                                               ; preds = %7
  %15 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %9
  %16 = load i8, ptr %15, align 1, !tbaa !206
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %7, !prof !257, !llvm.loop !258

18:                                               ; preds = %14, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 430, ptr noundef nonnull @.str.1) #16
  br label %21

19:                                               ; preds = %7
  %20 = zext i8 %8 to i32
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi i32 [ 0, %18 ], [ %20, %19 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @int_mode_for_mode(i32 noundef %0) local_unnamed_addr #3 !prof !259 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !206
  switch i8 %4, label %13 [
    i8 2, label %14
    i8 3, label %14
    i8 10, label %5
    i8 11, label %5
    i8 8, label %5
    i8 9, label %5
    i8 12, label %5
    i8 17, label %5
    i8 4, label %5
    i8 6, label %5
    i8 5, label %5
    i8 7, label %5
    i8 13, label %5
    i8 15, label %5
    i8 14, label %5
    i8 16, label %5
    i8 0, label %11
  ], !prof !260

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2
  %7 = load i8, ptr %6, align 1, !tbaa !206
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 3
  %10 = tail call i32 @mode_for_size(i32 noundef %9, i32 noundef 2, i32 noundef 0) #17, !range !253
  br label %14

11:                                               ; preds = %1
  %12 = icmp eq i32 %0, 1
  br i1 %12, label %14, label %13, !prof !261

13:                                               ; preds = %11, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 472, ptr noundef nonnull @.str.1) #16
  br label %14

14:                                               ; preds = %11, %1, %1, %13, %5
  %15 = phi i32 [ %0, %13 ], [ 1, %11 ], [ %10, %5 ], [ %0, %1 ], [ %0, %1 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_mode_alignment(i32 noundef %0) local_unnamed_addr #11 !prof !262 {
  %2 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !204
  %3 = and i32 %2, 32
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 128, i32 256
  %6 = zext i32 %0 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_base_align, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !206
  %9 = icmp eq i8 %8, 0
  %10 = zext i8 %8 to i32
  %11 = shl nuw nsw i32 %10, 3
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %5)
  %13 = select i1 %9, i32 1, i32 %12
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @layout_decl(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 !prof !263 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !206
  %5 = load i64, ptr %0, align 8
  %6 = freeze i64 %5
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 65535
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !206
  %11 = icmp eq i32 %8, 33
  br i1 %11, label %285, label %12, !prof !264

12:                                               ; preds = %2
  %13 = and i32 %7, 65533
  %14 = icmp eq i32 %13, 32
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = trunc i64 %6 to i16
  switch i16 %16, label %17 [
    i16 36, label %19
    i16 35, label %19
    i16 31, label %19
  ]

17:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 527, ptr noundef nonnull @.str.1) #16
  %18 = load i64, ptr %0, align 8
  br label %19

19:                                               ; preds = %15, %15, %15, %12, %17
  %20 = phi i64 [ %6, %15 ], [ %6, %15 ], [ %6, %15 ], [ %6, %12 ], [ %18, %17 ]
  %21 = and i64 %20, 65535
  %22 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %21, i64 11
  %23 = load i8, ptr %22, align 1, !tbaa !206
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %30, label %25, !prof !265

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !206
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29, !prof !266

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %19, %25, %29
  %31 = phi ptr [ %27, %29 ], [ null, %25 ], [ null, %19 ]
  %32 = load ptr, ptr @global_trees, align 16, !tbaa !184
  %33 = icmp eq ptr %4, %32
  br i1 %33, label %34, label %36, !prof !264

34:                                               ; preds = %30
  %35 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !184
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi ptr [ %35, %34 ], [ %4, %30 ]
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 2097152
  %40 = and i64 %20, -2097153
  %41 = or disjoint i64 %39, %40
  store i64 %41, ptr %0, align 8
  %42 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 255
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %64, !prof !267

46:                                               ; preds = %36
  %47 = load i64, ptr %37, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 14
  br i1 %49, label %50, label %53, !prof !268

50:                                               ; preds = %46
  %51 = tail call i32 @vector_type_mode(ptr noundef nonnull %37) #17, !range !269
  %52 = load i64, ptr %42, align 8
  br label %58

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  br label %58

58:                                               ; preds = %53, %50
  %59 = phi i64 [ %52, %50 ], [ %43, %53 ]
  %60 = phi i32 [ %51, %50 ], [ %57, %53 ]
  %61 = zext nneg i32 %60 to i64
  %62 = and i64 %59, -256
  %63 = or disjoint i64 %62, %61
  store i64 %63, ptr %42, align 8
  br label %64

64:                                               ; preds = %58, %36
  %65 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !206
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %74, !prof !270

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !206
  store ptr %70, ptr %65, align 8, !tbaa !206
  %71 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !206
  %73 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  store ptr %72, ptr %73, align 8, !tbaa !206
  br label %83

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !206
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %83, !prof !271

78:                                               ; preds = %74
  %79 = load ptr, ptr @sizetype_tab, align 16, !tbaa !184
  %80 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 21), align 8, !tbaa !184
  %81 = tail call ptr @size_binop_loc(i32 noundef %10, i32 noundef 68, ptr noundef nonnull %66, ptr noundef %80) #16
  %82 = tail call ptr @fold_convert_loc(i32 noundef %10, ptr noundef %79, ptr noundef %81) #16
  store ptr %82, ptr %75, align 8, !tbaa !206
  br label %83

83:                                               ; preds = %74, %78, %68
  %84 = icmp eq i32 %8, 31
  br i1 %84, label %86, label %85, !prof !265

85:                                               ; preds = %83
  tail call fastcc void @do_type_align(ptr noundef nonnull %37, ptr noundef nonnull %0) #17
  br label %224

86:                                               ; preds = %83
  %87 = load i64, ptr %0, align 8
  %88 = lshr i64 %87, 42
  %89 = trunc i64 %88 to i32
  %90 = and i32 %89, 1
  %91 = lshr i64 %87, 41
  %92 = trunc i64 %91 to i8
  %93 = and i8 %92, 1
  %94 = load i64, ptr %42, align 8
  %95 = and i64 %94, 33554432
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %187, label %97, !prof !272

97:                                               ; preds = %86
  %98 = getelementptr inbounds %struct.tree_field_decl, ptr %0, i64 0, i32 2
  store ptr %37, ptr %98, align 8, !tbaa !206
  %99 = load ptr, ptr %65, align 8, !tbaa !206
  %100 = tail call i32 @integer_zerop(ptr noundef %99) #16
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %109, label %102, !prof !273

102:                                              ; preds = %97
  %103 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 18), align 8, !tbaa !274
  %104 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %105 = load ptr, ptr %104, align 8, !tbaa !206
  %106 = tail call zeroext i8 %103(ptr noundef %105) #16
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  tail call fastcc void @do_type_align(ptr noundef nonnull %37, ptr noundef nonnull %0) #17
  br label %109

109:                                              ; preds = %108, %102, %97
  %110 = phi i8 [ %93, %102 ], [ 0, %108 ], [ %93, %97 ]
  %111 = phi i8 [ 0, %102 ], [ 1, %108 ], [ 0, %97 ]
  %112 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !206
  %114 = icmp eq ptr %113, null
  br i1 %114, label %159, label %115, !prof !275

115:                                              ; preds = %109
  %116 = load i64, ptr %113, align 8
  %117 = and i64 %116, 65535
  %118 = icmp eq i64 %117, 23
  br i1 %118, label %119, label %159, !prof !273

119:                                              ; preds = %115
  %120 = load i64, ptr %37, align 8
  %121 = and i64 %120, 65535
  %122 = icmp eq i64 %121, 14
  br i1 %122, label %123, label %125, !prof !275

123:                                              ; preds = %119
  %124 = tail call i32 @vector_type_mode(ptr noundef nonnull %37) #17, !range !269
  br label %130

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 6
  %127 = load i32, ptr %126, align 4
  %128 = lshr i32 %127, 16
  %129 = and i32 %128, 255
  br label %130

130:                                              ; preds = %125, %123
  %131 = phi i32 [ %124, %123 ], [ %129, %125 ]
  %132 = zext nneg i32 %131 to i64
  %133 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %132
  %134 = load i8, ptr %133, align 1, !tbaa !206
  %135 = icmp eq i8 %134, 2
  br i1 %135, label %136, label %159, !prof !273

136:                                              ; preds = %130
  %137 = load ptr, ptr %65, align 8, !tbaa !206
  %138 = tail call i32 @mode_for_size_tree(ptr noundef %137, i32 noundef 2, i32 noundef 1) #17, !range !253
  %139 = tail call i32 @get_mode_alignment(i32 noundef %138) #17, !range !276
  %140 = icmp eq i32 %138, 1
  br i1 %140, label %159, label %141, !prof !277

141:                                              ; preds = %136
  %142 = icmp ugt i32 %139, 8
  br i1 %142, label %143, label %147, !prof !278

143:                                              ; preds = %141
  %144 = load i64, ptr %0, align 8
  %145 = and i64 %144, 2199023255552
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %159, !prof !279

147:                                              ; preds = %143, %141
  %148 = icmp ne i32 %1, 0
  %149 = icmp ugt i32 %139, %1
  %150 = select i1 %148, i1 %149, i1 false
  br i1 %150, label %159, label %151, !prof !280

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %153 = load i32, ptr %152, align 8, !tbaa !206
  %154 = tail call i32 @llvm.umax.i32(i32 %139, i32 %153)
  store i32 %154, ptr %152, align 8, !tbaa !206
  %155 = zext nneg i32 %138 to i64
  %156 = load i64, ptr %42, align 8
  %157 = and i64 %156, -33554688
  %158 = or disjoint i64 %157, %155
  store i64 %158, ptr %42, align 8
  br label %159

159:                                              ; preds = %136, %143, %151, %147, %130, %115, %109
  %160 = load i64, ptr %37, align 8
  %161 = and i64 %160, 65535
  %162 = icmp eq i64 %161, 14
  br i1 %162, label %163, label %165, !prof !275

163:                                              ; preds = %159
  %164 = tail call i32 @vector_type_mode(ptr noundef nonnull %37) #17, !range !269
  br label %170

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 6
  %167 = load i32, ptr %166, align 4
  %168 = lshr i32 %167, 16
  %169 = and i32 %168, 255
  br label %170

170:                                              ; preds = %165, %163
  %171 = phi i32 [ %164, %163 ], [ %169, %165 ]
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %173, label %192, !prof !275

173:                                              ; preds = %170
  %174 = load i64, ptr %42, align 8
  %175 = and i64 %174, 255
  %176 = icmp eq i64 %175, 1
  br i1 %176, label %177, label %192

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 7
  %179 = load i32, ptr %178, align 8, !tbaa !206
  %180 = icmp ugt i32 %179, %1
  br i1 %180, label %192, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %183 = load i32, ptr %182, align 8, !tbaa !206
  %184 = icmp ult i32 %183, %179
  br i1 %184, label %192, label %185

185:                                              ; preds = %181
  %186 = and i64 %174, -33554687
  store i64 %186, ptr %42, align 8
  br label %192

187:                                              ; preds = %86
  %188 = icmp eq i8 %93, 0
  br i1 %188, label %191, label %189, !prof !281

189:                                              ; preds = %187
  %190 = icmp eq i32 %90, 0
  br i1 %190, label %191, label %215

191:                                              ; preds = %189, %187
  tail call fastcc void @do_type_align(ptr noundef nonnull %37, ptr noundef nonnull %0) #17
  br label %192

192:                                              ; preds = %191, %170, %173, %177, %181, %185
  %193 = phi i8 [ %110, %185 ], [ %110, %181 ], [ %110, %177 ], [ %110, %173 ], [ %110, %170 ], [ %93, %191 ]
  %194 = phi i8 [ %111, %185 ], [ %111, %181 ], [ %111, %177 ], [ %111, %173 ], [ %111, %170 ], [ 0, %191 ]
  %195 = icmp eq i8 %193, 0
  br i1 %195, label %202, label %196, !prof !282

196:                                              ; preds = %192
  %197 = icmp eq i32 %90, 0
  br i1 %197, label %198, label %210

198:                                              ; preds = %196
  %199 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %200 = load i32, ptr %199, align 8, !tbaa !206
  %201 = tail call i32 @llvm.umin.i32(i32 %200, i32 8)
  store i32 %201, ptr %199, align 8, !tbaa !206
  br label %210

202:                                              ; preds = %192
  %203 = load i64, ptr %0, align 8
  %204 = and i64 %203, 4398046511104
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %210, !prof !283

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %208 = load i32, ptr %207, align 8, !tbaa !206
  %209 = tail call i32 @x86_field_alignment(ptr noundef nonnull %0, i32 noundef %208) #16
  store i32 %209, ptr %207, align 8, !tbaa !206
  br label %210

210:                                              ; preds = %196, %198, %206, %202
  %211 = icmp eq i8 %194, 0
  br i1 %211, label %215, label %212, !prof !284

212:                                              ; preds = %210
  %213 = load i32, ptr @initial_max_fld_align, align 4, !tbaa !204
  %214 = shl i32 %213, 3
  br label %217

215:                                              ; preds = %189, %210
  %216 = load i32, ptr @maximum_field_alignment, align 4, !tbaa !204
  br label %217

217:                                              ; preds = %215, %212
  %218 = phi i32 [ %214, %212 ], [ %216, %215 ]
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %224, label %220, !prof !285

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %222 = load i32, ptr %221, align 8, !tbaa !206
  %223 = tail call i32 @llvm.umin.i32(i32 %222, i32 %218)
  store i32 %223, ptr %221, align 8, !tbaa !206
  br label %224

224:                                              ; preds = %217, %220, %85
  %225 = load ptr, ptr %65, align 8, !tbaa !206
  %226 = icmp eq ptr %225, null
  br i1 %226, label %233, label %227, !prof !286

227:                                              ; preds = %224
  %228 = load i64, ptr %225, align 8
  %229 = and i64 %228, 65535
  %230 = icmp eq i64 %229, 23
  br i1 %230, label %233, label %231, !prof !287

231:                                              ; preds = %227
  %232 = tail call ptr @variable_size(ptr noundef nonnull %225) #17
  store ptr %232, ptr %65, align 8, !tbaa !206
  br label %233

233:                                              ; preds = %231, %227, %224
  %234 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  %235 = load ptr, ptr %234, align 8, !tbaa !206
  %236 = icmp eq ptr %235, null
  br i1 %236, label %243, label %237, !prof !286

237:                                              ; preds = %233
  %238 = load i64, ptr %235, align 8
  %239 = and i64 %238, 65535
  %240 = icmp eq i64 %239, 23
  br i1 %240, label %243, label %241, !prof !287

241:                                              ; preds = %237
  %242 = tail call ptr @variable_size(ptr noundef nonnull %235) #17
  store ptr %242, ptr %234, align 8, !tbaa !206
  br label %243

243:                                              ; preds = %241, %237, %233
  %244 = phi ptr [ %242, %241 ], [ %235, %237 ], [ null, %233 ]
  %245 = load i8, ptr @warn_larger_than, align 1, !tbaa !206
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %275, label %247, !prof !288

247:                                              ; preds = %243
  br i1 %14, label %248, label %275

248:                                              ; preds = %247
  %249 = load i64, ptr %42, align 8
  %250 = and i64 %249, 33554432
  %251 = icmp ne i64 %250, 0
  %252 = icmp eq ptr %244, null
  %253 = select i1 %251, i1 true, i1 %252
  br i1 %253, label %275, label %254

254:                                              ; preds = %248
  %255 = load i64, ptr %244, align 8
  %256 = and i64 %255, 65535
  %257 = icmp eq i64 %256, 23
  br i1 %257, label %258, label %275

258:                                              ; preds = %254
  %259 = load i64, ptr @larger_than_size, align 8, !tbaa !221
  %260 = tail call i32 @compare_tree_int(ptr noundef nonnull %244, i64 noundef %259) #16
  %261 = icmp sgt i32 %260, 0
  br i1 %261, label %262, label %275

262:                                              ; preds = %258
  %263 = getelementptr inbounds %struct.tree_int_cst, ptr %244, i64 0, i32 1
  %264 = load i64, ptr %263, align 8, !tbaa !206
  %265 = shl i64 %264, 32
  %266 = ashr exact i64 %265, 32
  %267 = tail call i32 @compare_tree_int(ptr noundef nonnull %244, i64 noundef %266) #16
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %262
  %270 = trunc i64 %264 to i32
  %271 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 121, ptr noundef nonnull @.str.6, ptr noundef nonnull %0, i32 noundef %270) #16
  br label %275

272:                                              ; preds = %262
  %273 = load i64, ptr @larger_than_size, align 8, !tbaa !221
  %274 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 121, ptr noundef nonnull @.str.7, ptr noundef nonnull %0, i64 noundef %273) #16
  br label %275

275:                                              ; preds = %254, %258, %272, %269, %247, %248, %243
  %276 = icmp eq ptr %31, null
  br i1 %276, label %285, label %277, !prof !288

277:                                              ; preds = %275
  %278 = load i64, ptr %42, align 8
  %279 = trunc i64 %278 to i32
  %280 = load i32, ptr %31, align 8
  %281 = shl i32 %279, 16
  %282 = and i32 %281, 16711680
  %283 = and i32 %280, -16711681
  %284 = or disjoint i32 %282, %283
  store i32 %284, ptr %31, align 8
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef null) #16
  tail call void @set_mem_attributes(ptr noundef nonnull %31, ptr noundef nonnull %0, i32 noundef 1) #16
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef nonnull %31) #16
  br label %285

285:                                              ; preds = %275, %277, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @vector_type_mode(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !289 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 14
  br i1 %4, label %6, label %5, !prof !290

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2115, ptr noundef nonnull @.str.1) #16
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !206
  %14 = add i8 %13, -12
  %15 = icmp ult i8 %14, 6
  br i1 %15, label %16, label %51, !prof !291

16:                                               ; preds = %6
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 59), align 8, !tbaa !292
  %18 = tail call zeroext i8 %17(i32 noundef %10) #16
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20, !prof !293

20:                                               ; preds = %16
  %21 = getelementptr inbounds [87 x i8], ptr @have_regs_of_mode, i64 0, i64 %11
  %22 = load i8, ptr %21, align 1, !tbaa !206
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !206
  %27 = getelementptr inbounds %struct.tree_type, ptr %26, i64 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !206
  %34 = icmp eq i8 %33, 2
  br i1 %34, label %35, label %50, !prof !293

35:                                               ; preds = %24
  %36 = load i32, ptr %7, align 4
  %37 = and i32 %36, 1023
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %31
  %40 = load i8, ptr %39, align 1, !tbaa !206
  %41 = zext i8 %40 to i64
  %42 = shl nuw nsw i64 %41, 3
  %43 = shl i64 %42, %38
  %44 = trunc i64 %43 to i32
  %45 = tail call i32 @mode_for_size(i32 noundef %44, i32 noundef 2, i32 noundef 0) #17, !range !253
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds [87 x i8], ptr @have_regs_of_mode, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !206
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %51, !prof !294

50:                                               ; preds = %35, %24
  br label %51

51:                                               ; preds = %6, %20, %50, %35
  %52 = phi i32 [ 1, %50 ], [ %45, %35 ], [ %10, %6 ], [ %10, %20 ]
  ret i32 %52
}

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @do_type_align(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #6 !prof !295 !PGOFuncName !296 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !206
  %5 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !206
  %7 = icmp ugt i32 %4, %6
  br i1 %7, label %8, label %17, !prof !297

8:                                                ; preds = %2
  store i32 %4, ptr %5, align 8, !tbaa !206
  %9 = load i64, ptr %1, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 31
  br i1 %11, label %12, label %17, !prof !298

12:                                               ; preds = %8
  %13 = load i64, ptr %0, align 8
  %14 = and i64 %13, 4398046511104
  %15 = and i64 %9, -4398046576609
  %16 = or disjoint i64 %14, %15
  store i64 %16, ptr %1, align 8
  br label %17

17:                                               ; preds = %8, %12, %2
  ret void
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @x86_field_alignment(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @set_mem_attributes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @relayout_decl(ptr noundef %0) local_unnamed_addr #3 !prof !182 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  store ptr null, ptr %2, align 8, !tbaa !206
  %3 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !206
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, -256
  store i64 %6, ptr %4, align 8
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 4398046511104
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  store i32 0, ptr %11, align 8, !tbaa !206
  br label %12

12:                                               ; preds = %10, %1
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef null) #16
  tail call void @layout_decl(ptr noundef nonnull %0, i32 noundef 0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @start_record_layout(ptr noundef %0) local_unnamed_addr #3 !prof !299 {
  %2 = tail call ptr @xmalloc(i64 noundef 64) #16
  store ptr %0, ptr %2, align 8, !tbaa !300
  %3 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !206
  %5 = tail call i32 @llvm.umax.i32(i32 %4, i32 8)
  %6 = getelementptr inbounds %struct.record_layout_info_s, ptr %2, i64 0, i32 4
  store i32 %5, ptr %6, align 8, !tbaa !302
  %7 = getelementptr inbounds %struct.record_layout_info_s, ptr %2, i64 0, i32 5
  store i32 %5, ptr %7, align 4, !tbaa !303
  %8 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !204
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 128, i32 256
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %struct.record_layout_info_s, ptr %2, i64 0, i32 2
  store i32 %12, ptr %13, align 8, !tbaa !304
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !184
  %15 = getelementptr inbounds %struct.record_layout_info_s, ptr %2, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !305
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !184
  %17 = getelementptr inbounds %struct.record_layout_info_s, ptr %2, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !306
  %18 = getelementptr inbounds %struct.record_layout_info_s, ptr %2, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @bit_from_pos(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !307 {
  %3 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !184
  %4 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %3, ptr noundef %0) #16
  %5 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 21), align 8, !tbaa !184
  %6 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %4, ptr noundef %5) #16
  %7 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %1, ptr noundef %6) #16
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @byte_from_pos(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !308 {
  %3 = load ptr, ptr @sizetype_tab, align 16, !tbaa !184
  %4 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 21), align 8, !tbaa !184
  %5 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 67, ptr noundef %1, ptr noundef %4) #16
  %6 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %3, ptr noundef %5) #16
  %7 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %0, ptr noundef %6) #16
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pos_from_bit(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !182 {
  %5 = load ptr, ptr @sizetype_tab, align 16, !tbaa !184
  %6 = zext i32 %2 to i64
  %7 = tail call ptr @size_int_kind(i64 noundef %6, i32 noundef 2) #16
  %8 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 69, ptr noundef %3, ptr noundef %7) #16
  %9 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %5, ptr noundef %8) #16
  %10 = lshr i32 %2, 3
  %11 = zext nneg i32 %10 to i64
  %12 = tail call ptr @size_int_kind(i64 noundef %11, i32 noundef 0) #16
  %13 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %9, ptr noundef %12) #16
  store ptr %13, ptr %0, align 8, !tbaa !184
  %14 = tail call ptr @size_int_kind(i64 noundef %6, i32 noundef 2) #16
  %15 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 73, ptr noundef %3, ptr noundef %14) #16
  store ptr %15, ptr %1, align 8, !tbaa !184
  ret void
}

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @normalize_offset(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !309 {
  %4 = load ptr, ptr %1, align 8, !tbaa !184
  %5 = zext i32 %2 to i64
  %6 = tail call i32 @compare_tree_int(ptr noundef %4, i64 noundef %5) #16
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %23, !prof !310

8:                                                ; preds = %3
  %9 = load ptr, ptr %1, align 8, !tbaa !184
  %10 = tail call ptr @size_int_kind(i64 noundef %5, i32 noundef 2) #16
  %11 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 69, ptr noundef %9, ptr noundef %10) #16
  %12 = load ptr, ptr %0, align 8, !tbaa !184
  %13 = load ptr, ptr @sizetype_tab, align 16, !tbaa !184
  %14 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %13, ptr noundef %11) #16
  %15 = lshr i32 %2, 3
  %16 = zext nneg i32 %15 to i64
  %17 = tail call ptr @size_int_kind(i64 noundef %16, i32 noundef 0) #16
  %18 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %14, ptr noundef %17) #16
  %19 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %12, ptr noundef %18) #16
  store ptr %19, ptr %0, align 8, !tbaa !184
  %20 = load ptr, ptr %1, align 8, !tbaa !184
  %21 = tail call ptr @size_int_kind(i64 noundef %5, i32 noundef 2) #16
  %22 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 73, ptr noundef %20, ptr noundef %21) #16
  store ptr %22, ptr %1, align 8, !tbaa !184
  br label %23

23:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_rli(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !182 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !184
  %3 = load ptr, ptr %0, align 8, !tbaa !300
  tail call void @print_node_brief(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef %3, i32 noundef 0) #16
  %4 = load ptr, ptr @stderr, align 8, !tbaa !184
  %5 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !305
  tail call void @print_node_brief(ptr noundef %4, ptr noundef nonnull @.str.9, ptr noundef %6, i32 noundef 0) #16
  %7 = load ptr, ptr @stderr, align 8, !tbaa !184
  %8 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !306
  tail call void @print_node_brief(ptr noundef %7, ptr noundef nonnull @.str.10, ptr noundef %9, i32 noundef 0) #16
  %10 = load ptr, ptr @stderr, align 8, !tbaa !184
  %11 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !302
  %13 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !303
  %15 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !304
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.11, i32 noundef %12, i32 noundef %14, i32 noundef %16) #19
  %18 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 18), align 8, !tbaa !274
  %19 = load ptr, ptr %0, align 8, !tbaa !300
  %20 = tail call zeroext i8 %18(ptr noundef %19) #16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load ptr, ptr @stderr, align 8, !tbaa !184
  %24 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 8
  %25 = load i32, ptr %24, align 8, !tbaa !311
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.12, i32 noundef %25) #19
  br label %27

27:                                               ; preds = %22, %1
  %28 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 9
  %29 = load i32, ptr %28, align 4, !tbaa !312
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr @stderr, align 8, !tbaa !184
  %33 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 24, i64 1, ptr %32) #20
  br label %34

34:                                               ; preds = %31, %27
  %35 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !313
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr @stderr, align 8, !tbaa !184
  %40 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 17, i64 1, ptr %39) #20
  %41 = load ptr, ptr %35, align 8, !tbaa !313
  tail call void @debug_tree(ptr noundef %41) #16
  br label %42

42:                                               ; preds = %38, %34
  ret void
}

; Function Attrs: optsize
declare void @print_node_brief(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare void @debug_tree(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @normalize_rli(ptr nocapture noundef %0) local_unnamed_addr #3 !prof !309 {
  %2 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !304
  tail call void @normalize_offset(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %5) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @rli_size_unit_so_far(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !299 {
  %2 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !305
  %4 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !306
  %6 = tail call ptr @byte_from_pos(ptr noundef %3, ptr noundef %5) #17
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @rli_size_so_far(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !299 {
  %2 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !305
  %4 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !306
  %6 = tail call ptr @bit_from_pos(ptr noundef %3, ptr noundef %5) #17
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @update_alignment_for_field(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !314 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !206
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %143, label %9, !prof !315

9:                                                ; preds = %3
  tail call void @layout_decl(ptr noundef nonnull %1, i32 noundef %2) #17
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !206
  %12 = load i64, ptr %1, align 8
  %13 = load ptr, ptr @global_trees, align 16, !tbaa !184
  %14 = icmp eq ptr %5, %13
  br i1 %14, label %24, label %15, !prof !315

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !206
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19, !prof !316

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !206
  %22 = tail call i32 @integer_zerop(ptr noundef %21) #16
  %23 = icmp eq i32 %22, 0
  br label %24

24:                                               ; preds = %19, %15, %9
  %25 = phi i1 [ false, %15 ], [ false, %9 ], [ %23, %19 ]
  %26 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 18), align 8, !tbaa !274
  %27 = load ptr, ptr %0, align 8, !tbaa !300
  %28 = tail call zeroext i8 %26(ptr noundef %27) #16
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %72, label %30, !prof !317

30:                                               ; preds = %24
  br i1 %25, label %35, label %31

31:                                               ; preds = %30
  %32 = load i64, ptr %1, align 8
  %33 = and i64 %32, 2199023255552
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %57, label %35

35:                                               ; preds = %31, %30
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !206
  %38 = tail call i32 @integer_zerop(ptr noundef %37) #16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i64, ptr %1, align 8
  %42 = and i64 %41, 2199023255552
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %57, label %137

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !318
  %47 = icmp eq ptr %46, null
  br i1 %47, label %137, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.tree_field_decl, ptr %46, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !206
  %51 = icmp eq ptr %50, null
  br i1 %51, label %137, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tree_decl_common, ptr %46, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !206
  %55 = tail call i32 @integer_zerop(ptr noundef %54) #16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %137

57:                                               ; preds = %52, %40, %31
  %58 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 7
  %59 = load i32, ptr %58, align 8, !tbaa !206
  %60 = tail call i32 @llvm.umax.i32(i32 %59, i32 %11)
  %61 = load i32, ptr @maximum_field_alignment, align 4
  %62 = icmp eq i32 %61, 0
  %63 = tail call i32 @llvm.umin.i32(i32 %60, i32 %61)
  %64 = select i1 %62, i32 %60, i32 %63
  %65 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 4
  %66 = load i32, ptr %65, align 8, !tbaa !302
  %67 = tail call i32 @llvm.umax.i32(i32 %66, i32 %64)
  store i32 %67, ptr %65, align 8, !tbaa !302
  %68 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 5
  %69 = load i32, ptr %68, align 4, !tbaa !303
  %70 = load i32, ptr %58, align 8, !tbaa !206
  %71 = tail call i32 @llvm.umax.i32(i32 %69, i32 %70)
  store i32 %71, ptr %68, align 4, !tbaa !303
  br label %137

72:                                               ; preds = %24
  br i1 %25, label %73, label %128, !prof !319

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !206
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %81, !prof !320

77:                                               ; preds = %73
  %78 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 21), align 8, !tbaa !321
  %79 = tail call zeroext i8 %78() #16
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %137, label %81, !prof !322

81:                                               ; preds = %77, %73
  %82 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 7
  %83 = load i32, ptr %82, align 8, !tbaa !206
  %84 = load i64, ptr %5, align 8
  %85 = and i64 %84, 4398046511104
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %89, !prof !323

87:                                               ; preds = %81
  %88 = tail call i32 @x86_field_alignment(ptr noundef nonnull %1, i32 noundef %83) #16
  br label %89

89:                                               ; preds = %87, %81
  %90 = phi i32 [ %83, %81 ], [ %88, %87 ]
  %91 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !206
  %93 = tail call i32 @integer_zerop(ptr noundef %92) #16
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %101, label %95, !prof !323

95:                                               ; preds = %89
  %96 = load i32, ptr @initial_max_fld_align, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %112, label %98

98:                                               ; preds = %95
  %99 = shl i32 %96, 3
  %100 = tail call i32 @llvm.umin.i32(i32 %90, i32 %99)
  br label %112

101:                                              ; preds = %89
  %102 = load i32, ptr @maximum_field_alignment, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104, !prof !323

104:                                              ; preds = %101
  %105 = tail call i32 @llvm.umin.i32(i32 %90, i32 %102)
  br label %112

106:                                              ; preds = %101
  %107 = load i64, ptr %1, align 8
  %108 = and i64 %107, 2199023255552
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %112, label %110, !prof !323

110:                                              ; preds = %106
  %111 = tail call i32 @llvm.umin.i32(i32 %90, i32 8)
  br label %112

112:                                              ; preds = %104, %110, %106, %95, %98
  %113 = phi i32 [ %100, %98 ], [ %90, %95 ], [ %105, %104 ], [ %111, %110 ], [ %90, %106 ]
  %114 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 4
  %115 = load i32, ptr %114, align 8, !tbaa !302
  %116 = tail call i32 @llvm.umax.i32(i32 %115, i32 %11)
  %117 = tail call i32 @llvm.umax.i32(i32 %116, i32 %113)
  store i32 %117, ptr %114, align 8, !tbaa !302
  %118 = load i32, ptr @warn_packed, align 4, !tbaa !204
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %125, label %120, !prof !323

120:                                              ; preds = %112
  %121 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 5
  %122 = load i32, ptr %121, align 4, !tbaa !303
  %123 = load i32, ptr %82, align 8, !tbaa !206
  %124 = tail call i32 @llvm.umax.i32(i32 %122, i32 %123)
  store i32 %124, ptr %121, align 4, !tbaa !303
  br label %125

125:                                              ; preds = %120, %112
  %126 = load i64, ptr %5, align 8
  %127 = or i64 %126, %12
  br label %137

128:                                              ; preds = %72
  %129 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 4
  %130 = load i32, ptr %129, align 8, !tbaa !302
  %131 = tail call i32 @llvm.umax.i32(i32 %130, i32 %11)
  store i32 %131, ptr %129, align 8, !tbaa !302
  %132 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 5
  %133 = load i32, ptr %132, align 4, !tbaa !303
  %134 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 7
  %135 = load i32, ptr %134, align 8, !tbaa !206
  %136 = tail call i32 @llvm.umax.i32(i32 %133, i32 %135)
  store i32 %136, ptr %132, align 4, !tbaa !303
  br label %137

137:                                              ; preds = %128, %125, %77, %40, %44, %48, %52, %57
  %138 = phi i64 [ %12, %52 ], [ %12, %57 ], [ %12, %48 ], [ %12, %44 ], [ %12, %40 ], [ %127, %125 ], [ %12, %77 ], [ %12, %128 ]
  %139 = load ptr, ptr %0, align 8, !tbaa !300
  %140 = load i64, ptr %139, align 8
  %141 = and i64 %138, 4398046511104
  %142 = or i64 %140, %141
  store i64 %142, ptr %139, align 8
  br label %143

143:                                              ; preds = %3, %137
  %144 = phi i32 [ %11, %137 ], [ 0, %3 ]
  ret i32 %144
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @place_field(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !314 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !206
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %10, !prof !315

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1043, ptr noundef nonnull @.str.1) #16
  %9 = load i64, ptr %1, align 8
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi i64 [ %5, %2 ], [ %9, %8 ]
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %530 [
    i16 32, label %13
    i16 31, label %17
  ], !prof !324

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !313
  %16 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %1, ptr noundef %15) #16
  store ptr %16, ptr %14, align 8, !tbaa !313
  br label %530

17:                                               ; preds = %10
  %18 = load ptr, ptr %0, align 8, !tbaa !300
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 16
  br i1 %21, label %23, label %22, !prof !325

22:                                               ; preds = %17
  tail call fastcc void @place_union_field(ptr noundef nonnull %0, ptr noundef nonnull %1) #17
  br label %530

23:                                               ; preds = %17
  %24 = load i64, ptr %4, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %47, !prof !326

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !305
  %30 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !206
  %31 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !306
  %33 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 4
  store ptr %32, ptr %33, align 8, !tbaa !206
  %34 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !304
  %36 = sub i32 0, %35
  %37 = and i32 %35, %36
  %38 = zext i32 %37 to i64
  %39 = tail call i32 @exact_log2(i64 noundef %38) #16
  %40 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %41 = load i64, ptr %40, align 8
  %42 = and i32 %39, 255
  %43 = zext nneg i32 %42 to i64
  %44 = shl nuw nsw i64 %43, 32
  %45 = and i64 %41, -1095216660481
  %46 = or disjoint i64 %44, %45
  store i64 %46, ptr %40, align 8
  br label %530

47:                                               ; preds = %23
  %48 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !306
  %50 = tail call i32 @integer_zerop(ptr noundef %49) #16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %60, !prof !327

52:                                               ; preds = %47
  %53 = load ptr, ptr %48, align 8, !tbaa !306
  %54 = tail call i64 @tree_low_cst(ptr noundef %53, i32 noundef 1) #16
  %55 = load ptr, ptr %48, align 8, !tbaa !306
  %56 = tail call i64 @tree_low_cst(ptr noundef %55, i32 noundef 1) #16
  %57 = sub nsw i64 0, %56
  %58 = and i64 %54, %57
  %59 = trunc i64 %58 to i32
  br label %83

60:                                               ; preds = %47
  %61 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !305
  %63 = tail call i32 @integer_zerop(ptr noundef %62) #16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65, !prof !328

65:                                               ; preds = %60
  %66 = tail call i32 @update_alignment_for_field(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #17
  br label %87

67:                                               ; preds = %60
  %68 = load ptr, ptr %61, align 8, !tbaa !305
  %69 = tail call i32 @host_integerp(ptr noundef %68, i32 noundef 1) #16
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %80, label %71, !prof !329

71:                                               ; preds = %67
  %72 = load ptr, ptr %61, align 8, !tbaa !305
  %73 = tail call i64 @tree_low_cst(ptr noundef %72, i32 noundef 1) #16
  %74 = load ptr, ptr %61, align 8, !tbaa !305
  %75 = tail call i64 @tree_low_cst(ptr noundef %74, i32 noundef 1) #16
  %76 = sub nsw i64 0, %75
  %77 = and i64 %73, %76
  %78 = trunc i64 %77 to i32
  %79 = shl i32 %78, 3
  br label %83

80:                                               ; preds = %67
  %81 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 2
  %82 = load i32, ptr %81, align 8, !tbaa !304
  br label %83

83:                                               ; preds = %80, %71, %52
  %84 = phi i32 [ %79, %71 ], [ %82, %80 ], [ %59, %52 ]
  %85 = tail call i32 @update_alignment_for_field(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %84) #17
  %86 = icmp eq i32 %84, 0
  br i1 %86, label %87, label %96, !prof !330

87:                                               ; preds = %65, %83
  %88 = phi i32 [ %66, %65 ], [ %85, %83 ]
  %89 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !204
  %90 = and i32 %89, 32
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, i32 128, i32 256
  %93 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 4
  %94 = load i32, ptr %93, align 8, !tbaa !302
  %95 = tail call i32 @llvm.umax.i32(i32 %92, i32 %94)
  br label %96

96:                                               ; preds = %87, %83
  %97 = phi i32 [ %88, %87 ], [ %85, %83 ]
  %98 = phi i32 [ %95, %87 ], [ %84, %83 ]
  %99 = load i32, ptr @warn_packed, align 4, !tbaa !204
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %120, label %101, !prof !331

101:                                              ; preds = %96
  %102 = load i64, ptr %1, align 8
  %103 = and i64 %102, 2199023255552
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %120, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 7
  %107 = load i32, ptr %106, align 8, !tbaa !206
  %108 = icmp ult i32 %98, %107
  br i1 %108, label %118, label %109

109:                                              ; preds = %105
  %110 = icmp ugt i32 %107, %97
  br i1 %110, label %111, label %120

111:                                              ; preds = %109
  %112 = load ptr, ptr %0, align 8, !tbaa !300
  %113 = load i64, ptr %112, align 8
  %114 = and i64 %113, 2199023255552
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 45, ptr noundef nonnull @.str.15, ptr noundef nonnull %1) #16
  br label %120

118:                                              ; preds = %105
  %119 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 9
  store i32 1, ptr %119, align 4, !tbaa !312
  br label %120

120:                                              ; preds = %118, %111, %116, %109, %101, %96
  %121 = icmp ult i32 %98, %97
  br i1 %121, label %122, label %160, !prof !332

122:                                              ; preds = %120
  %123 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 18), align 8, !tbaa !274
  %124 = load ptr, ptr %0, align 8, !tbaa !300
  %125 = tail call zeroext i8 %123(ptr noundef %124) #16
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %160, !prof !333

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 1
  %129 = load i32, ptr %128, align 8, !tbaa !206
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %133, label %131, !prof !334

131:                                              ; preds = %127
  %132 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 157, ptr noundef nonnull @.str.16, ptr noundef nonnull %1) #16
  br label %133

133:                                              ; preds = %131, %127
  %134 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 2
  %135 = load i32, ptr %134, align 8, !tbaa !304
  %136 = icmp ult i32 %97, %135
  br i1 %136, label %137, label %142, !prof !333

137:                                              ; preds = %133
  %138 = load ptr, ptr %48, align 8, !tbaa !306
  %139 = tail call ptr @round_up_loc(i32 noundef 0, ptr noundef %138, i32 noundef %97) #16
  store ptr %139, ptr %48, align 8, !tbaa !306
  %140 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !305
  br label %154

142:                                              ; preds = %133
  %143 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !305
  %145 = load ptr, ptr @sizetype_tab, align 16, !tbaa !184
  %146 = load ptr, ptr %48, align 8, !tbaa !306
  %147 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 21), align 8, !tbaa !184
  %148 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 68, ptr noundef %146, ptr noundef %147) #16
  %149 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %145, ptr noundef %148) #16
  %150 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %144, ptr noundef %149) #16
  store ptr %150, ptr %143, align 8, !tbaa !305
  %151 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !184
  store ptr %151, ptr %48, align 8, !tbaa !306
  %152 = lshr i32 %97, 3
  %153 = tail call ptr @round_up_loc(i32 noundef 0, ptr noundef %150, i32 noundef %152) #16
  store ptr %153, ptr %143, align 8, !tbaa !305
  br label %154

154:                                              ; preds = %142, %137
  %155 = phi ptr [ %153, %142 ], [ %141, %137 ]
  %156 = load i64, ptr %155, align 8
  %157 = and i64 %156, 131072
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %160, !prof !334

159:                                              ; preds = %154
  store i32 %97, ptr %134, align 8, !tbaa !304
  br label %160

160:                                              ; preds = %154, %159, %122, %120
  %161 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 18), align 8, !tbaa !274
  %162 = load ptr, ptr %0, align 8, !tbaa !300
  %163 = tail call zeroext i8 %161(ptr noundef %162) #16
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %251, !prof !331

165:                                              ; preds = %160
  %166 = load i64, ptr %1, align 8
  %167 = and i64 %166, 65535
  %168 = icmp ne i64 %167, 31
  %169 = load ptr, ptr @global_trees, align 16
  %170 = icmp eq ptr %4, %169
  %171 = select i1 %168, i1 true, i1 %170
  br i1 %171, label %251, label %172, !prof !335

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %174 = load i64, ptr %173, align 8
  %175 = and i64 %174, 33554432
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %251, label %177, !prof !336

177:                                              ; preds = %172
  %178 = and i64 %166, 2199023255552
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %187, label %180, !prof !337

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 7
  %182 = load i32, ptr %181, align 8, !tbaa !206
  %183 = icmp ult i32 %182, 9
  %184 = load i32, ptr @maximum_field_alignment, align 4
  %185 = icmp eq i32 %184, 0
  %186 = select i1 %183, i1 %185, i1 false
  br i1 %186, label %190, label %251, !prof !338

187:                                              ; preds = %177
  %188 = load i32, ptr @maximum_field_alignment, align 4, !tbaa !204
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %251, !prof !337

190:                                              ; preds = %180, %187
  %191 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !206
  %193 = tail call i32 @integer_zerop(ptr noundef %192) #16
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %251, !prof !337

195:                                              ; preds = %190
  %196 = load ptr, ptr %191, align 8, !tbaa !206
  %197 = tail call i32 @host_integerp(ptr noundef %196, i32 noundef 1) #16
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %251, label %199, !prof !339

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !305
  %202 = tail call i32 @host_integerp(ptr noundef %201, i32 noundef 1) #16
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %251, label %204, !prof !339

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 2
  %206 = load ptr, ptr %205, align 8, !tbaa !206
  %207 = tail call i32 @host_integerp(ptr noundef %206, i32 noundef 1) #16
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %251, label %209, !prof !339

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 7
  %211 = load i32, ptr %210, align 8, !tbaa !206
  %212 = load ptr, ptr %191, align 8, !tbaa !206
  %213 = tail call i64 @tree_low_cst(ptr noundef %212, i32 noundef 1) #16
  %214 = load ptr, ptr %200, align 8, !tbaa !305
  %215 = tail call i64 @tree_low_cst(ptr noundef %214, i32 noundef 0) #16
  %216 = load ptr, ptr %48, align 8, !tbaa !306
  %217 = tail call i64 @tree_low_cst(ptr noundef %216, i32 noundef 0) #16
  %218 = load i64, ptr %4, align 8
  %219 = and i64 %218, 4398046511104
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %223, !prof !337

221:                                              ; preds = %209
  %222 = tail call i32 @x86_field_alignment(ptr noundef nonnull %1, i32 noundef %211) #16
  br label %223

223:                                              ; preds = %221, %209
  %224 = phi i32 [ %211, %209 ], [ %222, %221 ]
  %225 = zext i32 %224 to i64
  %226 = tail call fastcc i32 @excess_unit_span(i64 noundef %215, i64 noundef %217, i64 noundef %213, i64 noundef %225, ptr noundef nonnull %4) #17, !range !203
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %241, label %228, !prof !337

228:                                              ; preds = %223
  %229 = load i64, ptr %1, align 8
  %230 = and i64 %229, 2199023255552
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %237, label %232

232:                                              ; preds = %228
  %233 = load i32, ptr @warn_packed_bitfield_compat, align 4, !tbaa !204
  %234 = icmp eq i32 %233, 1
  br i1 %234, label %235, label %241

235:                                              ; preds = %232
  %236 = load i32, ptr @input_location, align 4, !tbaa !204
  tail call void (i32, ptr, ...) @inform(i32 noundef %236, ptr noundef nonnull @.str.17, ptr noundef nonnull %1) #16
  br label %241

237:                                              ; preds = %228
  %238 = load i32, ptr @input_location, align 4, !tbaa !204
  %239 = load ptr, ptr %48, align 8, !tbaa !306
  %240 = tail call ptr @round_up_loc(i32 noundef %238, ptr noundef %239, i32 noundef %224) #16
  store ptr %240, ptr %48, align 8, !tbaa !306
  br label %241

241:                                              ; preds = %237, %235, %232, %223
  %242 = load i64, ptr %1, align 8
  %243 = and i64 %242, 2199023255552
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %251, !prof !337

245:                                              ; preds = %241
  %246 = load i64, ptr %4, align 8
  %247 = load ptr, ptr %0, align 8, !tbaa !300
  %248 = load i64, ptr %247, align 8
  %249 = and i64 %246, 4398046511104
  %250 = or i64 %248, %249
  store i64 %250, ptr %247, align 8
  br label %251

251:                                              ; preds = %241, %245, %204, %199, %195, %190, %187, %180, %172, %165, %160
  %252 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 18), align 8, !tbaa !274
  %253 = load ptr, ptr %0, align 8, !tbaa !300
  %254 = tail call zeroext i8 %252(ptr noundef %253) #16
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %401, label %256, !prof !331

256:                                              ; preds = %251
  %257 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 6
  %258 = load ptr, ptr %257, align 8, !tbaa !318
  %259 = icmp eq ptr %258, null
  br i1 %259, label %346, label %260

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.tree_field_decl, ptr %258, i64 0, i32 2
  %262 = load ptr, ptr %261, align 8, !tbaa !206
  %263 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 2
  %264 = load ptr, ptr %263, align 8, !tbaa !206
  %265 = icmp eq ptr %264, null
  br i1 %265, label %318, label %266

266:                                              ; preds = %260
  %267 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !206
  %269 = tail call i32 @integer_zerop(ptr noundef %268) #16
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %318

271:                                              ; preds = %266
  %272 = load ptr, ptr %257, align 8, !tbaa !318
  %273 = getelementptr inbounds %struct.tree_decl_common, ptr %272, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !206
  %275 = tail call i32 @integer_zerop(ptr noundef %274) #16
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %318

277:                                              ; preds = %271
  %278 = load ptr, ptr %257, align 8, !tbaa !318
  %279 = getelementptr inbounds %struct.tree_decl_common, ptr %278, i64 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !206
  %281 = tail call i32 @host_integerp(ptr noundef %280, i32 noundef 0) #16
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %318, label %283

283:                                              ; preds = %277
  %284 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 2
  %285 = load ptr, ptr %284, align 8, !tbaa !206
  %286 = tail call i32 @host_integerp(ptr noundef %285, i32 noundef 0) #16
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %318, label %288

288:                                              ; preds = %283
  %289 = load ptr, ptr %284, align 8, !tbaa !206
  %290 = getelementptr inbounds %struct.tree_type, ptr %262, i64 0, i32 2
  %291 = load ptr, ptr %290, align 8, !tbaa !206
  %292 = tail call i32 @simple_cst_equal(ptr noundef %289, ptr noundef %291) #16
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %318, label %294

294:                                              ; preds = %288
  %295 = load ptr, ptr %267, align 8, !tbaa !206
  %296 = tail call i64 @tree_low_cst(ptr noundef %295, i32 noundef 1) #16
  %297 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 8
  %298 = load i32, ptr %297, align 8, !tbaa !311
  %299 = sext i32 %298 to i64
  %300 = icmp sgt i64 %296, %299
  br i1 %300, label %301, label %313

301:                                              ; preds = %294
  %302 = load ptr, ptr %284, align 8, !tbaa !206
  %303 = tail call i64 @tree_low_cst(ptr noundef %302, i32 noundef 1) #16
  %304 = load ptr, ptr %48, align 8, !tbaa !306
  %305 = load i32, ptr %297, align 8, !tbaa !311
  %306 = sext i32 %305 to i64
  %307 = tail call ptr @size_int_kind(i64 noundef %306, i32 noundef 2) #16
  %308 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %304, ptr noundef %307) #16
  store ptr %308, ptr %48, align 8, !tbaa !306
  store ptr %1, ptr %257, align 8, !tbaa !318
  %309 = icmp slt i64 %303, %296
  %310 = sub nsw i64 %303, %296
  %311 = trunc i64 %310 to i32
  %312 = select i1 %309, i32 0, i32 %311
  br label %316

313:                                              ; preds = %294
  %314 = trunc i64 %296 to i32
  %315 = sub i32 %298, %314
  br label %316

316:                                              ; preds = %313, %301
  %317 = phi i32 [ %312, %301 ], [ %315, %313 ]
  store i32 %317, ptr %297, align 8, !tbaa !311
  br label %341

318:                                              ; preds = %288, %283, %277, %271, %266, %260
  %319 = load ptr, ptr %257, align 8, !tbaa !318
  %320 = getelementptr inbounds %struct.tree_decl_common, ptr %319, i64 0, i32 1
  %321 = load ptr, ptr %320, align 8, !tbaa !206
  %322 = tail call i32 @integer_zerop(ptr noundef %321) #16
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %331

324:                                              ; preds = %318
  %325 = load ptr, ptr %48, align 8, !tbaa !306
  %326 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 8
  %327 = load i32, ptr %326, align 8, !tbaa !311
  %328 = sext i32 %327 to i64
  %329 = tail call ptr @size_int_kind(i64 noundef %328, i32 noundef 2) #16
  %330 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %325, ptr noundef %329) #16
  store ptr %330, ptr %48, align 8, !tbaa !306
  br label %331

331:                                              ; preds = %318, %324
  %332 = phi ptr [ %258, %324 ], [ null, %318 ]
  %333 = load ptr, ptr %263, align 8, !tbaa !206
  %334 = icmp eq ptr %333, null
  br i1 %334, label %340, label %335

335:                                              ; preds = %331
  %336 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %337 = load ptr, ptr %336, align 8, !tbaa !206
  %338 = tail call i32 @integer_zerop(ptr noundef %337) #16
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %341, label %340

340:                                              ; preds = %335, %331
  store ptr null, ptr %257, align 8, !tbaa !318
  br label %341

341:                                              ; preds = %316, %340, %335
  %342 = phi ptr [ %332, %340 ], [ %332, %335 ], [ %258, %316 ]
  tail call void @normalize_rli(ptr noundef nonnull %0) #17
  %343 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 2
  %344 = load ptr, ptr %343, align 8, !tbaa !206
  %345 = icmp eq ptr %344, null
  br i1 %345, label %364, label %350

346:                                              ; preds = %256
  %347 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 2
  %348 = load ptr, ptr %347, align 8, !tbaa !206
  %349 = icmp eq ptr %348, null
  br i1 %349, label %364, label %359

350:                                              ; preds = %341
  %351 = icmp eq ptr %342, null
  br i1 %351, label %359, label %352

352:                                              ; preds = %350
  %353 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 2
  %354 = load ptr, ptr %353, align 8, !tbaa !206
  %355 = getelementptr inbounds %struct.tree_type, ptr %262, i64 0, i32 2
  %356 = load ptr, ptr %355, align 8, !tbaa !206
  %357 = tail call i32 @simple_cst_equal(ptr noundef %354, ptr noundef %356) #16
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %364, label %401

359:                                              ; preds = %346, %350
  %360 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %361 = load ptr, ptr %360, align 8, !tbaa !206
  %362 = tail call i32 @integer_zerop(ptr noundef %361) #16
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %401

364:                                              ; preds = %346, %359, %352, %341
  %365 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !206
  %367 = icmp eq ptr %366, null
  br i1 %367, label %390, label %368

368:                                              ; preds = %364
  %369 = load ptr, ptr %3, align 8, !tbaa !206
  %370 = getelementptr inbounds %struct.tree_type, ptr %369, i64 0, i32 2
  %371 = load ptr, ptr %370, align 8, !tbaa !206
  %372 = tail call i32 @host_integerp(ptr noundef %371, i32 noundef 1) #16
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %390, label %374

374:                                              ; preds = %368
  %375 = load ptr, ptr %365, align 8, !tbaa !206
  %376 = tail call i32 @host_integerp(ptr noundef %375, i32 noundef 1) #16
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %390, label %378

378:                                              ; preds = %374
  %379 = load ptr, ptr %365, align 8, !tbaa !206
  %380 = tail call i64 @tree_low_cst(ptr noundef %379, i32 noundef 1) #16
  %381 = load ptr, ptr %3, align 8, !tbaa !206
  %382 = getelementptr inbounds %struct.tree_type, ptr %381, i64 0, i32 2
  %383 = load ptr, ptr %382, align 8, !tbaa !206
  %384 = tail call i64 @tree_low_cst(ptr noundef %383, i32 noundef 1) #16
  %385 = icmp ult i64 %384, %380
  %386 = sub i64 %384, %380
  %387 = trunc i64 %386 to i32
  %388 = select i1 %385, i32 0, i32 %387
  %389 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 8
  store i32 %388, ptr %389, align 8, !tbaa !311
  br label %390

390:                                              ; preds = %378, %374, %368, %364
  %391 = load ptr, ptr %3, align 8, !tbaa !206
  %392 = getelementptr inbounds %struct.tree_type, ptr %391, i64 0, i32 7
  %393 = load i32, ptr %392, align 8, !tbaa !206
  %394 = load i32, ptr @maximum_field_alignment, align 4
  %395 = icmp eq i32 %394, 0
  %396 = tail call i32 @llvm.umin.i32(i32 %393, i32 %394)
  %397 = select i1 %395, i32 %393, i32 %396
  %398 = load i32, ptr @input_location, align 4, !tbaa !204
  %399 = load ptr, ptr %48, align 8, !tbaa !306
  %400 = tail call ptr @round_up_loc(i32 noundef %398, ptr noundef %399, i32 noundef %397) #16
  store ptr %400, ptr %48, align 8, !tbaa !306
  store ptr null, ptr %257, align 8, !tbaa !318
  br label %401

401:                                              ; preds = %352, %359, %390, %251
  tail call void @normalize_rli(ptr noundef nonnull %0) #17
  %402 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %403 = load ptr, ptr %402, align 8, !tbaa !305
  %404 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 1
  store ptr %403, ptr %404, align 8, !tbaa !206
  %405 = load ptr, ptr %48, align 8, !tbaa !306
  %406 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 4
  store ptr %405, ptr %406, align 8, !tbaa !206
  %407 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 2
  %408 = load i32, ptr %407, align 8, !tbaa !304
  %409 = sub i32 0, %408
  %410 = and i32 %408, %409
  %411 = zext i32 %410 to i64
  %412 = tail call i32 @exact_log2(i64 noundef %411) #16
  %413 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %414 = load i64, ptr %413, align 8
  %415 = and i32 %412, 255
  %416 = zext nneg i32 %415 to i64
  %417 = shl nuw nsw i64 %416, 32
  %418 = and i64 %414, -1095216660481
  %419 = or disjoint i64 %417, %418
  store i64 %419, ptr %413, align 8
  %420 = load ptr, ptr %406, align 8, !tbaa !206
  %421 = tail call i32 @integer_zerop(ptr noundef %420) #16
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %431, !prof !340

423:                                              ; preds = %401
  %424 = load ptr, ptr %406, align 8, !tbaa !206
  %425 = tail call i64 @tree_low_cst(ptr noundef %424, i32 noundef 1) #16
  %426 = load ptr, ptr %406, align 8, !tbaa !206
  %427 = tail call i64 @tree_low_cst(ptr noundef %426, i32 noundef 1) #16
  %428 = sub nsw i64 0, %427
  %429 = and i64 %425, %428
  %430 = trunc i64 %429 to i32
  br label %462

431:                                              ; preds = %401
  %432 = load ptr, ptr %404, align 8, !tbaa !206
  %433 = tail call i32 @integer_zerop(ptr noundef %432) #16
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %443, label %435, !prof !341

435:                                              ; preds = %431
  %436 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !204
  %437 = and i32 %436, 32
  %438 = icmp eq i32 %437, 0
  %439 = select i1 %438, i32 128, i32 256
  %440 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 4
  %441 = load i32, ptr %440, align 8, !tbaa !302
  %442 = tail call i32 @llvm.umax.i32(i32 %439, i32 %441)
  br label %462

443:                                              ; preds = %431
  %444 = load ptr, ptr %404, align 8, !tbaa !206
  %445 = tail call i32 @host_integerp(ptr noundef %444, i32 noundef 1) #16
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %456, label %447, !prof !342

447:                                              ; preds = %443
  %448 = load ptr, ptr %404, align 8, !tbaa !206
  %449 = tail call i64 @tree_low_cst(ptr noundef %448, i32 noundef 1) #16
  %450 = load ptr, ptr %404, align 8, !tbaa !206
  %451 = tail call i64 @tree_low_cst(ptr noundef %450, i32 noundef 1) #16
  %452 = sub nsw i64 0, %451
  %453 = and i64 %449, %452
  %454 = trunc i64 %453 to i32
  %455 = shl i32 %454, 3
  br label %462

456:                                              ; preds = %443
  %457 = load i64, ptr %413, align 8
  %458 = lshr i64 %457, 32
  %459 = and i64 %458, 255
  %460 = shl nuw i64 1, %459
  %461 = trunc i64 %460 to i32
  br label %462

462:                                              ; preds = %435, %456, %447, %423
  %463 = phi i32 [ %442, %435 ], [ %455, %447 ], [ %461, %456 ], [ %430, %423 ]
  %464 = icmp eq i32 %98, %463
  br i1 %464, label %466, label %465, !prof !343

465:                                              ; preds = %462
  tail call void @layout_decl(ptr noundef nonnull %1, i32 noundef %463) #17
  br label %466

466:                                              ; preds = %465, %462
  %467 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 6
  %468 = load ptr, ptr %467, align 8, !tbaa !318
  %469 = icmp eq ptr %468, null
  br i1 %469, label %470, label %475, !prof !344

470:                                              ; preds = %466
  %471 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 2
  %472 = load ptr, ptr %471, align 8, !tbaa !206
  %473 = icmp eq ptr %472, null
  br i1 %473, label %475, label %474, !prof !345

474:                                              ; preds = %470
  store ptr %1, ptr %467, align 8, !tbaa !318
  br label %475

475:                                              ; preds = %474, %470, %466
  %476 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %477 = load ptr, ptr %476, align 8, !tbaa !206
  %478 = icmp eq ptr %477, null
  br i1 %478, label %530, label %479, !prof !326

479:                                              ; preds = %475
  %480 = load i64, ptr %477, align 8
  %481 = and i64 %480, 134283263
  %482 = icmp eq i64 %481, 23
  br i1 %482, label %497, label %483, !prof !346

483:                                              ; preds = %479
  %484 = load ptr, ptr %402, align 8, !tbaa !305
  %485 = load ptr, ptr @sizetype_tab, align 16, !tbaa !184
  %486 = load ptr, ptr %48, align 8, !tbaa !306
  %487 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 21), align 8, !tbaa !184
  %488 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 68, ptr noundef %486, ptr noundef %487) #16
  %489 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %485, ptr noundef %488) #16
  %490 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %484, ptr noundef %489) #16
  store ptr %490, ptr %402, align 8, !tbaa !305
  %491 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 4
  %492 = load ptr, ptr %491, align 8, !tbaa !206
  %493 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %490, ptr noundef %492) #16
  store ptr %493, ptr %402, align 8, !tbaa !305
  %494 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !184
  store ptr %494, ptr %48, align 8, !tbaa !306
  %495 = load i32, ptr %407, align 8, !tbaa !304
  %496 = tail call i32 @llvm.umin.i32(i32 %495, i32 %97)
  store i32 %496, ptr %407, align 8, !tbaa !304
  br label %530

497:                                              ; preds = %479
  %498 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 18), align 8, !tbaa !274
  %499 = load ptr, ptr %0, align 8, !tbaa !300
  %500 = tail call zeroext i8 %498(ptr noundef %499) #16
  %501 = icmp eq i8 %500, 0
  %502 = load ptr, ptr %48, align 8, !tbaa !306
  %503 = load ptr, ptr %476, align 8, !tbaa !206
  %504 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %502, ptr noundef %503) #16
  store ptr %504, ptr %48, align 8, !tbaa !306
  br i1 %501, label %529, label %505, !prof !331

505:                                              ; preds = %497
  %506 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 1
  %507 = load ptr, ptr %506, align 8, !tbaa !206
  %508 = icmp eq ptr %507, null
  br i1 %508, label %513, label %509

509:                                              ; preds = %505
  %510 = load i64, ptr %507, align 8
  %511 = and i64 %510, 65535
  %512 = icmp eq i64 %511, 31
  br i1 %512, label %528, label %513

513:                                              ; preds = %509, %505
  %514 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 2
  %515 = load ptr, ptr %514, align 8, !tbaa !206
  %516 = icmp eq ptr %515, null
  br i1 %516, label %528, label %517

517:                                              ; preds = %513
  %518 = load ptr, ptr %476, align 8, !tbaa !206
  %519 = tail call i32 @integer_zerop(ptr noundef %518) #16
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %521, label %528

521:                                              ; preds = %517
  %522 = load ptr, ptr %48, align 8, !tbaa !306
  %523 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 8
  %524 = load i32, ptr %523, align 8, !tbaa !311
  %525 = sext i32 %524 to i64
  %526 = tail call ptr @size_int_kind(i64 noundef %525, i32 noundef 2) #16
  %527 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %522, ptr noundef %526) #16
  store ptr %527, ptr %48, align 8, !tbaa !306
  br label %528

528:                                              ; preds = %521, %517, %513, %509
  tail call void @normalize_rli(ptr noundef nonnull %0) #17
  br label %530

529:                                              ; preds = %497
  tail call void @normalize_rli(ptr noundef nonnull %0) #17
  br label %530

530:                                              ; preds = %475, %528, %529, %483, %10, %27, %22, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @place_union_field(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 !prof !347 !PGOFuncName !348 {
  %3 = tail call i32 @update_alignment_for_field(ptr noundef %0, ptr noundef %1, i32 noundef 0) #17
  %4 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !184
  %5 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !206
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !184
  %7 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 4
  store ptr %6, ptr %7, align 8, !tbaa !206
  %8 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !204
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i64 128, i64 256
  %12 = tail call i32 @exact_log2(i64 noundef %11) #16
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = and i32 %12, 255
  %16 = zext nneg i32 %15 to i64
  %17 = shl nuw nsw i64 %16, 32
  %18 = and i64 %14, -1095216660481
  %19 = or disjoint i64 %17, %18
  store i64 %19, ptr %13, align 8
  %20 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !206
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %45, label %25, !prof !349

25:                                               ; preds = %2
  %26 = load ptr, ptr %0, align 8, !tbaa !300
  %27 = load i64, ptr %26, align 8
  %28 = trunc i64 %27 to i16
  switch i16 %28, label %45 [
    i16 17, label %29
    i16 18, label %35
  ], !prof !350

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !305
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !206
  %34 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 81, ptr noundef %31, ptr noundef %33) #16
  store ptr %34, ptr %30, align 8, !tbaa !305
  br label %45

35:                                               ; preds = %25
  %36 = load i32, ptr @input_location, align 4, !tbaa !204
  %37 = load ptr, ptr @sizetype_tab, align 16, !tbaa !184
  %38 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !206
  %40 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !206
  %42 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !305
  %44 = tail call ptr @fold_build3_stat_loc(i32 noundef %36, i32 noundef 56, ptr noundef %37, ptr noundef %39, ptr noundef %41, ptr noundef %43) #16
  store ptr %44, ptr %42, align 8, !tbaa !305
  br label %45

45:                                               ; preds = %25, %35, %2, %29
  ret void
}

; Function Attrs: optsize
declare i32 @exact_log2(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @round_up_loc(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @excess_unit_span(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #3 !prof !351 !PGOFuncName !352 {
  %6 = shl nsw i64 %0, 3
  %7 = add nsw i64 %6, %1
  %8 = urem i64 %7, %3
  %9 = add i64 %2, -1
  %10 = add i64 %9, %3
  %11 = add i64 %10, %8
  %12 = udiv i64 %11, %3
  %13 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !206
  %15 = tail call i64 @tree_low_cst(ptr noundef %14, i32 noundef 1) #16
  %16 = udiv i64 %15, %3
  %17 = icmp ugt i64 %12, %16
  %18 = zext i1 %17 to i32
  ret i32 %18
}

; Function Attrs: optsize
declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @fold_build3_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @compute_record_mode(ptr nocapture noundef %0) local_unnamed_addr #3 !prof !299 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -16711681
  %5 = or disjoint i32 %4, 65536
  store i32 %5, ptr %2, align 4
  %6 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !206
  %8 = tail call i32 @host_integerp(ptr noundef %7, i32 noundef 1) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %113, label %10, !prof !353

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !206
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16, !prof !354

14:                                               ; preds = %10
  %15 = load ptr, ptr %6, align 8, !tbaa !206
  br label %99

16:                                               ; preds = %10, %71
  %17 = phi ptr [ %74, %71 ], [ %12, %10 ]
  %18 = phi i32 [ %72, %71 ], [ 0, %10 ]
  %19 = load i64, ptr %17, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 31
  br i1 %21, label %22, label %71, !prof !355

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !206
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i16
  switch i16 %26, label %29 [
    i16 0, label %113
    i16 14, label %27
  ], !prof !356

27:                                               ; preds = %22
  %28 = tail call i32 @vector_type_mode(ptr noundef nonnull %24) #17, !range !269
  br label %34

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.tree_type, ptr %24, i64 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  br label %34

34:                                               ; preds = %29, %27
  %35 = phi i32 [ %28, %27 ], [ %33, %29 ]
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %50, !prof !357

37:                                               ; preds = %34
  %38 = load ptr, ptr %23, align 8, !tbaa !206
  %39 = getelementptr inbounds %struct.tree_type, ptr %38, i64 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 1024
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50, !prof !358

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.tree_type, ptr %38, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !206
  %46 = icmp eq ptr %45, null
  br i1 %46, label %113, label %47, !prof !359

47:                                               ; preds = %43
  %48 = tail call i32 @integer_zerop(ptr noundef nonnull %45) #16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %113, label %50, !prof !360

50:                                               ; preds = %47, %37, %34
  %51 = tail call ptr @bit_position(ptr noundef nonnull %17) #16
  %52 = tail call i32 @host_integerp(ptr noundef %51, i32 noundef 1) #16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %113, label %54, !prof !361

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.tree_decl_common, ptr %17, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !206
  %57 = icmp eq ptr %56, null
  br i1 %57, label %113, label %58, !prof !361

58:                                               ; preds = %54
  %59 = tail call i32 @host_integerp(ptr noundef nonnull %56, i32 noundef 1) #16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %113, label %61, !prof !361

61:                                               ; preds = %58
  %62 = load ptr, ptr %6, align 8, !tbaa !206
  %63 = load ptr, ptr %55, align 8, !tbaa !206
  %64 = tail call i32 @simple_cst_equal(ptr noundef %62, ptr noundef %63) #16
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %71, label %66, !prof !362

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.tree_decl_common, ptr %17, i64 0, i32 2
  %68 = load i64, ptr %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = and i32 %69, 255
  br label %71

71:                                               ; preds = %61, %66, %16
  %72 = phi i32 [ %18, %16 ], [ %70, %66 ], [ %18, %61 ]
  %73 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !206
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %16, !prof !363, !llvm.loop !364

76:                                               ; preds = %71
  %77 = load i64, ptr %0, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 16
  %80 = icmp ne i32 %72, 0
  %81 = select i1 %79, i1 %80, i1 false
  %82 = load ptr, ptr %6, align 8, !tbaa !206
  br i1 %81, label %83, label %99, !prof !365

83:                                               ; preds = %76
  %84 = tail call i32 @host_integerp(ptr noundef %82, i32 noundef 1) #16
  %85 = icmp eq i32 %84, 0
  %86 = load ptr, ptr %6, align 8, !tbaa !206
  br i1 %85, label %99, label %87, !prof !366

87:                                               ; preds = %83
  %88 = zext nneg i32 %72 to i64
  %89 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !206
  %91 = zext i8 %90 to i64
  %92 = shl nuw nsw i64 %91, 3
  %93 = getelementptr inbounds %struct.tree_int_cst, ptr %86, i64 0, i32 1
  %94 = load i64, ptr %93, align 8, !tbaa !206
  %95 = icmp eq i64 %92, %94
  br i1 %95, label %96, label %99, !prof !367

96:                                               ; preds = %87
  %97 = shl nuw nsw i32 %72, 16
  %98 = and i32 %97, 16711680
  br label %103

99:                                               ; preds = %14, %87, %83, %76
  %100 = phi ptr [ %86, %87 ], [ %86, %83 ], [ %82, %76 ], [ %15, %14 ]
  %101 = tail call i32 @mode_for_size_tree(ptr noundef %100, i32 noundef 2, i32 noundef 1) #17, !range !253
  %102 = shl nuw nsw i32 %101, 16
  br label %103

103:                                              ; preds = %99, %96
  %104 = phi i32 [ %102, %99 ], [ %98, %96 ]
  %105 = load i32, ptr %2, align 4
  %106 = and i32 %105, -16711681
  %107 = or disjoint i32 %106, %104
  store i32 %107, ptr %2, align 4
  %108 = load i64, ptr %0, align 8
  %109 = and i64 %108, 65535
  %110 = icmp eq i64 %109, 14
  br i1 %110, label %111, label %113, !prof !368

111:                                              ; preds = %103
  %112 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #17, !range !269
  br label %113

113:                                              ; preds = %43, %47, %50, %54, %58, %22, %111, %103, %1
  ret void
}

; Function Attrs: optsize
declare ptr @bit_position(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @finish_record_layout(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 !prof !299 {
  tail call fastcc void @finalize_record_size(ptr noundef %0) #17
  %3 = load ptr, ptr %0, align 8, !tbaa !300
  tail call void @compute_record_mode(ptr noundef %3) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !300
  tail call fastcc void @finalize_type_size(ptr noundef %4) #17
  %5 = load ptr, ptr %0, align 8, !tbaa !300
  %6 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 15
  %7 = load ptr, ptr %6, align 8, !tbaa !206
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13, !prof !369

9:                                                ; preds = %13, %2
  %10 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !313
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %24, !prof !370

13:                                               ; preds = %2, %13
  %14 = phi ptr [ %22, %13 ], [ %7, %2 ]
  %15 = load ptr, ptr %0, align 8, !tbaa !300
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 2199023255552
  %18 = load i64, ptr %14, align 8
  %19 = and i64 %18, -2199023255553
  %20 = or disjoint i64 %19, %17
  store i64 %20, ptr %14, align 8
  %21 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 15
  %22 = load ptr, ptr %21, align 8, !tbaa !206
  %23 = icmp eq ptr %22, null
  br i1 %23, label %9, label %13, !prof !371, !llvm.loop !372

24:                                               ; preds = %9, %24
  %25 = phi ptr [ %30, %24 ], [ %11, %9 ]
  %26 = getelementptr inbounds %struct.tree_list, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !206
  tail call void @layout_decl(ptr noundef %27, i32 noundef 0) #17
  %28 = load ptr, ptr %10, align 8, !tbaa !313
  %29 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !206
  store ptr %30, ptr %10, align 8, !tbaa !313
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %24, !prof !238, !llvm.loop !373

32:                                               ; preds = %24, %9
  %33 = icmp eq i32 %1, 0
  br i1 %33, label %35, label %34, !prof !353

34:                                               ; preds = %32
  tail call void @free(ptr noundef nonnull %0) #17
  br label %35

35:                                               ; preds = %34, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finalize_record_size(ptr nocapture noundef %0) unnamed_addr #3 !prof !299 !PGOFuncName !374 {
  %2 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 2
  store i32 8, ptr %2, align 8, !tbaa !304
  tail call void @normalize_rli(ptr noundef %0) #17
  %3 = load ptr, ptr %0, align 8, !tbaa !300
  %4 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !206
  %6 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !302
  %8 = tail call i32 @llvm.umax.i32(i32 %5, i32 %7)
  store i32 %8, ptr %4, align 8, !tbaa !206
  %9 = tail call ptr @rli_size_so_far(ptr noundef nonnull %0) #17
  %10 = tail call ptr @rli_size_unit_so_far(ptr noundef nonnull %0) #17
  %11 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !306
  %13 = tail call i32 @integer_zerop(ptr noundef %12) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18, !prof !375

15:                                               ; preds = %1
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 18), align 16, !tbaa !184
  %17 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %10, ptr noundef %16) #16
  br label %18

18:                                               ; preds = %15, %1
  %19 = phi ptr [ %10, %1 ], [ %17, %15 ]
  %20 = load i32, ptr @input_location, align 4, !tbaa !204
  %21 = load ptr, ptr %0, align 8, !tbaa !300
  %22 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !206
  %24 = tail call ptr @round_up_loc(i32 noundef %20, ptr noundef %9, i32 noundef %23) #16
  %25 = load ptr, ptr %0, align 8, !tbaa !300
  %26 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 2
  store ptr %24, ptr %26, align 8, !tbaa !206
  %27 = load i32, ptr @input_location, align 4, !tbaa !204
  %28 = load ptr, ptr %0, align 8, !tbaa !300
  %29 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !206
  %31 = lshr i32 %30, 3
  %32 = tail call ptr @round_up_loc(i32 noundef %27, ptr noundef %19, i32 noundef %31) #16
  %33 = load ptr, ptr %0, align 8, !tbaa !300
  %34 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 3
  store ptr %32, ptr %34, align 8, !tbaa !206
  %35 = load i64, ptr %9, align 8
  %36 = and i64 %35, 131072
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %49, label %38, !prof !353

38:                                               ; preds = %18
  %39 = load ptr, ptr %0, align 8, !tbaa !300
  %40 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !206
  %42 = tail call i32 @simple_cst_equal(ptr noundef nonnull %9, ptr noundef %41) #16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49, !prof !376

44:                                               ; preds = %38
  %45 = load i32, ptr @input_location, align 4, !tbaa !204
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %49, label %47, !prof !377

47:                                               ; preds = %44
  %48 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 157, ptr noundef nonnull @.str.18) #16
  br label %49

49:                                               ; preds = %47, %44, %38, %18
  %50 = load i32, ptr @warn_packed, align 4, !tbaa !204
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %100, label %52, !prof !378

52:                                               ; preds = %49
  %53 = load ptr, ptr %0, align 8, !tbaa !300
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 2199023321087
  %56 = icmp eq i64 %55, 2199023255568
  br i1 %56, label %57, label %100

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 9
  %59 = load i32, ptr %58, align 4, !tbaa !312
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %100

61:                                               ; preds = %57
  %62 = load i64, ptr %9, align 8
  %63 = and i64 %62, 131072
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %100, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.tree_type, ptr %53, i64 0, i32 7
  %67 = load i32, ptr %66, align 8, !tbaa !206
  %68 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 5
  %69 = load i32, ptr %68, align 4, !tbaa !303
  %70 = tail call i32 @llvm.umax.i32(i32 %67, i32 %69)
  store i32 %70, ptr %68, align 4, !tbaa !303
  %71 = load i32, ptr @input_location, align 4, !tbaa !204
  %72 = getelementptr inbounds %struct.tree_type, ptr %53, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !206
  %74 = tail call ptr @round_up_loc(i32 noundef %71, ptr noundef %73, i32 noundef %70) #16
  %75 = load ptr, ptr %0, align 8, !tbaa !300
  %76 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !206
  %78 = tail call i32 @simple_cst_equal(ptr noundef %74, ptr noundef %77) #16
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %100, label %80

80:                                               ; preds = %65
  %81 = load ptr, ptr %0, align 8, !tbaa !300
  %82 = load i64, ptr %81, align 8
  %83 = and i64 %82, -2199023255553
  store i64 %83, ptr %81, align 8
  %84 = load ptr, ptr %0, align 8, !tbaa !300
  %85 = getelementptr inbounds %struct.tree_type, ptr %84, i64 0, i32 12
  %86 = load ptr, ptr %85, align 8, !tbaa !206
  %87 = icmp eq ptr %86, null
  br i1 %87, label %98, label %88

88:                                               ; preds = %80
  %89 = load i64, ptr %86, align 8
  %90 = and i64 %89, 65535
  %91 = icmp eq i64 %90, 1
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.tree_decl_minimal, ptr %86, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !206
  br label %95

95:                                               ; preds = %88, %92
  %96 = phi ptr [ %94, %92 ], [ %86, %88 ]
  %97 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 155, ptr noundef nonnull @.str.19, ptr noundef %96) #16
  br label %100

98:                                               ; preds = %80
  %99 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 155, ptr noundef nonnull @.str.20) #16
  br label %100

100:                                              ; preds = %65, %98, %95, %61, %57, %52, %49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finalize_type_size(ptr noundef %0) unnamed_addr #3 !prof !379 !PGOFuncName !380 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 14
  br i1 %4, label %5, label %7, !prof !381

5:                                                ; preds = %1
  %6 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #17, !range !269
  br label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 255
  br label %12

12:                                               ; preds = %7, %5
  %13 = phi i32 [ %6, %5 ], [ %11, %7 ]
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %48, label %15, !prof !382

15:                                               ; preds = %12
  %16 = load i64, ptr %0, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 14
  br i1 %18, label %19, label %21, !prof !383

19:                                               ; preds = %15
  %20 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #17, !range !269
  br label %26

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  br label %26

26:                                               ; preds = %21, %19
  %27 = phi i32 [ %20, %19 ], [ %25, %21 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %48, label %29, !prof !384

29:                                               ; preds = %26
  %30 = load i64, ptr %0, align 8
  %31 = trunc i64 %30 to i16
  switch i16 %31, label %34 [
    i16 16, label %48
    i16 17, label %48
    i16 18, label %48
    i16 15, label %48
    i16 14, label %32
  ], !prof !385

32:                                               ; preds = %29
  %33 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #17, !range !269
  br label %39

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  br label %39

39:                                               ; preds = %34, %32
  %40 = phi i32 [ %33, %32 ], [ %38, %34 ]
  %41 = tail call i32 @get_mode_alignment(i32 noundef %40) #17, !range !276
  %42 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !206
  %44 = icmp ult i32 %41, %43
  br i1 %44, label %48, label %45, !prof !386

45:                                               ; preds = %39
  store i32 %41, ptr %42, align 8, !tbaa !206
  %46 = load i64, ptr %0, align 8
  %47 = and i64 %46, -4398046511105
  store i64 %47, ptr %0, align 8
  br label %48

48:                                               ; preds = %39, %45, %29, %29, %29, %29, %26, %12
  %49 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !206
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %61, !prof !387

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !206
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56, !prof !388

56:                                               ; preds = %52
  %57 = load ptr, ptr @sizetype_tab, align 16, !tbaa !184
  %58 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 21), align 8, !tbaa !184
  %59 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 69, ptr noundef nonnull %54, ptr noundef %58) #16
  %60 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %57, ptr noundef %59) #16
  store ptr %60, ptr %49, align 8, !tbaa !206
  br label %61

61:                                               ; preds = %56, %52, %48
  %62 = phi ptr [ %60, %56 ], [ null, %52 ], [ %50, %48 ]
  %63 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !206
  %65 = icmp eq ptr %64, null
  br i1 %65, label %85, label %66, !prof !387

66:                                               ; preds = %61
  %67 = load i32, ptr @input_location, align 4, !tbaa !204
  %68 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 7
  %69 = load i32, ptr %68, align 8, !tbaa !206
  %70 = tail call ptr @round_up_loc(i32 noundef %67, ptr noundef nonnull %64, i32 noundef %69) #16
  store ptr %70, ptr %63, align 8, !tbaa !206
  %71 = load i32, ptr @input_location, align 4, !tbaa !204
  %72 = load ptr, ptr %49, align 8, !tbaa !206
  %73 = load i32, ptr %68, align 8, !tbaa !206
  %74 = lshr i32 %73, 3
  %75 = tail call ptr @round_up_loc(i32 noundef %71, ptr noundef %72, i32 noundef %74) #16
  store ptr %75, ptr %49, align 8, !tbaa !206
  %76 = load ptr, ptr %63, align 8, !tbaa !206
  %77 = icmp eq ptr %76, null
  br i1 %77, label %85, label %78, !prof !389

78:                                               ; preds = %66
  %79 = load i64, ptr %76, align 8
  %80 = and i64 %79, 65535
  %81 = icmp eq i64 %80, 23
  br i1 %81, label %85, label %82, !prof !390

82:                                               ; preds = %78
  %83 = tail call ptr @variable_size(ptr noundef nonnull %76) #17
  store ptr %83, ptr %63, align 8, !tbaa !206
  %84 = load ptr, ptr %49, align 8, !tbaa !206
  br label %85

85:                                               ; preds = %82, %78, %61, %66
  %86 = phi ptr [ %75, %66 ], [ %62, %61 ], [ %75, %78 ], [ %84, %82 ]
  %87 = icmp eq ptr %86, null
  br i1 %87, label %94, label %88, !prof !387

88:                                               ; preds = %85
  %89 = load i64, ptr %86, align 8
  %90 = and i64 %89, 65535
  %91 = icmp eq i64 %90, 23
  br i1 %91, label %94, label %92, !prof !390

92:                                               ; preds = %88
  %93 = tail call ptr @variable_size(ptr noundef nonnull %86) #17
  store ptr %93, ptr %49, align 8, !tbaa !206
  br label %94

94:                                               ; preds = %92, %88, %85
  %95 = phi ptr [ %93, %92 ], [ %86, %88 ], [ null, %85 ]
  %96 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 15
  %97 = load ptr, ptr %96, align 8, !tbaa !206
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %103, !prof !391

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %101 = load ptr, ptr %100, align 8, !tbaa !206
  %102 = icmp eq ptr %101, %0
  br i1 %102, label %140, label %103, !prof !392

103:                                              ; preds = %99, %94
  %104 = load ptr, ptr %63, align 8, !tbaa !206
  %105 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 7
  %106 = load i32, ptr %105, align 8, !tbaa !206
  %107 = load i64, ptr %0, align 8
  %108 = and i64 %107, 4398046511104
  %109 = and i64 %107, 65535
  %110 = icmp eq i64 %109, 14
  br i1 %110, label %111, label %113, !prof !393

111:                                              ; preds = %103
  %112 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #17, !range !269
  br label %118

113:                                              ; preds = %103
  %114 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %115 = load i32, ptr %114, align 4
  %116 = lshr i32 %115, 16
  %117 = and i32 %116, 255
  br label %118

118:                                              ; preds = %113, %111
  %119 = phi i32 [ %112, %111 ], [ %117, %113 ]
  %120 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %121 = load ptr, ptr %120, align 8, !tbaa !206
  %122 = icmp eq ptr %121, null
  br i1 %122, label %140, label %123, !prof !255

123:                                              ; preds = %118
  %124 = shl nuw nsw i32 %119, 16
  br label %125

125:                                              ; preds = %123, %125
  %126 = phi ptr [ %121, %123 ], [ %138, %125 ]
  %127 = getelementptr inbounds %struct.tree_type, ptr %126, i64 0, i32 2
  store ptr %104, ptr %127, align 8, !tbaa !206
  %128 = getelementptr inbounds %struct.tree_type, ptr %126, i64 0, i32 3
  store ptr %95, ptr %128, align 8, !tbaa !206
  %129 = getelementptr inbounds %struct.tree_type, ptr %126, i64 0, i32 7
  store i32 %106, ptr %129, align 8, !tbaa !206
  %130 = load i64, ptr %126, align 8
  %131 = and i64 %130, -4398046511105
  %132 = or disjoint i64 %131, %108
  store i64 %132, ptr %126, align 8
  %133 = getelementptr inbounds %struct.tree_type, ptr %126, i64 0, i32 6
  %134 = load i32, ptr %133, align 4
  %135 = and i32 %134, -16711681
  %136 = or disjoint i32 %135, %124
  store i32 %136, ptr %133, align 4
  %137 = getelementptr inbounds %struct.tree_type, ptr %126, i64 0, i32 15
  %138 = load ptr, ptr %137, align 8, !tbaa !206
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %125, !prof !394, !llvm.loop !395

140:                                              ; preds = %125, %118, %99
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @finish_builtin_struct(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3) local_unnamed_addr #3 !prof !182 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %4, %6
  %7 = phi ptr [ %11, %6 ], [ %2, %4 ]
  %8 = phi ptr [ %7, %6 ], [ null, %4 ]
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 4
  store ptr %0, ptr %9, align 8, !tbaa !206
  %10 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !206
  store ptr %8, ptr %10, align 8, !tbaa !206
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !396

13:                                               ; preds = %6, %4
  %14 = phi ptr [ null, %4 ], [ %7, %6 ]
  %15 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !206
  %16 = icmp eq ptr %3, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !206
  %20 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 7
  store i32 %19, ptr %20, align 8, !tbaa !206
  %21 = load i64, ptr %3, align 8
  %22 = and i64 %21, 4398046511104
  %23 = load i64, ptr %0, align 8
  %24 = and i64 %23, -4398046511105
  %25 = or disjoint i64 %24, %22
  store i64 %25, ptr %0, align 8
  br label %26

26:                                               ; preds = %17, %13
  tail call void @layout_type(ptr noundef nonnull %0) #17
  %27 = tail call ptr @get_identifier(ptr noundef %1) #16
  %28 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 35, ptr noundef %27, ptr noundef nonnull %0) #16
  %29 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 12
  store ptr %28, ptr %29, align 8, !tbaa !206
  %30 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  store ptr %28, ptr %30, align 8, !tbaa !206
  tail call void @layout_decl(ptr noundef %28, i32 noundef 0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @layout_type(ptr noundef %0) local_unnamed_addr #3 !prof !397 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !398

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1792, ptr noundef nonnull @.str.1) #16
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr @global_trees, align 16, !tbaa !184
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %556, label %7, !prof !398

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !206
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %556, !prof !399

11:                                               ; preds = %7
  %12 = load i64, ptr %0, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %536 [
    i16 22, label %14
    i16 7, label %15
    i16 8, label %22
    i16 6, label %22
    i16 9, label %73
    i16 11, label %110
    i16 13, label %138
    i16 14, label %188
    i16 19, label %296
    i16 5, label %302
    i16 20, label %313
    i16 21, label %313
    i16 10, label %323
    i16 12, label %323
    i16 15, label %371
    i16 16, label %510
    i16 17, label %510
    i16 18, label %510
  ], !prof !400

14:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1806, ptr noundef nonnull @.str.1) #16
  br label %15

15:                                               ; preds = %11, %14
  %16 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1023
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = or disjoint i32 %17, 1
  store i32 %21, ptr %16, align 4
  br label %22

22:                                               ; preds = %15, %20, %11, %11
  %23 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %24 = load ptr, ptr %23, align 8, !tbaa !206
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 23
  br i1 %27, label %28, label %34, !prof !401

28:                                               ; preds = %22
  %29 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %24) #16
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %34, !prof !402

31:                                               ; preds = %28
  %32 = load i64, ptr %0, align 8
  %33 = or i64 %32, 2097152
  store i64 %33, ptr %0, align 8
  br label %34

34:                                               ; preds = %31, %28, %22
  %35 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 1023
  %38 = tail call i32 @smallest_mode_for_size(i32 noundef %37, i32 noundef 2) #17, !range !269
  %39 = load i32, ptr %35, align 4
  %40 = shl nuw nsw i32 %38, 16
  %41 = and i32 %39, -16711681
  %42 = or disjoint i32 %41, %40
  store i32 %42, ptr %35, align 4
  %43 = load i64, ptr %0, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 14
  br i1 %45, label %46, label %48, !prof !403

46:                                               ; preds = %34
  %47 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #17, !range !269
  br label %48

48:                                               ; preds = %34, %46
  %49 = phi i32 [ %47, %46 ], [ %38, %34 ]
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !206
  %53 = zext i8 %52 to i64
  %54 = shl nuw nsw i64 %53, 3
  %55 = tail call ptr @size_int_kind(i64 noundef %54, i32 noundef 2) #16
  store ptr %55, ptr %8, align 8, !tbaa !206
  %56 = load i64, ptr %0, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 14
  br i1 %58, label %59, label %61, !prof !403

59:                                               ; preds = %48
  %60 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #17, !range !269
  br label %65

61:                                               ; preds = %48
  %62 = load i32, ptr %35, align 4
  %63 = lshr i32 %62, 16
  %64 = and i32 %63, 255
  br label %65

65:                                               ; preds = %61, %59
  %66 = phi i32 [ %60, %59 ], [ %64, %61 ]
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !206
  %70 = zext i8 %69 to i64
  %71 = tail call ptr @size_int_kind(i64 noundef %70, i32 noundef 0) #16
  %72 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  store ptr %71, ptr %72, align 8, !tbaa !206
  br label %537

73:                                               ; preds = %11
  %74 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 1023
  %77 = tail call i32 @mode_for_size(i32 noundef %76, i32 noundef 8, i32 noundef 0) #17, !range !253
  %78 = shl nuw nsw i32 %77, 16
  %79 = and i32 %75, -16711681
  %80 = or disjoint i32 %78, %79
  store i32 %80, ptr %74, align 4
  %81 = and i64 %12, 65535
  %82 = icmp eq i64 %81, 14
  br i1 %82, label %83, label %85, !prof !404

83:                                               ; preds = %73
  %84 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #17, !range !269
  br label %85

85:                                               ; preds = %73, %83
  %86 = phi i32 [ %84, %83 ], [ %77, %73 ]
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !206
  %90 = zext i8 %89 to i64
  %91 = shl nuw nsw i64 %90, 3
  %92 = tail call ptr @size_int_kind(i64 noundef %91, i32 noundef 2) #16
  store ptr %92, ptr %8, align 8, !tbaa !206
  %93 = load i64, ptr %0, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 14
  br i1 %95, label %96, label %98, !prof !404

96:                                               ; preds = %85
  %97 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #17, !range !269
  br label %102

98:                                               ; preds = %85
  %99 = load i32, ptr %74, align 4
  %100 = lshr i32 %99, 16
  %101 = and i32 %100, 255
  br label %102

102:                                              ; preds = %98, %96
  %103 = phi i32 [ %97, %96 ], [ %101, %98 ]
  %104 = zext nneg i32 %103 to i64
  %105 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !206
  %107 = zext i8 %106 to i64
  %108 = tail call ptr @size_int_kind(i64 noundef %107, i32 noundef 0) #16
  %109 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  store ptr %108, ptr %109, align 8, !tbaa !206
  br label %537

110:                                              ; preds = %11
  %111 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %112 = load i32, ptr %111, align 4
  %113 = lshr i32 %112, 16
  %114 = and i32 %113, 255
  %115 = zext nneg i32 %114 to i64
  %116 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !206
  %118 = zext i8 %117 to i64
  %119 = shl nuw nsw i64 %118, 3
  %120 = tail call ptr @size_int_kind(i64 noundef %119, i32 noundef 2) #16
  store ptr %120, ptr %8, align 8, !tbaa !206
  %121 = load i64, ptr %0, align 8
  %122 = and i64 %121, 65535
  %123 = icmp eq i64 %122, 14
  br i1 %123, label %124, label %126, !prof !405

124:                                              ; preds = %110
  %125 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #17, !range !269
  br label %130

126:                                              ; preds = %110
  %127 = load i32, ptr %111, align 4
  %128 = lshr i32 %127, 16
  %129 = and i32 %128, 255
  br label %130

130:                                              ; preds = %126, %124
  %131 = phi i32 [ %125, %124 ], [ %129, %126 ]
  %132 = zext nneg i32 %131 to i64
  %133 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %132
  %134 = load i8, ptr %133, align 1, !tbaa !206
  %135 = zext i8 %134 to i64
  %136 = tail call ptr @size_int_kind(i64 noundef %135, i32 noundef 0) #16
  %137 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  store ptr %136, ptr %137, align 8, !tbaa !206
  br label %537

138:                                              ; preds = %11
  %139 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !206
  %141 = load i64, ptr %140, align 8
  %142 = and i64 %141, 2097152
  %143 = and i64 %12, -2097153
  %144 = or disjoint i64 %142, %143
  store i64 %144, ptr %0, align 8
  %145 = getelementptr inbounds %struct.tree_type, ptr %140, i64 0, i32 6
  %146 = load i32, ptr %145, align 4
  %147 = shl i32 %146, 1
  %148 = and i32 %147, 2046
  %149 = load i64, ptr %140, align 8
  %150 = and i64 %149, 65535
  %151 = icmp eq i64 %150, 9
  %152 = select i1 %151, i32 11, i32 10
  %153 = tail call i32 @mode_for_size(i32 noundef %148, i32 noundef %152, i32 noundef 0) #17, !range !253
  %154 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %155 = load i32, ptr %154, align 4
  %156 = shl nuw nsw i32 %153, 16
  %157 = and i32 %155, -16711681
  %158 = or disjoint i32 %157, %156
  store i32 %158, ptr %154, align 4
  %159 = and i64 %12, 65535
  %160 = icmp eq i64 %159, 14
  br i1 %160, label %161, label %163, !prof !406

161:                                              ; preds = %138
  %162 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #17, !range !269
  br label %163

163:                                              ; preds = %138, %161
  %164 = phi i32 [ %162, %161 ], [ %153, %138 ]
  %165 = zext nneg i32 %164 to i64
  %166 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !206
  %168 = zext i8 %167 to i64
  %169 = shl nuw nsw i64 %168, 3
  %170 = tail call ptr @size_int_kind(i64 noundef %169, i32 noundef 2) #16
  store ptr %170, ptr %8, align 8, !tbaa !206
  %171 = load i64, ptr %0, align 8
  %172 = and i64 %171, 65535
  %173 = icmp eq i64 %172, 14
  br i1 %173, label %174, label %176, !prof !406

174:                                              ; preds = %163
  %175 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #17, !range !269
  br label %180

176:                                              ; preds = %163
  %177 = load i32, ptr %154, align 4
  %178 = lshr i32 %177, 16
  %179 = and i32 %178, 255
  br label %180

180:                                              ; preds = %176, %174
  %181 = phi i32 [ %175, %174 ], [ %179, %176 ]
  %182 = zext nneg i32 %181 to i64
  %183 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %182
  %184 = load i8, ptr %183, align 1, !tbaa !206
  %185 = zext i8 %184 to i64
  %186 = tail call ptr @size_int_kind(i64 noundef %185, i32 noundef 0) #16
  %187 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  store ptr %186, ptr %187, align 8, !tbaa !206
  br label %537

188:                                              ; preds = %11
  %189 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %190 = load i32, ptr %189, align 4
  %191 = and i32 %190, 1023
  %192 = zext nneg i32 %191 to i64
  %193 = shl nuw i64 1, %192
  %194 = trunc i64 %193 to i32
  %195 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !206
  %197 = and i64 %12, 65535
  %198 = icmp eq i64 %197, 14
  br i1 %198, label %199, label %201, !prof !407

199:                                              ; preds = %188
  %200 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #17, !range !269
  br label %204

201:                                              ; preds = %188
  %202 = lshr i32 %190, 16
  %203 = and i32 %202, 255
  br label %204

204:                                              ; preds = %201, %199
  %205 = phi i32 [ %200, %199 ], [ %203, %201 ]
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %271, !prof !407

207:                                              ; preds = %204
  %208 = load i64, ptr %196, align 8
  %209 = and i64 %208, 65535
  %210 = icmp eq i64 %209, 14
  br i1 %210, label %211, label %213, !prof !408

211:                                              ; preds = %207
  %212 = tail call i32 @vector_type_mode(ptr noundef nonnull %196) #17, !range !269
  br label %218

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.tree_type, ptr %196, i64 0, i32 6
  %215 = load i32, ptr %214, align 4
  %216 = lshr i32 %215, 16
  %217 = and i32 %216, 255
  br label %218

218:                                              ; preds = %213, %211
  %219 = phi i32 [ %212, %211 ], [ %217, %213 ]
  %220 = zext nneg i32 %219 to i64
  %221 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !206
  switch i8 %222, label %223 [
    i8 8, label %224
    i8 9, label %224
    i8 4, label %266
    i8 5, label %266
    i8 6, label %266
    i8 7, label %266
  ], !prof !409

223:                                              ; preds = %218
  br label %224

224:                                              ; preds = %223, %218, %218
  %225 = phi i32 [ 78, %218 ], [ 78, %218 ], [ 55, %223 ]
  br label %226

226:                                              ; preds = %224, %238
  %227 = phi i32 [ %241, %238 ], [ %225, %224 ]
  %228 = zext nneg i32 %227 to i64
  %229 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %228
  %230 = load i8, ptr %229, align 1, !tbaa !206
  %231 = zext i8 %230 to i32
  %232 = icmp eq i32 %231, %194
  br i1 %232, label %233, label %238, !prof !410

233:                                              ; preds = %226
  %234 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %228
  %235 = load i8, ptr %234, align 1, !tbaa !206
  %236 = zext i8 %235 to i32
  %237 = icmp eq i32 %219, %236
  br i1 %237, label %253, label %238, !prof !411

238:                                              ; preds = %226, %233
  %239 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %228
  %240 = load i8, ptr %239, align 1, !tbaa !206
  %241 = zext i8 %240 to i32
  %242 = icmp eq i8 %240, 0
  br i1 %242, label %243, label %226, !prof !412, !llvm.loop !413

243:                                              ; preds = %238
  %244 = icmp eq i8 %222, 2
  br i1 %244, label %245, label %266

245:                                              ; preds = %243
  %246 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %220
  %247 = load i8, ptr %246, align 1, !tbaa !206
  %248 = zext i8 %247 to i32
  %249 = shl i32 %194, 3
  %250 = mul i32 %249, %248
  %251 = tail call i32 @mode_for_size(i32 noundef %250, i32 noundef 2, i32 noundef 0) #17, !range !253
  %252 = zext nneg i32 %251 to i64
  br label %253

253:                                              ; preds = %233, %245
  %254 = phi i64 [ %252, %245 ], [ %228, %233 ]
  %255 = phi i32 [ %251, %245 ], [ %227, %233 ]
  %256 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %254
  %257 = load i8, ptr %256, align 1, !tbaa !206
  %258 = icmp eq i8 %257, 2
  br i1 %258, label %259, label %263, !prof !408

259:                                              ; preds = %253
  %260 = getelementptr inbounds [87 x i8], ptr @have_regs_of_mode, i64 0, i64 %254
  %261 = load i8, ptr %260, align 1, !tbaa !206
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %259, %253
  %264 = shl nuw nsw i32 %255, 16
  %265 = and i32 %264, 16711680
  br label %266

266:                                              ; preds = %259, %243, %218, %218, %218, %218, %263
  %267 = phi i32 [ %265, %263 ], [ 65536, %218 ], [ 65536, %218 ], [ 65536, %218 ], [ 65536, %218 ], [ 65536, %243 ], [ 65536, %259 ]
  %268 = load i32, ptr %189, align 4
  %269 = and i32 %268, -16711681
  %270 = or disjoint i32 %269, %267
  store i32 %270, ptr %189, align 4
  br label %271

271:                                              ; preds = %266, %204
  %272 = load ptr, ptr %195, align 8, !tbaa !206
  %273 = load i64, ptr %272, align 8
  %274 = and i64 %273, 2147483648
  %275 = load i64, ptr %0, align 8
  %276 = and i64 %275, -2147483649
  %277 = or disjoint i64 %276, %274
  store i64 %277, ptr %0, align 8
  %278 = load i64, ptr %272, align 8
  %279 = and i64 %278, 2097152
  %280 = and i64 %277, -2097153
  %281 = or disjoint i64 %280, %279
  store i64 %281, ptr %0, align 8
  %282 = getelementptr inbounds %struct.tree_type, ptr %196, i64 0, i32 3
  %283 = load ptr, ptr %282, align 8, !tbaa !206
  %284 = shl i64 4294967296, %192
  %285 = ashr exact i64 %284, 32
  %286 = tail call ptr @size_int_kind(i64 noundef %285, i32 noundef 0) #16
  %287 = tail call ptr @int_const_binop(i32 noundef 65, ptr noundef %283, ptr noundef %286, i32 noundef 0) #16
  %288 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  store ptr %287, ptr %288, align 8, !tbaa !206
  %289 = getelementptr inbounds %struct.tree_type, ptr %196, i64 0, i32 2
  %290 = load ptr, ptr %289, align 8, !tbaa !206
  %291 = tail call ptr @size_int_kind(i64 noundef %285, i32 noundef 2) #16
  %292 = tail call ptr @int_const_binop(i32 noundef 65, ptr noundef %290, ptr noundef %291, i32 noundef 0) #16
  store ptr %292, ptr %8, align 8, !tbaa !206
  %293 = tail call i64 @tree_low_cst(ptr noundef %292, i32 noundef 0) #16
  %294 = trunc i64 %293 to i32
  %295 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 7
  store i32 %294, ptr %295, align 8, !tbaa !206
  br label %537

296:                                              ; preds = %11
  %297 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 7
  store i32 1, ptr %297, align 8, !tbaa !206
  %298 = and i64 %12, -4398046511105
  store i64 %298, ptr %0, align 8
  %299 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %300 = load i32, ptr %299, align 4
  %301 = and i32 %300, -16711681
  store i32 %301, ptr %299, align 4
  br label %537

302:                                              ; preds = %11
  %303 = tail call ptr @size_int_kind(i64 noundef 32, i32 noundef 2) #16
  store ptr %303, ptr %8, align 8, !tbaa !206
  %304 = tail call ptr @size_int_kind(i64 noundef 4, i32 noundef 0) #16
  %305 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  store ptr %304, ptr %305, align 8, !tbaa !206
  %306 = tail call i32 @mode_for_size(i32 noundef 32, i32 noundef 2, i32 noundef 0) #17, !range !253
  %307 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %308 = load i32, ptr %307, align 4
  %309 = shl nuw nsw i32 %306, 16
  %310 = and i32 %308, -16712704
  %311 = or disjoint i32 %310, %309
  %312 = or disjoint i32 %311, 32
  store i32 %312, ptr %307, align 4
  br label %537

313:                                              ; preds = %11, %11
  %314 = tail call i32 @mode_for_size(i32 noundef 8, i32 noundef 2, i32 noundef 0) #17, !range !253
  %315 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %316 = load i32, ptr %315, align 4
  %317 = shl nuw nsw i32 %314, 16
  %318 = and i32 %316, -16711681
  %319 = or disjoint i32 %318, %317
  store i32 %319, ptr %315, align 4
  %320 = tail call ptr @size_int_kind(i64 noundef 8, i32 noundef 2) #16
  store ptr %320, ptr %8, align 8, !tbaa !206
  %321 = tail call ptr @size_int_kind(i64 noundef 1, i32 noundef 0) #16
  %322 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  store ptr %321, ptr %322, align 8, !tbaa !206
  br label %537

323:                                              ; preds = %11, %11
  %324 = and i64 %12, 65535
  %325 = icmp eq i64 %324, 14
  br i1 %325, label %326, label %329, !prof !414

326:                                              ; preds = %323
  %327 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #17, !range !269
  %328 = load i64, ptr %0, align 8
  br label %334

329:                                              ; preds = %323
  %330 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %331 = load i32, ptr %330, align 4
  %332 = lshr i32 %331, 16
  %333 = and i32 %332, 255
  br label %334

334:                                              ; preds = %329, %326
  %335 = phi i64 [ %328, %326 ], [ %12, %329 ]
  %336 = phi i32 [ %327, %326 ], [ %333, %329 ]
  %337 = and i64 %335, 65535
  %338 = icmp eq i64 %337, 12
  br i1 %338, label %339, label %349, !prof !415

339:                                              ; preds = %334
  %340 = load i1, ptr @reference_types_internal, align 4
  br i1 %340, label %341, label %349, !prof !416

341:                                              ; preds = %339
  %342 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %343 = load ptr, ptr %342, align 8, !tbaa !206
  %344 = load i64, ptr %343, align 8
  %345 = lshr i64 %344, 56
  %346 = trunc i64 %345 to i8
  %347 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !417
  %348 = tail call i32 %347(i8 noundef zeroext %346) #16
  br label %349

349:                                              ; preds = %341, %339, %334
  %350 = phi i32 [ %348, %341 ], [ %336, %339 ], [ %336, %334 ]
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %351
  %353 = load i8, ptr %352, align 1, !tbaa !206
  %354 = zext i8 %353 to i64
  %355 = shl nuw nsw i64 %354, 3
  %356 = tail call ptr @size_int_kind(i64 noundef %355, i32 noundef 2) #16
  store ptr %356, ptr %8, align 8, !tbaa !206
  %357 = load i8, ptr %352, align 1, !tbaa !206
  %358 = zext i8 %357 to i64
  %359 = tail call ptr @size_int_kind(i64 noundef %358, i32 noundef 0) #16
  %360 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  store ptr %359, ptr %360, align 8, !tbaa !206
  %361 = load i64, ptr %0, align 8
  %362 = or i64 %361, 2097152
  store i64 %362, ptr %0, align 8
  %363 = load i8, ptr %352, align 1, !tbaa !206
  %364 = zext i8 %363 to i32
  %365 = shl nuw nsw i32 %364, 3
  %366 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %367 = load i32, ptr %366, align 4
  %368 = and i32 %365, 1016
  %369 = and i32 %367, -1024
  %370 = or disjoint i32 %368, %369
  store i32 %370, ptr %366, align 4
  br label %537

371:                                              ; preds = %11
  %372 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %373 = load ptr, ptr %372, align 8, !tbaa !206
  %374 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %375 = load ptr, ptr %374, align 8, !tbaa !206
  %376 = tail call ptr @build_pointer_type(ptr noundef %375) #16
  %377 = icmp eq ptr %373, null
  br i1 %377, label %415, label %378, !prof !418

378:                                              ; preds = %371
  %379 = getelementptr inbounds %struct.tree_type, ptr %373, i64 0, i32 14
  %380 = load ptr, ptr %379, align 8, !tbaa !206
  %381 = icmp eq ptr %380, null
  br i1 %381, label %415, label %382, !prof !419

382:                                              ; preds = %378
  %383 = getelementptr inbounds %struct.tree_type, ptr %373, i64 0, i32 13
  %384 = load ptr, ptr %383, align 8, !tbaa !206
  %385 = icmp eq ptr %384, null
  br i1 %385, label %415, label %386, !prof !420

386:                                              ; preds = %382
  %387 = getelementptr inbounds %struct.tree_type, ptr %375, i64 0, i32 2
  %388 = load ptr, ptr %387, align 8, !tbaa !206
  %389 = icmp eq ptr %388, null
  br i1 %389, label %415, label %390, !prof !420

390:                                              ; preds = %386
  %391 = tail call i32 @integer_zerop(ptr noundef nonnull %388) #16
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %395, label %393, !prof !421

393:                                              ; preds = %390
  %394 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !184
  br label %404

395:                                              ; preds = %390
  %396 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 18), align 16, !tbaa !184
  %397 = load ptr, ptr @sizetype_tab, align 16, !tbaa !184
  %398 = load i32, ptr @input_location, align 4, !tbaa !204
  %399 = getelementptr inbounds %struct.tree_common, ptr %384, i64 0, i32 2
  %400 = load ptr, ptr %399, align 8, !tbaa !206
  %401 = tail call ptr @fold_build2_stat_loc(i32 noundef %398, i32 noundef 64, ptr noundef %400, ptr noundef nonnull %380, ptr noundef nonnull %384) #16
  %402 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %397, ptr noundef %401) #16
  %403 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %396, ptr noundef %402) #16
  br label %404

404:                                              ; preds = %395, %393
  %405 = phi ptr [ %394, %393 ], [ %403, %395 ]
  %406 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !184
  %407 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %406, ptr noundef %405) #16
  %408 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef nonnull %388, ptr noundef %407) #16
  store ptr %408, ptr %8, align 8, !tbaa !206
  %409 = getelementptr inbounds %struct.tree_type, ptr %375, i64 0, i32 3
  %410 = load ptr, ptr %409, align 8, !tbaa !206
  %411 = icmp eq ptr %410, null
  br i1 %411, label %415, label %412, !prof !420

412:                                              ; preds = %404
  %413 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef nonnull %410, ptr noundef %405) #16
  %414 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  store ptr %413, ptr %414, align 8, !tbaa !206
  br label %415

415:                                              ; preds = %404, %412, %386, %382, %378, %371
  %416 = getelementptr inbounds %struct.tree_type, ptr %375, i64 0, i32 7
  %417 = load i32, ptr %416, align 8, !tbaa !206
  %418 = tail call i32 @llvm.umax.i32(i32 %417, i32 8)
  %419 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 7
  store i32 %418, ptr %419, align 8, !tbaa !206
  %420 = getelementptr inbounds %struct.tree_type, ptr %375, i64 0, i32 2
  %421 = load ptr, ptr %420, align 8, !tbaa !206
  %422 = icmp eq ptr %421, null
  br i1 %422, label %423, label %425, !prof !422

423:                                              ; preds = %415
  %424 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 19
  store ptr null, ptr %424, align 8, !tbaa !206
  br label %425

425:                                              ; preds = %423, %415
  %426 = load i64, ptr %375, align 8
  %427 = and i64 %426, 4398046511104
  %428 = load i64, ptr %0, align 8
  %429 = and i64 %428, -4398046511105
  %430 = or disjoint i64 %429, %427
  store i64 %430, ptr %0, align 8
  %431 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %432 = load i32, ptr %431, align 4
  %433 = and i32 %432, -16711681
  %434 = or disjoint i32 %433, 65536
  store i32 %434, ptr %431, align 4
  %435 = load ptr, ptr %8, align 8, !tbaa !206
  %436 = icmp eq ptr %435, null
  br i1 %436, label %491, label %437, !prof !423

437:                                              ; preds = %425
  %438 = load ptr, ptr %374, align 8, !tbaa !206
  %439 = load i64, ptr %438, align 8
  %440 = and i64 %439, 65535
  %441 = icmp eq i64 %440, 14
  br i1 %441, label %442, label %445, !prof !420

442:                                              ; preds = %437
  %443 = tail call i32 @vector_type_mode(ptr noundef nonnull %438) #17, !range !269
  %444 = load ptr, ptr %374, align 8, !tbaa !206
  br label %450

445:                                              ; preds = %437
  %446 = getelementptr inbounds %struct.tree_type, ptr %438, i64 0, i32 6
  %447 = load i32, ptr %446, align 4
  %448 = lshr i32 %447, 16
  %449 = and i32 %448, 255
  br label %450

450:                                              ; preds = %445, %442
  %451 = phi ptr [ %444, %442 ], [ %438, %445 ]
  %452 = phi i32 [ %443, %442 ], [ %449, %445 ]
  %453 = icmp eq i32 %452, 1
  br i1 %453, label %454, label %459, !prof !424

454:                                              ; preds = %450
  %455 = getelementptr inbounds %struct.tree_type, ptr %451, i64 0, i32 6
  %456 = load i32, ptr %455, align 4
  %457 = and i32 %456, 1024
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %491, label %459, !prof !425

459:                                              ; preds = %454, %450
  %460 = load ptr, ptr %8, align 8, !tbaa !206
  %461 = getelementptr inbounds %struct.tree_type, ptr %451, i64 0, i32 2
  %462 = load ptr, ptr %461, align 8, !tbaa !206
  %463 = tail call i32 @simple_cst_equal(ptr noundef %460, ptr noundef %462) #16
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %477, label %465, !prof !426

465:                                              ; preds = %459
  %466 = load ptr, ptr %374, align 8, !tbaa !206
  %467 = load i64, ptr %466, align 8
  %468 = and i64 %467, 65535
  %469 = icmp eq i64 %468, 14
  br i1 %469, label %470, label %472, !prof !427

470:                                              ; preds = %465
  %471 = tail call i32 @vector_type_mode(ptr noundef nonnull %466) #17, !range !269
  br label %480

472:                                              ; preds = %465
  %473 = getelementptr inbounds %struct.tree_type, ptr %466, i64 0, i32 6
  %474 = load i32, ptr %473, align 4
  %475 = lshr i32 %474, 16
  %476 = and i32 %475, 255
  br label %480

477:                                              ; preds = %459
  %478 = load ptr, ptr %8, align 8, !tbaa !206
  %479 = tail call i32 @mode_for_size_tree(ptr noundef %478, i32 noundef 2, i32 noundef 1) #17, !range !253
  br label %480

480:                                              ; preds = %470, %472, %477
  %481 = phi i32 [ %479, %477 ], [ %471, %470 ], [ %476, %472 ]
  %482 = load i32, ptr %431, align 4
  %483 = shl nuw nsw i32 %481, 16
  %484 = and i32 %482, -16711681
  %485 = or disjoint i32 %484, %483
  store i32 %485, ptr %431, align 4
  %486 = load i64, ptr %0, align 8
  %487 = and i64 %486, 65535
  %488 = icmp eq i64 %487, 14
  br i1 %488, label %489, label %491, !prof !428

489:                                              ; preds = %480
  %490 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #17, !range !269
  br label %491

491:                                              ; preds = %489, %480, %454, %425
  %492 = getelementptr inbounds %struct.tree_type, ptr %375, i64 0, i32 3
  %493 = load ptr, ptr %492, align 8, !tbaa !206
  %494 = icmp eq ptr %493, null
  br i1 %494, label %537, label %495, !prof !422

495:                                              ; preds = %491
  %496 = load i64, ptr %493, align 8
  %497 = and i64 %496, 134283263
  %498 = icmp eq i64 %497, 23
  br i1 %498, label %499, label %537, !prof !429

499:                                              ; preds = %495
  %500 = tail call i32 @integer_zerop(ptr noundef nonnull %493) #16
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %502, label %537, !prof !430

502:                                              ; preds = %499
  %503 = load ptr, ptr %492, align 8, !tbaa !206
  %504 = load i32, ptr %416, align 8, !tbaa !206
  %505 = lshr i32 %504, 3
  %506 = zext nneg i32 %505 to i64
  %507 = tail call i32 @compare_tree_int(ptr noundef %503, i64 noundef %506) #16
  %508 = icmp slt i32 %507, 0
  br i1 %508, label %509, label %537, !prof !422

509:                                              ; preds = %502
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.21) #16
  br label %537

510:                                              ; preds = %11, %11, %11
  %511 = tail call ptr @start_record_layout(ptr noundef nonnull %0) #17
  %512 = load i64, ptr %0, align 8
  %513 = and i64 %512, 65535
  %514 = icmp eq i64 %513, 18
  %515 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %516 = load ptr, ptr %515, align 8, !tbaa !206
  br i1 %514, label %517, label %519, !prof !353

517:                                              ; preds = %510
  %518 = tail call ptr @nreverse(ptr noundef %516) #16
  store ptr %518, ptr %515, align 8, !tbaa !206
  br label %519

519:                                              ; preds = %510, %517
  %520 = phi ptr [ %518, %517 ], [ %516, %510 ]
  %521 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %522 = icmp eq ptr %520, null
  br i1 %522, label %528, label %523, !prof !431

523:                                              ; preds = %519, %523
  %524 = phi ptr [ %526, %523 ], [ %520, %519 ]
  tail call void @place_field(ptr noundef %511, ptr noundef nonnull %524) #17
  %525 = getelementptr inbounds %struct.tree_common, ptr %524, i64 0, i32 1
  %526 = load ptr, ptr %525, align 8, !tbaa !206
  %527 = icmp eq ptr %526, null
  br i1 %527, label %528, label %523, !prof !432, !llvm.loop !433

528:                                              ; preds = %523, %519
  %529 = load i64, ptr %0, align 8
  %530 = and i64 %529, 65535
  %531 = icmp eq i64 %530, 18
  br i1 %531, label %532, label %535, !prof !353

532:                                              ; preds = %528
  %533 = load ptr, ptr %521, align 8, !tbaa !206
  %534 = tail call ptr @nreverse(ptr noundef %533) #16
  store ptr %534, ptr %521, align 8, !tbaa !206
  br label %535

535:                                              ; preds = %532, %528
  tail call void @finish_record_layout(ptr noundef %511, i32 noundef 1) #17
  br label %537

536:                                              ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2084, ptr noundef nonnull @.str.1) #16
  br label %537

537:                                              ; preds = %491, %495, %499, %502, %509, %536, %535, %349, %313, %302, %296, %271, %180, %130, %102, %65
  %538 = load i64, ptr %0, align 8
  %539 = trunc i64 %538 to i32
  %540 = and i32 %539, 65535
  %541 = add nsw i32 %540, -16
  %542 = icmp ult i32 %541, 3
  br i1 %542, label %547, label %543, !prof !434

543:                                              ; preds = %537
  tail call fastcc void @finalize_type_size(ptr noundef nonnull %0) #17
  %544 = load i64, ptr %0, align 8
  %545 = trunc i64 %544 to i32
  %546 = and i32 %545, 65535
  br label %547

547:                                              ; preds = %537, %543
  %548 = phi i32 [ %540, %537 ], [ %546, %543 ]
  %549 = add nsw i32 %548, -15
  %550 = icmp ult i32 %549, 4
  br i1 %550, label %551, label %556, !prof !435

551:                                              ; preds = %547
  %552 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 8
  %553 = load i32, ptr %552, align 4, !tbaa !206
  %554 = icmp eq i32 %553, -1
  br i1 %554, label %556, label %555, !prof !436

555:                                              ; preds = %551
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2098, ptr noundef nonnull @.str.1) #16
  br label %556

556:                                              ; preds = %547, %555, %551, %7, %4
  ret void
}

; Function Attrs: optsize
declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @int_const_binop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @make_signed_type(i32 noundef %0) local_unnamed_addr #3 !prof !437 {
  %2 = tail call ptr @make_node_stat(i32 noundef 8) #16
  %3 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %0, 1023
  %6 = and i32 %4, -1024
  %7 = or disjoint i32 %6, %5
  store i32 %7, ptr %3, align 4
  tail call void @fixup_signed_type(ptr noundef %2) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fixup_signed_type(ptr noundef %0) local_unnamed_addr #3 !prof !438 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1023
  %5 = icmp ugt i32 %4, 128
  br i1 %5, label %6, label %7, !prof !439

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %6, %1
  %8 = phi i32 [ 128, %6 ], [ %4, %1 ]
  tail call void @set_min_and_max_values_for_integral_type(ptr noundef nonnull %0, i32 noundef %8, i8 noundef zeroext 0) #17
  tail call void @layout_type(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @make_unsigned_type(i32 noundef %0) local_unnamed_addr #3 !prof !440 {
  %2 = tail call ptr @make_node_stat(i32 noundef 8) #16
  %3 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %0, 1023
  %6 = and i32 %4, -1024
  %7 = or disjoint i32 %6, %5
  store i32 %7, ptr %3, align 4
  tail call void @fixup_unsigned_type(ptr noundef %2) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fixup_unsigned_type(ptr noundef %0) local_unnamed_addr #3 !prof !441 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1023
  %5 = icmp ugt i32 %4, 128
  br i1 %5, label %6, label %7, !prof !442

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %6, %1
  %8 = phi i32 [ 128, %6 ], [ %4, %1 ]
  %9 = load i64, ptr %0, align 8
  %10 = or i64 %9, 2097152
  store i64 %10, ptr %0, align 8
  tail call void @set_min_and_max_values_for_integral_type(ptr noundef nonnull %0, i32 noundef %8, i8 noundef zeroext 1) #17
  tail call void @layout_type(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @make_fract_type(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !443 {
  %4 = tail call ptr @make_node_stat(i32 noundef 11) #16
  %5 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %0, 1023
  %8 = and i32 %6, -1024
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %5, align 4
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %14, label %11, !prof !444

11:                                               ; preds = %3
  %12 = load i64, ptr %4, align 8
  %13 = or i64 %12, 2147483648
  store i64 %13, ptr %4, align 8
  br label %14

14:                                               ; preds = %11, %3
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %19, label %16, !prof !444

16:                                               ; preds = %14
  %17 = load i64, ptr %4, align 8
  %18 = or i64 %17, 2097152
  store i64 %18, ptr %4, align 8
  br label %19

19:                                               ; preds = %14, %16
  %20 = phi i32 [ 5, %16 ], [ 4, %14 ]
  %21 = tail call i32 @mode_for_size(i32 noundef %0, i32 noundef %20, i32 noundef 0) #17, !range !253
  %22 = shl nuw nsw i32 %21, 16
  %23 = and i32 %9, -16711681
  %24 = or disjoint i32 %22, %23
  store i32 %24, ptr %5, align 4
  tail call void @layout_type(ptr noundef nonnull %4) #17
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @make_accum_type(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !190 {
  %4 = tail call ptr @make_node_stat(i32 noundef 11) #16
  %5 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %0, 1023
  %8 = and i32 %6, -1024
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %5, align 4
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %14, label %11, !prof !445

11:                                               ; preds = %3
  %12 = load i64, ptr %4, align 8
  %13 = or i64 %12, 2147483648
  store i64 %13, ptr %4, align 8
  br label %14

14:                                               ; preds = %11, %3
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %19, label %16, !prof !445

16:                                               ; preds = %14
  %17 = load i64, ptr %4, align 8
  %18 = or i64 %17, 2097152
  store i64 %18, ptr %4, align 8
  br label %19

19:                                               ; preds = %14, %16
  %20 = phi i32 [ 7, %16 ], [ 6, %14 ]
  %21 = tail call i32 @mode_for_size(i32 noundef %0, i32 noundef %20, i32 noundef 0) #17, !range !253
  %22 = shl nuw nsw i32 %21, 16
  %23 = and i32 %9, -16711681
  %24 = or disjoint i32 %22, %23
  store i32 %24, ptr %5, align 4
  tail call void @layout_type(ptr noundef nonnull %4) #17
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @initialize_sizetypes(i8 noundef zeroext %0) local_unnamed_addr #3 !prof !228 {
  %2 = tail call ptr @make_node_stat(i32 noundef 8) #16
  %3 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !206
  %4 = zext i8 %3 to i32
  %5 = shl nuw nsw i32 %4, 3
  %6 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, -16711681
  %9 = or disjoint i32 %8, 1048576
  store i32 %9, ptr %6, align 4
  %10 = tail call i32 @get_mode_alignment(i32 noundef 16) #17, !range !276
  %11 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 7
  store i32 %10, ptr %11, align 8, !tbaa !206
  %12 = load i64, ptr %2, align 8
  %13 = or i32 %8, 1049600
  store i32 %13, ptr %6, align 4
  %14 = icmp eq i8 %0, 0
  %15 = select i1 %14, i64 2097152, i64 0
  %16 = and i64 %12, -4398048608257
  %17 = or disjoint i64 %16, %15
  store i64 %17, ptr %2, align 8
  %18 = zext nneg i32 %5 to i64
  %19 = tail call ptr @build_int_cst(ptr noundef nonnull %2, i64 noundef %18) #16
  %20 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !206
  %21 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !206
  %22 = zext i8 %21 to i64
  %23 = tail call ptr @build_int_cst(ptr noundef nonnull %2, i64 noundef %22) #16
  %24 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 3
  store ptr %23, ptr %24, align 8, !tbaa !206
  %25 = load i32, ptr %6, align 4
  %26 = and i32 %5, 1016
  %27 = and i32 %25, -1024
  %28 = or disjoint i32 %27, %26
  store i32 %28, ptr %6, align 4
  %29 = zext i1 %14 to i8
  tail call void @set_min_and_max_values_for_integral_type(ptr noundef nonnull %2, i32 noundef %5, i8 noundef zeroext %29) #17
  store ptr %2, ptr @sizetype_tab, align 16, !tbaa !184
  %30 = tail call ptr @build_distinct_type_copy(ptr noundef nonnull %2) #16
  store ptr %30, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !184
  ret void
}

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_min_and_max_values_for_integral_type(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #3 !prof !446 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %18, label %5, !prof !447

5:                                                ; preds = %3
  %6 = tail call ptr @build_int_cst(ptr noundef %0, i64 noundef 0) #16
  %7 = icmp sgt i32 %1, 63
  %8 = zext nneg i32 %1 to i64
  %9 = shl nsw i64 -1, %8
  %10 = xor i64 %9, -1
  %11 = select i1 %7, i64 -1, i64 %10, !prof !448
  %12 = icmp sgt i32 %1, 64
  %13 = sub nsw i32 128, %1
  %14 = zext nneg i32 %13 to i64
  %15 = lshr i64 -1, %14
  %16 = select i1 %12, i64 %15, i64 0, !prof !449
  %17 = tail call ptr @build_int_cst_wide(ptr noundef %0, i64 noundef %11, i64 noundef %16) #16
  br label %41

18:                                               ; preds = %3
  %19 = icmp sgt i32 %1, 64
  %20 = add nsw i32 %1, -1
  %21 = zext nneg i32 %20 to i64
  %22 = shl nsw i64 -1, %21
  %23 = select i1 %19, i64 0, i64 %22, !prof !450
  %24 = add nsw i32 %1, -65
  %25 = icmp sgt i32 %1, 65
  br i1 %25, label %26, label %28, !prof !450

26:                                               ; preds = %18
  %27 = zext nneg i32 %24 to i64
  br label %28

28:                                               ; preds = %18, %26
  %29 = phi i64 [ %27, %26 ], [ 0, %18 ]
  %30 = shl nsw i64 -1, %29
  %31 = tail call ptr @build_int_cst_wide(ptr noundef %0, i64 noundef %23, i64 noundef %30) #16
  %32 = xor i64 %22, -1
  %33 = select i1 %19, i64 -1, i64 %32, !prof !450
  br i1 %25, label %34, label %38, !prof !450

34:                                               ; preds = %28
  %35 = zext nneg i32 %24 to i64
  %36 = shl nsw i64 -1, %35
  %37 = xor i64 %36, -1
  br label %38

38:                                               ; preds = %28, %34
  %39 = phi i64 [ %37, %34 ], [ 0, %28 ]
  %40 = tail call ptr @build_int_cst_wide(ptr noundef %0, i64 noundef %33, i64 noundef %39) #16
  br label %41

41:                                               ; preds = %38, %5
  %42 = phi ptr [ %6, %5 ], [ %31, %38 ]
  %43 = phi ptr [ %17, %5 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  store ptr %42, ptr %44, align 8, !tbaa !206
  %45 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  store ptr %43, ptr %45, align 8, !tbaa !206
  ret void
}

; Function Attrs: optsize
declare ptr @build_distinct_type_copy(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_sizetype(ptr noundef %0) local_unnamed_addr #3 !prof !228 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1023
  %5 = add nuw nsw i32 %4, 4
  %6 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 17), align 1, !tbaa !206
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 3
  %9 = tail call i32 @llvm.umin.i32(i32 %5, i32 %8)
  %10 = tail call i32 @smallest_mode_for_size(i32 noundef %9, i32 noundef 2) #17, !range !269
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !245
  %14 = tail call i16 @llvm.umin.i16(i16 %13, i16 128)
  %15 = zext nneg i16 %14 to i32
  %16 = load i64, ptr %0, align 8
  %17 = load ptr, ptr @sizetype_tab, align 16, !tbaa !184
  %18 = load i64, ptr %17, align 8
  %19 = xor i64 %18, %16
  %20 = and i64 %19, 2097152
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %23, label %22, !prof !230

22:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2265, ptr noundef nonnull @.str.1) #16
  br label %23

23:                                               ; preds = %1, %22
  %24 = tail call ptr @build_distinct_type_copy(ptr noundef nonnull %0) #16
  %25 = load ptr, ptr @sizetype_tab, align 16, !tbaa !184
  %26 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !206
  %28 = getelementptr inbounds %struct.tree_type, ptr %24, i64 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !206
  %29 = load i64, ptr %25, align 8
  %30 = and i64 %29, 134217728
  %31 = load i64, ptr %24, align 8
  %32 = and i64 %31, -134217729
  %33 = or disjoint i64 %32, %30
  store i64 %33, ptr %24, align 8
  %34 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  store ptr %0, ptr %34, align 8, !tbaa !206
  %35 = load ptr, ptr @sizetype_tab, align 16, !tbaa !184
  %36 = getelementptr inbounds %struct.tree_type, ptr %35, i64 0, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !206
  %38 = getelementptr inbounds %struct.tree_type, ptr %24, i64 0, i32 5
  store i32 %37, ptr %38, align 8, !tbaa !206
  %39 = getelementptr inbounds %struct.tree_type, ptr %24, i64 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %40, 1024
  store i32 %41, ptr %39, align 4
  %42 = tail call i64 @tree_size(ptr noundef %35) #16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %35, ptr nonnull align 8 %24, i64 %42, i1 false)
  %43 = load ptr, ptr @sizetype_tab, align 16, !tbaa !184
  %44 = getelementptr inbounds %struct.tree_type, ptr %43, i64 0, i32 16
  store ptr %43, ptr %44, align 8, !tbaa !206
  %45 = getelementptr inbounds %struct.tree_type, ptr %43, i64 0, i32 19
  store ptr %43, ptr %45, align 8, !tbaa !206
  %46 = tail call ptr @make_node_stat(i32 noundef 8) #16
  %47 = tail call ptr @get_identifier(ptr noundef nonnull @.str.22) #16
  %48 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 12
  store ptr %47, ptr %48, align 8, !tbaa !206
  %49 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !184
  %50 = getelementptr inbounds %struct.tree_type, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !206
  %52 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !206
  %53 = load i64, ptr %49, align 8
  %54 = and i64 %53, 134217728
  %55 = load i64, ptr %46, align 8
  %56 = and i64 %55, -134217729
  %57 = or disjoint i64 %56, %54
  store i64 %57, ptr %46, align 8
  %58 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, -1024
  %61 = or disjoint i32 %60, %15
  store i32 %61, ptr %58, align 4
  %62 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !184
  %63 = getelementptr inbounds %struct.tree_type, ptr %62, i64 0, i32 5
  %64 = load i32, ptr %63, align 8, !tbaa !206
  %65 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 5
  store i32 %64, ptr %65, align 8, !tbaa !206
  %66 = or i32 %61, 1024
  store i32 %66, ptr %58, align 4
  %67 = tail call i64 @tree_size(ptr noundef %62) #16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %62, ptr nonnull align 8 %46, i64 %67, i1 false)
  %68 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !184
  %69 = getelementptr inbounds %struct.tree_type, ptr %68, i64 0, i32 16
  store ptr %68, ptr %69, align 8, !tbaa !206
  %70 = getelementptr inbounds %struct.tree_type, ptr %68, i64 0, i32 19
  store ptr %68, ptr %70, align 8, !tbaa !206
  %71 = load i64, ptr %0, align 8
  %72 = and i64 %71, 2097152
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %83, label %74, !prof !451

74:                                               ; preds = %23
  tail call void @fixup_unsigned_type(ptr noundef nonnull %68) #17
  %75 = tail call ptr @make_signed_type(i32 noundef %4) #17
  store ptr %75, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !184
  %76 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %77 = load i32, ptr %76, align 4
  %78 = or i32 %77, 1024
  store i32 %78, ptr %76, align 4
  %79 = tail call ptr @make_signed_type(i32 noundef %15) #17
  %80 = getelementptr inbounds %struct.tree_type, ptr %79, i64 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = or i32 %81, 1024
  store i32 %82, ptr %80, align 4
  br label %86

83:                                               ; preds = %23
  tail call void @fixup_signed_type(ptr noundef nonnull %68) #17
  %84 = load ptr, ptr @sizetype_tab, align 16, !tbaa !184
  store ptr %84, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !184
  %85 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !184
  br label %86

86:                                               ; preds = %83, %74
  %87 = phi ptr [ %85, %83 ], [ %79, %74 ]
  store ptr %87, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 3), align 8
  %88 = load i64, ptr %0, align 8
  %89 = and i64 %88, 2097152
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %102, label %91, !prof !451

91:                                               ; preds = %86
  %92 = load ptr, ptr @sizetype_tab, align 16, !tbaa !184
  %93 = getelementptr inbounds %struct.tree_type, ptr %92, i64 0, i32 14
  %94 = load ptr, ptr %93, align 8, !tbaa !206
  %95 = getelementptr inbounds %struct.tree_int_cst, ptr %94, i64 0, i32 1
  %96 = load i64, ptr %95, align 8, !tbaa !206
  %97 = getelementptr inbounds %struct.tree_int_cst, ptr %94, i64 0, i32 1, i32 1
  %98 = load i64, ptr %97, align 8, !tbaa !206
  %99 = tail call ptr @build_int_cst_wide_type(ptr noundef %92, i64 noundef %96, i64 noundef %98) #16
  %100 = load ptr, ptr @sizetype_tab, align 16, !tbaa !184
  %101 = getelementptr inbounds %struct.tree_type, ptr %100, i64 0, i32 14
  store ptr %99, ptr %101, align 8, !tbaa !206
  br label %102

102:                                              ; preds = %91, %86
  ret void
}

; Function Attrs: optsize
declare i64 @tree_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: optsize
declare ptr @build_int_cst_wide_type(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_best_mode(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 !prof !452 {
  %6 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !206
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %82, label %8, !prof !453

8:                                                ; preds = %5, %18
  %9 = phi i8 [ %20, %18 ], [ %6, %5 ]
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !206
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 3
  %15 = urem i32 %1, %14
  %16 = add i32 %15, %0
  %17 = icmp ugt i32 %16, %14
  br i1 %17, label %18, label %22, !prof !454

18:                                               ; preds = %8
  %19 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %10
  %20 = load i8, ptr %19, align 1, !tbaa !206
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %82, label %8, !prof !455, !llvm.loop !456

22:                                               ; preds = %8
  %23 = zext i8 %9 to i32
  %24 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !204
  %25 = and i32 %24, 32
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 128, i32 256
  %28 = tail call i32 @llvm.umin.i32(i32 %14, i32 %27)
  %29 = icmp ugt i32 %28, %2
  br i1 %29, label %82, label %30, !prof !457

30:                                               ; preds = %22
  %31 = icmp eq i32 %3, 0
  br i1 %31, label %37, label %32, !prof !458

32:                                               ; preds = %30
  %33 = zext i32 %3 to i64
  %34 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !206
  %36 = icmp ugt i8 %12, %35
  br i1 %36, label %82, label %37, !prof !458

37:                                               ; preds = %32, %30
  %38 = icmp eq i32 %4, 0
  br i1 %38, label %81, label %39, !prof !459

39:                                               ; preds = %37
  %40 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 22), align 8, !tbaa !460
  %41 = tail call zeroext i8 %40() #16
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %81

43:                                               ; preds = %39
  %44 = add i32 %0, -1
  %45 = add i32 %44, %1
  %46 = load i32, ptr @ix86_isa_flags, align 4
  %47 = and i32 %46, 32
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 128, i32 256
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 %2)
  %51 = zext i32 %3 to i64
  %52 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %51
  br label %53

53:                                               ; preds = %43, %74
  %54 = phi i8 [ %6, %43 ], [ %77, %74 ]
  %55 = phi i32 [ 0, %43 ], [ %75, %74 ]
  %56 = zext i8 %54 to i32
  %57 = zext i8 %54 to i64
  %58 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !206
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, 3
  %62 = udiv i32 %1, %61
  %63 = udiv i32 %45, %61
  %64 = icmp ne i32 %62, %63
  %65 = icmp ugt i8 %59, 4
  %66 = or i1 %65, %64
  %67 = icmp ugt i32 %61, %50
  %68 = select i1 %66, i1 true, i1 %67
  br i1 %68, label %74, label %69

69:                                               ; preds = %53
  br i1 %31, label %73, label %70

70:                                               ; preds = %69
  %71 = load i8, ptr %52, align 1, !tbaa !206
  %72 = icmp ugt i8 %59, %71
  br i1 %72, label %74, label %73

73:                                               ; preds = %70, %69
  br label %74

74:                                               ; preds = %53, %70, %73
  %75 = phi i32 [ %56, %73 ], [ %55, %70 ], [ %55, %53 ]
  %76 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %57
  %77 = load i8, ptr %76, align 1, !tbaa !206
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %53, !llvm.loop !461

79:                                               ; preds = %74
  %80 = icmp eq i32 %75, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %79, %39, %37
  br label %82

82:                                               ; preds = %18, %5, %22, %32, %79, %81
  %83 = phi i32 [ %23, %81 ], [ %75, %79 ], [ 0, %32 ], [ 0, %22 ], [ 0, %5 ], [ 0, %18 ]
  ret i32 %83
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @get_mode_bounds(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #3 !prof !462 {
  %6 = zext i32 %0 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !206
  %9 = icmp ult i8 %8, 9
  br i1 %9, label %11, label %10, !prof !463

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2512, ptr noundef nonnull @.str.1) #16
  br label %11

11:                                               ; preds = %5, %10
  %12 = zext i8 %8 to i64
  %13 = shl nuw nsw i64 %12, 3
  %14 = icmp eq i32 %1, 0
  %15 = add nuw nsw i64 %13, 4294967295
  %16 = and i64 %15, 4294967295
  %17 = shl nuw i64 1, %16
  %18 = sub i64 0, %17
  %19 = shl i64 2, %16
  %20 = select i1 %14, i64 0, i64 %18, !prof !464
  %21 = select i1 %14, i64 %19, i64 %17, !prof !464
  %22 = add i64 %21, -1
  %23 = tail call ptr @gen_int_mode(i64 noundef %20, i32 noundef %2) #16
  store ptr %23, ptr %3, align 8, !tbaa !184
  %24 = tail call ptr @gen_int_mode(i64 noundef %22, i32 noundef %2) #16
  store ptr %24, ptr %4, align 8, !tbaa !184
  ret void
}

; Function Attrs: optsize
declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gt_ggc_mx_VEC_tree_gc(ptr noundef) #4

; Function Attrs: optsize
declare void @gt_pch_nx_VEC_tree_gc(ptr noundef) #4

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #4

; Function Attrs: optsize
declare void @gt_pch_nx_lang_tree_node(ptr noundef) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind }
attributes #19 = { cold optsize }
attributes #20 = { cold }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!181}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180}
!36 = !{ptr @put_pending_sizes, ptr @fancy_abort, i64 1}
!37 = !{ptr @variable_size, ptr @contains_placeholder_p, i64 15}
!38 = !{ptr @variable_size, ptr @self_referential_size, i64 1}
!39 = !{ptr @variable_size, ptr @save_expr, i64 13}
!40 = !{ptr @variable_size, ptr @skip_simple_arithmetic, i64 13}
!41 = !{ptr @variable_size, ptr @error, i64 1}
!42 = !{ptr @variable_size, ptr @put_pending_size, i64 1}
!43 = !{ptr @finalize_size_functions, ptr @VEC_tree_base_iterate, i64 2}
!44 = !{ptr @finalize_size_functions, ptr @dump_function, i64 2}
!45 = !{ptr @finalize_size_functions, ptr @gimplify_function_tree, i64 1}
!46 = !{ptr @finalize_size_functions, ptr @cgraph_finalize_function, i64 1}
!47 = !{ptr @finalize_size_functions, ptr @VEC_tree_gc_free, i64 1}
!48 = !{ptr @mode_for_size_tree, ptr @host_integerp, i64 40512}
!49 = !{ptr @mode_for_size_tree, ptr @tree_low_cst, i64 40509}
!50 = !{ptr @mode_for_size_tree, ptr @mode_for_size, i64 40508}
!51 = !{ptr @smallest_mode_for_size, ptr @fancy_abort, i64 283}
!52 = !{ptr @int_mode_for_mode, ptr @mode_for_size, i64 14}
!53 = !{ptr @int_mode_for_mode, ptr @fancy_abort, i64 3}
!54 = !{ptr @layout_decl, ptr @fancy_abort, i64 75170}
!55 = !{ptr @layout_decl, ptr @vector_type_mode, i64 31}
!56 = !{ptr @layout_decl, ptr @size_binop_loc, i64 314}
!57 = !{ptr @layout_decl, ptr @fold_convert_loc, i64 314}
!58 = !{ptr @layout_decl, ptr @do_type_align, i64 601047}
!59 = !{ptr @layout_decl, ptr @integer_zerop, i64 314}
!60 = !{ptr @layout_decl, ptr @mode_for_size_tree, i64 311}
!61 = !{ptr @layout_decl, ptr @get_mode_alignment, i64 311}
!62 = !{ptr @layout_decl, ptr @x86_field_alignment, i64 18431}
!63 = !{ptr @layout_decl, ptr @variable_size, i64 10}
!64 = !{ptr @layout_decl, ptr @set_decl_rtl, i64 2}
!65 = !{ptr @layout_decl, ptr @set_mem_attributes, i64 1}
!66 = !{ptr @vector_type_mode, ptr @fancy_abort, i64 1}
!67 = !{ptr @vector_type_mode, ptr @mode_for_size, i64 177171}
!68 = !{ptr @start_record_layout, ptr @xmalloc, i64 14721}
!69 = !{ptr @bit_from_pos, ptr @fold_convert_loc, i64 81222}
!70 = !{ptr @bit_from_pos, ptr @size_binop_loc, i64 162444}
!71 = !{ptr @byte_from_pos, ptr @size_binop_loc, i64 181998}
!72 = !{ptr @byte_from_pos, ptr @fold_convert_loc, i64 90999}
!73 = !{ptr @normalize_offset, ptr @compare_tree_int, i64 50989}
!74 = !{ptr @normalize_offset, ptr @size_int_kind, i64 45936}
!75 = !{ptr @normalize_offset, ptr @size_binop_loc, i64 61248}
!76 = !{ptr @normalize_offset, ptr @fold_convert_loc, i64 15312}
!77 = !{ptr @normalize_rli, ptr @normalize_offset, i64 50989}
!78 = !{ptr @rli_size_unit_so_far, ptr @byte_from_pos, i64 14721}
!79 = !{ptr @rli_size_so_far, ptr @bit_from_pos, i64 14721}
!80 = !{ptr @update_alignment_for_field, ptr @layout_decl, i64 18375}
!81 = !{ptr @update_alignment_for_field, ptr @integer_zerop, i64 615}
!82 = !{ptr @update_alignment_for_field, ptr @x86_field_alignment, i64 299}
!83 = !{ptr @place_field, ptr @fancy_abort, i64 1}
!84 = !{ptr @place_field, ptr @tree_cons_stat, i64 1}
!85 = !{ptr @place_field, ptr @place_union_field, i64 243}
!86 = !{ptr @place_field, ptr @exact_log2, i64 18131}
!87 = !{ptr @place_field, ptr @integer_zerop, i64 66876}
!88 = !{ptr @place_field, ptr @tree_low_cst, i64 14753}
!89 = !{ptr @place_field, ptr @update_alignment_for_field, i64 18130}
!90 = !{ptr @place_field, ptr @host_integerp, i64 1871}
!91 = !{ptr @place_field, ptr @warning, i64 57}
!92 = !{ptr @place_field, ptr @round_up_loc, i64 59}
!93 = !{ptr @place_field, ptr @size_binop_loc, i64 18135}
!94 = !{ptr @place_field, ptr @fold_convert_loc, i64 3}
!95 = !{ptr @place_field, ptr @x86_field_alignment, i64 270}
!96 = !{ptr @place_field, ptr @excess_unit_span, i64 271}
!97 = !{ptr @place_field, ptr @normalize_rli, i64 36258}
!98 = !{ptr @place_field, ptr @layout_decl, i64 59}
!99 = !{ptr @place_union_field, ptr @update_alignment_for_field, i64 242}
!100 = !{ptr @place_union_field, ptr @exact_log2, i64 242}
!101 = !{ptr @place_union_field, ptr @size_binop_loc, i64 240}
!102 = !{ptr @excess_unit_span, ptr @tree_low_cst, i64 276}
!103 = !{ptr @compute_record_mode, ptr @host_integerp, i64 64188}
!104 = !{ptr @compute_record_mode, ptr @vector_type_mode, i64 2}
!105 = !{ptr @compute_record_mode, ptr @integer_zerop, i64 132}
!106 = !{ptr @compute_record_mode, ptr @bit_position, i64 17745}
!107 = !{ptr @compute_record_mode, ptr @simple_cst_equal, i64 17742}
!108 = !{ptr @compute_record_mode, ptr @mode_for_size_tree, i64 608}
!109 = !{ptr @finish_record_layout, ptr @finalize_record_size, i64 14721}
!110 = !{ptr @finish_record_layout, ptr @compute_record_mode, i64 14721}
!111 = !{ptr @finish_record_layout, ptr @finalize_type_size, i64 14721}
!112 = !{ptr @finish_record_layout, ptr @layout_decl, i64 1}
!113 = !{ptr @finish_record_layout, ptr @free, i64 14720}
!114 = !{ptr @finalize_record_size, ptr @normalize_rli, i64 14721}
!115 = !{ptr @finalize_record_size, ptr @rli_size_so_far, i64 14721}
!116 = !{ptr @finalize_record_size, ptr @rli_size_unit_so_far, i64 14721}
!117 = !{ptr @finalize_record_size, ptr @integer_zerop, i64 14721}
!118 = !{ptr @finalize_record_size, ptr @size_binop_loc, i64 22}
!119 = !{ptr @finalize_record_size, ptr @round_up_loc, i64 29442}
!120 = !{ptr @finalize_record_size, ptr @simple_cst_equal, i64 14720}
!121 = !{ptr @finalize_record_size, ptr @warning, i64 73}
!122 = !{ptr @finalize_type_size, ptr @vector_type_mode, i64 41895}
!123 = !{ptr @finalize_type_size, ptr @get_mode_alignment, i64 67145}
!124 = !{ptr @finalize_type_size, ptr @size_binop_loc, i64 1}
!125 = !{ptr @finalize_type_size, ptr @fold_convert_loc, i64 1}
!126 = !{ptr @finalize_type_size, ptr @round_up_loc, i64 246032}
!127 = !{ptr @finalize_type_size, ptr @variable_size, i64 10}
!128 = !{ptr @layout_type, ptr @fancy_abort, i64 4}
!129 = !{ptr @layout_type, ptr @tree_int_cst_sgn, i64 12148}
!130 = !{ptr @layout_type, ptr @smallest_mode_for_size, i64 12149}
!131 = !{ptr @layout_type, ptr @vector_type_mode, i64 13974}
!132 = !{ptr @layout_type, ptr @size_int_kind, i64 134304}
!133 = !{ptr @layout_type, ptr @mode_for_size, i64 33736}
!134 = !{ptr @layout_type, ptr @int_const_binop, i64 27926}
!135 = !{ptr @layout_type, ptr @tree_low_cst, i64 13963}
!136 = !{ptr @layout_type, ptr @build_pointer_type, i64 42251}
!137 = !{ptr @layout_type, ptr @integer_zerop, i64 83386}
!138 = !{ptr @layout_type, ptr @fold_build2_stat_loc, i64 41137}
!139 = !{ptr @layout_type, ptr @fold_convert_loc, i64 82275}
!140 = !{ptr @layout_type, ptr @size_binop_loc, i64 123412}
!141 = !{ptr @layout_type, ptr @simple_cst_equal, i64 40879}
!142 = !{ptr @layout_type, ptr @mode_for_size_tree, i64 39588}
!143 = !{ptr @layout_type, ptr @compare_tree_int, i64 42247}
!144 = !{ptr @layout_type, ptr @error, i64 1}
!145 = !{ptr @layout_type, ptr @start_record_layout, i64 14722}
!146 = !{ptr @layout_type, ptr @nreverse, i64 2}
!147 = !{ptr @layout_type, ptr @place_field, i64 18377}
!148 = !{ptr @layout_type, ptr @finish_record_layout, i64 14722}
!149 = !{ptr @layout_type, ptr @finalize_type_size, i64 109404}
!150 = !{ptr @make_signed_type, ptr @make_node_stat, i64 10}
!151 = !{ptr @make_signed_type, ptr @fixup_signed_type, i64 10}
!152 = !{ptr @fixup_signed_type, ptr @set_min_and_max_values_for_integral_type, i64 11580}
!153 = !{ptr @fixup_signed_type, ptr @layout_type, i64 11580}
!154 = !{ptr @make_unsigned_type, ptr @make_node_stat, i64 8}
!155 = !{ptr @make_unsigned_type, ptr @fixup_unsigned_type, i64 8}
!156 = !{ptr @fixup_unsigned_type, ptr @set_min_and_max_values_for_integral_type, i64 287}
!157 = !{ptr @fixup_unsigned_type, ptr @layout_type, i64 287}
!158 = !{ptr @make_fract_type, ptr @make_node_stat, i64 20}
!159 = !{ptr @make_fract_type, ptr @mode_for_size, i64 20}
!160 = !{ptr @make_fract_type, ptr @layout_type, i64 20}
!161 = !{ptr @make_accum_type, ptr @make_node_stat, i64 16}
!162 = !{ptr @make_accum_type, ptr @mode_for_size, i64 16}
!163 = !{ptr @make_accum_type, ptr @layout_type, i64 16}
!164 = !{ptr @initialize_sizetypes, ptr @make_node_stat, i64 1}
!165 = !{ptr @initialize_sizetypes, ptr @get_mode_alignment, i64 1}
!166 = !{ptr @initialize_sizetypes, ptr @build_int_cst, i64 2}
!167 = !{ptr @initialize_sizetypes, ptr @set_min_and_max_values_for_integral_type, i64 1}
!168 = !{ptr @initialize_sizetypes, ptr @build_distinct_type_copy, i64 1}
!169 = !{ptr @set_min_and_max_values_for_integral_type, ptr @build_int_cst, i64 289}
!170 = !{ptr @set_min_and_max_values_for_integral_type, ptr @build_int_cst_wide, i64 23447}
!171 = !{ptr @set_sizetype, ptr @smallest_mode_for_size, i64 1}
!172 = !{ptr @set_sizetype, ptr @build_distinct_type_copy, i64 1}
!173 = !{ptr @set_sizetype, ptr @tree_size, i64 2}
!174 = !{ptr @set_sizetype, ptr @make_node_stat, i64 1}
!175 = !{ptr @set_sizetype, ptr @get_identifier, i64 1}
!176 = !{ptr @set_sizetype, ptr @fixup_unsigned_type, i64 1}
!177 = !{ptr @set_sizetype, ptr @make_signed_type, i64 2}
!178 = !{ptr @set_sizetype, ptr @build_int_cst_wide_type, i64 1}
!179 = !{ptr @get_mode_bounds, ptr @fancy_abort, i64 1}
!180 = !{ptr @get_mode_bounds, ptr @gen_int_mode, i64 4098506}
!181 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!182 = !{!"function_entry_count", i64 0}
!183 = !{!"function_entry_count", i64 44195}
!184 = !{!185, !185, i64 0}
!185 = !{!"any pointer", !186, i64 0}
!186 = !{!"omnipotent char", !187, i64 0}
!187 = !{!"Simple C/C++ TBAA"}
!188 = !{!"function_entry_count", i64 9043}
!189 = !{!"branch_weights", i32 9044, i32 1}
!190 = !{!"function_entry_count", i64 16}
!191 = !{!"branch_weights", i32 17, i32 1}
!192 = !{!193, !185, i64 272}
!193 = !{!"lang_hooks", !185, i64 0, !194, i64 8, !185, i64 16, !185, i64 24, !185, i64 32, !185, i64 40, !185, i64 48, !185, i64 56, !185, i64 64, !185, i64 72, !185, i64 80, !185, i64 88, !185, i64 96, !185, i64 104, !185, i64 112, !185, i64 120, !185, i64 128, !185, i64 136, !185, i64 144, !185, i64 152, !185, i64 160, !185, i64 168, !185, i64 176, !185, i64 184, !185, i64 192, !185, i64 200, !185, i64 208, !185, i64 216, !185, i64 224, !185, i64 232, !195, i64 240, !196, i64 248, !197, i64 256, !198, i64 272, !199, i64 432, !200, i64 560, !185, i64 584, !185, i64 592, !185, i64 600, !185, i64 608, !185, i64 616, !185, i64 624, !185, i64 632, !185, i64 640, !185, i64 648, !185, i64 656, !185, i64 664, !186, i64 672}
!194 = !{!"long", !186, i64 0}
!195 = !{!"lang_hooks_for_tree_inlining", !185, i64 0}
!196 = !{!"lang_hooks_for_callgraph", !185, i64 0}
!197 = !{!"lang_hooks_for_tree_dump", !185, i64 0, !185, i64 8}
!198 = !{!"lang_hooks_for_decls", !185, i64 0, !185, i64 8, !185, i64 16, !185, i64 24, !185, i64 32, !185, i64 40, !185, i64 48, !185, i64 56, !185, i64 64, !185, i64 72, !185, i64 80, !185, i64 88, !185, i64 96, !185, i64 104, !185, i64 112, !185, i64 120, !185, i64 128, !185, i64 136, !185, i64 144, !185, i64 152}
!199 = !{!"lang_hooks_for_types", !185, i64 0, !185, i64 8, !185, i64 16, !185, i64 24, !185, i64 32, !185, i64 40, !185, i64 48, !185, i64 56, !185, i64 64, !185, i64 72, !185, i64 80, !185, i64 88, !185, i64 96, !185, i64 104, !185, i64 112, !186, i64 120}
!200 = !{!"lang_hooks_for_lto", !185, i64 0, !185, i64 8, !185, i64 16}
!201 = !{!"branch_weights", i32 1, i32 17}
!202 = !{!"stor-layout.c:self_referential_size"}
!203 = !{i32 0, i32 2}
!204 = !{!205, !205, i64 0}
!205 = !{!"int", !186, i64 0}
!206 = !{!186, !186, i64 0}
!207 = !{!208, !185, i64 1480}
!208 = !{!"gcc_target", !209, i64 0, !211, i64 368, !212, i64 664, !205, i64 744, !185, i64 752, !185, i64 760, !185, i64 768, !185, i64 776, !185, i64 784, !185, i64 792, !185, i64 800, !185, i64 808, !185, i64 816, !185, i64 824, !185, i64 832, !185, i64 840, !185, i64 848, !185, i64 856, !185, i64 864, !185, i64 872, !185, i64 880, !185, i64 888, !185, i64 896, !185, i64 904, !185, i64 912, !185, i64 920, !185, i64 928, !185, i64 936, !185, i64 944, !185, i64 952, !185, i64 960, !185, i64 968, !185, i64 976, !185, i64 984, !185, i64 992, !185, i64 1000, !185, i64 1008, !185, i64 1016, !185, i64 1024, !185, i64 1032, !185, i64 1040, !185, i64 1048, !185, i64 1056, !194, i64 1064, !194, i64 1072, !185, i64 1080, !185, i64 1088, !185, i64 1096, !185, i64 1104, !185, i64 1112, !185, i64 1120, !185, i64 1128, !185, i64 1136, !185, i64 1144, !185, i64 1152, !185, i64 1160, !185, i64 1168, !213, i64 1176, !185, i64 1232, !185, i64 1240, !185, i64 1248, !185, i64 1256, !185, i64 1264, !185, i64 1272, !185, i64 1280, !185, i64 1288, !185, i64 1296, !185, i64 1304, !185, i64 1312, !185, i64 1320, !185, i64 1328, !185, i64 1336, !185, i64 1344, !185, i64 1352, !185, i64 1360, !185, i64 1368, !185, i64 1376, !185, i64 1384, !185, i64 1392, !185, i64 1400, !185, i64 1408, !185, i64 1416, !185, i64 1424, !185, i64 1432, !185, i64 1440, !185, i64 1448, !185, i64 1456, !194, i64 1464, !214, i64 1472, !185, i64 1664, !185, i64 1672, !185, i64 1680, !185, i64 1688, !185, i64 1696, !185, i64 1704, !185, i64 1712, !185, i64 1720, !185, i64 1728, !185, i64 1736, !185, i64 1744, !185, i64 1752, !185, i64 1760, !185, i64 1768, !185, i64 1776, !215, i64 1784, !216, i64 1792, !217, i64 1896, !218, i64 1968, !185, i64 2016, !186, i64 2024, !186, i64 2025, !186, i64 2026, !186, i64 2027, !186, i64 2028, !186, i64 2029, !186, i64 2030, !186, i64 2031, !186, i64 2032, !186, i64 2033, !186, i64 2034, !186, i64 2035}
!209 = !{!"asm_out", !185, i64 0, !185, i64 8, !185, i64 16, !210, i64 24, !210, i64 56, !185, i64 88, !185, i64 96, !185, i64 104, !185, i64 112, !185, i64 120, !185, i64 128, !185, i64 136, !185, i64 144, !185, i64 152, !185, i64 160, !185, i64 168, !185, i64 176, !185, i64 184, !185, i64 192, !185, i64 200, !185, i64 208, !185, i64 216, !185, i64 224, !185, i64 232, !185, i64 240, !185, i64 248, !185, i64 256, !185, i64 264, !185, i64 272, !185, i64 280, !185, i64 288, !185, i64 296, !185, i64 304, !185, i64 312, !185, i64 320, !185, i64 328, !185, i64 336, !185, i64 344, !185, i64 352, !185, i64 360}
!210 = !{!"asm_int_op", !185, i64 0, !185, i64 8, !185, i64 16, !185, i64 24}
!211 = !{!"sched", !185, i64 0, !185, i64 8, !185, i64 16, !185, i64 24, !185, i64 32, !185, i64 40, !185, i64 48, !185, i64 56, !185, i64 64, !185, i64 72, !185, i64 80, !185, i64 88, !185, i64 96, !185, i64 104, !185, i64 112, !185, i64 120, !185, i64 128, !185, i64 136, !185, i64 144, !185, i64 152, !185, i64 160, !185, i64 168, !185, i64 176, !185, i64 184, !185, i64 192, !185, i64 200, !185, i64 208, !185, i64 216, !185, i64 224, !185, i64 232, !185, i64 240, !185, i64 248, !185, i64 256, !185, i64 264, !185, i64 272, !185, i64 280, !185, i64 288}
!212 = !{!"vectorize", !185, i64 0, !185, i64 8, !185, i64 16, !185, i64 24, !185, i64 32, !185, i64 40, !185, i64 48, !185, i64 56, !185, i64 64, !185, i64 72}
!213 = !{!"addr_space", !185, i64 0, !185, i64 8, !185, i64 16, !185, i64 24, !185, i64 32, !185, i64 40, !185, i64 48}
!214 = !{!"calls", !185, i64 0, !185, i64 8, !185, i64 16, !185, i64 24, !185, i64 32, !185, i64 40, !185, i64 48, !185, i64 56, !185, i64 64, !185, i64 72, !185, i64 80, !185, i64 88, !185, i64 96, !185, i64 104, !185, i64 112, !185, i64 120, !185, i64 128, !185, i64 136, !185, i64 144, !185, i64 152, !185, i64 160, !185, i64 168, !185, i64 176, !185, i64 184}
!215 = !{!"c", !185, i64 0}
!216 = !{!"cxx", !185, i64 0, !185, i64 8, !185, i64 16, !185, i64 24, !185, i64 32, !185, i64 40, !185, i64 48, !185, i64 56, !185, i64 64, !185, i64 72, !185, i64 80, !185, i64 88, !185, i64 96}
!217 = !{!"emutls", !185, i64 0, !185, i64 8, !185, i64 16, !185, i64 24, !185, i64 32, !185, i64 40, !185, i64 48, !185, i64 56, !186, i64 64, !186, i64 65}
!218 = !{!"target_option_hooks", !185, i64 0, !185, i64 8, !185, i64 16, !185, i64 24, !185, i64 32, !185, i64 40}
!219 = distinct !{!219, !220}
!220 = !{!"llvm.loop.mustprogress"}
!221 = !{!194, !194, i64 0}
!222 = distinct !{!222, !220}
!223 = !{!"stor-layout.c:VEC_tree_base_length"}
!224 = !{!225, !205, i64 0}
!225 = !{!"VEC_tree_base", !205, i64 0, !205, i64 4, !186, i64 8}
!226 = !{!"stor-layout.c:copy_self_referential_tree_r"}
!227 = distinct !{!227, !220}
!228 = !{!"function_entry_count", i64 1}
!229 = !{!"stor-layout.c:VEC_tree_base_iterate"}
!230 = !{!"branch_weights", i32 2, i32 1}
!231 = !{!"stor-layout.c:VEC_tree_heap_free"}
!232 = !{!"stor-layout.c:VEC_tree_gc_safe_push"}
!233 = !{!"stor-layout.c:VEC_tree_gc_reserve"}
!234 = !{!"stor-layout.c:VEC_tree_base_quick_push"}
!235 = !{!"stor-layout.c:VEC_tree_base_space"}
!236 = !{!225, !205, i64 4}
!237 = !{!"branch_weights", i32 1, i32 1}
!238 = !{!"branch_weights", i32 1, i32 0}
!239 = distinct !{!239, !220}
!240 = !{!"stor-layout.c:VEC_tree_gc_free"}
!241 = !{!"function_entry_count", i64 812946}
!242 = !{!"branch_weights", i32 583122, i32 229826}
!243 = !{!"branch_weights", i32 17211, i32 212616}
!244 = !{!"branch_weights", i32 1, i32 179063}
!245 = !{!246, !246, i64 0}
!246 = !{!"short", !186, i64 0}
!247 = !{!"branch_weights", i32 616674, i32 2496103}
!248 = !{!"branch_weights", i32 179063, i32 2933713}
!249 = distinct !{!249, !220}
!250 = !{!"function_entry_count", i64 40512}
!251 = !{!"branch_weights", i32 3, i32 40511}
!252 = !{!"branch_weights", i32 40511, i32 1}
!253 = !{i32 1, i32 256}
!254 = !{!"function_entry_count", i64 36204}
!255 = !{!"branch_weights", i32 1, i32 127}
!256 = !{!"branch_weights", i32 1724, i32 36205}
!257 = !{!"branch_weights", i32 127, i32 4854657}
!258 = distinct !{!258, !220}
!259 = !{!"function_entry_count", i64 21821}
!260 = !{!"branch_weights", i32 2, i32 12944, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 8879}
!261 = !{!"branch_weights", i32 8879, i32 1}
!262 = !{!"function_entry_count", i64 1927911}
!263 = !{!"function_entry_count", i64 601363}
!264 = !{!"branch_weights", i32 1, i32 601364}
!265 = !{!"branch_weights", i32 18435, i32 582930}
!266 = !{!"branch_weights", i32 582930, i32 1}
!267 = !{!"branch_weights", i32 599896, i32 1469}
!268 = !{!"branch_weights", i32 29, i32 599868}
!269 = !{i32 0, i32 256}
!270 = !{!"branch_weights", i32 600009, i32 1356}
!271 = !{!"branch_weights", i32 314, i32 1043}
!272 = !{!"branch_weights", i32 18122, i32 314}
!273 = !{!"branch_weights", i32 314, i32 1}
!274 = !{!208, !185, i64 864}
!275 = !{!"branch_weights", i32 1, i32 314}
!276 = !{i32 1, i32 2041}
!277 = !{!"branch_weights", i32 277, i32 38}
!278 = !{!"branch_weights", i32 20, i32 19}
!279 = !{!"branch_weights", i32 20, i32 1}
!280 = !{!"branch_weights", i32 35, i32 1369}
!281 = !{!"branch_weights", i32 18122, i32 1}
!282 = !{!"branch_weights", i32 2147425402, i32 58246}
!283 = !{!"branch_weights", i32 18433, i32 3}
!284 = !{!"branch_weights", i32 2147367162, i32 116486}
!285 = !{!"branch_weights", i32 18435, i32 1}
!286 = !{!"branch_weights", i32 30099, i32 571266}
!287 = !{!"branch_weights", i32 571262, i32 5}
!288 = !{!"branch_weights", i32 601364, i32 1}
!289 = !{!"function_entry_count", i64 191132}
!290 = !{!"branch_weights", i32 191133, i32 1}
!291 = !{!"branch_weights", i32 -1682141751, i32 205871332}
!292 = !{!208, !185, i64 1240}
!293 = !{!"branch_weights", i32 177169, i32 1}
!294 = !{!"branch_weights", i32 1, i32 177169}
!295 = !{!"function_entry_count", i64 601050}
!296 = !{!"stor-layout.c:do_type_align"}
!297 = !{!"branch_weights", i32 599584, i32 1468}
!298 = !{!"branch_weights", i32 18065, i32 581520}
!299 = !{!"function_entry_count", i64 14721}
!300 = !{!301, !185, i64 0}
!301 = !{!"record_layout_info_s", !185, i64 0, !185, i64 8, !205, i64 16, !185, i64 24, !205, i64 32, !205, i64 36, !185, i64 40, !185, i64 48, !205, i64 56, !205, i64 60}
!302 = !{!301, !205, i64 32}
!303 = !{!301, !205, i64 36}
!304 = !{!301, !205, i64 16}
!305 = !{!301, !185, i64 8}
!306 = !{!301, !185, i64 24}
!307 = !{!"function_entry_count", i64 81222}
!308 = !{!"function_entry_count", i64 90999}
!309 = !{!"function_entry_count", i64 50989}
!310 = !{!"branch_weights", i32 15313, i32 35678}
!311 = !{!301, !205, i64 56}
!312 = !{!301, !205, i64 60}
!313 = !{!301, !185, i64 48}
!314 = !{!"function_entry_count", i64 18376}
!315 = !{!"branch_weights", i32 1, i32 18377}
!316 = !{!"branch_weights", i32 18064, i32 314}
!317 = !{!"branch_weights", i32 18377, i32 1}
!318 = !{!301, !185, i64 40}
!319 = !{!"branch_weights", i32 314, i32 18064}
!320 = !{!"branch_weights", i32 15, i32 300}
!321 = !{!208, !185, i64 888}
!322 = !{!"branch_weights", i32 15, i32 1}
!323 = !{!"branch_weights", i32 300, i32 1}
!324 = !{!"branch_weights", i32 18377, i32 18378, i32 337714129}
!325 = !{!"branch_weights", i32 18135, i32 243}
!326 = !{!"branch_weights", i32 1, i32 18135}
!327 = !{!"branch_weights", i32 2967, i32 15169}
!328 = !{!"branch_weights", i32 520, i32 14650}
!329 = !{!"branch_weights", i32 1, i32 520}
!330 = !{!"branch_weights", i32 594751, i32 2146888897}
!331 = !{!"branch_weights", i32 18135, i32 1}
!332 = !{!"branch_weights", i32 59, i32 18077}
!333 = !{!"branch_weights", i32 59, i32 1}
!334 = !{!"branch_weights", i32 1, i32 59}
!335 = !{!"branch_weights", i32 36271, i32 328878225}
!336 = !{!"branch_weights", i32 17859, i32 277}
!337 = !{!"branch_weights", i32 277, i32 1}
!338 = !{!"branch_weights", i32 277, i32 279}
!339 = !{!"branch_weights", i32 1, i32 277}
!340 = !{!"branch_weights", i32 2955, i32 15181}
!341 = !{!"branch_weights", i32 532, i32 14650}
!342 = !{!"branch_weights", i32 1, i32 532}
!343 = !{!"branch_weights", i32 18077, i32 59}
!344 = !{!"branch_weights", i32 17748, i32 388}
!345 = !{!"branch_weights", i32 17689, i32 60}
!346 = !{!"branch_weights", i32 328878225, i32 36271}
!347 = !{!"function_entry_count", i64 242}
!348 = !{!"stor-layout.c:place_union_field"}
!349 = !{!"branch_weights", i32 1, i32 243}
!350 = !{!"branch_weights", i32 1, i32 486, i32 1}
!351 = !{!"function_entry_count", i64 276}
!352 = !{!"stor-layout.c:excess_unit_span"}
!353 = !{!"branch_weights", i32 1, i32 14722}
!354 = !{!"branch_weights", i32 1, i32 14590}
!355 = !{!"branch_weights", i32 17750, i32 1}
!356 = !{!"branch_weights", i32 315062500, i32 17751, i32 17750}
!357 = !{!"branch_weights", i32 133, i32 17618}
!358 = !{!"branch_weights", i32 133, i32 1}
!359 = !{!"branch_weights", i32 1, i32 133}
!360 = !{!"branch_weights", i32 132, i32 2}
!361 = !{!"branch_weights", i32 1, i32 17619}
!362 = !{!"branch_weights", i32 3502, i32 14118}
!363 = !{!"branch_weights", i32 14590, i32 3160}
!364 = distinct !{!364, !220}
!365 = !{!"branch_weights", i32 2058447430, i32 89036218}
!366 = !{!"branch_weights", i32 1, i32 13987}
!367 = !{!"branch_weights", i32 13987, i32 1}
!368 = !{!"branch_weights", i32 1, i32 14591}
!369 = !{!"branch_weights", i32 14688, i32 34}
!370 = !{!"branch_weights", i32 14721, i32 1}
!371 = !{!"branch_weights", i32 34, i32 0}
!372 = distinct !{!372, !220}
!373 = distinct !{!373, !220}
!374 = !{!"stor-layout.c:finalize_record_size"}
!375 = !{!"branch_weights", i32 22, i32 14701}
!376 = !{!"branch_weights", i32 74, i32 14649}
!377 = !{!"branch_weights", i32 1, i32 74}
!378 = !{!"branch_weights", i32 14722, i32 1}
!379 = !{!"function_entry_count", i64 124128}
!380 = !{!"stor-layout.c:finalize_type_size"}
!381 = !{!"branch_weights", i32 13965, i32 110165}
!382 = !{!"branch_weights", i32 24035, i32 100095}
!383 = !{!"branch_weights", i32 13965, i32 86131}
!384 = !{!"branch_weights", i32 2, i32 100094}
!385 = !{!"branch_weights", i32 -272621720, i32 1070188114, i32 4235322, i32 75626, i32 1417363610, i32 1056143646}
!386 = !{!"branch_weights", i32 1, i32 67150}
!387 = !{!"branch_weights", i32 1112, i32 123018}
!388 = !{!"branch_weights", i32 1112, i32 1}
!389 = !{!"branch_weights", i32 0, i32 -2147483648}
!390 = !{!"branch_weights", i32 123014, i32 5}
!391 = !{!"branch_weights", i32 124098, i32 32}
!392 = !{!"branch_weights", i32 124098, i32 1}
!393 = !{!"branch_weights", i32 1, i32 32}
!394 = !{!"branch_weights", i32 127, i32 133}
!395 = distinct !{!395, !220}
!396 = distinct !{!396, !220}
!397 = !{!"function_entry_count", i64 232885}
!398 = !{!"branch_weights", i32 1, i32 232886}
!399 = !{!"branch_weights", i32 124129, i32 108758}
!400 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 11868, i32 281, i32 8, i32 37, i32 6, i32 13965, i32 2, i32 1, i32 33725, i32 1, i32 7265, i32 3, i32 42258, i32 14650, i32 73, i32 1}
!401 = !{!"branch_weights", i32 12148, i32 1}
!402 = !{!"branch_weights", i32 556, i32 11593}
!403 = !{!"branch_weights", i32 1, i32 12148}
!404 = !{!"branch_weights", i32 1, i32 8}
!405 = !{!"branch_weights", i32 1, i32 37}
!406 = !{!"branch_weights", i32 1, i32 6}
!407 = !{!"branch_weights", i32 13965, i32 1}
!408 = !{!"branch_weights", i32 1, i32 13965}
!409 = !{!"branch_weights", i32 -1001025953, i32 235953, i32 235937, i32 235920, i32 235903, i32 235887, i32 235871}
!410 = !{!"branch_weights", i32 17065, i32 13965}
!411 = !{!"branch_weights", i32 13965, i32 3101}
!412 = !{!"branch_weights", i32 127, i32 3971585}
!413 = distinct !{!413, !220}
!414 = !{!"branch_weights", i32 1, i32 7267}
!415 = !{!"branch_weights", i32 3, i32 7265}
!416 = !{!"branch_weights", i32 1, i32 3}
!417 = !{!208, !185, i64 1184}
!418 = !{!"branch_weights", i32 1109, i32 41150}
!419 = !{!"branch_weights", i32 3, i32 41148}
!420 = !{!"branch_weights", i32 1, i32 41148}
!421 = !{!"branch_weights", i32 41148, i32 1}
!422 = !{!"branch_weights", i32 1, i32 42258}
!423 = !{!"branch_weights", i32 1111, i32 41148}
!424 = !{!"branch_weights", i32 263, i32 40886}
!425 = !{!"branch_weights", i32 263, i32 1}
!426 = !{!"branch_weights", i32 39596, i32 1291}
!427 = !{!"branch_weights", i32 1, i32 1291}
!428 = !{!"branch_weights", i32 1, i32 40886}
!429 = !{!"branch_weights", i32 1785738564, i32 84517}
!430 = !{!"branch_weights", i32 42258, i32 1}
!431 = !{!"branch_weights", i32 1, i32 14721}
!432 = !{!"branch_weights", i32 14721, i32 3656}
!433 = distinct !{!433, !220}
!434 = !{!"branch_weights", i32 336393560, i32 -1795410386}
!435 = !{!"branch_weights", i32 -1843249621, i32 -1405828530}
!436 = !{!"branch_weights", i32 56979, i32 1}
!437 = !{!"function_entry_count", i64 10}
!438 = !{!"function_entry_count", i64 11580}
!439 = !{!"branch_weights", i32 1, i32 11581}
!440 = !{!"function_entry_count", i64 8}
!441 = !{!"function_entry_count", i64 287}
!442 = !{!"branch_weights", i32 1, i32 288}
!443 = !{!"function_entry_count", i64 20}
!444 = !{!"branch_weights", i32 11, i32 11}
!445 = !{!"branch_weights", i32 9, i32 9}
!446 = !{!"function_entry_count", i64 11868}
!447 = !{!"branch_weights", i32 11581, i32 289}
!448 = !{!"branch_weights", i32 6, i32 284}
!449 = !{!"branch_weights", i32 3, i32 287}
!450 = !{!"branch_weights", i32 3, i32 11579}
!451 = !{!"branch_weights", i32 1, i32 2}
!452 = !{!"function_entry_count", i64 16860}
!453 = !{!"branch_weights", i32 1, i32 146}
!454 = !{!"branch_weights", i32 9219, i32 16715}
!455 = !{!"branch_weights", i32 146, i32 25787}
!456 = distinct !{!456, !220}
!457 = !{!"branch_weights", i32 743, i32 15973}
!458 = !{!"branch_weights", i32 1, i32 15973}
!459 = !{!"branch_weights", i32 15973, i32 1}
!460 = !{!208, !185, i64 896}
!461 = distinct !{!461, !220}
!462 = !{!"function_entry_count", i64 2049253}
!463 = !{!"branch_weights", i32 2049254, i32 1}
!464 = !{!"branch_weights", i32 163116, i32 1886139}

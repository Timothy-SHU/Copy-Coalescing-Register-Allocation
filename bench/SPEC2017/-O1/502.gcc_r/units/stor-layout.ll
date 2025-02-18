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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
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
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.record_layout_info_s = type { ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
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
@size_functions = internal global ptr null, align 8
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@class_narrowest_mode = external local_unnamed_addr constant [18 x i8], align 16
@mode_precision = external local_unnamed_addr constant [87 x i16], align 16
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@mode_base_align = external local_unnamed_addr global [87 x i8], align 16
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@sizetype_tab = dso_local local_unnamed_addr global [4 x ptr] zeroinitializer, align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@warn_larger_than = external local_unnamed_addr global i8, align 1
@larger_than_size = external local_unnamed_addr global i64, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"size of %q+D is %d bytes\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"size of %q+D is larger than %wd bytes\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"\0Aoffset\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c" bitpos\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"\0Aaligns: rec = %u, unpack = %u, off = %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"remaining in alignment = %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"packed may be necessary\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"pending statics:\0A\00", align 1
@warn_packed = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [41 x i8] c"packed attribute is unnecessary for %q+D\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"padding struct to align %q+D\00", align 1
@warn_packed_bitfield_compat = external local_unnamed_addr global i32, align 4
@input_location = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [54 x i8] c"Offset of packed bit-field %qD has changed in GCC 4.4\00", align 1
@mode_nunits = external local_unnamed_addr constant [87 x i8], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@have_regs_of_mode = external local_unnamed_addr global [87 x i8], align 16
@.str.16 = private unnamed_addr constant [57 x i8] c"alignment of array elements is greater than element size\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"bit_size_type\00", align 1
@gt_ggc_r_gt_stor_layout_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @size_functions, i64 1, i64 8, ptr @gt_ggc_mx_VEC_tree_gc, ptr @gt_pch_nx_VEC_tree_gc }, %struct.ggc_root_tab { ptr @pending_sizes, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab zeroinitializer], align 16
@self_referential_size.fnno = internal unnamed_addr global i64 0, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.18 = private unnamed_addr constant [4 x i8] c"p%d\00", align 1
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@.str.19 = private unnamed_addr constant [6 x i8] c"SZ%lu\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"padding struct size to alignment boundary\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"packed attribute is unnecessary for %qE\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"packed attribute is unnecessary\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !125 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !126
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !125 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !126
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !125 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !130
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !135
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !136

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !130
  %11 = load i8, ptr %3, align 1, !tbaa !137
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !125 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !130
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !135
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !136

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !130
  %11 = load i8, ptr %3, align 1, !tbaa !137
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !125 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !126
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !130
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !135
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !136

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #21
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !130
  %11 = load i8, ptr %3, align 1, !tbaa !137
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !125 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !126
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !125 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !138
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !139
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !136

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !138
  store i8 %12, ptr %4, align 1, !tbaa !137
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !125 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !138
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !139
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !136

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !138
  store i8 %12, ptr %4, align 1, !tbaa !137
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !125 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !126
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !138
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !139
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !136

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #21
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !138
  store i8 %12, ptr %4, align 1, !tbaa !137
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !125 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #21
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !125 {
  %2 = load i32, ptr %0, align 8, !tbaa !140
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !125 {
  %2 = load i32, ptr %0, align 8, !tbaa !140
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !125 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #21
  %6 = load ptr, ptr %5, align 8, !tbaa !126
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !141
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !125 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #21
  %6 = load ptr, ptr %5, align 8, !tbaa !126
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !141
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !125 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !125 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !125 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !125 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #21
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
  br i1 %23, label %7, label %24, !llvm.loop !142

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !125 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @internal_reference_types() local_unnamed_addr #9 !prof !125 {
  store i1 true, ptr @reference_types_internal, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @get_pending_sizes() local_unnamed_addr #10 !prof !145 {
  %1 = load ptr, ptr @pending_sizes, align 8, !tbaa !126
  store ptr null, ptr @pending_sizes, align 8, !tbaa !126
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local void @put_pending_size(ptr noundef %0) local_unnamed_addr #11 !prof !125 {
  %2 = tail call ptr @skip_simple_arithmetic(ptr noundef %0) #21
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 120
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load ptr, ptr @pending_sizes, align 8, !tbaa !126
  %8 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %2, ptr noundef %7) #21
  store ptr %8, ptr @pending_sizes, align 8, !tbaa !126
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare ptr @skip_simple_arithmetic(ptr noundef) local_unnamed_addr #3

declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @put_pending_sizes(ptr noundef %0) local_unnamed_addr #12 !prof !146 {
  %2 = load ptr, ptr @pending_sizes, align 8, !tbaa !126
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !147

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 113, ptr noundef nonnull @.str.1) #21
  br label %5

5:                                                ; preds = %1, %4
  store ptr %0, ptr @pending_sizes, align 8, !tbaa !126
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @variable_size(ptr noundef %0) local_unnamed_addr #11 !prof !125 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [128 x i8], align 16
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 131072
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %194

8:                                                ; preds = %1
  %9 = tail call zeroext i8 @contains_placeholder_p(ptr noundef nonnull %0) #21
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %169, label %11

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #21
  %12 = tail call ptr @skip_simple_arithmetic(ptr noundef nonnull %0) #21
  store ptr %12, ptr %3, align 8, !tbaa !126
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 59
  br i1 %15, label %167, label %16

16:                                               ; preds = %11
  call void @find_placeholder_in_expr(ptr noundef nonnull %0, ptr noundef nonnull %2) #21
  %17 = load ptr, ptr %2, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %17, align 8, !tbaa !148
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %19
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 248, ptr noundef nonnull @.str.1) #21
  br label %23

23:                                               ; preds = %22, %19
  store ptr %0, ptr %3, align 8, !tbaa !126
  %24 = call ptr @walk_tree_1(ptr noundef nonnull %3, ptr noundef nonnull @copy_self_referential_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #21
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %167

26:                                               ; preds = %23
  %27 = load ptr, ptr %3, align 8, !tbaa !126
  br label %28

28:                                               ; preds = %88, %26
  %29 = phi ptr [ null, %26 ], [ %99, %88 ]
  %30 = phi ptr [ null, %26 ], [ %98, %88 ]
  %31 = phi i32 [ 0, %26 ], [ %100, %88 ]
  %32 = phi ptr [ null, %26 ], [ %97, %88 ]
  %33 = phi ptr [ %27, %26 ], [ %96, %88 ]
  %34 = load ptr, ptr %2, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %28
  %37 = load i32, ptr %34, align 8, !tbaa !148
  %38 = icmp ugt i32 %37, %31
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = zext i32 %31 to i64
  %41 = getelementptr inbounds %struct.VEC_tree_base, ptr %34, i64 0, i32 2, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !126
  br label %43

43:                                               ; preds = %39, %36, %28
  %44 = phi ptr [ %42, %39 ], [ null, %36 ], [ null, %28 ]
  %45 = phi i1 [ false, %39 ], [ true, %36 ], [ true, %28 ]
  br i1 %45, label %101, label %46

46:                                               ; preds = %43
  %47 = load i64, ptr %44, align 8
  %48 = and i64 %47, 65535
  %49 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !141
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = and i64 %47, 1048576
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 265, ptr noundef nonnull @.str.1) #21
  br label %61

56:                                               ; preds = %46
  %57 = icmp eq i64 %48, 121
  br i1 %57, label %61, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.tree_exp, ptr %44, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !137
  br label %61

61:                                               ; preds = %58, %56, %55, %52
  %62 = phi ptr [ %60, %58 ], [ %44, %56 ], [ %44, %52 ], [ %44, %55 ]
  %63 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %31)
  %64 = call ptr @get_identifier(ptr noundef nonnull %4) #21
  %65 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !137
  %67 = load i32, ptr @input_location, align 4, !tbaa !141
  %68 = call ptr @build_decl_stat(i32 noundef %67, i32 noundef 34, ptr noundef %64, ptr noundef %66) #21
  %69 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 1), align 8, !tbaa !150
  %70 = call zeroext i8 %69(ptr noundef null) #21
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %61
  %73 = load i64, ptr %66, align 8
  %74 = trunc i64 %73 to i32
  %75 = and i32 %74, 65535
  %76 = add nsw i32 %75, -6
  %77 = icmp ult i32 %76, 3
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.tree_type, ptr %66, i64 0, i32 6
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 1023
  %82 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !126
  %83 = getelementptr inbounds %struct.tree_type, ptr %82, i64 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 1023
  %86 = icmp ult i32 %81, %85
  br i1 %86, label %88, label %87

87:                                               ; preds = %78, %72, %61
  br label %88

88:                                               ; preds = %78, %87
  %89 = phi ptr [ %66, %87 ], [ %82, %78 ]
  %90 = getelementptr inbounds %struct.tree_decl_common, ptr %68, i64 0, i32 5
  store ptr %89, ptr %90, align 8, !tbaa !137
  %91 = getelementptr inbounds %struct.tree_decl_common, ptr %68, i64 0, i32 2
  %92 = load i64, ptr %91, align 8
  %93 = or i64 %92, 4096
  store i64 %93, ptr %91, align 8
  %94 = load i64, ptr %68, align 8
  %95 = or i64 %94, 1048576
  store i64 %95, ptr %68, align 8
  %96 = call ptr @substitute_in_expr(ptr noundef %33, ptr noundef %62, ptr noundef nonnull %68) #21
  %97 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %66, ptr noundef %32) #21
  %98 = call ptr @chainon(ptr noundef nonnull %68, ptr noundef %30) #21
  %99 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %44, ptr noundef %29) #21
  %100 = add i32 %31, 1
  br label %28, !llvm.loop !162

101:                                              ; preds = %43
  br i1 %35, label %103, label %102

102:                                              ; preds = %101
  call void @free(ptr noundef %34)
  br label %103

103:                                              ; preds = %102, %101
  store ptr null, ptr %2, align 8, !tbaa !126
  %104 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !126
  %105 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %104, ptr noundef %32) #21
  %106 = call ptr @nreverse(ptr noundef %105) #21
  %107 = call ptr @nreverse(ptr noundef %30) #21
  %108 = call ptr @nreverse(ptr noundef %29) #21
  %109 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !137
  %111 = call ptr @build_function_type(ptr noundef %110, ptr noundef %106) #21
  %112 = load i64, ptr @self_referential_size.fnno, align 8, !tbaa !163
  %113 = add i64 %112, 1
  store i64 %113, ptr @self_referential_size.fnno, align 8, !tbaa !163
  %114 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.19, i64 noundef %112)
  %115 = call ptr @get_file_function_name(ptr noundef nonnull %4) #21
  %116 = load i32, ptr @input_location, align 4, !tbaa !141
  %117 = call ptr @build_decl_stat(i32 noundef %116, i32 noundef 29, ptr noundef %115, ptr noundef %111) #21
  %118 = icmp eq ptr %107, null
  br i1 %118, label %125, label %119

119:                                              ; preds = %103, %119
  %120 = phi ptr [ %123, %119 ], [ %107, %103 ]
  %121 = getelementptr inbounds %struct.tree_decl_minimal, ptr %120, i64 0, i32 4
  store ptr %117, ptr %121, align 8, !tbaa !137
  %122 = getelementptr inbounds %struct.tree_common, ptr %120, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !137
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %119, !llvm.loop !164

125:                                              ; preds = %119, %103
  %126 = phi ptr [ %107, %103 ], [ %123, %119 ]
  store ptr %126, ptr %3, align 8, !tbaa !126
  %127 = getelementptr inbounds %struct.tree_decl_non_common, ptr %117, i64 0, i32 2
  store ptr %107, ptr %127, align 8, !tbaa !137
  %128 = load i32, ptr @input_location, align 4, !tbaa !141
  %129 = call ptr @build_decl_stat(i32 noundef %128, i32 noundef 36, ptr noundef null, ptr noundef %110) #21
  %130 = getelementptr inbounds %struct.tree_decl_non_common, ptr %117, i64 0, i32 3
  store ptr %129, ptr %130, align 8, !tbaa !137
  %131 = getelementptr inbounds %struct.tree_decl_minimal, ptr %129, i64 0, i32 4
  store ptr %117, ptr %131, align 8, !tbaa !137
  %132 = getelementptr inbounds %struct.tree_decl_common, ptr %117, i64 0, i32 2
  %133 = load i64, ptr %132, align 8
  %134 = or i64 %133, 5120
  store i64 %134, ptr %132, align 8
  %135 = load i64, ptr %117, align 8
  %136 = or i64 %135, 34603008
  store i64 %136, ptr %117, align 8
  %137 = getelementptr inbounds %struct.tree_function_decl, ptr %117, i64 0, i32 5
  %138 = load i32, ptr %137, align 8
  %139 = or i32 %138, 2097152
  store i32 %139, ptr %137, align 8
  %140 = call ptr @make_node_stat(i32 noundef 4) #21
  %141 = getelementptr inbounds %struct.tree_decl_common, ptr %117, i64 0, i32 5
  store ptr %140, ptr %141, align 8, !tbaa !137
  %142 = getelementptr inbounds %struct.tree_block, ptr %140, i64 0, i32 6
  store ptr %117, ptr %142, align 8, !tbaa !137
  %143 = load ptr, ptr %130, align 8, !tbaa !137
  %144 = call ptr @build2_stat(i32 noundef 53, ptr noundef %110, ptr noundef %143, ptr noundef %33) #21
  store ptr %144, ptr %3, align 8, !tbaa !126
  %145 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !126
  %146 = call ptr @build1_stat(i32 noundef 135, ptr noundef %145, ptr noundef %144) #21
  %147 = getelementptr inbounds %struct.tree_decl_non_common, ptr %117, i64 0, i32 1
  store ptr %146, ptr %147, align 8, !tbaa !137
  %148 = load i64, ptr %117, align 8
  %149 = or i64 %148, 67108864
  store i64 %149, ptr %117, align 8
  %150 = load ptr, ptr @size_functions, align 8, !tbaa !126
  %151 = icmp eq ptr %150, null
  br i1 %151, label %157, label %152

152:                                              ; preds = %125
  %153 = getelementptr inbounds %struct.VEC_tree_base, ptr %150, i64 0, i32 1
  %154 = load i32, ptr %153, align 4, !tbaa !165
  %155 = load i32, ptr %150, align 8, !tbaa !148
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %152, %125
  %158 = call ptr @vec_gc_p_reserve(ptr noundef %150, i32 noundef 1) #21
  store ptr %158, ptr @size_functions, align 8, !tbaa !126
  br label %159

159:                                              ; preds = %157, %152
  %160 = load ptr, ptr @size_functions, align 8, !tbaa !126
  %161 = load i32, ptr %160, align 8, !tbaa !148
  %162 = add i32 %161, 1
  store i32 %162, ptr %160, align 8, !tbaa !148
  %163 = zext i32 %161 to i64
  %164 = getelementptr inbounds %struct.VEC_tree_base, ptr %160, i64 0, i32 2, i64 %163
  store ptr %117, ptr %164, align 8, !tbaa !126
  %165 = load i32, ptr @input_location, align 4, !tbaa !141
  %166 = call ptr @build_function_call_expr(i32 noundef %165, ptr noundef nonnull %117, ptr noundef %108) #21
  br label %167

167:                                              ; preds = %11, %23, %159
  %168 = phi ptr [ %166, %159 ], [ %0, %11 ], [ %0, %23 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  br label %194

169:                                              ; preds = %8
  %170 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33), align 8, !tbaa !166
  %171 = tail call i32 %170() #21
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %194, label %173

173:                                              ; preds = %169
  %174 = tail call ptr @save_expr(ptr noundef nonnull %0) #21
  %175 = tail call ptr @skip_simple_arithmetic(ptr noundef %174) #21
  %176 = load ptr, ptr @cfun, align 8, !tbaa !126
  %177 = icmp eq ptr %176, null
  br i1 %177, label %183, label %178

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.function, ptr %176, i64 0, i32 20
  %180 = load i32, ptr %179, align 8
  %181 = and i32 %180, 8388608
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %178, %173
  %184 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33), align 8, !tbaa !166
  %185 = tail call i32 %184() #21
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %193, label %187

187:                                              ; preds = %183
  %188 = load i64, ptr %174, align 8
  %189 = and i64 %188, 131072
  %190 = icmp eq i64 %189, 0
  %191 = select i1 %190, ptr @.str.3, ptr @.str.2
  tail call void (ptr, ...) @error(ptr noundef nonnull %191) #21
  %192 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 18), align 16, !tbaa !126
  br label %194

193:                                              ; preds = %183
  tail call void @put_pending_size(ptr noundef %175)
  br label %194

194:                                              ; preds = %178, %169, %1, %193, %187, %167
  %195 = phi ptr [ %192, %187 ], [ %174, %193 ], [ %168, %167 ], [ %0, %1 ], [ %0, %169 ], [ %174, %178 ]
  ret ptr %195
}

declare zeroext i8 @contains_placeholder_p(ptr noundef) local_unnamed_addr #3

declare ptr @save_expr(ptr noundef) local_unnamed_addr #3

declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @finalize_size_functions() local_unnamed_addr #11 !prof !174 {
  br label %1

1:                                                ; preds = %15, %0
  %2 = phi i32 [ 0, %0 ], [ %16, %15 ]
  %3 = load ptr, ptr @size_functions, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5, !prof !175

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8, !tbaa !148
  %7 = icmp ugt i32 %6, %2
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %3, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !126
  br label %12

12:                                               ; preds = %1, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %1 ]
  %14 = phi i1 [ false, %8 ], [ true, %5 ], [ true, %1 ]
  br i1 %14, label %17, label %15, !prof !175

15:                                               ; preds = %12
  tail call void @dump_function(i32 noundef 4, ptr noundef %13) #21
  tail call void @gimplify_function_tree(ptr noundef %13) #21
  tail call void @dump_function(i32 noundef 5, ptr noundef %13) #21
  tail call void @cgraph_finalize_function(ptr noundef %13, i8 noundef zeroext 0) #21
  %16 = add i32 %2, 1
  br label %1, !llvm.loop !176

17:                                               ; preds = %12
  br i1 %4, label %19, label %18, !prof !175

18:                                               ; preds = %17
  tail call void @ggc_free(ptr noundef nonnull %3) #21
  br label %19

19:                                               ; preds = %17, %18
  store ptr null, ptr @size_functions, align 8, !tbaa !126
  ret void
}

declare void @dump_function(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @gimplify_function_tree(ptr noundef) local_unnamed_addr #3

declare void @cgraph_finalize_function(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @mode_for_size(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #13 !prof !177 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %10, label %5, !prof !178

5:                                                ; preds = %3
  %6 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 17), align 1, !tbaa !137
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 3
  %9 = icmp ult i32 %8, %0
  br i1 %9, label %28, label %10, !prof !179

10:                                               ; preds = %5, %3
  %11 = zext i32 %1 to i64
  %12 = getelementptr inbounds [18 x i8], ptr @class_narrowest_mode, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !137
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %28, label %15, !prof !180

15:                                               ; preds = %10, %22
  %16 = phi i8 [ %24, %22 ], [ %13, %10 ]
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %17
  %19 = load i16, ptr %18, align 2, !tbaa !181
  %20 = zext i16 %19 to i32
  %21 = icmp eq i32 %20, %0
  br i1 %21, label %26, label %22, !prof !182

22:                                               ; preds = %15
  %23 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %17
  %24 = load i8, ptr %23, align 1, !tbaa !137
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %15, !prof !183, !llvm.loop !184

26:                                               ; preds = %15
  %27 = zext i8 %16 to i32
  br label %28

28:                                               ; preds = %22, %26, %10, %5
  %29 = phi i32 [ 1, %5 ], [ %27, %26 ], [ 1, %10 ], [ 1, %22 ]
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mode_for_size_tree(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 !prof !125 {
  %4 = tail call i32 @host_integerp(ptr noundef %0, i32 noundef 1) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %35, label %6, !prof !185

6:                                                ; preds = %3
  %7 = tail call i64 @tree_low_cst(ptr noundef %0, i32 noundef 1) #21
  %8 = icmp ult i64 %7, 4294967296
  br i1 %8, label %9, label %35, !prof !186

9:                                                ; preds = %6
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %17, label %11, !prof !185

11:                                               ; preds = %9
  %12 = trunc i64 %7 to i32
  %13 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 17), align 1, !tbaa !137
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 3
  %16 = icmp ult i32 %15, %12
  br i1 %16, label %35, label %17, !prof !187

17:                                               ; preds = %11, %9
  %18 = zext i32 %1 to i64
  %19 = getelementptr inbounds [18 x i8], ptr @class_narrowest_mode, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !137
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %35, label %22, !prof !188

22:                                               ; preds = %17, %29
  %23 = phi i8 [ %31, %29 ], [ %20, %17 ]
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !181
  %27 = zext i16 %26 to i64
  %28 = icmp eq i64 %7, %27
  br i1 %28, label %33, label %29, !prof !189

29:                                               ; preds = %22
  %30 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %24
  %31 = load i8, ptr %30, align 1, !tbaa !137
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %22, !prof !190, !llvm.loop !184

33:                                               ; preds = %22
  %34 = zext i8 %23 to i32
  br label %35

35:                                               ; preds = %29, %33, %17, %11, %6, %3
  %36 = phi i32 [ 1, %3 ], [ 1, %6 ], [ 1, %11 ], [ %34, %33 ], [ 1, %17 ], [ 1, %29 ]
  ret i32 %36
}

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @smallest_mode_for_size(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !191 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [18 x i8], ptr @class_narrowest_mode, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !137
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %18, label %7, !prof !192

7:                                                ; preds = %2, %14
  %8 = phi i8 [ %16, %14 ], [ %5, %2 ]
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !181
  %12 = zext i16 %11 to i32
  %13 = icmp ult i32 %12, %0
  br i1 %13, label %14, label %19, !prof !193

14:                                               ; preds = %7
  %15 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %9
  %16 = load i8, ptr %15, align 1, !tbaa !137
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %7, !prof !193, !llvm.loop !194

18:                                               ; preds = %14, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 430, ptr noundef nonnull @.str.1) #21
  br label %21

19:                                               ; preds = %7
  %20 = zext i8 %8 to i32
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi i32 [ 0, %18 ], [ %20, %19 ]
  ret i32 %22
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @int_mode_for_mode(i32 noundef %0) local_unnamed_addr #11 !prof !125 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !137
  switch i8 %4, label %25 [
    i8 2, label %28
    i8 3, label %28
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
    i8 0, label %23
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2
  %7 = load i8, ptr %6, align 1, !tbaa !137
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 3
  %10 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !137
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %5, %19
  %13 = phi i8 [ %21, %19 ], [ %10, %5 ]
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !181
  %17 = zext i16 %16 to i32
  %18 = icmp eq i32 %9, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %14
  %21 = load i8, ptr %20, align 1, !tbaa !137
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %28, label %12, !llvm.loop !184

23:                                               ; preds = %1
  %24 = icmp eq i32 %0, 1
  br i1 %24, label %28, label %25

25:                                               ; preds = %23, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 472, ptr noundef nonnull @.str.1) #21
  br label %28

26:                                               ; preds = %12
  %27 = zext i8 %13 to i32
  br label %28

28:                                               ; preds = %19, %26, %5, %1, %23, %1, %25
  %29 = phi i32 [ %0, %25 ], [ 1, %23 ], [ %0, %1 ], [ %0, %1 ], [ %27, %26 ], [ 1, %5 ], [ 1, %19 ]
  ret i32 %29
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_mode_alignment(i32 noundef %0) local_unnamed_addr #14 !prof !195 {
  %2 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !141
  %3 = and i32 %2, 32
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 128, i32 256, !prof !196
  %6 = zext i32 %0 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_base_align, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !137
  %9 = icmp eq i8 %8, 0
  %10 = zext i8 %8 to i32
  %11 = shl nuw nsw i32 %10, 3
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %5)
  %13 = select i1 %9, i32 1, i32 %12, !prof !197
  ret i32 %13
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @layout_decl(ptr noundef %0, i32 noundef %1) local_unnamed_addr #15 !prof !198 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  %5 = load i64, ptr %0, align 8
  %6 = freeze i64 %5
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 65535
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i32 %8, 33
  br i1 %11, label %356, label %12, !prof !199

12:                                               ; preds = %2
  %13 = and i32 %7, 65533
  %14 = icmp ne i32 %13, 32
  br i1 %14, label %15, label %18, !prof !200

15:                                               ; preds = %12
  %16 = trunc i64 %6 to i16
  switch i16 %16, label %17 [
    i16 36, label %18
    i16 35, label %18
    i16 31, label %18
  ], !prof !201

17:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 527, ptr noundef nonnull @.str.1) #21
  br label %18

18:                                               ; preds = %15, %15, %15, %12, %17
  %19 = load i64, ptr %0, align 8
  %20 = and i64 %19, 65535
  %21 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %20, i64 11
  %22 = load i8, ptr %21, align 1, !tbaa !137
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24, !prof !202

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !137
  br label %27

27:                                               ; preds = %24, %18
  %28 = phi ptr [ null, %18 ], [ %26, %24 ]
  %29 = load ptr, ptr @global_trees, align 16, !tbaa !126
  %30 = icmp eq ptr %4, %29
  %31 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16
  %32 = select i1 %30, ptr %31, ptr %4, !prof !199
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 2097152
  %35 = and i64 %19, -2097153
  %36 = or disjoint i64 %34, %35
  store i64 %36, ptr %0, align 8
  %37 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 255
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %58, !prof !203

41:                                               ; preds = %27
  %42 = load i64, ptr %32, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 14
  br i1 %44, label %45, label %47, !prof !204

45:                                               ; preds = %41
  %46 = tail call i32 @vector_type_mode(ptr noundef nonnull %32), !range !205
  br label %52

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  br label %52

52:                                               ; preds = %47, %45
  %53 = phi i32 [ %46, %45 ], [ %51, %47 ]
  %54 = zext nneg i32 %53 to i64
  %55 = load i64, ptr %37, align 8
  %56 = and i64 %55, -256
  %57 = or disjoint i64 %56, %54
  store i64 %57, ptr %37, align 8
  br label %58

58:                                               ; preds = %52, %27
  %59 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !137
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %68, !prof !206

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !137
  store ptr %64, ptr %59, align 8, !tbaa !137
  %65 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !137
  %67 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  store ptr %66, ptr %67, align 8, !tbaa !137
  br label %77

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !137
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %77, !prof !207

72:                                               ; preds = %68
  %73 = load ptr, ptr @sizetype_tab, align 16, !tbaa !126
  %74 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 21), align 8, !tbaa !126
  %75 = tail call ptr @size_binop_loc(i32 noundef %10, i32 noundef 68, ptr noundef nonnull %60, ptr noundef %74) #21
  %76 = tail call ptr @fold_convert_loc(i32 noundef %10, ptr noundef %73, ptr noundef %75) #21
  store ptr %76, ptr %69, align 8, !tbaa !137
  br label %77

77:                                               ; preds = %68, %72, %62
  %78 = icmp eq i32 %8, 31
  br i1 %78, label %94, label %79, !prof !202

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 7
  %81 = load i32, ptr %80, align 8, !tbaa !137
  %82 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %83 = load i32, ptr %82, align 8, !tbaa !137
  %84 = icmp ugt i32 %81, %83
  br i1 %84, label %85, label %295, !prof !208

85:                                               ; preds = %79
  store i32 %81, ptr %82, align 8, !tbaa !137
  %86 = load i64, ptr %0, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 31
  br i1 %88, label %89, label %295, !prof !209

89:                                               ; preds = %85
  %90 = load i64, ptr %32, align 8
  %91 = and i64 %90, 4398046511104
  %92 = and i64 %86, -4398046576609
  %93 = or disjoint i64 %91, %92
  store i64 %93, ptr %0, align 8
  br label %295

94:                                               ; preds = %77
  %95 = load i64, ptr %0, align 8
  %96 = lshr i64 %95, 42
  %97 = trunc i64 %96 to i32
  %98 = and i32 %97, 1
  %99 = lshr i64 %95, 41
  %100 = trunc i64 %99 to i8
  %101 = and i8 %100, 1
  %102 = load i64, ptr %37, align 8
  %103 = and i64 %102, 33554432
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %247, label %105, !prof !210

105:                                              ; preds = %94
  %106 = getelementptr inbounds %struct.tree_field_decl, ptr %0, i64 0, i32 2
  store ptr %32, ptr %106, align 8, !tbaa !137
  %107 = load ptr, ptr %59, align 8, !tbaa !137
  %108 = tail call i32 @integer_zerop(ptr noundef %107) #21
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %131, label %110, !prof !211

110:                                              ; preds = %105
  %111 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 18), align 8, !tbaa !212
  %112 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %113 = load ptr, ptr %112, align 8, !tbaa !137
  %114 = tail call zeroext i8 %111(ptr noundef %113) #21
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 7
  %118 = load i32, ptr %117, align 8, !tbaa !137
  %119 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %120 = load i32, ptr %119, align 8, !tbaa !137
  %121 = icmp ugt i32 %118, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  store i32 %118, ptr %119, align 8, !tbaa !137
  %123 = load i64, ptr %0, align 8
  %124 = and i64 %123, 65535
  %125 = icmp eq i64 %124, 31
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load i64, ptr %32, align 8
  %128 = and i64 %127, 4398046511104
  %129 = and i64 %123, -4398046576609
  %130 = or disjoint i64 %128, %129
  store i64 %130, ptr %0, align 8
  br label %131

131:                                              ; preds = %126, %122, %116, %110, %105
  %132 = phi i8 [ %101, %110 ], [ %101, %105 ], [ 0, %116 ], [ 0, %122 ], [ 0, %126 ]
  %133 = phi i8 [ 0, %110 ], [ 0, %105 ], [ 1, %116 ], [ 1, %122 ], [ 1, %126 ]
  %134 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !137
  %136 = icmp eq ptr %135, null
  br i1 %136, label %219, label %137, !prof !213

137:                                              ; preds = %131
  %138 = load i64, ptr %135, align 8
  %139 = and i64 %138, 65535
  %140 = icmp eq i64 %139, 23
  br i1 %140, label %141, label %219, !prof !211

141:                                              ; preds = %137
  %142 = load i64, ptr %32, align 8
  %143 = and i64 %142, 65535
  %144 = icmp eq i64 %143, 14
  br i1 %144, label %145, label %147, !prof !213

145:                                              ; preds = %141
  %146 = tail call i32 @vector_type_mode(ptr noundef nonnull %32), !range !205
  br label %152

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 6
  %149 = load i32, ptr %148, align 4
  %150 = lshr i32 %149, 16
  %151 = and i32 %150, 255
  br label %152

152:                                              ; preds = %147, %145
  %153 = phi i32 [ %146, %145 ], [ %151, %147 ]
  %154 = zext nneg i32 %153 to i64
  %155 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !137
  %157 = icmp eq i8 %156, 2
  br i1 %157, label %158, label %219, !prof !211

158:                                              ; preds = %152
  %159 = load ptr, ptr %59, align 8, !tbaa !137
  %160 = tail call i32 @host_integerp(ptr noundef %159, i32 noundef 1) #21
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %187, label %162, !prof !185

162:                                              ; preds = %158
  %163 = tail call i64 @tree_low_cst(ptr noundef %159, i32 noundef 1) #21
  %164 = icmp ult i64 %163, 4294967296
  br i1 %164, label %165, label %187, !prof !186

165:                                              ; preds = %162
  %166 = trunc i64 %163 to i32
  %167 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 17), align 1, !tbaa !137
  %168 = zext i8 %167 to i32
  %169 = shl nuw nsw i32 %168, 3
  %170 = icmp ult i32 %169, %166
  %171 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2
  %172 = icmp eq i8 %171, 0
  %173 = select i1 %170, i1 true, i1 %172
  br i1 %173, label %187, label %174, !prof !214

174:                                              ; preds = %165, %181
  %175 = phi i8 [ %183, %181 ], [ %171, %165 ]
  %176 = zext i8 %175 to i64
  %177 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %176
  %178 = load i16, ptr %177, align 2, !tbaa !181
  %179 = zext i16 %178 to i64
  %180 = icmp eq i64 %163, %179
  br i1 %180, label %185, label %181, !prof !189

181:                                              ; preds = %174
  %182 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %176
  %183 = load i8, ptr %182, align 1, !tbaa !137
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %187, label %174, !prof !190, !llvm.loop !184

185:                                              ; preds = %174
  %186 = zext i8 %175 to i32
  br label %187

187:                                              ; preds = %181, %158, %162, %165, %185
  %188 = phi i32 [ 1, %158 ], [ 1, %162 ], [ 1, %165 ], [ %186, %185 ], [ 1, %181 ]
  %189 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !141
  %190 = and i32 %189, 32
  %191 = icmp eq i32 %190, 0
  %192 = select i1 %191, i32 128, i32 256, !prof !211
  %193 = zext nneg i32 %188 to i64
  %194 = getelementptr inbounds [87 x i8], ptr @mode_base_align, i64 0, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !137
  %196 = icmp eq i8 %195, 0
  %197 = zext i8 %195 to i32
  %198 = shl nuw nsw i32 %197, 3
  %199 = tail call i32 @llvm.umin.i32(i32 %198, i32 %192)
  %200 = select i1 %196, i32 1, i32 %199, !prof !215
  %201 = icmp eq i32 %188, 1
  br i1 %201, label %219, label %202, !prof !215

202:                                              ; preds = %187
  %203 = icmp ugt i32 %200, 8
  br i1 %203, label %204, label %208, !prof !216

204:                                              ; preds = %202
  %205 = load i64, ptr %0, align 8
  %206 = and i64 %205, 2199023255552
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %219, !prof !217

208:                                              ; preds = %204, %202
  %209 = icmp ne i32 %1, 0
  %210 = icmp ugt i32 %200, %1
  %211 = select i1 %209, i1 %210, i1 false, !prof !218
  br i1 %211, label %219, label %212, !prof !219

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %214 = load i32, ptr %213, align 8, !tbaa !137
  %215 = tail call i32 @llvm.umax.i32(i32 %200, i32 %214)
  store i32 %215, ptr %213, align 8, !tbaa !137
  %216 = load i64, ptr %37, align 8
  %217 = and i64 %216, -33554688
  %218 = or disjoint i64 %217, %193
  store i64 %218, ptr %37, align 8
  br label %219

219:                                              ; preds = %204, %187, %212, %208, %152, %137, %131
  %220 = load i64, ptr %32, align 8
  %221 = and i64 %220, 65535
  %222 = icmp eq i64 %221, 14
  br i1 %222, label %223, label %225, !prof !213

223:                                              ; preds = %219
  %224 = tail call i32 @vector_type_mode(ptr noundef nonnull %32), !range !205
  br label %230

225:                                              ; preds = %219
  %226 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 6
  %227 = load i32, ptr %226, align 4
  %228 = lshr i32 %227, 16
  %229 = and i32 %228, 255
  br label %230

230:                                              ; preds = %225, %223
  %231 = phi i32 [ %224, %223 ], [ %229, %225 ]
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %233, label %265, !prof !213

233:                                              ; preds = %230
  %234 = load i64, ptr %37, align 8
  %235 = and i64 %234, 255
  %236 = icmp eq i64 %235, 1
  br i1 %236, label %237, label %265

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 7
  %239 = load i32, ptr %238, align 8, !tbaa !137
  %240 = icmp ugt i32 %239, %1
  br i1 %240, label %265, label %241

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %243 = load i32, ptr %242, align 8, !tbaa !137
  %244 = icmp ult i32 %243, %239
  br i1 %244, label %265, label %245

245:                                              ; preds = %241
  %246 = and i64 %234, -33554687
  store i64 %246, ptr %37, align 8
  br label %265

247:                                              ; preds = %94
  %248 = icmp eq i8 %101, 0
  %249 = icmp eq i32 %98, 0
  %250 = select i1 %248, i1 true, i1 %249, !prof !220
  br i1 %250, label %251, label %265, !prof !220

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 7
  %253 = load i32, ptr %252, align 8, !tbaa !137
  %254 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %255 = load i32, ptr %254, align 8, !tbaa !137
  %256 = icmp ugt i32 %253, %255
  br i1 %256, label %257, label %265, !prof !221

257:                                              ; preds = %251
  store i32 %253, ptr %254, align 8, !tbaa !137
  %258 = and i64 %95, 65535
  %259 = icmp eq i64 %258, 31
  br i1 %259, label %260, label %265, !prof !222

260:                                              ; preds = %257
  %261 = load i64, ptr %32, align 8
  %262 = and i64 %261, 4398046511104
  %263 = and i64 %95, -4398046576609
  %264 = or disjoint i64 %262, %263
  store i64 %264, ptr %0, align 8
  br label %265

265:                                              ; preds = %260, %257, %251, %247, %230, %233, %237, %241, %245
  %266 = phi i8 [ %132, %245 ], [ %132, %241 ], [ %132, %237 ], [ %132, %233 ], [ %132, %230 ], [ 1, %247 ], [ %101, %251 ], [ %101, %257 ], [ %101, %260 ]
  %267 = phi i8 [ %133, %245 ], [ %133, %241 ], [ %133, %237 ], [ %133, %233 ], [ %133, %230 ], [ 0, %247 ], [ 0, %251 ], [ 0, %257 ], [ 0, %260 ]
  %268 = icmp eq i8 %266, 0
  %269 = icmp ne i32 %98, 0
  %270 = select i1 %268, i1 true, i1 %269, !prof !223
  br i1 %270, label %275, label %271, !prof !223

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %273 = load i32, ptr %272, align 8, !tbaa !137
  %274 = tail call i32 @llvm.umin.i32(i32 %273, i32 8)
  store i32 %274, ptr %272, align 8, !tbaa !137
  br label %275

275:                                              ; preds = %271, %265
  br i1 %268, label %276, label %284, !prof !223

276:                                              ; preds = %275
  %277 = load i64, ptr %0, align 8
  %278 = and i64 %277, 4398046511104
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %284, !prof !223

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %282 = load i32, ptr %281, align 8, !tbaa !137
  %283 = tail call i32 @x86_field_alignment(ptr noundef nonnull %0, i32 noundef %282) #21
  store i32 %283, ptr %281, align 8, !tbaa !137
  br label %284

284:                                              ; preds = %280, %276, %275
  %285 = icmp eq i8 %267, 0
  %286 = load i32, ptr @initial_max_fld_align, align 4
  %287 = shl i32 %286, 3
  %288 = load i32, ptr @maximum_field_alignment, align 4
  %289 = select i1 %285, i32 %288, i32 %287, !prof !223
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %295, label %291, !prof !223

291:                                              ; preds = %284
  %292 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %293 = load i32, ptr %292, align 8, !tbaa !137
  %294 = tail call i32 @llvm.umin.i32(i32 %293, i32 %289)
  store i32 %294, ptr %292, align 8, !tbaa !137
  br label %295

295:                                              ; preds = %89, %85, %79, %284, %291
  %296 = load ptr, ptr %59, align 8, !tbaa !137
  %297 = icmp eq ptr %296, null
  br i1 %297, label %304, label %298, !prof !224

298:                                              ; preds = %295
  %299 = load i64, ptr %296, align 8
  %300 = and i64 %299, 65535
  %301 = icmp eq i64 %300, 23
  br i1 %301, label %304, label %302, !prof !225

302:                                              ; preds = %298
  %303 = tail call ptr @variable_size(ptr noundef nonnull %296)
  store ptr %303, ptr %59, align 8, !tbaa !137
  br label %304

304:                                              ; preds = %302, %298, %295
  %305 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  %306 = load ptr, ptr %305, align 8, !tbaa !137
  %307 = icmp eq ptr %306, null
  br i1 %307, label %314, label %308, !prof !224

308:                                              ; preds = %304
  %309 = load i64, ptr %306, align 8
  %310 = and i64 %309, 65535
  %311 = icmp eq i64 %310, 23
  br i1 %311, label %314, label %312, !prof !225

312:                                              ; preds = %308
  %313 = tail call ptr @variable_size(ptr noundef nonnull %306)
  store ptr %313, ptr %305, align 8, !tbaa !137
  br label %314

314:                                              ; preds = %312, %308, %304
  %315 = load i8, ptr @warn_larger_than, align 1, !tbaa !137
  %316 = icmp eq i8 %315, 0
  %317 = or i1 %14, %316
  br i1 %317, label %346, label %318, !prof !226

318:                                              ; preds = %314
  %319 = load i64, ptr %37, align 8
  %320 = and i64 %319, 33554432
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %346

322:                                              ; preds = %318
  %323 = load ptr, ptr %305, align 8, !tbaa !137
  %324 = icmp eq ptr %323, null
  br i1 %324, label %346, label %325

325:                                              ; preds = %322
  %326 = load i64, ptr %323, align 8
  %327 = and i64 %326, 65535
  %328 = icmp eq i64 %327, 23
  br i1 %328, label %329, label %346

329:                                              ; preds = %325
  %330 = load i64, ptr @larger_than_size, align 8, !tbaa !163
  %331 = tail call i32 @compare_tree_int(ptr noundef nonnull %323, i64 noundef %330) #21
  %332 = icmp sgt i32 %331, 0
  br i1 %332, label %333, label %346

333:                                              ; preds = %329
  %334 = getelementptr inbounds %struct.tree_int_cst, ptr %323, i64 0, i32 1
  %335 = load i64, ptr %334, align 8, !tbaa !137
  %336 = shl i64 %335, 32
  %337 = ashr exact i64 %336, 32
  %338 = tail call i32 @compare_tree_int(ptr noundef nonnull %323, i64 noundef %337) #21
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %333
  %341 = trunc i64 %335 to i32
  %342 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 121, ptr noundef nonnull @.str.4, ptr noundef nonnull %0, i32 noundef %341) #21
  br label %346

343:                                              ; preds = %333
  %344 = load i64, ptr @larger_than_size, align 8, !tbaa !163
  %345 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 121, ptr noundef nonnull @.str.5, ptr noundef nonnull %0, i64 noundef %344) #21
  br label %346

346:                                              ; preds = %322, %325, %329, %343, %340, %314, %318
  %347 = icmp eq ptr %28, null
  br i1 %347, label %356, label %348, !prof !226

348:                                              ; preds = %346
  %349 = load i64, ptr %37, align 8
  %350 = trunc i64 %349 to i32
  %351 = load i32, ptr %28, align 8
  %352 = shl i32 %350, 16
  %353 = and i32 %352, 16711680
  %354 = and i32 %351, -16711681
  %355 = or disjoint i32 %353, %354
  store i32 %355, ptr %28, align 8
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef null) #21
  tail call void @set_mem_attributes(ptr noundef nonnull %28, ptr noundef nonnull %0, i32 noundef 1) #21
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef nonnull %28) #21
  br label %356

356:                                              ; preds = %346, %348, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @vector_type_mode(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !prof !227 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 14
  br i1 %4, label %6, label %5, !prof !228

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2115, ptr noundef nonnull @.str.1) #21
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !137
  %14 = add i8 %13, -12
  %15 = icmp ult i8 %14, 6
  br i1 %15, label %16, label %67, !prof !229

16:                                               ; preds = %6
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 59), align 8, !tbaa !230
  %18 = tail call zeroext i8 %17(i32 noundef %10) #21, !prof !231
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20, !prof !232

20:                                               ; preds = %16
  %21 = getelementptr inbounds [87 x i8], ptr @have_regs_of_mode, i64 0, i64 %11
  %22 = load i8, ptr %21, align 1, !tbaa !137
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %67

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !137
  %27 = getelementptr inbounds %struct.tree_type, ptr %26, i64 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !137
  %34 = icmp eq i8 %33, 2
  br i1 %34, label %35, label %66, !prof !232

35:                                               ; preds = %24
  %36 = load i32, ptr %7, align 4
  %37 = and i32 %36, 1023
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %31
  %40 = load i8, ptr %39, align 1, !tbaa !137
  %41 = zext i8 %40 to i64
  %42 = shl nuw nsw i64 %41, 3
  %43 = shl i64 %42, %38
  %44 = trunc i64 %43 to i32
  %45 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !137
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %60, label %47, !prof !192

47:                                               ; preds = %35, %54
  %48 = phi i8 [ %56, %54 ], [ %45, %35 ]
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %49
  %51 = load i16, ptr %50, align 2, !tbaa !181
  %52 = zext i16 %51 to i32
  %53 = icmp eq i32 %52, %44
  br i1 %53, label %58, label %54, !prof !233

54:                                               ; preds = %47
  %55 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %49
  %56 = load i8, ptr %55, align 1, !tbaa !137
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %60, label %47, !prof !234, !llvm.loop !184

58:                                               ; preds = %47
  %59 = zext i8 %48 to i32
  br label %60

60:                                               ; preds = %54, %35, %58
  %61 = phi i32 [ %59, %58 ], [ 1, %35 ], [ 1, %54 ]
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds [87 x i8], ptr @have_regs_of_mode, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !137
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %67, !prof !235

66:                                               ; preds = %60, %24
  br label %67

67:                                               ; preds = %6, %20, %66, %60
  %68 = phi i32 [ 1, %66 ], [ %61, %60 ], [ %10, %6 ], [ %10, %20 ]
  ret i32 %68
}

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare i32 @x86_field_alignment(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @set_mem_attributes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @relayout_decl(ptr noundef %0) local_unnamed_addr #11 !prof !125 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  store ptr null, ptr %2, align 8, !tbaa !137
  %3 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !137
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
  store i32 0, ptr %11, align 8, !tbaa !137
  br label %12

12:                                               ; preds = %10, %1
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef null) #21
  tail call void @layout_decl(ptr noundef nonnull %0, i32 noundef 0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @start_record_layout(ptr noundef %0) local_unnamed_addr #11 !prof !125 {
  %2 = tail call ptr @xmalloc(i64 noundef 64) #21
  store ptr %0, ptr %2, align 8, !tbaa !236
  %3 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !137
  %5 = tail call i32 @llvm.umax.i32(i32 %4, i32 8)
  %6 = getelementptr inbounds %struct.record_layout_info_s, ptr %2, i64 0, i32 4
  store i32 %5, ptr %6, align 8, !tbaa !238
  %7 = getelementptr inbounds %struct.record_layout_info_s, ptr %2, i64 0, i32 5
  store i32 %5, ptr %7, align 4, !tbaa !239
  %8 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !141
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 128, i32 256
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %struct.record_layout_info_s, ptr %2, i64 0, i32 2
  store i32 %12, ptr %13, align 8, !tbaa !240
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !126
  %15 = getelementptr inbounds %struct.record_layout_info_s, ptr %2, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !241
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !126
  %17 = getelementptr inbounds %struct.record_layout_info_s, ptr %2, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !242
  %18 = getelementptr inbounds %struct.record_layout_info_s, ptr %2, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  ret ptr %2
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @bit_from_pos(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !243 {
  %3 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !126
  %4 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %3, ptr noundef %0) #21
  %5 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 21), align 8, !tbaa !126
  %6 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %4, ptr noundef %5) #21
  %7 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %1, ptr noundef %6) #21
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local ptr @byte_from_pos(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !244 {
  %3 = load ptr, ptr @sizetype_tab, align 16, !tbaa !126
  %4 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 21), align 8, !tbaa !126
  %5 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 67, ptr noundef %1, ptr noundef %4) #21
  %6 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %3, ptr noundef %5) #21
  %7 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %0, ptr noundef %6) #21
  ret ptr %7
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pos_from_bit(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #11 !prof !125 {
  %5 = load ptr, ptr @sizetype_tab, align 16, !tbaa !126
  %6 = zext i32 %2 to i64
  %7 = tail call ptr @size_int_kind(i64 noundef %6, i32 noundef 2) #21
  %8 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 69, ptr noundef %3, ptr noundef %7) #21
  %9 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %5, ptr noundef %8) #21
  %10 = lshr i32 %2, 3
  %11 = zext nneg i32 %10 to i64
  %12 = tail call ptr @size_int_kind(i64 noundef %11, i32 noundef 0) #21
  %13 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %9, ptr noundef %12) #21
  store ptr %13, ptr %0, align 8, !tbaa !126
  %14 = tail call ptr @size_int_kind(i64 noundef %6, i32 noundef 2) #21
  %15 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 73, ptr noundef %3, ptr noundef %14) #21
  store ptr %15, ptr %1, align 8, !tbaa !126
  ret void
}

declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @normalize_offset(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #12 !prof !245 {
  %4 = load ptr, ptr %1, align 8, !tbaa !126
  %5 = zext i32 %2 to i64
  %6 = tail call i32 @compare_tree_int(ptr noundef %4, i64 noundef %5) #21
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %23, !prof !246

8:                                                ; preds = %3
  %9 = load ptr, ptr %1, align 8, !tbaa !126
  %10 = tail call ptr @size_int_kind(i64 noundef %5, i32 noundef 2) #21
  %11 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 69, ptr noundef %9, ptr noundef %10) #21
  %12 = load ptr, ptr %0, align 8, !tbaa !126
  %13 = load ptr, ptr @sizetype_tab, align 16, !tbaa !126
  %14 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %13, ptr noundef %11) #21
  %15 = lshr i32 %2, 3
  %16 = zext nneg i32 %15 to i64
  %17 = tail call ptr @size_int_kind(i64 noundef %16, i32 noundef 0) #21
  %18 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %14, ptr noundef %17) #21
  %19 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %12, ptr noundef %18) #21
  store ptr %19, ptr %0, align 8, !tbaa !126
  %20 = load ptr, ptr %1, align 8, !tbaa !126
  %21 = tail call ptr @size_int_kind(i64 noundef %5, i32 noundef 2) #21
  %22 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 73, ptr noundef %20, ptr noundef %21) #21
  store ptr %22, ptr %1, align 8, !tbaa !126
  br label %23

23:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_rli(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !125 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !126
  %3 = load ptr, ptr %0, align 8, !tbaa !236
  tail call void @print_node_brief(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef %3, i32 noundef 0) #21
  %4 = load ptr, ptr @stderr, align 8, !tbaa !126
  %5 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !241
  tail call void @print_node_brief(ptr noundef %4, ptr noundef nonnull @.str.7, ptr noundef %6, i32 noundef 0) #21
  %7 = load ptr, ptr @stderr, align 8, !tbaa !126
  %8 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !242
  tail call void @print_node_brief(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef %9, i32 noundef 0) #21
  %10 = load ptr, ptr @stderr, align 8, !tbaa !126
  %11 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !238
  %13 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !239
  %15 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !240
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.9, i32 noundef %12, i32 noundef %14, i32 noundef %16) #22
  %18 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 18), align 8, !tbaa !212
  %19 = load ptr, ptr %0, align 8, !tbaa !236
  %20 = tail call zeroext i8 %18(ptr noundef %19) #21
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load ptr, ptr @stderr, align 8, !tbaa !126
  %24 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 8
  %25 = load i32, ptr %24, align 8, !tbaa !247
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.10, i32 noundef %25) #22
  br label %27

27:                                               ; preds = %22, %1
  %28 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 9
  %29 = load i32, ptr %28, align 4, !tbaa !248
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr @stderr, align 8, !tbaa !126
  %33 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 24, i64 1, ptr %32) #22
  br label %34

34:                                               ; preds = %31, %27
  %35 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !249
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr @stderr, align 8, !tbaa !126
  %40 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 17, i64 1, ptr %39) #22
  %41 = load ptr, ptr %35, align 8, !tbaa !249
  tail call void @debug_tree(ptr noundef %41) #21
  br label %42

42:                                               ; preds = %38, %34
  ret void
}

declare void @print_node_brief(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @debug_tree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @normalize_rli(ptr nocapture noundef %0) local_unnamed_addr #11 !prof !125 {
  %2 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !240
  tail call void @normalize_offset(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %5)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @rli_size_unit_so_far(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !125 {
  %2 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !241
  %4 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !242
  %6 = tail call ptr @byte_from_pos(ptr noundef %3, ptr noundef %5)
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @rli_size_so_far(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !125 {
  %2 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !241
  %4 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !242
  %6 = tail call ptr @bit_from_pos(ptr noundef %3, ptr noundef %5)
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local i32 @update_alignment_for_field(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #12 !prof !250 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !137
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %143, label %9, !prof !251

9:                                                ; preds = %3
  tail call void @layout_decl(ptr noundef %1, i32 noundef %2)
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !137
  %12 = load i64, ptr %1, align 8
  %13 = load ptr, ptr @global_trees, align 16, !tbaa !126
  %14 = icmp eq ptr %5, %13
  br i1 %14, label %24, label %15, !prof !251

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !137
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19, !prof !252

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !137
  %22 = tail call i32 @integer_zerop(ptr noundef %21) #21
  %23 = icmp eq i32 %22, 0
  br label %24

24:                                               ; preds = %19, %15, %9
  %25 = phi i1 [ false, %15 ], [ false, %9 ], [ %23, %19 ]
  %26 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 18), align 8, !tbaa !212
  %27 = load ptr, ptr %0, align 8, !tbaa !236
  %28 = tail call zeroext i8 %26(ptr noundef %27) #21, !prof !253
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %72, label %30, !prof !254

30:                                               ; preds = %24
  br i1 %25, label %35, label %31

31:                                               ; preds = %30
  %32 = load i64, ptr %1, align 8
  %33 = and i64 %32, 2199023255552
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %57, label %35

35:                                               ; preds = %31, %30
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !137
  %38 = tail call i32 @integer_zerop(ptr noundef %37) #21
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i64, ptr %1, align 8
  %42 = and i64 %41, 2199023255552
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %57, label %137

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !255
  %47 = icmp eq ptr %46, null
  br i1 %47, label %137, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.tree_field_decl, ptr %46, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !137
  %51 = icmp eq ptr %50, null
  br i1 %51, label %137, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tree_decl_common, ptr %46, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !137
  %55 = tail call i32 @integer_zerop(ptr noundef %54) #21
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %137

57:                                               ; preds = %52, %40, %31
  %58 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 7
  %59 = load i32, ptr %58, align 8, !tbaa !137
  %60 = tail call i32 @llvm.umax.i32(i32 %59, i32 %11)
  %61 = load i32, ptr @maximum_field_alignment, align 4
  %62 = icmp eq i32 %61, 0
  %63 = tail call i32 @llvm.umin.i32(i32 %60, i32 %61)
  %64 = select i1 %62, i32 %60, i32 %63
  %65 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 4
  %66 = load i32, ptr %65, align 8, !tbaa !238
  %67 = tail call i32 @llvm.umax.i32(i32 %66, i32 %64)
  store i32 %67, ptr %65, align 8, !tbaa !238
  %68 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 5
  %69 = load i32, ptr %68, align 4, !tbaa !239
  %70 = load i32, ptr %58, align 8, !tbaa !137
  %71 = tail call i32 @llvm.umax.i32(i32 %69, i32 %70)
  store i32 %71, ptr %68, align 4, !tbaa !239
  br label %137

72:                                               ; preds = %24
  br i1 %25, label %73, label %128, !prof !256

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !137
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %81, !prof !257

77:                                               ; preds = %73
  %78 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 21), align 8, !tbaa !258
  %79 = tail call zeroext i8 %78() #21, !prof !259
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %137, label %81, !prof !260

81:                                               ; preds = %77, %73
  %82 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 7
  %83 = load i32, ptr %82, align 8, !tbaa !137
  %84 = load i64, ptr %5, align 8
  %85 = and i64 %84, 4398046511104
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %89, !prof !261

87:                                               ; preds = %81
  %88 = tail call i32 @x86_field_alignment(ptr noundef nonnull %1, i32 noundef %83) #21
  br label %89

89:                                               ; preds = %87, %81
  %90 = phi i32 [ %83, %81 ], [ %88, %87 ]
  %91 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !137
  %93 = tail call i32 @integer_zerop(ptr noundef %92) #21
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %101, label %95, !prof !261

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
  br i1 %103, label %106, label %104, !prof !261

104:                                              ; preds = %101
  %105 = tail call i32 @llvm.umin.i32(i32 %90, i32 %102)
  br label %112

106:                                              ; preds = %101
  %107 = load i64, ptr %1, align 8
  %108 = and i64 %107, 2199023255552
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %112, label %110, !prof !261

110:                                              ; preds = %106
  %111 = tail call i32 @llvm.umin.i32(i32 %90, i32 8)
  br label %112

112:                                              ; preds = %104, %110, %106, %95, %98
  %113 = phi i32 [ %100, %98 ], [ %90, %95 ], [ %105, %104 ], [ %111, %110 ], [ %90, %106 ]
  %114 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 4
  %115 = load i32, ptr %114, align 8, !tbaa !238
  %116 = tail call i32 @llvm.umax.i32(i32 %115, i32 %11)
  %117 = tail call i32 @llvm.umax.i32(i32 %116, i32 %113)
  store i32 %117, ptr %114, align 8, !tbaa !238
  %118 = load i32, ptr @warn_packed, align 4, !tbaa !141
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %125, label %120, !prof !261

120:                                              ; preds = %112
  %121 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 5
  %122 = load i32, ptr %121, align 4, !tbaa !239
  %123 = load i32, ptr %82, align 8, !tbaa !137
  %124 = tail call i32 @llvm.umax.i32(i32 %122, i32 %123)
  store i32 %124, ptr %121, align 4, !tbaa !239
  br label %125

125:                                              ; preds = %120, %112
  %126 = load i64, ptr %5, align 8
  %127 = or i64 %126, %12
  br label %137

128:                                              ; preds = %72
  %129 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 4
  %130 = load i32, ptr %129, align 8, !tbaa !238
  %131 = tail call i32 @llvm.umax.i32(i32 %130, i32 %11)
  store i32 %131, ptr %129, align 8, !tbaa !238
  %132 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 5
  %133 = load i32, ptr %132, align 4, !tbaa !239
  %134 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 7
  %135 = load i32, ptr %134, align 8, !tbaa !137
  %136 = tail call i32 @llvm.umax.i32(i32 %133, i32 %135)
  store i32 %136, ptr %132, align 4, !tbaa !239
  br label %137

137:                                              ; preds = %128, %125, %77, %40, %44, %48, %52, %57
  %138 = phi i64 [ %12, %52 ], [ %12, %57 ], [ %12, %48 ], [ %12, %44 ], [ %12, %40 ], [ %127, %125 ], [ %12, %77 ], [ %12, %128 ]
  %139 = load ptr, ptr %0, align 8, !tbaa !236
  %140 = load i64, ptr %139, align 8
  %141 = and i64 %138, 4398046511104
  %142 = or i64 %140, %141
  store i64 %142, ptr %139, align 8
  br label %143

143:                                              ; preds = %3, %137
  %144 = phi i32 [ %11, %137 ], [ 0, %3 ]
  ret i32 %144
}

; Function Attrs: nounwind uwtable
define dso_local void @place_field(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !250 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9, !prof !251

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1043, ptr noundef nonnull @.str.1) #21
  br label %9

9:                                                ; preds = %2, %8
  %10 = load i64, ptr %1, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %581 [
    i16 32, label %12
    i16 31, label %16
  ], !prof !262

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !249
  %15 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %1, ptr noundef %14) #21
  store ptr %15, ptr %13, align 8, !tbaa !249
  br label %581

16:                                               ; preds = %9
  %17 = load ptr, ptr %0, align 8, !tbaa !236
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 16
  br i1 %20, label %63, label %21, !prof !263

21:                                               ; preds = %16
  %22 = tail call i32 @update_alignment_for_field(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0)
  %23 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !126
  %24 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !137
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !126
  %26 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 4
  store ptr %25, ptr %26, align 8, !tbaa !137
  %27 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !141
  %28 = and i32 %27, 32
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i64 128, i64 256, !prof !264
  %31 = tail call i32 @exact_log2(i64 noundef %30) #21
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %33 = load i64, ptr %32, align 8
  %34 = and i32 %31, 255
  %35 = zext nneg i32 %34 to i64
  %36 = shl nuw nsw i64 %35, 32
  %37 = and i64 %33, -1095216660481
  %38 = or disjoint i64 %36, %37
  store i64 %38, ptr %32, align 8
  %39 = load ptr, ptr %3, align 8, !tbaa !137
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %581, label %43, !prof !265

43:                                               ; preds = %21
  %44 = load ptr, ptr %0, align 8, !tbaa !236
  %45 = load i64, ptr %44, align 8
  %46 = trunc i64 %45 to i16
  switch i16 %46, label %581 [
    i16 17, label %47
    i16 18, label %53
  ], !prof !266

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !241
  %50 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !137
  %52 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 81, ptr noundef %49, ptr noundef %51) #21
  store ptr %52, ptr %48, align 8, !tbaa !241
  br label %581

53:                                               ; preds = %43
  %54 = load i32, ptr @input_location, align 4, !tbaa !141
  %55 = load ptr, ptr @sizetype_tab, align 16, !tbaa !126
  %56 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !137
  %58 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !137
  %60 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !241
  %62 = tail call ptr @fold_build3_stat_loc(i32 noundef %54, i32 noundef 56, ptr noundef %55, ptr noundef %57, ptr noundef %59, ptr noundef %61) #21
  store ptr %62, ptr %60, align 8, !tbaa !241
  br label %581

63:                                               ; preds = %16
  %64 = load i64, ptr %4, align 8
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %87, !prof !267

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !241
  %70 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 1
  store ptr %69, ptr %70, align 8, !tbaa !137
  %71 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !242
  %73 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 4
  store ptr %72, ptr %73, align 8, !tbaa !137
  %74 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !240
  %76 = sub i32 0, %75
  %77 = and i32 %75, %76
  %78 = zext i32 %77 to i64
  %79 = tail call i32 @exact_log2(i64 noundef %78) #21
  %80 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %81 = load i64, ptr %80, align 8
  %82 = and i32 %79, 255
  %83 = zext nneg i32 %82 to i64
  %84 = shl nuw nsw i64 %83, 32
  %85 = and i64 %81, -1095216660481
  %86 = or disjoint i64 %84, %85
  store i64 %86, ptr %80, align 8
  br label %581

87:                                               ; preds = %63
  %88 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !242
  %90 = tail call i32 @integer_zerop(ptr noundef %89) #21
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %100, !prof !268

92:                                               ; preds = %87
  %93 = load ptr, ptr %88, align 8, !tbaa !242
  %94 = tail call i64 @tree_low_cst(ptr noundef %93, i32 noundef 1) #21
  %95 = load ptr, ptr %88, align 8, !tbaa !242
  %96 = tail call i64 @tree_low_cst(ptr noundef %95, i32 noundef 1) #21
  %97 = sub nsw i64 0, %96
  %98 = and i64 %94, %97
  %99 = trunc i64 %98 to i32
  br label %121

100:                                              ; preds = %87
  %101 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !241
  %103 = tail call i32 @integer_zerop(ptr noundef %102) #21
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %121, !prof !269

105:                                              ; preds = %100
  %106 = load ptr, ptr %101, align 8, !tbaa !241
  %107 = tail call i32 @host_integerp(ptr noundef %106, i32 noundef 1) #21
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %118, label %109, !prof !270

109:                                              ; preds = %105
  %110 = load ptr, ptr %101, align 8, !tbaa !241
  %111 = tail call i64 @tree_low_cst(ptr noundef %110, i32 noundef 1) #21
  %112 = load ptr, ptr %101, align 8, !tbaa !241
  %113 = tail call i64 @tree_low_cst(ptr noundef %112, i32 noundef 1) #21
  %114 = sub nsw i64 0, %113
  %115 = and i64 %111, %114
  %116 = trunc i64 %115 to i32
  %117 = shl i32 %116, 3
  br label %121

118:                                              ; preds = %105
  %119 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 2
  %120 = load i32, ptr %119, align 8, !tbaa !240
  br label %121

121:                                              ; preds = %100, %118, %109, %92
  %122 = phi i32 [ %117, %109 ], [ %120, %118 ], [ %99, %92 ], [ 0, %100 ]
  %123 = tail call i32 @update_alignment_for_field(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %122)
  %124 = icmp eq i32 %122, 0
  br i1 %124, label %125, label %133, !prof !271

125:                                              ; preds = %121
  %126 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !141
  %127 = and i32 %126, 32
  %128 = icmp eq i32 %127, 0
  %129 = select i1 %128, i32 128, i32 256, !prof !272
  %130 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 4
  %131 = load i32, ptr %130, align 8, !tbaa !238
  %132 = tail call i32 @llvm.umax.i32(i32 %129, i32 %131)
  br label %133

133:                                              ; preds = %125, %121
  %134 = phi i32 [ %132, %125 ], [ %122, %121 ]
  %135 = load i32, ptr @warn_packed, align 4, !tbaa !141
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %156, label %137, !prof !273

137:                                              ; preds = %133
  %138 = load i64, ptr %1, align 8
  %139 = and i64 %138, 2199023255552
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %156, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 7
  %143 = load i32, ptr %142, align 8, !tbaa !137
  %144 = icmp ult i32 %134, %143
  br i1 %144, label %154, label %145

145:                                              ; preds = %141
  %146 = icmp ugt i32 %143, %123
  br i1 %146, label %147, label %156

147:                                              ; preds = %145
  %148 = load ptr, ptr %0, align 8, !tbaa !236
  %149 = load i64, ptr %148, align 8
  %150 = and i64 %149, 2199023255552
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 45, ptr noundef nonnull @.str.13, ptr noundef nonnull %1) #21
  br label %156

154:                                              ; preds = %141
  %155 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 9
  store i32 1, ptr %155, align 4, !tbaa !248
  br label %156

156:                                              ; preds = %154, %147, %152, %145, %137, %133
  %157 = icmp ult i32 %134, %123
  br i1 %157, label %158, label %195, !prof !274

158:                                              ; preds = %156
  %159 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 18), align 8, !tbaa !212
  %160 = load ptr, ptr %0, align 8, !tbaa !236
  %161 = tail call zeroext i8 %159(ptr noundef %160) #21, !prof !275
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %195, !prof !276

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 1
  %165 = load i32, ptr %164, align 8, !tbaa !137
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %169, label %167, !prof !277

167:                                              ; preds = %163
  %168 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 157, ptr noundef nonnull @.str.14, ptr noundef nonnull %1) #21
  br label %169

169:                                              ; preds = %167, %163
  %170 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 2
  %171 = load i32, ptr %170, align 8, !tbaa !240
  %172 = icmp ult i32 %123, %171
  br i1 %172, label %173, label %176, !prof !276

173:                                              ; preds = %169
  %174 = load ptr, ptr %88, align 8, !tbaa !242
  %175 = tail call ptr @round_up_loc(i32 noundef 0, ptr noundef %174, i32 noundef %123) #21
  store ptr %175, ptr %88, align 8, !tbaa !242
  br label %188

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !241
  %179 = load ptr, ptr @sizetype_tab, align 16, !tbaa !126
  %180 = load ptr, ptr %88, align 8, !tbaa !242
  %181 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 21), align 8, !tbaa !126
  %182 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 68, ptr noundef %180, ptr noundef %181) #21
  %183 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %179, ptr noundef %182) #21
  %184 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %178, ptr noundef %183) #21
  store ptr %184, ptr %177, align 8, !tbaa !241
  %185 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !126
  store ptr %185, ptr %88, align 8, !tbaa !242
  %186 = lshr i32 %123, 3
  %187 = tail call ptr @round_up_loc(i32 noundef 0, ptr noundef %184, i32 noundef %186) #21
  store ptr %187, ptr %177, align 8, !tbaa !241
  br label %188

188:                                              ; preds = %176, %173
  %189 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !241
  %191 = load i64, ptr %190, align 8
  %192 = and i64 %191, 131072
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %195, !prof !277

194:                                              ; preds = %188
  store i32 %123, ptr %170, align 8, !tbaa !240
  br label %195

195:                                              ; preds = %188, %194, %158, %156
  %196 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 18), align 8, !tbaa !212
  %197 = load ptr, ptr %0, align 8, !tbaa !236
  %198 = tail call zeroext i8 %196(ptr noundef %197) #21, !prof !278
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %200, label %295, !prof !273

200:                                              ; preds = %195
  %201 = load i64, ptr %1, align 8
  %202 = and i64 %201, 65535
  %203 = icmp ne i64 %202, 31
  %204 = load ptr, ptr @global_trees, align 16
  %205 = icmp eq ptr %4, %204
  %206 = select i1 %203, i1 true, i1 %205, !prof !267
  br i1 %206, label %295, label %207, !prof !267

207:                                              ; preds = %200
  %208 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %209 = load i64, ptr %208, align 8
  %210 = and i64 %209, 33554432
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %295, label %212, !prof !279

212:                                              ; preds = %207
  %213 = and i64 %201, 2199023255552
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %222, label %215, !prof !280

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 7
  %217 = load i32, ptr %216, align 8, !tbaa !137
  %218 = icmp ult i32 %217, 9
  %219 = load i32, ptr @maximum_field_alignment, align 4
  %220 = icmp eq i32 %219, 0
  %221 = select i1 %218, i1 %220, i1 false
  br i1 %221, label %225, label %295

222:                                              ; preds = %212
  %223 = load i32, ptr @maximum_field_alignment, align 4, !tbaa !141
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %295, !prof !280

225:                                              ; preds = %222, %215
  %226 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !137
  %228 = tail call i32 @integer_zerop(ptr noundef %227) #21
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %295, !prof !280

230:                                              ; preds = %225
  %231 = load ptr, ptr %226, align 8, !tbaa !137
  %232 = tail call i32 @host_integerp(ptr noundef %231, i32 noundef 1) #21
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %295, label %234, !prof !281

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !241
  %237 = tail call i32 @host_integerp(ptr noundef %236, i32 noundef 1) #21
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %295, label %239, !prof !281

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !137
  %242 = tail call i32 @host_integerp(ptr noundef %241, i32 noundef 1) #21
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %295, label %244, !prof !281

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 7
  %246 = load i32, ptr %245, align 8, !tbaa !137
  %247 = load ptr, ptr %226, align 8, !tbaa !137
  %248 = tail call i64 @tree_low_cst(ptr noundef %247, i32 noundef 1) #21
  %249 = load ptr, ptr %235, align 8, !tbaa !241
  %250 = tail call i64 @tree_low_cst(ptr noundef %249, i32 noundef 0) #21
  %251 = load ptr, ptr %88, align 8, !tbaa !242
  %252 = tail call i64 @tree_low_cst(ptr noundef %251, i32 noundef 0) #21
  %253 = load i64, ptr %4, align 8
  %254 = and i64 %253, 4398046511104
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %258, !prof !280

256:                                              ; preds = %244
  %257 = tail call i32 @x86_field_alignment(ptr noundef nonnull %1, i32 noundef %246) #21
  br label %258

258:                                              ; preds = %256, %244
  %259 = phi i32 [ %246, %244 ], [ %257, %256 ]
  %260 = zext i32 %259 to i64
  %261 = shl nsw i64 %250, 3
  %262 = add nsw i64 %252, %261
  %263 = urem i64 %262, %260
  %264 = add i64 %248, -1
  %265 = add i64 %264, %263
  %266 = add i64 %265, %260
  %267 = udiv i64 %266, %260
  %268 = load ptr, ptr %240, align 8, !tbaa !137
  %269 = tail call i64 @tree_low_cst(ptr noundef %268, i32 noundef 1) #21
  %270 = udiv i64 %269, %260
  %271 = icmp ugt i64 %267, %270
  br i1 %271, label %272, label %285, !prof !281

272:                                              ; preds = %258
  %273 = load i64, ptr %1, align 8
  %274 = and i64 %273, 2199023255552
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %281, label %276

276:                                              ; preds = %272
  %277 = load i32, ptr @warn_packed_bitfield_compat, align 4, !tbaa !141
  %278 = icmp eq i32 %277, 1
  br i1 %278, label %279, label %285

279:                                              ; preds = %276
  %280 = load i32, ptr @input_location, align 4, !tbaa !141
  tail call void (i32, ptr, ...) @inform(i32 noundef %280, ptr noundef nonnull @.str.15, ptr noundef nonnull %1) #21
  br label %285

281:                                              ; preds = %272
  %282 = load i32, ptr @input_location, align 4, !tbaa !141
  %283 = load ptr, ptr %88, align 8, !tbaa !242
  %284 = tail call ptr @round_up_loc(i32 noundef %282, ptr noundef %283, i32 noundef %259) #21
  store ptr %284, ptr %88, align 8, !tbaa !242
  br label %285

285:                                              ; preds = %281, %279, %276, %258
  %286 = load i64, ptr %1, align 8
  %287 = and i64 %286, 2199023255552
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %289, label %295, !prof !280

289:                                              ; preds = %285
  %290 = load i64, ptr %4, align 8
  %291 = load ptr, ptr %0, align 8, !tbaa !236
  %292 = load i64, ptr %291, align 8
  %293 = and i64 %290, 4398046511104
  %294 = or i64 %292, %293
  store i64 %294, ptr %291, align 8
  br label %295

295:                                              ; preds = %215, %285, %289, %239, %234, %230, %225, %222, %207, %200, %195
  %296 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 18), align 8, !tbaa !212
  %297 = load ptr, ptr %0, align 8, !tbaa !236
  %298 = tail call zeroext i8 %296(ptr noundef %297) #21, !prof !278
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %449, label %300, !prof !273

300:                                              ; preds = %295
  %301 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 6
  %302 = load ptr, ptr %301, align 8, !tbaa !255
  %303 = icmp eq ptr %302, null
  br i1 %303, label %307, label %304

304:                                              ; preds = %300
  %305 = getelementptr inbounds %struct.tree_field_decl, ptr %302, i64 0, i32 2
  %306 = load ptr, ptr %305, align 8, !tbaa !137
  br label %307

307:                                              ; preds = %300, %304
  %308 = phi ptr [ %306, %304 ], [ null, %300 ]
  br i1 %303, label %393, label %309

309:                                              ; preds = %307
  %310 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 2
  %311 = load ptr, ptr %310, align 8, !tbaa !137
  %312 = icmp eq ptr %311, null
  br i1 %312, label %365, label %313

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %315 = load ptr, ptr %314, align 8, !tbaa !137
  %316 = tail call i32 @integer_zerop(ptr noundef %315) #21
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %365

318:                                              ; preds = %313
  %319 = load ptr, ptr %301, align 8, !tbaa !255
  %320 = getelementptr inbounds %struct.tree_decl_common, ptr %319, i64 0, i32 1
  %321 = load ptr, ptr %320, align 8, !tbaa !137
  %322 = tail call i32 @integer_zerop(ptr noundef %321) #21
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %365

324:                                              ; preds = %318
  %325 = load ptr, ptr %301, align 8, !tbaa !255
  %326 = getelementptr inbounds %struct.tree_decl_common, ptr %325, i64 0, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !137
  %328 = tail call i32 @host_integerp(ptr noundef %327, i32 noundef 0) #21
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %365, label %330

330:                                              ; preds = %324
  %331 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 2
  %332 = load ptr, ptr %331, align 8, !tbaa !137
  %333 = tail call i32 @host_integerp(ptr noundef %332, i32 noundef 0) #21
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %365, label %335

335:                                              ; preds = %330
  %336 = load ptr, ptr %331, align 8, !tbaa !137
  %337 = getelementptr inbounds %struct.tree_type, ptr %308, i64 0, i32 2
  %338 = load ptr, ptr %337, align 8, !tbaa !137
  %339 = tail call i32 @simple_cst_equal(ptr noundef %336, ptr noundef %338) #21
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %365, label %341

341:                                              ; preds = %335
  %342 = load ptr, ptr %314, align 8, !tbaa !137
  %343 = tail call i64 @tree_low_cst(ptr noundef %342, i32 noundef 1) #21
  %344 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 8
  %345 = load i32, ptr %344, align 8, !tbaa !247
  %346 = sext i32 %345 to i64
  %347 = icmp sgt i64 %343, %346
  br i1 %347, label %348, label %360

348:                                              ; preds = %341
  %349 = load ptr, ptr %331, align 8, !tbaa !137
  %350 = tail call i64 @tree_low_cst(ptr noundef %349, i32 noundef 1) #21
  %351 = load ptr, ptr %88, align 8, !tbaa !242
  %352 = load i32, ptr %344, align 8, !tbaa !247
  %353 = sext i32 %352 to i64
  %354 = tail call ptr @size_int_kind(i64 noundef %353, i32 noundef 2) #21
  %355 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %351, ptr noundef %354) #21
  store ptr %355, ptr %88, align 8, !tbaa !242
  store ptr %1, ptr %301, align 8, !tbaa !255
  %356 = icmp slt i64 %350, %343
  %357 = sub nsw i64 %350, %343
  %358 = trunc i64 %357 to i32
  %359 = select i1 %356, i32 0, i32 %358
  br label %363

360:                                              ; preds = %341
  %361 = trunc i64 %343 to i32
  %362 = sub i32 %345, %361
  br label %363

363:                                              ; preds = %360, %348
  %364 = phi i32 [ %359, %348 ], [ %362, %360 ]
  store i32 %364, ptr %344, align 8, !tbaa !247
  br label %388

365:                                              ; preds = %335, %330, %324, %318, %313, %309
  %366 = load ptr, ptr %301, align 8, !tbaa !255
  %367 = getelementptr inbounds %struct.tree_decl_common, ptr %366, i64 0, i32 1
  %368 = load ptr, ptr %367, align 8, !tbaa !137
  %369 = tail call i32 @integer_zerop(ptr noundef %368) #21
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %378

371:                                              ; preds = %365
  %372 = load ptr, ptr %88, align 8, !tbaa !242
  %373 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 8
  %374 = load i32, ptr %373, align 8, !tbaa !247
  %375 = sext i32 %374 to i64
  %376 = tail call ptr @size_int_kind(i64 noundef %375, i32 noundef 2) #21
  %377 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %372, ptr noundef %376) #21
  store ptr %377, ptr %88, align 8, !tbaa !242
  br label %378

378:                                              ; preds = %365, %371
  %379 = phi ptr [ %302, %371 ], [ null, %365 ]
  %380 = load ptr, ptr %310, align 8, !tbaa !137
  %381 = icmp eq ptr %380, null
  br i1 %381, label %387, label %382

382:                                              ; preds = %378
  %383 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %384 = load ptr, ptr %383, align 8, !tbaa !137
  %385 = tail call i32 @integer_zerop(ptr noundef %384) #21
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %388, label %387

387:                                              ; preds = %382, %378
  store ptr null, ptr %301, align 8, !tbaa !255
  br label %388

388:                                              ; preds = %382, %387, %363
  %389 = phi ptr [ %379, %387 ], [ %379, %382 ], [ %302, %363 ]
  %390 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %391 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 2
  %392 = load i32, ptr %391, align 8, !tbaa !240
  tail call void @normalize_offset(ptr noundef nonnull %390, ptr noundef nonnull %88, i32 noundef %392)
  br label %393

393:                                              ; preds = %388, %307
  %394 = phi ptr [ %389, %388 ], [ %302, %307 ]
  %395 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 2
  %396 = load ptr, ptr %395, align 8, !tbaa !137
  %397 = icmp eq ptr %396, null
  br i1 %397, label %412, label %398

398:                                              ; preds = %393
  %399 = icmp eq ptr %394, null
  br i1 %399, label %407, label %400

400:                                              ; preds = %398
  %401 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 2
  %402 = load ptr, ptr %401, align 8, !tbaa !137
  %403 = getelementptr inbounds %struct.tree_type, ptr %308, i64 0, i32 2
  %404 = load ptr, ptr %403, align 8, !tbaa !137
  %405 = tail call i32 @simple_cst_equal(ptr noundef %402, ptr noundef %404) #21
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %412, label %449

407:                                              ; preds = %398
  %408 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %409 = load ptr, ptr %408, align 8, !tbaa !137
  %410 = tail call i32 @integer_zerop(ptr noundef %409) #21
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %449

412:                                              ; preds = %407, %400, %393
  %413 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %414 = load ptr, ptr %413, align 8, !tbaa !137
  %415 = icmp eq ptr %414, null
  br i1 %415, label %438, label %416

416:                                              ; preds = %412
  %417 = load ptr, ptr %3, align 8, !tbaa !137
  %418 = getelementptr inbounds %struct.tree_type, ptr %417, i64 0, i32 2
  %419 = load ptr, ptr %418, align 8, !tbaa !137
  %420 = tail call i32 @host_integerp(ptr noundef %419, i32 noundef 1) #21
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %438, label %422

422:                                              ; preds = %416
  %423 = load ptr, ptr %413, align 8, !tbaa !137
  %424 = tail call i32 @host_integerp(ptr noundef %423, i32 noundef 1) #21
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %438, label %426

426:                                              ; preds = %422
  %427 = load ptr, ptr %413, align 8, !tbaa !137
  %428 = tail call i64 @tree_low_cst(ptr noundef %427, i32 noundef 1) #21
  %429 = load ptr, ptr %3, align 8, !tbaa !137
  %430 = getelementptr inbounds %struct.tree_type, ptr %429, i64 0, i32 2
  %431 = load ptr, ptr %430, align 8, !tbaa !137
  %432 = tail call i64 @tree_low_cst(ptr noundef %431, i32 noundef 1) #21
  %433 = icmp ult i64 %432, %428
  %434 = sub i64 %432, %428
  %435 = trunc i64 %434 to i32
  %436 = select i1 %433, i32 0, i32 %435
  %437 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 8
  store i32 %436, ptr %437, align 8, !tbaa !247
  br label %438

438:                                              ; preds = %426, %422, %416, %412
  %439 = load ptr, ptr %3, align 8, !tbaa !137
  %440 = getelementptr inbounds %struct.tree_type, ptr %439, i64 0, i32 7
  %441 = load i32, ptr %440, align 8, !tbaa !137
  %442 = load i32, ptr @maximum_field_alignment, align 4
  %443 = icmp eq i32 %442, 0
  %444 = tail call i32 @llvm.umin.i32(i32 %441, i32 %442)
  %445 = select i1 %443, i32 %441, i32 %444
  %446 = load i32, ptr @input_location, align 4, !tbaa !141
  %447 = load ptr, ptr %88, align 8, !tbaa !242
  %448 = tail call ptr @round_up_loc(i32 noundef %446, ptr noundef %447, i32 noundef %445) #21
  store ptr %448, ptr %88, align 8, !tbaa !242
  store ptr null, ptr %301, align 8, !tbaa !255
  br label %449

449:                                              ; preds = %400, %407, %438, %295
  %450 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %451 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 2
  %452 = load i32, ptr %451, align 8, !tbaa !240
  tail call void @normalize_offset(ptr noundef nonnull %450, ptr noundef nonnull %88, i32 noundef %452)
  %453 = load ptr, ptr %450, align 8, !tbaa !241
  %454 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 1
  store ptr %453, ptr %454, align 8, !tbaa !137
  %455 = load ptr, ptr %88, align 8, !tbaa !242
  %456 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 4
  store ptr %455, ptr %456, align 8, !tbaa !137
  %457 = load i32, ptr %451, align 8, !tbaa !240
  %458 = sub i32 0, %457
  %459 = and i32 %457, %458
  %460 = zext i32 %459 to i64
  %461 = tail call i32 @exact_log2(i64 noundef %460) #21
  %462 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %463 = load i64, ptr %462, align 8
  %464 = and i32 %461, 255
  %465 = zext nneg i32 %464 to i64
  %466 = shl nuw nsw i64 %465, 32
  %467 = and i64 %463, -1095216660481
  %468 = or disjoint i64 %466, %467
  store i64 %468, ptr %462, align 8
  %469 = load ptr, ptr %456, align 8, !tbaa !137
  %470 = tail call i32 @integer_zerop(ptr noundef %469) #21
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %472, label %480, !prof !282

472:                                              ; preds = %449
  %473 = load ptr, ptr %456, align 8, !tbaa !137
  %474 = tail call i64 @tree_low_cst(ptr noundef %473, i32 noundef 1) #21
  %475 = load ptr, ptr %456, align 8, !tbaa !137
  %476 = tail call i64 @tree_low_cst(ptr noundef %475, i32 noundef 1) #21
  %477 = sub nsw i64 0, %476
  %478 = and i64 %474, %477
  %479 = trunc i64 %478 to i32
  br label %511

480:                                              ; preds = %449
  %481 = load ptr, ptr %454, align 8, !tbaa !137
  %482 = tail call i32 @integer_zerop(ptr noundef %481) #21
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %492, label %484, !prof !283

484:                                              ; preds = %480
  %485 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !141
  %486 = and i32 %485, 32
  %487 = icmp eq i32 %486, 0
  %488 = select i1 %487, i32 128, i32 256, !prof !272
  %489 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 4
  %490 = load i32, ptr %489, align 8, !tbaa !238
  %491 = tail call i32 @llvm.umax.i32(i32 %488, i32 %490)
  br label %511

492:                                              ; preds = %480
  %493 = load ptr, ptr %454, align 8, !tbaa !137
  %494 = tail call i32 @host_integerp(ptr noundef %493, i32 noundef 1) #21
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %505, label %496, !prof !284

496:                                              ; preds = %492
  %497 = load ptr, ptr %454, align 8, !tbaa !137
  %498 = tail call i64 @tree_low_cst(ptr noundef %497, i32 noundef 1) #21
  %499 = load ptr, ptr %454, align 8, !tbaa !137
  %500 = tail call i64 @tree_low_cst(ptr noundef %499, i32 noundef 1) #21
  %501 = sub nsw i64 0, %500
  %502 = and i64 %498, %501
  %503 = trunc i64 %502 to i32
  %504 = shl i32 %503, 3
  br label %511

505:                                              ; preds = %492
  %506 = load i64, ptr %462, align 8
  %507 = lshr i64 %506, 32
  %508 = and i64 %507, 255
  %509 = shl nuw i64 1, %508
  %510 = trunc i64 %509 to i32
  br label %511

511:                                              ; preds = %484, %505, %496, %472
  %512 = phi i32 [ %491, %484 ], [ %504, %496 ], [ %510, %505 ], [ %479, %472 ]
  %513 = icmp eq i32 %134, %512
  br i1 %513, label %515, label %514, !prof !285

514:                                              ; preds = %511
  tail call void @layout_decl(ptr noundef nonnull %1, i32 noundef %512)
  br label %515

515:                                              ; preds = %514, %511
  %516 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 6
  %517 = load ptr, ptr %516, align 8, !tbaa !255
  %518 = icmp eq ptr %517, null
  br i1 %518, label %519, label %524, !prof !286

519:                                              ; preds = %515
  %520 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 2
  %521 = load ptr, ptr %520, align 8, !tbaa !137
  %522 = icmp eq ptr %521, null
  br i1 %522, label %524, label %523, !prof !287

523:                                              ; preds = %519
  store ptr %1, ptr %516, align 8, !tbaa !255
  br label %524

524:                                              ; preds = %523, %519, %515
  %525 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %526 = load ptr, ptr %525, align 8, !tbaa !137
  %527 = icmp eq ptr %526, null
  br i1 %527, label %581, label %528, !prof !267

528:                                              ; preds = %524
  %529 = load i64, ptr %526, align 8
  %530 = and i64 %529, 134283263
  %531 = icmp eq i64 %530, 23
  br i1 %531, label %546, label %532, !prof !273

532:                                              ; preds = %528
  %533 = load ptr, ptr %450, align 8, !tbaa !241
  %534 = load ptr, ptr @sizetype_tab, align 16, !tbaa !126
  %535 = load ptr, ptr %88, align 8, !tbaa !242
  %536 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 21), align 8, !tbaa !126
  %537 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 68, ptr noundef %535, ptr noundef %536) #21
  %538 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %534, ptr noundef %537) #21
  %539 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %533, ptr noundef %538) #21
  store ptr %539, ptr %450, align 8, !tbaa !241
  %540 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 4
  %541 = load ptr, ptr %540, align 8, !tbaa !137
  %542 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %539, ptr noundef %541) #21
  store ptr %542, ptr %450, align 8, !tbaa !241
  %543 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !126
  store ptr %543, ptr %88, align 8, !tbaa !242
  %544 = load i32, ptr %451, align 8, !tbaa !240
  %545 = tail call i32 @llvm.umin.i32(i32 %544, i32 %123)
  store i32 %545, ptr %451, align 8, !tbaa !240
  br label %581

546:                                              ; preds = %528
  %547 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 18), align 8, !tbaa !212
  %548 = load ptr, ptr %0, align 8, !tbaa !236
  %549 = tail call zeroext i8 %547(ptr noundef %548) #21, !prof !278
  %550 = icmp eq i8 %549, 0
  %551 = load ptr, ptr %88, align 8, !tbaa !242
  %552 = load ptr, ptr %525, align 8, !tbaa !137
  %553 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %551, ptr noundef %552) #21
  store ptr %553, ptr %88, align 8, !tbaa !242
  br i1 %550, label %579, label %554, !prof !273

554:                                              ; preds = %546
  %555 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 1
  %556 = load ptr, ptr %555, align 8, !tbaa !137
  %557 = icmp eq ptr %556, null
  br i1 %557, label %562, label %558

558:                                              ; preds = %554
  %559 = load i64, ptr %556, align 8
  %560 = and i64 %559, 65535
  %561 = icmp eq i64 %560, 31
  br i1 %561, label %577, label %562

562:                                              ; preds = %558, %554
  %563 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 2
  %564 = load ptr, ptr %563, align 8, !tbaa !137
  %565 = icmp eq ptr %564, null
  br i1 %565, label %577, label %566

566:                                              ; preds = %562
  %567 = load ptr, ptr %525, align 8, !tbaa !137
  %568 = tail call i32 @integer_zerop(ptr noundef %567) #21
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %577

570:                                              ; preds = %566
  %571 = load ptr, ptr %88, align 8, !tbaa !242
  %572 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 8
  %573 = load i32, ptr %572, align 8, !tbaa !247
  %574 = sext i32 %573 to i64
  %575 = tail call ptr @size_int_kind(i64 noundef %574, i32 noundef 2) #21
  %576 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %571, ptr noundef %575) #21
  store ptr %576, ptr %88, align 8, !tbaa !242
  br label %577

577:                                              ; preds = %562, %570, %566, %558
  %578 = load i32, ptr %451, align 8, !tbaa !240
  tail call void @normalize_offset(ptr noundef nonnull %450, ptr noundef nonnull %88, i32 noundef %578)
  br label %581

579:                                              ; preds = %546
  %580 = load i32, ptr %451, align 8, !tbaa !240
  tail call void @normalize_offset(ptr noundef nonnull %450, ptr noundef nonnull %88, i32 noundef %580)
  br label %581

581:                                              ; preds = %53, %47, %43, %21, %524, %577, %579, %532, %9, %67, %12
  ret void
}

declare i32 @exact_log2(i64 noundef) local_unnamed_addr #3

declare ptr @round_up_loc(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @compute_record_mode(ptr nocapture noundef %0) local_unnamed_addr #12 !prof !288 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -16711681
  %5 = or disjoint i32 %4, 65536
  store i32 %5, ptr %2, align 4
  %6 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !137
  %8 = tail call i32 @host_integerp(ptr noundef %7, i32 noundef 1) #21
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %138, label %10, !prof !289

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !137
  %13 = icmp eq ptr %12, null
  br i1 %13, label %74, label %14, !prof !290

14:                                               ; preds = %10, %69
  %15 = phi ptr [ %72, %69 ], [ %12, %10 ]
  %16 = phi i32 [ %70, %69 ], [ 0, %10 ]
  %17 = load i64, ptr %15, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 31
  br i1 %19, label %20, label %69, !prof !291

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !137
  %23 = load i64, ptr %22, align 8
  %24 = trunc i64 %23 to i16
  switch i16 %24, label %27 [
    i16 0, label %138
    i16 14, label %25
  ], !prof !292

25:                                               ; preds = %20
  %26 = tail call i32 @vector_type_mode(ptr noundef nonnull %22), !range !205
  br label %32

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.tree_type, ptr %22, i64 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  br label %32

32:                                               ; preds = %27, %25
  %33 = phi i32 [ %26, %25 ], [ %31, %27 ]
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %48, !prof !293

35:                                               ; preds = %32
  %36 = load ptr, ptr %21, align 8, !tbaa !137
  %37 = getelementptr inbounds %struct.tree_type, ptr %36, i64 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 1024
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48, !prof !294

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.tree_type, ptr %36, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !137
  %44 = icmp eq ptr %43, null
  br i1 %44, label %138, label %45, !prof !295

45:                                               ; preds = %41
  %46 = tail call i32 @integer_zerop(ptr noundef nonnull %43) #21
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %138, label %48, !prof !296

48:                                               ; preds = %45, %35, %32
  %49 = tail call ptr @bit_position(ptr noundef nonnull %15) #21
  %50 = tail call i32 @host_integerp(ptr noundef %49, i32 noundef 1) #21
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %138, label %52, !prof !297

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !137
  %55 = icmp eq ptr %54, null
  br i1 %55, label %138, label %56, !prof !297

56:                                               ; preds = %52
  %57 = tail call i32 @host_integerp(ptr noundef nonnull %54, i32 noundef 1) #21
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %138, label %59, !prof !297

59:                                               ; preds = %56
  %60 = load ptr, ptr %6, align 8, !tbaa !137
  %61 = load ptr, ptr %53, align 8, !tbaa !137
  %62 = tail call i32 @simple_cst_equal(ptr noundef %60, ptr noundef %61) #21
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64, !prof !298

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 2
  %66 = load i64, ptr %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = and i32 %67, 255
  br label %69

69:                                               ; preds = %59, %64, %14
  %70 = phi i32 [ %16, %14 ], [ %68, %64 ], [ %16, %59 ]
  %71 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !137
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %14, !prof !299, !llvm.loop !300

74:                                               ; preds = %69, %10
  %75 = phi i32 [ 0, %10 ], [ %70, %69 ]
  %76 = load i64, ptr %0, align 8
  %77 = and i64 %76, 65535
  %78 = icmp eq i64 %77, 16
  %79 = icmp ne i32 %75, 0
  %80 = select i1 %78, i1 %79, i1 false, !prof !301
  br i1 %80, label %81, label %98, !prof !302

81:                                               ; preds = %74
  %82 = load ptr, ptr %6, align 8, !tbaa !137
  %83 = tail call i32 @host_integerp(ptr noundef %82, i32 noundef 1) #21
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %98, label %85, !prof !303

85:                                               ; preds = %81
  %86 = zext nneg i32 %75 to i64
  %87 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !137
  %89 = zext i8 %88 to i64
  %90 = shl nuw nsw i64 %89, 3
  %91 = load ptr, ptr %6, align 8, !tbaa !137
  %92 = getelementptr inbounds %struct.tree_int_cst, ptr %91, i64 0, i32 1
  %93 = load i64, ptr %92, align 8, !tbaa !137
  %94 = icmp eq i64 %90, %93
  br i1 %94, label %95, label %98, !prof !304

95:                                               ; preds = %85
  %96 = shl nuw nsw i32 %75, 16
  %97 = and i32 %96, 16711680
  br label %128

98:                                               ; preds = %85, %81, %74
  %99 = load ptr, ptr %6, align 8, !tbaa !137
  %100 = tail call i32 @host_integerp(ptr noundef %99, i32 noundef 1) #21
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %128, label %102, !prof !185

102:                                              ; preds = %98
  %103 = tail call i64 @tree_low_cst(ptr noundef %99, i32 noundef 1) #21
  %104 = icmp ult i64 %103, 4294967296
  br i1 %104, label %105, label %128, !prof !186

105:                                              ; preds = %102
  %106 = trunc i64 %103 to i32
  %107 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 17), align 1, !tbaa !137
  %108 = zext i8 %107 to i32
  %109 = shl nuw nsw i32 %108, 3
  %110 = icmp ult i32 %109, %106
  %111 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2
  %112 = icmp eq i8 %111, 0
  %113 = select i1 %110, i1 true, i1 %112
  br i1 %113, label %128, label %114, !prof !214

114:                                              ; preds = %105, %121
  %115 = phi i8 [ %123, %121 ], [ %111, %105 ]
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %116
  %118 = load i16, ptr %117, align 2, !tbaa !181
  %119 = zext i16 %118 to i64
  %120 = icmp eq i64 %103, %119
  br i1 %120, label %125, label %121, !prof !189

121:                                              ; preds = %114
  %122 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %116
  %123 = load i8, ptr %122, align 1, !tbaa !137
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %128, label %114, !prof !190, !llvm.loop !184

125:                                              ; preds = %114
  %126 = zext i8 %115 to i32
  %127 = shl nuw nsw i32 %126, 16
  br label %128

128:                                              ; preds = %125, %105, %102, %98, %121, %95
  %129 = phi i32 [ %97, %95 ], [ 65536, %98 ], [ 65536, %102 ], [ 65536, %105 ], [ %127, %125 ], [ 65536, %121 ]
  %130 = load i32, ptr %2, align 4
  %131 = and i32 %130, -16711681
  %132 = or disjoint i32 %131, %129
  store i32 %132, ptr %2, align 4
  %133 = load i64, ptr %0, align 8
  %134 = and i64 %133, 65535
  %135 = icmp eq i64 %134, 14
  br i1 %135, label %136, label %138, !prof !305

136:                                              ; preds = %128
  %137 = tail call i32 @vector_type_mode(ptr noundef nonnull %0), !range !205
  br label %138

138:                                              ; preds = %45, %41, %48, %52, %56, %20, %136, %128, %1
  ret void
}

declare ptr @bit_position(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @finish_record_layout(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !288 {
  %3 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 2
  store i32 8, ptr %3, align 8, !tbaa !240
  %4 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 3
  tail call void @normalize_offset(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 8)
  %6 = load ptr, ptr %0, align 8, !tbaa !236
  %7 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !137
  %9 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !238
  %11 = tail call i32 @llvm.umax.i32(i32 %8, i32 %10)
  store i32 %11, ptr %7, align 8, !tbaa !137
  %12 = load ptr, ptr %4, align 8, !tbaa !241
  %13 = load ptr, ptr %5, align 8, !tbaa !242
  %14 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !126
  %15 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %14, ptr noundef %12) #21
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 21), align 8, !tbaa !126
  %17 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %15, ptr noundef %16) #21
  %18 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %13, ptr noundef %17) #21
  %19 = load ptr, ptr %4, align 8, !tbaa !241
  %20 = load ptr, ptr %5, align 8, !tbaa !242
  %21 = load ptr, ptr @sizetype_tab, align 16, !tbaa !126
  %22 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 21), align 8, !tbaa !126
  %23 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 67, ptr noundef %20, ptr noundef %22) #21
  %24 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %21, ptr noundef %23) #21
  %25 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %19, ptr noundef %24) #21
  %26 = load ptr, ptr %5, align 8, !tbaa !242
  %27 = tail call i32 @integer_zerop(ptr noundef %26) #21
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32, !prof !306

29:                                               ; preds = %2
  %30 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 18), align 16, !tbaa !126
  %31 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %25, ptr noundef %30) #21
  br label %32

32:                                               ; preds = %29, %2
  %33 = phi ptr [ %25, %2 ], [ %31, %29 ]
  %34 = load i32, ptr @input_location, align 4, !tbaa !141
  %35 = load ptr, ptr %0, align 8, !tbaa !236
  %36 = getelementptr inbounds %struct.tree_type, ptr %35, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !137
  %38 = tail call ptr @round_up_loc(i32 noundef %34, ptr noundef %18, i32 noundef %37) #21
  %39 = load ptr, ptr %0, align 8, !tbaa !236
  %40 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 2
  store ptr %38, ptr %40, align 8, !tbaa !137
  %41 = load i32, ptr @input_location, align 4, !tbaa !141
  %42 = load ptr, ptr %0, align 8, !tbaa !236
  %43 = getelementptr inbounds %struct.tree_type, ptr %42, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !137
  %45 = lshr i32 %44, 3
  %46 = tail call ptr @round_up_loc(i32 noundef %41, ptr noundef %33, i32 noundef %45) #21
  %47 = load ptr, ptr %0, align 8, !tbaa !236
  %48 = getelementptr inbounds %struct.tree_type, ptr %47, i64 0, i32 3
  store ptr %46, ptr %48, align 8, !tbaa !137
  %49 = load i64, ptr %18, align 8
  %50 = and i64 %49, 131072
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %63, label %52, !prof !289

52:                                               ; preds = %32
  %53 = load ptr, ptr %0, align 8, !tbaa !236
  %54 = getelementptr inbounds %struct.tree_type, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !137
  %56 = tail call i32 @simple_cst_equal(ptr noundef nonnull %18, ptr noundef %55) #21
  %57 = icmp eq i32 %56, 0
  %58 = load i32, ptr @input_location, align 4
  %59 = icmp ne i32 %58, 1
  %60 = select i1 %57, i1 %59, i1 false, !prof !307
  br i1 %60, label %61, label %63, !prof !307

61:                                               ; preds = %52
  %62 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 157, ptr noundef nonnull @.str.20) #21
  br label %63

63:                                               ; preds = %61, %52, %32
  %64 = load i32, ptr @warn_packed, align 4, !tbaa !141
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %114, label %66, !prof !308

66:                                               ; preds = %63
  %67 = load ptr, ptr %0, align 8, !tbaa !236
  %68 = load i64, ptr %67, align 8
  %69 = and i64 %68, 2199023321087
  %70 = icmp eq i64 %69, 2199023255568
  br i1 %70, label %71, label %114

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 9
  %73 = load i32, ptr %72, align 4, !tbaa !248
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %114

75:                                               ; preds = %71
  %76 = load i64, ptr %18, align 8
  %77 = and i64 %76, 131072
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %114, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.tree_type, ptr %67, i64 0, i32 7
  %81 = load i32, ptr %80, align 8, !tbaa !137
  %82 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 5
  %83 = load i32, ptr %82, align 4, !tbaa !239
  %84 = tail call i32 @llvm.umax.i32(i32 %81, i32 %83)
  store i32 %84, ptr %82, align 4, !tbaa !239
  %85 = load i32, ptr @input_location, align 4, !tbaa !141
  %86 = getelementptr inbounds %struct.tree_type, ptr %67, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !137
  %88 = tail call ptr @round_up_loc(i32 noundef %85, ptr noundef %87, i32 noundef %84) #21
  %89 = load ptr, ptr %0, align 8, !tbaa !236
  %90 = getelementptr inbounds %struct.tree_type, ptr %89, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !137
  %92 = tail call i32 @simple_cst_equal(ptr noundef %88, ptr noundef %91) #21
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %114, label %94

94:                                               ; preds = %79
  %95 = load ptr, ptr %0, align 8, !tbaa !236
  %96 = load i64, ptr %95, align 8
  %97 = and i64 %96, -2199023255553
  store i64 %97, ptr %95, align 8
  %98 = load ptr, ptr %0, align 8, !tbaa !236
  %99 = getelementptr inbounds %struct.tree_type, ptr %98, i64 0, i32 12
  %100 = load ptr, ptr %99, align 8, !tbaa !137
  %101 = icmp eq ptr %100, null
  br i1 %101, label %112, label %102

102:                                              ; preds = %94
  %103 = load i64, ptr %100, align 8
  %104 = and i64 %103, 65535
  %105 = icmp eq i64 %104, 1
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.tree_decl_minimal, ptr %100, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !137
  br label %109

109:                                              ; preds = %106, %102
  %110 = phi ptr [ %108, %106 ], [ %100, %102 ]
  %111 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 155, ptr noundef nonnull @.str.21, ptr noundef %110) #21
  br label %114

112:                                              ; preds = %94
  %113 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 155, ptr noundef nonnull @.str.22) #21
  br label %114

114:                                              ; preds = %63, %66, %71, %75, %79, %109, %112
  %115 = load ptr, ptr %0, align 8, !tbaa !236
  tail call void @compute_record_mode(ptr noundef %115)
  %116 = load ptr, ptr %0, align 8, !tbaa !236
  tail call fastcc void @finalize_type_size(ptr noundef %116)
  %117 = load ptr, ptr %0, align 8, !tbaa !236
  %118 = getelementptr inbounds %struct.tree_type, ptr %117, i64 0, i32 15
  %119 = load ptr, ptr %118, align 8, !tbaa !137
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %125, !prof !309

121:                                              ; preds = %125, %114
  %122 = getelementptr inbounds %struct.record_layout_info_s, ptr %0, i64 0, i32 7
  %123 = load ptr, ptr %122, align 8, !tbaa !249
  %124 = icmp eq ptr %123, null
  br i1 %124, label %144, label %136, !prof !175

125:                                              ; preds = %114, %125
  %126 = phi ptr [ %134, %125 ], [ %119, %114 ]
  %127 = load ptr, ptr %0, align 8, !tbaa !236
  %128 = load i64, ptr %127, align 8
  %129 = and i64 %128, 2199023255552
  %130 = load i64, ptr %126, align 8
  %131 = and i64 %130, -2199023255553
  %132 = or disjoint i64 %131, %129
  store i64 %132, ptr %126, align 8
  %133 = getelementptr inbounds %struct.tree_type, ptr %126, i64 0, i32 15
  %134 = load ptr, ptr %133, align 8, !tbaa !137
  %135 = icmp eq ptr %134, null
  br i1 %135, label %121, label %125, !prof !310, !llvm.loop !311

136:                                              ; preds = %121, %136
  %137 = phi ptr [ %142, %136 ], [ %123, %121 ]
  %138 = getelementptr inbounds %struct.tree_list, ptr %137, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !137
  tail call void @layout_decl(ptr noundef %139, i32 noundef 0)
  %140 = load ptr, ptr %122, align 8, !tbaa !249
  %141 = getelementptr inbounds %struct.tree_common, ptr %140, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !137
  store ptr %142, ptr %122, align 8, !tbaa !249
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %136, !prof !175, !llvm.loop !312

144:                                              ; preds = %136, %121
  %145 = icmp eq i32 %1, 0
  br i1 %145, label %147, label %146, !prof !289

146:                                              ; preds = %144
  tail call void @free(ptr noundef %0)
  br label %147

147:                                              ; preds = %146, %144
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @finalize_type_size(ptr noundef %0) unnamed_addr #12 !prof !313 !PGOFuncName !314 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 14
  br i1 %4, label %5, label %7, !prof !315

5:                                                ; preds = %1
  %6 = tail call i32 @vector_type_mode(ptr noundef nonnull %0), !range !205
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
  br i1 %14, label %59, label %15, !prof !316

15:                                               ; preds = %12
  %16 = load i64, ptr %0, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 14
  br i1 %18, label %19, label %21, !prof !317

19:                                               ; preds = %15
  %20 = tail call i32 @vector_type_mode(ptr noundef nonnull %0), !range !205
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
  br i1 %28, label %59, label %29, !prof !318

29:                                               ; preds = %26
  %30 = load i64, ptr %0, align 8
  %31 = trunc i64 %30 to i16
  switch i16 %31, label %34 [
    i16 16, label %59
    i16 17, label %59
    i16 18, label %59
    i16 15, label %59
    i16 14, label %32
  ], !prof !319

32:                                               ; preds = %29
  %33 = tail call i32 @vector_type_mode(ptr noundef nonnull %0), !range !205
  br label %39

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  br label %39

39:                                               ; preds = %34, %32
  %40 = phi i32 [ %33, %32 ], [ %38, %34 ]
  %41 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !141
  %42 = and i32 %41, 32
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 128, i32 256, !prof !320
  %45 = zext nneg i32 %40 to i64
  %46 = getelementptr inbounds [87 x i8], ptr @mode_base_align, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !137
  %48 = icmp eq i8 %47, 0
  %49 = zext i8 %47 to i32
  %50 = shl nuw nsw i32 %49, 3
  %51 = tail call i32 @llvm.umin.i32(i32 %50, i32 %44)
  %52 = select i1 %48, i32 1, i32 %51, !prof !321
  %53 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 7
  %54 = load i32, ptr %53, align 8, !tbaa !137
  %55 = icmp ult i32 %52, %54
  br i1 %55, label %59, label %56, !prof !321

56:                                               ; preds = %39
  store i32 %52, ptr %53, align 8, !tbaa !137
  %57 = load i64, ptr %0, align 8
  %58 = and i64 %57, -4398046511105
  store i64 %58, ptr %0, align 8
  br label %59

59:                                               ; preds = %29, %29, %29, %39, %56, %29, %26, %12
  %60 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !137
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %72, !prof !322

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !137
  %66 = icmp eq ptr %65, null
  br i1 %66, label %72, label %67, !prof !323

67:                                               ; preds = %63
  %68 = load ptr, ptr @sizetype_tab, align 16, !tbaa !126
  %69 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 21), align 8, !tbaa !126
  %70 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 69, ptr noundef nonnull %65, ptr noundef %69) #21
  %71 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %68, ptr noundef %70) #21
  store ptr %71, ptr %60, align 8, !tbaa !137
  br label %72

72:                                               ; preds = %67, %63, %59
  %73 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !137
  %75 = icmp eq ptr %74, null
  br i1 %75, label %86, label %76, !prof !322

76:                                               ; preds = %72
  %77 = load i32, ptr @input_location, align 4, !tbaa !141
  %78 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 7
  %79 = load i32, ptr %78, align 8, !tbaa !137
  %80 = tail call ptr @round_up_loc(i32 noundef %77, ptr noundef nonnull %74, i32 noundef %79) #21
  store ptr %80, ptr %73, align 8, !tbaa !137
  %81 = load i32, ptr @input_location, align 4, !tbaa !141
  %82 = load ptr, ptr %60, align 8, !tbaa !137
  %83 = load i32, ptr %78, align 8, !tbaa !137
  %84 = lshr i32 %83, 3
  %85 = tail call ptr @round_up_loc(i32 noundef %81, ptr noundef %82, i32 noundef %84) #21
  store ptr %85, ptr %60, align 8, !tbaa !137
  br label %86

86:                                               ; preds = %76, %72
  %87 = load ptr, ptr %73, align 8, !tbaa !137
  %88 = icmp eq ptr %87, null
  br i1 %88, label %95, label %89, !prof !322

89:                                               ; preds = %86
  %90 = load i64, ptr %87, align 8
  %91 = and i64 %90, 65535
  %92 = icmp eq i64 %91, 23
  br i1 %92, label %95, label %93, !prof !324

93:                                               ; preds = %89
  %94 = tail call ptr @variable_size(ptr noundef nonnull %87)
  store ptr %94, ptr %73, align 8, !tbaa !137
  br label %95

95:                                               ; preds = %93, %89, %86
  %96 = load ptr, ptr %60, align 8, !tbaa !137
  %97 = icmp eq ptr %96, null
  br i1 %97, label %104, label %98, !prof !322

98:                                               ; preds = %95
  %99 = load i64, ptr %96, align 8
  %100 = and i64 %99, 65535
  %101 = icmp eq i64 %100, 23
  br i1 %101, label %104, label %102, !prof !324

102:                                              ; preds = %98
  %103 = tail call ptr @variable_size(ptr noundef nonnull %96)
  store ptr %103, ptr %60, align 8, !tbaa !137
  br label %104

104:                                              ; preds = %102, %98, %95
  %105 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 15
  %106 = load ptr, ptr %105, align 8, !tbaa !137
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %112, !prof !325

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %110 = load ptr, ptr %109, align 8, !tbaa !137
  %111 = icmp eq ptr %110, %0
  br i1 %111, label %150, label %112, !prof !326

112:                                              ; preds = %108, %104
  %113 = load ptr, ptr %73, align 8, !tbaa !137
  %114 = load ptr, ptr %60, align 8, !tbaa !137
  %115 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 7
  %116 = load i32, ptr %115, align 8, !tbaa !137
  %117 = load i64, ptr %0, align 8
  %118 = and i64 %117, 4398046511104
  %119 = and i64 %117, 65535
  %120 = icmp eq i64 %119, 14
  br i1 %120, label %121, label %123, !prof !327

121:                                              ; preds = %112
  %122 = tail call i32 @vector_type_mode(ptr noundef nonnull %0), !range !205
  br label %128

123:                                              ; preds = %112
  %124 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %125 = load i32, ptr %124, align 4
  %126 = lshr i32 %125, 16
  %127 = and i32 %126, 255
  br label %128

128:                                              ; preds = %123, %121
  %129 = phi i32 [ %122, %121 ], [ %127, %123 ]
  %130 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %131 = load ptr, ptr %130, align 8, !tbaa !137
  %132 = icmp eq ptr %131, null
  br i1 %132, label %150, label %133, !prof !328

133:                                              ; preds = %128
  %134 = shl nuw nsw i32 %129, 16
  br label %135

135:                                              ; preds = %133, %135
  %136 = phi ptr [ %131, %133 ], [ %148, %135 ]
  %137 = getelementptr inbounds %struct.tree_type, ptr %136, i64 0, i32 2
  store ptr %113, ptr %137, align 8, !tbaa !137
  %138 = getelementptr inbounds %struct.tree_type, ptr %136, i64 0, i32 3
  store ptr %114, ptr %138, align 8, !tbaa !137
  %139 = getelementptr inbounds %struct.tree_type, ptr %136, i64 0, i32 7
  store i32 %116, ptr %139, align 8, !tbaa !137
  %140 = load i64, ptr %136, align 8
  %141 = and i64 %140, -4398046511105
  %142 = or disjoint i64 %141, %118
  store i64 %142, ptr %136, align 8
  %143 = getelementptr inbounds %struct.tree_type, ptr %136, i64 0, i32 6
  %144 = load i32, ptr %143, align 4
  %145 = and i32 %144, -16711681
  %146 = or disjoint i32 %145, %134
  store i32 %146, ptr %143, align 4
  %147 = getelementptr inbounds %struct.tree_type, ptr %136, i64 0, i32 15
  %148 = load ptr, ptr %147, align 8, !tbaa !137
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %135, !prof !329, !llvm.loop !330

150:                                              ; preds = %135, %128, %108
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind uwtable
define dso_local void @finish_builtin_struct(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3) local_unnamed_addr #11 !prof !125 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %4, %6
  %7 = phi ptr [ %11, %6 ], [ %2, %4 ]
  %8 = phi ptr [ %7, %6 ], [ null, %4 ]
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 4
  store ptr %0, ptr %9, align 8, !tbaa !137
  %10 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !137
  store ptr %8, ptr %10, align 8, !tbaa !137
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !331

13:                                               ; preds = %6, %4
  %14 = phi ptr [ null, %4 ], [ %7, %6 ]
  %15 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !137
  %16 = icmp eq ptr %3, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !137
  %20 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 7
  store i32 %19, ptr %20, align 8, !tbaa !137
  %21 = load i64, ptr %3, align 8
  %22 = and i64 %21, 4398046511104
  %23 = load i64, ptr %0, align 8
  %24 = and i64 %23, -4398046511105
  %25 = or disjoint i64 %24, %22
  store i64 %25, ptr %0, align 8
  br label %26

26:                                               ; preds = %17, %13
  tail call void @layout_type(ptr noundef %0)
  %27 = tail call ptr @get_identifier(ptr noundef %1) #21
  %28 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 35, ptr noundef %27, ptr noundef %0) #21
  %29 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 12
  store ptr %28, ptr %29, align 8, !tbaa !137
  %30 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  store ptr %28, ptr %30, align 8, !tbaa !137
  tail call void @layout_decl(ptr noundef %28, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @layout_type(ptr noundef %0) local_unnamed_addr #12 !prof !332 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !333

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1792, ptr noundef nonnull @.str.1) #21
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr @global_trees, align 16, !tbaa !126
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %700, label %7, !prof !333

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !137
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %700, !prof !334

11:                                               ; preds = %7
  %12 = load i64, ptr %0, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %681 [
    i16 22, label %14
    i16 7, label %15
    i16 8, label %22
    i16 6, label %22
    i16 9, label %91
    i16 11, label %144
    i16 13, label %172
    i16 14, label %239
    i16 19, label %367
    i16 5, label %373
    i16 20, label %399
    i16 21, label %399
    i16 10, label %424
    i16 12, label %424
    i16 15, label %471
    i16 16, label %639
    i16 17, label %639
    i16 18, label %639
  ], !prof !335

14:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1806, ptr noundef nonnull @.str.1) #21
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

22:                                               ; preds = %11, %15, %20, %11
  %23 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %24 = load ptr, ptr %23, align 8, !tbaa !137
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 23
  br i1 %27, label %28, label %34, !prof !336

28:                                               ; preds = %22
  %29 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %24) #21
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %34, !prof !337

31:                                               ; preds = %28
  %32 = load i64, ptr %0, align 8
  %33 = or i64 %32, 2097152
  store i64 %33, ptr %0, align 8
  br label %34

34:                                               ; preds = %31, %28, %22
  %35 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %36 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !137
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %52, label %38, !prof !192

38:                                               ; preds = %34
  %39 = load i32, ptr %35, align 4
  %40 = trunc i32 %39 to i16
  %41 = and i16 %40, 1023
  br label %42

42:                                               ; preds = %38, %48
  %43 = phi i8 [ %50, %48 ], [ %36, %38 ]
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !181
  %47 = icmp ugt i16 %41, %46
  br i1 %47, label %48, label %53, !prof !338

48:                                               ; preds = %42
  %49 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %44
  %50 = load i8, ptr %49, align 1, !tbaa !137
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %42, !prof !339, !llvm.loop !194

52:                                               ; preds = %48, %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 430, ptr noundef nonnull @.str.1) #21
  br label %55

53:                                               ; preds = %42
  %54 = zext i8 %43 to i32
  br label %55

55:                                               ; preds = %53, %52
  %56 = phi i32 [ 0, %52 ], [ %54, %53 ]
  %57 = load i32, ptr %35, align 4
  %58 = shl nuw nsw i32 %56, 16
  %59 = and i32 %57, -16711681
  %60 = or disjoint i32 %59, %58
  store i32 %60, ptr %35, align 4
  %61 = load i64, ptr %0, align 8
  %62 = and i64 %61, 65535
  %63 = icmp eq i64 %62, 14
  br i1 %63, label %64, label %66, !prof !340

64:                                               ; preds = %55
  %65 = tail call i32 @vector_type_mode(ptr noundef nonnull %0), !range !205
  br label %66

66:                                               ; preds = %55, %64
  %67 = phi i32 [ %65, %64 ], [ %56, %55 ]
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !137
  %71 = zext i8 %70 to i64
  %72 = shl nuw nsw i64 %71, 3
  %73 = tail call ptr @size_int_kind(i64 noundef %72, i32 noundef 2) #21
  store ptr %73, ptr %8, align 8, !tbaa !137
  %74 = load i64, ptr %0, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 14
  br i1 %76, label %77, label %79, !prof !340

77:                                               ; preds = %66
  %78 = tail call i32 @vector_type_mode(ptr noundef nonnull %0), !range !205
  br label %83

79:                                               ; preds = %66
  %80 = load i32, ptr %35, align 4
  %81 = lshr i32 %80, 16
  %82 = and i32 %81, 255
  br label %83

83:                                               ; preds = %79, %77
  %84 = phi i32 [ %78, %77 ], [ %82, %79 ]
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !137
  %88 = zext i8 %87 to i64
  %89 = tail call ptr @size_int_kind(i64 noundef %88, i32 noundef 0) #21
  %90 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  store ptr %89, ptr %90, align 8, !tbaa !137
  br label %682

91:                                               ; preds = %11
  %92 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, 1023
  %95 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 8), align 8, !tbaa !137
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %110, label %97, !prof !192

97:                                               ; preds = %91, %104
  %98 = phi i8 [ %106, %104 ], [ %95, %91 ]
  %99 = zext i8 %98 to i64
  %100 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %99
  %101 = load i16, ptr %100, align 2, !tbaa !181
  %102 = zext i16 %101 to i32
  %103 = icmp eq i32 %94, %102
  br i1 %103, label %108, label %104, !prof !341

104:                                              ; preds = %97
  %105 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %99
  %106 = load i8, ptr %105, align 1, !tbaa !137
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %110, label %97, !prof !342, !llvm.loop !184

108:                                              ; preds = %97
  %109 = zext i8 %98 to i32
  br label %110

110:                                              ; preds = %104, %91, %108
  %111 = phi i32 [ %109, %108 ], [ 1, %91 ], [ 1, %104 ]
  %112 = shl nuw nsw i32 %111, 16
  %113 = and i32 %93, -16711681
  %114 = or disjoint i32 %112, %113
  store i32 %114, ptr %92, align 4
  %115 = and i64 %12, 65535
  %116 = icmp eq i64 %115, 14
  br i1 %116, label %117, label %119, !prof !343

117:                                              ; preds = %110
  %118 = tail call i32 @vector_type_mode(ptr noundef nonnull %0), !range !205
  br label %119

119:                                              ; preds = %110, %117
  %120 = phi i32 [ %118, %117 ], [ %111, %110 ]
  %121 = zext nneg i32 %120 to i64
  %122 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !137
  %124 = zext i8 %123 to i64
  %125 = shl nuw nsw i64 %124, 3
  %126 = tail call ptr @size_int_kind(i64 noundef %125, i32 noundef 2) #21
  store ptr %126, ptr %8, align 8, !tbaa !137
  %127 = load i64, ptr %0, align 8
  %128 = and i64 %127, 65535
  %129 = icmp eq i64 %128, 14
  br i1 %129, label %130, label %132, !prof !343

130:                                              ; preds = %119
  %131 = tail call i32 @vector_type_mode(ptr noundef nonnull %0), !range !205
  br label %136

132:                                              ; preds = %119
  %133 = load i32, ptr %92, align 4
  %134 = lshr i32 %133, 16
  %135 = and i32 %134, 255
  br label %136

136:                                              ; preds = %132, %130
  %137 = phi i32 [ %131, %130 ], [ %135, %132 ]
  %138 = zext nneg i32 %137 to i64
  %139 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !137
  %141 = zext i8 %140 to i64
  %142 = tail call ptr @size_int_kind(i64 noundef %141, i32 noundef 0) #21
  %143 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  store ptr %142, ptr %143, align 8, !tbaa !137
  br label %682

144:                                              ; preds = %11
  %145 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %146 = load i32, ptr %145, align 4
  %147 = lshr i32 %146, 16
  %148 = and i32 %147, 255
  %149 = zext nneg i32 %148 to i64
  %150 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %149
  %151 = load i8, ptr %150, align 1, !tbaa !137
  %152 = zext i8 %151 to i64
  %153 = shl nuw nsw i64 %152, 3
  %154 = tail call ptr @size_int_kind(i64 noundef %153, i32 noundef 2) #21
  store ptr %154, ptr %8, align 8, !tbaa !137
  %155 = load i64, ptr %0, align 8
  %156 = and i64 %155, 65535
  %157 = icmp eq i64 %156, 14
  br i1 %157, label %158, label %160, !prof !344

158:                                              ; preds = %144
  %159 = tail call i32 @vector_type_mode(ptr noundef nonnull %0), !range !205
  br label %164

160:                                              ; preds = %144
  %161 = load i32, ptr %145, align 4
  %162 = lshr i32 %161, 16
  %163 = and i32 %162, 255
  br label %164

164:                                              ; preds = %160, %158
  %165 = phi i32 [ %159, %158 ], [ %163, %160 ]
  %166 = zext nneg i32 %165 to i64
  %167 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !137
  %169 = zext i8 %168 to i64
  %170 = tail call ptr @size_int_kind(i64 noundef %169, i32 noundef 0) #21
  %171 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  store ptr %170, ptr %171, align 8, !tbaa !137
  br label %682

172:                                              ; preds = %11
  %173 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !137
  %175 = load i64, ptr %174, align 8
  %176 = and i64 %175, 2097152
  %177 = and i64 %12, -2097153
  %178 = or disjoint i64 %176, %177
  store i64 %178, ptr %0, align 8
  %179 = getelementptr inbounds %struct.tree_type, ptr %174, i64 0, i32 6
  %180 = load i32, ptr %179, align 4
  %181 = shl i32 %180, 1
  %182 = and i32 %181, 2046
  %183 = load i64, ptr %174, align 8
  %184 = and i64 %183, 65535
  %185 = icmp eq i64 %184, 9
  %186 = select i1 %185, i64 11, i64 10, !prof !345
  %187 = getelementptr inbounds [18 x i8], ptr @class_narrowest_mode, i64 0, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !137
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %203, label %190, !prof !192

190:                                              ; preds = %172, %197
  %191 = phi i8 [ %199, %197 ], [ %188, %172 ]
  %192 = zext i8 %191 to i64
  %193 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %192
  %194 = load i16, ptr %193, align 2, !tbaa !181
  %195 = zext i16 %194 to i32
  %196 = icmp eq i32 %182, %195
  br i1 %196, label %201, label %197, !prof !346

197:                                              ; preds = %190
  %198 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %192
  %199 = load i8, ptr %198, align 1, !tbaa !137
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %203, label %190, !prof !347, !llvm.loop !184

201:                                              ; preds = %190
  %202 = zext i8 %191 to i32
  br label %203

203:                                              ; preds = %197, %172, %201
  %204 = phi i32 [ %202, %201 ], [ 1, %172 ], [ 1, %197 ]
  %205 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %206 = load i32, ptr %205, align 4
  %207 = shl nuw nsw i32 %204, 16
  %208 = and i32 %206, -16711681
  %209 = or disjoint i32 %208, %207
  store i32 %209, ptr %205, align 4
  %210 = and i64 %12, 65535
  %211 = icmp eq i64 %210, 14
  br i1 %211, label %212, label %214, !prof !348

212:                                              ; preds = %203
  %213 = tail call i32 @vector_type_mode(ptr noundef nonnull %0), !range !205
  br label %214

214:                                              ; preds = %203, %212
  %215 = phi i32 [ %213, %212 ], [ %204, %203 ]
  %216 = zext nneg i32 %215 to i64
  %217 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %216
  %218 = load i8, ptr %217, align 1, !tbaa !137
  %219 = zext i8 %218 to i64
  %220 = shl nuw nsw i64 %219, 3
  %221 = tail call ptr @size_int_kind(i64 noundef %220, i32 noundef 2) #21
  store ptr %221, ptr %8, align 8, !tbaa !137
  %222 = load i64, ptr %0, align 8
  %223 = and i64 %222, 65535
  %224 = icmp eq i64 %223, 14
  br i1 %224, label %225, label %227, !prof !348

225:                                              ; preds = %214
  %226 = tail call i32 @vector_type_mode(ptr noundef nonnull %0), !range !205
  br label %231

227:                                              ; preds = %214
  %228 = load i32, ptr %205, align 4
  %229 = lshr i32 %228, 16
  %230 = and i32 %229, 255
  br label %231

231:                                              ; preds = %227, %225
  %232 = phi i32 [ %226, %225 ], [ %230, %227 ]
  %233 = zext nneg i32 %232 to i64
  %234 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %233
  %235 = load i8, ptr %234, align 1, !tbaa !137
  %236 = zext i8 %235 to i64
  %237 = tail call ptr @size_int_kind(i64 noundef %236, i32 noundef 0) #21
  %238 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  store ptr %237, ptr %238, align 8, !tbaa !137
  br label %682

239:                                              ; preds = %11
  %240 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %241 = load i32, ptr %240, align 4
  %242 = and i32 %241, 1023
  %243 = zext nneg i32 %242 to i64
  %244 = shl nuw i64 1, %243
  %245 = trunc i64 %244 to i32
  %246 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %247 = load ptr, ptr %246, align 8, !tbaa !137
  %248 = and i64 %12, 65535
  %249 = icmp eq i64 %248, 14
  br i1 %249, label %250, label %252, !prof !349

250:                                              ; preds = %239
  %251 = tail call i32 @vector_type_mode(ptr noundef nonnull %0), !range !205
  br label %255

252:                                              ; preds = %239
  %253 = lshr i32 %241, 16
  %254 = and i32 %253, 255
  br label %255

255:                                              ; preds = %252, %250
  %256 = phi i32 [ %251, %250 ], [ %254, %252 ]
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %342, !prof !349

258:                                              ; preds = %255
  %259 = load i64, ptr %247, align 8
  %260 = and i64 %259, 65535
  %261 = icmp eq i64 %260, 14
  br i1 %261, label %262, label %264, !prof !350

262:                                              ; preds = %258
  %263 = tail call i32 @vector_type_mode(ptr noundef nonnull %247), !range !205
  br label %269

264:                                              ; preds = %258
  %265 = getelementptr inbounds %struct.tree_type, ptr %247, i64 0, i32 6
  %266 = load i32, ptr %265, align 4
  %267 = lshr i32 %266, 16
  %268 = and i32 %267, 255
  br label %269

269:                                              ; preds = %264, %262
  %270 = phi i32 [ %263, %262 ], [ %268, %264 ]
  %271 = zext nneg i32 %270 to i64
  %272 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %271
  %273 = load i8, ptr %272, align 1, !tbaa !137
  switch i8 %273, label %278 [
    i8 8, label %279
    i8 9, label %279
    i8 4, label %274
    i8 5, label %275
    i8 6, label %276
    i8 7, label %277
  ], !prof !351

274:                                              ; preds = %269
  br label %279

275:                                              ; preds = %269
  br label %279

276:                                              ; preds = %269
  br label %279

277:                                              ; preds = %269
  br label %279

278:                                              ; preds = %269
  br label %279

279:                                              ; preds = %269, %269, %274, %276, %278, %277, %275
  %280 = phi i1 [ true, %274 ], [ true, %275 ], [ true, %276 ], [ true, %277 ], [ false, %278 ], [ false, %269 ], [ false, %269 ]
  %281 = phi i32 [ 0, %274 ], [ 0, %275 ], [ 0, %276 ], [ 0, %277 ], [ 55, %278 ], [ 78, %269 ], [ 78, %269 ]
  br i1 %280, label %299, label %282, !prof !192

282:                                              ; preds = %279, %294
  %283 = phi i32 [ %297, %294 ], [ %281, %279 ]
  %284 = zext nneg i32 %283 to i64
  %285 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %284
  %286 = load i8, ptr %285, align 1, !tbaa !137
  %287 = zext i8 %286 to i32
  %288 = icmp eq i32 %287, %245
  br i1 %288, label %289, label %294, !prof !352

289:                                              ; preds = %282
  %290 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %284
  %291 = load i8, ptr %290, align 1, !tbaa !137
  %292 = zext i8 %291 to i32
  %293 = icmp eq i32 %270, %292
  br i1 %293, label %322, label %294, !prof !349

294:                                              ; preds = %282, %289
  %295 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %284
  %296 = load i8, ptr %295, align 1, !tbaa !137
  %297 = zext i8 %296 to i32
  %298 = icmp eq i8 %296, 0
  br i1 %298, label %299, label %282, !prof !353, !llvm.loop !354

299:                                              ; preds = %294, %279
  %300 = icmp eq i8 %273, 2
  br i1 %300, label %301, label %322

301:                                              ; preds = %299
  %302 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %271
  %303 = load i8, ptr %302, align 1, !tbaa !137
  %304 = zext i8 %303 to i32
  %305 = shl i32 %245, 3
  %306 = mul i32 %305, %304
  %307 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !137
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %322, label %309

309:                                              ; preds = %301, %316
  %310 = phi i8 [ %318, %316 ], [ %307, %301 ]
  %311 = zext i8 %310 to i64
  %312 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %311
  %313 = load i16, ptr %312, align 2, !tbaa !181
  %314 = zext i16 %313 to i32
  %315 = icmp eq i32 %306, %314
  br i1 %315, label %320, label %316

316:                                              ; preds = %309
  %317 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %311
  %318 = load i8, ptr %317, align 1, !tbaa !137
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %322, label %309, !llvm.loop !184

320:                                              ; preds = %309
  %321 = zext i8 %310 to i32
  br label %322

322:                                              ; preds = %289, %316, %320, %301, %299
  %323 = phi i32 [ 0, %299 ], [ %321, %320 ], [ 1, %301 ], [ 1, %316 ], [ %283, %289 ]
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %337, label %325, !prof !350

325:                                              ; preds = %322
  %326 = zext nneg i32 %323 to i64
  %327 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %326
  %328 = load i8, ptr %327, align 1, !tbaa !137
  %329 = icmp eq i8 %328, 2
  br i1 %329, label %330, label %334, !prof !350

330:                                              ; preds = %325
  %331 = getelementptr inbounds [87 x i8], ptr @have_regs_of_mode, i64 0, i64 %326
  %332 = load i8, ptr %331, align 1, !tbaa !137
  %333 = icmp eq i8 %332, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %330, %325
  %335 = shl nsw i32 %323, 16
  %336 = and i32 %335, 16711680
  br label %337

337:                                              ; preds = %322, %330, %334
  %338 = phi i32 [ %336, %334 ], [ 65536, %330 ], [ 65536, %322 ]
  %339 = load i32, ptr %240, align 4
  %340 = and i32 %339, -16711681
  %341 = or disjoint i32 %340, %338
  store i32 %341, ptr %240, align 4
  br label %342

342:                                              ; preds = %337, %255
  %343 = load ptr, ptr %246, align 8, !tbaa !137
  %344 = load i64, ptr %343, align 8
  %345 = and i64 %344, 2147483648
  %346 = load i64, ptr %0, align 8
  %347 = and i64 %346, -2147483649
  %348 = or disjoint i64 %347, %345
  store i64 %348, ptr %0, align 8
  %349 = load i64, ptr %343, align 8
  %350 = and i64 %349, 2097152
  %351 = and i64 %348, -2097153
  %352 = or disjoint i64 %351, %350
  store i64 %352, ptr %0, align 8
  %353 = getelementptr inbounds %struct.tree_type, ptr %247, i64 0, i32 3
  %354 = load ptr, ptr %353, align 8, !tbaa !137
  %355 = shl i64 4294967296, %243
  %356 = ashr exact i64 %355, 32
  %357 = tail call ptr @size_int_kind(i64 noundef %356, i32 noundef 0) #21
  %358 = tail call ptr @int_const_binop(i32 noundef 65, ptr noundef %354, ptr noundef %357, i32 noundef 0) #21
  %359 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  store ptr %358, ptr %359, align 8, !tbaa !137
  %360 = getelementptr inbounds %struct.tree_type, ptr %247, i64 0, i32 2
  %361 = load ptr, ptr %360, align 8, !tbaa !137
  %362 = tail call ptr @size_int_kind(i64 noundef %356, i32 noundef 2) #21
  %363 = tail call ptr @int_const_binop(i32 noundef 65, ptr noundef %361, ptr noundef %362, i32 noundef 0) #21
  store ptr %363, ptr %8, align 8, !tbaa !137
  %364 = tail call i64 @tree_low_cst(ptr noundef %363, i32 noundef 0) #21
  %365 = trunc i64 %364 to i32
  %366 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 7
  store i32 %365, ptr %366, align 8, !tbaa !137
  br label %682

367:                                              ; preds = %11
  %368 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 7
  store i32 1, ptr %368, align 8, !tbaa !137
  %369 = and i64 %12, -4398046511105
  store i64 %369, ptr %0, align 8
  %370 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %371 = load i32, ptr %370, align 4
  %372 = and i32 %371, -16711681
  store i32 %372, ptr %370, align 4
  br label %682

373:                                              ; preds = %11
  %374 = tail call ptr @size_int_kind(i64 noundef 32, i32 noundef 2) #21
  store ptr %374, ptr %8, align 8, !tbaa !137
  %375 = tail call ptr @size_int_kind(i64 noundef 4, i32 noundef 0) #21
  %376 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  store ptr %375, ptr %376, align 8, !tbaa !137
  %377 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !137
  %378 = icmp eq i8 %377, 0
  br i1 %378, label %392, label %379

379:                                              ; preds = %373, %385
  %380 = phi i8 [ %387, %385 ], [ %377, %373 ]
  %381 = zext i8 %380 to i64
  %382 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %381
  %383 = load i16, ptr %382, align 2, !tbaa !181
  %384 = icmp eq i16 %383, 32
  br i1 %384, label %389, label %385

385:                                              ; preds = %379
  %386 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %381
  %387 = load i8, ptr %386, align 1, !tbaa !137
  %388 = icmp eq i8 %387, 0
  br i1 %388, label %392, label %379, !llvm.loop !184

389:                                              ; preds = %379
  %390 = zext i8 %380 to i32
  %391 = shl nuw nsw i32 %390, 16
  br label %392

392:                                              ; preds = %385, %373, %389
  %393 = phi i32 [ %391, %389 ], [ 65536, %373 ], [ 65536, %385 ]
  %394 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %395 = load i32, ptr %394, align 4
  %396 = and i32 %395, -16712704
  %397 = add nuw nsw i32 %396, %393
  %398 = or disjoint i32 %397, 32
  store i32 %398, ptr %394, align 4
  br label %682

399:                                              ; preds = %11, %11
  %400 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !137
  %401 = icmp eq i8 %400, 0
  br i1 %401, label %415, label %402, !prof !192

402:                                              ; preds = %399, %408
  %403 = phi i8 [ %410, %408 ], [ %400, %399 ]
  %404 = zext i8 %403 to i64
  %405 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %404
  %406 = load i16, ptr %405, align 2, !tbaa !181
  %407 = icmp eq i16 %406, 8
  br i1 %407, label %412, label %408, !prof !355

408:                                              ; preds = %402
  %409 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %404
  %410 = load i8, ptr %409, align 1, !tbaa !137
  %411 = icmp eq i8 %410, 0
  br i1 %411, label %415, label %402, !prof !356, !llvm.loop !184

412:                                              ; preds = %402
  %413 = zext i8 %403 to i32
  %414 = shl nuw nsw i32 %413, 16
  br label %415

415:                                              ; preds = %408, %399, %412
  %416 = phi i32 [ %414, %412 ], [ 65536, %399 ], [ 65536, %408 ]
  %417 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %418 = load i32, ptr %417, align 4
  %419 = and i32 %418, -16711681
  %420 = add nuw nsw i32 %419, %416
  store i32 %420, ptr %417, align 4
  %421 = tail call ptr @size_int_kind(i64 noundef 8, i32 noundef 2) #21
  store ptr %421, ptr %8, align 8, !tbaa !137
  %422 = tail call ptr @size_int_kind(i64 noundef 1, i32 noundef 0) #21
  %423 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  store ptr %422, ptr %423, align 8, !tbaa !137
  br label %682

424:                                              ; preds = %11, %11
  %425 = and i64 %12, 65535
  %426 = icmp eq i64 %425, 14
  br i1 %426, label %427, label %429, !prof !357

427:                                              ; preds = %424
  %428 = tail call i32 @vector_type_mode(ptr noundef nonnull %0), !range !205
  br label %434

429:                                              ; preds = %424
  %430 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %431 = load i32, ptr %430, align 4
  %432 = lshr i32 %431, 16
  %433 = and i32 %432, 255
  br label %434

434:                                              ; preds = %429, %427
  %435 = phi i32 [ %428, %427 ], [ %433, %429 ]
  %436 = load i64, ptr %0, align 8
  %437 = and i64 %436, 65535
  %438 = icmp eq i64 %437, 12
  %439 = load i1, ptr @reference_types_internal, align 4
  %440 = select i1 %438, i1 %439, i1 false, !prof !358
  br i1 %440, label %441, label %449, !prof !357

441:                                              ; preds = %434
  %442 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %443 = load ptr, ptr %442, align 8, !tbaa !137
  %444 = load i64, ptr %443, align 8
  %445 = lshr i64 %444, 56
  %446 = trunc i64 %445 to i8
  %447 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !359
  %448 = tail call i32 %447(i8 noundef zeroext %446) #21
  br label %449

449:                                              ; preds = %441, %434
  %450 = phi i32 [ %448, %441 ], [ %435, %434 ]
  %451 = zext i32 %450 to i64
  %452 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %451
  %453 = load i8, ptr %452, align 1, !tbaa !137
  %454 = zext i8 %453 to i64
  %455 = shl nuw nsw i64 %454, 3
  %456 = tail call ptr @size_int_kind(i64 noundef %455, i32 noundef 2) #21
  store ptr %456, ptr %8, align 8, !tbaa !137
  %457 = load i8, ptr %452, align 1, !tbaa !137
  %458 = zext i8 %457 to i64
  %459 = tail call ptr @size_int_kind(i64 noundef %458, i32 noundef 0) #21
  %460 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  store ptr %459, ptr %460, align 8, !tbaa !137
  %461 = load i64, ptr %0, align 8
  %462 = or i64 %461, 2097152
  store i64 %462, ptr %0, align 8
  %463 = load i8, ptr %452, align 1, !tbaa !137
  %464 = zext i8 %463 to i32
  %465 = shl nuw nsw i32 %464, 3
  %466 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %467 = load i32, ptr %466, align 4
  %468 = and i32 %465, 1016
  %469 = and i32 %467, -1024
  %470 = or disjoint i32 %468, %469
  store i32 %470, ptr %466, align 4
  br label %682

471:                                              ; preds = %11
  %472 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %473 = load ptr, ptr %472, align 8, !tbaa !137
  %474 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %475 = load ptr, ptr %474, align 8, !tbaa !137
  %476 = tail call ptr @build_pointer_type(ptr noundef %475) #21
  %477 = icmp eq ptr %473, null
  br i1 %477, label %515, label %478, !prof !360

478:                                              ; preds = %471
  %479 = getelementptr inbounds %struct.tree_type, ptr %473, i64 0, i32 14
  %480 = load ptr, ptr %479, align 8, !tbaa !137
  %481 = icmp eq ptr %480, null
  br i1 %481, label %515, label %482, !prof !361

482:                                              ; preds = %478
  %483 = getelementptr inbounds %struct.tree_type, ptr %473, i64 0, i32 13
  %484 = load ptr, ptr %483, align 8, !tbaa !137
  %485 = icmp eq ptr %484, null
  br i1 %485, label %515, label %486, !prof !362

486:                                              ; preds = %482
  %487 = getelementptr inbounds %struct.tree_type, ptr %475, i64 0, i32 2
  %488 = load ptr, ptr %487, align 8, !tbaa !137
  %489 = icmp eq ptr %488, null
  br i1 %489, label %515, label %490, !prof !362

490:                                              ; preds = %486
  %491 = tail call i32 @integer_zerop(ptr noundef nonnull %488) #21
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %495, label %493, !prof !363

493:                                              ; preds = %490
  %494 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !126
  br label %504

495:                                              ; preds = %490
  %496 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 18), align 16, !tbaa !126
  %497 = load ptr, ptr @sizetype_tab, align 16, !tbaa !126
  %498 = load i32, ptr @input_location, align 4, !tbaa !141
  %499 = getelementptr inbounds %struct.tree_common, ptr %484, i64 0, i32 2
  %500 = load ptr, ptr %499, align 8, !tbaa !137
  %501 = tail call ptr @fold_build2_stat_loc(i32 noundef %498, i32 noundef 64, ptr noundef %500, ptr noundef nonnull %480, ptr noundef nonnull %484) #21
  %502 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %497, ptr noundef %501) #21
  %503 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %496, ptr noundef %502) #21
  br label %504

504:                                              ; preds = %495, %493
  %505 = phi ptr [ %494, %493 ], [ %503, %495 ]
  %506 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !126
  %507 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %506, ptr noundef %505) #21
  %508 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef nonnull %488, ptr noundef %507) #21
  store ptr %508, ptr %8, align 8, !tbaa !137
  %509 = getelementptr inbounds %struct.tree_type, ptr %475, i64 0, i32 3
  %510 = load ptr, ptr %509, align 8, !tbaa !137
  %511 = icmp eq ptr %510, null
  br i1 %511, label %515, label %512, !prof !362

512:                                              ; preds = %504
  %513 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef nonnull %510, ptr noundef %505) #21
  %514 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  store ptr %513, ptr %514, align 8, !tbaa !137
  br label %515

515:                                              ; preds = %504, %512, %486, %482, %478, %471
  %516 = getelementptr inbounds %struct.tree_type, ptr %475, i64 0, i32 7
  %517 = load i32, ptr %516, align 8, !tbaa !137
  %518 = tail call i32 @llvm.umax.i32(i32 %517, i32 8)
  %519 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 7
  store i32 %518, ptr %519, align 8, !tbaa !137
  %520 = getelementptr inbounds %struct.tree_type, ptr %475, i64 0, i32 2
  %521 = load ptr, ptr %520, align 8, !tbaa !137
  %522 = icmp eq ptr %521, null
  br i1 %522, label %523, label %525, !prof !364

523:                                              ; preds = %515
  %524 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 19
  store ptr null, ptr %524, align 8, !tbaa !137
  br label %525

525:                                              ; preds = %523, %515
  %526 = load i64, ptr %475, align 8
  %527 = and i64 %526, 4398046511104
  %528 = load i64, ptr %0, align 8
  %529 = and i64 %528, -4398046511105
  %530 = or disjoint i64 %529, %527
  store i64 %530, ptr %0, align 8
  %531 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %532 = load i32, ptr %531, align 4
  %533 = and i32 %532, -16711681
  %534 = or disjoint i32 %533, 65536
  store i32 %534, ptr %531, align 4
  %535 = load ptr, ptr %8, align 8, !tbaa !137
  %536 = icmp eq ptr %535, null
  br i1 %536, label %620, label %537, !prof !365

537:                                              ; preds = %525
  %538 = load ptr, ptr %474, align 8, !tbaa !137
  %539 = load i64, ptr %538, align 8
  %540 = and i64 %539, 65535
  %541 = icmp eq i64 %540, 14
  br i1 %541, label %542, label %544, !prof !362

542:                                              ; preds = %537
  %543 = tail call i32 @vector_type_mode(ptr noundef nonnull %538), !range !205
  br label %549

544:                                              ; preds = %537
  %545 = getelementptr inbounds %struct.tree_type, ptr %538, i64 0, i32 6
  %546 = load i32, ptr %545, align 4
  %547 = lshr i32 %546, 16
  %548 = and i32 %547, 255
  br label %549

549:                                              ; preds = %544, %542
  %550 = phi i32 [ %543, %542 ], [ %548, %544 ]
  %551 = icmp eq i32 %550, 1
  br i1 %551, label %552, label %558, !prof !366

552:                                              ; preds = %549
  %553 = load ptr, ptr %474, align 8, !tbaa !137
  %554 = getelementptr inbounds %struct.tree_type, ptr %553, i64 0, i32 6
  %555 = load i32, ptr %554, align 4
  %556 = and i32 %555, 1024
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %620, label %558, !prof !367

558:                                              ; preds = %552, %549
  %559 = load ptr, ptr %8, align 8, !tbaa !137
  %560 = load ptr, ptr %474, align 8, !tbaa !137
  %561 = getelementptr inbounds %struct.tree_type, ptr %560, i64 0, i32 2
  %562 = load ptr, ptr %561, align 8, !tbaa !137
  %563 = tail call i32 @simple_cst_equal(ptr noundef %559, ptr noundef %562) #21
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %580, label %565, !prof !368

565:                                              ; preds = %558
  %566 = load ptr, ptr %474, align 8, !tbaa !137
  %567 = load i64, ptr %566, align 8
  %568 = and i64 %567, 65535
  %569 = icmp eq i64 %568, 14
  br i1 %569, label %570, label %572, !prof !369

570:                                              ; preds = %565
  %571 = tail call i32 @vector_type_mode(ptr noundef nonnull %566), !range !205
  br label %577

572:                                              ; preds = %565
  %573 = getelementptr inbounds %struct.tree_type, ptr %566, i64 0, i32 6
  %574 = load i32, ptr %573, align 4
  %575 = lshr i32 %574, 16
  %576 = and i32 %575, 255
  br label %577

577:                                              ; preds = %572, %570
  %578 = phi i32 [ %571, %570 ], [ %576, %572 ]
  %579 = shl nuw nsw i32 %578, 16
  br label %610

580:                                              ; preds = %558
  %581 = load ptr, ptr %8, align 8, !tbaa !137
  %582 = tail call i32 @host_integerp(ptr noundef %581, i32 noundef 1) #21
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %610, label %584, !prof !185

584:                                              ; preds = %580
  %585 = tail call i64 @tree_low_cst(ptr noundef %581, i32 noundef 1) #21
  %586 = icmp ult i64 %585, 4294967296
  br i1 %586, label %587, label %610, !prof !186

587:                                              ; preds = %584
  %588 = trunc i64 %585 to i32
  %589 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 17), align 1, !tbaa !137
  %590 = zext i8 %589 to i32
  %591 = shl nuw nsw i32 %590, 3
  %592 = icmp ult i32 %591, %588
  %593 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2
  %594 = icmp eq i8 %593, 0
  %595 = select i1 %592, i1 true, i1 %594
  br i1 %595, label %610, label %596, !prof !214

596:                                              ; preds = %587, %603
  %597 = phi i8 [ %605, %603 ], [ %593, %587 ]
  %598 = zext i8 %597 to i64
  %599 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %598
  %600 = load i16, ptr %599, align 2, !tbaa !181
  %601 = zext i16 %600 to i64
  %602 = icmp eq i64 %585, %601
  br i1 %602, label %607, label %603, !prof !189

603:                                              ; preds = %596
  %604 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %598
  %605 = load i8, ptr %604, align 1, !tbaa !137
  %606 = icmp eq i8 %605, 0
  br i1 %606, label %610, label %596, !prof !190, !llvm.loop !184

607:                                              ; preds = %596
  %608 = zext i8 %597 to i32
  %609 = shl nuw nsw i32 %608, 16
  br label %610

610:                                              ; preds = %607, %587, %584, %580, %603, %577
  %611 = phi i32 [ %579, %577 ], [ 65536, %580 ], [ 65536, %584 ], [ 65536, %587 ], [ %609, %607 ], [ 65536, %603 ]
  %612 = load i32, ptr %531, align 4
  %613 = and i32 %612, -16711681
  %614 = or disjoint i32 %613, %611
  store i32 %614, ptr %531, align 4
  %615 = load i64, ptr %0, align 8
  %616 = and i64 %615, 65535
  %617 = icmp eq i64 %616, 14
  br i1 %617, label %618, label %620, !prof !370

618:                                              ; preds = %610
  %619 = tail call i32 @vector_type_mode(ptr noundef nonnull %0), !range !205
  br label %620

620:                                              ; preds = %618, %610, %552, %525
  %621 = getelementptr inbounds %struct.tree_type, ptr %475, i64 0, i32 3
  %622 = load ptr, ptr %621, align 8, !tbaa !137
  %623 = icmp eq ptr %622, null
  br i1 %623, label %682, label %624, !prof !364

624:                                              ; preds = %620
  %625 = load i64, ptr %622, align 8
  %626 = and i64 %625, 134283263
  %627 = icmp eq i64 %626, 23
  br i1 %627, label %628, label %682, !prof !371

628:                                              ; preds = %624
  %629 = tail call i32 @integer_zerop(ptr noundef nonnull %622) #21
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %631, label %682, !prof !371

631:                                              ; preds = %628
  %632 = load ptr, ptr %621, align 8, !tbaa !137
  %633 = load i32, ptr %516, align 8, !tbaa !137
  %634 = lshr i32 %633, 3
  %635 = zext nneg i32 %634 to i64
  %636 = tail call i32 @compare_tree_int(ptr noundef %632, i64 noundef %635) #21
  %637 = icmp slt i32 %636, 0
  br i1 %637, label %638, label %682, !prof !364

638:                                              ; preds = %631
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.16) #21
  br label %682

639:                                              ; preds = %11, %11, %11
  %640 = tail call ptr @xmalloc(i64 noundef 64) #21
  store ptr %0, ptr %640, align 8, !tbaa !236
  %641 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 7
  %642 = load i32, ptr %641, align 8, !tbaa !137
  %643 = tail call i32 @llvm.umax.i32(i32 %642, i32 8)
  %644 = getelementptr inbounds %struct.record_layout_info_s, ptr %640, i64 0, i32 4
  store i32 %643, ptr %644, align 8, !tbaa !238
  %645 = getelementptr inbounds %struct.record_layout_info_s, ptr %640, i64 0, i32 5
  store i32 %643, ptr %645, align 4, !tbaa !239
  %646 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !141
  %647 = and i32 %646, 32
  %648 = icmp eq i32 %647, 0
  %649 = select i1 %648, i32 128, i32 256, !prof !308
  %650 = tail call i32 @llvm.umax.i32(i32 %643, i32 %649)
  %651 = getelementptr inbounds %struct.record_layout_info_s, ptr %640, i64 0, i32 2
  store i32 %650, ptr %651, align 8, !tbaa !240
  %652 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !126
  %653 = getelementptr inbounds %struct.record_layout_info_s, ptr %640, i64 0, i32 1
  store ptr %652, ptr %653, align 8, !tbaa !241
  %654 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !126
  %655 = getelementptr inbounds %struct.record_layout_info_s, ptr %640, i64 0, i32 3
  store ptr %654, ptr %655, align 8, !tbaa !242
  %656 = getelementptr inbounds %struct.record_layout_info_s, ptr %640, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %656, i8 0, i64 24, i1 false)
  %657 = load i64, ptr %0, align 8
  %658 = and i64 %657, 65535
  %659 = icmp eq i64 %658, 18
  br i1 %659, label %660, label %664, !prof !289

660:                                              ; preds = %639
  %661 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %662 = load ptr, ptr %661, align 8, !tbaa !137
  %663 = tail call ptr @nreverse(ptr noundef %662) #21
  store ptr %663, ptr %661, align 8, !tbaa !137
  br label %664

664:                                              ; preds = %660, %639
  %665 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %666 = load ptr, ptr %665, align 8, !tbaa !137
  %667 = icmp eq ptr %666, null
  br i1 %667, label %673, label %668, !prof !372

668:                                              ; preds = %664, %668
  %669 = phi ptr [ %671, %668 ], [ %666, %664 ]
  tail call void @place_field(ptr noundef nonnull %640, ptr noundef nonnull %669)
  %670 = getelementptr inbounds %struct.tree_common, ptr %669, i64 0, i32 1
  %671 = load ptr, ptr %670, align 8, !tbaa !137
  %672 = icmp eq ptr %671, null
  br i1 %672, label %673, label %668, !prof !373, !llvm.loop !374

673:                                              ; preds = %668, %664
  %674 = load i64, ptr %0, align 8
  %675 = and i64 %674, 65535
  %676 = icmp eq i64 %675, 18
  br i1 %676, label %677, label %680, !prof !289

677:                                              ; preds = %673
  %678 = load ptr, ptr %665, align 8, !tbaa !137
  %679 = tail call ptr @nreverse(ptr noundef %678) #21
  store ptr %679, ptr %665, align 8, !tbaa !137
  br label %680

680:                                              ; preds = %677, %673
  tail call void @finish_record_layout(ptr noundef nonnull %640, i32 noundef 1)
  br label %682

681:                                              ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2084, ptr noundef nonnull @.str.1) #21
  br label %682

682:                                              ; preds = %620, %624, %628, %631, %638, %681, %680, %449, %415, %392, %367, %342, %231, %164, %136, %83
  %683 = load i64, ptr %0, align 8
  %684 = trunc i64 %683 to i32
  %685 = and i32 %684, 65535
  %686 = add nsw i32 %685, -16
  %687 = icmp ult i32 %686, 3
  br i1 %687, label %689, label %688, !prof !375

688:                                              ; preds = %682
  tail call fastcc void @finalize_type_size(ptr noundef nonnull %0)
  br label %689

689:                                              ; preds = %682, %688
  %690 = load i64, ptr %0, align 8
  %691 = trunc i64 %690 to i32
  %692 = and i32 %691, 65535
  %693 = add nsw i32 %692, -15
  %694 = icmp ult i32 %693, 4
  br i1 %694, label %695, label %700, !prof !376

695:                                              ; preds = %689
  %696 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 8
  %697 = load i32, ptr %696, align 4, !tbaa !137
  %698 = icmp eq i32 %697, -1
  br i1 %698, label %700, label %699, !prof !377

699:                                              ; preds = %695
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2098, ptr noundef nonnull @.str.1) #21
  br label %700

700:                                              ; preds = %689, %699, %695, %7, %4
  ret void
}

declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #3

declare ptr @int_const_binop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @nreverse(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @make_signed_type(i32 noundef %0) local_unnamed_addr #11 !prof !378 {
  %2 = tail call ptr @make_node_stat(i32 noundef 8) #21
  %3 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %0, 1023
  %6 = and i32 %4, -1024
  %7 = or disjoint i32 %6, %5
  store i32 %7, ptr %3, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 128)
  tail call void @set_min_and_max_values_for_integral_type(ptr noundef %2, i32 noundef %8, i8 noundef zeroext 0)
  tail call void @layout_type(ptr noundef %2)
  ret ptr %2
}

declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @fixup_signed_type(ptr noundef %0) local_unnamed_addr #11 !prof !125 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1023
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 128)
  tail call void @set_min_and_max_values_for_integral_type(ptr noundef %0, i32 noundef %5, i8 noundef zeroext 0)
  tail call void @layout_type(ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @make_unsigned_type(i32 noundef %0) local_unnamed_addr #11 !prof !378 {
  %2 = tail call ptr @make_node_stat(i32 noundef 8) #21
  %3 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %0, 1023
  %6 = and i32 %4, -1024
  %7 = or disjoint i32 %6, %5
  store i32 %7, ptr %3, align 4
  tail call void @fixup_unsigned_type(ptr noundef %2)
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local void @fixup_unsigned_type(ptr noundef %0) local_unnamed_addr #12 !prof !379 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1023
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 128)
  %6 = load i64, ptr %0, align 8
  %7 = or i64 %6, 2097152
  store i64 %7, ptr %0, align 8
  %8 = tail call ptr @build_int_cst(ptr noundef nonnull %0, i64 noundef 0) #21
  %9 = icmp ugt i32 %4, 63
  %10 = zext nneg i32 %5 to i64
  %11 = shl nsw i64 -1, %10
  %12 = xor i64 %11, -1
  %13 = select i1 %9, i64 -1, i64 %12, !prof !380
  %14 = icmp ugt i32 %4, 64
  %15 = sub nuw nsw i32 128, %5
  %16 = zext nneg i32 %15 to i64
  %17 = lshr i64 -1, %16
  %18 = select i1 %14, i64 %17, i64 0, !prof !381
  %19 = tail call ptr @build_int_cst_wide(ptr noundef nonnull %0, i64 noundef %13, i64 noundef %18) #21
  %20 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  store ptr %8, ptr %20, align 8, !tbaa !137
  %21 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  store ptr %19, ptr %21, align 8, !tbaa !137
  tail call void @layout_type(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @make_fract_type(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 !prof !382 {
  %4 = tail call ptr @make_node_stat(i32 noundef 11) #21
  %5 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %0, 1023
  %8 = and i32 %6, -1024
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %5, align 4
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %14, label %11, !prof !383

11:                                               ; preds = %3
  %12 = load i64, ptr %4, align 8
  %13 = or i64 %12, 2147483648
  store i64 %13, ptr %4, align 8
  br label %14

14:                                               ; preds = %11, %3
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %16, label %19, !prof !383

16:                                               ; preds = %14
  %17 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 4), align 4, !tbaa !137
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %52, label %38, !prof !192

19:                                               ; preds = %14
  %20 = load i64, ptr %4, align 8
  %21 = or i64 %20, 2097152
  store i64 %21, ptr %4, align 8
  %22 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 5), align 1, !tbaa !137
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %52, label %24, !prof !192

24:                                               ; preds = %19, %31
  %25 = phi i8 [ %33, %31 ], [ %22, %19 ]
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !181
  %29 = zext i16 %28 to i32
  %30 = icmp eq i32 %29, %0
  br i1 %30, label %35, label %31, !prof !384

31:                                               ; preds = %24
  %32 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %26
  %33 = load i8, ptr %32, align 1, !tbaa !137
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %52, label %24, !prof !219, !llvm.loop !184

35:                                               ; preds = %24
  %36 = zext i8 %25 to i32
  %37 = shl nuw nsw i32 %36, 16
  br label %52

38:                                               ; preds = %16, %45
  %39 = phi i8 [ %47, %45 ], [ %17, %16 ]
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %40
  %42 = load i16, ptr %41, align 2, !tbaa !181
  %43 = zext i16 %42 to i32
  %44 = icmp eq i32 %43, %0
  br i1 %44, label %49, label %45, !prof !384

45:                                               ; preds = %38
  %46 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %40
  %47 = load i8, ptr %46, align 1, !tbaa !137
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %38, !prof !219, !llvm.loop !184

49:                                               ; preds = %38
  %50 = zext i8 %39 to i32
  %51 = shl nuw nsw i32 %50, 16
  br label %52

52:                                               ; preds = %31, %45, %49, %16, %35, %19
  %53 = phi i32 [ %37, %35 ], [ 65536, %19 ], [ %51, %49 ], [ 65536, %16 ], [ 65536, %45 ], [ 65536, %31 ]
  %54 = and i32 %9, -16711681
  %55 = add nuw nsw i32 %53, %54
  store i32 %55, ptr %5, align 4
  tail call void @layout_type(ptr noundef %4)
  ret ptr %4
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @make_accum_type(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 !prof !385 {
  %4 = tail call ptr @make_node_stat(i32 noundef 11) #21
  %5 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %0, 1023
  %8 = and i32 %6, -1024
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %5, align 4
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %14, label %11, !prof !386

11:                                               ; preds = %3
  %12 = load i64, ptr %4, align 8
  %13 = or i64 %12, 2147483648
  store i64 %13, ptr %4, align 8
  br label %14

14:                                               ; preds = %11, %3
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %16, label %19, !prof !386

16:                                               ; preds = %14
  %17 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 6), align 2, !tbaa !137
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %52, label %38, !prof !192

19:                                               ; preds = %14
  %20 = load i64, ptr %4, align 8
  %21 = or i64 %20, 2097152
  store i64 %21, ptr %4, align 8
  %22 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 7), align 1, !tbaa !137
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %52, label %24, !prof !192

24:                                               ; preds = %19, %31
  %25 = phi i8 [ %33, %31 ], [ %22, %19 ]
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !181
  %29 = zext i16 %28 to i32
  %30 = icmp eq i32 %29, %0
  br i1 %30, label %35, label %31, !prof !387

31:                                               ; preds = %24
  %32 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %26
  %33 = load i8, ptr %32, align 1, !tbaa !137
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %52, label %24, !prof !388, !llvm.loop !184

35:                                               ; preds = %24
  %36 = zext i8 %25 to i32
  %37 = shl nuw nsw i32 %36, 16
  br label %52

38:                                               ; preds = %16, %45
  %39 = phi i8 [ %47, %45 ], [ %17, %16 ]
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %40
  %42 = load i16, ptr %41, align 2, !tbaa !181
  %43 = zext i16 %42 to i32
  %44 = icmp eq i32 %43, %0
  br i1 %44, label %49, label %45, !prof !387

45:                                               ; preds = %38
  %46 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %40
  %47 = load i8, ptr %46, align 1, !tbaa !137
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %38, !prof !388, !llvm.loop !184

49:                                               ; preds = %38
  %50 = zext i8 %39 to i32
  %51 = shl nuw nsw i32 %50, 16
  br label %52

52:                                               ; preds = %31, %45, %49, %16, %35, %19
  %53 = phi i32 [ %37, %35 ], [ 65536, %19 ], [ %51, %49 ], [ 65536, %16 ], [ 65536, %45 ], [ 65536, %31 ]
  %54 = and i32 %9, -16711681
  %55 = add nuw nsw i32 %53, %54
  store i32 %55, ptr %5, align 4
  tail call void @layout_type(ptr noundef %4)
  ret ptr %4
}

; Function Attrs: cold nounwind uwtable
define dso_local void @initialize_sizetypes(i8 noundef zeroext %0) local_unnamed_addr #11 !prof !174 {
  %2 = tail call ptr @make_node_stat(i32 noundef 8) #21
  %3 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !137
  %4 = zext i8 %3 to i32
  %5 = shl nuw nsw i32 %4, 3
  %6 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, -16711681
  %9 = or disjoint i32 %8, 1048576
  store i32 %9, ptr %6, align 4
  %10 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !141
  %11 = and i32 %10, 32
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 128, i32 256, !prof !175
  %14 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_base_align, i64 0, i64 16), align 16, !tbaa !137
  %15 = icmp eq i8 %14, 0
  %16 = zext i8 %14 to i32
  %17 = shl nuw nsw i32 %16, 3
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %13)
  %19 = select i1 %15, i32 1, i32 %18, !prof !192
  %20 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 7
  store i32 %19, ptr %20, align 8, !tbaa !137
  %21 = load i64, ptr %2, align 8
  %22 = and i64 %21, -4398046511105
  store i64 %22, ptr %2, align 8
  %23 = or i32 %8, 1049600
  store i32 %23, ptr %6, align 4
  %24 = icmp eq i8 %0, 0
  %25 = select i1 %24, i64 2097152, i64 0, !prof !175
  %26 = and i64 %21, -4398048608257
  %27 = or disjoint i64 %26, %25
  store i64 %27, ptr %2, align 8
  %28 = zext nneg i32 %5 to i64
  %29 = tail call ptr @build_int_cst(ptr noundef nonnull %2, i64 noundef %28) #21
  %30 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !137
  %31 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !137
  %32 = zext i8 %31 to i64
  %33 = tail call ptr @build_int_cst(ptr noundef nonnull %2, i64 noundef %32) #21
  %34 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 3
  store ptr %33, ptr %34, align 8, !tbaa !137
  %35 = load i32, ptr %6, align 4
  %36 = and i32 %5, 1016
  %37 = and i32 %35, -1024
  %38 = or disjoint i32 %37, %36
  store i32 %38, ptr %6, align 4
  %39 = zext i1 %24 to i8
  tail call void @set_min_and_max_values_for_integral_type(ptr noundef nonnull %2, i32 noundef %5, i8 noundef zeroext %39)
  store ptr %2, ptr @sizetype_tab, align 16, !tbaa !126
  %40 = tail call ptr @build_distinct_type_copy(ptr noundef nonnull %2) #21
  store ptr %40, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !126
  ret void
}

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @set_min_and_max_values_for_integral_type(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #11 !prof !389 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %18, label %5, !prof !390

5:                                                ; preds = %3
  %6 = tail call ptr @build_int_cst(ptr noundef %0, i64 noundef 0) #21
  %7 = icmp sgt i32 %1, 63
  %8 = zext nneg i32 %1 to i64
  %9 = shl nsw i64 -1, %8
  %10 = xor i64 %9, -1
  %11 = select i1 %7, i64 -1, i64 %10, !prof !192
  %12 = icmp sgt i32 %1, 64
  %13 = sub nsw i32 128, %1
  %14 = zext nneg i32 %13 to i64
  %15 = lshr i64 -1, %14
  %16 = select i1 %12, i64 %15, i64 0, !prof !192
  %17 = tail call ptr @build_int_cst_wide(ptr noundef %0, i64 noundef %11, i64 noundef %16) #21
  br label %37

18:                                               ; preds = %3
  %19 = icmp sgt i32 %1, 64
  %20 = add nsw i32 %1, -1
  %21 = zext nneg i32 %20 to i64
  %22 = shl nsw i64 -1, %21
  %23 = select i1 %19, i64 0, i64 %22, !prof !391
  %24 = add nsw i32 %1, -65
  %25 = icmp sgt i32 %1, 65
  %26 = select i1 %25, i32 %24, i32 0, !prof !391
  %27 = zext nneg i32 %26 to i64
  %28 = shl nsw i64 -1, %27
  %29 = tail call ptr @build_int_cst_wide(ptr noundef %0, i64 noundef %23, i64 noundef %28) #21
  %30 = xor i64 %22, -1
  %31 = select i1 %19, i64 -1, i64 %30, !prof !391
  %32 = zext nneg i32 %24 to i64
  %33 = shl nsw i64 -1, %32
  %34 = xor i64 %33, -1
  %35 = select i1 %25, i64 %34, i64 0, !prof !391
  %36 = tail call ptr @build_int_cst_wide(ptr noundef %0, i64 noundef %31, i64 noundef %35) #21
  br label %37

37:                                               ; preds = %18, %5
  %38 = phi ptr [ %6, %5 ], [ %29, %18 ]
  %39 = phi ptr [ %17, %5 ], [ %36, %18 ]
  %40 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  store ptr %38, ptr %40, align 8, !tbaa !137
  %41 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  store ptr %39, ptr %41, align 8, !tbaa !137
  ret void
}

declare ptr @build_distinct_type_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @set_sizetype(ptr noundef %0) local_unnamed_addr #11 !prof !174 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1023
  %5 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !137
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %24, label %7, !prof !192

7:                                                ; preds = %1
  %8 = add nuw nsw i32 %4, 4
  %9 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 17), align 1, !tbaa !137
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 3
  %12 = tail call i32 @llvm.umin.i32(i32 %8, i32 %11)
  %13 = trunc i32 %12 to i16
  br label %14

14:                                               ; preds = %7, %20
  %15 = phi i8 [ %22, %20 ], [ %5, %7 ]
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !181
  %19 = icmp ult i16 %18, %13
  br i1 %19, label %20, label %25, !prof !392

20:                                               ; preds = %14
  %21 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %16
  %22 = load i8, ptr %21, align 1, !tbaa !137
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %14, !prof !277, !llvm.loop !194

24:                                               ; preds = %20, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 430, ptr noundef nonnull @.str.1) #21
  br label %25

25:                                               ; preds = %14, %24
  %26 = phi i64 [ 0, %24 ], [ %16, %14 ]
  %27 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !181
  %29 = tail call i16 @llvm.umin.i16(i16 %28, i16 128)
  %30 = zext nneg i16 %29 to i32
  %31 = load i64, ptr %0, align 8
  %32 = load ptr, ptr @sizetype_tab, align 16, !tbaa !126
  %33 = load i64, ptr %32, align 8
  %34 = xor i64 %33, %31
  %35 = and i64 %34, 2097152
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %38, label %37, !prof !175

37:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2265, ptr noundef nonnull @.str.1) #21
  br label %38

38:                                               ; preds = %25, %37
  %39 = tail call ptr @build_distinct_type_copy(ptr noundef nonnull %0) #21
  %40 = load ptr, ptr @sizetype_tab, align 16, !tbaa !126
  %41 = getelementptr inbounds %struct.tree_type, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !137
  %43 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 1
  store ptr %42, ptr %43, align 8, !tbaa !137
  %44 = load i64, ptr %40, align 8
  %45 = and i64 %44, 134217728
  %46 = load i64, ptr %39, align 8
  %47 = and i64 %46, -134217729
  %48 = or disjoint i64 %47, %45
  store i64 %48, ptr %39, align 8
  %49 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  store ptr %0, ptr %49, align 8, !tbaa !137
  %50 = load ptr, ptr @sizetype_tab, align 16, !tbaa !126
  %51 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 5
  %52 = load i32, ptr %51, align 8, !tbaa !137
  %53 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 5
  store i32 %52, ptr %53, align 8, !tbaa !137
  %54 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = or i32 %55, 1024
  store i32 %56, ptr %54, align 4
  %57 = tail call i64 @tree_size(ptr noundef %50) #21
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %50, ptr nonnull align 8 %39, i64 %57, i1 false), !prof !393
  %58 = load ptr, ptr @sizetype_tab, align 16, !tbaa !126
  %59 = getelementptr inbounds %struct.tree_type, ptr %58, i64 0, i32 16
  store ptr %58, ptr %59, align 8, !tbaa !137
  %60 = getelementptr inbounds %struct.tree_type, ptr %58, i64 0, i32 19
  store ptr %58, ptr %60, align 8, !tbaa !137
  %61 = tail call ptr @make_node_stat(i32 noundef 8) #21
  %62 = tail call ptr @get_identifier(ptr noundef nonnull @.str.17) #21
  %63 = getelementptr inbounds %struct.tree_type, ptr %61, i64 0, i32 12
  store ptr %62, ptr %63, align 8, !tbaa !137
  %64 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !126
  %65 = getelementptr inbounds %struct.tree_type, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !137
  %67 = getelementptr inbounds %struct.tree_type, ptr %61, i64 0, i32 1
  store ptr %66, ptr %67, align 8, !tbaa !137
  %68 = load i64, ptr %64, align 8
  %69 = and i64 %68, 134217728
  %70 = load i64, ptr %61, align 8
  %71 = and i64 %70, -134217729
  %72 = or disjoint i64 %71, %69
  store i64 %72, ptr %61, align 8
  %73 = getelementptr inbounds %struct.tree_type, ptr %61, i64 0, i32 6
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, -1024
  %76 = or disjoint i32 %75, %30
  store i32 %76, ptr %73, align 4
  %77 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !126
  %78 = getelementptr inbounds %struct.tree_type, ptr %77, i64 0, i32 5
  %79 = load i32, ptr %78, align 8, !tbaa !137
  %80 = getelementptr inbounds %struct.tree_type, ptr %61, i64 0, i32 5
  store i32 %79, ptr %80, align 8, !tbaa !137
  %81 = or i32 %76, 1024
  store i32 %81, ptr %73, align 4
  %82 = tail call i64 @tree_size(ptr noundef %77) #21
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %77, ptr nonnull align 8 %61, i64 %82, i1 false), !prof !393
  %83 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !126
  %84 = getelementptr inbounds %struct.tree_type, ptr %83, i64 0, i32 16
  store ptr %83, ptr %84, align 8, !tbaa !137
  %85 = getelementptr inbounds %struct.tree_type, ptr %83, i64 0, i32 19
  store ptr %83, ptr %85, align 8, !tbaa !137
  %86 = load i64, ptr %0, align 8
  %87 = and i64 %86, 2097152
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %105, label %89, !prof !192

89:                                               ; preds = %38
  tail call void @fixup_unsigned_type(ptr noundef %83)
  %90 = tail call ptr @make_node_stat(i32 noundef 8) #21
  %91 = getelementptr inbounds %struct.tree_type, ptr %90, i64 0, i32 6
  %92 = load i32, ptr %91, align 4
  %93 = and i32 %92, -1024
  %94 = or disjoint i32 %93, %4
  store i32 %94, ptr %91, align 4
  %95 = tail call i32 @llvm.umin.i32(i32 %4, i32 128)
  tail call void @set_min_and_max_values_for_integral_type(ptr noundef %90, i32 noundef %95, i8 noundef zeroext 0)
  tail call void @layout_type(ptr noundef %90)
  store ptr %90, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !126
  %96 = load i32, ptr %91, align 4
  %97 = or i32 %96, 1024
  store i32 %97, ptr %91, align 4
  %98 = tail call ptr @make_node_stat(i32 noundef 8) #21
  %99 = getelementptr inbounds %struct.tree_type, ptr %98, i64 0, i32 6
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, -1024
  %102 = or disjoint i32 %101, %30
  store i32 %102, ptr %99, align 4
  tail call void @set_min_and_max_values_for_integral_type(ptr noundef %98, i32 noundef %30, i8 noundef zeroext 0)
  tail call void @layout_type(ptr noundef %98)
  store ptr %98, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 3), align 8, !tbaa !126
  %103 = load i32, ptr %99, align 4
  %104 = or i32 %103, 1024
  store i32 %104, ptr %99, align 4
  br label %112

105:                                              ; preds = %38
  %106 = getelementptr inbounds %struct.tree_type, ptr %83, i64 0, i32 6
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, 1023
  %109 = tail call i32 @llvm.umin.i32(i32 %108, i32 128)
  tail call void @set_min_and_max_values_for_integral_type(ptr noundef %83, i32 noundef %109, i8 noundef zeroext 0)
  tail call void @layout_type(ptr noundef %83)
  %110 = load ptr, ptr @sizetype_tab, align 16, !tbaa !126
  store ptr %110, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !126
  %111 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !126
  store ptr %111, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 3), align 8, !tbaa !126
  br label %112

112:                                              ; preds = %105, %89
  %113 = load i64, ptr %0, align 8
  %114 = and i64 %113, 2097152
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %127, label %116, !prof !192

116:                                              ; preds = %112
  %117 = load ptr, ptr @sizetype_tab, align 16, !tbaa !126
  %118 = getelementptr inbounds %struct.tree_type, ptr %117, i64 0, i32 14
  %119 = load ptr, ptr %118, align 8, !tbaa !137
  %120 = getelementptr inbounds %struct.tree_int_cst, ptr %119, i64 0, i32 1
  %121 = load i64, ptr %120, align 8, !tbaa !137
  %122 = getelementptr inbounds %struct.tree_int_cst, ptr %119, i64 0, i32 1, i32 1
  %123 = load i64, ptr %122, align 8, !tbaa !137
  %124 = tail call ptr @build_int_cst_wide_type(ptr noundef %117, i64 noundef %121, i64 noundef %123) #21
  %125 = load ptr, ptr @sizetype_tab, align 16, !tbaa !126
  %126 = getelementptr inbounds %struct.tree_type, ptr %125, i64 0, i32 14
  store ptr %124, ptr %126, align 8, !tbaa !137
  br label %127

127:                                              ; preds = %116, %112
  ret void
}

declare i64 @tree_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

declare ptr @build_int_cst_wide_type(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @get_best_mode(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #12 !prof !394 {
  %6 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !137
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %32, label %8, !prof !192

8:                                                ; preds = %5
  %9 = zext i8 %6 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !137
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 3
  %14 = urem i32 %1, %13
  %15 = add i32 %14, %0
  %16 = icmp ugt i32 %15, %13
  br i1 %16, label %26, label %32, !prof !395

17:                                               ; preds = %26
  %18 = zext i8 %30 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !137
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 3
  %23 = urem i32 %1, %22
  %24 = add i32 %23, %0
  %25 = icmp ugt i32 %24, %22
  br i1 %25, label %26, label %32, !prof !396, !llvm.loop !397

26:                                               ; preds = %8, %17
  %27 = phi i32 [ %22, %17 ], [ %13, %8 ]
  %28 = phi i64 [ %18, %17 ], [ %9, %8 ]
  %29 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !137
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %17, !prof !398, !llvm.loop !397

32:                                               ; preds = %17, %26, %8, %5
  %33 = phi i8 [ %6, %5 ], [ %6, %8 ], [ %30, %26 ], [ %30, %17 ]
  %34 = phi i1 [ %7, %5 ], [ %7, %8 ], [ %31, %26 ], [ %31, %17 ]
  %35 = phi i32 [ 0, %5 ], [ %13, %8 ], [ %27, %26 ], [ %22, %17 ]
  %36 = zext i8 %33 to i32
  br i1 %34, label %102, label %37, !prof !399

37:                                               ; preds = %32
  %38 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !141
  %39 = and i32 %38, 32
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 128, i32 256, !prof !400
  %42 = tail call i32 @llvm.umin.i32(i32 %35, i32 %41)
  %43 = icmp ugt i32 %42, %2
  br i1 %43, label %102, label %44, !prof !401

44:                                               ; preds = %37
  %45 = icmp eq i32 %3, 0
  br i1 %45, label %53, label %46, !prof !277

46:                                               ; preds = %44
  %47 = zext i32 %3 to i64
  %48 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !137
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 3
  %52 = icmp ugt i32 %35, %51
  br i1 %52, label %102, label %53, !prof !277

53:                                               ; preds = %46, %44
  %54 = icmp eq i32 %4, 0
  br i1 %54, label %101, label %55, !prof !276

55:                                               ; preds = %53
  %56 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 22), align 8, !tbaa !402
  %57 = tail call zeroext i8 %56() #21
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %101

59:                                               ; preds = %55
  %60 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !137
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %98, label %62

62:                                               ; preds = %59
  %63 = add i32 %0, -1
  %64 = add i32 %63, %1
  %65 = load i32, ptr @ix86_isa_flags, align 4
  %66 = and i32 %65, 32
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i32 128, i32 256
  %69 = tail call i32 @llvm.umin.i32(i32 %68, i32 %2)
  %70 = zext i32 %3 to i64
  %71 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %70
  br label %72

72:                                               ; preds = %62, %93
  %73 = phi i8 [ %60, %62 ], [ %96, %93 ]
  %74 = phi i32 [ 0, %62 ], [ %94, %93 ]
  %75 = zext i8 %73 to i32
  %76 = zext i8 %73 to i64
  %77 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !137
  %79 = zext i8 %78 to i32
  %80 = shl nuw nsw i32 %79, 3
  %81 = udiv i32 %1, %80
  %82 = udiv i32 %64, %80
  %83 = icmp ne i32 %81, %82
  %84 = icmp ugt i8 %78, 4
  %85 = or i1 %84, %83
  %86 = icmp ugt i32 %80, %69
  %87 = select i1 %85, i1 true, i1 %86
  br i1 %87, label %93, label %88

88:                                               ; preds = %72
  br i1 %45, label %92, label %89

89:                                               ; preds = %88
  %90 = load i8, ptr %71, align 1, !tbaa !137
  %91 = icmp ugt i8 %78, %90
  br i1 %91, label %93, label %92

92:                                               ; preds = %89, %88
  br label %93

93:                                               ; preds = %72, %89, %92
  %94 = phi i32 [ %75, %92 ], [ %74, %89 ], [ %74, %72 ]
  %95 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %76
  %96 = load i8, ptr %95, align 1, !tbaa !137
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %72, !llvm.loop !403

98:                                               ; preds = %93, %59
  %99 = phi i32 [ 0, %59 ], [ %94, %93 ]
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98, %55, %53
  br label %102

102:                                              ; preds = %32, %37, %46, %98, %101
  %103 = phi i32 [ %36, %101 ], [ %99, %98 ], [ 0, %46 ], [ 0, %37 ], [ 0, %32 ]
  ret i32 %103
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @get_mode_bounds(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #15 !prof !404 {
  %6 = zext i32 %0 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !137
  %9 = icmp ult i8 %8, 9
  br i1 %9, label %11, label %10, !prof !405

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2512, ptr noundef nonnull @.str.1) #21
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
  %20 = select i1 %14, i64 0, i64 %18, !prof !406
  %21 = select i1 %14, i64 %19, i64 %17, !prof !406
  %22 = add i64 %21, -1
  %23 = tail call ptr @gen_int_mode(i64 noundef %20, i32 noundef %2) #21
  store ptr %23, ptr %3, align 8, !tbaa !126
  %24 = tail call ptr @gen_int_mode(i64 noundef %22, i32 noundef %2) #21
  store ptr %24, ptr %4, align 8, !tbaa !126
  ret void
}

declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @gt_ggc_mx_VEC_tree_gc(ptr noundef) #3

declare void @gt_pch_nx_VEC_tree_gc(ptr noundef) #3

declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #3

declare void @gt_pch_nx_lang_tree_node(ptr noundef) #3

declare void @find_placeholder_in_expr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal ptr @copy_self_referential_tree_r(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11 !prof !125 {
  %4 = load ptr, ptr %0, align 8, !tbaa !126
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  %7 = and i64 %5, 65535
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !141
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !141
  br label %39

13:                                               ; preds = %3
  switch i16 %6, label %37 [
    i16 121, label %14
    i16 41, label %22
    i16 120, label %35
  ]

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !137
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 62
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, ptr %1, align 4, !tbaa !141
  br label %39

21:                                               ; preds = %14
  switch i16 %6, label %37 [
    i16 41, label %22
    i16 120, label %35
  ]

22:                                               ; preds = %21, %13
  br label %23

23:                                               ; preds = %22, %23
  %24 = phi ptr [ %26, %23 ], [ %4, %22 ]
  %25 = getelementptr inbounds %struct.tree_exp, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !137
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 65535
  %29 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !141
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %23, label %32, !llvm.loop !407

32:                                               ; preds = %23
  %33 = icmp eq i64 %28, 62
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  store i32 0, ptr %1, align 4, !tbaa !141
  br label %39

35:                                               ; preds = %21, %13
  %36 = load ptr, ptr @global_trees, align 16, !tbaa !126
  br label %39

37:                                               ; preds = %32, %13, %21
  %38 = tail call ptr @copy_tree_r(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #21
  br label %39

39:                                               ; preds = %34, %37, %35, %20, %12
  %40 = phi ptr [ null, %12 ], [ null, %20 ], [ %38, %37 ], [ null, %34 ], [ %36, %35 ]
  ret ptr %40
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @substitute_in_expr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @chainon(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_function_type(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_file_function_name(ptr noundef) local_unnamed_addr #3

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_function_call_expr(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @copy_tree_r(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ggc_free(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build3_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { nounwind }
attributes #22 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!124}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123}
!35 = !{ptr @layout_decl, ptr @size_binop_loc, i64 184}
!36 = !{ptr @layout_decl, ptr @fold_convert_loc, i64 184}
!37 = !{ptr @layout_decl, ptr @integer_zerop, i64 184}
!38 = !{ptr @layout_decl, ptr @host_integerp, i64 184}
!39 = !{ptr @layout_decl, ptr @tree_low_cst, i64 184}
!40 = !{ptr @layout_decl, ptr @x86_field_alignment, i64 3608}
!41 = !{ptr @bit_from_pos, ptr @fold_convert_loc, i64 3122}
!42 = !{ptr @bit_from_pos, ptr @size_binop_loc, i64 6244}
!43 = !{ptr @byte_from_pos, ptr @size_binop_loc, i64 6}
!44 = !{ptr @byte_from_pos, ptr @fold_convert_loc, i64 3}
!45 = !{ptr @normalize_offset, ptr @compare_tree_int, i64 9221}
!46 = !{ptr @normalize_offset, ptr @size_int_kind, i64 7473}
!47 = !{ptr @normalize_offset, ptr @size_binop_loc, i64 9964}
!48 = !{ptr @normalize_offset, ptr @fold_convert_loc, i64 2491}
!49 = !{ptr @update_alignment_for_field, ptr @layout_decl, i64 3604}
!50 = !{ptr @update_alignment_for_field, ptr @integer_zerop, i64 354}
!51 = !{ptr @update_alignment_for_field, ptr @x86_field_alignment, i64 170}
!52 = !{ptr @place_field, ptr @update_alignment_for_field, i64 3604}
!53 = !{ptr @place_field, ptr @exact_log2, i64 3604}
!54 = !{ptr @place_field, ptr @size_binop_loc, i64 3604}
!55 = !{ptr @place_field, ptr @integer_zerop, i64 11962}
!56 = !{ptr @place_field, ptr @tree_low_cst, i64 5448}
!57 = !{ptr @place_field, ptr @host_integerp, i64 818}
!58 = !{ptr @place_field, ptr @warning, i64 4}
!59 = !{ptr @place_field, ptr @round_up_loc, i64 4}
!60 = !{ptr @place_field, ptr @x86_field_alignment, i64 154}
!61 = !{ptr @place_field, ptr @normalize_offset, i64 6934}
!62 = !{ptr @place_field, ptr @layout_decl, i64 4}
!63 = !{ptr @compute_record_mode, ptr @host_integerp, i64 10912}
!64 = !{ptr @compute_record_mode, ptr @integer_zerop, i64 112}
!65 = !{ptr @compute_record_mode, ptr @bit_position, i64 3224}
!66 = !{ptr @compute_record_mode, ptr @simple_cst_equal, i64 3224}
!67 = !{ptr @compute_record_mode, ptr @tree_low_cst, i64 150}
!68 = !{ptr @finish_record_layout, ptr @normalize_offset, i64 2287}
!69 = !{ptr @finish_record_layout, ptr @fold_convert_loc, i64 4574}
!70 = !{ptr @finish_record_layout, ptr @size_binop_loc, i64 9154}
!71 = !{ptr @finish_record_layout, ptr @integer_zerop, i64 2287}
!72 = !{ptr @finish_record_layout, ptr @round_up_loc, i64 4574}
!73 = !{ptr @finish_record_layout, ptr @simple_cst_equal, i64 2287}
!74 = !{ptr @finish_record_layout, ptr @warning, i64 20}
!75 = !{ptr @finish_record_layout, ptr @compute_record_mode, i64 2287}
!76 = !{ptr @finish_record_layout, ptr @finalize_type_size, i64 2287}
!77 = !{ptr @finish_record_layout, ptr @free, i64 2287}
!78 = !{ptr @finalize_type_size, ptr @vector_type_mode, i64 6078}
!79 = !{ptr @finalize_type_size, ptr @round_up_loc, i64 37398}
!80 = !{ptr @layout_type, ptr @tree_int_cst_sgn, i64 285}
!81 = !{ptr @layout_type, ptr @size_int_kind, i64 28010}
!82 = !{ptr @layout_type, ptr @vector_type_mode, i64 2026}
!83 = !{ptr @layout_type, ptr @int_const_binop, i64 4052}
!84 = !{ptr @layout_type, ptr @tree_low_cst, i64 4338}
!85 = !{ptr @layout_type, ptr @build_pointer_type, i64 2519}
!86 = !{ptr @layout_type, ptr @integer_zerop, i64 4926}
!87 = !{ptr @layout_type, ptr @fold_build2_stat_loc, i64 2407}
!88 = !{ptr @layout_type, ptr @fold_convert_loc, i64 4814}
!89 = !{ptr @layout_type, ptr @size_binop_loc, i64 7221}
!90 = !{ptr @layout_type, ptr @simple_cst_equal, i64 2380}
!91 = !{ptr @layout_type, ptr @host_integerp, i64 2312}
!92 = !{ptr @layout_type, ptr @compare_tree_int, i64 2519}
!93 = !{ptr @layout_type, ptr @xmalloc, i64 2287}
!94 = !{ptr @layout_type, ptr @place_field, i64 3604}
!95 = !{ptr @layout_type, ptr @finish_record_layout, i64 2287}
!96 = !{ptr @layout_type, ptr @finalize_type_size, i64 16525}
!97 = !{ptr @make_signed_type, ptr @make_node_stat, i64 8}
!98 = !{ptr @make_signed_type, ptr @set_min_and_max_values_for_integral_type, i64 8}
!99 = !{ptr @make_signed_type, ptr @layout_type, i64 8}
!100 = !{ptr @make_unsigned_type, ptr @make_node_stat, i64 8}
!101 = !{ptr @make_unsigned_type, ptr @fixup_unsigned_type, i64 8}
!102 = !{ptr @fixup_unsigned_type, ptr @build_int_cst, i64 165}
!103 = !{ptr @fixup_unsigned_type, ptr @build_int_cst_wide, i64 165}
!104 = !{ptr @fixup_unsigned_type, ptr @layout_type, i64 165}
!105 = !{ptr @make_fract_type, ptr @make_node_stat, i64 20}
!106 = !{ptr @make_fract_type, ptr @layout_type, i64 20}
!107 = !{ptr @make_accum_type, ptr @make_node_stat, i64 16}
!108 = !{ptr @make_accum_type, ptr @layout_type, i64 16}
!109 = !{ptr @initialize_sizetypes, ptr @make_node_stat, i64 1}
!110 = !{ptr @initialize_sizetypes, ptr @build_int_cst, i64 2}
!111 = !{ptr @initialize_sizetypes, ptr @set_min_and_max_values_for_integral_type, i64 1}
!112 = !{ptr @initialize_sizetypes, ptr @build_distinct_type_copy, i64 1}
!113 = !{ptr @set_min_and_max_values_for_integral_type, ptr @build_int_cst, i64 1}
!114 = !{ptr @set_min_and_max_values_for_integral_type, ptr @build_int_cst_wide, i64 21}
!115 = !{ptr @set_sizetype, ptr @build_distinct_type_copy, i64 1}
!116 = !{ptr @set_sizetype, ptr @tree_size, i64 2}
!117 = !{ptr @set_sizetype, ptr @make_node_stat, i64 3}
!118 = !{ptr @set_sizetype, ptr @get_identifier, i64 1}
!119 = !{ptr @set_sizetype, ptr @fixup_unsigned_type, i64 1}
!120 = !{ptr @set_sizetype, ptr @set_min_and_max_values_for_integral_type, i64 2}
!121 = !{ptr @set_sizetype, ptr @layout_type, i64 2}
!122 = !{ptr @set_sizetype, ptr @build_int_cst_wide_type, i64 1}
!123 = !{ptr @get_mode_bounds, ptr @gen_int_mode, i64 3088848}
!124 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!125 = !{!"function_entry_count", i64 0}
!126 = !{!127, !127, i64 0}
!127 = !{!"any pointer", !128, i64 0}
!128 = !{!"omnipotent char", !129, i64 0}
!129 = !{!"Simple C/C++ TBAA"}
!130 = !{!131, !127, i64 8}
!131 = !{!"_IO_FILE", !132, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !127, i64 32, !127, i64 40, !127, i64 48, !127, i64 56, !127, i64 64, !127, i64 72, !127, i64 80, !127, i64 88, !127, i64 96, !127, i64 104, !132, i64 112, !132, i64 116, !133, i64 120, !134, i64 128, !128, i64 130, !128, i64 131, !127, i64 136, !133, i64 144, !127, i64 152, !127, i64 160, !127, i64 168, !127, i64 176, !133, i64 184, !132, i64 192, !128, i64 196}
!132 = !{!"int", !128, i64 0}
!133 = !{!"long", !128, i64 0}
!134 = !{!"short", !128, i64 0}
!135 = !{!131, !127, i64 16}
!136 = !{!"branch_weights", i32 2000, i32 1}
!137 = !{!128, !128, i64 0}
!138 = !{!131, !127, i64 40}
!139 = !{!131, !127, i64 48}
!140 = !{!131, !132, i64 0}
!141 = !{!132, !132, i64 0}
!142 = distinct !{!142, !143, !144}
!143 = !{!"llvm.loop.mustprogress"}
!144 = !{!"llvm.loop.unroll.disable"}
!145 = !{!"function_entry_count", i64 13258}
!146 = !{!"function_entry_count", i64 655}
!147 = !{!"branch_weights", i32 655, i32 0}
!148 = !{!149, !132, i64 0}
!149 = !{!"VEC_tree_base", !132, i64 0, !132, i64 4, !128, i64 8}
!150 = !{!151, !127, i64 1480}
!151 = !{!"gcc_target", !152, i64 0, !154, i64 368, !155, i64 664, !132, i64 744, !127, i64 752, !127, i64 760, !127, i64 768, !127, i64 776, !127, i64 784, !127, i64 792, !127, i64 800, !127, i64 808, !127, i64 816, !127, i64 824, !127, i64 832, !127, i64 840, !127, i64 848, !127, i64 856, !127, i64 864, !127, i64 872, !127, i64 880, !127, i64 888, !127, i64 896, !127, i64 904, !127, i64 912, !127, i64 920, !127, i64 928, !127, i64 936, !127, i64 944, !127, i64 952, !127, i64 960, !127, i64 968, !127, i64 976, !127, i64 984, !127, i64 992, !127, i64 1000, !127, i64 1008, !127, i64 1016, !127, i64 1024, !127, i64 1032, !127, i64 1040, !127, i64 1048, !127, i64 1056, !133, i64 1064, !133, i64 1072, !127, i64 1080, !127, i64 1088, !127, i64 1096, !127, i64 1104, !127, i64 1112, !127, i64 1120, !127, i64 1128, !127, i64 1136, !127, i64 1144, !127, i64 1152, !127, i64 1160, !127, i64 1168, !156, i64 1176, !127, i64 1232, !127, i64 1240, !127, i64 1248, !127, i64 1256, !127, i64 1264, !127, i64 1272, !127, i64 1280, !127, i64 1288, !127, i64 1296, !127, i64 1304, !127, i64 1312, !127, i64 1320, !127, i64 1328, !127, i64 1336, !127, i64 1344, !127, i64 1352, !127, i64 1360, !127, i64 1368, !127, i64 1376, !127, i64 1384, !127, i64 1392, !127, i64 1400, !127, i64 1408, !127, i64 1416, !127, i64 1424, !127, i64 1432, !127, i64 1440, !127, i64 1448, !127, i64 1456, !133, i64 1464, !157, i64 1472, !127, i64 1664, !127, i64 1672, !127, i64 1680, !127, i64 1688, !127, i64 1696, !127, i64 1704, !127, i64 1712, !127, i64 1720, !127, i64 1728, !127, i64 1736, !127, i64 1744, !127, i64 1752, !127, i64 1760, !127, i64 1768, !127, i64 1776, !158, i64 1784, !159, i64 1792, !160, i64 1896, !161, i64 1968, !127, i64 2016, !128, i64 2024, !128, i64 2025, !128, i64 2026, !128, i64 2027, !128, i64 2028, !128, i64 2029, !128, i64 2030, !128, i64 2031, !128, i64 2032, !128, i64 2033, !128, i64 2034, !128, i64 2035}
!152 = !{!"asm_out", !127, i64 0, !127, i64 8, !127, i64 16, !153, i64 24, !153, i64 56, !127, i64 88, !127, i64 96, !127, i64 104, !127, i64 112, !127, i64 120, !127, i64 128, !127, i64 136, !127, i64 144, !127, i64 152, !127, i64 160, !127, i64 168, !127, i64 176, !127, i64 184, !127, i64 192, !127, i64 200, !127, i64 208, !127, i64 216, !127, i64 224, !127, i64 232, !127, i64 240, !127, i64 248, !127, i64 256, !127, i64 264, !127, i64 272, !127, i64 280, !127, i64 288, !127, i64 296, !127, i64 304, !127, i64 312, !127, i64 320, !127, i64 328, !127, i64 336, !127, i64 344, !127, i64 352, !127, i64 360}
!153 = !{!"asm_int_op", !127, i64 0, !127, i64 8, !127, i64 16, !127, i64 24}
!154 = !{!"sched", !127, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !127, i64 32, !127, i64 40, !127, i64 48, !127, i64 56, !127, i64 64, !127, i64 72, !127, i64 80, !127, i64 88, !127, i64 96, !127, i64 104, !127, i64 112, !127, i64 120, !127, i64 128, !127, i64 136, !127, i64 144, !127, i64 152, !127, i64 160, !127, i64 168, !127, i64 176, !127, i64 184, !127, i64 192, !127, i64 200, !127, i64 208, !127, i64 216, !127, i64 224, !127, i64 232, !127, i64 240, !127, i64 248, !127, i64 256, !127, i64 264, !127, i64 272, !127, i64 280, !127, i64 288}
!155 = !{!"vectorize", !127, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !127, i64 32, !127, i64 40, !127, i64 48, !127, i64 56, !127, i64 64, !127, i64 72}
!156 = !{!"addr_space", !127, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !127, i64 32, !127, i64 40, !127, i64 48}
!157 = !{!"calls", !127, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !127, i64 32, !127, i64 40, !127, i64 48, !127, i64 56, !127, i64 64, !127, i64 72, !127, i64 80, !127, i64 88, !127, i64 96, !127, i64 104, !127, i64 112, !127, i64 120, !127, i64 128, !127, i64 136, !127, i64 144, !127, i64 152, !127, i64 160, !127, i64 168, !127, i64 176, !127, i64 184}
!158 = !{!"c", !127, i64 0}
!159 = !{!"cxx", !127, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !127, i64 32, !127, i64 40, !127, i64 48, !127, i64 56, !127, i64 64, !127, i64 72, !127, i64 80, !127, i64 88, !127, i64 96}
!160 = !{!"emutls", !127, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !127, i64 32, !127, i64 40, !127, i64 48, !127, i64 56, !128, i64 64, !128, i64 65}
!161 = !{!"target_option_hooks", !127, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !127, i64 32, !127, i64 40}
!162 = distinct !{!162, !143, !144}
!163 = !{!133, !133, i64 0}
!164 = distinct !{!164, !143, !144}
!165 = !{!149, !132, i64 4}
!166 = !{!167, !127, i64 272}
!167 = !{!"lang_hooks", !127, i64 0, !133, i64 8, !127, i64 16, !127, i64 24, !127, i64 32, !127, i64 40, !127, i64 48, !127, i64 56, !127, i64 64, !127, i64 72, !127, i64 80, !127, i64 88, !127, i64 96, !127, i64 104, !127, i64 112, !127, i64 120, !127, i64 128, !127, i64 136, !127, i64 144, !127, i64 152, !127, i64 160, !127, i64 168, !127, i64 176, !127, i64 184, !127, i64 192, !127, i64 200, !127, i64 208, !127, i64 216, !127, i64 224, !127, i64 232, !168, i64 240, !169, i64 248, !170, i64 256, !171, i64 272, !172, i64 432, !173, i64 560, !127, i64 584, !127, i64 592, !127, i64 600, !127, i64 608, !127, i64 616, !127, i64 624, !127, i64 632, !127, i64 640, !127, i64 648, !127, i64 656, !127, i64 664, !128, i64 672}
!168 = !{!"lang_hooks_for_tree_inlining", !127, i64 0}
!169 = !{!"lang_hooks_for_callgraph", !127, i64 0}
!170 = !{!"lang_hooks_for_tree_dump", !127, i64 0, !127, i64 8}
!171 = !{!"lang_hooks_for_decls", !127, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !127, i64 32, !127, i64 40, !127, i64 48, !127, i64 56, !127, i64 64, !127, i64 72, !127, i64 80, !127, i64 88, !127, i64 96, !127, i64 104, !127, i64 112, !127, i64 120, !127, i64 128, !127, i64 136, !127, i64 144, !127, i64 152}
!172 = !{!"lang_hooks_for_types", !127, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !127, i64 32, !127, i64 40, !127, i64 48, !127, i64 56, !127, i64 64, !127, i64 72, !127, i64 80, !127, i64 88, !127, i64 96, !127, i64 104, !127, i64 112, !128, i64 120}
!173 = !{!"lang_hooks_for_lto", !127, i64 0, !127, i64 8, !127, i64 16}
!174 = !{!"function_entry_count", i64 1}
!175 = !{!"branch_weights", i32 1, i32 0}
!176 = distinct !{!176, !143, !144}
!177 = !{!"function_entry_count", i64 479957}
!178 = !{!"branch_weights", i32 282615, i32 197342}
!179 = !{!"branch_weights", i32 0, i32 197342}
!180 = !{!"branch_weights", i32 1, i32 150562}
!181 = !{!134, !134, i64 0}
!182 = !{!"branch_weights", i32 329394, i32 1751222}
!183 = !{!"branch_weights", i32 150562, i32 1930054}
!184 = distinct !{!184, !143, !144}
!185 = !{!"branch_weights", i32 0, i32 2646}
!186 = !{!"branch_weights", i32 2646, i32 0}
!187 = !{!"branch_weights", i32 336, i32 2310}
!188 = !{!"branch_weights", i32 1, i32 169}
!189 = !{!"branch_weights", i32 2140, i32 5325}
!190 = !{!"branch_weights", i32 169, i32 7296}
!191 = !{!"function_entry_count", i64 4532}
!192 = !{!"branch_weights", i32 0, i32 1}
!193 = !{!"branch_weights", i32 0, i32 4532}
!194 = distinct !{!194, !143, !144}
!195 = !{!"function_entry_count", i64 348950}
!196 = !{!"branch_weights", i32 348950, i32 0}
!197 = !{!"branch_weights", i32 0, i32 348950}
!198 = !{!"function_entry_count", i64 130947}
!199 = !{!"branch_weights", i32 0, i32 130947}
!200 = !{!"branch_weights", i32 4263, i32 126684}
!201 = !{!"branch_weights", i32 0, i32 655, i32 0, i32 3608}
!202 = !{!"branch_weights", i32 3608, i32 127339}
!203 = !{!"branch_weights", i32 130929, i32 18}
!204 = !{!"branch_weights", i32 0, i32 130929}
!205 = !{i32 0, i32 256}
!206 = !{!"branch_weights", i32 130759, i32 188}
!207 = !{!"branch_weights", i32 184, i32 4}
!208 = !{!"branch_weights", i32 127325, i32 14}
!209 = !{!"branch_weights", i32 0, i32 127325}
!210 = !{!"branch_weights", i32 3424, i32 184}
!211 = !{!"branch_weights", i32 184, i32 0}
!212 = !{!151, !127, i64 864}
!213 = !{!"branch_weights", i32 0, i32 184}
!214 = !{!"branch_weights", i32 59430, i32 390390}
!215 = !{!"branch_weights", i32 154, i32 30}
!216 = !{!"branch_weights", i32 16, i32 14}
!217 = !{!"branch_weights", i32 16, i32 0}
!218 = !{!"branch_weights", i32 26, i32 4}
!219 = !{!"branch_weights", i32 0, i32 30}
!220 = !{!"branch_weights", i32 3424, i32 0}
!221 = !{!"branch_weights", i32 3420, i32 4}
!222 = !{!"branch_weights", i32 3420, i32 0}
!223 = !{!"branch_weights", i32 3608, i32 0}
!224 = !{!"branch_weights", i32 607, i32 130340}
!225 = !{!"branch_weights", i32 130340, i32 0}
!226 = !{!"branch_weights", i32 130947, i32 0}
!227 = !{!"function_entry_count", i64 26336}
!228 = !{!"branch_weights", i32 26336, i32 0}
!229 = !{!"branch_weights", i32 24310, i32 2026}
!230 = !{!151, !127, i64 1240}
!231 = !{!"VP", i32 0, i64 24310, i64 -474407901004278561, i64 24310}
!232 = !{!"branch_weights", i32 24310, i32 0}
!233 = !{!"branch_weights", i32 24310, i32 48620}
!234 = !{!"branch_weights", i32 0, i32 72930}
!235 = !{!"branch_weights", i32 0, i32 24310}
!236 = !{!237, !127, i64 0}
!237 = !{!"record_layout_info_s", !127, i64 0, !127, i64 8, !132, i64 16, !127, i64 24, !132, i64 32, !132, i64 36, !127, i64 40, !127, i64 48, !132, i64 56, !132, i64 60}
!238 = !{!237, !132, i64 32}
!239 = !{!237, !132, i64 36}
!240 = !{!237, !132, i64 16}
!241 = !{!237, !127, i64 8}
!242 = !{!237, !127, i64 24}
!243 = !{!"function_entry_count", i64 3122}
!244 = !{!"function_entry_count", i64 3}
!245 = !{!"function_entry_count", i64 9221}
!246 = !{!"branch_weights", i32 2491, i32 6730}
!247 = !{!237, !132, i64 56}
!248 = !{!237, !132, i64 60}
!249 = !{!237, !127, i64 48}
!250 = !{!"function_entry_count", i64 3604}
!251 = !{!"branch_weights", i32 0, i32 3604}
!252 = !{!"branch_weights", i32 3420, i32 184}
!253 = !{!"VP", i32 0, i64 3604, i64 6187206240756078418, i64 3604}
!254 = !{!"branch_weights", i32 3604, i32 0}
!255 = !{!237, !127, i64 40}
!256 = !{!"branch_weights", i32 184, i32 3420}
!257 = !{!"branch_weights", i32 14, i32 170}
!258 = !{!151, !127, i64 888}
!259 = !{!"VP", i32 0, i64 14, i64 588856467287548527, i64 14}
!260 = !{!"branch_weights", i32 14, i32 0}
!261 = !{!"branch_weights", i32 170, i32 0}
!262 = !{!"branch_weights", i32 0, i32 0, i32 3604}
!263 = !{!"branch_weights", i32 3467, i32 137}
!264 = !{!"branch_weights", i32 137, i32 0}
!265 = !{!"branch_weights", i32 0, i32 137}
!266 = !{!"branch_weights", i32 0, i32 137, i32 0}
!267 = !{!"branch_weights", i32 0, i32 3467}
!268 = !{!"branch_weights", i32 1031, i32 2436}
!269 = !{!"branch_weights", i32 177, i32 2259}
!270 = !{!"branch_weights", i32 0, i32 177}
!271 = !{!"branch_weights", i32 2259, i32 1208}
!272 = !{!"branch_weights", i32 2259, i32 0}
!273 = !{!"branch_weights", i32 3467, i32 0}
!274 = !{!"branch_weights", i32 4, i32 3463}
!275 = !{!"VP", i32 0, i64 4, i64 6187206240756078418, i64 4}
!276 = !{!"branch_weights", i32 4, i32 0}
!277 = !{!"branch_weights", i32 0, i32 4}
!278 = !{!"VP", i32 0, i64 3467, i64 6187206240756078418, i64 3467}
!279 = !{!"branch_weights", i32 3313, i32 154}
!280 = !{!"branch_weights", i32 154, i32 0}
!281 = !{!"branch_weights", i32 0, i32 154}
!282 = !{!"branch_weights", i32 1029, i32 2438}
!283 = !{!"branch_weights", i32 179, i32 2259}
!284 = !{!"branch_weights", i32 0, i32 179}
!285 = !{!"branch_weights", i32 3463, i32 4}
!286 = !{!"branch_weights", i32 3269, i32 198}
!287 = !{!"branch_weights", i32 3250, i32 19}
!288 = !{!"function_entry_count", i64 2287}
!289 = !{!"branch_weights", i32 0, i32 2287}
!290 = !{!"branch_weights", i32 1, i32 2179}
!291 = !{!"branch_weights", i32 3229, i32 0}
!292 = !{!"branch_weights", i32 3229, i32 0, i32 0}
!293 = !{!"branch_weights", i32 108, i32 3121}
!294 = !{!"branch_weights", i32 108, i32 0}
!295 = !{!"branch_weights", i32 0, i32 108}
!296 = !{!"branch_weights", i32 107, i32 1}
!297 = !{!"branch_weights", i32 0, i32 3122}
!298 = !{!"branch_weights", i32 1026, i32 2096}
!299 = !{!"branch_weights", i32 2179, i32 1050}
!300 = distinct !{!300, !143, !144}
!301 = !{!"branch_weights", i32 2162, i32 18}
!302 = !{!"branch_weights", i32 2030, i32 150}
!303 = !{!"branch_weights", i32 0, i32 2030}
!304 = !{!"branch_weights", i32 2030, i32 0}
!305 = !{!"branch_weights", i32 0, i32 2180}
!306 = !{!"branch_weights", i32 6, i32 2281}
!307 = !{!"branch_weights", i32 20, i32 2267}
!308 = !{!"branch_weights", i32 2287, i32 0}
!309 = !{!"branch_weights", i32 2275, i32 12}
!310 = !{!"branch_weights", i32 12, i32 0}
!311 = distinct !{!311, !143, !144}
!312 = distinct !{!312, !143, !144}
!313 = !{!"function_entry_count", i64 18812}
!314 = !{!"stor-layout.c;finalize_type_size"}
!315 = !{!"branch_weights", i32 2026, i32 16786}
!316 = !{!"branch_weights", i32 598, i32 18214}
!317 = !{!"branch_weights", i32 2026, i32 16188}
!318 = !{!"branch_weights", i32 1, i32 18213}
!319 = !{!"branch_weights", i32 11979, i32 2069, i32 18, i32 0, i32 2121, i32 2026}
!320 = !{!"branch_weights", i32 14005, i32 0}
!321 = !{!"branch_weights", i32 0, i32 14005}
!322 = !{!"branch_weights", i32 113, i32 18699}
!323 = !{!"branch_weights", i32 113, i32 0}
!324 = !{!"branch_weights", i32 18699, i32 0}
!325 = !{!"branch_weights", i32 18801, i32 11}
!326 = !{!"branch_weights", i32 18801, i32 0}
!327 = !{!"branch_weights", i32 0, i32 11}
!328 = !{!"branch_weights", i32 1, i32 175}
!329 = !{!"branch_weights", i32 175, i32 193}
!330 = distinct !{!330, !143, !144}
!331 = distinct !{!331, !143, !144}
!332 = !{!"function_entry_count", i64 26465}
!333 = !{!"branch_weights", i32 0, i32 26465}
!334 = !{!"branch_weights", i32 18812, i32 7653}
!335 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 175, i32 110, i32 7, i32 36, i32 5, i32 2026, i32 1, i32 0, i32 10586, i32 0, i32 1058, i32 2, i32 2519, i32 2259, i32 28, i32 0}
!336 = !{!"branch_weights", i32 285, i32 0}
!337 = !{!"branch_weights", i32 273, i32 12}
!338 = !{!"branch_weights", i32 272, i32 285}
!339 = !{!"branch_weights", i32 0, i32 557}
!340 = !{!"branch_weights", i32 0, i32 285}
!341 = !{!"branch_weights", i32 7, i32 10}
!342 = !{!"branch_weights", i32 0, i32 17}
!343 = !{!"branch_weights", i32 0, i32 7}
!344 = !{!"branch_weights", i32 0, i32 36}
!345 = !{!"branch_weights", i32 4, i32 1}
!346 = !{!"branch_weights", i32 5, i32 8}
!347 = !{!"branch_weights", i32 0, i32 13}
!348 = !{!"branch_weights", i32 0, i32 5}
!349 = !{!"branch_weights", i32 2026, i32 0}
!350 = !{!"branch_weights", i32 0, i32 2026}
!351 = !{!"branch_weights", i32 2026, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!352 = !{!"branch_weights", i32 2026, i32 2026}
!353 = !{!"branch_weights", i32 0, i32 4052}
!354 = distinct !{!354, !143, !144}
!355 = !{!"branch_weights", i32 10586, i32 0}
!356 = !{!"branch_weights", i32 0, i32 10586}
!357 = !{!"branch_weights", i32 0, i32 1060}
!358 = !{!"branch_weights", i32 2, i32 1058}
!359 = !{!151, !127, i64 1184}
!360 = !{!"branch_weights", i32 110, i32 2409}
!361 = !{!"branch_weights", i32 2, i32 2407}
!362 = !{!"branch_weights", i32 0, i32 2407}
!363 = !{!"branch_weights", i32 2407, i32 0}
!364 = !{!"branch_weights", i32 0, i32 2519}
!365 = !{!"branch_weights", i32 112, i32 2407}
!366 = !{!"branch_weights", i32 27, i32 2380}
!367 = !{!"branch_weights", i32 27, i32 0}
!368 = !{!"branch_weights", i32 2312, i32 68}
!369 = !{!"branch_weights", i32 0, i32 68}
!370 = !{!"branch_weights", i32 0, i32 2380}
!371 = !{!"branch_weights", i32 2519, i32 0}
!372 = !{!"branch_weights", i32 1, i32 2286}
!373 = !{!"branch_weights", i32 2286, i32 1318}
!374 = distinct !{!374, !143, !144}
!375 = !{!"branch_weights", i32 2287, i32 16525}
!376 = !{!"branch_weights", i32 4806, i32 14006}
!377 = !{!"branch_weights", i32 4806, i32 0}
!378 = !{!"function_entry_count", i64 8}
!379 = !{!"function_entry_count", i64 165}
!380 = !{!"branch_weights", i32 5, i32 160}
!381 = !{!"branch_weights", i32 2, i32 163}
!382 = !{!"function_entry_count", i64 20}
!383 = !{!"branch_weights", i32 10, i32 10}
!384 = !{!"branch_weights", i32 10, i32 20}
!385 = !{!"function_entry_count", i64 16}
!386 = !{!"branch_weights", i32 8, i32 8}
!387 = !{!"branch_weights", i32 8, i32 12}
!388 = !{!"branch_weights", i32 0, i32 20}
!389 = !{!"function_entry_count", i64 11}
!390 = !{!"branch_weights", i32 10, i32 1}
!391 = !{!"branch_weights", i32 2, i32 8}
!392 = !{!"branch_weights", i32 3, i32 1}
!393 = !{!"VP", i32 1, i64 1, i64 129, i64 1}
!394 = !{!"function_entry_count", i64 112}
!395 = !{!"branch_weights", i32 223, i32 1}
!396 = !{!"branch_weights", i32 233, i32 223}
!397 = distinct !{!397, !143, !144}
!398 = !{!"branch_weights", i32 0, i32 340}
!399 = !{!"branch_weights", i32 0, i32 112}
!400 = !{!"branch_weights", i32 112, i32 0}
!401 = !{!"branch_weights", i32 108, i32 4}
!402 = !{!151, !127, i64 896}
!403 = distinct !{!403, !143, !144}
!404 = !{!"function_entry_count", i64 1544424}
!405 = !{!"branch_weights", i32 1544424, i32 0}
!406 = !{!"branch_weights", i32 71723, i32 1472701}
!407 = distinct !{!407, !143, !144}

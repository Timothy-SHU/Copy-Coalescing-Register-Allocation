; ModuleID = 'lto-streamer.c'
source_filename = "lto-streamer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.lto_stats_d = type { i64, i64, i64, i64, i64, [10 x i64], i64, [188 x i64], i64, i64, i64, i64 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.bitpack_d = type { i64, i64, ptr }
%struct.VEC_bitpack_word_t_base = type { i32, i32, [1 x i64] }
%struct.tree_int_map = type { %struct.tree_map_base, i32 }
%struct.tree_map_base = type { ptr }
%struct.lto_streamer_cache_d = type { ptr, i32, ptr, ptr }
%struct.VEC_unsigned_base = type { i32, i32, [1 x i32] }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
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
@global_trees = external global [131 x ptr], align 16
@.str.53 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@integer_types = external global [11 x ptr], align 16
@sizetype_tab = external global [4 x ptr], align 16
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
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
  %5 = tail call ptr @__ctype_tolower_loc() #17
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
  %5 = tail call ptr @__ctype_toupper_loc() #17
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

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local ptr @lto_tag_name(i32 noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = add i32 %0, -1
  %3 = icmp ugt i32 %2, 187
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  %6 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  br label %36

8:                                                ; preds = %1
  %9 = add i32 %0, -189
  %10 = icmp ugt i32 %9, 34
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = zext nneg i32 %9 to i64
  %13 = getelementptr inbounds [0 x ptr], ptr @gimple_code_name, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  br label %36

15:                                               ; preds = %8
  switch i32 %0, label %35 [
    i32 0, label %36
    i32 224, label %16
    i32 225, label %17
    i32 226, label %18
    i32 228, label %19
    i32 229, label %20
    i32 230, label %21
    i32 231, label %22
    i32 232, label %23
    i32 233, label %24
    i32 236, label %25
    i32 238, label %26
    i32 239, label %27
    i32 240, label %28
    i32 241, label %29
    i32 242, label %30
    i32 243, label %31
    i32 244, label %32
    i32 245, label %33
    i32 248, label %34
  ]

16:                                               ; preds = %15
  br label %36

17:                                               ; preds = %15
  br label %36

18:                                               ; preds = %15
  br label %36

19:                                               ; preds = %15
  br label %36

20:                                               ; preds = %15
  br label %36

21:                                               ; preds = %15
  br label %36

22:                                               ; preds = %15
  br label %36

23:                                               ; preds = %15
  br label %36

24:                                               ; preds = %15
  br label %36

25:                                               ; preds = %15
  br label %36

26:                                               ; preds = %15
  br label %36

27:                                               ; preds = %15
  br label %36

28:                                               ; preds = %15
  br label %36

29:                                               ; preds = %15
  br label %36

30:                                               ; preds = %15
  br label %36

31:                                               ; preds = %15
  br label %36

32:                                               ; preds = %15
  br label %36

33:                                               ; preds = %15
  br label %36

34:                                               ; preds = %15
  br label %36

35:                                               ; preds = %15
  br label %36

36:                                               ; preds = %15, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %11, %4
  %37 = phi ptr [ %7, %4 ], [ %14, %11 ], [ @.str.20, %35 ], [ @.str.19, %34 ], [ @.str.18, %33 ], [ @.str.17, %32 ], [ @.str.16, %31 ], [ @.str.15, %30 ], [ @.str.14, %29 ], [ @.str.13, %28 ], [ @.str.12, %27 ], [ @.str.11, %26 ], [ @.str.10, %25 ], [ @.str.9, %24 ], [ @.str.8, %23 ], [ @.str.7, %22 ], [ @.str.6, %21 ], [ @.str.5, %20 ], [ @.str.4, %19 ], [ @.str.3, %18 ], [ @.str.2, %17 ], [ @.str.1, %16 ], [ @.str, %15 ]
  ret ptr %37
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lto_bitmap_alloc() local_unnamed_addr #10 !prof !34 {
  %1 = load i1, ptr @lto_obstack_initialized, align 1
  br i1 %1, label %3, label %2

2:                                                ; preds = %0
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @lto_obstack) #17
  store i1 true, ptr @lto_obstack_initialized, align 1
  br label %3

3:                                                ; preds = %2, %0
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @lto_obstack) #17
  ret ptr %4
}

declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_bitmap_free(ptr noundef %0) local_unnamed_addr #10 !prof !34 {
  tail call void @bitmap_obstack_free(ptr noundef %0) #17
  ret void
}

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lto_get_section_name(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !34 {
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 146, ptr noundef nonnull @.str.22) #17
  br label %6

6:                                                ; preds = %3, %5
  %7 = load i8, ptr %1, align 1, !tbaa !46
  %8 = icmp eq i8 %7, 42
  %9 = zext i1 %8 to i64
  %10 = getelementptr inbounds i8, ptr %1, i64 %9
  %11 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.23, ptr noundef nonnull %10, ptr noundef null) #17
  br label %31

12:                                               ; preds = %2
  %13 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef null) #17
  br label %31

14:                                               ; preds = %2
  %15 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.25, ptr noundef null) #17
  br label %31

16:                                               ; preds = %2
  %17 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.26, ptr noundef null) #17
  br label %31

18:                                               ; preds = %2
  %19 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.27, ptr noundef null) #17
  br label %31

20:                                               ; preds = %2
  %21 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.28, ptr noundef null) #17
  br label %31

22:                                               ; preds = %2
  %23 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.29, ptr noundef null) #17
  br label %31

24:                                               ; preds = %2
  %25 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.30, ptr noundef null) #17
  br label %31

26:                                               ; preds = %2
  %27 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.31, ptr noundef null) #17
  br label %31

28:                                               ; preds = %2
  %29 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.32, ptr noundef null) #17
  br label %31

30:                                               ; preds = %2
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.33, ptr noundef %1) #17
  br label %31

31:                                               ; preds = %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %6
  %32 = phi ptr [ null, %30 ], [ %29, %28 ], [ %27, %26 ], [ %25, %24 ], [ %23, %22 ], [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %15, %14 ], [ %13, %12 ], [ %11, %6 ]
  ret ptr %32
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @concat(ptr noundef, ...) local_unnamed_addr #3

declare void @internal_error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @print_lto_report() local_unnamed_addr #10 !prof !34 {
  %1 = load i32, ptr @flag_lto, align 4, !tbaa !50
  %2 = icmp eq i32 %1, 0
  %3 = load i32, ptr @flag_wpa, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, ptr @.str.36, ptr @.str.35
  %6 = select i1 %2, ptr %5, ptr @.str.34
  %7 = load ptr, ptr @stderr, align 8, !tbaa !35
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.37, ptr noundef nonnull %6) #18
  %9 = load ptr, ptr @stderr, align 8, !tbaa !35
  %10 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 2), align 8, !tbaa !54
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.38, ptr noundef nonnull %6, i64 noundef %10) #18
  %12 = load ptr, ptr @stderr, align 8, !tbaa !35
  %13 = load i64, ptr @lto_stats, align 8, !tbaa !56
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.39, ptr noundef nonnull %6, i64 noundef %13) #18
  %15 = load ptr, ptr @stderr, align 8, !tbaa !35
  %16 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 6), align 8, !tbaa !57
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.40, ptr noundef nonnull %6, i64 noundef %16) #18
  %18 = load ptr, ptr @stderr, align 8, !tbaa !35
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.41, ptr noundef nonnull %6) #18
  tail call void @print_gimple_types_stats() #17
  br label %20

20:                                               ; preds = %0, %30
  %21 = phi i64 [ 0, %0 ], [ %31, %30 ]
  %22 = getelementptr inbounds %struct.lto_stats_d, ptr @lto_stats, i64 0, i32 7, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !58
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr @stderr, align 8, !tbaa !35
  %27 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %21
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.42, ptr noundef nonnull %6, ptr noundef %28, i64 noundef %23) #18
  br label %30

30:                                               ; preds = %20, %25
  %31 = add nuw nsw i64 %21, 1
  %32 = icmp eq i64 %31, 188
  br i1 %32, label %33, label %20, !llvm.loop !59

33:                                               ; preds = %30
  %34 = load i32, ptr @flag_lto, align 4, !tbaa !50
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr @stderr, align 8, !tbaa !35
  %38 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 8), align 8, !tbaa !60
  %39 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 9), align 8, !tbaa !61
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.43, ptr noundef nonnull %6, i64 noundef %38, i64 noundef %39) #18
  %41 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 8), align 8, !tbaa !60
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %36
  %44 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 9), align 8, !tbaa !61
  %45 = uitofp i64 %44 to float
  %46 = uitofp i64 %41 to float
  %47 = load ptr, ptr @stderr, align 8, !tbaa !35
  %48 = fdiv float %45, %46
  %49 = fpext float %48 to double
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.44, double noundef %49) #18
  br label %51

51:                                               ; preds = %43, %36
  %52 = load ptr, ptr @stderr, align 8, !tbaa !35
  %53 = tail call i32 @fputc(i32 10, ptr %52)
  br label %54

54:                                               ; preds = %51, %33
  %55 = load i32, ptr @flag_wpa, align 4, !tbaa !50
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %84, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr @stderr, align 8, !tbaa !35
  %59 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 3), align 8, !tbaa !62
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.46, ptr noundef nonnull %6, i64 noundef %59) #18
  %61 = load ptr, ptr @stderr, align 8, !tbaa !35
  %62 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 1), align 8, !tbaa !63
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.47, ptr noundef nonnull %6, i64 noundef %62) #18
  %64 = load ptr, ptr @stderr, align 8, !tbaa !35
  %65 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 4), align 8, !tbaa !64
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.48, ptr noundef nonnull %6, i64 noundef %65) #18
  %67 = load ptr, ptr @stderr, align 8, !tbaa !35
  %68 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 10), align 8, !tbaa !65
  %69 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 11), align 8, !tbaa !66
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.49, ptr noundef nonnull %6, i64 noundef %68, i64 noundef %69) #18
  %71 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 10), align 8, !tbaa !65
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %57
  %74 = load i64, ptr getelementptr inbounds (%struct.lto_stats_d, ptr @lto_stats, i64 0, i32 11), align 8, !tbaa !66
  %75 = uitofp i64 %74 to float
  %76 = uitofp i64 %71 to float
  %77 = load ptr, ptr @stderr, align 8, !tbaa !35
  %78 = fdiv float %75, %76
  %79 = fpext float %78 to double
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef nonnull @.str.44, double noundef %79) #18
  br label %81

81:                                               ; preds = %73, %57
  %82 = load ptr, ptr @stderr, align 8, !tbaa !35
  %83 = tail call i32 @fputc(i32 10, ptr %82)
  br label %84

84:                                               ; preds = %81, %54
  br label %85

85:                                               ; preds = %84, %85
  %86 = phi i64 [ %93, %85 ], [ 0, %84 ]
  %87 = load ptr, ptr @stderr, align 8, !tbaa !35
  %88 = getelementptr inbounds [0 x ptr], ptr @lto_section_name, i64 0, i64 %86
  %89 = load ptr, ptr %88, align 8, !tbaa !35
  %90 = getelementptr inbounds %struct.lto_stats_d, ptr @lto_stats, i64 0, i32 5, i64 %86
  %91 = load i64, ptr %90, align 8, !tbaa !58
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.50, ptr noundef nonnull %6, ptr noundef %89, i64 noundef %91) #18
  %93 = add nuw nsw i64 %86, 1
  %94 = icmp eq i64 %93, 10
  br i1 %94, label %95, label %85, !llvm.loop !67

95:                                               ; preds = %85
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_gimple_types_stats() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @bitpack_create() local_unnamed_addr #10 !prof !34 {
  %1 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #17
  ret ptr %1
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define dso_local void @bitpack_delete(ptr nocapture noundef %0) local_unnamed_addr #11 !prof !34 {
  %2 = getelementptr inbounds %struct.bitpack_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef %3)
  br label %6

6:                                                ; preds = %1, %5
  store ptr null, ptr %2, align 8, !tbaa !35
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind uwtable
define dso_local void @bp_pack_value(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !34 {
  %4 = add i32 %2, -1
  %5 = icmp ult i32 %4, 64
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 324, ptr noundef nonnull @.str.22) #17
  br label %7

7:                                                ; preds = %3, %6
  %8 = load i64, ptr %0, align 8, !tbaa !68
  %9 = lshr i64 %8, 6
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds %struct.bitpack_d, ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !70
  %13 = and i64 %12, 63
  store i64 %13, ptr %11, align 8, !tbaa !70
  %14 = trunc i64 %13 to i32
  %15 = add i32 %2, -65
  %16 = add i32 %15, %14
  %17 = icmp ult i32 %16, -64
  br i1 %17, label %18, label %22

18:                                               ; preds = %7
  %19 = add i32 %10, 1
  %20 = add i64 %8, 64
  %21 = sub i64 %20, %13
  store i64 %21, ptr %0, align 8, !tbaa !68
  store i64 0, ptr %11, align 8, !tbaa !70
  br label %22

22:                                               ; preds = %7, %18
  %23 = phi i32 [ %19, %18 ], [ %10, %7 ]
  %24 = getelementptr inbounds %struct.bitpack_d, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !71
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, ptr %25, align 8, !tbaa !72
  br label %29

29:                                               ; preds = %22, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %22 ]
  %31 = icmp ult i32 %23, %30
  br i1 %31, label %56, label %32

32:                                               ; preds = %29
  br i1 %26, label %36, label %33

33:                                               ; preds = %32
  %34 = load i32, ptr %25, align 8, !tbaa !72
  %35 = add i32 %34, 1
  br label %36

36:                                               ; preds = %32, %33
  %37 = phi i32 [ %35, %33 ], [ 1, %32 ]
  %38 = icmp ult i32 %23, %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 334, ptr noundef nonnull @.str.22) #17
  br label %40

40:                                               ; preds = %36, %39
  %41 = load ptr, ptr %24, align 8, !tbaa !35
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.VEC_bitpack_word_t_base, ptr %41, i64 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !74
  %46 = load i32, ptr %41, align 8, !tbaa !72
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %40, %43
  %49 = tail call ptr @vec_heap_o_reserve(ptr noundef %41, i32 noundef 1, i64 noundef 8, i64 noundef 8) #17
  store ptr %49, ptr %24, align 8, !tbaa !35
  br label %50

50:                                               ; preds = %43, %48
  %51 = load ptr, ptr %24, align 8, !tbaa !35
  %52 = load i32, ptr %51, align 8, !tbaa !72
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 8, !tbaa !72
  %54 = zext i32 %52 to i64
  %55 = getelementptr inbounds %struct.VEC_bitpack_word_t_base, ptr %51, i64 0, i32 2, i64 %54
  store i64 0, ptr %55, align 8, !tbaa !58
  br label %56

56:                                               ; preds = %50, %29
  %57 = load ptr, ptr %24, align 8, !tbaa !71
  %58 = zext i32 %23 to i64
  %59 = getelementptr inbounds %struct.VEC_bitpack_word_t_base, ptr %57, i64 0, i32 2, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !58
  %61 = load i64, ptr %11, align 8, !tbaa !70
  %62 = zext i32 %2 to i64
  %63 = add i64 %61, %62
  %64 = icmp ult i64 %63, 65
  br i1 %64, label %66, label %65

65:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 343, ptr noundef nonnull @.str.22) #17
  br label %66

66:                                               ; preds = %56, %65
  %67 = load i64, ptr %11, align 8, !tbaa !70
  %68 = load ptr, ptr %24, align 8, !tbaa !71
  %69 = shl i64 %1, %67
  %70 = or i64 %69, %60
  %71 = getelementptr inbounds %struct.VEC_bitpack_word_t_base, ptr %68, i64 0, i32 2, i64 %58
  store i64 %70, ptr %71, align 8, !tbaa !58
  %72 = load i64, ptr %0, align 8, !tbaa !68
  %73 = add i64 %72, %62
  store i64 %73, ptr %0, align 8, !tbaa !68
  %74 = load i64, ptr %11, align 8, !tbaa !70
  %75 = add i64 %74, %62
  store i64 %75, ptr %11, align 8, !tbaa !70
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @bp_unpack_value(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !34 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 64
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 365, ptr noundef nonnull @.str.22) #17
  br label %6

6:                                                ; preds = %2, %5
  %7 = load i64, ptr %0, align 8, !tbaa !68
  %8 = lshr i64 %7, 6
  %9 = getelementptr inbounds %struct.bitpack_d, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !70
  %11 = and i64 %10, 63
  store i64 %11, ptr %9, align 8, !tbaa !70
  %12 = trunc i64 %11 to i32
  %13 = add i32 %1, -65
  %14 = add i32 %13, %12
  %15 = icmp ult i32 %14, -64
  br i1 %15, label %16, label %20

16:                                               ; preds = %6
  %17 = add nuw nsw i64 %8, 1
  %18 = add i64 %7, 64
  %19 = sub i64 %18, %11
  store i64 %19, ptr %0, align 8, !tbaa !68
  store i64 0, ptr %9, align 8, !tbaa !70
  br label %20

20:                                               ; preds = %6, %16
  %21 = phi i64 [ %17, %16 ], [ %8, %6 ]
  %22 = getelementptr inbounds %struct.bitpack_d, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !71
  %24 = and i64 %21, 4294967295
  %25 = getelementptr inbounds %struct.VEC_bitpack_word_t_base, ptr %23, i64 0, i32 2, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !58
  %27 = icmp eq i32 %1, 64
  %28 = zext i32 %1 to i64
  %29 = shl nsw i64 -1, %28
  %30 = xor i64 %29, -1
  %31 = select i1 %27, i64 -1, i64 %30
  %32 = load i64, ptr %9, align 8, !tbaa !70
  %33 = lshr i64 %26, %32
  %34 = and i64 %33, %31
  %35 = load i64, ptr %0, align 8, !tbaa !68
  %36 = add i64 %35, %28
  store i64 %36, ptr %0, align 8, !tbaa !68
  %37 = add i64 %32, %28
  store i64 %37, ptr %9, align 8, !tbaa !70
  ret i64 %34
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @lto_streamer_cache_insert(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !prof !34 {
  %5 = tail call fastcc zeroext i8 @lto_streamer_cache_insert_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1), !range !75
  ret i8 %5
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @lto_streamer_cache_insert_1(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #10 !prof !34 {
  %6 = alloca %struct.tree_int_map, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 491, ptr noundef nonnull @.str.22) #17
  br label %9

9:                                                ; preds = %5, %8
  store ptr %1, ptr %6, align 8, !tbaa !76
  %10 = load ptr, ptr %0, align 8, !tbaa !79
  %11 = call ptr @htab_find_slot(ptr noundef %10, ptr noundef nonnull %6, i32 noundef 1) #17
  %12 = load ptr, ptr %11, align 8, !tbaa !35
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
  %21 = load i32, ptr %2, align 4, !tbaa !50
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i32 [ %18, %16 ], [ %21, %20 ]
  %24 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #17
  store ptr %1, ptr %24, align 8, !tbaa !76
  %25 = getelementptr inbounds %struct.tree_int_map, ptr %24, i64 0, i32 1
  store i32 %23, ptr %25, align 8, !tbaa !82
  store ptr %24, ptr %11, align 8, !tbaa !35
  %26 = icmp eq ptr %3, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, ptr %3, align 4, !tbaa !50
  br label %29

29:                                               ; preds = %22, %27
  %30 = phi i32 [ %28, %27 ], [ -1, %22 ]
  call fastcc void @lto_streamer_cache_add_to_node_array(ptr noundef nonnull %0, i32 noundef %23, ptr noundef %1, i32 noundef %30)
  br label %60

31:                                               ; preds = %9
  %32 = getelementptr inbounds %struct.tree_int_map, ptr %12, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !82
  %34 = getelementptr inbounds %struct.lto_streamer_cache_d, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !83
  %36 = zext i32 %33 to i64
  %37 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %35, i64 0, i32 2, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !50
  %39 = icmp eq i8 %4, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %31
  %41 = load i32, ptr %2, align 4, !tbaa !50
  %42 = icmp eq i32 %33, %41
  br i1 %42, label %60, label %43

43:                                               ; preds = %40
  %44 = load i64, ptr %1, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 29
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !46
  %50 = icmp ult i32 %49, 2
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 11
  %55 = or i32 %54, -4
  %56 = icmp ult i32 %55, -2
  br i1 %56, label %57, label %58

57:                                               ; preds = %47, %43, %51
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 536, ptr noundef nonnull @.str.22) #17
  br label %58

58:                                               ; preds = %51, %57
  %59 = load i32, ptr %2, align 4, !tbaa !50
  call fastcc void @lto_streamer_cache_add_to_node_array(ptr noundef nonnull %0, i32 noundef %59, ptr noundef nonnull %1, i32 noundef -1)
  br label %60

60:                                               ; preds = %31, %40, %58, %29
  %61 = phi i32 [ %23, %29 ], [ %33, %31 ], [ %59, %58 ], [ %33, %40 ]
  %62 = phi i32 [ %30, %29 ], [ %38, %31 ], [ %38, %58 ], [ %38, %40 ]
  %63 = phi i8 [ 0, %29 ], [ 1, %31 ], [ 1, %58 ], [ 1, %40 ]
  %64 = icmp eq ptr %2, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  store i32 %61, ptr %2, align 4, !tbaa !50
  br label %66

66:                                               ; preds = %65, %60
  %67 = icmp eq ptr %3, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %66
  store i32 %62, ptr %3, align 4, !tbaa !50
  br label %69

69:                                               ; preds = %68, %66
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  ret i8 %63
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @lto_streamer_cache_insert_at(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !34 {
  %4 = alloca i32, align 4
  store i32 %2, ptr %4, align 4, !tbaa !50
  %5 = call fastcc zeroext i8 @lto_streamer_cache_insert_1(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 0), !range !75
  ret i8 %5
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @lto_streamer_cache_lookup(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #10 !prof !34 {
  %4 = alloca %struct.tree_int_map, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 605, ptr noundef nonnull @.str.22) #17
  br label %7

7:                                                ; preds = %3, %6
  store ptr %1, ptr %4, align 8, !tbaa !76
  %8 = load ptr, ptr %0, align 8, !tbaa !79
  %9 = call ptr @htab_find_slot(ptr noundef %8, ptr noundef nonnull %4, i32 noundef 0) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.tree_int_map, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !82
  br label %15

15:                                               ; preds = %7, %11
  %16 = phi i8 [ 1, %11 ], [ 0, %7 ]
  %17 = phi i32 [ %14, %11 ], [ -1, %7 ]
  %18 = icmp eq ptr %2, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 %17, ptr %2, align 4, !tbaa !50
  br label %20

20:                                               ; preds = %19, %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  ret i8 %16
}

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lto_streamer_cache_get(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 !prof !34 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 632, ptr noundef nonnull @.str.22) #17
  br label %5

5:                                                ; preds = %2, %4
  %6 = getelementptr inbounds %struct.lto_streamer_cache_d, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !84
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !85
  br label %11

11:                                               ; preds = %5, %9
  %12 = phi i32 [ %10, %9 ], [ 0, %5 ]
  %13 = icmp ugt i32 %12, %1
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = zext i32 %1 to i64
  %16 = getelementptr inbounds %struct.VEC_tree_base, ptr %7, i64 0, i32 2, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  br label %18

18:                                               ; preds = %11, %14
  %19 = phi ptr [ %17, %14 ], [ null, %11 ]
  ret ptr %19
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lto_streamer_cache_create() local_unnamed_addr #10 !prof !34 {
  %1 = alloca ptr, align 8
  %2 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #17
  %3 = tail call ptr @htab_create(i64 noundef 101, ptr noundef nonnull @tree_map_base_hash, ptr noundef nonnull @tree_map_base_eq, ptr noundef null) #17
  store ptr %3, ptr %2, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  store ptr null, ptr %1, align 8, !tbaa !35
  %4 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 56), align 16, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.tree_identifier, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(5) @.str.53)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 691, ptr noundef nonnull @.str.22) #17
  br label %14

12:                                               ; preds = %0
  %13 = tail call ptr @get_identifier(ptr noundef nonnull @.str.53) #17
  store ptr %13, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 56), align 16, !tbaa !35
  br label %14

14:                                               ; preds = %12, %11, %6
  %15 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 43), align 8, !tbaa !35
  %16 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !35
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #17
  br label %19

19:                                               ; preds = %18, %14
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 48), align 16, !tbaa !35
  %21 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 704, ptr noundef nonnull @.str.22) #17
  br label %24

24:                                               ; preds = %23, %19
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 48), align 16, !tbaa !35
  %26 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 16
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 705, ptr noundef nonnull @.str.22) #17
  br label %31

31:                                               ; preds = %30, %24
  %32 = tail call ptr @pointer_set_create() #17
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi i64 [ 1, %31 ], [ %36, %33 ]
  %35 = getelementptr inbounds [11 x ptr], ptr @integer_types, i64 0, i64 %34
  call fastcc void @lto_record_common_node(ptr noundef nonnull %35, ptr noundef nonnull %1, ptr noundef %32)
  %36 = add nuw nsw i64 %34, 1
  %37 = icmp eq i64 %36, 11
  br i1 %37, label %38, label %33, !llvm.loop !87

38:                                               ; preds = %33, %38
  %39 = phi i64 [ %41, %38 ], [ 0, %33 ]
  %40 = getelementptr inbounds [4 x ptr], ptr @sizetype_tab, i64 0, i64 %39
  call fastcc void @lto_record_common_node(ptr noundef nonnull %40, ptr noundef nonnull %1, ptr noundef %32)
  %41 = add nuw nsw i64 %39, 1
  %42 = icmp eq i64 %41, 4
  br i1 %42, label %43, label %38, !llvm.loop !88

43:                                               ; preds = %38, %43
  %44 = phi i64 [ %46, %43 ], [ 0, %38 ]
  %45 = getelementptr inbounds [131 x ptr], ptr @global_trees, i64 0, i64 %44
  call fastcc void @lto_record_common_node(ptr noundef nonnull %45, ptr noundef nonnull %1, ptr noundef %32)
  %46 = add nuw nsw i64 %44, 1
  %47 = icmp eq i64 %46, 131
  br i1 %47, label %48, label %43, !llvm.loop !89

48:                                               ; preds = %43
  tail call void @pointer_set_destroy(ptr noundef %32) #17
  %49 = load ptr, ptr %1, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  %50 = icmp eq ptr %49, null
  br label %51

51:                                               ; preds = %63, %48
  %52 = phi i32 [ 0, %48 ], [ %64, %63 ]
  br i1 %50, label %60, label %53

53:                                               ; preds = %51
  %54 = load i32, ptr %49, align 8, !tbaa !85
  %55 = icmp ugt i32 %54, %52
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = zext i32 %52 to i64
  %58 = getelementptr inbounds %struct.VEC_tree_base, ptr %49, i64 0, i32 2, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !35
  br label %60

60:                                               ; preds = %51, %53, %56
  %61 = phi ptr [ %59, %56 ], [ null, %53 ], [ null, %51 ]
  %62 = phi i1 [ false, %56 ], [ true, %53 ], [ true, %51 ]
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  tail call fastcc void @preload_common_node(ptr noundef nonnull %2, ptr noundef %61)
  %64 = add i32 %52, 1
  br label %51, !llvm.loop !90

65:                                               ; preds = %60
  br i1 %50, label %67, label %66

66:                                               ; preds = %65
  tail call void @free(ptr noundef %49)
  br label %67

67:                                               ; preds = %65, %66
  ret ptr %2
}

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @tree_map_base_hash(ptr noundef) #3

declare i32 @tree_map_base_eq(ptr noundef, ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @preload_common_node(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #10 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 732, ptr noundef nonnull @.str.22) #17
  br label %5

5:                                                ; preds = %2, %4
  %6 = tail call fastcc zeroext i8 @lto_streamer_cache_insert_1(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null, i8 noundef zeroext 1), !range !75
  %7 = load i64, ptr %1, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 16
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %17, %14 ], [ %12, %10 ]
  tail call fastcc void @preload_common_node(ptr noundef %0, ptr noundef nonnull %15)
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !llvm.loop !91

19:                                               ; preds = %14, %10, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_streamer_cache_delete(ptr noundef %0) local_unnamed_addr #10 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !79
  tail call void @htab_delete(ptr noundef %4) #17
  %5 = getelementptr inbounds %struct.lto_streamer_cache_d, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @ggc_free(ptr noundef nonnull %6) #17
  br label %9

9:                                                ; preds = %3, %8
  store ptr null, ptr %5, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.lto_streamer_cache_d, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @free(ptr noundef %11)
  br label %14

14:                                               ; preds = %9, %13
  store ptr null, ptr %10, align 8, !tbaa !35
  tail call void @free(ptr noundef %0)
  br label %15

15:                                               ; preds = %1, %14
  ret void
}

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_streamer_init() local_unnamed_addr #10 !prof !34 {
  %1 = alloca [34 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(34) %1, i8 0, i64 34, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(34) %1, i8 1, i64 34, i1 false)
  br label %2

2:                                                ; preds = %0, %8
  %3 = phi i64 [ 0, %0 ], [ %9, %8 ]
  %4 = getelementptr inbounds [34 x i8], ptr %1, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !46
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 444, ptr noundef nonnull @.str.22) #17
  br label %8

8:                                                ; preds = %7, %2
  %9 = add nuw nsw i64 %3, 1
  %10 = icmp eq i64 %9, 34
  br i1 %10, label %11, label %2, !llvm.loop !92

11:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %1) #17
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @gate_lto_out() local_unnamed_addr #13 !prof !93 {
  %1 = load i32, ptr @flag_generate_lto, align 4, !tbaa !50
  %2 = icmp ne i32 %1, 0
  %3 = load i8, ptr @in_lto_p, align 1
  %4 = icmp ne i8 %3, 0
  %5 = select i1 %2, i1 true, i1 %4, !prof !94
  br i1 %5, label %6, label %16, !prof !94

6:                                                ; preds = %0
  %7 = load ptr, ptr @global_dc, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.diagnostic_context, ptr %7, i64 0, i32 1, i64 4
  %9 = load i32, ptr %8, align 8, !tbaa !50
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.diagnostic_context, ptr %7, i64 0, i32 1, i64 5
  %13 = load i32, ptr %12, align 4, !tbaa !50
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %6, %11, %0
  %17 = phi i8 [ 0, %0 ], [ 0, %6 ], [ %15, %11 ]
  ret i8 %17
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_check_version(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !34 {
  %3 = icmp ne i32 %0, 1
  %4 = icmp ne i32 %1, 0
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.51, i32 noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 0) #17
  br label %7

7:                                                ; preds = %2, %6
  ret void
}

declare void @fatal_error(ptr noundef, ...) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @lto_streamer_cache_add_to_node_array(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #10 !prof !34 {
  %5 = icmp sgt i32 %1, -1
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 455, ptr noundef nonnull @.str.22) #17
  br label %7

7:                                                ; preds = %4, %6
  %8 = getelementptr inbounds %struct.lto_streamer_cache_d, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %9, align 8, !tbaa !85
  br label %13

13:                                               ; preds = %7, %11
  %14 = phi i32 [ %12, %11 ], [ 0, %7 ]
  %15 = icmp sgt i32 %14, %1
  br i1 %15, label %81, label %16

16:                                               ; preds = %13
  %17 = add nsw i32 %1, 20
  %18 = sdiv i32 %17, 4
  %19 = add nsw i32 %18, %1
  br i1 %10, label %22, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %9, align 8, !tbaa !85
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i32 [ %21, %20 ], [ 0, %16 ]
  br i1 %10, label %26, label %24

24:                                               ; preds = %22
  %25 = load i32, ptr %9, align 8, !tbaa !85
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %25, %24 ], [ 0, %22 ]
  %28 = sub nsw i32 %19, %27
  br i1 %10, label %35, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.VEC_tree_base, ptr %9, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !95
  %32 = load i32, ptr %9, align 8, !tbaa !85
  %33 = sub i32 %31, %32
  %34 = icmp uge i32 %33, %28
  br label %37

35:                                               ; preds = %26
  %36 = icmp eq i32 %27, %19
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi i1 [ %34, %29 ], [ %36, %35 ]
  br i1 %38, label %41, label %39

39:                                               ; preds = %37
  %40 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef %9, i32 noundef %28) #17
  store ptr %40, ptr %8, align 8, !tbaa !35
  br label %41

41:                                               ; preds = %37, %39
  %42 = load ptr, ptr %8, align 8, !tbaa !35, !nonnull !96, !noundef !96
  store i32 %19, ptr %42, align 8, !tbaa !85
  %43 = getelementptr inbounds %struct.VEC_tree_base, ptr %42, i64 0, i32 2
  %44 = sext i32 %23 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  %46 = sub nsw i32 %19, %23
  %47 = sext i32 %46 to i64
  %48 = shl nsw i64 %47, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %45, i8 0, i64 %48, i1 false)
  %49 = getelementptr inbounds %struct.lto_streamer_cache_d, ptr %0, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !35
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  %53 = load i32, ptr %50, align 4, !tbaa !97
  br label %54

54:                                               ; preds = %52, %41
  %55 = phi i32 [ %53, %52 ], [ 0, %41 ]
  br i1 %51, label %58, label %56

56:                                               ; preds = %54
  %57 = load i32, ptr %50, align 4, !tbaa !97
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %57, %56 ], [ 0, %54 ]
  %60 = sub nsw i32 %19, %59
  br i1 %51, label %67, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %50, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !99
  %64 = load i32, ptr %50, align 4, !tbaa !97
  %65 = sub i32 %63, %64
  %66 = icmp uge i32 %65, %60
  br label %69

67:                                               ; preds = %58
  %68 = icmp eq i32 %59, %19
  br label %69

69:                                               ; preds = %67, %61
  %70 = phi i1 [ %66, %61 ], [ %68, %67 ]
  br i1 %70, label %73, label %71

71:                                               ; preds = %69
  %72 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %50, i32 noundef %60, i64 noundef 8, i64 noundef 4) #17
  store ptr %72, ptr %49, align 8, !tbaa !35
  br label %73

73:                                               ; preds = %69, %71
  %74 = load ptr, ptr %49, align 8, !tbaa !35, !nonnull !96, !noundef !96
  store i32 %19, ptr %74, align 4, !tbaa !97
  %75 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %74, i64 0, i32 2
  %76 = sext i32 %55 to i64
  %77 = getelementptr inbounds i32, ptr %75, i64 %76
  %78 = sub nsw i32 %19, %55
  %79 = sext i32 %78 to i64
  %80 = shl nsw i64 %79, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %77, i8 0, i64 %80, i1 false)
  br label %81

81:                                               ; preds = %73, %13
  %82 = load ptr, ptr %8, align 8, !tbaa !84
  %83 = zext i32 %1 to i64
  %84 = getelementptr inbounds %struct.VEC_tree_base, ptr %82, i64 0, i32 2, i64 %83
  store ptr %2, ptr %84, align 8, !tbaa !35
  %85 = getelementptr inbounds %struct.lto_streamer_cache_d, ptr %0, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !83
  %87 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %86, i64 0, i32 2, i64 %83
  store i32 %3, ptr %87, align 4, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

declare ptr @pointer_set_create() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @lto_record_common_node(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #10 !prof !34 {
  br label %4

4:                                                ; preds = %41, %3
  %5 = phi ptr [ %0, %3 ], [ %42, %41 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %4
  %9 = load i64, ptr %6, align 8
  %10 = and i64 %9, 65535
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !50
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = tail call ptr @gimple_register_type(ptr noundef nonnull %6) #17
  store ptr %15, ptr %5, align 8, !tbaa !35
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi ptr [ %15, %14 ], [ %6, %8 ]
  %18 = tail call i32 @pointer_set_insert(ptr noundef %2, ptr noundef %17) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %16
  %21 = load ptr, ptr %1, align 8, !tbaa !35
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.VEC_tree_base, ptr %21, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !95
  %26 = load i32, ptr %21, align 8, !tbaa !85
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20, %23
  %29 = tail call ptr @vec_heap_p_reserve(ptr noundef %21, i32 noundef 1) #17
  store ptr %29, ptr %1, align 8, !tbaa !35
  br label %30

30:                                               ; preds = %23, %28
  %31 = load ptr, ptr %1, align 8, !tbaa !35
  %32 = load i32, ptr %31, align 8, !tbaa !85
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 8, !tbaa !85
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds %struct.VEC_tree_base, ptr %31, i64 0, i32 2, i64 %34
  store ptr %17, ptr %35, align 8, !tbaa !35
  %36 = tail call zeroext i8 @tree_node_can_be_shared(ptr noundef %17) #17
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %30
  %39 = load i64, ptr %17, align 8
  %40 = trunc i64 %39 to i16
  switch i16 %40, label %43 [
    i16 10, label %41
    i16 12, label %41
    i16 13, label %41
    i16 15, label %41
  ]

41:                                               ; preds = %38, %38, %38, %38
  %42 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  br label %4

43:                                               ; preds = %30, %38, %16, %4
  ret void
}

declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_register_type(ptr noundef) local_unnamed_addr #3

declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @tree_node_can_be_shared(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ggc_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nounwind }
attributes #18 = { cold }

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
!54 = !{!55, !42, i64 16}
!55 = !{!"lto_stats_d", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !37, i64 40, !42, i64 120, !37, i64 128, !42, i64 1632, !42, i64 1640, !42, i64 1648, !42, i64 1656}
!56 = !{!55, !42, i64 0}
!57 = !{!55, !42, i64 120}
!58 = !{!42, !42, i64 0}
!59 = distinct !{!59, !52, !53}
!60 = !{!55, !42, i64 1632}
!61 = !{!55, !42, i64 1640}
!62 = !{!55, !42, i64 24}
!63 = !{!55, !42, i64 8}
!64 = !{!55, !42, i64 32}
!65 = !{!55, !42, i64 1648}
!66 = !{!55, !42, i64 1656}
!67 = distinct !{!67, !52, !53}
!68 = !{!69, !42, i64 0}
!69 = !{!"bitpack_d", !42, i64 0, !42, i64 8, !36, i64 16}
!70 = !{!69, !42, i64 8}
!71 = !{!69, !36, i64 16}
!72 = !{!73, !41, i64 0}
!73 = !{!"VEC_bitpack_word_t_base", !41, i64 0, !41, i64 4, !37, i64 8}
!74 = !{!73, !41, i64 4}
!75 = !{i8 0, i8 2}
!76 = !{!77, !36, i64 0}
!77 = !{!"tree_int_map", !78, i64 0, !41, i64 8}
!78 = !{!"tree_map_base", !36, i64 0}
!79 = !{!80, !36, i64 0}
!80 = !{!"lto_streamer_cache_d", !36, i64 0, !41, i64 8, !36, i64 16, !36, i64 24}
!81 = !{!80, !41, i64 8}
!82 = !{!77, !41, i64 8}
!83 = !{!80, !36, i64 24}
!84 = !{!80, !36, i64 16}
!85 = !{!86, !41, i64 0}
!86 = !{!"VEC_tree_base", !41, i64 0, !41, i64 4, !37, i64 8}
!87 = distinct !{!87, !52, !53}
!88 = distinct !{!88, !52, !53}
!89 = distinct !{!89, !52, !53}
!90 = distinct !{!90, !52, !53}
!91 = distinct !{!91, !52, !53}
!92 = distinct !{!92, !52, !53}
!93 = !{!"function_entry_count", i64 2}
!94 = !{!"branch_weights", i32 0, i32 2}
!95 = !{!86, !41, i64 4}
!96 = !{}
!97 = !{!98, !41, i64 0}
!98 = !{!"VEC_unsigned_base", !41, i64 0, !41, i64 4, !37, i64 8}
!99 = !{!98, !41, i64 4}

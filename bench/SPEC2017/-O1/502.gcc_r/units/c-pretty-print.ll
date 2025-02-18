; ModuleID = 'c-pretty-print.c'
source_filename = "c-pretty-print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.c_pretty_print_info = type { %struct.pretty_print_info, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pretty_print_info = type { ptr, ptr, i32, i32, i32, %struct.pp_wrapping_mode_t, ptr, i8, i8, i8 }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, ptr, ptr, ptr, i32, [128 x i8] }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_fixed_cst = type { %struct.tree_common, ptr }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.tree_vector = type { %struct.tree_common, ptr }
%struct.tree_complex = type { %struct.tree_common, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [3 x i8] c"->\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@flag_isoc99 = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"restrict\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"__restrict__\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"<type-error>\00", align 1
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str.6 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"<unnamed-unsigned:\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"<unnamed-signed:\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"<unnamed-float:\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"<unnamed-fixed:\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"c-pretty-print.c\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"<typedef-error>\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"<anonymous>\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"#%qs not supported by %s#\00", align 1
@tree_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@c_language = external local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [9 x i8] c"_Complex\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"__complex__\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"__vector\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"__attribute__\00", align 1
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@.str.32 = private unnamed_addr constant [23 x i8] c"<erroneous-expression>\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"<return-value>\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"__builtin_memcpy\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"isunordered\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"__builtin_isunordered\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"!isunordered\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"!__builtin_isunordered\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"!isgreaterequal\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"!__builtin_isgreaterequal\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"!isgreater\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"!__builtin_isgreater\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"!islessequal\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"!__builtin_islessequal\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"!isless\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"!__builtin_isless\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"!islessgreater\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"!__builtin_islessgreater\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"islessgreater\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"__builtin_islessgreater\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"__builtin_abs\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"__builtin_va_arg\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"__real__\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"__imag__\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"({...})\00", align 1
@print_c_tree.pp_rec = internal global %struct.c_pretty_print_info zeroinitializer, align 8
@print_c_tree.initialized = internal unnamed_addr global i1 false, align 1
@stderr = external local_unnamed_addr global ptr, align 8
@pp_c_tree_decl_identifier.xname = internal global [8 x i8] zeroinitializer, align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"<U%4x>\00", align 1
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@.str.60 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"\\'\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"_False\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"_True\00", align 1
@c_global_trees = external local_unnamed_addr global [55 x ptr], align 16
@.str.68 = private unnamed_addr constant [5 x i8] c"\\x%x\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"0x%lx%016lx\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"ll\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"dl\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"dd\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"df\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"!=\00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #10
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #10
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #10
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #10
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #10
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #10
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #10
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
  %5 = tail call ptr @__ctype_tolower_loc() #10
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
  %5 = tail call ptr @__ctype_toupper_loc() #10
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #10
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

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_whitespace(ptr noundef %0) local_unnamed_addr #8 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !54
  ret void
}

declare void @pp_base_character(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_left_paren(ptr noundef %0) local_unnamed_addr #8 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #10
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !54
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_right_paren(ptr noundef %0) local_unnamed_addr #8 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #10
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !54
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_left_brace(ptr noundef %0) local_unnamed_addr #8 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #10
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !54
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_right_brace(ptr noundef %0) local_unnamed_addr #8 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #10
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !54
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_left_bracket(ptr noundef %0) local_unnamed_addr #8 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 91) #10
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !54
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_right_bracket(ptr noundef %0) local_unnamed_addr #8 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 93) #10
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !54
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_dot(ptr noundef %0) local_unnamed_addr #8 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 46) #10
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !54
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_ampersand(ptr noundef %0) local_unnamed_addr #8 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 38) #10
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !54
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_star(ptr noundef %0) local_unnamed_addr #8 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 42) #10
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !54
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_arrow(ptr noundef %0) local_unnamed_addr #8 !prof !34 {
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str) #10
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !54
  ret void
}

declare void @pp_base_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_semicolon(ptr noundef %0) local_unnamed_addr #8 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 59) #10
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !54
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_complement(ptr noundef %0) local_unnamed_addr #8 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 126) #10
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !54
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_exclamation(ptr noundef %0) local_unnamed_addr #8 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 33) #10
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !54
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_space_for_pointer_operator(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %13 [
    i16 10, label %5
    i16 12, label %5
  ]

5:                                                ; preds = %2, %2
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = tail call ptr @strip_pointer_operator(ptr noundef %7) #10
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %11 [
    i16 15, label %13
    i16 20, label %13
  ]

11:                                               ; preds = %5
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %12 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %12, align 8, !tbaa !54
  br label %13

13:                                               ; preds = %5, %2, %11, %5
  ret void
}

declare ptr @strip_pointer_operator(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_type_qualifier_list(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #8 !prof !34 {
  %3 = icmp eq ptr %1, null
  %4 = load ptr, ptr @global_trees, align 16
  %5 = icmp eq ptr %4, %1
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %42, label %7

7:                                                ; preds = %2
  %8 = load i64, ptr %1, align 8
  %9 = and i64 %8, 65535
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !50
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi ptr [ %1, %7 ], [ %15, %13 ]
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = and i64 %18, 1048576
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  tail call fastcc void @pp_c_cv_qualifier(ptr noundef %0, ptr noundef nonnull @.str.1)
  br label %24

24:                                               ; preds = %23, %16
  %25 = and i64 %18, 524288
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call fastcc void @pp_c_cv_qualifier(ptr noundef %0, ptr noundef nonnull @.str.2)
  br label %28

28:                                               ; preds = %27, %24
  %29 = and i32 %20, 8192
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i32, ptr @flag_isoc99, align 4, !tbaa !50
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, ptr @.str.4, ptr @.str.3
  tail call fastcc void @pp_c_cv_qualifier(ptr noundef %0, ptr noundef nonnull %34)
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i64, ptr %17, align 8
  %37 = icmp ult i64 %36, 72057594037927936
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = lshr i64 %36, 56
  %40 = trunc i64 %39 to i8
  %41 = tail call ptr @c_addr_space_name(i8 noundef zeroext %40) #10
  tail call void @pp_c_identifier(ptr noundef %0, ptr noundef %41)
  br label %42

42:                                               ; preds = %35, %38, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @pp_c_cv_qualifier(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !34 {
  %3 = tail call ptr @pp_base_last_position_in_text(ptr noundef %0) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %3, align 1, !tbaa !46
  switch i8 %6, label %9 [
    i8 42, label %7
    i8 38, label %7
  ]

7:                                                ; preds = %5, %5
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %8 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %8, align 8, !tbaa !54
  br label %9

9:                                                ; preds = %5, %7, %2
  %10 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !54
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %10, align 8, !tbaa !54
  br label %14

14:                                               ; preds = %9, %13
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %1) #10
  store i32 1, ptr %10, align 8, !tbaa !54
  ret void
}

declare ptr @c_addr_space_name(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_identifier(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 !prof !34 {
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !54
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %3, align 8, !tbaa !54
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 9
  %9 = load i8, ptr %8, align 2, !tbaa !58
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @identifier_to_locale(ptr noundef %1) #10
  br label %13

13:                                               ; preds = %7, %11
  %14 = phi ptr [ %12, %11 ], [ %1, %7 ]
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %14) #10
  store i32 1, ptr %3, align 8, !tbaa !54
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_type_specifier(ptr noundef %0, ptr noundef %1) #8 !prof !34 {
  br label %3

3:                                                ; preds = %14, %2
  %4 = phi ptr [ %1, %2 ], [ %16, %14 ]
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %254 [
    i16 0, label %7
    i16 1, label %13
    i16 19, label %14
    i16 7, label %14
    i16 8, label %14
    i16 9, label %14
    i16 11, label %14
    i16 35, label %211
    i16 17, label %224
    i16 16, label %228
    i16 6, label %232
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !54
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %8, align 8, !tbaa !54
  br label %12

12:                                               ; preds = %7, %11
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.5) #10
  store i32 1, ptr %8, align 8, !tbaa !54
  br label %258

13:                                               ; preds = %3
  tail call void @pp_c_tree_decl_identifier(ptr noundef %0, ptr noundef %4)
  br label %258

14:                                               ; preds = %3, %3, %3, %3, %3
  %15 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %3

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 1023
  %22 = and i64 %5, 65535
  %23 = icmp eq i64 %22, 14
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = tail call i32 @vector_type_mode(ptr noundef %4) #10
  br label %29

26:                                               ; preds = %18
  %27 = lshr i32 %20, 16
  %28 = and i32 %27, 255
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi i32 [ %25, %24 ], [ %28, %26 ]
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !46
  %34 = icmp eq i8 %33, 4
  br i1 %34, label %147, label %35

35:                                               ; preds = %29
  %36 = load i64, ptr %4, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 14
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = tail call i32 @vector_type_mode(ptr noundef nonnull %4) #10
  br label %45

41:                                               ; preds = %35
  %42 = load i32, ptr %19, align 4
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 255
  br label %45

45:                                               ; preds = %41, %39
  %46 = phi i32 [ %40, %39 ], [ %44, %41 ]
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !46
  %50 = icmp eq i8 %49, 13
  br i1 %50, label %147, label %51

51:                                               ; preds = %45
  %52 = load i64, ptr %4, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 14
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = tail call i32 @vector_type_mode(ptr noundef nonnull %4) #10
  br label %61

57:                                               ; preds = %51
  %58 = load i32, ptr %19, align 4
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  br label %61

61:                                               ; preds = %57, %55
  %62 = phi i32 [ %56, %55 ], [ %60, %57 ]
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !46
  %66 = icmp eq i8 %65, 6
  br i1 %66, label %147, label %67

67:                                               ; preds = %61
  %68 = load i64, ptr %4, align 8
  %69 = and i64 %68, 65535
  %70 = icmp eq i64 %69, 14
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = tail call i32 @vector_type_mode(ptr noundef nonnull %4) #10
  br label %77

73:                                               ; preds = %67
  %74 = load i32, ptr %19, align 4
  %75 = lshr i32 %74, 16
  %76 = and i32 %75, 255
  br label %77

77:                                               ; preds = %73, %71
  %78 = phi i32 [ %72, %71 ], [ %76, %73 ]
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !46
  %82 = icmp eq i8 %81, 15
  br i1 %82, label %147, label %83

83:                                               ; preds = %77
  %84 = load i64, ptr %4, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 14
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = tail call i32 @vector_type_mode(ptr noundef nonnull %4) #10
  br label %93

89:                                               ; preds = %83
  %90 = load i32, ptr %19, align 4
  %91 = lshr i32 %90, 16
  %92 = and i32 %91, 255
  br label %93

93:                                               ; preds = %89, %87
  %94 = phi i32 [ %88, %87 ], [ %92, %89 ]
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !46
  %98 = icmp eq i8 %97, 5
  br i1 %98, label %147, label %99

99:                                               ; preds = %93
  %100 = load i64, ptr %4, align 8
  %101 = and i64 %100, 65535
  %102 = icmp eq i64 %101, 14
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = tail call i32 @vector_type_mode(ptr noundef nonnull %4) #10
  br label %109

105:                                              ; preds = %99
  %106 = load i32, ptr %19, align 4
  %107 = lshr i32 %106, 16
  %108 = and i32 %107, 255
  br label %109

109:                                              ; preds = %105, %103
  %110 = phi i32 [ %104, %103 ], [ %108, %105 ]
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %111
  %113 = load i8, ptr %112, align 1, !tbaa !46
  %114 = icmp eq i8 %113, 14
  br i1 %114, label %147, label %115

115:                                              ; preds = %109
  %116 = load i64, ptr %4, align 8
  %117 = and i64 %116, 65535
  %118 = icmp eq i64 %117, 14
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = tail call i32 @vector_type_mode(ptr noundef nonnull %4) #10
  br label %125

121:                                              ; preds = %115
  %122 = load i32, ptr %19, align 4
  %123 = lshr i32 %122, 16
  %124 = and i32 %123, 255
  br label %125

125:                                              ; preds = %121, %119
  %126 = phi i32 [ %120, %119 ], [ %124, %121 ]
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !46
  %130 = icmp eq i8 %129, 7
  br i1 %130, label %147, label %131

131:                                              ; preds = %125
  %132 = load i64, ptr %4, align 8
  %133 = and i64 %132, 65535
  %134 = icmp eq i64 %133, 14
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = tail call i32 @vector_type_mode(ptr noundef nonnull %4) #10
  br label %141

137:                                              ; preds = %131
  %138 = load i32, ptr %19, align 4
  %139 = lshr i32 %138, 16
  %140 = and i32 %139, 255
  br label %141

141:                                              ; preds = %137, %135
  %142 = phi i32 [ %136, %135 ], [ %140, %137 ]
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !46
  %146 = icmp eq i8 %145, 16
  br i1 %146, label %147, label %163

147:                                              ; preds = %141, %125, %109, %93, %77, %61, %45, %29
  %148 = load i64, ptr %4, align 8
  %149 = and i64 %148, 65535
  %150 = icmp eq i64 %149, 14
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = tail call i32 @vector_type_mode(ptr noundef %4) #10
  br label %157

153:                                              ; preds = %147
  %154 = load i32, ptr %19, align 4
  %155 = lshr i32 %154, 16
  %156 = and i32 %155, 255
  br label %157

157:                                              ; preds = %153, %151
  %158 = phi i32 [ %152, %151 ], [ %156, %153 ]
  %159 = load i64, ptr %4, align 8
  %160 = trunc i64 %159 to i32
  %161 = lshr i32 %160, 31
  %162 = tail call ptr @c_common_type_for_mode(i32 noundef %158, i32 noundef %161) #10
  br label %180

163:                                              ; preds = %141
  %164 = load i64, ptr %4, align 8
  %165 = and i64 %164, 65535
  %166 = icmp eq i64 %165, 14
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = tail call i32 @vector_type_mode(ptr noundef nonnull %4) #10
  br label %173

169:                                              ; preds = %163
  %170 = load i32, ptr %19, align 4
  %171 = lshr i32 %170, 16
  %172 = and i32 %171, 255
  br label %173

173:                                              ; preds = %169, %167
  %174 = phi i32 [ %168, %167 ], [ %172, %169 ]
  %175 = load i64, ptr %4, align 8
  %176 = trunc i64 %175 to i32
  %177 = lshr i32 %176, 21
  %178 = and i32 %177, 1
  %179 = tail call ptr @c_common_type_for_mode(i32 noundef %174, i32 noundef %178) #10
  br label %180

180:                                              ; preds = %173, %157
  %181 = phi ptr [ %162, %157 ], [ %179, %173 ]
  %182 = getelementptr inbounds %struct.tree_type, ptr %181, i64 0, i32 12
  %183 = load ptr, ptr %182, align 8, !tbaa !46
  %184 = icmp eq ptr %183, null
  br i1 %184, label %196, label %185

185:                                              ; preds = %180
  tail call void @pp_c_type_specifier(ptr noundef %0, ptr noundef %181)
  %186 = getelementptr inbounds %struct.tree_type, ptr %181, i64 0, i32 6
  %187 = load i32, ptr %186, align 4
  %188 = and i32 %187, 1023
  %189 = icmp eq i32 %188, %21
  br i1 %189, label %258, label %190

190:                                              ; preds = %185
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.6) #10
  %191 = load ptr, ptr %0, align 8, !tbaa !59
  %192 = getelementptr inbounds %struct.output_buffer, ptr %191, i64 0, i32 6
  %193 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %192, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %21)
  %194 = load ptr, ptr %0, align 8, !tbaa !59
  %195 = getelementptr inbounds %struct.output_buffer, ptr %194, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %195) #10
  br label %258

196:                                              ; preds = %180
  switch i16 %6, label %204 [
    i16 8, label %197
    i16 9, label %202
    i16 11, label %203
  ]

197:                                              ; preds = %196
  %198 = load i64, ptr %181, align 8
  %199 = and i64 %198, 2097152
  %200 = icmp eq i64 %199, 0
  %201 = select i1 %200, ptr @.str.9, ptr @.str.8
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %201) #10
  br label %205

202:                                              ; preds = %196
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.10) #10
  br label %205

203:                                              ; preds = %196
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.11) #10
  br label %205

204:                                              ; preds = %196
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 373, ptr noundef nonnull @.str.13) #10
  br label %205

205:                                              ; preds = %197, %202, %203, %204
  %206 = load ptr, ptr %0, align 8, !tbaa !59
  %207 = getelementptr inbounds %struct.output_buffer, ptr %206, i64 0, i32 6
  %208 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %207, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %21)
  %209 = load ptr, ptr %0, align 8, !tbaa !59
  %210 = getelementptr inbounds %struct.output_buffer, ptr %209, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %210) #10
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #10
  br label %258

211:                                              ; preds = %3
  %212 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 3
  %213 = load ptr, ptr %212, align 8, !tbaa !46
  %214 = icmp eq ptr %213, null
  br i1 %214, label %218, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 19
  %217 = load ptr, ptr %216, align 8, !tbaa !60
  tail call void %217(ptr noundef %0, ptr noundef %4) #10
  br label %258

218:                                              ; preds = %211
  %219 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %220 = load i32, ptr %219, align 8, !tbaa !54
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %222, label %223

222:                                              ; preds = %218
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %219, align 8, !tbaa !54
  br label %223

223:                                              ; preds = %218, %222
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.15) #10
  store i32 1, ptr %219, align 8, !tbaa !54
  br label %258

224:                                              ; preds = %3
  %225 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %226 = load i32, ptr %225, align 8, !tbaa !54
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %236, label %239

228:                                              ; preds = %3
  %229 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %230 = load i32, ptr %229, align 8, !tbaa !54
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %236, label %239

232:                                              ; preds = %3
  %233 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %234 = load i32, ptr %233, align 8, !tbaa !54
  %235 = icmp eq i32 %234, 1
  br i1 %235, label %236, label %239

236:                                              ; preds = %232, %228, %224
  %237 = phi ptr [ %225, %224 ], [ %229, %228 ], [ %233, %232 ]
  %238 = phi ptr [ @.str.16, %224 ], [ @.str.17, %228 ], [ @.str.18, %232 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %237, align 8, !tbaa !54
  br label %239

239:                                              ; preds = %236, %232, %228, %224
  %240 = phi ptr [ @.str.16, %224 ], [ @.str.17, %228 ], [ @.str.18, %232 ], [ %238, %236 ]
  %241 = phi ptr [ %225, %224 ], [ %229, %228 ], [ %233, %232 ], [ %237, %236 ]
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %240) #10
  store i32 1, ptr %241, align 8, !tbaa !54
  %242 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 12
  %243 = load ptr, ptr %242, align 8, !tbaa !46
  %244 = icmp eq ptr %243, null
  br i1 %244, label %248, label %245

245:                                              ; preds = %239
  %246 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 19
  %247 = load ptr, ptr %246, align 8, !tbaa !60
  tail call void %247(ptr noundef %0, ptr noundef nonnull %243) #10
  br label %258

248:                                              ; preds = %239
  %249 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %250 = load i32, ptr %249, align 8, !tbaa !54
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %252, label %253

252:                                              ; preds = %248
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %249, align 8, !tbaa !54
  br label %253

253:                                              ; preds = %248, %252
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.20) #10
  store i32 1, ptr %249, align 8, !tbaa !54
  br label %258

254:                                              ; preds = %3
  %255 = and i64 %5, 65535
  %256 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %255
  %257 = load ptr, ptr %256, align 8, !tbaa !35
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %257, ptr noundef nonnull @.str.13) #10
  br label %258

258:                                              ; preds = %205, %190, %185, %245, %253, %215, %223, %254, %13, %12
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_ws_string(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 !prof !34 {
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !54
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %3, align 8, !tbaa !54
  br label %7

7:                                                ; preds = %2, %6
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %1) #10
  store i32 1, ptr %3, align 8, !tbaa !54
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_tree_decl_identifier(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !50
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 2247, ptr noundef nonnull @.str.13) #10
  br label %9

9:                                                ; preds = %2, %8
  %10 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_identifier, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  br label %21

16:                                               ; preds = %9
  %17 = ptrtoint ptr %1 to i64
  %18 = trunc i64 %17 to i32
  %19 = and i32 %18, 65535
  %20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @pp_c_tree_decl_identifier.xname, ptr noundef nonnull dereferenceable(1) @.str.59, i32 noundef %19)
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi ptr [ %15, %13 ], [ @pp_c_tree_decl_identifier.xname, %16 ]
  tail call void @pp_c_identifier(ptr noundef %0, ptr noundef %22)
  ret void
}

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare ptr @c_common_type_for_mode(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @pp_verbatim(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_specifier_qualifier_list(ptr noundef %0, ptr noundef %1) #8 !prof !34 {
  br label %3

3:                                                ; preds = %58, %30, %2
  %4 = phi ptr [ %1, %2 ], [ %32, %30 ], [ %60, %58 ]
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 10
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @pp_c_type_qualifier_list(ptr noundef %0, ptr noundef nonnull %4)
  br label %9

9:                                                ; preds = %8, %3
  %10 = trunc i64 %5 to i16
  switch i16 %10, label %61 [
    i16 12, label %11
    i16 10, label %11
    i16 20, label %30
    i16 15, label %30
    i16 13, label %33
    i16 14, label %42
  ]

11:                                               ; preds = %9, %9
  %12 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = tail call ptr @strip_pointer_operator(ptr noundef %13) #10
  tail call void @pp_c_specifier_qualifier_list(ptr noundef %0, ptr noundef %14)
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %19 [
    i16 15, label %17
    i16 20, label %17
  ]

17:                                               ; preds = %11, %11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %18 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %18, align 8, !tbaa !54
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #10
  br label %25

19:                                               ; preds = %11
  %20 = load i32, ptr @c_language, align 4, !tbaa !50
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %24 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  br label %25

25:                                               ; preds = %17, %23
  %26 = phi ptr [ %24, %23 ], [ %18, %17 ]
  store i32 0, ptr %26, align 8, !tbaa !54
  br label %27

27:                                               ; preds = %25, %19
  %28 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !61
  tail call void %29(ptr noundef %0, ptr noundef nonnull %4) #10
  br label %64

30:                                               ; preds = %9, %9
  %31 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  br label %3

33:                                               ; preds = %9
  %34 = load i32, ptr @flag_isoc99, align 4, !tbaa !50
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, ptr @.str.23, ptr @.str.22
  %37 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !54
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %37, align 8, !tbaa !54
  br label %41

41:                                               ; preds = %33, %40
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %36) #10
  store i32 1, ptr %37, align 8, !tbaa !54
  br label %58

42:                                               ; preds = %9
  %43 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !54
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %43, align 8, !tbaa !54
  br label %47

47:                                               ; preds = %42, %46
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.24) #10
  store i32 1, ptr %43, align 8, !tbaa !54
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #10
  store i32 0, ptr %43, align 8, !tbaa !54
  %48 = load ptr, ptr %0, align 8, !tbaa !59
  %49 = getelementptr inbounds %struct.output_buffer, ptr %48, i64 0, i32 6
  %50 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 1023
  %53 = zext nneg i32 %52 to i64
  %54 = shl nuw i64 1, %53
  %55 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(1) @.str.25, i64 noundef %54)
  %56 = load ptr, ptr %0, align 8, !tbaa !59
  %57 = getelementptr inbounds %struct.output_buffer, ptr %56, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %57) #10
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 41) #10
  store i32 0, ptr %43, align 8, !tbaa !54
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 32) #10
  store i32 0, ptr %43, align 8, !tbaa !54
  br label %58

58:                                               ; preds = %47, %41
  %59 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !46
  br label %3

61:                                               ; preds = %9
  %62 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 13
  %63 = load ptr, ptr %62, align 8, !tbaa !62
  tail call void %63(ptr noundef %0, ptr noundef nonnull %4) #10
  br label %64

64:                                               ; preds = %61, %27
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_parameter_type_list(ptr noundef %0, ptr nocapture noundef readonly %1) #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !50
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !63
  %11 = and i32 %10, 2
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i1 [ true, %2 ], [ %12, %8 ]
  %15 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 2
  %16 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %17 = select i1 %14, ptr %16, ptr %15
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #10
  %19 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %19, align 8, !tbaa !54
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !35
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %13
  %23 = icmp ne ptr %18, null
  %24 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8
  %25 = icmp ne ptr %18, %24
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %52

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 4
  %29 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 5
  %30 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 6
  br label %32

31:                                               ; preds = %13
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.26) #10
  store i32 1, ptr %19, align 8, !tbaa !54
  br label %52

32:                                               ; preds = %27, %45
  %33 = phi i1 [ false, %27 ], [ true, %45 ]
  %34 = phi ptr [ %18, %27 ], [ %47, %45 ]
  br i1 %33, label %35, label %36

35:                                               ; preds = %32
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  br label %36

36:                                               ; preds = %35, %32
  %37 = load ptr, ptr %28, align 8, !tbaa !64
  br i1 %14, label %38, label %43

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.tree_list, ptr %34, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  tail call void %37(ptr noundef %0, ptr noundef %40) #10
  %41 = load ptr, ptr %30, align 8, !tbaa !65
  %42 = load ptr, ptr %39, align 8, !tbaa !46
  tail call void %41(ptr noundef %0, ptr noundef %42) #10
  br label %45

43:                                               ; preds = %36
  tail call void %37(ptr noundef %0, ptr noundef nonnull %34) #10
  %44 = load ptr, ptr %29, align 8, !tbaa !66
  tail call void %44(ptr noundef %0, ptr noundef nonnull %34) #10
  br label %45

45:                                               ; preds = %43, %38
  %46 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = icmp ne ptr %47, null
  %49 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8
  %50 = icmp ne ptr %47, %49
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %32, label %52, !llvm.loop !67

52:                                               ; preds = %45, %22, %31
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #10
  store i32 0, ptr %19, align 8, !tbaa !54
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_direct_abstract_declarator(ptr noundef %0, ptr noundef %1) #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %45 [
    i16 10, label %5
    i16 20, label %8
    i16 15, label %13
    i16 1, label %49
    i16 19, label %49
    i16 7, label %49
    i16 8, label %49
    i16 9, label %49
    i16 11, label %49
    i16 6, label %49
    i16 16, label %49
    i16 17, label %49
    i16 14, label %49
    i16 13, label %49
    i16 35, label %49
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  tail call void %7(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %49

8:                                                ; preds = %2
  tail call void @pp_c_parameter_type_list(ptr noundef %0, ptr noundef nonnull %1)
  %9 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !68
  %11 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  tail call void %10(ptr noundef %0, ptr noundef %12) #10
  br label %49

13:                                               ; preds = %2
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 91) #10
  %14 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %14, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 14
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = tail call i32 @host_integerp(ptr noundef nonnull %20, i32 noundef 0) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %0, align 8, !tbaa !59
  %29 = getelementptr inbounds %struct.output_buffer, ptr %28, i64 0, i32 6
  %30 = tail call i64 @tree_low_cst(ptr noundef nonnull %20, i32 noundef 0) #10
  %31 = add nsw i64 %30, 1
  %32 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(1) @.str.25, i64 noundef %31)
  %33 = load ptr, ptr %0, align 8, !tbaa !59
  %34 = getelementptr inbounds %struct.output_buffer, ptr %33, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %34) #10
  br label %40

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %37 = load ptr, ptr %36, align 8, !tbaa !69
  %38 = tail call ptr @build_int_cst(ptr noundef %24, i64 noundef 1) #10
  %39 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %24, ptr noundef nonnull %20, ptr noundef %38) #10
  tail call void %37(ptr noundef %0, ptr noundef %39) #10
  br label %40

40:                                               ; preds = %27, %35, %18, %13
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 93) #10
  store i32 0, ptr %14, align 8, !tbaa !54
  %41 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !68
  %43 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  tail call void %42(ptr noundef %0, ptr noundef %44) #10
  br label %49

45:                                               ; preds = %2
  %46 = and i64 %3, 65535
  %47 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %48, ptr noundef nonnull @.str.13) #10
  br label %49

49:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %45, %40, %8, %5
  ret void
}

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_type_id(ptr noundef %0, ptr noundef %1) #8 !prof !34 {
  tail call void @pp_c_specifier_qualifier_list(ptr noundef %0, ptr noundef %1)
  %3 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  tail call void %4(ptr noundef %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_storage_class_specifier(ptr noundef %0, ptr nocapture noundef readonly %1) #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 35
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !54
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %34, label %37

11:                                               ; preds = %2
  %12 = and i64 %3, 65535
  %13 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !50
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %40

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 16777216
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !54
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %34, label %37

25:                                               ; preds = %16
  %26 = and i64 %3, 67108864
  %27 = icmp ne i64 %26, 0
  %28 = icmp eq i32 %5, 32
  %29 = and i1 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !54
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %21, %7
  %35 = phi ptr [ %8, %7 ], [ %22, %21 ], [ %31, %30 ]
  %36 = phi ptr [ @.str.27, %7 ], [ @.str.28, %21 ], [ @.str.29, %30 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %35, align 8, !tbaa !54
  br label %37

37:                                               ; preds = %34, %30, %21, %7
  %38 = phi ptr [ @.str.27, %7 ], [ @.str.28, %21 ], [ @.str.29, %30 ], [ %36, %34 ]
  %39 = phi ptr [ %8, %7 ], [ %22, %21 ], [ %31, %30 ], [ %35, %34 ]
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %38) #10
  store i32 1, ptr %39, align 8, !tbaa !54
  br label %40

40:                                               ; preds = %37, %11, %25
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_function_specifier(ptr noundef %0, ptr nocapture noundef readonly %1) #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 29
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 2097152
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !54
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %12, align 8, !tbaa !54
  br label %16

16:                                               ; preds = %11, %15
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.30) #10
  store i32 1, ptr %12, align 8, !tbaa !54
  br label %17

17:                                               ; preds = %16, %6, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_declaration_specifiers(ptr noundef %0, ptr noundef %1) #8 !prof !34 {
  %3 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  tail call void %4(ptr noundef %0, ptr noundef %1) #10
  %5 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  tail call void %6(ptr noundef %0, ptr noundef %1) #10
  %7 = load i64, ptr %1, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  br label %15

15:                                               ; preds = %2, %12
  %16 = phi ptr [ %14, %12 ], [ %1, %2 ]
  tail call void @pp_c_specifier_qualifier_list(ptr noundef %0, ptr noundef %16)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_direct_declarator(ptr noundef %0, ptr noundef %1) #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %41 [
    i16 32, label %5
    i16 34, label %5
    i16 35, label %5
    i16 31, label %5
    i16 30, label %5
    i16 15, label %8
    i16 10, label %8
    i16 20, label %13
    i16 29, label %20
    i16 8, label %45
    i16 9, label %45
    i16 11, label %45
    i16 6, label %45
    i16 17, label %45
    i16 16, label %45
  ]

5:                                                ; preds = %2, %2, %2, %2, %2
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  tail call void @pp_c_space_for_pointer_operator(ptr noundef %0, ptr noundef %7)
  tail call void @pp_c_tree_decl_identifier(ptr noundef %0, ptr noundef nonnull %1)
  br label %45

8:                                                ; preds = %2, %2
  %9 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  tail call void %10(ptr noundef %0, ptr noundef %12) #10
  br label %45

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  tail call void %15(ptr noundef %0, ptr noundef nonnull %1) #10
  %16 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  %18 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  tail call void %17(ptr noundef %0, ptr noundef %19) #10
  br label %45

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  tail call void @pp_c_space_for_pointer_operator(ptr noundef %0, ptr noundef %24)
  tail call void @pp_c_tree_decl_identifier(ptr noundef %0, ptr noundef nonnull %1)
  %25 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !63
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !65
  %32 = load ptr, ptr %21, align 8, !tbaa !46
  tail call void %31(ptr noundef %0, ptr noundef %32) #10
  br label %45

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 11
  %35 = load ptr, ptr %34, align 8, !tbaa !72
  tail call void %35(ptr noundef %0, ptr noundef nonnull %1) #10
  %36 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !65
  %38 = load ptr, ptr %21, align 8, !tbaa !46
  %39 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  tail call void %37(ptr noundef %0, ptr noundef %40) #10
  br label %45

41:                                               ; preds = %2
  %42 = and i64 %3, 65535
  %43 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !35
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %44, ptr noundef nonnull @.str.13) #10
  br label %45

45:                                               ; preds = %2, %2, %2, %2, %2, %2, %29, %33, %41, %13, %8, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_declarator(ptr noundef %0, ptr noundef %1) #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %8 [
    i16 8, label %12
    i16 9, label %12
    i16 11, label %12
    i16 6, label %12
    i16 17, label %12
    i16 16, label %12
    i16 32, label %5
    i16 34, label %5
    i16 31, label %5
    i16 15, label %5
    i16 20, label %5
    i16 29, label %5
    i16 35, label %5
  ]

5:                                                ; preds = %2, %2, %2, %2, %2, %2, %2
  %6 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  tail call void %7(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %12

8:                                                ; preds = %2
  %9 = and i64 %3, 65535
  %10 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %11, ptr noundef nonnull @.str.13) #10
  br label %12

12:                                               ; preds = %2, %2, %2, %2, %2, %2, %8, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_declaration(ptr noundef %0, ptr noundef %1) #8 !prof !34 {
  %3 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  tail call void %4(ptr noundef %0, ptr noundef %1) #10
  tail call void @pp_c_init_declarator(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_init_declarator(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 !prof !34 {
  %3 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  tail call void %4(ptr noundef %0, ptr noundef %1) #10
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 29
  br i1 %7, label %30, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %8
  %13 = load i64, ptr %10, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 2
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #10
  %17 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  %20 = getelementptr inbounds %struct.tree_list, ptr %10, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  tail call void %19(ptr noundef %0, ptr noundef %21) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #10
  br label %30

22:                                               ; preds = %12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 61) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %23 = load i64, ptr %10, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 51
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call fastcc void @pp_c_brace_enclosed_initializer_list(ptr noundef %0, ptr noundef nonnull %10)
  br label %30

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %29 = load ptr, ptr %28, align 8, !tbaa !69
  tail call void %29(ptr noundef %0, ptr noundef nonnull %10) #10
  br label %30

30:                                               ; preds = %27, %26, %16, %8, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_attributes(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #8 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !54
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %5, align 8, !tbaa !54
  br label %9

9:                                                ; preds = %4, %8
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.31) #10
  store i32 1, ptr %5, align 8, !tbaa !54
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #10
  store i32 0, ptr %5, align 8, !tbaa !54
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #10
  store i32 0, ptr %5, align 8, !tbaa !54
  br label %10

10:                                               ; preds = %9, %23
  %11 = phi ptr [ %1, %9 ], [ %24, %23 ]
  %12 = getelementptr inbounds %struct.tree_list, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  tail call void @pp_base_tree_identifier(ptr noundef %0, ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.tree_list, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @pp_c_call_argument_list(ptr noundef %0, ptr noundef nonnull %15)
  br label %18

18:                                               ; preds = %17, %10
  %19 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  br label %23

23:                                               ; preds = %18, %22
  %24 = load ptr, ptr %19, align 8, !tbaa !46
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %10, !llvm.loop !74

26:                                               ; preds = %23
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #10
  store i32 0, ptr %5, align 8, !tbaa !54
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #10
  store i32 0, ptr %5, align 8, !tbaa !54
  br label %27

27:                                               ; preds = %2, %26
  ret void
}

declare void @pp_base_tree_identifier(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_call_argument_list(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #10
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 8, !tbaa !54
  %4 = icmp eq ptr %1, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 2
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @pp_c_expression_list(ptr noundef %0, ptr noundef nonnull %1)
  br label %10

10:                                               ; preds = %9, %5, %2
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #10
  store i32 0, ptr %3, align 8, !tbaa !54
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_function_definition(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 !prof !34 {
  %3 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  tail call void %4(ptr noundef %0, ptr noundef %1) #10
  %5 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  tail call void %6(ptr noundef %0, ptr noundef %1) #10
  %7 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 8
  store i8 1, ptr %7, align 1, !tbaa !75
  %8 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  tail call void %9(ptr noundef %0, ptr noundef %11) #10
  tail call void @pp_base_newline(ptr noundef %0) #10
  tail call void @pp_base_flush(ptr noundef %0) #10
  ret void
}

declare void @pp_base_newline(ptr noundef) local_unnamed_addr #3

declare void @pp_base_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_string_literal(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 !prof !34 {
  %3 = getelementptr inbounds %struct.tree_string, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.tree_string, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !46
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 34) #10
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = add nsw i32 %5, -1
  %9 = zext i32 %8 to i64
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %15, %10 ]
  %12 = getelementptr inbounds i8, ptr %3, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !46
  %14 = sext i8 %13 to i32
  tail call fastcc void @pp_c_char(ptr noundef %0, i32 noundef %14)
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %9
  br i1 %16, label %17, label %10, !llvm.loop !77

17:                                               ; preds = %10, %2
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 34) #10
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @pp_c_char(ptr noundef %0, i32 noundef %1) unnamed_addr #8 !prof !34 {
  %3 = and i32 %1, 255
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !78
  %7 = and i16 %6, 16
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  switch i32 %1, label %13 [
    i32 92, label %10
    i32 39, label %11
    i32 34, label %12
  ]

10:                                               ; preds = %9
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.60) #10
  br label %20

11:                                               ; preds = %9
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.61) #10
  br label %20

12:                                               ; preds = %9
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.62) #10
  br label %20

13:                                               ; preds = %9
  tail call void @pp_base_character(ptr noundef %0, i32 noundef %1) #10
  br label %20

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !59
  %16 = getelementptr inbounds %struct.output_buffer, ptr %15, i64 0, i32 6
  %17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) @.str.63, i32 noundef %1)
  %18 = load ptr, ptr %0, align 8, !tbaa !59
  %19 = getelementptr inbounds %struct.output_buffer, ptr %18, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %19) #10
  br label %20

20:                                               ; preds = %10, %11, %12, %13, %14
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_constant(ptr noundef %0, ptr noundef %1) #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %148 [
    i16 23, label %5
    i16 24, label %138
    i16 25, label %139
    i16 28, label %146
    i16 26, label %147
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %69

10:                                               ; preds = %5
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !35
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %36

13:                                               ; preds = %10
  %14 = load i32, ptr @c_language, align 4, !tbaa !50
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !54
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %18, align 8, !tbaa !54
  br label %22

22:                                               ; preds = %21, %17
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.64) #10
  store i32 1, ptr %18, align 8, !tbaa !54
  br label %152

23:                                               ; preds = %13
  %24 = load i32, ptr @flag_isoc99, align 4, !tbaa !50
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !54
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %27, align 8, !tbaa !54
  br label %31

31:                                               ; preds = %30, %26
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.65) #10
  store i32 1, ptr %27, align 8, !tbaa !54
  br label %152

32:                                               ; preds = %23
  %33 = and i64 %3, 65535
  %34 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %35, ptr noundef nonnull @.str.13) #10
  br label %152

36:                                               ; preds = %10
  %37 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !35
  %38 = icmp eq ptr %37, %1
  br i1 %38, label %39, label %62

39:                                               ; preds = %36
  %40 = load i32, ptr @c_language, align 4, !tbaa !50
  %41 = and i32 %40, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !54
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %44, align 8, !tbaa !54
  br label %48

48:                                               ; preds = %47, %43
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.66) #10
  store i32 1, ptr %44, align 8, !tbaa !54
  br label %152

49:                                               ; preds = %39
  %50 = load i32, ptr @flag_isoc99, align 4, !tbaa !50
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !54
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %53, align 8, !tbaa !54
  br label %57

57:                                               ; preds = %56, %52
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.67) #10
  store i32 1, ptr %53, align 8, !tbaa !54
  br label %152

58:                                               ; preds = %49
  %59 = and i64 %3, 65535
  %60 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !35
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %61, ptr noundef nonnull @.str.13) #10
  br label %152

62:                                               ; preds = %36
  %63 = and i64 %3, 65535
  %64 = icmp eq i64 %63, 23
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  tail call fastcc void @pp_c_integer_constant(ptr noundef %0, ptr noundef nonnull %1)
  br label %152

66:                                               ; preds = %62
  %67 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %63
  %68 = load ptr, ptr %67, align 8, !tbaa !35
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %68, ptr noundef nonnull @.str.13) #10
  br label %152

69:                                               ; preds = %5
  %70 = load ptr, ptr @integer_types, align 16, !tbaa !35
  %71 = icmp eq ptr %7, %70
  br i1 %71, label %72, label %100

72:                                               ; preds = %69
  %73 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 2), align 16, !tbaa !35
  %74 = icmp eq ptr %7, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 76) #10
  br label %76

76:                                               ; preds = %75, %72
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 39) #10
  %77 = load i64, ptr %7, align 8
  %78 = trunc i64 %77 to i32
  %79 = lshr i32 %78, 21
  %80 = and i32 %79, 1
  %81 = tail call i32 @host_integerp(ptr noundef nonnull %1, i32 noundef %80) #10
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = load i64, ptr %7, align 8
  %85 = trunc i64 %84 to i32
  %86 = lshr i32 %85, 21
  %87 = and i32 %86, 1
  %88 = tail call i64 @tree_low_cst(ptr noundef nonnull %1, i32 noundef %87) #10
  %89 = trunc i64 %88 to i32
  tail call fastcc void @pp_c_char(ptr noundef %0, i32 noundef %89)
  br label %99

90:                                               ; preds = %76
  %91 = load ptr, ptr %0, align 8, !tbaa !59
  %92 = getelementptr inbounds %struct.output_buffer, ptr %91, i64 0, i32 6
  %93 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %94 = load i64, ptr %93, align 8, !tbaa !46
  %95 = trunc i64 %94 to i32
  %96 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %92, ptr noundef nonnull dereferenceable(1) @.str.68, i32 noundef %95)
  %97 = load ptr, ptr %0, align 8, !tbaa !59
  %98 = getelementptr inbounds %struct.output_buffer, ptr %97, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %98) #10
  br label %99

99:                                               ; preds = %83, %90
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 39) #10
  br label %152

100:                                              ; preds = %69
  %101 = load i64, ptr %7, align 8
  %102 = and i64 %101, 65535
  %103 = icmp eq i64 %102, 6
  br i1 %103, label %104, label %137

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !46
  %107 = icmp eq ptr %106, null
  br i1 %107, label %130, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.tree_list, ptr %106, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !46
  %111 = tail call i32 @tree_int_cst_equal(ptr noundef %110, ptr noundef nonnull %1) #10
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %118, label %123

113:                                              ; preds = %118
  %114 = getelementptr inbounds %struct.tree_list, ptr %121, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !46
  %116 = tail call i32 @tree_int_cst_equal(ptr noundef %115, ptr noundef nonnull %1) #10
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %123, !llvm.loop !79

118:                                              ; preds = %108, %113
  %119 = phi ptr [ %121, %113 ], [ %106, %108 ]
  %120 = getelementptr inbounds %struct.tree_common, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !46
  %122 = icmp eq ptr %121, null
  br i1 %122, label %130, label %113, !llvm.loop !79

123:                                              ; preds = %113, %108
  %124 = phi i1 [ %107, %108 ], [ %122, %113 ]
  %125 = phi ptr [ %106, %108 ], [ %121, %113 ]
  %126 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 19
  %127 = load ptr, ptr %126, align 8, !tbaa !60
  %128 = getelementptr inbounds %struct.tree_list, ptr %125, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !46
  tail call void %127(ptr noundef %0, ptr noundef %129) #10
  br label %135

130:                                              ; preds = %118, %104
  %131 = phi i1 [ %107, %104 ], [ %122, %118 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #10
  %132 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %132, align 8, !tbaa !54
  %133 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 12
  %134 = load ptr, ptr %133, align 8, !tbaa !80
  tail call void %134(ptr noundef %0, ptr noundef nonnull %7) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #10
  store i32 0, ptr %132, align 8, !tbaa !54
  br label %135

135:                                              ; preds = %123, %130
  %136 = phi i1 [ %124, %123 ], [ %131, %130 ]
  br i1 %136, label %137, label %152

137:                                              ; preds = %135, %100
  tail call fastcc void @pp_c_integer_constant(ptr noundef %0, ptr noundef nonnull %1)
  br label %152

138:                                              ; preds = %2
  tail call fastcc void @pp_c_floating_constant(ptr noundef %0, ptr noundef nonnull %1)
  br label %152

139:                                              ; preds = %2
  %140 = load ptr, ptr %0, align 8, !tbaa !59
  %141 = getelementptr inbounds %struct.output_buffer, ptr %140, i64 0, i32 6
  %142 = getelementptr inbounds %struct.tree_fixed_cst, ptr %1, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !46
  tail call void @fixed_to_decimal(ptr noundef nonnull %141, ptr noundef %143, i64 noundef 128) #10
  %144 = load ptr, ptr %0, align 8, !tbaa !59
  %145 = getelementptr inbounds %struct.output_buffer, ptr %144, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %145) #10
  br label %152

146:                                              ; preds = %2
  tail call void @pp_c_string_literal(ptr noundef %0, ptr noundef nonnull %1)
  br label %152

147:                                              ; preds = %2
  tail call fastcc void @pp_c_compound_literal(ptr noundef %0, ptr noundef nonnull %1)
  br label %152

148:                                              ; preds = %2
  %149 = and i64 %3, 65535
  %150 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !35
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %151, ptr noundef nonnull @.str.13) #10
  br label %152

152:                                              ; preds = %66, %65, %58, %57, %48, %32, %31, %22, %137, %135, %99, %148, %147, %146, %139, %138
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @pp_c_integer_constant(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !34 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %6 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !46
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !59
  %11 = getelementptr inbounds %struct.output_buffer, ptr %10, i64 0, i32 6
  %12 = load i64, ptr %5, align 8, !tbaa !46
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) @.str.25, i64 noundef %12)
  br label %30

14:                                               ; preds = %2
  %15 = load i64, ptr %5, align 8, !tbaa !46
  %16 = tail call i32 @tree_int_cst_sgn(ptr noundef %1) #10
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 45) #10
  %19 = xor i64 %7, -1
  %20 = icmp eq i64 %15, 0
  %21 = zext i1 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = sub i64 0, %15
  br label %24

24:                                               ; preds = %18, %14
  %25 = phi i64 [ %23, %18 ], [ %15, %14 ]
  %26 = phi i64 [ %22, %18 ], [ %7, %14 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !59
  %28 = getelementptr inbounds %struct.output_buffer, ptr %27, i64 0, i32 6
  %29 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) @.str.69, i64 noundef %26, i64 noundef %25)
  br label %30

30:                                               ; preds = %24, %9
  %31 = load ptr, ptr %0, align 8, !tbaa !59
  %32 = getelementptr inbounds %struct.output_buffer, ptr %31, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %32) #10
  %33 = load i64, ptr %4, align 8
  %34 = and i64 %33, 2097152
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 117) #10
  br label %37

37:                                               ; preds = %36, %30
  %38 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !35
  %39 = icmp eq ptr %4, %38
  %40 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 8), align 16
  %41 = icmp eq ptr %4, %40
  %42 = select i1 %39, i1 true, i1 %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 108) #10
  br label %51

44:                                               ; preds = %37
  %45 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !35
  %46 = icmp eq ptr %4, %45
  %47 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16
  %48 = icmp eq ptr %4, %47
  %49 = select i1 %46, i1 true, i1 %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.70) #10
  br label %51

51:                                               ; preds = %44, %50, %43
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @pp_c_floating_constant(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !59
  %4 = getelementptr inbounds %struct.output_buffer, ptr %3, i64 0, i32 6
  %5 = getelementptr inbounds %struct.tree_real_cst, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  tail call void @real_to_decimal(ptr noundef nonnull %4, ptr noundef %6, i64 noundef 128, i64 noundef 0, i32 noundef 1) #10
  %7 = load ptr, ptr %0, align 8, !tbaa !59
  %8 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %8) #10
  %9 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !35
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 102) #10
  br label %30

14:                                               ; preds = %2
  %15 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !35
  %16 = icmp eq ptr %10, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 108) #10
  br label %30

18:                                               ; preds = %14
  %19 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 51), align 8, !tbaa !35
  %20 = icmp eq ptr %10, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.71) #10
  br label %30

22:                                               ; preds = %18
  %23 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 50), align 16, !tbaa !35
  %24 = icmp eq ptr %10, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.72) #10
  br label %30

26:                                               ; preds = %22
  %27 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 49), align 8, !tbaa !35
  %28 = icmp eq ptr %10, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.73) #10
  br label %30

30:                                               ; preds = %17, %25, %29, %26, %21, %13
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @pp_c_compound_literal(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !prof !34 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #10
  %5 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  tail call void %7(ptr noundef %0, ptr noundef %4) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #10
  store i32 0, ptr %5, align 8, !tbaa !54
  %8 = load i64, ptr %4, align 8
  %9 = trunc i64 %8 to i16
  %10 = add i16 %9, -13
  %11 = icmp ult i16 %10, 5
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call fastcc void @pp_c_brace_enclosed_initializer_list(ptr noundef %0, ptr noundef %1)
  br label %18

13:                                               ; preds = %2
  %14 = load i64, ptr %1, align 8
  %15 = and i64 %14, 65535
  %16 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %17, ptr noundef nonnull @.str.13) #10
  br label %18

18:                                               ; preds = %13, %12
  ret void
}

declare ptr @identifier_to_locale(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_primary_expression(ptr noundef %0, ptr noundef %1) #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %42 [
    i16 32, label %5
    i16 34, label %5
    i16 31, label %5
    i16 33, label %5
    i16 29, label %5
    i16 30, label %5
    i16 1, label %6
    i16 0, label %9
    i16 36, label %15
    i16 23, label %21
    i16 24, label %21
    i16 25, label %21
    i16 28, label %21
    i16 55, label %22
  ]

5:                                                ; preds = %2, %2, %2, %2, %2, %2
  tail call void @pp_c_tree_decl_identifier(ptr noundef %0, ptr noundef nonnull %1)
  br label %46

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_identifier, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  tail call void @pp_c_identifier(ptr noundef %0, ptr noundef %8)
  br label %46

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !54
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %10, align 8, !tbaa !54
  br label %14

14:                                               ; preds = %9, %13
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.32) #10
  store i32 1, ptr %10, align 8, !tbaa !54
  br label %46

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !54
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %16, align 8, !tbaa !54
  br label %20

20:                                               ; preds = %15, %19
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.33) #10
  store i32 1, ptr %16, align 8, !tbaa !54
  br label %46

21:                                               ; preds = %2, %2, %2, %2
  tail call void @pp_c_constant(ptr noundef %0, ptr noundef nonnull %1)
  br label %46

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !54
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %23, align 8, !tbaa !54
  br label %27

27:                                               ; preds = %22, %26
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.34) #10
  store i32 1, ptr %23, align 8, !tbaa !54
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #10
  store i32 0, ptr %23, align 8, !tbaa !54
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 38) #10
  %28 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 20
  %29 = load ptr, ptr %28, align 8, !tbaa !81
  %30 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  tail call void %29(ptr noundef %0, ptr noundef %31) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 38) #10
  %32 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 16
  %33 = load ptr, ptr %32, align 8, !tbaa !82
  %34 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  tail call void %33(ptr noundef %0, ptr noundef %35) #10
  %36 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %27
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %40 = load ptr, ptr %36, align 8, !tbaa !46
  tail call void @pp_c_expression(ptr noundef %0, ptr noundef %40)
  br label %41

41:                                               ; preds = %39, %27
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #10
  store i32 0, ptr %23, align 8, !tbaa !54
  br label %46

42:                                               ; preds = %2
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #10
  %43 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %43, align 8, !tbaa !54
  %44 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %45 = load ptr, ptr %44, align 8, !tbaa !69
  tail call void %45(ptr noundef %0, ptr noundef nonnull %1) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #10
  store i32 0, ptr %43, align 8, !tbaa !54
  br label %46

46:                                               ; preds = %42, %41, %21, %20, %14, %6, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_expression(ptr noundef %0, ptr noundef %1) #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %62 [
    i16 23, label %5
    i16 24, label %6
    i16 25, label %7
    i16 28, label %14
    i16 1, label %15
    i16 29, label %15
    i16 32, label %15
    i16 33, label %15
    i16 34, label %15
    i16 36, label %15
    i16 31, label %15
    i16 30, label %15
    i16 0, label %15
    i16 128, label %18
    i16 127, label %18
    i16 45, label %18
    i16 59, label %18
    i16 41, label %18
    i16 42, label %18
    i16 26, label %18
    i16 123, label %18
    i16 27, label %18
    i16 104, label %18
    i16 103, label %18
    i16 110, label %18
    i16 109, label %18
    i16 106, label %18
    i16 105, label %18
    i16 108, label %18
    i16 107, label %18
    i16 82, label %18
    i16 51, label %18
    i16 119, label %18
    i16 129, label %18
    i16 124, label %21
    i16 121, label %21
    i16 47, label %21
    i16 79, label %21
    i16 90, label %21
    i16 96, label %21
    i16 126, label %21
    i16 125, label %21
    i16 43, label %21
    i16 44, label %21
    i16 78, label %22
    i16 77, label %22
    i16 116, label %22
    i16 113, label %22
    i16 118, label %22
    i16 65, label %23
    i16 71, label %23
    i16 67, label %23
    i16 83, label %26
    i16 84, label %26
    i16 97, label %27
    i16 99, label %27
    i16 98, label %27
    i16 100, label %27
    i16 89, label %28
    i16 88, label %29
    i16 95, label %29
    i16 87, label %30
    i16 91, label %31
    i16 93, label %31
    i16 92, label %32
    i16 94, label %32
    i16 101, label %33
    i16 102, label %33
    i16 56, label %34
    i16 66, label %37
    i16 63, label %37
    i16 64, label %37
    i16 53, label %38
    i16 54, label %38
    i16 52, label %41
    i16 117, label %51
    i16 120, label %51
    i16 55, label %56
    i16 58, label %61
    i16 134, label %61
  ]

5:                                                ; preds = %2
  tail call fastcc void @pp_c_integer_constant(ptr noundef %0, ptr noundef nonnull %1)
  br label %66

6:                                                ; preds = %2
  tail call fastcc void @pp_c_floating_constant(ptr noundef %0, ptr noundef nonnull %1)
  br label %66

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !59
  %9 = getelementptr inbounds %struct.output_buffer, ptr %8, i64 0, i32 6
  %10 = getelementptr inbounds %struct.tree_fixed_cst, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  tail call void @fixed_to_decimal(ptr noundef nonnull %9, ptr noundef %11, i64 noundef 128) #10
  %12 = load ptr, ptr %0, align 8, !tbaa !59
  %13 = getelementptr inbounds %struct.output_buffer, ptr %12, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %13) #10
  br label %66

14:                                               ; preds = %2
  tail call void @pp_c_string_literal(ptr noundef %0, ptr noundef nonnull %1)
  br label %66

15:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2
  %16 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !81
  tail call void %17(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %66

18:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %19 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 21
  %20 = load ptr, ptr %19, align 8, !tbaa !83
  tail call void %20(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %66

21:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  tail call void @pp_c_unary_expression(ptr noundef %0, ptr noundef nonnull %1)
  br label %66

22:                                               ; preds = %2, %2, %2, %2, %2
  tail call void @pp_c_cast_expression(ptr noundef %0, ptr noundef nonnull %1)
  br label %66

23:                                               ; preds = %2, %2, %2
  %24 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 23
  %25 = load ptr, ptr %24, align 8, !tbaa !84
  tail call void %25(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %66

26:                                               ; preds = %2, %2
  tail call fastcc void @pp_c_shift_expression(ptr noundef %0, ptr noundef nonnull %1)
  br label %66

27:                                               ; preds = %2, %2, %2, %2
  tail call fastcc void @pp_c_relational_expression(ptr noundef %0, ptr noundef nonnull %1)
  br label %66

28:                                               ; preds = %2
  tail call fastcc void @pp_c_and_expression(ptr noundef %0, ptr noundef nonnull %1)
  br label %66

29:                                               ; preds = %2, %2
  tail call fastcc void @pp_c_exclusive_or_expression(ptr noundef %0, ptr noundef nonnull %1)
  br label %66

30:                                               ; preds = %2
  tail call fastcc void @pp_c_inclusive_or_expression(ptr noundef %0, ptr noundef nonnull %1)
  br label %66

31:                                               ; preds = %2, %2
  tail call fastcc void @pp_c_logical_and_expression(ptr noundef %0, ptr noundef nonnull %1)
  br label %66

32:                                               ; preds = %2, %2
  tail call void @pp_c_logical_or_expression(ptr noundef %0, ptr noundef nonnull %1)
  br label %66

33:                                               ; preds = %2, %2
  tail call fastcc void @pp_c_equality_expression(ptr noundef %0, ptr noundef nonnull %1)
  br label %66

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 24
  %36 = load ptr, ptr %35, align 8, !tbaa !85
  tail call void %36(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %66

37:                                               ; preds = %2, %2, %2
  tail call fastcc void @pp_c_additive_expression(ptr noundef %0, ptr noundef nonnull %1)
  br label %66

38:                                               ; preds = %2, %2
  %39 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 25
  %40 = load ptr, ptr %39, align 8, !tbaa !86
  tail call void %40(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %66

41:                                               ; preds = %2
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #10
  %42 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %42, align 8, !tbaa !54
  %43 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %44 = load ptr, ptr %43, align 8, !tbaa !69
  %45 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  tail call void %44(ptr noundef %0, ptr noundef %46) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %47 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 25
  %48 = load ptr, ptr %47, align 8, !tbaa !86
  %49 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  tail call void %48(ptr noundef %0, ptr noundef %50) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #10
  store i32 0, ptr %42, align 8, !tbaa !54
  br label %66

51:                                               ; preds = %2, %2
  %52 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %53 = load ptr, ptr %52, align 8, !tbaa !69
  %54 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  tail call void %53(ptr noundef %0, ptr noundef %55) #10
  br label %66

56:                                               ; preds = %2
  %57 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 21
  %58 = load ptr, ptr %57, align 8, !tbaa !83
  %59 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !46
  tail call void %58(ptr noundef %0, ptr noundef %60) #10
  br label %66

61:                                               ; preds = %2, %2
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.58) #10
  br label %66

62:                                               ; preds = %2
  %63 = and i64 %3, 65535
  %64 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !35
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %65, ptr noundef nonnull @.str.13) #10
  br label %66

66:                                               ; preds = %62, %61, %56, %51, %41, %38, %37, %34, %33, %32, %31, %30, %29, %28, %27, %26, %23, %22, %21, %18, %15, %14, %7, %6, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @pp_c_initializer(ptr noundef %0, ptr noundef %1) #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 51
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call fastcc void @pp_c_brace_enclosed_initializer_list(ptr noundef %0, ptr noundef nonnull %1)
  br label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  tail call void %9(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %10

10:                                               ; preds = %7, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_id_expression(ptr noundef %0, ptr noundef %1) #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %9 [
    i16 32, label %5
    i16 34, label %5
    i16 33, label %5
    i16 35, label %5
    i16 29, label %5
    i16 31, label %5
    i16 30, label %5
    i16 1, label %6
  ]

5:                                                ; preds = %2, %2, %2, %2, %2, %2, %2
  tail call void @pp_c_tree_decl_identifier(ptr noundef %0, ptr noundef nonnull %1)
  br label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_identifier, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  tail call void @pp_c_identifier(ptr noundef %0, ptr noundef %8)
  br label %13

9:                                                ; preds = %2
  %10 = and i64 %3, 65535
  %11 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %12, ptr noundef nonnull @.str.13) #10
  br label %13

13:                                               ; preds = %9, %6, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_postfix_expression(ptr noundef %0, ptr noundef %1) #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %313 [
    i16 128, label %5
    i16 127, label %5
    i16 45, label %13
    i16 59, label %23
    i16 103, label %61
    i16 104, label %68
    i16 105, label %75
    i16 106, label %82
    i16 107, label %89
    i16 108, label %96
    i16 109, label %103
    i16 110, label %110
    i16 82, label %131
    i16 41, label %141
    i16 42, label %159
    i16 26, label %202
    i16 27, label %202
    i16 123, label %203
    i16 119, label %281
    i16 51, label %288
    i16 129, label %292
    i16 121, label %306
  ]

5:                                                ; preds = %2, %2
  %6 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  tail call void %7(ptr noundef %0, ptr noundef %9) #10
  %10 = and i64 %3, 65535
  %11 = icmp eq i64 %10, 128
  %12 = select i1 %11, ptr @.str.35, ptr @.str.36
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %12) #10
  br label %316

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 21
  %15 = load ptr, ptr %14, align 8, !tbaa !83
  %16 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  tail call void %15(ptr noundef %0, ptr noundef %17) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 91) #10
  %18 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %18, align 8, !tbaa !54
  %19 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %20 = load ptr, ptr %19, align 8, !tbaa !69
  %21 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  tail call void %20(ptr noundef %0, ptr noundef %22) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 93) #10
  store i32 0, ptr %18, align 8, !tbaa !54
  br label %316

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 21
  %25 = load ptr, ptr %24, align 8, !tbaa !83
  %26 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  tail call void %25(ptr noundef %0, ptr noundef %27) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #10
  %28 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %28, align 8, !tbaa !54
  %29 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = getelementptr inbounds %struct.tree_int_cst, ptr %30, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !46
  %33 = trunc i64 %32 to i32
  %34 = add nsw i32 %33, -3
  %35 = icmp sgt i32 %33, 3
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3, i64 3
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  br label %39

39:                                               ; preds = %23, %36
  %40 = phi i32 [ 1, %36 ], [ 0, %23 ]
  %41 = phi ptr [ %38, %36 ], [ null, %23 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %60, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  br label %45

45:                                               ; preds = %43, %56
  %46 = phi ptr [ %41, %43 ], [ %58, %56 ]
  %47 = phi i32 [ %40, %43 ], [ %57, %56 ]
  %48 = load ptr, ptr %44, align 8, !tbaa !69
  tail call void %48(ptr noundef %0, ptr noundef nonnull %46) #10
  %49 = icmp slt i32 %47, %34
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %51 = add nsw i32 %47, 3
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  %55 = add nsw i32 %47, 1
  br label %56

56:                                               ; preds = %45, %50
  %57 = phi i32 [ %55, %50 ], [ %47, %45 ]
  %58 = phi ptr [ %54, %50 ], [ null, %45 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %45, !llvm.loop !87

60:                                               ; preds = %56, %39
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #10
  store i32 0, ptr %28, align 8, !tbaa !54
  br label %316

61:                                               ; preds = %2
  %62 = load i32, ptr @flag_isoc99, align 4, !tbaa !50
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, ptr @.str.38, ptr @.str.37
  %65 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !54
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %117, label %120

68:                                               ; preds = %2
  %69 = load i32, ptr @flag_isoc99, align 4, !tbaa !50
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, ptr @.str.40, ptr @.str.39
  %72 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !54
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %117, label %120

75:                                               ; preds = %2
  %76 = load i32, ptr @flag_isoc99, align 4, !tbaa !50
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, ptr @.str.42, ptr @.str.41
  %79 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !54
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %117, label %120

82:                                               ; preds = %2
  %83 = load i32, ptr @flag_isoc99, align 4, !tbaa !50
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, ptr @.str.44, ptr @.str.43
  %86 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !54
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %117, label %120

89:                                               ; preds = %2
  %90 = load i32, ptr @flag_isoc99, align 4, !tbaa !50
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, ptr @.str.46, ptr @.str.45
  %93 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %94 = load i32, ptr %93, align 8, !tbaa !54
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %117, label %120

96:                                               ; preds = %2
  %97 = load i32, ptr @flag_isoc99, align 4, !tbaa !50
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, ptr @.str.48, ptr @.str.47
  %100 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %101 = load i32, ptr %100, align 8, !tbaa !54
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %117, label %120

103:                                              ; preds = %2
  %104 = load i32, ptr @flag_isoc99, align 4, !tbaa !50
  %105 = icmp eq i32 %104, 0
  %106 = select i1 %105, ptr @.str.50, ptr @.str.49
  %107 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %108 = load i32, ptr %107, align 8, !tbaa !54
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %117, label %120

110:                                              ; preds = %2
  %111 = load i32, ptr @flag_isoc99, align 4, !tbaa !50
  %112 = icmp eq i32 %111, 0
  %113 = select i1 %112, ptr @.str.52, ptr @.str.51
  %114 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %115 = load i32, ptr %114, align 8, !tbaa !54
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %120

117:                                              ; preds = %110, %103, %96, %89, %82, %75, %68, %61
  %118 = phi ptr [ %65, %61 ], [ %72, %68 ], [ %79, %75 ], [ %86, %82 ], [ %93, %89 ], [ %100, %96 ], [ %107, %103 ], [ %114, %110 ]
  %119 = phi ptr [ %64, %61 ], [ %71, %68 ], [ %78, %75 ], [ %85, %82 ], [ %92, %89 ], [ %99, %96 ], [ %106, %103 ], [ %113, %110 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %118, align 8, !tbaa !54
  br label %120

120:                                              ; preds = %117, %110, %103, %96, %89, %82, %75, %68, %61
  %121 = phi ptr [ %64, %61 ], [ %71, %68 ], [ %78, %75 ], [ %85, %82 ], [ %92, %89 ], [ %99, %96 ], [ %106, %103 ], [ %113, %110 ], [ %119, %117 ]
  %122 = phi ptr [ %65, %61 ], [ %72, %68 ], [ %79, %75 ], [ %86, %82 ], [ %93, %89 ], [ %100, %96 ], [ %107, %103 ], [ %114, %110 ], [ %118, %117 ]
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %121) #10
  store i32 1, ptr %122, align 8, !tbaa !54
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #10
  %123 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %123, align 8, !tbaa !54
  %124 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %125 = load ptr, ptr %124, align 8, !tbaa !69
  %126 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !46
  tail call void %125(ptr noundef %0, ptr noundef %127) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %128 = load ptr, ptr %124, align 8, !tbaa !69
  %129 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !46
  tail call void %128(ptr noundef %0, ptr noundef %130) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #10
  store i32 0, ptr %123, align 8, !tbaa !54
  br label %316

131:                                              ; preds = %2
  %132 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %133 = load i32, ptr %132, align 8, !tbaa !54
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %132, align 8, !tbaa !54
  br label %136

136:                                              ; preds = %131, %135
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.53) #10
  store i32 1, ptr %132, align 8, !tbaa !54
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #10
  store i32 0, ptr %132, align 8, !tbaa !54
  %137 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %138 = load ptr, ptr %137, align 8, !tbaa !69
  %139 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !46
  tail call void %138(ptr noundef %0, ptr noundef %140) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #10
  store i32 0, ptr %132, align 8, !tbaa !54
  br label %316

141:                                              ; preds = %2
  %142 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !46
  %144 = load i64, ptr %143, align 8
  %145 = and i64 %144, 65535
  %146 = icmp eq i64 %145, 47
  %147 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 21
  %148 = load ptr, ptr %147, align 8, !tbaa !83
  br i1 %146, label %149, label %152

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.tree_exp, ptr %143, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !46
  tail call void %148(ptr noundef %0, ptr noundef %151) #10
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str) #10
  br label %153

152:                                              ; preds = %141
  tail call void %148(ptr noundef %0, ptr noundef nonnull %143) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 46) #10
  br label %153

153:                                              ; preds = %152, %149
  %154 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %154, align 8, !tbaa !54
  %155 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %156 = load ptr, ptr %155, align 8, !tbaa !69
  %157 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %158 = load ptr, ptr %157, align 8, !tbaa !46
  tail call void %156(ptr noundef %0, ptr noundef %158) #10
  br label %316

159:                                              ; preds = %2
  %160 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %161 = load ptr, ptr %160, align 8, !tbaa !46
  %162 = load i64, ptr %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = lshr i32 %163, 21
  %165 = and i32 %164, 1
  %166 = tail call ptr @signed_or_unsigned_type_for(i32 noundef %165, ptr noundef nonnull %161) #10
  %167 = icmp eq ptr %166, null
  br i1 %167, label %197, label %168

168:                                              ; preds = %159
  %169 = getelementptr inbounds %struct.tree_type, ptr %166, i64 0, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !46
  %171 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %172 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %173 = load ptr, ptr %172, align 8, !tbaa !46
  %174 = tail call i32 @tree_int_cst_equal(ptr noundef %170, ptr noundef %173) #10
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %197, label %176

176:                                              ; preds = %168
  %177 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !46
  %179 = tail call i64 @tree_low_cst(ptr noundef %178, i32 noundef 0) #10
  %180 = load ptr, ptr %169, align 8, !tbaa !46
  %181 = tail call i64 @tree_low_cst(ptr noundef %180, i32 noundef 0) #10
  %182 = srem i64 %179, %181
  %183 = sdiv i64 %179, %181
  %184 = icmp eq i64 %182, 0
  br i1 %184, label %185, label %197

185:                                              ; preds = %176
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #10
  %186 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %186, align 8, !tbaa !54
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #10
  store i32 0, ptr %186, align 8, !tbaa !54
  %187 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 12
  %188 = load ptr, ptr %187, align 8, !tbaa !80
  tail call void %188(ptr noundef %0, ptr noundef nonnull %166) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 42) #10
  store i32 0, ptr %186, align 8, !tbaa !54
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #10
  store i32 0, ptr %186, align 8, !tbaa !54
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 38) #10
  store i32 0, ptr %186, align 8, !tbaa !54
  %189 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %190 = load ptr, ptr %189, align 8, !tbaa !69
  %191 = load ptr, ptr %171, align 8, !tbaa !46
  tail call void %190(ptr noundef %0, ptr noundef %191) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #10
  store i32 0, ptr %186, align 8, !tbaa !54
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 91) #10
  store i32 0, ptr %186, align 8, !tbaa !54
  %192 = load ptr, ptr %0, align 8, !tbaa !59
  %193 = getelementptr inbounds %struct.output_buffer, ptr %192, i64 0, i32 6
  %194 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %193, ptr noundef nonnull dereferenceable(1) @.str.25, i64 noundef %183)
  %195 = load ptr, ptr %0, align 8, !tbaa !59
  %196 = getelementptr inbounds %struct.output_buffer, ptr %195, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %196) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 93) #10
  store i32 0, ptr %186, align 8, !tbaa !54
  br label %316

197:                                              ; preds = %176, %168, %159
  %198 = load i64, ptr %1, align 8
  %199 = and i64 %198, 65535
  %200 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %199
  %201 = load ptr, ptr %200, align 8, !tbaa !35
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %201, ptr noundef nonnull @.str.13) #10
  br label %316

202:                                              ; preds = %2, %2
  tail call fastcc void @pp_c_compound_literal(ptr noundef %0, ptr noundef nonnull %1)
  br label %316

203:                                              ; preds = %2
  %204 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !46
  %206 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %207 = load ptr, ptr %206, align 8, !tbaa !46
  %208 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %209 = load ptr, ptr %208, align 8, !tbaa !46
  %210 = load i64, ptr %207, align 8
  %211 = and i64 %210, 65535
  %212 = icmp eq i64 %211, 116
  br i1 %212, label %213, label %254

213:                                              ; preds = %203
  %214 = load i64, ptr %209, align 8
  %215 = and i64 %214, 65535
  %216 = icmp eq i64 %215, 116
  br i1 %216, label %217, label %254

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.tree_common, ptr %207, i64 0, i32 2
  %219 = load ptr, ptr %218, align 8, !tbaa !46
  %220 = getelementptr inbounds %struct.tree_common, ptr %205, i64 0, i32 2
  %221 = load ptr, ptr %220, align 8, !tbaa !46
  %222 = icmp eq ptr %219, %221
  br i1 %222, label %223, label %254

223:                                              ; preds = %217
  %224 = getelementptr inbounds %struct.tree_common, ptr %209, i64 0, i32 2
  %225 = load ptr, ptr %224, align 8, !tbaa !46
  %226 = icmp eq ptr %225, %221
  br i1 %226, label %227, label %254

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.tree_exp, ptr %207, i64 0, i32 3
  %229 = load ptr, ptr %228, align 8, !tbaa !46
  %230 = load i64, ptr %229, align 8
  %231 = and i64 %230, 65535
  %232 = icmp eq i64 %231, 43
  br i1 %232, label %233, label %254

233:                                              ; preds = %227
  %234 = getelementptr inbounds %struct.tree_exp, ptr %209, i64 0, i32 3
  %235 = load ptr, ptr %234, align 8, !tbaa !46
  %236 = load i64, ptr %235, align 8
  %237 = and i64 %236, 65535
  %238 = icmp eq i64 %237, 44
  br i1 %238, label %239, label %254

239:                                              ; preds = %233
  %240 = getelementptr inbounds %struct.tree_exp, ptr %229, i64 0, i32 3
  %241 = load ptr, ptr %240, align 8, !tbaa !46
  %242 = getelementptr inbounds %struct.tree_exp, ptr %235, i64 0, i32 3
  %243 = load ptr, ptr %242, align 8, !tbaa !46
  %244 = icmp eq ptr %241, %243
  br i1 %244, label %245, label %254

245:                                              ; preds = %239
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #10
  %246 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %246, align 8, !tbaa !54
  %247 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 12
  %248 = load ptr, ptr %247, align 8, !tbaa !80
  tail call void %248(ptr noundef %0, ptr noundef %205) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #10
  store i32 0, ptr %246, align 8, !tbaa !54
  %249 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %250 = load ptr, ptr %249, align 8, !tbaa !69
  %251 = load ptr, ptr %228, align 8, !tbaa !46
  %252 = getelementptr inbounds %struct.tree_exp, ptr %251, i64 0, i32 3
  %253 = load ptr, ptr %252, align 8, !tbaa !46
  tail call void %250(ptr noundef %0, ptr noundef %253) #10
  br label %316

254:                                              ; preds = %239, %233, %227, %223, %217, %213, %203
  %255 = tail call i32 @integer_zerop(ptr noundef %209) #10
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %254
  %258 = tail call i32 @real_zerop(ptr noundef %209) #10
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %280, label %260

260:                                              ; preds = %257, %254
  %261 = getelementptr inbounds %struct.tree_common, ptr %207, i64 0, i32 2
  %262 = load ptr, ptr %261, align 8, !tbaa !46
  %263 = getelementptr inbounds %struct.tree_common, ptr %205, i64 0, i32 2
  %264 = load ptr, ptr %263, align 8, !tbaa !46
  %265 = icmp eq ptr %262, %264
  br i1 %265, label %266, label %280

266:                                              ; preds = %260
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #10
  %267 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %267, align 8, !tbaa !54
  %268 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 12
  %269 = load ptr, ptr %268, align 8, !tbaa !80
  tail call void %269(ptr noundef %0, ptr noundef %205) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #10
  store i32 0, ptr %267, align 8, !tbaa !54
  %270 = load i64, ptr %207, align 8
  %271 = and i64 %270, 65535
  %272 = icmp eq i64 %271, 116
  br i1 %272, label %273, label %276

273:                                              ; preds = %266
  %274 = getelementptr inbounds %struct.tree_exp, ptr %207, i64 0, i32 3
  %275 = load ptr, ptr %274, align 8, !tbaa !46
  br label %276

276:                                              ; preds = %273, %266
  %277 = phi ptr [ %275, %273 ], [ %207, %266 ]
  %278 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %279 = load ptr, ptr %278, align 8, !tbaa !69
  tail call void %279(ptr noundef %0, ptr noundef %277) #10
  br label %316

280:                                              ; preds = %257, %260
  tail call fastcc void @pp_c_compound_literal(ptr noundef %0, ptr noundef %1)
  br label %316

281:                                              ; preds = %2
  %282 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %283 = load ptr, ptr %282, align 8, !tbaa !46
  %284 = getelementptr inbounds %struct.tree_exp, ptr %283, i64 0, i32 3
  %285 = load ptr, ptr %284, align 8, !tbaa !46
  %286 = getelementptr inbounds %struct.tree_decl_common, ptr %285, i64 0, i32 5
  %287 = load ptr, ptr %286, align 8, !tbaa !46
  br label %288

288:                                              ; preds = %2, %281
  %289 = phi ptr [ %1, %2 ], [ %287, %281 ]
  %290 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 16
  %291 = load ptr, ptr %290, align 8, !tbaa !82
  tail call void %291(ptr noundef %0, ptr noundef %289) #10
  br label %316

292:                                              ; preds = %2
  %293 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %294 = load i32, ptr %293, align 8, !tbaa !54
  %295 = icmp eq i32 %294, 1
  br i1 %295, label %296, label %297

296:                                              ; preds = %292
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %293, align 8, !tbaa !54
  br label %297

297:                                              ; preds = %292, %296
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.54) #10
  store i32 1, ptr %293, align 8, !tbaa !54
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #10
  store i32 0, ptr %293, align 8, !tbaa !54
  %298 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 25
  %299 = load ptr, ptr %298, align 8, !tbaa !86
  %300 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %301 = load ptr, ptr %300, align 8, !tbaa !46
  tail call void %299(ptr noundef %0, ptr noundef %301) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %302 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 12
  %303 = load ptr, ptr %302, align 8, !tbaa !80
  %304 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %305 = load ptr, ptr %304, align 8, !tbaa !46
  tail call void %303(ptr noundef %0, ptr noundef %305) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #10
  store i32 0, ptr %293, align 8, !tbaa !54
  br label %316

306:                                              ; preds = %2
  %307 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %308 = load ptr, ptr %307, align 8, !tbaa !46
  %309 = load i64, ptr %308, align 8
  %310 = and i64 %309, 65535
  %311 = icmp eq i64 %310, 29
  br i1 %311, label %312, label %313

312:                                              ; preds = %306
  tail call void @pp_c_id_expression(ptr noundef %0, ptr noundef nonnull %308)
  br label %316

313:                                              ; preds = %306, %2
  %314 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 20
  %315 = load ptr, ptr %314, align 8, !tbaa !81
  tail call void %315(ptr noundef %0, ptr noundef %1) #10
  br label %316

316:                                              ; preds = %280, %276, %245, %185, %197, %313, %312, %297, %288, %202, %153, %136, %120, %60, %13, %5
  ret void
}

declare ptr @signed_or_unsigned_type_for(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_expression_list(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #8 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  br label %6

6:                                                ; preds = %4, %15
  %7 = phi ptr [ %1, %4 ], [ %16, %15 ]
  %8 = load ptr, ptr %5, align 8, !tbaa !69
  %9 = getelementptr inbounds %struct.tree_list, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  tail call void %8(ptr noundef %0, ptr noundef %10) #10
  %11 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %6
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  br label %15

15:                                               ; preds = %6, %14
  %16 = load ptr, ptr %11, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !88

18:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_constructor_elts(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #8 !prof !34 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  br label %5

5:                                                ; preds = %29, %2
  %6 = phi i64 [ 0, %2 ], [ %30, %29 ]
  %7 = phi ptr [ undef, %2 ], [ %18, %29 ]
  br i1 %3, label %10, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %1, align 8, !tbaa !89
  br label %10

10:                                               ; preds = %5, %8
  %11 = phi i32 [ %9, %8 ], [ 0, %5 ]
  %12 = zext i32 %11 to i64
  %13 = icmp ult i64 %6, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %1, i64 0, i32 2, i64 %6, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !91
  br label %17

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %7, %10 ], [ %16, %14 ]
  br i1 %13, label %19, label %31

19:                                               ; preds = %17
  %20 = load ptr, ptr %4, align 8, !tbaa !69
  tail call void %20(ptr noundef %0, ptr noundef %18) #10
  br i1 %3, label %23, label %21

21:                                               ; preds = %19
  %22 = load i32, ptr %1, align 8, !tbaa !89
  br label %23

23:                                               ; preds = %19, %21
  %24 = phi i32 [ %22, %21 ], [ 0, %19 ]
  %25 = add i32 %24, -1
  %26 = zext i32 %25 to i64
  %27 = icmp eq i64 %6, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  br label %29

29:                                               ; preds = %23, %28
  %30 = add nuw nsw i64 %6, 1
  br label %5, !llvm.loop !93

31:                                               ; preds = %17
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_unary_expression(ptr noundef %0, ptr noundef %1) #8 !prof !34 {
  br label %3

3:                                                ; preds = %9, %2
  %4 = phi ptr [ %1, %2 ], [ %13, %9 ]
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = trunc i64 %5 to i16
  switch i16 %8, label %42 [
    i16 126, label %9
    i16 125, label %9
    i16 44, label %30
    i16 43, label %30
    i16 121, label %14
    i16 47, label %22
    i16 79, label %24
    i16 124, label %25
    i16 90, label %25
    i16 96, label %26
  ]

9:                                                ; preds = %3, %3
  %10 = icmp eq i32 %7, 126
  %11 = select i1 %10, ptr @.str.35, ptr @.str.36
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %11) #10
  %12 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  br label %3

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 28
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 38) #10
  br label %27

21:                                               ; preds = %14
  switch i16 %8, label %27 [
    i16 47, label %22
    i16 79, label %24
    i16 124, label %25
    i16 90, label %25
    i16 96, label %26
  ]

22:                                               ; preds = %21, %3
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 42) #10
  %23 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %23, align 8, !tbaa !54
  br label %27

24:                                               ; preds = %21, %3
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 45) #10
  br label %27

25:                                               ; preds = %21, %3, %3, %21
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 126) #10
  br label %27

26:                                               ; preds = %21, %3
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 33) #10
  br label %27

27:                                               ; preds = %21, %22, %25, %26, %24, %20
  %28 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  tail call void @pp_c_cast_expression(ptr noundef %0, ptr noundef %29)
  br label %45

30:                                               ; preds = %3, %3
  %31 = icmp eq i32 %7, 43
  %32 = select i1 %31, ptr @.str.55, ptr @.str.56
  %33 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !54
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %33, align 8, !tbaa !54
  br label %37

37:                                               ; preds = %30, %36
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %32) #10
  store i32 1, ptr %33, align 8, !tbaa !54
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %33, align 8, !tbaa !54
  %38 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 22
  %39 = load ptr, ptr %38, align 8, !tbaa !94
  %40 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  tail call void %39(ptr noundef %0, ptr noundef %41) #10
  br label %45

42:                                               ; preds = %3
  %43 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 21
  %44 = load ptr, ptr %43, align 8, !tbaa !83
  tail call void %44(ptr noundef %0, ptr noundef nonnull %4) #10
  br label %45

45:                                               ; preds = %42, %37, %27
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_cast_expression(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 !prof !34 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %1, %2 ], [ %14, %7 ]
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %15 [
    i16 78, label %7
    i16 77, label %7
    i16 116, label %7
    i16 113, label %7
    i16 118, label %7
  ]

7:                                                ; preds = %3, %3, %3, %3, %3
  %8 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #10
  %10 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !80
  tail call void %12(ptr noundef %0, ptr noundef %9) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #10
  store i32 0, ptr %10, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  br label %3

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 22
  %17 = load ptr, ptr %16, align 8, !tbaa !94
  tail call void %17(ptr noundef %0, ptr noundef nonnull %4) #10
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_logical_or_expression(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %12 [
    i16 92, label %6
    i16 94, label %6
  ]

5:                                                ; preds = %12, %6
  ret void

6:                                                ; preds = %2, %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  tail call void @pp_c_logical_or_expression(ptr noundef %0, ptr noundef %8)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %9 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %9, align 8, !tbaa !54
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %9, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  tail call fastcc void @pp_c_logical_and_expression(ptr noundef %0, ptr noundef %11)
  br label %5

12:                                               ; preds = %2
  tail call fastcc void @pp_c_logical_and_expression(ptr noundef %0, ptr noundef nonnull %1)
  br label %5
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @pp_c_logical_and_expression(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %12 [
    i16 91, label %6
    i16 93, label %6
  ]

5:                                                ; preds = %12, %6
  ret void

6:                                                ; preds = %2, %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  tail call fastcc void @pp_c_logical_and_expression(ptr noundef %0, ptr noundef %8)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %9 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %9, align 8, !tbaa !54
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.74) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %9, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  tail call fastcc void @pp_c_inclusive_or_expression(ptr noundef %0, ptr noundef %11)
  br label %5

12:                                               ; preds = %2
  tail call fastcc void @pp_c_inclusive_or_expression(ptr noundef %0, ptr noundef nonnull %1)
  br label %5
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @pp_c_shift_expression(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  %5 = add i16 %4, -83
  %6 = icmp ult i16 %5, 2
  br i1 %6, label %8, label %17

7:                                                ; preds = %17, %8
  ret void

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  tail call fastcc void @pp_c_shift_expression(ptr noundef %0, ptr noundef %10)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %11 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %11, align 8, !tbaa !54
  %12 = and i64 %3, 65535
  %13 = icmp eq i64 %12, 83
  %14 = select i1 %13, ptr @.str.75, ptr @.str.76
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %14) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %11, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  tail call fastcc void @pp_c_additive_expression(ptr noundef %0, ptr noundef %16)
  br label %7

17:                                               ; preds = %2
  tail call fastcc void @pp_c_additive_expression(ptr noundef %0, ptr noundef nonnull %1)
  br label %7
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @pp_c_relational_expression(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  %5 = add i16 %4, -97
  %6 = icmp ult i16 %5, 4
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  tail call fastcc void @pp_c_relational_expression(ptr noundef %0, ptr noundef %9)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %10 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 8, !tbaa !54
  switch i16 %4, label %15 [
    i16 97, label %11
    i16 99, label %12
    i16 98, label %13
    i16 100, label %14
  ]

11:                                               ; preds = %7
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 60) #10
  br label %15

12:                                               ; preds = %7
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #10
  br label %15

13:                                               ; preds = %7
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.77) #10
  br label %15

14:                                               ; preds = %7
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.78) #10
  br label %15

15:                                               ; preds = %7, %12, %14, %13, %11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %10, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  tail call fastcc void @pp_c_shift_expression(ptr noundef %0, ptr noundef %17)
  br label %19

18:                                               ; preds = %2
  tail call fastcc void @pp_c_shift_expression(ptr noundef %0, ptr noundef nonnull %1)
  br label %19

19:                                               ; preds = %18, %15
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @pp_c_and_expression(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 89
  br i1 %5, label %7, label %13

6:                                                ; preds = %13, %7
  ret void

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  tail call fastcc void @pp_c_and_expression(ptr noundef %0, ptr noundef %9)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %10 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 8, !tbaa !54
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 38) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %10, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  tail call fastcc void @pp_c_equality_expression(ptr noundef %0, ptr noundef %12)
  br label %6

13:                                               ; preds = %2
  tail call fastcc void @pp_c_equality_expression(ptr noundef %0, ptr noundef nonnull %1)
  br label %6
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @pp_c_exclusive_or_expression(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %24 [
    i16 88, label %5
    i16 95, label %5
  ]

5:                                                ; preds = %2, %2
  %6 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  tail call fastcc void @pp_c_exclusive_or_expression(ptr noundef %0, ptr noundef %7)
  %8 = load i64, ptr %1, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 88
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !54
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  br label %18

16:                                               ; preds = %5
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %17 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi ptr [ %12, %15 ], [ %17, %16 ]
  store i32 0, ptr %19, align 8, !tbaa !54
  br label %20

20:                                               ; preds = %18, %11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 94) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %21 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %21, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  tail call fastcc void @pp_c_and_expression(ptr noundef %0, ptr noundef %23)
  br label %25

24:                                               ; preds = %2
  tail call fastcc void @pp_c_and_expression(ptr noundef %0, ptr noundef nonnull %1)
  br label %25

25:                                               ; preds = %24, %20
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @pp_c_inclusive_or_expression(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 87
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  tail call fastcc void @pp_c_exclusive_or_expression(ptr noundef %0, ptr noundef %8)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %9 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %9, align 8, !tbaa !54
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 124) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %9, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  tail call fastcc void @pp_c_exclusive_or_expression(ptr noundef %0, ptr noundef %11)
  br label %13

12:                                               ; preds = %2
  tail call fastcc void @pp_c_exclusive_or_expression(ptr noundef %0, ptr noundef nonnull %1)
  br label %13

13:                                               ; preds = %12, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @pp_c_equality_expression(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  %5 = add i16 %4, -101
  %6 = icmp ult i16 %5, 2
  br i1 %6, label %8, label %17

7:                                                ; preds = %17, %8
  ret void

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  tail call fastcc void @pp_c_equality_expression(ptr noundef %0, ptr noundef %10)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %11 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %11, align 8, !tbaa !54
  %12 = and i64 %3, 65535
  %13 = icmp eq i64 %12, 101
  %14 = select i1 %13, ptr @.str.79, ptr @.str.80
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %14) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %11, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  tail call fastcc void @pp_c_relational_expression(ptr noundef %0, ptr noundef %16)
  br label %7

17:                                               ; preds = %2
  tail call fastcc void @pp_c_relational_expression(ptr noundef %0, ptr noundef nonnull %1)
  br label %7
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @pp_c_additive_expression(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %18 [
    i16 66, label %6
    i16 63, label %6
    i16 64, label %6
  ]

5:                                                ; preds = %18, %6
  ret void

6:                                                ; preds = %2, %2, %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  tail call fastcc void @pp_c_additive_expression(ptr noundef %0, ptr noundef %8)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %9 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %9, align 8, !tbaa !54
  %10 = icmp eq i16 %4, 66
  %11 = icmp eq i16 %4, 63
  %12 = or i1 %10, %11
  %13 = select i1 %12, i32 43, i32 45
  tail call void @pp_base_character(ptr noundef %0, i32 noundef %13) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %9, align 8, !tbaa !54
  %14 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 23
  %15 = load ptr, ptr %14, align 8, !tbaa !84
  %16 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  tail call void %15(ptr noundef %0, ptr noundef %17) #10
  br label %5

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 23
  %20 = load ptr, ptr %19, align 8, !tbaa !84
  tail call void %20(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %5
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_c_statement(ptr noundef %0, ptr noundef %1) #8 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 8
  %6 = load i8, ptr %5, align 1, !tbaa !75
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @pp_base_newline(ptr noundef %0) #10
  tail call void @pp_base_indent(ptr noundef %0) #10
  store i8 0, ptr %5, align 1, !tbaa !75
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !95
  %12 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %11, i32 noundef 0, i8 noundef zeroext 1) #10
  br label %13

13:                                               ; preds = %2, %9
  ret void
}

declare void @pp_base_indent(ptr noundef) local_unnamed_addr #3

declare i32 @dump_generic_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @pp_c_pretty_printer_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #9 !prof !96 {
  %2 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !97
  %3 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 3
  store ptr @pp_c_declaration, ptr %3, align 8, !tbaa !98
  %4 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 4
  store ptr @pp_c_declaration_specifiers, ptr %4, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 5
  store ptr @pp_c_declarator, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 9
  store ptr @pp_c_direct_declarator, ptr %6, align 8, !tbaa !73
  %7 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 8
  store ptr @pp_c_specifier_qualifier_list, ptr %7, align 8, !tbaa !99
  %8 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 6
  store ptr @pp_c_abstract_declarator, ptr %8, align 8, !tbaa !65
  %9 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 7
  store ptr @pp_c_direct_abstract_declarator, ptr %9, align 8, !tbaa !68
  %10 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 10
  store ptr @pp_c_pointer, ptr %10, align 8, !tbaa !61
  %11 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 11
  store ptr @pp_c_parameter_type_list, ptr %11, align 8, !tbaa !72
  %12 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 12
  store ptr @pp_c_type_id, ptr %12, align 8, !tbaa !80
  %13 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 13
  store ptr @pp_c_type_specifier, ptr %13, align 8, !tbaa !62
  %14 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 14
  store ptr @pp_c_function_specifier, ptr %14, align 8, !tbaa !71
  %15 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 15
  store ptr @pp_c_storage_class_specifier, ptr %15, align 8, !tbaa !70
  %16 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 17
  store ptr @pp_c_statement, ptr %16, align 8, !tbaa !76
  %17 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 18
  store ptr @pp_c_constant, ptr %17, align 8, !tbaa !100
  %18 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 19
  store ptr @pp_c_id_expression, ptr %18, align 8, !tbaa !60
  %19 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 20
  store ptr @pp_c_primary_expression, ptr %19, align 8, !tbaa !81
  %20 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 21
  store ptr @pp_c_postfix_expression, ptr %20, align 8, !tbaa !83
  %21 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 22
  store ptr @pp_c_unary_expression, ptr %21, align 8, !tbaa !94
  %22 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 16
  store ptr @pp_c_initializer, ptr %22, align 8, !tbaa !82
  %23 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 23
  store ptr @pp_c_multiplicative_expression, ptr %23, align 8, !tbaa !84
  %24 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 24
  store ptr @pp_c_conditional_expression, ptr %24, align 8, !tbaa !85
  %25 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 25
  store ptr @pp_c_assignment_expression, ptr %25, align 8, !tbaa !86
  %26 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  store ptr @pp_c_expression, ptr %26, align 8, !tbaa !69
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @pp_c_abstract_declarator(ptr noundef %0, ptr noundef %1) #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 10
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %13 [
    i16 15, label %11
    i16 20, label %11
  ]

11:                                               ; preds = %6, %6
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #10
  %12 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %12, align 8, !tbaa !54
  br label %13

13:                                               ; preds = %6, %11
  %14 = load ptr, ptr %7, align 8, !tbaa !46
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi ptr [ %14, %13 ], [ %1, %2 ]
  %17 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  tail call void %18(ptr noundef %0, ptr noundef %16) #10
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @pp_c_pointer(ptr noundef %0, ptr noundef %1) #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !50
  %7 = icmp eq i32 %6, 2
  %8 = icmp eq i64 %4, 35
  %9 = or i1 %7, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi ptr [ %1, %2 ], [ %12, %10 ]
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %36 [
    i16 10, label %17
    i16 12, label %17
    i16 132, label %30
  ]

17:                                               ; preds = %13, %13
  %18 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 10
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  tail call void @pp_c_pointer(ptr noundef %0, ptr noundef nonnull %19)
  br label %24

24:                                               ; preds = %23, %17
  %25 = load i64, ptr %14, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 10
  %28 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %29 = select i1 %27, i32 42, i32 38
  tail call void @pp_base_character(ptr noundef %0, i32 noundef %29) #10
  store i32 0, ptr %28, align 8, !tbaa !54
  tail call void @pp_c_type_qualifier_list(ptr noundef %0, ptr noundef nonnull %14)
  br label %40

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !98
  %33 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  tail call void %32(ptr noundef %0, ptr noundef %34) #10
  %35 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 8
  store i8 1, ptr %35, align 1, !tbaa !75
  br label %40

36:                                               ; preds = %13
  %37 = and i64 %15, 65535
  %38 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %39, ptr noundef nonnull @.str.13) #10
  br label %40

40:                                               ; preds = %36, %30, %24
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @pp_c_multiplicative_expression(ptr noundef %0, ptr noundef %1) #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %17 [
    i16 65, label %5
    i16 67, label %5
    i16 71, label %5
  ]

5:                                                ; preds = %2, %2, %2
  %6 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 23
  %7 = load ptr, ptr %6, align 8, !tbaa !84
  %8 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  tail call void %7(ptr noundef %0, ptr noundef %9) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %10 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 8, !tbaa !54
  switch i16 %4, label %13 [
    i16 65, label %11
    i16 67, label %12
  ]

11:                                               ; preds = %5
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 42) #10
  store i32 0, ptr %10, align 8, !tbaa !54
  br label %14

12:                                               ; preds = %5
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 47) #10
  br label %14

13:                                               ; preds = %5
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 37) #10
  br label %14

14:                                               ; preds = %12, %13, %11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %10, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  tail call void @pp_c_cast_expression(ptr noundef %0, ptr noundef %16)
  br label %18

17:                                               ; preds = %2
  tail call void @pp_c_cast_expression(ptr noundef %0, ptr noundef nonnull %1)
  br label %18

18:                                               ; preds = %17, %14
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @pp_c_conditional_expression(ptr noundef %0, ptr noundef %1) #8 !prof !34 {
  br label %3

3:                                                ; preds = %8, %2
  %4 = phi ptr [ %1, %2 ], [ %17, %8 ]
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 56
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  tail call void @pp_c_logical_or_expression(ptr noundef %0, ptr noundef %10)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %11 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %11, align 8, !tbaa !54
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 63) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %11, align 8, !tbaa !54
  %12 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  %14 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  tail call void %13(ptr noundef %0, ptr noundef %15) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %11, align 8, !tbaa !54
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 58) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %11, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  br label %3

18:                                               ; preds = %3
  tail call void @pp_c_logical_or_expression(ptr noundef %0, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @pp_c_assignment_expression(ptr noundef %0, ptr noundef %1) #8 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -53
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  tail call void @pp_c_unary_expression(ptr noundef %0, ptr noundef %10)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %11 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %11, align 8, !tbaa !54
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 61) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %12 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  tail call void @pp_c_expression(ptr noundef %0, ptr noundef %13)
  br label %15

14:                                               ; preds = %2
  tail call void @pp_c_conditional_expression(ptr noundef %0, ptr noundef nonnull %1)
  br label %15

15:                                               ; preds = %14, %8
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @print_c_tree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 !prof !34 {
  %3 = load i1, ptr @print_c_tree.initialized, align 1
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  store i1 true, ptr @print_c_tree.initialized, align 1
  tail call void @pp_construct(ptr noundef nonnull @print_c_tree.pp_rec, ptr noundef null, i32 noundef 0) #10
  store ptr null, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 1), align 8, !tbaa !97
  store ptr @pp_c_declaration, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 3), align 8, !tbaa !98
  store ptr @pp_c_declaration_specifiers, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 4), align 8, !tbaa !64
  store ptr @pp_c_declarator, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 5), align 8, !tbaa !66
  store ptr @pp_c_direct_declarator, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 9), align 8, !tbaa !73
  store ptr @pp_c_specifier_qualifier_list, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 8), align 8, !tbaa !99
  store ptr @pp_c_abstract_declarator, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 6), align 8, !tbaa !65
  store ptr @pp_c_direct_abstract_declarator, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 7), align 8, !tbaa !68
  store ptr @pp_c_pointer, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 10), align 8, !tbaa !61
  store ptr @pp_c_parameter_type_list, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 11), align 8, !tbaa !72
  store ptr @pp_c_type_id, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 12), align 8, !tbaa !80
  store ptr @pp_c_type_specifier, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 13), align 8, !tbaa !62
  store ptr @pp_c_function_specifier, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 14), align 8, !tbaa !71
  store ptr @pp_c_storage_class_specifier, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 15), align 8, !tbaa !70
  store ptr @pp_c_statement, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 17), align 8, !tbaa !76
  store ptr @pp_c_constant, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 18), align 8, !tbaa !100
  store ptr @pp_c_id_expression, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 19), align 8, !tbaa !60
  store ptr @pp_c_primary_expression, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 20), align 8, !tbaa !81
  store ptr @pp_c_postfix_expression, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 21), align 8, !tbaa !83
  store ptr @pp_c_unary_expression, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 22), align 8, !tbaa !94
  store ptr @pp_c_initializer, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 16), align 8, !tbaa !82
  store ptr @pp_c_multiplicative_expression, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 23), align 8, !tbaa !84
  store ptr @pp_c_conditional_expression, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 24), align 8, !tbaa !85
  store ptr @pp_c_assignment_expression, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 25), align 8, !tbaa !86
  store ptr @pp_c_expression, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 26), align 8, !tbaa !69
  store i8 1, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 0, i32 8), align 1, !tbaa !75
  br label %5

5:                                                ; preds = %4, %2
  %6 = load ptr, ptr @print_c_tree.pp_rec, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.output_buffer, ptr %6, i64 0, i32 4
  store ptr %0, ptr %7, align 8, !tbaa !101
  %8 = load ptr, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 17), align 8, !tbaa !76
  tail call void %8(ptr noundef nonnull @print_c_tree.pp_rec, ptr noundef %1) #10
  tail call void @pp_base_newline(ptr noundef nonnull @print_c_tree.pp_rec) #10
  tail call void @pp_base_flush(ptr noundef nonnull @print_c_tree.pp_rec) #10
  ret void
}

declare void @pp_construct(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_c_tree(ptr noundef %0) local_unnamed_addr #8 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !35
  tail call void @print_c_tree(ptr noundef %2, ptr noundef %0)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !35
  %4 = tail call i32 @fputc(i32 noundef 10, ptr noundef %3)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare ptr @pp_base_last_position_in_text(ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #3

declare void @real_to_decimal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @fixed_to_decimal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @pp_c_brace_enclosed_initializer_list(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #10
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = load i64, ptr %5, align 8
  %7 = load i64, ptr %1, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 51
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tree_constructor, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  tail call void @pp_c_constructor_elts(ptr noundef %0, ptr noundef %13)
  br label %70

14:                                               ; preds = %2
  %15 = trunc i64 %6 to i16
  switch i16 %15, label %66 [
    i16 16, label %16
    i16 17, label %16
    i16 15, label %16
    i16 14, label %45
    i16 13, label %50
  ]

16:                                               ; preds = %14, %14, %14
  %17 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %70, label %20

20:                                               ; preds = %16
  %21 = and i64 %6, 65534
  %22 = icmp eq i64 %21, 16
  %23 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 16
  br label %24

24:                                               ; preds = %20, %42
  %25 = phi ptr [ %18, %20 ], [ %43, %42 ]
  %26 = getelementptr inbounds %struct.tree_list, ptr %25, i64 0, i32 1
  br i1 %22, label %27, label %29

27:                                               ; preds = %24
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 46) #10
  store i32 0, ptr %3, align 8, !tbaa !54
  %28 = load ptr, ptr %26, align 8, !tbaa !46
  tail call void @pp_c_primary_expression(ptr noundef %0, ptr noundef %28)
  br label %34

29:                                               ; preds = %24
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 91) #10
  store i32 0, ptr %3, align 8, !tbaa !54
  %30 = load ptr, ptr %26, align 8, !tbaa !46
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @pp_c_constant(ptr noundef %0, ptr noundef nonnull %30)
  br label %33

33:                                               ; preds = %32, %29
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 93) #10
  store i32 0, ptr %3, align 8, !tbaa !54
  br label %34

34:                                               ; preds = %33, %27
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %3, align 8, !tbaa !54
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 61) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  store i32 0, ptr %3, align 8, !tbaa !54
  %35 = load ptr, ptr %23, align 8, !tbaa !82
  %36 = getelementptr inbounds %struct.tree_list, ptr %25, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  tail call void %35(ptr noundef %0, ptr noundef %37) #10
  %38 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  br label %42

42:                                               ; preds = %41, %34
  %43 = load ptr, ptr %38, align 8, !tbaa !46
  %44 = icmp eq ptr %43, null
  br i1 %44, label %70, label %24, !llvm.loop !104

45:                                               ; preds = %14
  %46 = icmp eq i32 %9, 27
  br i1 %46, label %47, label %66

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.tree_vector, ptr %1, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  tail call void @pp_c_expression_list(ptr noundef %0, ptr noundef %49)
  br label %70

50:                                               ; preds = %14
  %51 = trunc i64 %7 to i16
  switch i16 %51, label %66 [
    i16 26, label %52
    i16 123, label %52
  ]

52:                                               ; preds = %50, %50
  %53 = and i64 %7, 65535
  %54 = icmp eq i64 %53, 26
  %55 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %56 = load ptr, ptr %55, align 8, !tbaa !69
  %57 = getelementptr inbounds %struct.tree_complex, ptr %1, i64 0, i32 1
  %58 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %59 = select i1 %54, ptr %57, ptr %58
  %60 = load ptr, ptr %59, align 8, !tbaa !46
  tail call void %56(ptr noundef %0, ptr noundef %60) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #10
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #10
  %61 = load ptr, ptr %55, align 8, !tbaa !69
  %62 = getelementptr inbounds %struct.tree_complex, ptr %1, i64 0, i32 2
  %63 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %64 = select i1 %54, ptr %62, ptr %63
  %65 = load ptr, ptr %64, align 8, !tbaa !46
  tail call void %61(ptr noundef %0, ptr noundef %65) #10
  br label %70

66:                                               ; preds = %50, %45, %14
  %67 = and i64 %6, 65535
  %68 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !35
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %69, ptr noundef nonnull @.str.13) #10
  br label %70

70:                                               ; preds = %42, %16, %11, %47, %52, %66
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #10
  store i32 0, ptr %3, align 8, !tbaa !54
  ret void
}

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare i32 @real_zerop(ptr noundef) local_unnamed_addr #3

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }

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
!54 = !{!55, !41, i64 16}
!55 = !{!"c_pretty_print_info", !56, i64 0, !36, i64 56, !41, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256}
!56 = !{!"pretty_print_info", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !57, i64 28, !36, i64 40, !37, i64 48, !37, i64 49, !37, i64 50}
!57 = !{!"", !41, i64 0, !41, i64 4}
!58 = !{!55, !37, i64 50}
!59 = !{!55, !36, i64 0}
!60 = !{!55, !36, i64 200}
!61 = !{!55, !36, i64 128}
!62 = !{!55, !36, i64 152}
!63 = !{!55, !41, i64 64}
!64 = !{!55, !36, i64 80}
!65 = !{!55, !36, i64 96}
!66 = !{!55, !36, i64 88}
!67 = distinct !{!67, !52, !53}
!68 = !{!55, !36, i64 104}
!69 = !{!55, !36, i64 256}
!70 = !{!55, !36, i64 168}
!71 = !{!55, !36, i64 160}
!72 = !{!55, !36, i64 136}
!73 = !{!55, !36, i64 120}
!74 = distinct !{!74, !52, !53}
!75 = !{!55, !37, i64 49}
!76 = !{!55, !36, i64 184}
!77 = distinct !{!77, !52, !53}
!78 = !{!43, !43, i64 0}
!79 = distinct !{!79, !52, !53}
!80 = !{!55, !36, i64 144}
!81 = !{!55, !36, i64 208}
!82 = !{!55, !36, i64 176}
!83 = !{!55, !36, i64 216}
!84 = !{!55, !36, i64 232}
!85 = !{!55, !36, i64 240}
!86 = !{!55, !36, i64 248}
!87 = distinct !{!87, !52, !53}
!88 = distinct !{!88, !52, !53}
!89 = !{!90, !41, i64 0}
!90 = !{!"VEC_constructor_elt_base", !41, i64 0, !41, i64 4, !37, i64 8}
!91 = !{!92, !36, i64 8}
!92 = !{!"constructor_elt_d", !36, i64 0, !36, i64 8}
!93 = distinct !{!93, !52, !53}
!94 = !{!55, !36, i64 224}
!95 = !{!55, !41, i64 24}
!96 = !{!"function_entry_count", i64 1}
!97 = !{!55, !36, i64 56}
!98 = !{!55, !36, i64 72}
!99 = !{!55, !36, i64 112}
!100 = !{!55, !36, i64 192}
!101 = !{!102, !36, i64 192}
!102 = !{!"", !103, i64 0, !103, i64 88, !36, i64 176, !36, i64 184, !36, i64 192, !41, i64 200, !37, i64 204}
!103 = !{!"obstack", !42, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !42, i64 40, !41, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !41, i64 80, !41, i64 80, !41, i64 80}
!104 = distinct !{!104, !52, !53}

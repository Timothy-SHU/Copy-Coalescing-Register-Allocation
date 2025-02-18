; ModuleID = 'c-pch.c'
source_filename = "c-pch.c"
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
%struct.host_hooks = type { ptr, ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.c_pch_validity = type { i8, [1 x i8], ptr, i64 }
%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.c_pch_header = type { i64 }
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.anon, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon = type { i32, i8, i8, i8, i8 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.cpp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.line_maps = type { ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@pch_init.partial_pch = internal constant [9 x i8] c"gpcWrite\00", align 1
@flag_verbose_asm = external local_unnamed_addr global i32, align 4
@asm_out_file = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@pch_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"can%'t create precompiled header %s: %m\00", align 1
@pch_outfile = internal unnamed_addr global ptr null, align 8
@executable_checksum = external constant [16 x i8], align 16
@no_checksum = internal constant [16 x i8] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [8 x i8] c"c-pch.c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@write_symbols = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"can%'t write to %s: %m\00", align 1
@asm_file_name = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"%qs is not a valid output file\00", align 1
@asm_file_startpos = internal unnamed_addr global i64 0, align 8
@debug_hooks = external local_unnamed_addr global ptr, align 8
@parse_in = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [20 x i8] c"can%'t write %s: %m\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"can%'t seek in %s: %m\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"can%'t read %s: %m\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"%s: too short to be a PCH file\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"%s: not compatible with this GCC version\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"%s: not for %s\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.15 = private unnamed_addr constant [19 x i8] c"%s: not a PCH file\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"%s: created by a different GCC executable\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"%s: created with -g%s, but used with -g%s\00", align 1
@debug_type_names = external local_unnamed_addr constant [0 x ptr], align 8
@.str.18 = private unnamed_addr constant [33 x i8] c"%s: settings for %s do not match\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"%s: had text segment at different address\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"calling fdopen\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"reading\00", align 1
@flag_preprocess_only = external local_unnamed_addr global i32, align 4
@.str.24 = private unnamed_addr constant [8 x i8] c"seeking\00", align 1
@line_table = external local_unnamed_addr global ptr, align 8
@lang_post_pch_load = dso_local local_unnamed_addr global ptr null, align 8
@host_hooks = external local_unnamed_addr constant %struct.host_hooks, align 8
@.str.25 = private unnamed_addr constant [62 x i8] c"pch_preprocess pragma should only be used with -fpreprocessed\00", align 1
@input_location = external local_unnamed_addr global i32, align 4
@.str.26 = private unnamed_addr constant [21 x i8] c"use #include instead\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"%s: couldn%'t open PCH file: %m\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"use -Winvalid-pch for more information\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"%s: PCH file was invalid\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"Compiler executable checksum: \00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@flag_exceptions = external local_unnamed_addr global i32, align 4
@.str.32 = private unnamed_addr constant [13 x i8] c"-fexceptions\00", align 1
@get_ident.result = internal global [8 x i8] zeroinitializer, align 8
@get_ident.c_language_chars = internal unnamed_addr constant [5 x i8] c"Co+O\00", align 1
@c_language = external local_unnamed_addr global i32, align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !37 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !38
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !37 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !38
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !37 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !48

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !42
  %11 = load i8, ptr %3, align 1, !tbaa !49
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !37 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !48

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !42
  %11 = load i8, ptr %3, align 1, !tbaa !49
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !37 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !38
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !48

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !42
  %11 = load i8, ptr %3, align 1, !tbaa !49
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !37 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !38
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !37 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !48

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !50
  store i8 %12, ptr %4, align 1, !tbaa !49
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !37 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !48

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !50
  store i8 %12, ptr %4, align 1, !tbaa !49
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !37 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !48

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !50
  store i8 %12, ptr %4, align 1, !tbaa !49
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !37 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !37 {
  %2 = load i32, ptr %0, align 8, !tbaa !52
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !37 {
  %2 = load i32, ptr %0, align 8, !tbaa !52
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !37 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !53
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !37 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !53
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !37 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !37 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !37 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !37 {
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
  br i1 %23, label %7, label %24, !llvm.loop !54

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !37 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @pch_init() #9 !prof !57 {
  %1 = alloca %struct.c_pch_validity, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #17
  %2 = load i32, ptr @flag_verbose_asm, align 4, !tbaa !53
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4, !prof !58

4:                                                ; preds = %0
  %5 = load ptr, ptr @asm_out_file, align 8, !tbaa !38
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1)
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !38
  tail call void @c_common_print_pch_checksum(ptr noundef %7)
  %8 = load ptr, ptr @asm_out_file, align 8, !tbaa !38
  %9 = tail call i32 @fputc(i32 noundef 10, ptr noundef %8)
  br label %10

10:                                               ; preds = %4, %0
  %11 = load ptr, ptr @pch_file, align 8, !tbaa !38
  %12 = icmp eq ptr %11, null
  br i1 %12, label %65, label %13, !prof !58

13:                                               ; preds = %10
  %14 = tail call ptr @fopen_unlocked(ptr noundef nonnull %11, ptr noundef nonnull @.str.2) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load ptr, ptr @pch_file, align 8, !tbaa !38
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.3, ptr noundef %17) #17
  br label %18

18:                                               ; preds = %16, %13
  store ptr %14, ptr @pch_outfile, align 8, !tbaa !38
  %19 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) @executable_checksum, ptr noundef nonnull dereferenceable(16) @no_checksum, i64 16)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 135, ptr noundef nonnull @.str.5) #17
  br label %22

22:                                               ; preds = %18, %21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %23 = load i32, ptr @write_symbols, align 4, !tbaa !53
  %24 = trunc i32 %23 to i8
  store i8 %24, ptr %1, align 8, !tbaa !59
  %25 = load i32, ptr @flag_exceptions, align 4, !tbaa !53
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.c_pch_validity, ptr %1, i64 0, i32 1
  store i8 %26, ptr %27, align 1, !tbaa !49
  %28 = add i32 %25, 128
  %29 = icmp ult i32 %28, 256
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 144, ptr noundef nonnull @.str.5) #17
  br label %31

31:                                               ; preds = %30, %22
  %32 = getelementptr inbounds %struct.c_pch_validity, ptr %1, i64 0, i32 2
  store ptr @pch_init, ptr %32, align 8, !tbaa !61
  %33 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 74), align 8, !tbaa !62
  %34 = getelementptr inbounds %struct.c_pch_validity, ptr %1, i64 0, i32 3
  %35 = call ptr %33(ptr noundef nonnull %34) #17
  %36 = call i64 @fwrite(ptr noundef nonnull @pch_init.partial_pch, i64 noundef 8, i64 noundef 1, ptr noundef %14)
  %37 = icmp eq i64 %36, 1
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = call i64 @fwrite(ptr noundef nonnull @executable_checksum, i64 noundef 16, i64 noundef 1, ptr noundef %14)
  %40 = icmp eq i64 %39, 1
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = call i64 @fwrite(ptr noundef nonnull %1, i64 noundef 24, i64 noundef 1, ptr noundef %14)
  %43 = icmp eq i64 %42, 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i64, ptr %34, align 8, !tbaa !74
  %46 = call i64 @fwrite(ptr noundef %35, i64 noundef %45, i64 noundef 1, ptr noundef %14)
  %47 = icmp eq i64 %46, 1
  br i1 %47, label %50, label %48

48:                                               ; preds = %44, %41, %38, %31
  %49 = load ptr, ptr @pch_file, align 8, !tbaa !38
  call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.6, ptr noundef %49) #17
  br label %50

50:                                               ; preds = %48, %44
  %51 = load ptr, ptr @asm_file_name, align 8, !tbaa !38
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(2) @.str.7)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %50
  call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.8, ptr noundef %51) #17
  br label %57

57:                                               ; preds = %56, %53
  %58 = load ptr, ptr @asm_out_file, align 8, !tbaa !38
  %59 = call i64 @ftell(ptr noundef %58)
  store i64 %59, ptr @asm_file_startpos, align 8, !tbaa !75
  %60 = load ptr, ptr @debug_hooks, align 8, !tbaa !38
  %61 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %60, i64 0, i32 23
  %62 = load ptr, ptr %61, align 8, !tbaa !76
  call void %62(i32 noundef 0) #17
  %63 = load ptr, ptr @parse_in, align 8, !tbaa !38
  %64 = call i32 @cpp_save_state(ptr noundef %63, ptr noundef %14) #17
  br label %65

65:                                               ; preds = %10, %57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #17
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @c_common_print_pch_checksum(ptr nocapture noundef %0) local_unnamed_addr #10 !prof !37 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 30, i64 1, ptr %0)
  br label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %9, %3 ]
  %5 = getelementptr inbounds [16 x i8], ptr @executable_checksum, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !49
  %7 = zext i8 %6 to i32
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %7)
  %9 = add nuw nsw i64 %4, 1
  %10 = icmp eq i64 %9, 16
  br i1 %10, label %11, label %3, !llvm.loop !78

11:                                               ; preds = %3
  %12 = tail call i32 @putc(i32 noundef 10, ptr noundef %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare ptr @fopen_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fatal_error(ptr noundef, ...) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #1

declare i32 @cpp_save_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @c_common_write_pch() local_unnamed_addr #9 !prof !37 {
  %1 = alloca %struct.c_pch_header, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  %2 = load ptr, ptr @debug_hooks, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %2, i64 0, i32 23
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  tail call void %4(i32 noundef 1) #17
  %5 = load ptr, ptr @parse_in, align 8, !tbaa !38
  %6 = load ptr, ptr @pch_outfile, align 8, !tbaa !38
  %7 = tail call i32 @cpp_write_pch_deps(ptr noundef %5, ptr noundef %6) #17
  %8 = load ptr, ptr @asm_out_file, align 8, !tbaa !38
  %9 = tail call i64 @ftell(ptr noundef %8)
  %10 = load i64, ptr @asm_file_startpos, align 8, !tbaa !75
  %11 = sub nsw i64 %9, %10
  store i64 %11, ptr %1, align 8, !tbaa !79
  %12 = load ptr, ptr @pch_outfile, align 8, !tbaa !38
  %13 = call i64 @fwrite(ptr noundef nonnull %1, i64 noundef 8, i64 noundef 1, ptr noundef %12)
  %14 = icmp eq i64 %13, 1
  br i1 %14, label %17, label %15

15:                                               ; preds = %0
  %16 = load ptr, ptr @pch_file, align 8, !tbaa !38
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.9, ptr noundef %16) #17
  br label %17

17:                                               ; preds = %15, %0
  %18 = tail call ptr @xmalloc(i64 noundef 16384) #17
  %19 = load ptr, ptr @asm_out_file, align 8, !tbaa !38
  %20 = load i64, ptr @asm_file_startpos, align 8, !tbaa !75
  %21 = tail call i32 @fseek(ptr noundef %19, i64 noundef %20, i32 noundef 0)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr @asm_file_name, align 8, !tbaa !38
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.10, ptr noundef %24) #17
  br label %25

25:                                               ; preds = %23, %17
  %26 = load i64, ptr @asm_file_startpos, align 8, !tbaa !75
  %27 = icmp slt i64 %26, %9
  br i1 %27, label %28, label %46

28:                                               ; preds = %25, %43
  %29 = phi i64 [ %44, %43 ], [ %26, %25 ]
  %30 = sub nsw i64 %9, %29
  %31 = tail call i64 @llvm.smin.i64(i64 %30, i64 16384)
  %32 = load ptr, ptr @asm_out_file, align 8, !tbaa !38
  %33 = tail call i64 @fread(ptr noundef %18, i64 noundef %31, i64 noundef 1, ptr noundef %32)
  %34 = icmp eq i64 %33, 1
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = load ptr, ptr @asm_file_name, align 8, !tbaa !38
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.11, ptr noundef %36) #17
  br label %37

37:                                               ; preds = %35, %28
  %38 = load ptr, ptr @pch_outfile, align 8, !tbaa !38
  %39 = tail call i64 @fwrite(ptr noundef %18, i64 noundef %31, i64 noundef 1, ptr noundef %38)
  %40 = icmp eq i64 %39, 1
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr @pch_file, align 8, !tbaa !38
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.9, ptr noundef %42) #17
  br label %43

43:                                               ; preds = %41, %37
  %44 = add nsw i64 %31, %29
  %45 = icmp slt i64 %44, %9
  br i1 %45, label %28, label %46, !llvm.loop !81

46:                                               ; preds = %43, %25
  tail call void @free(ptr noundef %18)
  %47 = load ptr, ptr @asm_out_file, align 8, !tbaa !38
  %48 = tail call i32 @fseek(ptr noundef %47, i64 noundef 0, i32 noundef 2)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr @asm_file_name, align 8, !tbaa !38
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.10, ptr noundef %51) #17
  br label %52

52:                                               ; preds = %50, %46
  %53 = load ptr, ptr @pch_outfile, align 8, !tbaa !38
  tail call void @gt_pch_save(ptr noundef %53) #17
  %54 = load ptr, ptr @parse_in, align 8, !tbaa !38
  %55 = load ptr, ptr @pch_outfile, align 8, !tbaa !38
  %56 = tail call i32 @cpp_write_pch_state(ptr noundef %54, ptr noundef %55) #17
  %57 = load ptr, ptr @pch_outfile, align 8, !tbaa !38
  %58 = tail call i32 @fseek(ptr noundef %57, i64 noundef 0, i32 noundef 0)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %52
  store i64 3688782545671123047, ptr @get_ident.result, align 8
  %61 = load i32, ptr @c_language, align 4, !tbaa !53
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [5 x i8], ptr @get_ident.c_language_chars, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !49
  store i8 %64, ptr getelementptr inbounds ([8 x i8], ptr @get_ident.result, i64 0, i64 4), align 4, !tbaa !49
  %65 = load ptr, ptr @pch_outfile, align 8, !tbaa !38
  %66 = tail call i64 @fwrite(ptr noundef nonnull @get_ident.result, i64 noundef 8, i64 noundef 1, ptr noundef %65)
  %67 = icmp eq i64 %66, 1
  br i1 %67, label %70, label %68

68:                                               ; preds = %60, %52
  %69 = load ptr, ptr @pch_file, align 8, !tbaa !38
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.9, ptr noundef %69) #17
  br label %70

70:                                               ; preds = %68, %60
  %71 = load ptr, ptr @pch_outfile, align 8, !tbaa !38
  %72 = tail call i32 @fclose(ptr noundef %71)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  ret void
}

declare i32 @cpp_write_pch_deps(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

declare void @gt_pch_save(ptr noundef) local_unnamed_addr #3

declare i32 @cpp_write_pch_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i32 @c_common_valid_pch(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !37 {
  %4 = alloca [24 x i8], align 16
  %5 = alloca %struct.c_pch_validity, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  %6 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) @executable_checksum, ptr noundef nonnull dereferenceable(16) @no_checksum, i64 16)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 240, ptr noundef nonnull @.str.5) #17
  br label %9

9:                                                ; preds = %3, %8
  %10 = call i64 @read(i32 noundef %2, ptr noundef nonnull %4, i64 noundef 24) #17
  %11 = trunc i64 %10 to i32
  switch i32 %11, label %13 [
    i32 -1, label %12
    i32 24, label %20
  ]

12:                                               ; preds = %9
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.11, ptr noundef %1) #17
  br label %20

13:                                               ; preds = %9
  %14 = tail call ptr @cpp_get_options(ptr noundef %0) #17
  %15 = getelementptr inbounds %struct.cpp_options, ptr %14, i64 0, i32 41
  %16 = load i8, ptr %15, align 4, !tbaa !82
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %131, label %18

18:                                               ; preds = %13
  %19 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef %1) #17
  br label %131

20:                                               ; preds = %9, %12
  store i64 3688782545671123047, ptr @get_ident.result, align 8
  %21 = load i32, ptr @c_language, align 4, !tbaa !53
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [5 x i8], ptr @get_ident.c_language_chars, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !49
  store i8 %24, ptr getelementptr inbounds ([8 x i8], ptr @get_ident.result, i64 0, i64 4), align 4, !tbaa !49
  %25 = load i64, ptr %4, align 16
  %26 = load i64, ptr @get_ident.result, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %47, label %28

28:                                               ; preds = %20
  %29 = tail call ptr @cpp_get_options(ptr noundef %0) #17
  %30 = getelementptr inbounds %struct.cpp_options, ptr %29, i64 0, i32 41
  %31 = load i8, ptr %30, align 4, !tbaa !82
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %131, label %33

33:                                               ; preds = %28
  %34 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %4, ptr noundef nonnull dereferenceable(5) @get_ident.result, i64 5)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef %1) #17
  br label %131

38:                                               ; preds = %33
  %39 = load i32, ptr %4, align 16
  %40 = load i32, ptr @get_ident.result, align 8
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load ptr, ptr @lang_hooks, align 8, !tbaa !85
  %44 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef %1, ptr noundef %43) #17
  br label %131

45:                                               ; preds = %38
  %46 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %1) #17
  br label %131

47:                                               ; preds = %20
  %48 = getelementptr inbounds i8, ptr %4, i64 8
  %49 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %48, ptr noundef nonnull dereferenceable(16) @executable_checksum, i64 16)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = tail call ptr @cpp_get_options(ptr noundef %0) #17
  %53 = getelementptr inbounds %struct.cpp_options, ptr %52, i64 0, i32 41
  %54 = load i8, ptr %53, align 4, !tbaa !82
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %131, label %56

56:                                               ; preds = %51
  %57 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef %1) #17
  br label %131

58:                                               ; preds = %47
  %59 = call i64 @read(i32 noundef %2, ptr noundef nonnull %5, i64 noundef 24) #17
  %60 = icmp eq i64 %59, 24
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.11, ptr noundef %1) #17
  br label %62

62:                                               ; preds = %61, %58
  %63 = load i8, ptr %5, align 8, !tbaa !59
  %64 = zext i8 %63 to i32
  %65 = load i32, ptr @write_symbols, align 4
  %66 = icmp ne i32 %65, %64
  %67 = icmp ne i32 %65, 0
  %68 = and i1 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %62
  %70 = load i32, ptr @flag_exceptions, align 4
  %71 = getelementptr inbounds %struct.c_pch_validity, ptr %5, i64 0, i32 1
  %72 = load i8, ptr %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %96, label %89, !llvm.loop !93

75:                                               ; preds = %62
  %76 = tail call ptr @cpp_get_options(ptr noundef %0) #17
  %77 = getelementptr inbounds %struct.cpp_options, ptr %76, i64 0, i32 41
  %78 = load i8, ptr %77, align 4, !tbaa !82
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %131, label %80

80:                                               ; preds = %75
  %81 = zext i8 %63 to i64
  %82 = getelementptr inbounds [0 x ptr], ptr @debug_type_names, i64 0, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !38
  %84 = load i32, ptr @write_symbols, align 4, !tbaa !53
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [0 x ptr], ptr @debug_type_names, i64 0, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !38
  %88 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef %1, ptr noundef %83, ptr noundef %87) #17
  br label %131

89:                                               ; preds = %69
  %90 = tail call ptr @cpp_get_options(ptr noundef %0) #17
  %91 = getelementptr inbounds %struct.cpp_options, ptr %90, i64 0, i32 41
  %92 = load i8, ptr %91, align 4, !tbaa !82
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %131, label %94

94:                                               ; preds = %89
  %95 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef %1, ptr noundef nonnull @.str.32) #17
  br label %131

96:                                               ; preds = %69
  %97 = getelementptr inbounds %struct.c_pch_validity, ptr %5, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !61
  %99 = icmp eq ptr %98, @pch_init
  br i1 %99, label %107, label %100

100:                                              ; preds = %96
  %101 = tail call ptr @cpp_get_options(ptr noundef %0) #17
  %102 = getelementptr inbounds %struct.cpp_options, ptr %101, i64 0, i32 41
  %103 = load i8, ptr %102, align 4, !tbaa !82
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %131, label %105

105:                                              ; preds = %100
  %106 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef %1) #17
  br label %131

107:                                              ; preds = %96
  %108 = getelementptr inbounds %struct.c_pch_validity, ptr %5, i64 0, i32 3
  %109 = load i64, ptr %108, align 8, !tbaa !74
  %110 = tail call ptr @xmalloc(i64 noundef %109) #17
  %111 = tail call i64 @read(i32 noundef %2, ptr noundef %110, i64 noundef %109) #17
  %112 = icmp eq i64 %111, %109
  br i1 %112, label %114, label %113

113:                                              ; preds = %107
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.11, ptr noundef %1) #17
  br label %114

114:                                              ; preds = %113, %107
  %115 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 75), align 8, !tbaa !94
  %116 = tail call ptr %115(ptr noundef %110, i64 noundef %109) #17
  tail call void @free(ptr noundef %110)
  %117 = icmp eq ptr %116, null
  br i1 %117, label %125, label %118

118:                                              ; preds = %114
  %119 = tail call ptr @cpp_get_options(ptr noundef %0) #17
  %120 = getelementptr inbounds %struct.cpp_options, ptr %119, i64 0, i32 41
  %121 = load i8, ptr %120, align 4, !tbaa !82
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %118
  %124 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef %1, ptr noundef nonnull %116) #17
  br label %131

125:                                              ; preds = %114
  %126 = tail call i32 @cpp_valid_state(ptr noundef %0, ptr noundef %1, i32 noundef %2) #17
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = icmp eq i32 %126, 0
  %130 = zext i1 %129 to i32
  br label %131

131:                                              ; preds = %94, %89, %123, %118, %125, %100, %105, %75, %80, %51, %56, %28, %42, %45, %36, %13, %18, %128
  %132 = phi i32 [ %130, %128 ], [ 2, %18 ], [ 2, %13 ], [ 2, %36 ], [ 2, %45 ], [ 2, %42 ], [ 2, %28 ], [ 2, %56 ], [ 2, %51 ], [ 2, %80 ], [ 2, %75 ], [ 2, %105 ], [ 2, %100 ], [ 2, %125 ], [ 2, %118 ], [ 2, %123 ], [ 2, %89 ], [ 2, %94 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  ret i32 %132
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #14

declare ptr @cpp_get_options(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @cpp_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @cpp_valid_state(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @c_common_read_pch(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture readnone %3) local_unnamed_addr #9 !prof !37 {
  %5 = alloca %struct.c_pch_header, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.expanded_location, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  %8 = tail call ptr @fdopen_unlocked(i32 noundef %2, ptr noundef nonnull @.str.21) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.22) #17
  %12 = tail call i32 @close(i32 noundef %2) #17
  br label %73

13:                                               ; preds = %4
  %14 = load ptr, ptr @parse_in, align 8, !tbaa !38
  %15 = tail call ptr @cpp_get_callbacks(ptr noundef %14) #17
  %16 = getelementptr inbounds %struct.cpp_callbacks, ptr %15, i64 0, i32 8
  store ptr null, ptr %16, align 8, !tbaa !95
  %17 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %8)
  %18 = icmp eq i64 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.23) #17
  %21 = tail call i32 @fclose(ptr noundef nonnull %8)
  br label %73

22:                                               ; preds = %13
  %23 = load i32, ptr @flag_preprocess_only, align 4, !tbaa !53
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = tail call ptr @xmalloc(i64 noundef 16384) #17
  %27 = load i64, ptr %5, align 8, !tbaa !79
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %25, %41
  %30 = phi i64 [ %42, %41 ], [ 0, %25 ]
  %31 = sub i64 %27, %30
  %32 = tail call i64 @llvm.smin.i64(i64 %31, i64 16384)
  %33 = tail call i64 @fread(ptr noundef %26, i64 noundef %32, i64 noundef 1, ptr noundef nonnull %8)
  %34 = icmp eq i64 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load ptr, ptr @asm_out_file, align 8, !tbaa !38
  %37 = tail call i64 @fwrite(ptr noundef %26, i64 noundef %32, i64 noundef 1, ptr noundef %36)
  %38 = icmp eq i64 %37, 1
  br i1 %38, label %41, label %39

39:                                               ; preds = %35, %29
  %40 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.23) #17
  br label %41

41:                                               ; preds = %39, %35
  %42 = add i64 %32, %30
  %43 = icmp ult i64 %42, %27
  br i1 %43, label %29, label %44, !llvm.loop !97

44:                                               ; preds = %41, %25
  tail call void @free(ptr noundef %26)
  br label %51

45:                                               ; preds = %22
  %46 = load i64, ptr %5, align 8, !tbaa !79
  %47 = tail call i32 @fseek(ptr noundef nonnull %8, i64 noundef %46, i32 noundef 1)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.24) #17
  br label %51

51:                                               ; preds = %45, %49, %44
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #17
  %52 = load ptr, ptr @line_table, align 8, !tbaa !38
  %53 = getelementptr inbounds %struct.line_maps, ptr %52, i64 0, i32 8
  %54 = load i32, ptr %53, align 4, !tbaa !98
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %7, i32 noundef %54) #17
  %55 = load ptr, ptr %7, align 8, !tbaa.struct !100
  %56 = getelementptr inbounds i8, ptr %7, i64 8
  %57 = load i32, ptr %56, align 8, !tbaa.struct !101
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #17
  %58 = load ptr, ptr @line_table, align 8, !tbaa !38
  %59 = getelementptr inbounds %struct.line_maps, ptr %58, i64 0, i32 6
  %60 = load i8, ptr %59, align 4, !tbaa !102
  call void @cpp_prepare_state(ptr noundef %0, ptr noundef nonnull %6) #17
  call void @gt_pch_restore(ptr noundef nonnull %8) #17
  %61 = load ptr, ptr %6, align 8, !tbaa !38
  %62 = call i32 @cpp_read_state(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef %61) #17
  %63 = icmp eq i32 %62, 0
  %64 = call i32 @fclose(ptr noundef nonnull %8)
  br i1 %63, label %65, label %73

65:                                               ; preds = %51
  %66 = load ptr, ptr @line_table, align 8, !tbaa !38
  %67 = getelementptr inbounds %struct.line_maps, ptr %66, i64 0, i32 6
  store i8 %60, ptr %67, align 4, !tbaa !102
  call void @cpp_set_line_map(ptr noundef %0, ptr noundef %66) #17
  %68 = load ptr, ptr @line_table, align 8, !tbaa !38
  %69 = call ptr @linemap_add(ptr noundef %68, i32 noundef 2, i32 noundef 0, ptr noundef %55, i32 noundef %57) #17
  %70 = load ptr, ptr @lang_post_pch_load, align 8, !tbaa !38
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  call void %70() #17
  br label %73

73:                                               ; preds = %51, %65, %72, %19, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  ret void
}

declare ptr @fdopen_unlocked(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @cpp_errno(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #3

declare ptr @cpp_get_callbacks(ptr noundef) local_unnamed_addr #3

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

declare void @cpp_prepare_state(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gt_pch_restore(ptr noundef) local_unnamed_addr #3

declare i32 @cpp_read_state(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cpp_set_line_map(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @linemap_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @c_common_no_more_pch() local_unnamed_addr #9 !prof !57 {
  %1 = load ptr, ptr @parse_in, align 8, !tbaa !38
  %2 = tail call ptr @cpp_get_callbacks(ptr noundef %1) #17
  %3 = getelementptr inbounds %struct.cpp_callbacks, ptr %2, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !103

6:                                                ; preds = %0
  %7 = load ptr, ptr @parse_in, align 8, !tbaa !38
  %8 = tail call ptr @cpp_get_callbacks(ptr noundef %7) #17
  %9 = getelementptr inbounds %struct.cpp_callbacks, ptr %8, i64 0, i32 8
  store ptr null, ptr %9, align 8, !tbaa !95
  %10 = load ptr, ptr getelementptr inbounds (%struct.host_hooks, ptr @host_hooks, i64 0, i32 2), align 8, !tbaa !104
  %11 = tail call i32 %10(ptr noundef null, i64 noundef 0, i32 noundef -1, i64 noundef 0) #17, !prof !106
  br label %12

12:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @c_common_pch_pragma(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !37 {
  %3 = tail call ptr @cpp_get_options(ptr noundef %0) #17
  %4 = getelementptr inbounds %struct.cpp_options, ptr %3, i64 0, i32 32
  %5 = load i8, ptr %4, align 2, !tbaa !107
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.25) #17
  %8 = load i32, ptr @input_location, align 4, !tbaa !53
  tail call void (i32, ptr, ...) @inform(i32 noundef %8, ptr noundef nonnull @.str.26) #17
  br label %26

9:                                                ; preds = %2
  %10 = tail call i32 (ptr, i32, ...) @open(ptr noundef %1, i32 noundef 0, i32 noundef 438) #17
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.27, ptr noundef %1) #17
  br label %13

13:                                               ; preds = %12, %9
  %14 = tail call i32 @c_common_valid_pch(ptr noundef %0, ptr noundef %1, i32 noundef %10), !range !108
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @cpp_get_options(ptr noundef %0) #17
  %18 = getelementptr inbounds %struct.cpp_options, ptr %17, i64 0, i32 41
  %19 = load i8, ptr %18, align 4, !tbaa !82
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, ptr @input_location, align 4, !tbaa !53
  tail call void (i32, ptr, ...) @inform(i32 noundef %22, ptr noundef nonnull @.str.28) #17
  br label %23

23:                                               ; preds = %21, %16
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.29, ptr noundef %1) #17
  br label %24

24:                                               ; preds = %23, %13
  tail call void @c_common_read_pch(ptr noundef %0, ptr noundef %1, i32 noundef %10, ptr poison)
  %25 = tail call i32 @close(i32 noundef %10) #17
  br label %26

26:                                               ; preds = %24, %7
  ret void
}

declare void @error(ptr noundef, ...) local_unnamed_addr #3

declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #14

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

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
attributes #10 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind willreturn memory(argmem: read) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

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
!34 = distinct !{!35}
!35 = !{ptr @c_common_no_more_pch, ptr @cpp_get_callbacks, i64 2}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!43, !39, i64 8}
!43 = !{!"_IO_FILE", !44, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !44, i64 112, !44, i64 116, !45, i64 120, !46, i64 128, !40, i64 130, !40, i64 131, !39, i64 136, !45, i64 144, !39, i64 152, !39, i64 160, !39, i64 168, !39, i64 176, !45, i64 184, !44, i64 192, !40, i64 196}
!44 = !{!"int", !40, i64 0}
!45 = !{!"long", !40, i64 0}
!46 = !{!"short", !40, i64 0}
!47 = !{!43, !39, i64 16}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{!40, !40, i64 0}
!50 = !{!43, !39, i64 40}
!51 = !{!43, !39, i64 48}
!52 = !{!43, !44, i64 0}
!53 = !{!44, !44, i64 0}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!"function_entry_count", i64 1}
!58 = !{!"branch_weights", i32 1, i32 0}
!59 = !{!60, !40, i64 0}
!60 = !{!"c_pch_validity", !40, i64 0, !40, i64 1, !39, i64 8, !45, i64 16}
!61 = !{!60, !39, i64 8}
!62 = !{!63, !39, i64 1360}
!63 = !{!"gcc_target", !64, i64 0, !66, i64 368, !67, i64 664, !44, i64 744, !39, i64 752, !39, i64 760, !39, i64 768, !39, i64 776, !39, i64 784, !39, i64 792, !39, i64 800, !39, i64 808, !39, i64 816, !39, i64 824, !39, i64 832, !39, i64 840, !39, i64 848, !39, i64 856, !39, i64 864, !39, i64 872, !39, i64 880, !39, i64 888, !39, i64 896, !39, i64 904, !39, i64 912, !39, i64 920, !39, i64 928, !39, i64 936, !39, i64 944, !39, i64 952, !39, i64 960, !39, i64 968, !39, i64 976, !39, i64 984, !39, i64 992, !39, i64 1000, !39, i64 1008, !39, i64 1016, !39, i64 1024, !39, i64 1032, !39, i64 1040, !39, i64 1048, !39, i64 1056, !45, i64 1064, !45, i64 1072, !39, i64 1080, !39, i64 1088, !39, i64 1096, !39, i64 1104, !39, i64 1112, !39, i64 1120, !39, i64 1128, !39, i64 1136, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !68, i64 1176, !39, i64 1232, !39, i64 1240, !39, i64 1248, !39, i64 1256, !39, i64 1264, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !39, i64 1304, !39, i64 1312, !39, i64 1320, !39, i64 1328, !39, i64 1336, !39, i64 1344, !39, i64 1352, !39, i64 1360, !39, i64 1368, !39, i64 1376, !39, i64 1384, !39, i64 1392, !39, i64 1400, !39, i64 1408, !39, i64 1416, !39, i64 1424, !39, i64 1432, !39, i64 1440, !39, i64 1448, !39, i64 1456, !45, i64 1464, !69, i64 1472, !39, i64 1664, !39, i64 1672, !39, i64 1680, !39, i64 1688, !39, i64 1696, !39, i64 1704, !39, i64 1712, !39, i64 1720, !39, i64 1728, !39, i64 1736, !39, i64 1744, !39, i64 1752, !39, i64 1760, !39, i64 1768, !39, i64 1776, !70, i64 1784, !71, i64 1792, !72, i64 1896, !73, i64 1968, !39, i64 2016, !40, i64 2024, !40, i64 2025, !40, i64 2026, !40, i64 2027, !40, i64 2028, !40, i64 2029, !40, i64 2030, !40, i64 2031, !40, i64 2032, !40, i64 2033, !40, i64 2034, !40, i64 2035}
!64 = !{!"asm_out", !39, i64 0, !39, i64 8, !39, i64 16, !65, i64 24, !65, i64 56, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !39, i64 152, !39, i64 160, !39, i64 168, !39, i64 176, !39, i64 184, !39, i64 192, !39, i64 200, !39, i64 208, !39, i64 216, !39, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !39, i64 280, !39, i64 288, !39, i64 296, !39, i64 304, !39, i64 312, !39, i64 320, !39, i64 328, !39, i64 336, !39, i64 344, !39, i64 352, !39, i64 360}
!65 = !{!"asm_int_op", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!66 = !{!"sched", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !39, i64 152, !39, i64 160, !39, i64 168, !39, i64 176, !39, i64 184, !39, i64 192, !39, i64 200, !39, i64 208, !39, i64 216, !39, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !39, i64 280, !39, i64 288}
!67 = !{!"vectorize", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72}
!68 = !{!"addr_space", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48}
!69 = !{!"calls", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !39, i64 152, !39, i64 160, !39, i64 168, !39, i64 176, !39, i64 184}
!70 = !{!"c", !39, i64 0}
!71 = !{!"cxx", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96}
!72 = !{!"emutls", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !40, i64 64, !40, i64 65}
!73 = !{!"target_option_hooks", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40}
!74 = !{!60, !45, i64 16}
!75 = !{!45, !45, i64 0}
!76 = !{!77, !39, i64 184}
!77 = !{!"gcc_debug_hooks", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !39, i64 152, !39, i64 160, !39, i64 168, !39, i64 176, !39, i64 184, !39, i64 192, !39, i64 200, !39, i64 208, !39, i64 216, !39, i64 224, !39, i64 232, !39, i64 240, !44, i64 248}
!78 = distinct !{!78, !55, !56}
!79 = !{!80, !45, i64 0}
!80 = !{!"c_pch_header", !45, i64 0}
!81 = distinct !{!81, !55, !56}
!82 = !{!83, !40, i64 76}
!83 = !{!"cpp_options", !44, i64 0, !44, i64 4, !40, i64 8, !40, i64 9, !40, i64 10, !40, i64 11, !40, i64 12, !40, i64 13, !40, i64 14, !40, i64 15, !40, i64 16, !40, i64 17, !40, i64 18, !40, i64 19, !40, i64 20, !40, i64 21, !40, i64 22, !40, i64 23, !40, i64 24, !40, i64 25, !40, i64 26, !40, i64 27, !40, i64 28, !40, i64 29, !40, i64 30, !40, i64 31, !40, i64 32, !40, i64 33, !40, i64 34, !40, i64 35, !40, i64 36, !40, i64 37, !40, i64 38, !40, i64 39, !40, i64 40, !40, i64 41, !40, i64 42, !39, i64 48, !39, i64 56, !39, i64 64, !44, i64 72, !40, i64 76, !40, i64 77, !84, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !40, i64 120, !40, i64 121, !40, i64 122, !40, i64 123, !40, i64 124}
!84 = !{!"", !44, i64 0, !40, i64 4, !40, i64 5, !40, i64 6, !40, i64 7}
!85 = !{!86, !39, i64 0}
!86 = !{!"lang_hooks", !39, i64 0, !45, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !39, i64 152, !39, i64 160, !39, i64 168, !39, i64 176, !39, i64 184, !39, i64 192, !39, i64 200, !39, i64 208, !39, i64 216, !39, i64 224, !39, i64 232, !87, i64 240, !88, i64 248, !89, i64 256, !90, i64 272, !91, i64 432, !92, i64 560, !39, i64 584, !39, i64 592, !39, i64 600, !39, i64 608, !39, i64 616, !39, i64 624, !39, i64 632, !39, i64 640, !39, i64 648, !39, i64 656, !39, i64 664, !40, i64 672}
!87 = !{!"lang_hooks_for_tree_inlining", !39, i64 0}
!88 = !{!"lang_hooks_for_callgraph", !39, i64 0}
!89 = !{!"lang_hooks_for_tree_dump", !39, i64 0, !39, i64 8}
!90 = !{!"lang_hooks_for_decls", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !39, i64 152}
!91 = !{!"lang_hooks_for_types", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112, !40, i64 120}
!92 = !{!"lang_hooks_for_lto", !39, i64 0, !39, i64 8, !39, i64 16}
!93 = distinct !{!93, !55, !56}
!94 = !{!63, !39, i64 1368}
!95 = !{!96, !39, i64 64}
!96 = !{!"cpp_callbacks", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128}
!97 = distinct !{!97, !55, !56}
!98 = !{!99, !44, i64 36}
!99 = !{!"line_maps", !39, i64 0, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !40, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !39, i64 48}
!100 = !{i64 0, i64 8, !38, i64 8, i64 4, !53, i64 12, i64 4, !53, i64 16, i64 1, !49}
!101 = !{i64 0, i64 4, !53, i64 4, i64 4, !53, i64 8, i64 1, !49}
!102 = !{!99, !40, i64 28}
!103 = !{!"branch_weights", i32 0, i32 1}
!104 = !{!105, !39, i64 16}
!105 = !{!"host_hooks", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!106 = !{!"VP", i32 0, i64 1, i64 -3079034318568757809, i64 1}
!107 = !{!83, !40, i64 38}
!108 = !{i32 0, i32 3}

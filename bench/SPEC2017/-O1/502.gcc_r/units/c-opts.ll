; ModuleID = 'c-opts.c'
source_filename = "c-opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cl_option = type { ptr, ptr, i16, i8, i32, i32, ptr, i32, i32 }
%struct.gcc_targetcm = type { ptr }
%struct.visibility_flags = type { i8, [3 x i8] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.pretty_print_info = type { ptr, ptr, i32, i32, i32, %struct.pp_wrapping_mode_t, ptr, i8, i8, i8 }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.cpp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.anon, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon = type { i32, i8, i8, i8, i8 }
%struct.deferred_opt = type { i32, ptr }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.line_map = type { ptr, i32, i32, i32, i8, i8, i8 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%union.tree_type_symtab = type { ptr }
%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.line_maps = type { ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [33 x i8] c"no class name specified with %qs\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"assertion missing after %qs\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"macro name missing after %qs\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"missing path after %qs\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"missing filename after %qs\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"missing makefile target after %qs\00", align 1
@c_common_init_options.lang_flags = internal unnamed_addr constant [4 x i32] [i32 2, i32 64, i32 4, i32 128], align 16
@c_language = external local_unnamed_addr global i32, align 4
@global_dc = external local_unnamed_addr global ptr, align 8
@ident_hash = external local_unnamed_addr global ptr, align 8
@line_table = external local_unnamed_addr global ptr, align 8
@parse_in = external local_unnamed_addr global ptr, align 8
@cpp_opts = dso_local local_unnamed_addr global ptr null, align 8
@flag_exceptions = external local_unnamed_addr global i32, align 4
@warn_pointer_arith = external local_unnamed_addr global i32, align 4
@warn_write_strings = external local_unnamed_addr global i32, align 4
@flag_warn_unused_result = external local_unnamed_addr global i8, align 1
@flag_complex_method = external local_unnamed_addr global i32, align 4
@deferred_opts = internal unnamed_addr global ptr null, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"-lang-asm\00", align 1
@cl_options = external local_unnamed_addr constant [0 x %struct.cl_option], align 8
@targetcm = external local_unnamed_addr global %struct.gcc_targetcm, align 8
@pch_file = external local_unnamed_addr global ptr, align 8
@flag_preprocess_only = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@quote_chain_split = internal unnamed_addr global i1 false, align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"-I- specified twice\00", align 1
@input_location = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [53 x i8] c"obsolete option -I- used, please use -iquote instead\00", align 1
@flag_no_output = external local_unnamed_addr global i8, align 1
@deps_file = internal unnamed_addr global ptr null, align 8
@deps_seen = internal unnamed_addr global i1 false, align 1
@flag_no_line_commands = external local_unnamed_addr global i8, align 1
@flag_working_directory = external local_unnamed_addr global i32, align 4
@warn_unused = external local_unnamed_addr global i32, align 4
@warn_char_subscripts = external local_unnamed_addr global i32, align 4
@warn_missing_braces = external local_unnamed_addr global i32, align 4
@warn_parentheses = external local_unnamed_addr global i32, align 4
@warn_return_type = external local_unnamed_addr global i32, align 4
@warn_sequence_point = external local_unnamed_addr global i32, align 4
@warn_switch = external local_unnamed_addr global i32, align 4
@warn_strict_aliasing = external local_unnamed_addr global i32, align 4
@warn_address = external local_unnamed_addr global i32, align 4
@warn_strict_overflow = external local_unnamed_addr global i32, align 4
@warn_array_bounds = external local_unnamed_addr global i32, align 4
@warn_volatile_register_var = external local_unnamed_addr global i32, align 4
@warn_unknown_pragmas = external local_unnamed_addr global i32, align 4
@warn_uninitialized = external local_unnamed_addr global i32, align 4
@warn_main = external local_unnamed_addr global i32, align 4
@warn_enum_compare = external local_unnamed_addr global i32, align 4
@warn_sign_compare = external local_unnamed_addr global i32, align 4
@warn_reorder = external local_unnamed_addr global i32, align 4
@warn_cxx0x_compat = external local_unnamed_addr global i32, align 4
@warn_pointer_sign = external local_unnamed_addr global i32, align 4
@warn_jump_misses_init = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"implicit-function-declaration\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"nfkc\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"nfc\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"argument %qs to %<-Wnormalized%> not recognized\00", align 1
@warn_strict_null_sentinel = external local_unnamed_addr global i32, align 4
@warn_unused_macros = internal unnamed_addr global i8 0, align 1
@warn_variadic_macros = internal unnamed_addr global i8 1, align 1
@warn_ecpp = external local_unnamed_addr global i32, align 4
@warn_nonvdtor = external local_unnamed_addr global i32, align 4
@flag_cond_mismatch = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [34 x i8] c"switch %qs is no longer supported\00", align 1
@flag_access_control = external local_unnamed_addr global i32, align 4
@flag_no_asm = external local_unnamed_addr global i32, align 4
@flag_no_builtin = external local_unnamed_addr global i32, align 4
@flag_hosted = external local_unnamed_addr global i32, align 4
@flag_short_double = external local_unnamed_addr global i32, align 4
@flag_short_enums = external local_unnamed_addr global i32, align 4
@flag_short_wchar = external local_unnamed_addr global i32, align 4
@flag_signed_bitfields = external local_unnamed_addr global i32, align 4
@flag_signed_char = external local_unnamed_addr global i32, align 4
@flag_check_new = external local_unnamed_addr global i32, align 4
@flag_conserve_space = external local_unnamed_addr global i32, align 4
@constant_string_class_name = external local_unnamed_addr global ptr, align 8
@flag_default_inline = external local_unnamed_addr global i32, align 4
@flag_elide_constructors = external local_unnamed_addr global i32, align 4
@flag_enforce_eh_specs = external local_unnamed_addr global i32, align 4
@flag_new_for_scope = external local_unnamed_addr global i32, align 4
@flag_no_gnu_keywords = external local_unnamed_addr global i32, align 4
@flag_next_runtime = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [77 x i8] c"-fhandle-exceptions has been renamed -fexceptions (and is now on by default)\00", align 1
@flag_implement_inlines = external local_unnamed_addr global i32, align 4
@flag_implicit_inline_templates = external local_unnamed_addr global i32, align 4
@flag_implicit_templates = external local_unnamed_addr global i32, align 4
@flag_lax_vector_conversions = external local_unnamed_addr global i32, align 4
@flag_ms_extensions = external local_unnamed_addr global i32, align 4
@flag_nil_receivers = external local_unnamed_addr global i32, align 4
@flag_no_nonansi_builtin = external local_unnamed_addr global i32, align 4
@flag_optional_diags = external local_unnamed_addr global i32, align 4
@flag_pch_preprocess = external local_unnamed_addr global i8, align 1
@flag_permissive = external local_unnamed_addr global i32, align 4
@flag_replace_objc_classes = external local_unnamed_addr global i32, align 4
@flag_use_repository = external local_unnamed_addr global i32, align 4
@flag_rtti = external local_unnamed_addr global i32, align 4
@flag_detailed_statistics = external local_unnamed_addr global i32, align 4
@max_tinst_depth = external local_unnamed_addr global i32, align 4
@flag_use_cxa_atexit = external local_unnamed_addr global i32, align 4
@flag_use_cxa_get_exception_ptr = external local_unnamed_addr global i32, align 4
@visibility_options = external local_unnamed_addr global %struct.visibility_flags, align 4
@flag_weak = external local_unnamed_addr global i32, align 4
@flag_threadsafe_statics = external local_unnamed_addr global i32, align 4
@flag_pretty_templates = external local_unnamed_addr global i32, align 4
@flag_zero_link = external local_unnamed_addr global i32, align 4
@flag_gen_declaration = external local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"dir:ord:sys,dir:gen:any,ind:base\00", align 1
@imultilib = internal unnamed_addr global ptr null, align 8
@iprefix = internal unnamed_addr global ptr null, align 8
@sysroot = internal unnamed_addr global ptr null, align 8
@std_inc = internal unnamed_addr global i1 false, align 1
@std_cxx_inc = internal unnamed_addr global i1 false, align 1
@out_fname = internal unnamed_addr global ptr null, align 8
@.str.20 = private unnamed_addr constant [32 x i8] c"output filename specified twice\00", align 1
@warn_overlength_strings = external local_unnamed_addr global i32, align 4
@print_struct_values = external local_unnamed_addr global i32, align 4
@exit_after_options = external local_unnamed_addr global i8, align 1
@flag_undef = external local_unnamed_addr global i32, align 4
@verbose = internal unnamed_addr global i1 false, align 1
@warn_psabi = external local_unnamed_addr global i32, align 4
@in_fnames = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@flag_excess_precision_cmdline = external local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [36 x i8] c"-fexcess-precision=standard for C++\00", align 1
@flag_iso = external local_unnamed_addr global i32, align 4
@flag_gnu89_inline = external local_unnamed_addr global i32, align 4
@flag_isoc99 = external local_unnamed_addr global i32, align 4
@.str.23 = private unnamed_addr constant [57 x i8] c"-fno-gnu89-inline is only supported in GNU99 or C99 mode\00", align 1
@flag_objc_sjlj_exceptions = external local_unnamed_addr global i32, align 4
@flag_objc_exceptions = external local_unnamed_addr global i32, align 4
@warn_type_limits = external local_unnamed_addr global i32, align 4
@extra_warnings = external local_unnamed_addr global i32, align 4
@warn_clobbered = external local_unnamed_addr global i32, align 4
@warn_empty_body = external local_unnamed_addr global i32, align 4
@warn_missing_field_initializers = external local_unnamed_addr global i32, align 4
@warn_missing_parameter_type = external local_unnamed_addr global i32, align 4
@warn_old_style_declaration = external local_unnamed_addr global i32, align 4
@warn_override_init = external local_unnamed_addr global i32, align 4
@warn_ignored_qualifiers = external local_unnamed_addr global i32, align 4
@warn_sign_conversion = external local_unnamed_addr global i32, align 4
@warn_conversion = external local_unnamed_addr global i32, align 4
@warn_packed_bitfield_compat = external local_unnamed_addr global i32, align 4
@warn_format = external local_unnamed_addr global i32, align 4
@.str.24 = private unnamed_addr constant [38 x i8] c"-Wformat-y2k ignored without -Wformat\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"-Wformat-extra-args ignored without -Wformat\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"-Wformat-zero-length ignored without -Wformat\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"-Wformat-nonliteral ignored without -Wformat\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"-Wformat-contains-nul ignored without -Wformat\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"-Wformat-security ignored without -Wformat\00", align 1
@warn_implicit_function_declaration = external local_unnamed_addr global i32, align 4
@cxx_dialect = external local_unnamed_addr global i32, align 4
@out_stream = internal unnamed_addr global ptr null, align 8
@.str.30 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"opening output file %s: %m\00", align 1
@num_in_fnames = external local_unnamed_addr global i32, align 4
@.str.32 = private unnamed_addr constant [52 x i8] c"too many filenames given.  Type %s --help for usage\00", align 1
@progname = external local_unnamed_addr global ptr, align 8
@this_input_filename = internal unnamed_addr global ptr null, align 8
@c_global_trees = external local_unnamed_addr global [55 x ptr], align 16
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@version_flag = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.33 = private unnamed_addr constant [50 x i8] c"The C parser does not support -dy, option ignored\00", align 1
@.str.34 = private unnamed_addr constant [60 x i8] c"The Objective-C parser does not support -dy, option ignored\00", align 1
@.str.35 = private unnamed_addr constant [52 x i8] c"The C++ parser does not support -dy, option ignored\00", align 1
@.str.36 = private unnamed_addr constant [62 x i8] c"The Objective-C++ parser does not support -dy, option ignored\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"c-opts.c\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@debug_hooks = external local_unnamed_addr global ptr, align 8
@deps_append = internal unnamed_addr global i1 false, align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"opening dependency file %s: %m\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"closing dependency file %s: %m\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"when writing output to %s: %m\00", align 1
@deferred_count = internal unnamed_addr global i64 0, align 8
@.str.43 = private unnamed_addr constant [20 x i8] c"DEPENDENCIES_OUTPUT\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"SUNPRO_DEPENDENCIES\00", align 1
@.str.45 = private unnamed_addr constant [59 x i8] c"to generate dependencies you must specify either -M or -MM\00", align 1
@flag_dump_macros = external local_unnamed_addr global i8, align 1
@flag_dump_includes = external local_unnamed_addr global i8, align 1
@.str.46 = private unnamed_addr constant [36 x i8] c"-MG may only be used with -M or -MM\00", align 1
@warn_long_long = external local_unnamed_addr global i32, align 4
@pedantic = external local_unnamed_addr global i32, align 4
@warn_traditional = external local_unnamed_addr global i32, align 4
@debug_info_level = external local_unnamed_addr global i32, align 4
@.str.47 = private unnamed_addr constant [55 x i8] c"-fdirectives-only is incompatible with -Wunused_macros\00", align 1
@.str.48 = private unnamed_addr constant [52 x i8] c"-fdirectives-only is incompatible with -traditional\00", align 1
@cpp_GCC_INCLUDE_DIR = external local_unnamed_addr constant [0 x i8], align 1
@cpp_GCC_INCLUDE_DIR_len = external local_unnamed_addr constant i64, align 8
@.str.49 = private unnamed_addr constant [11 x i8] c"<built-in>\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"<command-line>\00", align 1
@include_cursor = internal unnamed_addr global i64 0, align 8
@.str.51 = private unnamed_addr constant [48 x i8] c"too late for # directive to set debug directory\00", align 1
@flag_isoc94 = external local_unnamed_addr global i32, align 4
@warn_implicit = external local_unnamed_addr global i32, align 4
@warn_implicit_int = external local_unnamed_addr global i32, align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !67 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !68
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !67 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !68
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !67 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !78

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !72
  %11 = load i8, ptr %3, align 1, !tbaa !79
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !67 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !78

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !72
  %11 = load i8, ptr %3, align 1, !tbaa !79
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !67 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !68
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !78

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #13
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !72
  %11 = load i8, ptr %3, align 1, !tbaa !79
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !67 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !68
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !67 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !78

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !80
  store i8 %12, ptr %4, align 1, !tbaa !79
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !67 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !78

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !80
  store i8 %12, ptr %4, align 1, !tbaa !79
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !67 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !68
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !78

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !80
  store i8 %12, ptr %4, align 1, !tbaa !79
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !67 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #13
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !67 {
  %2 = load i32, ptr %0, align 8, !tbaa !82
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !67 {
  %2 = load i32, ptr %0, align 8, !tbaa !82
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !67 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !83
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !67 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !83
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !67 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !67 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !67 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !67 {
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
  br i1 %23, label %7, label %24, !llvm.loop !84

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !67 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @c_common_missing_argument(ptr noundef %0, i64 noundef %1) local_unnamed_addr #8 !prof !67 {
  switch i64 %1, label %10 [
    i64 308, label %8
    i64 6, label %3
    i64 9, label %4
    i64 30, label %4
    i64 11, label %5
    i64 14, label %5
    i64 737, label %5
    i64 743, label %5
    i64 744, label %5
    i64 742, label %5
    i64 19, label %6
    i64 17, label %6
    i64 22, label %6
    i64 740, label %6
    i64 738, label %6
    i64 832, label %6
    i64 25, label %7
    i64 26, label %7
  ]

3:                                                ; preds = %2
  br label %8

4:                                                ; preds = %2, %2
  br label %8

5:                                                ; preds = %2, %2, %2, %2, %2, %2
  br label %8

6:                                                ; preds = %2, %2, %2, %2, %2, %2
  br label %8

7:                                                ; preds = %2, %2
  br label %8

8:                                                ; preds = %2, %7, %6, %5, %4, %3
  %9 = phi ptr [ @.str.1, %3 ], [ @.str.2, %4 ], [ @.str.3, %5 ], [ @.str.4, %6 ], [ @.str.5, %7 ], [ @.str, %2 ]
  tail call void (ptr, ...) @error(ptr noundef nonnull %9, ptr noundef %0) #13
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i8 [ 0, %2 ], [ 1, %8 ]
  ret i8 %11
}

declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @c_common_init_options(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 !prof !87 {
  %3 = load i32, ptr @c_language, align 4, !tbaa !83
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6, !prof !88

6:                                                ; preds = %2
  %7 = load ptr, ptr @global_dc, align 8, !tbaa !68
  %8 = load ptr, ptr %7, align 8, !tbaa !89
  %9 = getelementptr inbounds %struct.pretty_print_info, ptr %8, i64 0, i32 5, i32 1
  store i32 80, ptr %9, align 4, !tbaa !91
  %10 = getelementptr inbounds %struct.pretty_print_info, ptr %8, i64 0, i32 5
  store i32 0, ptr %10, align 4, !tbaa !94
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 5, %6 ], [ 0, %2 ]
  %13 = load ptr, ptr @ident_hash, align 8, !tbaa !68
  %14 = load ptr, ptr @line_table, align 8, !tbaa !68
  %15 = tail call ptr @cpp_create_reader(i32 noundef %12, ptr noundef %13, ptr noundef %14) #13
  store ptr %15, ptr @parse_in, align 8, !tbaa !68
  %16 = tail call ptr @cpp_get_callbacks(ptr noundef %15) #13
  %17 = getelementptr inbounds %struct.cpp_callbacks, ptr %16, i64 0, i32 12
  store ptr @c_cpp_error, ptr %17, align 8, !tbaa !95
  %18 = load ptr, ptr @parse_in, align 8, !tbaa !68
  %19 = tail call ptr @cpp_get_options(ptr noundef %18) #13
  store ptr %19, ptr @cpp_opts, align 8, !tbaa !68
  %20 = getelementptr inbounds %struct.cpp_options, ptr %19, i64 0, i32 24
  store i8 1, ptr %20, align 2, !tbaa !97
  %21 = load i32, ptr @c_language, align 4, !tbaa !83
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.cpp_options, ptr %19, i64 0, i32 4
  store i8 %23, ptr %24, align 2, !tbaa !100
  %25 = getelementptr inbounds %struct.cpp_options, ptr %19, i64 0, i32 26
  store i8 0, ptr %25, align 8, !tbaa !101
  %26 = lshr i32 %21, 1
  %27 = and i32 %26, 1
  store i32 %27, ptr @flag_exceptions, align 4, !tbaa !83
  store i32 %27, ptr @warn_pointer_arith, align 4, !tbaa !83
  store i32 %27, ptr @warn_write_strings, align 4, !tbaa !83
  store i8 1, ptr @flag_warn_unused_result, align 1, !tbaa !79
  store i32 2, ptr @flag_complex_method, align 4, !tbaa !83
  %28 = zext i32 %0 to i64
  %29 = shl nuw nsw i64 %28, 4
  %30 = tail call ptr @xmalloc(i64 noundef %29) #13
  store ptr %30, ptr @deferred_opts, align 8, !tbaa !68
  %31 = load i32, ptr @c_language, align 4, !tbaa !83
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i32], ptr @c_common_init_options.lang_flags, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !83
  %35 = icmp eq i32 %31, 0
  %36 = icmp ugt i32 %0, 1
  %37 = and i1 %35, %36
  br i1 %37, label %38, label %51, !prof !102

38:                                               ; preds = %11
  %39 = zext i32 %0 to i64
  br label %43

40:                                               ; preds = %43
  %41 = add nuw nsw i64 %44, 1
  %42 = icmp eq i64 %41, %39
  br i1 %42, label %51, label %43, !prof !103, !llvm.loop !104

43:                                               ; preds = %38, %40
  %44 = phi i64 [ 1, %38 ], [ %41, %40 ]
  %45 = getelementptr inbounds ptr, ptr %1, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !68
  %47 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %46, ptr noundef nonnull dereferenceable(10) @.str.6)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %40, !prof !105

49:                                               ; preds = %43
  %50 = or i32 %34, 198
  br label %51

51:                                               ; preds = %40, %49, %11
  %52 = phi i32 [ %50, %49 ], [ %34, %11 ], [ %34, %40 ]
  ret i32 %52
}

declare ptr @cpp_create_reader(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cpp_get_callbacks(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @c_cpp_error(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare ptr @cpp_get_options(ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: cold nounwind uwtable
define dso_local i32 @c_common_handle_option(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 !prof !87 {
  %4 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %0
  %5 = trunc i64 %0 to i32
  %6 = load ptr, ptr @parse_in, align 8, !tbaa !68
  %7 = tail call ptr @cpp_get_options(ptr noundef %6) #13
  %8 = getelementptr inbounds %struct.cpp_options, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !106
  %10 = icmp eq i32 %9, 9
  switch i32 %5, label %11 [
    i32 2, label %27
    i32 6, label %28
    i32 7, label %34
    i32 8, label %37
    i32 9, label %41
    i32 10, label %47
    i32 13, label %48
    i32 11, label %465
    i32 14, label %51
    i32 16, label %61
    i32 21, label %61
    i32 17, label %66
    i32 22, label %66
    i32 19, label %72
    i32 20, label %73
    i32 24, label %76
    i32 25, label %79
    i32 26, label %79
    i32 29, label %85
    i32 714, label %86
    i32 30, label %87
    i32 37, label %93
    i32 48, label %126
    i32 57, label %130
    i32 58, label %130
    i32 49, label %134
    i32 67, label %149
    i32 75, label %153
    i32 79, label %157
    i32 80, label %161
    i32 91, label %162
    i32 98, label %163
    i32 102, label %166
    i32 107, label %465
    i32 117, label %167
    i32 132, label %171
    i32 137, label %175
    i32 144, label %179
    i32 172, label %208
    i32 186, label %209
    i32 202, label %210
    i32 204, label %214
    i32 209, label %218
    i32 212, label %222
    i32 224, label %224
    i32 233, label %226
    i32 237, label %228
    i32 72, label %229
    i32 238, label %232
    i32 244, label %239
    i32 305, label %246
    i32 263, label %251
    i32 265, label %251
    i32 367, label %251
    i32 375, label %251
    i32 408, label %251
    i32 413, label %251
    i32 415, label %251
    i32 464, label %251
    i32 496, label %251
    i32 497, label %251
    i32 502, label %251
    i32 613, label %251
    i32 626, label %251
    i32 634, label %251
    i32 707, label %251
    i32 717, label %251
    i32 706, label %251
    i32 252, label %254
    i32 270, label %255
    i32 290, label %258
    i32 291, label %261
    i32 337, label %264
    i32 341, label %268
    i32 393, label %272
    i32 414, label %275
    i32 599, label %279
    i32 600, label %280
    i32 601, label %281
    i32 605, label %282
    i32 606, label %283
    i32 684, label %284
    i32 685, label %287
    i32 297, label %290
    i32 306, label %291
    i32 308, label %292
    i32 329, label %293
    i32 352, label %294
    i32 366, label %295
    i32 373, label %296
    i32 385, label %300
    i32 402, label %301
    i32 403, label %304
    i32 409, label %307
    i32 419, label %309
    i32 420, label %310
    i32 422, label %311
    i32 465, label %312
    i32 492, label %313
    i32 498, label %314
    i32 499, label %315
    i32 501, label %316
    i32 510, label %319
    i32 514, label %323
    i32 520, label %324
    i32 521, label %328
    i32 525, label %330
    i32 534, label %331
    i32 562, label %335
    i32 563, label %336
    i32 569, label %339
    i32 602, label %340
    i32 621, label %344
    i32 628, label %345
    i32 370, label %350
    i32 713, label %353
    i32 438, label %356
    i32 631, label %359
    i32 632, label %359
    i32 690, label %360
    i32 691, label %361
    i32 702, label %362
    i32 708, label %369
    i32 636, label %370
    i32 535, label %371
    i32 719, label %372
    i32 725, label %373
    i32 359, label %374
    i32 361, label %375
    i32 360, label %376
    i32 737, label %377
    i32 738, label %379
    i32 740, label %379
    i32 739, label %385
    i32 741, label %386
    i32 742, label %387
    i32 743, label %389
    i32 744, label %390
    i32 745, label %392
    i32 746, label %393
    i32 747, label %394
    i32 748, label %398
    i32 829, label %401
    i32 830, label %402
    i32 832, label %403
    i32 835, label %408
    i32 834, label %408
    i32 837, label %423
    i32 838, label %424
    i32 840, label %426
    i32 844, label %429
    i32 854, label %429
    i32 843, label %435
    i32 853, label %435
    i32 845, label %441
    i32 846, label %441
    i32 859, label %441
    i32 860, label %441
    i32 855, label %447
    i32 856, label %447
    i32 847, label %450
    i32 848, label %450
    i32 861, label %450
    i32 862, label %450
    i32 857, label %453
    i32 858, label %453
    i32 865, label %456
    i32 864, label %459
    i32 866, label %462
    i32 867, label %463
    i32 32, label %464
  ], !prof !107

11:                                               ; preds = %3
  %12 = and i64 %0, 4294967295
  %13 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %12, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !108
  %15 = and i32 %14, 198
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %465, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !108
  %20 = and i32 %19, 1048576
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %465, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr @targetcm, align 8, !tbaa !110
  %24 = tail call zeroext i8 %23(i64 noundef %0, ptr noundef %1, i32 noundef %2) #13
  %25 = icmp ne i8 %24, 0
  %26 = zext i1 %25 to i32
  br label %465

27:                                               ; preds = %3
  store ptr %1, ptr @pch_file, align 8, !tbaa !68
  br label %465

28:                                               ; preds = %3
  %29 = load ptr, ptr @deferred_opts, align 8, !tbaa !68
  %30 = load i64, ptr @deferred_count, align 8, !tbaa !112
  %31 = getelementptr inbounds %struct.deferred_opt, ptr %29, i64 %30
  store i32 6, ptr %31, align 8, !tbaa !113
  %32 = getelementptr inbounds %struct.deferred_opt, ptr %29, i64 %30, i32 1
  store ptr %1, ptr %32, align 8, !tbaa !115
  %33 = add i64 %30, 1
  store i64 %33, ptr @deferred_count, align 8, !tbaa !112
  br label %465

34:                                               ; preds = %3
  %35 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %36 = getelementptr inbounds %struct.cpp_options, ptr %35, i64 0, i32 5
  store i8 0, ptr %36, align 1, !tbaa !116
  br label %465

37:                                               ; preds = %3
  %38 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %39 = getelementptr inbounds %struct.cpp_options, ptr %38, i64 0, i32 5
  store i8 0, ptr %39, align 1, !tbaa !116
  %40 = getelementptr inbounds %struct.cpp_options, ptr %38, i64 0, i32 6
  store i8 0, ptr %40, align 4, !tbaa !117
  br label %465

41:                                               ; preds = %3
  %42 = load ptr, ptr @deferred_opts, align 8, !tbaa !68
  %43 = load i64, ptr @deferred_count, align 8, !tbaa !112
  %44 = getelementptr inbounds %struct.deferred_opt, ptr %42, i64 %43
  store i32 9, ptr %44, align 8, !tbaa !113
  %45 = getelementptr inbounds %struct.deferred_opt, ptr %42, i64 %43, i32 1
  store ptr %1, ptr %45, align 8, !tbaa !115
  %46 = add i64 %43, 1
  store i64 %46, ptr @deferred_count, align 8, !tbaa !112
  br label %465

47:                                               ; preds = %3
  store i32 1, ptr @flag_preprocess_only, align 4, !tbaa !83
  br label %465

48:                                               ; preds = %3
  %49 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %50 = getelementptr inbounds %struct.cpp_options, ptr %49, i64 0, i32 11
  store i8 1, ptr %50, align 1, !tbaa !118
  br label %465

51:                                               ; preds = %3
  %52 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.7)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = tail call ptr @xstrdup(ptr noundef %1) #13
  tail call void @add_path(ptr noundef %55, i32 noundef 1, i32 noundef 0, i8 noundef zeroext 1) #13
  br label %465

56:                                               ; preds = %51
  %57 = load i1, ptr @quote_chain_split, align 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %56
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.8) #13
  br label %59

59:                                               ; preds = %58, %56
  store i1 true, ptr @quote_chain_split, align 1
  tail call void @split_quote_chain() #13
  %60 = load i32, ptr @input_location, align 4, !tbaa !83
  tail call void (i32, ptr, ...) @inform(i32 noundef %60, ptr noundef nonnull @.str.9) #13
  br label %465

61:                                               ; preds = %3, %3
  %62 = icmp eq i32 %5, 16
  %63 = select i1 %62, i32 2, i32 1
  %64 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %65 = getelementptr inbounds %struct.cpp_options, ptr %64, i64 0, i32 43
  store i32 %63, ptr %65, align 8, !tbaa !119
  store i8 1, ptr @flag_no_output, align 1, !tbaa !79
  br label %465

66:                                               ; preds = %3, %3
  %67 = icmp eq i32 %5, 17
  %68 = select i1 %67, i32 2, i32 1
  %69 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %70 = getelementptr inbounds %struct.cpp_options, ptr %69, i64 0, i32 43
  store i32 %68, ptr %70, align 8, !tbaa !119
  %71 = getelementptr inbounds %struct.cpp_options, ptr %69, i64 0, i32 43, i32 4
  store i8 1, ptr %71, align 1, !tbaa !120
  store ptr %1, ptr @deps_file, align 8, !tbaa !68
  br label %465

72:                                               ; preds = %3
  store i1 true, ptr @deps_seen, align 1
  store ptr %1, ptr @deps_file, align 8, !tbaa !68
  br label %465

73:                                               ; preds = %3
  store i1 true, ptr @deps_seen, align 1
  %74 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %75 = getelementptr inbounds %struct.cpp_options, ptr %74, i64 0, i32 43, i32 1
  store i8 1, ptr %75, align 4, !tbaa !121
  br label %465

76:                                               ; preds = %3
  store i1 true, ptr @deps_seen, align 1
  %77 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %78 = getelementptr inbounds %struct.cpp_options, ptr %77, i64 0, i32 43, i32 2
  store i8 1, ptr %78, align 1, !tbaa !122
  br label %465

79:                                               ; preds = %3, %3
  store i1 true, ptr @deps_seen, align 1
  %80 = load ptr, ptr @deferred_opts, align 8, !tbaa !68
  %81 = load i64, ptr @deferred_count, align 8, !tbaa !112
  %82 = getelementptr inbounds %struct.deferred_opt, ptr %80, i64 %81
  store i32 %5, ptr %82, align 8, !tbaa !113
  %83 = getelementptr inbounds %struct.deferred_opt, ptr %80, i64 %81, i32 1
  store ptr %1, ptr %83, align 8, !tbaa !115
  %84 = add i64 %81, 1
  store i64 %84, ptr @deferred_count, align 8, !tbaa !112
  br label %465

85:                                               ; preds = %3
  store i8 1, ptr @flag_no_line_commands, align 1, !tbaa !79
  br label %465

86:                                               ; preds = %3
  store i32 %2, ptr @flag_working_directory, align 4, !tbaa !83
  br label %465

87:                                               ; preds = %3
  %88 = load ptr, ptr @deferred_opts, align 8, !tbaa !68
  %89 = load i64, ptr @deferred_count, align 8, !tbaa !112
  %90 = getelementptr inbounds %struct.deferred_opt, ptr %88, i64 %89
  store i32 30, ptr %90, align 8, !tbaa !113
  %91 = getelementptr inbounds %struct.deferred_opt, ptr %88, i64 %89, i32 1
  store ptr %1, ptr %91, align 8, !tbaa !115
  %92 = add i64 %89, 1
  store i64 %92, ptr @deferred_count, align 8, !tbaa !112
  br label %465

93:                                               ; preds = %3
  store i32 %2, ptr @warn_unused, align 4, !tbaa !83
  tail call void @set_Wformat(i32 noundef %2) #13
  store i32 %2, ptr @warn_implicit, align 4, !tbaa !83
  store i32 %2, ptr @warn_implicit_int, align 4, !tbaa !83
  store i32 %2, ptr @warn_implicit_function_declaration, align 4, !tbaa !83
  store i32 %2, ptr @warn_char_subscripts, align 4, !tbaa !83
  store i32 %2, ptr @warn_missing_braces, align 4, !tbaa !83
  store i32 %2, ptr @warn_parentheses, align 4, !tbaa !83
  store i32 %2, ptr @warn_return_type, align 4, !tbaa !83
  store i32 %2, ptr @warn_sequence_point, align 4, !tbaa !83
  store i32 %2, ptr @warn_switch, align 4, !tbaa !83
  %94 = load i32, ptr @warn_strict_aliasing, align 4, !tbaa !83
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  tail call void @set_Wstrict_aliasing(i32 noundef %2) #13
  br label %97

97:                                               ; preds = %96, %93
  store i32 %2, ptr @warn_address, align 4, !tbaa !83
  %98 = load i32, ptr @warn_strict_overflow, align 4, !tbaa !83
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 %2, ptr @warn_strict_overflow, align 4, !tbaa !83
  br label %101

101:                                              ; preds = %100, %97
  store i32 %2, ptr @warn_array_bounds, align 4, !tbaa !83
  store i32 %2, ptr @warn_volatile_register_var, align 4, !tbaa !83
  store i32 %2, ptr @warn_unknown_pragmas, align 4, !tbaa !83
  store i32 %2, ptr @warn_uninitialized, align 4, !tbaa !83
  %102 = load i32, ptr @c_language, align 4, !tbaa !83
  %103 = and i32 %102, 2
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load i32, ptr @warn_main, align 4, !tbaa !83
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = icmp eq i32 %2, 0
  %110 = select i1 %109, i32 0, i32 2
  store i32 %110, ptr @warn_main, align 4, !tbaa !83
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, ptr @warn_enum_compare, align 4, !tbaa !83
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %115, label %117

114:                                              ; preds = %101
  store i32 %2, ptr @warn_sign_compare, align 4, !tbaa !83
  store i32 %2, ptr @warn_reorder, align 4, !tbaa !83
  br label %115

115:                                              ; preds = %111, %114
  %116 = phi ptr [ @warn_cxx0x_compat, %114 ], [ @warn_enum_compare, %111 ]
  store i32 %2, ptr %116, align 4, !tbaa !83
  br label %117

117:                                              ; preds = %115, %111
  %118 = trunc i32 %2 to i8
  %119 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %120 = getelementptr inbounds %struct.cpp_options, ptr %119, i64 0, i32 15
  store i8 %118, ptr %120, align 1, !tbaa !123
  %121 = getelementptr inbounds %struct.cpp_options, ptr %119, i64 0, i32 13
  store i8 %118, ptr %121, align 1, !tbaa !124
  %122 = getelementptr inbounds %struct.cpp_options, ptr %119, i64 0, i32 20
  store i8 %118, ptr %122, align 2, !tbaa !125
  %123 = load i32, ptr @warn_pointer_sign, align 4, !tbaa !83
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %465

125:                                              ; preds = %117
  store i32 %2, ptr @warn_pointer_sign, align 4, !tbaa !83
  br label %465

126:                                              ; preds = %3
  %127 = trunc i32 %2 to i8
  %128 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %129 = getelementptr inbounds %struct.cpp_options, ptr %128, i64 0, i32 22
  store i8 %127, ptr %129, align 4, !tbaa !126
  br label %465

130:                                              ; preds = %3, %3
  %131 = trunc i32 %2 to i8
  %132 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %133 = getelementptr inbounds %struct.cpp_options, ptr %132, i64 0, i32 13
  store i8 %131, ptr %133, align 1, !tbaa !124
  br label %465

134:                                              ; preds = %3
  %135 = load i32, ptr @warn_enum_compare, align 4, !tbaa !83
  %136 = icmp eq i32 %135, -1
  %137 = icmp ne i32 %2, 0
  %138 = and i1 %137, %136
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store i32 %2, ptr @warn_enum_compare, align 4, !tbaa !83
  br label %140

140:                                              ; preds = %139, %134
  %141 = load i32, ptr @warn_jump_misses_init, align 4, !tbaa !83
  %142 = icmp eq i32 %141, -1
  %143 = and i1 %137, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  store i32 %2, ptr @warn_jump_misses_init, align 4, !tbaa !83
  br label %145

145:                                              ; preds = %144, %140
  %146 = trunc i32 %2 to i8
  %147 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %148 = getelementptr inbounds %struct.cpp_options, ptr %147, i64 0, i32 35
  store i8 %146, ptr %148, align 1, !tbaa !127
  br label %465

149:                                              ; preds = %3
  %150 = trunc i32 %2 to i8
  %151 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %152 = getelementptr inbounds %struct.cpp_options, ptr %151, i64 0, i32 12
  store i8 %150, ptr %152, align 2, !tbaa !128
  br label %465

153:                                              ; preds = %3
  %154 = trunc i32 %2 to i8
  %155 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %156 = getelementptr inbounds %struct.cpp_options, ptr %155, i64 0, i32 19
  store i8 %154, ptr %156, align 1, !tbaa !129
  br label %465

157:                                              ; preds = %3
  %158 = trunc i32 %2 to i8
  %159 = load ptr, ptr @global_dc, align 8, !tbaa !68
  %160 = getelementptr inbounds %struct.diagnostic_context, ptr %159, i64 0, i32 3
  store i8 %158, ptr %160, align 1, !tbaa !130
  br label %465

161:                                              ; preds = %3
  tail call void @enable_warning_as_error(ptr noundef nonnull @.str.10, i32 noundef %2, i32 noundef 66) #13
  br label %465

162:                                              ; preds = %3
  tail call void @set_Wformat(i32 noundef %2) #13
  br label %465

163:                                              ; preds = %3
  %164 = tail call i64 @strtol(ptr nocapture noundef %1, ptr noundef null, i32 noundef 10)
  %165 = trunc i64 %164 to i32
  tail call void @set_Wformat(i32 noundef %165) #13
  br label %465

166:                                              ; preds = %3
  store i32 %2, ptr @warn_implicit, align 4, !tbaa !83
  store i32 %2, ptr @warn_implicit_int, align 4, !tbaa !83
  store i32 %2, ptr @warn_implicit_function_declaration, align 4, !tbaa !83
  br label %465

167:                                              ; preds = %3
  %168 = trunc i32 %2 to i8
  %169 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %170 = getelementptr inbounds %struct.cpp_options, ptr %169, i64 0, i32 41
  store i8 %168, ptr %170, align 4, !tbaa !131
  br label %465

171:                                              ; preds = %3
  %172 = trunc i32 %2 to i8
  %173 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %174 = getelementptr inbounds %struct.cpp_options, ptr %173, i64 0, i32 14
  store i8 %172, ptr %174, align 4, !tbaa !132
  br label %465

175:                                              ; preds = %3
  %176 = trunc i32 %2 to i8
  %177 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %178 = getelementptr inbounds %struct.cpp_options, ptr %177, i64 0, i32 16
  store i8 %176, ptr %178, align 2, !tbaa !133
  br label %465

179:                                              ; preds = %3
  %180 = icmp eq i32 %2, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %179
  %182 = icmp eq ptr %1, null
  br i1 %182, label %192, label %183

183:                                              ; preds = %181
  %184 = tail call i32 @strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.11)
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183, %179
  %187 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %188 = getelementptr inbounds %struct.cpp_options, ptr %187, i64 0, i32 40
  store i32 3, ptr %188, align 8, !tbaa !134
  br label %465

189:                                              ; preds = %183
  %190 = tail call i32 @strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.12)
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %181, %189
  %193 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %194 = getelementptr inbounds %struct.cpp_options, ptr %193, i64 0, i32 40
  store i32 0, ptr %194, align 8, !tbaa !134
  br label %465

195:                                              ; preds = %189
  %196 = tail call i32 @strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.13)
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %200 = getelementptr inbounds %struct.cpp_options, ptr %199, i64 0, i32 40
  store i32 2, ptr %200, align 8, !tbaa !134
  br label %465

201:                                              ; preds = %195
  %202 = tail call i32 @strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.14)
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %206 = getelementptr inbounds %struct.cpp_options, ptr %205, i64 0, i32 40
  store i32 1, ptr %206, align 8, !tbaa !134
  br label %465

207:                                              ; preds = %201
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.15, ptr noundef nonnull %1) #13
  br label %465

208:                                              ; preds = %3
  store i32 %2, ptr @warn_return_type, align 4, !tbaa !83
  br label %465

209:                                              ; preds = %3
  store i32 %2, ptr @warn_strict_null_sentinel, align 4, !tbaa !83
  br label %465

210:                                              ; preds = %3
  %211 = trunc i32 %2 to i8
  %212 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %213 = getelementptr inbounds %struct.cpp_options, ptr %212, i64 0, i32 17
  store i8 %211, ptr %213, align 1, !tbaa !135
  br label %465

214:                                              ; preds = %3
  %215 = trunc i32 %2 to i8
  %216 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %217 = getelementptr inbounds %struct.cpp_options, ptr %216, i64 0, i32 15
  store i8 %215, ptr %217, align 1, !tbaa !123
  br label %465

218:                                              ; preds = %3
  %219 = trunc i32 %2 to i8
  %220 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %221 = getelementptr inbounds %struct.cpp_options, ptr %220, i64 0, i32 27
  store i8 %219, ptr %221, align 1, !tbaa !136
  br label %465

222:                                              ; preds = %3
  %223 = shl nsw i32 %2, 1
  store i32 %223, ptr @warn_unknown_pragmas, align 4, !tbaa !83
  br label %465

224:                                              ; preds = %3
  %225 = trunc i32 %2 to i8
  store i8 %225, ptr @warn_unused_macros, align 1, !tbaa !79
  br label %465

226:                                              ; preds = %3
  %227 = trunc i32 %2 to i8
  store i8 %227, ptr @warn_variadic_macros, align 1, !tbaa !79
  br label %465

228:                                              ; preds = %3
  store i32 %2, ptr @warn_write_strings, align 4, !tbaa !83
  br label %465

229:                                              ; preds = %3
  store i32 %2, ptr @warn_ecpp, align 4, !tbaa !83
  %230 = icmp eq i32 %2, 0
  br i1 %230, label %465, label %231

231:                                              ; preds = %229
  store i32 1, ptr @warn_nonvdtor, align 4, !tbaa !83
  br label %465

232:                                              ; preds = %3
  %233 = load i32, ptr @c_language, align 4, !tbaa !83
  %234 = and i32 %233, 2
  %235 = icmp eq i32 %234, 0
  %236 = load ptr, ptr @parse_in, align 8, !tbaa !68
  br i1 %235, label %237, label %238

237:                                              ; preds = %232
  tail call void @cpp_set_lang(ptr noundef %236, i32 noundef 2) #13
  store i32 1, ptr @flag_iso, align 4, !tbaa !83
  store i32 1, ptr @flag_no_asm, align 4, !tbaa !83
  store i32 1, ptr @flag_no_gnu_keywords, align 4, !tbaa !83
  store i32 1, ptr @flag_no_nonansi_builtin, align 4, !tbaa !83
  store i32 0, ptr @flag_isoc94, align 4, !tbaa !83
  store i32 0, ptr @flag_isoc99, align 4, !tbaa !83
  br label %465

238:                                              ; preds = %232
  tail call void @cpp_set_lang(ptr noundef %236, i32 noundef 6) #13
  store i32 1, ptr @flag_no_gnu_keywords, align 4, !tbaa !83
  store i32 1, ptr @flag_no_nonansi_builtin, align 4, !tbaa !83
  store i32 1, ptr @flag_iso, align 4, !tbaa !83
  store i32 0, ptr @cxx_dialect, align 4, !tbaa !83
  br label %465

239:                                              ; preds = %3, %245
  %240 = phi ptr [ %241, %245 ], [ %1, %3 ]
  %241 = getelementptr inbounds i8, ptr %240, i64 1
  %242 = load i8, ptr %240, align 1, !tbaa !79
  switch i8 %242, label %245 [
    i8 0, label %465
    i8 77, label %243
    i8 78, label %243
    i8 68, label %243
    i8 85, label %243
    i8 73, label %244
  ]

243:                                              ; preds = %239, %239, %239, %239
  store i8 %242, ptr @flag_dump_macros, align 1, !tbaa !79
  br label %245

244:                                              ; preds = %239
  store i8 1, ptr @flag_dump_includes, align 1, !tbaa !79
  br label %245

245:                                              ; preds = %244, %243, %239
  br label %239, !llvm.loop !137

246:                                              ; preds = %3
  %247 = load i32, ptr @c_language, align 4, !tbaa !83
  %248 = and i32 %247, 2
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %246
  store i32 %2, ptr @flag_cond_mismatch, align 4, !tbaa !83
  br label %465

251:                                              ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %246, %3
  %252 = load ptr, ptr %4, align 8, !tbaa !138
  %253 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef %252) #13
  br label %465

254:                                              ; preds = %3
  store i32 %2, ptr @flag_access_control, align 4, !tbaa !83
  br label %465

255:                                              ; preds = %3
  %256 = icmp eq i32 %2, 0
  %257 = zext i1 %256 to i32
  store i32 %257, ptr @flag_no_asm, align 4, !tbaa !83
  br label %465

258:                                              ; preds = %3
  %259 = icmp eq i32 %2, 0
  %260 = zext i1 %259 to i32
  store i32 %260, ptr @flag_no_builtin, align 4, !tbaa !83
  br label %465

261:                                              ; preds = %3
  %262 = icmp eq i32 %2, 0
  br i1 %262, label %263, label %465

263:                                              ; preds = %261
  tail call void @disable_builtin_function(ptr noundef %1) #13
  br label %465

264:                                              ; preds = %3
  %265 = trunc i32 %2 to i8
  %266 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %267 = getelementptr inbounds %struct.cpp_options, ptr %266, i64 0, i32 52
  store i8 %265, ptr %267, align 4, !tbaa !139
  br label %465

268:                                              ; preds = %3
  %269 = trunc i32 %2 to i8
  %270 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %271 = getelementptr inbounds %struct.cpp_options, ptr %270, i64 0, i32 24
  store i8 %269, ptr %271, align 2, !tbaa !97
  br label %465

272:                                              ; preds = %3
  %273 = icmp eq i32 %2, 0
  %274 = zext i1 %273 to i32
  br label %275

275:                                              ; preds = %3, %272
  %276 = phi i32 [ %2, %3 ], [ %274, %272 ]
  store i32 %276, ptr @flag_hosted, align 4, !tbaa !83
  %277 = icmp eq i32 %276, 0
  %278 = zext i1 %277 to i32
  store i32 %278, ptr @flag_no_builtin, align 4, !tbaa !83
  br label %465

279:                                              ; preds = %3
  store i32 %2, ptr @flag_short_double, align 4, !tbaa !83
  br label %465

280:                                              ; preds = %3
  store i32 %2, ptr @flag_short_enums, align 4, !tbaa !83
  br label %465

281:                                              ; preds = %3
  store i32 %2, ptr @flag_short_wchar, align 4, !tbaa !83
  br label %465

282:                                              ; preds = %3
  store i32 %2, ptr @flag_signed_bitfields, align 4, !tbaa !83
  br label %465

283:                                              ; preds = %3
  store i32 %2, ptr @flag_signed_char, align 4, !tbaa !83
  br label %465

284:                                              ; preds = %3
  %285 = icmp eq i32 %2, 0
  %286 = zext i1 %285 to i32
  store i32 %286, ptr @flag_signed_bitfields, align 4, !tbaa !83
  br label %465

287:                                              ; preds = %3
  %288 = icmp eq i32 %2, 0
  %289 = zext i1 %288 to i32
  store i32 %289, ptr @flag_signed_char, align 4, !tbaa !83
  br label %465

290:                                              ; preds = %3
  store i32 %2, ptr @flag_check_new, align 4, !tbaa !83
  br label %465

291:                                              ; preds = %3
  store i32 %2, ptr @flag_conserve_space, align 4, !tbaa !83
  br label %465

292:                                              ; preds = %3
  store ptr %1, ptr @constant_string_class_name, align 8, !tbaa !68
  br label %465

293:                                              ; preds = %3
  store i32 %2, ptr @flag_default_inline, align 4, !tbaa !83
  br label %465

294:                                              ; preds = %3
  store i32 %2, ptr @flag_elide_constructors, align 4, !tbaa !83
  br label %465

295:                                              ; preds = %3
  store i32 %2, ptr @flag_enforce_eh_specs, align 4, !tbaa !83
  br label %465

296:                                              ; preds = %3
  %297 = trunc i32 %2 to i8
  %298 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %299 = getelementptr inbounds %struct.cpp_options, ptr %298, i64 0, i32 25
  store i8 %297, ptr %299, align 1, !tbaa !140
  br label %465

300:                                              ; preds = %3
  store i32 %2, ptr @flag_new_for_scope, align 4, !tbaa !83
  br label %465

301:                                              ; preds = %3
  %302 = icmp eq i32 %2, 0
  %303 = zext i1 %302 to i32
  store i32 %303, ptr @flag_no_gnu_keywords, align 4, !tbaa !83
  br label %465

304:                                              ; preds = %3
  %305 = icmp eq i32 %2, 0
  %306 = zext i1 %305 to i32
  store i32 %306, ptr @flag_next_runtime, align 4, !tbaa !83
  br label %465

307:                                              ; preds = %3
  %308 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.17) #13
  store i32 %2, ptr @flag_exceptions, align 4, !tbaa !83
  br label %465

309:                                              ; preds = %3
  store i32 %2, ptr @flag_implement_inlines, align 4, !tbaa !83
  br label %465

310:                                              ; preds = %3
  store i32 %2, ptr @flag_implicit_inline_templates, align 4, !tbaa !83
  br label %465

311:                                              ; preds = %3
  store i32 %2, ptr @flag_implicit_templates, align 4, !tbaa !83
  br label %465

312:                                              ; preds = %3
  store i32 %2, ptr @flag_lax_vector_conversions, align 4, !tbaa !83
  br label %465

313:                                              ; preds = %3
  store i32 %2, ptr @flag_ms_extensions, align 4, !tbaa !83
  br label %465

314:                                              ; preds = %3
  store i32 %2, ptr @flag_next_runtime, align 4, !tbaa !83
  br label %465

315:                                              ; preds = %3
  store i32 %2, ptr @flag_nil_receivers, align 4, !tbaa !83
  br label %465

316:                                              ; preds = %3
  %317 = icmp eq i32 %2, 0
  %318 = zext i1 %317 to i32
  store i32 %318, ptr @flag_no_nonansi_builtin, align 4, !tbaa !83
  br label %465

319:                                              ; preds = %3
  %320 = trunc i32 %2 to i8
  %321 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %322 = getelementptr inbounds %struct.cpp_options, ptr %321, i64 0, i32 34
  store i8 %320, ptr %322, align 8, !tbaa !141
  br label %465

323:                                              ; preds = %3
  store i32 %2, ptr @flag_optional_diags, align 4, !tbaa !83
  br label %465

324:                                              ; preds = %3
  %325 = trunc i32 %2 to i8
  %326 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %327 = getelementptr inbounds %struct.cpp_options, ptr %326, i64 0, i32 42
  store i8 %325, ptr %327, align 1, !tbaa !142
  br label %465

328:                                              ; preds = %3
  %329 = trunc i32 %2 to i8
  store i8 %329, ptr @flag_pch_preprocess, align 1, !tbaa !79
  br label %465

330:                                              ; preds = %3
  store i32 %2, ptr @flag_permissive, align 4, !tbaa !83
  br label %465

331:                                              ; preds = %3
  %332 = trunc i32 %2 to i8
  %333 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %334 = getelementptr inbounds %struct.cpp_options, ptr %333, i64 0, i32 32
  store i8 %332, ptr %334, align 2, !tbaa !143
  br label %465

335:                                              ; preds = %3
  store i32 %2, ptr @flag_replace_objc_classes, align 4, !tbaa !83
  br label %465

336:                                              ; preds = %3
  store i32 %2, ptr @flag_use_repository, align 4, !tbaa !83
  %337 = icmp eq i32 %2, 0
  br i1 %337, label %465, label %338

338:                                              ; preds = %336
  store i32 0, ptr @flag_implicit_templates, align 4, !tbaa !83
  br label %465

339:                                              ; preds = %3
  store i32 %2, ptr @flag_rtti, align 4, !tbaa !83
  br label %465

340:                                              ; preds = %3
  %341 = trunc i32 %2 to i8
  %342 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %343 = getelementptr inbounds %struct.cpp_options, ptr %342, i64 0, i32 33
  store i8 %341, ptr %343, align 1, !tbaa !144
  br label %465

344:                                              ; preds = %3
  store i32 %2, ptr @flag_detailed_statistics, align 4, !tbaa !83
  br label %465

345:                                              ; preds = %3
  %346 = add i32 %2, -1
  %347 = icmp ult i32 %346, 100
  br i1 %347, label %348, label %465

348:                                              ; preds = %345
  %349 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  store i32 %2, ptr %349, align 8, !tbaa !145
  br label %465

350:                                              ; preds = %3
  %351 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %352 = getelementptr inbounds %struct.cpp_options, ptr %351, i64 0, i32 37
  store ptr %1, ptr %352, align 8, !tbaa !146
  br label %465

353:                                              ; preds = %3
  %354 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %355 = getelementptr inbounds %struct.cpp_options, ptr %354, i64 0, i32 38
  store ptr %1, ptr %355, align 8, !tbaa !147
  br label %465

356:                                              ; preds = %3
  %357 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %358 = getelementptr inbounds %struct.cpp_options, ptr %357, i64 0, i32 39
  store ptr %1, ptr %358, align 8, !tbaa !148
  br label %465

359:                                              ; preds = %3, %3
  store i32 %2, ptr @max_tinst_depth, align 4, !tbaa !83
  br label %465

360:                                              ; preds = %3
  store i32 %2, ptr @flag_use_cxa_atexit, align 4, !tbaa !83
  br label %465

361:                                              ; preds = %3
  store i32 %2, ptr @flag_use_cxa_get_exception_ptr, align 4, !tbaa !83
  br label %465

362:                                              ; preds = %3
  %363 = trunc i32 %2 to i8
  %364 = load i8, ptr @visibility_options, align 4
  %365 = shl i8 %363, 1
  %366 = and i8 %365, 2
  %367 = and i8 %364, -3
  %368 = or disjoint i8 %367, %366
  store i8 %368, ptr @visibility_options, align 4
  br label %465

369:                                              ; preds = %3
  store i32 %2, ptr @flag_weak, align 4, !tbaa !83
  br label %465

370:                                              ; preds = %3
  store i32 %2, ptr @flag_threadsafe_statics, align 4, !tbaa !83
  br label %465

371:                                              ; preds = %3
  store i32 %2, ptr @flag_pretty_templates, align 4, !tbaa !83
  br label %465

372:                                              ; preds = %3
  store i32 %2, ptr @flag_zero_link, align 4, !tbaa !83
  br label %465

373:                                              ; preds = %3
  store i32 1, ptr @flag_gen_declaration, align 4, !tbaa !83
  br label %465

374:                                              ; preds = %3
  tail call void @set_struct_debug_option(ptr noundef nonnull @.str.18) #13
  br label %465

375:                                              ; preds = %3
  tail call void @set_struct_debug_option(ptr noundef nonnull @.str.19) #13
  br label %465

376:                                              ; preds = %3
  tail call void @set_struct_debug_option(ptr noundef %1) #13
  br label %465

377:                                              ; preds = %3
  %378 = tail call ptr @xstrdup(ptr noundef %1) #13
  tail call void @add_path(ptr noundef %378, i32 noundef 3, i32 noundef 0, i8 noundef zeroext 1) #13
  br label %465

379:                                              ; preds = %3, %3
  %380 = load ptr, ptr @deferred_opts, align 8, !tbaa !68
  %381 = load i64, ptr @deferred_count, align 8, !tbaa !112
  %382 = getelementptr inbounds %struct.deferred_opt, ptr %380, i64 %381
  store i32 %5, ptr %382, align 8, !tbaa !113
  %383 = getelementptr inbounds %struct.deferred_opt, ptr %380, i64 %381, i32 1
  store ptr %1, ptr %383, align 8, !tbaa !115
  %384 = add i64 %381, 1
  store i64 %384, ptr @deferred_count, align 8, !tbaa !112
  br label %465

385:                                              ; preds = %3
  store ptr %1, ptr @imultilib, align 8, !tbaa !68
  br label %465

386:                                              ; preds = %3
  store ptr %1, ptr @iprefix, align 8, !tbaa !68
  br label %465

387:                                              ; preds = %3
  %388 = tail call ptr @xstrdup(ptr noundef %1) #13
  tail call void @add_path(ptr noundef %388, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #13
  br label %465

389:                                              ; preds = %3
  store ptr %1, ptr @sysroot, align 8, !tbaa !68
  br label %465

390:                                              ; preds = %3
  %391 = tail call ptr @xstrdup(ptr noundef %1) #13
  tail call void @add_path(ptr noundef %391, i32 noundef 2, i32 noundef 0, i8 noundef zeroext 1) #13
  br label %465

392:                                              ; preds = %3
  tail call fastcc void @add_prefixed_path(ptr noundef %1, i64 noundef 2)
  br label %465

393:                                              ; preds = %3
  tail call fastcc void @add_prefixed_path(ptr noundef %1, i64 noundef 1)
  br label %465

394:                                              ; preds = %3
  %395 = load ptr, ptr @parse_in, align 8, !tbaa !68
  tail call void @cpp_set_lang(ptr noundef %395, i32 noundef 9) #13
  %396 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %397 = getelementptr inbounds %struct.cpp_options, ptr %396, i64 0, i32 24
  store i8 0, ptr %397, align 2, !tbaa !97
  br label %465

398:                                              ; preds = %3
  %399 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %400 = getelementptr inbounds %struct.cpp_options, ptr %399, i64 0, i32 4
  store i8 1, ptr %400, align 2, !tbaa !100
  br label %465

401:                                              ; preds = %3
  store i1 true, ptr @std_inc, align 1
  br label %465

402:                                              ; preds = %3
  store i1 true, ptr @std_cxx_inc, align 1
  br label %465

403:                                              ; preds = %3
  %404 = load ptr, ptr @out_fname, align 8, !tbaa !68
  %405 = icmp eq ptr %404, null
  br i1 %405, label %406, label %407, !prof !88

406:                                              ; preds = %403
  store ptr %1, ptr @out_fname, align 8, !tbaa !68
  br label %465

407:                                              ; preds = %403
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.20) #13
  br label %465

408:                                              ; preds = %3, %3
  %409 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %410 = getelementptr inbounds %struct.cpp_options, ptr %409, i64 0, i32 31
  store i8 1, ptr %410, align 1, !tbaa !149
  %411 = getelementptr inbounds %struct.cpp_options, ptr %409, i64 0, i32 19
  store i8 1, ptr %411, align 1, !tbaa !129
  %412 = load i32, ptr @warn_pointer_sign, align 4, !tbaa !83
  %413 = icmp eq i32 %412, -1
  br i1 %413, label %414, label %415

414:                                              ; preds = %408
  store i32 1, ptr @warn_pointer_sign, align 4, !tbaa !83
  br label %415

415:                                              ; preds = %414, %408
  %416 = load i32, ptr @warn_overlength_strings, align 4, !tbaa !83
  %417 = icmp eq i32 %416, -1
  br i1 %417, label %418, label %419

418:                                              ; preds = %415
  store i32 1, ptr @warn_overlength_strings, align 4, !tbaa !83
  br label %419

419:                                              ; preds = %418, %415
  %420 = load i32, ptr @warn_main, align 4, !tbaa !83
  %421 = icmp eq i32 %420, -1
  br i1 %421, label %422, label %465

422:                                              ; preds = %419
  store i32 2, ptr @warn_main, align 4, !tbaa !83
  br label %465

423:                                              ; preds = %3
  store i32 1, ptr @print_struct_values, align 4, !tbaa !83
  br label %465

424:                                              ; preds = %3
  %425 = load ptr, ptr @stdout, align 8, !tbaa !68
  tail call void @c_common_print_pch_checksum(ptr noundef %425) #13
  store i8 1, ptr @exit_after_options, align 1, !tbaa !79
  br label %465

426:                                              ; preds = %3
  %427 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %428 = getelementptr inbounds %struct.cpp_options, ptr %427, i64 0, i32 23
  store i8 1, ptr %428, align 1, !tbaa !150
  br label %465

429:                                              ; preds = %3, %3
  br i1 %10, label %465, label %430

430:                                              ; preds = %429
  %431 = icmp eq i32 %5, 844
  %432 = zext i1 %431 to i32
  %433 = load ptr, ptr @parse_in, align 8, !tbaa !68
  %434 = select i1 %431, i32 6, i32 5
  tail call void @cpp_set_lang(ptr noundef %433, i32 noundef %434) #13
  store i32 %432, ptr @flag_no_gnu_keywords, align 4, !tbaa !83
  store i32 %432, ptr @flag_no_nonansi_builtin, align 4, !tbaa !83
  store i32 %432, ptr @flag_iso, align 4, !tbaa !83
  store i32 0, ptr @cxx_dialect, align 4, !tbaa !83
  br label %465

435:                                              ; preds = %3, %3
  br i1 %10, label %465, label %436

436:                                              ; preds = %435
  %437 = icmp eq i32 %5, 843
  %438 = zext i1 %437 to i32
  %439 = load ptr, ptr @parse_in, align 8, !tbaa !68
  %440 = select i1 %437, i32 8, i32 7
  tail call void @cpp_set_lang(ptr noundef %439, i32 noundef %440) #13
  store i32 %438, ptr @flag_no_gnu_keywords, align 4, !tbaa !83
  store i32 %438, ptr @flag_no_nonansi_builtin, align 4, !tbaa !83
  store i32 %438, ptr @flag_iso, align 4, !tbaa !83
  store i32 1, ptr @cxx_dialect, align 4, !tbaa !83
  br label %465

441:                                              ; preds = %3, %3, %3, %3
  br i1 %10, label %465, label %442

442:                                              ; preds = %441
  %443 = icmp eq i32 %5, 860
  %444 = zext i1 %443 to i32
  %445 = load ptr, ptr @parse_in, align 8, !tbaa !68
  %446 = select i1 %443, i32 3, i32 2
  tail call void @cpp_set_lang(ptr noundef %445, i32 noundef %446) #13
  store i32 1, ptr @flag_iso, align 4, !tbaa !83
  store i32 1, ptr @flag_no_asm, align 4, !tbaa !83
  store i32 1, ptr @flag_no_gnu_keywords, align 4, !tbaa !83
  store i32 1, ptr @flag_no_nonansi_builtin, align 4, !tbaa !83
  store i32 %444, ptr @flag_isoc94, align 4, !tbaa !83
  store i32 0, ptr @flag_isoc99, align 4, !tbaa !83
  br label %465

447:                                              ; preds = %3, %3
  br i1 %10, label %465, label %448

448:                                              ; preds = %447
  %449 = load ptr, ptr @parse_in, align 8, !tbaa !68
  tail call void @cpp_set_lang(ptr noundef %449, i32 noundef 0) #13
  store i32 0, ptr @flag_iso, align 4, !tbaa !83
  store i32 0, ptr @flag_no_asm, align 4, !tbaa !83
  store i32 0, ptr @flag_no_gnu_keywords, align 4, !tbaa !83
  store i32 0, ptr @flag_no_nonansi_builtin, align 4, !tbaa !83
  store i32 0, ptr @flag_isoc94, align 4, !tbaa !83
  store i32 0, ptr @flag_isoc99, align 4, !tbaa !83
  br label %465

450:                                              ; preds = %3, %3, %3, %3
  br i1 %10, label %465, label %451

451:                                              ; preds = %450
  %452 = load ptr, ptr @parse_in, align 8, !tbaa !68
  tail call void @cpp_set_lang(ptr noundef %452, i32 noundef 4) #13
  store i32 1, ptr @flag_no_asm, align 4, !tbaa !83
  store i32 1, ptr @flag_no_nonansi_builtin, align 4, !tbaa !83
  store i32 1, ptr @flag_iso, align 4, !tbaa !83
  store i32 1, ptr @flag_isoc99, align 4, !tbaa !83
  store i32 1, ptr @flag_isoc94, align 4, !tbaa !83
  br label %465

453:                                              ; preds = %3, %3
  br i1 %10, label %465, label %454

454:                                              ; preds = %453
  %455 = load ptr, ptr @parse_in, align 8, !tbaa !68
  tail call void @cpp_set_lang(ptr noundef %455, i32 noundef 1) #13
  store i32 0, ptr @flag_no_asm, align 4, !tbaa !83
  store i32 0, ptr @flag_no_nonansi_builtin, align 4, !tbaa !83
  store i32 0, ptr @flag_iso, align 4, !tbaa !83
  store i32 1, ptr @flag_isoc99, align 4, !tbaa !83
  store i32 1, ptr @flag_isoc94, align 4, !tbaa !83
  br label %465

456:                                              ; preds = %3
  %457 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %458 = getelementptr inbounds %struct.cpp_options, ptr %457, i64 0, i32 7
  store i8 1, ptr %458, align 1, !tbaa !151
  br label %465

459:                                              ; preds = %3
  %460 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %461 = getelementptr inbounds %struct.cpp_options, ptr %460, i64 0, i32 36
  store i8 1, ptr %461, align 2, !tbaa !152
  br label %465

462:                                              ; preds = %3
  store i32 1, ptr @flag_undef, align 4, !tbaa !83
  br label %465

463:                                              ; preds = %3
  store i1 true, ptr @verbose, align 1
  br label %465

464:                                              ; preds = %3
  store i32 %2, ptr @warn_psabi, align 4, !tbaa !83
  br label %465

465:                                              ; preds = %239, %453, %450, %447, %435, %429, %419, %3, %3, %22, %261, %11, %454, %451, %448, %441, %442, %436, %430, %422, %406, %407, %345, %348, %336, %338, %263, %237, %238, %229, %231, %186, %198, %207, %204, %192, %117, %125, %54, %59, %17, %464, %463, %462, %459, %456, %426, %424, %423, %402, %401, %398, %394, %393, %392, %390, %389, %387, %386, %385, %379, %377, %376, %375, %374, %373, %372, %371, %370, %369, %362, %361, %360, %359, %356, %353, %350, %344, %340, %339, %335, %331, %330, %328, %324, %323, %319, %316, %315, %314, %313, %312, %311, %310, %309, %307, %304, %301, %300, %296, %295, %294, %293, %292, %291, %290, %287, %284, %283, %282, %281, %280, %279, %275, %268, %264, %258, %255, %254, %251, %250, %228, %226, %224, %222, %218, %214, %210, %209, %208, %175, %171, %167, %166, %163, %162, %161, %157, %153, %149, %145, %130, %126, %87, %86, %85, %79, %76, %73, %72, %66, %61, %48, %47, %41, %37, %34, %28, %27
  %466 = phi i32 [ 1, %17 ], [ 1, %464 ], [ 1, %463 ], [ 1, %462 ], [ 1, %459 ], [ 1, %456 ], [ 1, %454 ], [ 1, %451 ], [ 1, %448 ], [ 1, %441 ], [ 1, %442 ], [ 1, %436 ], [ 1, %430 ], [ 1, %426 ], [ 1, %424 ], [ 1, %423 ], [ 1, %422 ], [ 1, %407 ], [ 1, %406 ], [ 1, %402 ], [ 1, %401 ], [ 1, %398 ], [ 1, %394 ], [ 1, %393 ], [ 1, %392 ], [ 1, %390 ], [ 1, %389 ], [ 1, %387 ], [ 1, %386 ], [ 1, %385 ], [ 1, %379 ], [ 1, %377 ], [ 1, %376 ], [ 1, %375 ], [ 1, %374 ], [ 1, %373 ], [ 1, %372 ], [ 1, %371 ], [ 1, %370 ], [ 1, %369 ], [ 1, %362 ], [ 1, %361 ], [ 1, %360 ], [ 1, %359 ], [ 1, %356 ], [ 1, %353 ], [ 1, %350 ], [ 1, %348 ], [ 1, %345 ], [ 1, %344 ], [ 1, %340 ], [ 1, %339 ], [ 1, %338 ], [ 1, %336 ], [ 1, %335 ], [ 1, %331 ], [ 1, %330 ], [ 1, %328 ], [ 1, %324 ], [ 1, %323 ], [ 1, %319 ], [ 1, %316 ], [ 1, %315 ], [ 1, %314 ], [ 1, %313 ], [ 1, %312 ], [ 1, %311 ], [ 1, %310 ], [ 1, %309 ], [ 1, %307 ], [ 1, %304 ], [ 1, %301 ], [ 1, %300 ], [ 1, %296 ], [ 1, %295 ], [ 1, %294 ], [ 1, %293 ], [ 1, %292 ], [ 1, %291 ], [ 1, %290 ], [ 1, %287 ], [ 1, %284 ], [ 1, %283 ], [ 1, %282 ], [ 1, %281 ], [ 1, %280 ], [ 1, %279 ], [ 1, %275 ], [ 1, %268 ], [ 1, %264 ], [ 1, %263 ], [ 1, %258 ], [ 1, %255 ], [ 1, %254 ], [ 1, %251 ], [ 1, %250 ], [ 1, %238 ], [ 1, %237 ], [ 1, %231 ], [ 1, %229 ], [ 1, %228 ], [ 1, %226 ], [ 1, %224 ], [ 1, %222 ], [ 1, %218 ], [ 1, %214 ], [ 1, %210 ], [ 1, %209 ], [ 1, %208 ], [ 1, %186 ], [ 1, %192 ], [ 1, %198 ], [ 1, %204 ], [ 1, %207 ], [ 1, %175 ], [ 1, %171 ], [ 1, %167 ], [ 1, %166 ], [ 1, %163 ], [ 1, %162 ], [ 1, %161 ], [ 1, %157 ], [ 1, %153 ], [ 1, %149 ], [ 1, %145 ], [ 1, %130 ], [ 1, %126 ], [ 1, %125 ], [ 1, %117 ], [ 1, %87 ], [ 1, %86 ], [ 1, %85 ], [ 1, %79 ], [ 1, %76 ], [ 1, %73 ], [ 1, %72 ], [ 1, %66 ], [ 1, %61 ], [ 1, %54 ], [ 1, %59 ], [ 1, %48 ], [ 1, %47 ], [ 1, %41 ], [ 1, %37 ], [ 1, %34 ], [ 1, %28 ], [ 1, %27 ], [ %26, %22 ], [ 0, %11 ], [ 0, %261 ], [ 1, %3 ], [ 1, %3 ], [ 1, %419 ], [ 1, %429 ], [ 1, %435 ], [ 1, %447 ], [ 1, %450 ], [ 1, %453 ], [ 1, %239 ]
  ret i32 %466
}

declare void @add_path(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

declare void @split_quote_chain() local_unnamed_addr #3

declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @set_Wformat(i32 noundef) local_unnamed_addr #3

declare void @set_Wstrict_aliasing(i32 noundef) local_unnamed_addr #3

declare void @enable_warning_as_error(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @disable_builtin_function(ptr noundef) local_unnamed_addr #3

declare void @set_struct_debug_option(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_prefixed_path(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #8 !prof !67 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %4 = load ptr, ptr @iprefix, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4)
  br label %10

8:                                                ; preds = %2
  %9 = load i64, ptr @cpp_GCC_INCLUDE_DIR_len, align 8, !tbaa !112
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ @cpp_GCC_INCLUDE_DIR, %8 ], [ %4, %6 ]
  %12 = phi i64 [ %9, %8 ], [ %7, %6 ]
  %13 = add i64 %12, %3
  %14 = add i64 %13, 1
  %15 = tail call ptr @xmalloc(i64 noundef %14) #13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %11, i64 %12, i1 false)
  %16 = getelementptr inbounds i8, ptr %15, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %0, i64 %3, i1 false)
  %17 = getelementptr inbounds i8, ptr %15, i64 %13
  store i8 0, ptr %17, align 1, !tbaa !79
  %18 = trunc i64 %1 to i32
  tail call void @add_path(ptr noundef %15, i32 noundef %18, i32 noundef 0, i8 noundef zeroext 0) #13
  ret void
}

declare void @cpp_set_lang(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @c_common_print_pch_checksum(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @c_common_post_options(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 !prof !87 {
  %2 = load ptr, ptr @in_fnames, align 8, !tbaa !68
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6, !prof !153

4:                                                ; preds = %1
  %5 = tail call ptr @xmalloc(i64 noundef 8) #13
  store ptr %5, ptr @in_fnames, align 8, !tbaa !68
  br label %10

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !68
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(2) @.str.7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12, !prof !153

10:                                               ; preds = %6, %4
  %11 = phi ptr [ %5, %4 ], [ %2, %6 ]
  store ptr @.str.21, ptr %11, align 8, !tbaa !68
  br label %12

12:                                               ; preds = %10, %6
  %13 = load ptr, ptr @out_fname, align 8, !tbaa !68
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15, !prof !153

15:                                               ; preds = %12
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(2) @.str.7)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19, !prof !153

18:                                               ; preds = %15, %12
  store ptr @.str.21, ptr @out_fname, align 8, !tbaa !68
  br label %19

19:                                               ; preds = %18, %15
  %20 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %21 = getelementptr inbounds %struct.cpp_options, ptr %20, i64 0, i32 43
  %22 = load i32, ptr %21, align 8, !tbaa !119
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %51, !prof !88

24:                                               ; preds = %19
  %25 = tail call ptr @getenv(ptr noundef nonnull @.str.43)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27, !prof !88

27:                                               ; preds = %24
  store i32 1, ptr %21, align 8, !tbaa !119
  br label %33

28:                                               ; preds = %24
  %29 = tail call ptr @getenv(ptr noundef nonnull @.str.44)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31, !prof !88

31:                                               ; preds = %28
  store i32 2, ptr %21, align 8, !tbaa !119
  %32 = getelementptr inbounds %struct.cpp_options, ptr %20, i64 0, i32 43, i32 3
  store i8 1, ptr %32, align 2, !tbaa !154
  br label %33

33:                                               ; preds = %31, %28, %27
  %34 = phi ptr [ %25, %27 ], [ %29, %31 ], [ null, %28 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %51, label %36, !prof !88

36:                                               ; preds = %33
  %37 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %34, i32 noundef 32)
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds i8, ptr %37, i64 1
  %41 = load ptr, ptr @deferred_opts, align 8, !tbaa !68
  %42 = load i64, ptr @deferred_count, align 8, !tbaa !112
  %43 = getelementptr inbounds %struct.deferred_opt, ptr %41, i64 %42
  store i32 26, ptr %43, align 8, !tbaa !113
  %44 = getelementptr inbounds %struct.deferred_opt, ptr %41, i64 %42, i32 1
  store ptr %40, ptr %44, align 8, !tbaa !115
  %45 = add i64 %42, 1
  store i64 %45, ptr @deferred_count, align 8, !tbaa !112
  store i8 0, ptr %37, align 1, !tbaa !79
  br label %46

46:                                               ; preds = %39, %36
  %47 = load ptr, ptr @deps_file, align 8, !tbaa !68
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store ptr %34, ptr @deps_file, align 8, !tbaa !68
  br label %50

50:                                               ; preds = %49, %46
  store i1 true, ptr @deps_append, align 1
  store i1 true, ptr @deps_seen, align 1
  br label %51

51:                                               ; preds = %50, %33, %19
  %52 = load i1, ptr @deps_seen, align 1
  br i1 %52, label %53, label %74, !prof !153

53:                                               ; preds = %51
  %54 = load ptr, ptr @parse_in, align 8, !tbaa !68
  %55 = tail call ptr @cpp_get_deps(ptr noundef %54) #13
  %56 = load i64, ptr @deferred_count, align 8, !tbaa !112
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %74, label %58

58:                                               ; preds = %53, %70
  %59 = phi i64 [ %71, %70 ], [ 0, %53 ]
  %60 = load ptr, ptr @deferred_opts, align 8, !tbaa !68
  %61 = getelementptr inbounds %struct.deferred_opt, ptr %60, i64 %59
  %62 = load i32, ptr %61, align 8, !tbaa !113
  %63 = add i32 %62, -25
  %64 = icmp ult i32 %63, 2
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.deferred_opt, ptr %60, i64 %59, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !115
  %68 = icmp eq i32 %62, 25
  %69 = zext i1 %68 to i32
  tail call void @deps_add_target(ptr noundef %55, ptr noundef %67, i32 noundef %69) #13
  br label %70

70:                                               ; preds = %65, %58
  %71 = add nuw i64 %59, 1
  %72 = load i64, ptr @deferred_count, align 8, !tbaa !112
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %58, label %74, !llvm.loop !155

74:                                               ; preds = %70, %53, %51
  %75 = load i1, ptr @deps_seen, align 1
  br i1 %75, label %76, label %82, !prof !153

76:                                               ; preds = %74
  %77 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %78 = getelementptr inbounds %struct.cpp_options, ptr %77, i64 0, i32 43
  %79 = load i32, ptr %78, align 8, !tbaa !119
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.45) #13
  br label %82

82:                                               ; preds = %81, %76, %74
  %83 = load i8, ptr @flag_dump_macros, align 1
  %84 = icmp eq i8 %83, 77
  br i1 %84, label %85, label %86, !prof !153

85:                                               ; preds = %82
  store i8 1, ptr @flag_no_output, align 1, !tbaa !79
  br label %86

86:                                               ; preds = %85, %82
  %87 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %88 = getelementptr inbounds %struct.cpp_options, ptr %87, i64 0, i32 52
  %89 = load i8, ptr %88, align 4, !tbaa !139
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %97, label %91, !prof !88

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.cpp_options, ptr %87, i64 0, i32 32
  %93 = load i8, ptr %92, align 2, !tbaa !143
  %94 = or i8 %93, %83
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  store i8 68, ptr @flag_dump_macros, align 1, !tbaa !79
  br label %97

97:                                               ; preds = %96, %91, %86
  %98 = load i8, ptr @flag_no_output, align 1, !tbaa !79
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %105, label %100, !prof !88

100:                                              ; preds = %97
  %101 = load i8, ptr @flag_dump_macros, align 1, !tbaa !79
  %102 = icmp eq i8 %101, 77
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  store i8 0, ptr @flag_dump_macros, align 1, !tbaa !79
  br label %104

104:                                              ; preds = %103, %100
  store i8 0, ptr @flag_dump_includes, align 1, !tbaa !79
  store i8 1, ptr @flag_no_line_commands, align 1, !tbaa !79
  br label %110

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.cpp_options, ptr %87, i64 0, i32 43, i32 1
  %107 = load i8, ptr %106, align 4, !tbaa !121
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %110, label %109, !prof !88

109:                                              ; preds = %105
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.46) #13
  br label %110

110:                                              ; preds = %109, %105, %104
  %111 = load i32, ptr @flag_signed_char, align 4, !tbaa !83
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i8
  %114 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %115 = getelementptr inbounds %struct.cpp_options, ptr %114, i64 0, i32 48
  store i8 %113, ptr %115, align 8, !tbaa !156
  %116 = getelementptr inbounds %struct.cpp_options, ptr %114, i64 0, i32 51
  store i8 0, ptr %116, align 1, !tbaa !157
  %117 = load i32, ptr @warn_long_long, align 4, !tbaa !83
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %136, !prof !88

119:                                              ; preds = %110
  %120 = load i32, ptr @pedantic, align 4, !tbaa !83
  %121 = icmp ne i32 %120, 0
  %122 = load i32, ptr @warn_traditional, align 4
  %123 = icmp ne i32 %122, 0
  %124 = select i1 %121, i1 true, i1 %123, !prof !153
  br i1 %124, label %125, label %134, !prof !153

125:                                              ; preds = %119
  %126 = load i32, ptr @c_language, align 4, !tbaa !83
  %127 = and i32 %126, 2
  %128 = icmp eq i32 %127, 0
  %129 = load i32, ptr @flag_isoc99, align 4
  %130 = load i32, ptr @cxx_dialect, align 4
  %131 = select i1 %128, i32 %129, i32 %130
  %132 = icmp eq i32 %131, 0
  %133 = zext i1 %132 to i32
  br label %134

134:                                              ; preds = %125, %119
  %135 = phi i32 [ %133, %125 ], [ 0, %119 ]
  store i32 %135, ptr @warn_long_long, align 4, !tbaa !83
  br label %136

136:                                              ; preds = %134, %110
  %137 = load i32, ptr @warn_long_long, align 4, !tbaa !83
  %138 = trunc i32 %137 to i8
  %139 = getelementptr inbounds %struct.cpp_options, ptr %114, i64 0, i32 18
  store i8 %138, ptr %139, align 8, !tbaa !158
  %140 = load i8, ptr @warn_variadic_macros, align 1, !tbaa !79
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %149, label %142, !prof !153

142:                                              ; preds = %136
  %143 = load i32, ptr @pedantic, align 4, !tbaa !83
  %144 = icmp ne i32 %143, 0
  %145 = load i32, ptr @warn_traditional, align 4
  %146 = icmp ne i32 %145, 0
  %147 = select i1 %144, i1 true, i1 %146, !prof !153
  %148 = zext i1 %147 to i8
  br label %149

149:                                              ; preds = %142, %136
  %150 = phi i8 [ 0, %136 ], [ %148, %142 ]
  %151 = getelementptr inbounds %struct.cpp_options, ptr %114, i64 0, i32 21
  store i8 %150, ptr %151, align 1, !tbaa !159
  %152 = load i32, ptr @flag_working_directory, align 4, !tbaa !83
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %154, label %158, !prof !88

154:                                              ; preds = %149
  %155 = load i32, ptr @debug_info_level, align 4, !tbaa !83
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i32
  store i32 %157, ptr @flag_working_directory, align 4, !tbaa !83
  br label %158

158:                                              ; preds = %154, %149
  %159 = getelementptr inbounds %struct.cpp_options, ptr %114, i64 0, i32 52
  %160 = load i8, ptr %159, align 4, !tbaa !139
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %172, label %162, !prof !88

162:                                              ; preds = %158
  %163 = load i8, ptr @warn_unused_macros, align 1, !tbaa !79
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %162
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.47) #13
  br label %166

166:                                              ; preds = %165, %162
  %167 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %168 = getelementptr inbounds %struct.cpp_options, ptr %167, i64 0, i32 36
  %169 = load i8, ptr %168, align 2, !tbaa !152
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %166
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.48) #13
  br label %172

172:                                              ; preds = %158, %166, %171
  %173 = load ptr, ptr @parse_in, align 8, !tbaa !68
  %174 = load ptr, ptr @sysroot, align 8, !tbaa !68
  %175 = load ptr, ptr @iprefix, align 8, !tbaa !68
  %176 = load ptr, ptr @imultilib, align 8, !tbaa !68
  %177 = load i1, ptr @std_inc, align 1
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  %180 = load i1, ptr @std_cxx_inc, align 1
  %181 = xor i1 %180, true
  %182 = load i32, ptr @c_language, align 4
  %183 = and i32 %182, 2
  %184 = icmp ne i32 %183, 0
  %185 = select i1 %181, i1 %184, i1 false, !prof !88
  %186 = zext i1 %185 to i32
  %187 = load i1, ptr @verbose, align 1
  %188 = zext i1 %187 to i32
  tail call void @register_include_chains(ptr noundef %173, ptr noundef %174, ptr noundef %175, ptr noundef %176, i32 noundef %179, i32 noundef %186, i32 noundef %188) #13
  %189 = load i32, ptr @c_language, align 4, !tbaa !83
  %190 = and i32 %189, 2
  %191 = icmp eq i32 %190, 0
  %192 = load i32, ptr @flag_excess_precision_cmdline, align 4, !tbaa !83
  br i1 %191, label %196, label %193, !prof !88

193:                                              ; preds = %172
  %194 = icmp eq i32 %192, 2
  br i1 %194, label %195, label %202

195:                                              ; preds = %193
  tail call void (ptr, ...) @sorry(ptr noundef nonnull @.str.22) #13
  br label %202

196:                                              ; preds = %172
  %197 = icmp eq i32 %192, 0
  br i1 %197, label %198, label %204, !prof !88

198:                                              ; preds = %196
  %199 = load i32, ptr @flag_iso, align 4, !tbaa !83
  %200 = icmp eq i32 %199, 0
  %201 = select i1 %200, i32 1, i32 2, !prof !88
  br label %202

202:                                              ; preds = %193, %195, %198
  %203 = phi i32 [ %201, %198 ], [ 1, %195 ], [ 1, %193 ]
  store i32 %203, ptr @flag_excess_precision_cmdline, align 4, !tbaa !83
  br label %204

204:                                              ; preds = %202, %196
  %205 = load i32, ptr @flag_gnu89_inline, align 4, !tbaa !83
  %206 = icmp eq i32 %205, -1
  br i1 %206, label %207, label %211, !prof !88

207:                                              ; preds = %204
  %208 = load i32, ptr @flag_isoc99, align 4, !tbaa !83
  %209 = icmp eq i32 %208, 0
  %210 = zext i1 %209 to i32
  store i32 %210, ptr @flag_gnu89_inline, align 4, !tbaa !83
  br label %217

211:                                              ; preds = %204
  %212 = icmp ne i32 %205, 0
  %213 = load i32, ptr @flag_isoc99, align 4
  %214 = icmp ne i32 %213, 0
  %215 = select i1 %212, i1 true, i1 %214
  br i1 %215, label %217, label %216

216:                                              ; preds = %211
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.23) #13
  br label %217

217:                                              ; preds = %211, %216, %207
  %218 = load i32, ptr @flag_objc_sjlj_exceptions, align 4, !tbaa !83
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %222, !prof !88

220:                                              ; preds = %217
  %221 = load i32, ptr @flag_next_runtime, align 4, !tbaa !83
  store i32 %221, ptr @flag_objc_sjlj_exceptions, align 4, !tbaa !83
  br label %222

222:                                              ; preds = %220, %217
  %223 = load i32, ptr @flag_objc_exceptions, align 4, !tbaa !83
  %224 = icmp eq i32 %223, 0
  %225 = load i32, ptr @flag_objc_sjlj_exceptions, align 4
  %226 = icmp ne i32 %225, 0
  %227 = select i1 %224, i1 true, i1 %226, !prof !88
  br i1 %227, label %229, label %228, !prof !88

228:                                              ; preds = %222
  store i32 1, ptr @flag_exceptions, align 4, !tbaa !83
  br label %229

229:                                              ; preds = %228, %222
  %230 = load i32, ptr @warn_type_limits, align 4, !tbaa !83
  %231 = icmp eq i32 %230, -1
  br i1 %231, label %232, label %234, !prof !88

232:                                              ; preds = %229
  %233 = load i32, ptr @extra_warnings, align 4, !tbaa !83
  store i32 %233, ptr @warn_type_limits, align 4, !tbaa !83
  br label %234

234:                                              ; preds = %232, %229
  %235 = load i32, ptr @warn_clobbered, align 4, !tbaa !83
  %236 = icmp eq i32 %235, -1
  br i1 %236, label %237, label %239, !prof !88

237:                                              ; preds = %234
  %238 = load i32, ptr @extra_warnings, align 4, !tbaa !83
  store i32 %238, ptr @warn_clobbered, align 4, !tbaa !83
  br label %239

239:                                              ; preds = %237, %234
  %240 = load i32, ptr @warn_empty_body, align 4, !tbaa !83
  %241 = icmp eq i32 %240, -1
  br i1 %241, label %242, label %244, !prof !88

242:                                              ; preds = %239
  %243 = load i32, ptr @extra_warnings, align 4, !tbaa !83
  store i32 %243, ptr @warn_empty_body, align 4, !tbaa !83
  br label %244

244:                                              ; preds = %242, %239
  %245 = load i32, ptr @warn_sign_compare, align 4, !tbaa !83
  %246 = icmp eq i32 %245, -1
  br i1 %246, label %247, label %249, !prof !88

247:                                              ; preds = %244
  %248 = load i32, ptr @extra_warnings, align 4, !tbaa !83
  store i32 %248, ptr @warn_sign_compare, align 4, !tbaa !83
  br label %249

249:                                              ; preds = %247, %244
  %250 = load i32, ptr @warn_missing_field_initializers, align 4, !tbaa !83
  %251 = icmp eq i32 %250, -1
  br i1 %251, label %252, label %254, !prof !88

252:                                              ; preds = %249
  %253 = load i32, ptr @extra_warnings, align 4, !tbaa !83
  store i32 %253, ptr @warn_missing_field_initializers, align 4, !tbaa !83
  br label %254

254:                                              ; preds = %252, %249
  %255 = load i32, ptr @warn_missing_parameter_type, align 4, !tbaa !83
  %256 = icmp eq i32 %255, -1
  br i1 %256, label %257, label %259, !prof !88

257:                                              ; preds = %254
  %258 = load i32, ptr @extra_warnings, align 4, !tbaa !83
  store i32 %258, ptr @warn_missing_parameter_type, align 4, !tbaa !83
  br label %259

259:                                              ; preds = %257, %254
  %260 = load i32, ptr @warn_old_style_declaration, align 4, !tbaa !83
  %261 = icmp eq i32 %260, -1
  br i1 %261, label %262, label %264, !prof !88

262:                                              ; preds = %259
  %263 = load i32, ptr @extra_warnings, align 4, !tbaa !83
  store i32 %263, ptr @warn_old_style_declaration, align 4, !tbaa !83
  br label %264

264:                                              ; preds = %262, %259
  %265 = load i32, ptr @warn_override_init, align 4, !tbaa !83
  %266 = icmp eq i32 %265, -1
  br i1 %266, label %267, label %269, !prof !88

267:                                              ; preds = %264
  %268 = load i32, ptr @extra_warnings, align 4, !tbaa !83
  store i32 %268, ptr @warn_override_init, align 4, !tbaa !83
  br label %269

269:                                              ; preds = %267, %264
  %270 = load i32, ptr @warn_ignored_qualifiers, align 4, !tbaa !83
  %271 = icmp eq i32 %270, -1
  br i1 %271, label %272, label %274, !prof !88

272:                                              ; preds = %269
  %273 = load i32, ptr @extra_warnings, align 4, !tbaa !83
  store i32 %273, ptr @warn_ignored_qualifiers, align 4, !tbaa !83
  br label %274

274:                                              ; preds = %272, %269
  %275 = load i32, ptr @warn_pointer_sign, align 4, !tbaa !83
  %276 = icmp eq i32 %275, -1
  br i1 %276, label %277, label %278, !prof !88

277:                                              ; preds = %274
  store i32 0, ptr @warn_pointer_sign, align 4, !tbaa !83
  br label %278

278:                                              ; preds = %277, %274
  %279 = load i32, ptr @warn_strict_aliasing, align 4, !tbaa !83
  %280 = icmp eq i32 %279, -1
  br i1 %280, label %281, label %282, !prof !88

281:                                              ; preds = %278
  store i32 0, ptr @warn_strict_aliasing, align 4, !tbaa !83
  br label %282

282:                                              ; preds = %281, %278
  %283 = load i32, ptr @warn_strict_overflow, align 4, !tbaa !83
  %284 = icmp eq i32 %283, -1
  br i1 %284, label %285, label %286, !prof !88

285:                                              ; preds = %282
  store i32 0, ptr @warn_strict_overflow, align 4, !tbaa !83
  br label %286

286:                                              ; preds = %285, %282
  %287 = load i32, ptr @warn_jump_misses_init, align 4, !tbaa !83
  %288 = icmp eq i32 %287, -1
  br i1 %288, label %289, label %290, !prof !88

289:                                              ; preds = %286
  store i32 0, ptr @warn_jump_misses_init, align 4, !tbaa !83
  br label %290

290:                                              ; preds = %289, %286
  %291 = load i32, ptr @warn_overlength_strings, align 4, !tbaa !83
  %292 = icmp eq i32 %291, -1
  br i1 %292, label %297, label %293, !prof !88

293:                                              ; preds = %290
  %294 = load i32, ptr @c_language, align 4, !tbaa !83
  %295 = and i32 %294, 2
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %298, label %297

297:                                              ; preds = %293, %290
  store i32 0, ptr @warn_overlength_strings, align 4, !tbaa !83
  br label %298

298:                                              ; preds = %297, %293
  %299 = load i32, ptr @warn_main, align 4, !tbaa !83
  switch i32 %299, label %313 [
    i32 -1, label %300
    i32 2, label %307
  ], !prof !160

300:                                              ; preds = %298
  %301 = load i32, ptr @c_language, align 4, !tbaa !83
  %302 = and i32 %301, 2
  %303 = icmp ne i32 %302, 0
  %304 = load i32, ptr @flag_hosted, align 4
  %305 = icmp ne i32 %304, 0
  %306 = select i1 %303, i1 %305, i1 false, !prof !153
  br label %310

307:                                              ; preds = %298
  %308 = load i32, ptr @flag_hosted, align 4, !tbaa !83
  %309 = icmp ne i32 %308, 0
  br label %310

310:                                              ; preds = %300, %307
  %311 = phi i1 [ %309, %307 ], [ %306, %300 ]
  %312 = zext i1 %311 to i32
  store i32 %312, ptr @warn_main, align 4, !tbaa !83
  br label %313

313:                                              ; preds = %310, %298
  %314 = load i32, ptr @warn_sign_conversion, align 4, !tbaa !83
  %315 = icmp eq i32 %314, -1
  br i1 %315, label %316, label %322, !prof !88

316:                                              ; preds = %313
  %317 = load i32, ptr @c_language, align 4, !tbaa !83
  %318 = and i32 %317, 2
  %319 = icmp eq i32 %318, 0
  %320 = load i32, ptr @warn_conversion, align 4
  %321 = select i1 %319, i32 %320, i32 0, !prof !88
  store i32 %321, ptr @warn_sign_conversion, align 4, !tbaa !83
  br label %322

322:                                              ; preds = %316, %313
  %323 = load i32, ptr @warn_enum_compare, align 4, !tbaa !83
  %324 = icmp eq i32 %323, -1
  br i1 %324, label %325, label %329, !prof !88

325:                                              ; preds = %322
  %326 = load i32, ptr @c_language, align 4, !tbaa !83
  %327 = lshr i32 %326, 1
  %328 = and i32 %327, 1
  store i32 %328, ptr @warn_enum_compare, align 4, !tbaa !83
  br label %329

329:                                              ; preds = %325, %322
  %330 = load i32, ptr @warn_packed_bitfield_compat, align 4, !tbaa !83
  %331 = icmp eq i32 %330, -1
  br i1 %331, label %332, label %333, !prof !88

332:                                              ; preds = %329
  store i32 1, ptr @warn_packed_bitfield_compat, align 4, !tbaa !83
  br label %333

333:                                              ; preds = %332, %329
  %334 = load i32, ptr @warn_format, align 4, !tbaa !83
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %343, !prof !88

336:                                              ; preds = %333
  %337 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 96, ptr noundef nonnull @.str.24) #13
  %338 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 93, ptr noundef nonnull @.str.25) #13
  %339 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 97, ptr noundef nonnull @.str.26) #13
  %340 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 94, ptr noundef nonnull @.str.27) #13
  %341 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 92, ptr noundef nonnull @.str.28) #13
  %342 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 95, ptr noundef nonnull @.str.29) #13
  br label %343

343:                                              ; preds = %336, %333
  %344 = load i32, ptr @warn_implicit_function_declaration, align 4, !tbaa !83
  %345 = icmp eq i32 %344, -1
  br i1 %345, label %346, label %348, !prof !88

346:                                              ; preds = %343
  %347 = load i32, ptr @flag_isoc99, align 4, !tbaa !83
  store i32 %347, ptr @warn_implicit_function_declaration, align 4, !tbaa !83
  br label %348

348:                                              ; preds = %346, %343
  %349 = load i32, ptr @cxx_dialect, align 4, !tbaa !83
  %350 = icmp eq i32 %349, 1
  br i1 %350, label %351, label %352, !prof !153

351:                                              ; preds = %348
  store i32 0, ptr @warn_cxx0x_compat, align 4, !tbaa !83
  br label %352

352:                                              ; preds = %351, %348
  %353 = load i32, ptr @flag_preprocess_only, align 4, !tbaa !83
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %375, label %355, !prof !88

355:                                              ; preds = %352
  %356 = load ptr, ptr @out_fname, align 8, !tbaa !68
  %357 = load i8, ptr %356, align 1, !tbaa !79
  %358 = icmp eq i8 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %355
  %360 = load ptr, ptr @stdout, align 8, !tbaa !68
  br label %363

361:                                              ; preds = %355
  %362 = tail call ptr @fopen_unlocked(ptr noundef nonnull %356, ptr noundef nonnull @.str.30) #13
  br label %363

363:                                              ; preds = %361, %359
  %364 = phi ptr [ %362, %361 ], [ %360, %359 ]
  store ptr %364, ptr @out_stream, align 8, !tbaa !68
  %365 = icmp eq ptr %364, null
  br i1 %365, label %366, label %368

366:                                              ; preds = %363
  %367 = load ptr, ptr @out_fname, align 8, !tbaa !68
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.31, ptr noundef %367) #13
  br label %407

368:                                              ; preds = %363
  %369 = load i32, ptr @num_in_fnames, align 4, !tbaa !83
  %370 = icmp ugt i32 %369, 1
  br i1 %370, label %371, label %373

371:                                              ; preds = %368
  %372 = load ptr, ptr @progname, align 8, !tbaa !68
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.32, ptr noundef %372) #13
  br label %373

373:                                              ; preds = %371, %368
  %374 = load ptr, ptr @out_stream, align 8, !tbaa !68
  tail call void @init_pp_output(ptr noundef %374) #13
  br label %376

375:                                              ; preds = %352
  tail call void @init_c_lex() #13
  store i32 0, ptr @input_location, align 4, !tbaa !83
  br label %376

376:                                              ; preds = %375, %373
  %377 = load ptr, ptr @parse_in, align 8, !tbaa !68
  %378 = tail call ptr @cpp_get_callbacks(ptr noundef %377) #13
  %379 = getelementptr inbounds %struct.cpp_callbacks, ptr %378, i64 0, i32 1
  store ptr @cb_file_change, ptr %379, align 8, !tbaa !161
  %380 = getelementptr inbounds %struct.cpp_callbacks, ptr %378, i64 0, i32 2
  store ptr @cb_dir_change, ptr %380, align 8, !tbaa !162
  %381 = load ptr, ptr @parse_in, align 8, !tbaa !68
  tail call void @cpp_post_options(ptr noundef %381) #13
  store i32 0, ptr @input_location, align 4, !tbaa !83
  %382 = load ptr, ptr @parse_in, align 8, !tbaa !68
  %383 = load ptr, ptr @in_fnames, align 8, !tbaa !68
  %384 = load ptr, ptr %383, align 8, !tbaa !68
  %385 = tail call ptr @cpp_read_main_file(ptr noundef %382, ptr noundef %384) #13
  store ptr %385, ptr @this_input_filename, align 8, !tbaa !68
  store ptr %385, ptr %0, align 8, !tbaa !68
  %386 = icmp eq ptr %385, null
  br i1 %386, label %387, label %392, !prof !153

387:                                              ; preds = %376
  %388 = load ptr, ptr @global_dc, align 8, !tbaa !68
  %389 = getelementptr inbounds %struct.diagnostic_context, ptr %388, i64 0, i32 1, i64 4
  %390 = load i32, ptr %389, align 8, !tbaa !83
  %391 = add nsw i32 %390, 1
  store i32 %391, ptr %389, align 8, !tbaa !83
  br label %407

392:                                              ; preds = %376
  %393 = load i32, ptr @flag_working_directory, align 4, !tbaa !83
  %394 = icmp eq i32 %393, 0
  %395 = load i32, ptr @flag_preprocess_only, align 4
  %396 = icmp eq i32 %395, 0
  %397 = select i1 %394, i1 true, i1 %396, !prof !88
  %398 = load i8, ptr @flag_no_line_commands, align 1
  %399 = icmp ne i8 %398, 0
  %400 = select i1 %397, i1 true, i1 %399, !prof !88
  br i1 %400, label %404, label %401, !prof !88

401:                                              ; preds = %392
  %402 = load ptr, ptr @parse_in, align 8, !tbaa !68
  %403 = tail call ptr @get_src_pwd() #13
  tail call void @pp_dir_change(ptr noundef %402, ptr noundef %403) #13
  br label %404

404:                                              ; preds = %401, %392
  %405 = load i32, ptr @flag_preprocess_only, align 4, !tbaa !83
  %406 = trunc i32 %405 to i8
  br label %407

407:                                              ; preds = %404, %387, %366
  %408 = phi i8 [ 0, %366 ], [ 0, %387 ], [ %406, %404 ]
  ret i8 %408
}

declare void @register_include_chains(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @sorry(ptr noundef, ...) local_unnamed_addr #3

declare ptr @fopen_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fatal_error(ptr noundef, ...) local_unnamed_addr #3

declare void @init_pp_output(ptr noundef) local_unnamed_addr #3

declare void @init_c_lex() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @cb_file_change(ptr nocapture readnone %0, ptr noundef %1) #8 !prof !163 !PGOFuncName !164 {
  %3 = load i32, ptr @flag_preprocess_only, align 4, !tbaa !83
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !165

5:                                                ; preds = %2
  tail call void @pp_file_change(ptr noundef %1) #13
  br label %7

6:                                                ; preds = %2
  tail call void @fe_file_change(ptr noundef %1) #13
  br label %7

7:                                                ; preds = %6, %5
  %8 = icmp eq ptr %1, null
  br i1 %8, label %17, label %9, !prof !166

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.line_map, ptr %1, i64 0, i32 4
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %13, label %18, !prof !167

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.line_map, ptr %1, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !168
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %7
  tail call fastcc void @push_command_line_include()
  br label %18

18:                                               ; preds = %17, %13, %9
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @cb_dir_change(ptr nocapture readnone %0, ptr noundef %1) #8 !prof !67 {
  %3 = tail call zeroext i8 @set_src_pwd(ptr noundef %1) #13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.51) #13
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

declare void @cpp_post_options(ptr noundef) local_unnamed_addr #3

declare ptr @cpp_read_main_file(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pp_dir_change(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_src_pwd() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @c_common_init() local_unnamed_addr #8 !prof !87 {
  %1 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 7), align 8, !tbaa !68
  %2 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1023
  %5 = zext nneg i32 %4 to i64
  %6 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.cpp_options, ptr %6, i64 0, i32 44
  store i64 %5, ptr %7, align 8, !tbaa !170
  %8 = load ptr, ptr @integer_types, align 16, !tbaa !68
  %9 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1023
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds %struct.cpp_options, ptr %6, i64 0, i32 45
  store i64 %12, ptr %13, align 8, !tbaa !171
  %14 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !68
  %15 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1023
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds %struct.cpp_options, ptr %6, i64 0, i32 46
  store i64 %18, ptr %19, align 8, !tbaa !172
  %20 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 2), align 16, !tbaa !68
  %21 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1023
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds %struct.cpp_options, ptr %6, i64 0, i32 47
  store i64 %24, ptr %25, align 8, !tbaa !173
  %26 = load i64, ptr %20, align 8
  %27 = lshr i64 %26, 21
  %28 = trunc i64 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.cpp_options, ptr %6, i64 0, i32 49
  store i8 %29, ptr %30, align 1, !tbaa !174
  %31 = getelementptr inbounds %struct.cpp_options, ptr %6, i64 0, i32 50
  store i8 0, ptr %31, align 2, !tbaa !175
  %32 = load ptr, ptr @parse_in, align 8, !tbaa !68
  tail call void @cpp_init_iconv(ptr noundef %32) #13
  %33 = load i32, ptr @version_flag, align 4, !tbaa !83
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35, !prof !88

35:                                               ; preds = %0
  %36 = load ptr, ptr @stderr, align 8, !tbaa !68
  tail call void @c_common_print_pch_checksum(ptr noundef %36) #13
  br label %37

37:                                               ; preds = %35, %0
  tail call void @init_pragma() #13
  %38 = load i32, ptr @flag_preprocess_only, align 4, !tbaa !83
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40, !prof !88

40:                                               ; preds = %37
  tail call fastcc void @finish_options()
  %41 = load ptr, ptr @parse_in, align 8, !tbaa !68
  tail call void @preprocess_file(ptr noundef %41) #13
  br label %42

42:                                               ; preds = %37, %40
  %43 = phi i8 [ 0, %40 ], [ 1, %37 ]
  ret i8 %43
}

declare void @cpp_init_iconv(ptr noundef) local_unnamed_addr #3

declare void @init_pragma() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @finish_options() unnamed_addr #8 !prof !87 !PGOFuncName !176 {
  %1 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %2 = getelementptr inbounds %struct.cpp_options, ptr %1, i64 0, i32 32
  %3 = load i8, ptr %2, align 2, !tbaa !143
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %76, !prof !88

5:                                                ; preds = %0
  %6 = load ptr, ptr @line_table, align 8, !tbaa !68
  %7 = tail call ptr @linemap_add(ptr noundef %6, i32 noundef 2, i32 noundef 0, ptr noundef nonnull @.str.49, i32 noundef 0) #13
  tail call void @cb_file_change(ptr poison, ptr noundef %7)
  %8 = load ptr, ptr @parse_in, align 8, !tbaa !68
  %9 = load i32, ptr @flag_hosted, align 4, !tbaa !83
  tail call void @cpp_init_builtins(ptr noundef %8, i32 noundef %9) #13
  %10 = load ptr, ptr @parse_in, align 8, !tbaa !68
  tail call void @c_cpp_builtins(ptr noundef %10) #13
  %11 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %12 = getelementptr inbounds %struct.cpp_options, ptr %11, i64 0, i32 31
  %13 = load i8, ptr %12, align 1, !tbaa !149
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %20, label %15, !prof !88

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.cpp_options, ptr %11, i64 0, i32 29
  %17 = load i8, ptr %16, align 1, !tbaa !177
  %18 = icmp eq i8 %17, 0
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %15, %5
  %21 = phi i8 [ 0, %5 ], [ %19, %15 ]
  %22 = getelementptr inbounds %struct.cpp_options, ptr %11, i64 0, i32 26
  store i8 %21, ptr %22, align 8, !tbaa !101
  %23 = load ptr, ptr @line_table, align 8, !tbaa !68
  %24 = tail call ptr @linemap_add(ptr noundef %23, i32 noundef 2, i32 noundef 0, ptr noundef nonnull @.str.50, i32 noundef 0) #13
  tail call void @cb_file_change(ptr poison, ptr noundef %24)
  %25 = load i64, ptr @deferred_count, align 8, !tbaa !112
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30, !prof !88

27:                                               ; preds = %52, %20
  %28 = load i64, ptr @deferred_count, align 8, !tbaa !112
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %82, label %56, !prof !88

30:                                               ; preds = %20, %52
  %31 = phi i64 [ %53, %52 ], [ 0, %20 ]
  %32 = load ptr, ptr @deferred_opts, align 8, !tbaa !68
  %33 = getelementptr inbounds %struct.deferred_opt, ptr %32, i64 %31
  %34 = load i32, ptr %33, align 8, !tbaa !113
  switch i32 %34, label %52 [
    i32 9, label %35
    i32 30, label %39
    i32 6, label %43
  ]

35:                                               ; preds = %30
  %36 = load ptr, ptr @parse_in, align 8, !tbaa !68
  %37 = getelementptr inbounds %struct.deferred_opt, ptr %32, i64 %31, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !115
  tail call void @cpp_define(ptr noundef %36, ptr noundef %38) #13
  br label %52

39:                                               ; preds = %30
  %40 = load ptr, ptr @parse_in, align 8, !tbaa !68
  %41 = getelementptr inbounds %struct.deferred_opt, ptr %32, i64 %31, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !115
  tail call void @cpp_undef(ptr noundef %40, ptr noundef %42) #13
  br label %52

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.deferred_opt, ptr %32, i64 %31, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !115
  %46 = load i8, ptr %45, align 1, !tbaa !79
  %47 = icmp eq i8 %46, 45
  %48 = load ptr, ptr @parse_in, align 8, !tbaa !68
  br i1 %47, label %49, label %51

49:                                               ; preds = %43
  %50 = getelementptr inbounds i8, ptr %45, i64 1
  tail call void @cpp_unassert(ptr noundef %48, ptr noundef nonnull %50) #13
  br label %52

51:                                               ; preds = %43
  tail call void @cpp_assert(ptr noundef %48, ptr noundef nonnull %45) #13
  br label %52

52:                                               ; preds = %30, %39, %49, %51, %35
  %53 = add nuw i64 %31, 1
  %54 = load i64, ptr @deferred_count, align 8, !tbaa !112
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %30, label %27, !prof !153, !llvm.loop !178

56:                                               ; preds = %27, %72
  %57 = phi i64 [ %73, %72 ], [ 0, %27 ]
  %58 = load ptr, ptr @deferred_opts, align 8, !tbaa !68
  %59 = getelementptr inbounds %struct.deferred_opt, ptr %58, i64 %57
  %60 = load i32, ptr %59, align 8, !tbaa !113
  %61 = icmp eq i32 %60, 738
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load ptr, ptr @parse_in, align 8, !tbaa !68
  %64 = getelementptr inbounds %struct.deferred_opt, ptr %58, i64 %57, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !115
  %66 = tail call zeroext i8 @cpp_push_include(ptr noundef %63, ptr noundef %65) #13
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = load i64, ptr @deferred_count, align 8, !tbaa !112
  %70 = add i64 %69, 1
  store i64 %70, ptr @include_cursor, align 8, !tbaa !112
  %71 = load ptr, ptr @parse_in, align 8, !tbaa !68
  tail call void @cpp_scan_nooutput(ptr noundef %71) #13
  br label %72

72:                                               ; preds = %68, %62, %56
  %73 = add nuw i64 %57, 1
  %74 = load i64, ptr @deferred_count, align 8, !tbaa !112
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %56, label %82, !prof !153, !llvm.loop !179

76:                                               ; preds = %0
  %77 = getelementptr inbounds %struct.cpp_options, ptr %1, i64 0, i32 52
  %78 = load i8, ptr %77, align 4, !tbaa !139
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr @parse_in, align 8, !tbaa !68
  tail call void @cpp_init_special_builtins(ptr noundef %81) #13
  br label %82

82:                                               ; preds = %72, %27, %76, %80
  store i64 0, ptr @include_cursor, align 8, !tbaa !112
  tail call fastcc void @push_command_line_include()
  ret void
}

declare void @preprocess_file(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @c_common_parse_file(i32 noundef %0) local_unnamed_addr #8 !prof !87 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %14, label %3, !prof !88

3:                                                ; preds = %1
  %4 = load i32, ptr @c_language, align 4, !tbaa !83
  switch i32 %4, label %13 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %9
    i32 3, label %11
  ]

5:                                                ; preds = %3
  %6 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.33) #13
  br label %14

7:                                                ; preds = %3
  %8 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.34) #13
  br label %14

9:                                                ; preds = %3
  %10 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.35) #13
  br label %14

11:                                               ; preds = %3
  %12 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.36) #13
  br label %14

13:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.37, i32 noundef 1271, ptr noundef nonnull @.str.38) #13
  br label %14

14:                                               ; preds = %5, %7, %9, %11, %13, %1
  br label %15

15:                                               ; preds = %14, %38
  %16 = phi i64 [ %34, %38 ], [ 0, %14 ]
  %17 = load ptr, ptr @debug_hooks, align 8, !tbaa !68
  %18 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %17, i64 0, i32 31
  %19 = load i32, ptr %18, align 8, !tbaa !180
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !88

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %17, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !182
  %24 = load ptr, ptr @this_input_filename, align 8, !tbaa !68
  tail call void %23(i32 noundef 0, ptr noundef %24) #13
  br label %25

25:                                               ; preds = %21, %15
  tail call fastcc void @finish_options()
  tail call void @pch_init() #13
  tail call void @push_file_scope() #13
  tail call void @c_parse_file() #13
  tail call void @finish_file() #13
  tail call void @pop_file_scope() #13
  %26 = load ptr, ptr @debug_hooks, align 8, !tbaa !68
  %27 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %26, i64 0, i32 31
  %28 = load i32, ptr %27, align 8, !tbaa !180
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30, !prof !88

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %26, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !183
  tail call void %32(i32 noundef 0) #13
  br label %33

33:                                               ; preds = %30, %25
  %34 = add nuw nsw i64 %16, 1
  %35 = load i32, ptr @num_in_fnames, align 4, !tbaa !83
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %38, label %47, !prof !153

38:                                               ; preds = %33
  %39 = load ptr, ptr @parse_in, align 8, !tbaa !68
  tail call void @cpp_undef_all(ptr noundef %39) #13
  %40 = load ptr, ptr @parse_in, align 8, !tbaa !68
  tail call void @cpp_clear_file_cache(ptr noundef %40) #13
  %41 = load ptr, ptr @parse_in, align 8, !tbaa !68
  %42 = load ptr, ptr @in_fnames, align 8, !tbaa !68
  %43 = getelementptr inbounds ptr, ptr %42, i64 %34
  %44 = load ptr, ptr %43, align 8, !tbaa !68
  %45 = tail call ptr @cpp_read_main_file(ptr noundef %41, ptr noundef %44) #13
  store ptr %45, ptr @this_input_filename, align 8, !tbaa !68
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %15, !llvm.loop !184

47:                                               ; preds = %38, %33
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @pch_init() local_unnamed_addr #3

declare void @push_file_scope() local_unnamed_addr #3

declare void @c_parse_file() local_unnamed_addr #3

declare void @finish_file() local_unnamed_addr #3

declare void @pop_file_scope() local_unnamed_addr #3

declare void @cpp_undef_all(ptr noundef) local_unnamed_addr #3

declare void @cpp_clear_file_cache(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @c_common_finish() local_unnamed_addr #8 !prof !87 {
  %1 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %2 = getelementptr inbounds %struct.cpp_options, ptr %1, i64 0, i32 43
  %3 = load i32, ptr %2, align 8, !tbaa !119
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %22, label %5, !prof !88

5:                                                ; preds = %0
  %6 = load ptr, ptr @global_dc, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.diagnostic_context, ptr %6, i64 0, i32 1, i64 4
  %8 = load i32, ptr %7, align 8, !tbaa !83
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %5
  %11 = load ptr, ptr @deps_file, align 8, !tbaa !68
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load ptr, ptr @out_stream, align 8, !tbaa !68
  br label %22

15:                                               ; preds = %10
  %16 = load i1, ptr @deps_append, align 1
  %17 = select i1 %16, ptr @.str.39, ptr @.str.30
  %18 = tail call ptr @fopen_unlocked(ptr noundef nonnull %11, ptr noundef nonnull %17) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load ptr, ptr @deps_file, align 8, !tbaa !68
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.40, ptr noundef %21) #13
  br label %22

22:                                               ; preds = %13, %20, %15, %5, %0
  %23 = phi ptr [ %18, %15 ], [ null, %20 ], [ %14, %13 ], [ null, %5 ], [ null, %0 ]
  %24 = load ptr, ptr @parse_in, align 8, !tbaa !68
  tail call void @cpp_finish(ptr noundef %24, ptr noundef %23) #13
  %25 = icmp eq ptr %23, null
  %26 = load ptr, ptr @out_stream, align 8
  %27 = icmp eq ptr %23, %26
  %28 = select i1 %25, i1 true, i1 %27, !prof !88
  br i1 %28, label %37, label %29, !prof !88

29:                                               ; preds = %22
  %30 = tail call i32 @ferror(ptr noundef nonnull %23)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = tail call i32 @fclose(ptr noundef nonnull %23)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32, %29
  %36 = load ptr, ptr @deps_file, align 8, !tbaa !68
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.41, ptr noundef %36) #13
  br label %37

37:                                               ; preds = %35, %32, %22
  %38 = load ptr, ptr @out_stream, align 8, !tbaa !68
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40, !prof !88

40:                                               ; preds = %37
  %41 = tail call i32 @ferror(ptr noundef nonnull %38)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = tail call i32 @fclose(ptr noundef nonnull %38)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43, %40
  %47 = load ptr, ptr @out_fname, align 8, !tbaa !68
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.42, ptr noundef %47) #13
  br label %48

48:                                               ; preds = %46, %43, %37
  ret void
}

declare void @cpp_finish(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

declare ptr @cpp_get_deps(ptr noundef) local_unnamed_addr #3

declare void @deps_add_target(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

declare ptr @linemap_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @cpp_init_builtins(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @c_cpp_builtins(ptr noundef) local_unnamed_addr #3

declare void @cpp_define(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cpp_undef(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cpp_unassert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cpp_assert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @cpp_push_include(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cpp_scan_nooutput(ptr noundef) local_unnamed_addr #3

declare void @cpp_init_special_builtins(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @push_command_line_include() unnamed_addr #8 !prof !185 !PGOFuncName !186 {
  %1 = load i64, ptr @include_cursor, align 8, !tbaa !112
  %2 = load i64, ptr @deferred_count, align 8, !tbaa !112
  %3 = icmp ult i64 %1, %2
  br i1 %3, label %4, label %26, !prof !153

4:                                                ; preds = %0, %22
  %5 = phi i64 [ %23, %22 ], [ %1, %0 ]
  %6 = load ptr, ptr @deferred_opts, align 8, !tbaa !68
  %7 = add i64 %5, 1
  store i64 %7, ptr @include_cursor, align 8, !tbaa !112
  %8 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %9 = getelementptr inbounds %struct.cpp_options, ptr %8, i64 0, i32 32
  %10 = load i8, ptr %9, align 2, !tbaa !143
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.deferred_opt, ptr %6, i64 %5
  %14 = load i32, ptr %13, align 8, !tbaa !113
  %15 = icmp eq i32 %14, 740
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load ptr, ptr @parse_in, align 8, !tbaa !68
  %18 = getelementptr inbounds %struct.deferred_opt, ptr %6, i64 %5, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !115
  %20 = tail call zeroext i8 @cpp_push_include(ptr noundef %17, ptr noundef %19) #13
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %16, %12, %4
  %23 = load i64, ptr @include_cursor, align 8, !tbaa !112
  %24 = load i64, ptr @deferred_count, align 8, !tbaa !112
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %4, label %26, !prof !153

26:                                               ; preds = %22, %0
  %27 = phi i64 [ %1, %0 ], [ %23, %22 ]
  %28 = phi i64 [ %2, %0 ], [ %24, %22 ]
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %47, !prof !187

30:                                               ; preds = %26
  %31 = add i64 %27, 1
  store i64 %31, ptr @include_cursor, align 8, !tbaa !112
  %32 = load i8, ptr @warn_unused_macros, align 1, !tbaa !79
  %33 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %34 = getelementptr inbounds %struct.cpp_options, ptr %33, i64 0, i32 28
  store i8 %32, ptr %34, align 2, !tbaa !188
  %35 = getelementptr inbounds %struct.cpp_options, ptr %33, i64 0, i32 32
  %36 = load i8, ptr %35, align 2, !tbaa !143
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %41, !prof !88

38:                                               ; preds = %30
  %39 = load ptr, ptr @parse_in, align 8, !tbaa !68
  %40 = load ptr, ptr @this_input_filename, align 8, !tbaa !68
  tail call void @cpp_change_file(ptr noundef %39, i32 noundef 2, ptr noundef %40) #13
  br label %41

41:                                               ; preds = %38, %30
  %42 = load ptr, ptr @cpp_opts, align 8, !tbaa !68
  %43 = getelementptr inbounds %struct.cpp_options, ptr %42, i64 0, i32 11
  %44 = load i8, ptr %43, align 1, !tbaa !118
  %45 = load ptr, ptr @line_table, align 8, !tbaa !68
  %46 = getelementptr inbounds %struct.line_maps, ptr %45, i64 0, i32 6
  store i8 %44, ptr %46, align 4, !tbaa !189
  br label %47

47:                                               ; preds = %16, %41, %26
  ret void
}

declare void @cpp_change_file(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @pp_file_change(ptr noundef) local_unnamed_addr #3

declare void @fe_file_change(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @set_src_pwd(ptr noundef) local_unnamed_addr #3

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!66}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!35 = !{ptr @c_common_init_options, ptr @cpp_create_reader, i64 1}
!36 = !{ptr @c_common_init_options, ptr @cpp_get_callbacks, i64 1}
!37 = !{ptr @c_common_init_options, ptr @cpp_get_options, i64 1}
!38 = !{ptr @c_common_init_options, ptr @xmalloc, i64 1}
!39 = !{ptr @c_common_init_options, ptr @strcmp, i64 6}
!40 = !{ptr @c_common_handle_option, ptr @cpp_get_options, i64 1}
!41 = !{ptr @c_common_post_options, ptr @strcmp, i64 2}
!42 = !{ptr @c_common_post_options, ptr @getenv, i64 2}
!43 = !{ptr @c_common_post_options, ptr @register_include_chains, i64 1}
!44 = !{ptr @c_common_post_options, ptr @warning, i64 6}
!45 = !{ptr @c_common_post_options, ptr @init_c_lex, i64 1}
!46 = !{ptr @c_common_post_options, ptr @cpp_get_callbacks, i64 1}
!47 = !{ptr @c_common_post_options, ptr @cpp_post_options, i64 1}
!48 = !{ptr @c_common_post_options, ptr @cpp_read_main_file, i64 1}
!49 = !{ptr @cb_file_change, ptr @fe_file_change, i64 5}
!50 = !{ptr @cb_file_change, ptr @push_command_line_include, i64 1}
!51 = !{ptr @c_common_init, ptr @cpp_init_iconv, i64 1}
!52 = !{ptr @c_common_init, ptr @init_pragma, i64 1}
!53 = !{ptr @finish_options, ptr @linemap_add, i64 2}
!54 = !{ptr @finish_options, ptr @cb_file_change, i64 2}
!55 = !{ptr @finish_options, ptr @cpp_init_builtins, i64 1}
!56 = !{ptr @finish_options, ptr @c_cpp_builtins, i64 1}
!57 = !{ptr @finish_options, ptr @push_command_line_include, i64 1}
!58 = !{ptr @c_common_parse_file, ptr @finish_options, i64 1}
!59 = !{ptr @c_common_parse_file, ptr @pch_init, i64 1}
!60 = !{ptr @c_common_parse_file, ptr @push_file_scope, i64 1}
!61 = !{ptr @c_common_parse_file, ptr @c_parse_file, i64 1}
!62 = !{ptr @c_common_parse_file, ptr @finish_file, i64 1}
!63 = !{ptr @c_common_parse_file, ptr @pop_file_scope, i64 1}
!64 = !{ptr @c_common_finish, ptr @cpp_finish, i64 1}
!65 = !{ptr @push_command_line_include, ptr @cpp_change_file, i64 1}
!66 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!67 = !{!"function_entry_count", i64 0}
!68 = !{!69, !69, i64 0}
!69 = !{!"any pointer", !70, i64 0}
!70 = !{!"omnipotent char", !71, i64 0}
!71 = !{!"Simple C/C++ TBAA"}
!72 = !{!73, !69, i64 8}
!73 = !{!"_IO_FILE", !74, i64 0, !69, i64 8, !69, i64 16, !69, i64 24, !69, i64 32, !69, i64 40, !69, i64 48, !69, i64 56, !69, i64 64, !69, i64 72, !69, i64 80, !69, i64 88, !69, i64 96, !69, i64 104, !74, i64 112, !74, i64 116, !75, i64 120, !76, i64 128, !70, i64 130, !70, i64 131, !69, i64 136, !75, i64 144, !69, i64 152, !69, i64 160, !69, i64 168, !69, i64 176, !75, i64 184, !74, i64 192, !70, i64 196}
!74 = !{!"int", !70, i64 0}
!75 = !{!"long", !70, i64 0}
!76 = !{!"short", !70, i64 0}
!77 = !{!73, !69, i64 16}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{!70, !70, i64 0}
!80 = !{!73, !69, i64 40}
!81 = !{!73, !69, i64 48}
!82 = !{!73, !74, i64 0}
!83 = !{!74, !74, i64 0}
!84 = distinct !{!84, !85, !86}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = !{!"function_entry_count", i64 1}
!88 = !{!"branch_weights", i32 1, i32 0}
!89 = !{!90, !69, i64 0}
!90 = !{!"diagnostic_context", !69, i64 0, !70, i64 8, !70, i64 56, !70, i64 57, !70, i64 60, !70, i64 3540, !70, i64 3541, !69, i64 3544, !69, i64 3552, !69, i64 3560, !69, i64 3568, !69, i64 3576, !74, i64 3584, !70, i64 3588}
!91 = !{!92, !74, i64 32}
!92 = !{!"pretty_print_info", !69, i64 0, !69, i64 8, !74, i64 16, !74, i64 20, !74, i64 24, !93, i64 28, !69, i64 40, !70, i64 48, !70, i64 49, !70, i64 50}
!93 = !{!"", !74, i64 0, !74, i64 4}
!94 = !{!92, !74, i64 28}
!95 = !{!96, !69, i64 96}
!96 = !{!"cpp_callbacks", !69, i64 0, !69, i64 8, !69, i64 16, !69, i64 24, !69, i64 32, !69, i64 40, !69, i64 48, !69, i64 56, !69, i64 64, !69, i64 72, !69, i64 80, !69, i64 88, !69, i64 96, !69, i64 104, !69, i64 112, !69, i64 120, !69, i64 128}
!97 = !{!98, !70, i64 30}
!98 = !{!"cpp_options", !74, i64 0, !74, i64 4, !70, i64 8, !70, i64 9, !70, i64 10, !70, i64 11, !70, i64 12, !70, i64 13, !70, i64 14, !70, i64 15, !70, i64 16, !70, i64 17, !70, i64 18, !70, i64 19, !70, i64 20, !70, i64 21, !70, i64 22, !70, i64 23, !70, i64 24, !70, i64 25, !70, i64 26, !70, i64 27, !70, i64 28, !70, i64 29, !70, i64 30, !70, i64 31, !70, i64 32, !70, i64 33, !70, i64 34, !70, i64 35, !70, i64 36, !70, i64 37, !70, i64 38, !70, i64 39, !70, i64 40, !70, i64 41, !70, i64 42, !69, i64 48, !69, i64 56, !69, i64 64, !74, i64 72, !70, i64 76, !70, i64 77, !99, i64 80, !75, i64 88, !75, i64 96, !75, i64 104, !75, i64 112, !70, i64 120, !70, i64 121, !70, i64 122, !70, i64 123, !70, i64 124}
!99 = !{!"", !74, i64 0, !70, i64 4, !70, i64 5, !70, i64 6, !70, i64 7}
!100 = !{!98, !70, i64 10}
!101 = !{!98, !70, i64 32}
!102 = !{!"branch_weights", i32 127, i32 1}
!103 = !{!"branch_weights", i32 127, i32 641}
!104 = distinct !{!104, !85, !86}
!105 = !{!"branch_weights", i32 0, i32 6}
!106 = !{!98, !74, i64 4}
!107 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!108 = !{!109, !74, i64 24}
!109 = !{!"cl_option", !69, i64 0, !69, i64 8, !76, i64 16, !70, i64 18, !74, i64 20, !74, i64 24, !69, i64 32, !74, i64 40, !74, i64 44}
!110 = !{!111, !69, i64 0}
!111 = !{!"gcc_targetcm", !69, i64 0}
!112 = !{!75, !75, i64 0}
!113 = !{!114, !74, i64 0}
!114 = !{!"deferred_opt", !74, i64 0, !69, i64 8}
!115 = !{!114, !69, i64 8}
!116 = !{!98, !70, i64 11}
!117 = !{!98, !70, i64 12}
!118 = !{!98, !70, i64 17}
!119 = !{!98, !74, i64 80}
!120 = !{!98, !70, i64 87}
!121 = !{!98, !70, i64 84}
!122 = !{!98, !70, i64 85}
!123 = !{!98, !70, i64 21}
!124 = !{!98, !70, i64 19}
!125 = !{!98, !70, i64 26}
!126 = !{!98, !70, i64 28}
!127 = !{!98, !70, i64 41}
!128 = !{!98, !70, i64 18}
!129 = !{!98, !70, i64 25}
!130 = !{!90, !70, i64 57}
!131 = !{!98, !70, i64 76}
!132 = !{!98, !70, i64 20}
!133 = !{!98, !70, i64 22}
!134 = !{!98, !74, i64 72}
!135 = !{!98, !70, i64 23}
!136 = !{!98, !70, i64 33}
!137 = distinct !{!137, !85, !86}
!138 = !{!109, !69, i64 0}
!139 = !{!98, !70, i64 124}
!140 = !{!98, !70, i64 31}
!141 = !{!98, !70, i64 40}
!142 = !{!98, !70, i64 77}
!143 = !{!98, !70, i64 38}
!144 = !{!98, !70, i64 39}
!145 = !{!98, !74, i64 0}
!146 = !{!98, !69, i64 48}
!147 = !{!98, !69, i64 56}
!148 = !{!98, !69, i64 64}
!149 = !{!98, !70, i64 37}
!150 = !{!98, !70, i64 29}
!151 = !{!98, !70, i64 13}
!152 = !{!98, !70, i64 42}
!153 = !{!"branch_weights", i32 0, i32 1}
!154 = !{!98, !70, i64 86}
!155 = distinct !{!155, !85, !86}
!156 = !{!98, !70, i64 120}
!157 = !{!98, !70, i64 123}
!158 = !{!98, !70, i64 24}
!159 = !{!98, !70, i64 27}
!160 = !{!"branch_weights", i32 0, i32 1, i32 0}
!161 = !{!96, !69, i64 8}
!162 = !{!96, !69, i64 16}
!163 = !{!"function_entry_count", i64 5}
!164 = !{!"c-opts.c;cb_file_change"}
!165 = !{!"branch_weights", i32 5, i32 0}
!166 = !{!"branch_weights", i32 1, i32 4}
!167 = !{!"branch_weights", i32 0, i32 4}
!168 = !{!169, !74, i64 16}
!169 = !{!"line_map", !69, i64 0, !74, i64 8, !74, i64 12, !74, i64 16, !74, i64 20, !70, i64 21, !74, i64 22}
!170 = !{!98, !75, i64 88}
!171 = !{!98, !75, i64 96}
!172 = !{!98, !75, i64 104}
!173 = !{!98, !75, i64 112}
!174 = !{!98, !70, i64 121}
!175 = !{!98, !70, i64 122}
!176 = !{!"c-opts.c;finish_options"}
!177 = !{!98, !70, i64 35}
!178 = distinct !{!178, !85, !86}
!179 = distinct !{!179, !85, !86}
!180 = !{!181, !74, i64 248}
!181 = !{!"gcc_debug_hooks", !69, i64 0, !69, i64 8, !69, i64 16, !69, i64 24, !69, i64 32, !69, i64 40, !69, i64 48, !69, i64 56, !69, i64 64, !69, i64 72, !69, i64 80, !69, i64 88, !69, i64 96, !69, i64 104, !69, i64 112, !69, i64 120, !69, i64 128, !69, i64 136, !69, i64 144, !69, i64 152, !69, i64 160, !69, i64 168, !69, i64 176, !69, i64 184, !69, i64 192, !69, i64 200, !69, i64 208, !69, i64 216, !69, i64 224, !69, i64 232, !69, i64 240, !74, i64 248}
!182 = !{!181, !69, i64 40}
!183 = !{!181, !69, i64 48}
!184 = distinct !{!184, !86}
!185 = !{!"function_entry_count", i64 2}
!186 = !{!"c-opts.c;push_command_line_include"}
!187 = !{!"branch_weights", i32 1, i32 1}
!188 = !{!98, !70, i64 34}
!189 = !{!190, !70, i64 28}
!190 = !{!"line_maps", !69, i64 0, !74, i64 8, !74, i64 12, !74, i64 16, !74, i64 20, !74, i64 24, !70, i64 28, !74, i64 32, !74, i64 36, !74, i64 40, !69, i64 48}

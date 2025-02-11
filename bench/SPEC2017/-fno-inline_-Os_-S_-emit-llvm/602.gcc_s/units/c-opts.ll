; ModuleID = 'c-opts.c'
source_filename = "c-opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cl_option = type { ptr, ptr, i16, i8, i32, i32, ptr, i32, i32 }
%struct.gcc_targetcm = type { ptr }
%struct.visibility_flags = type { i8, [3 x i8] }
%struct.pretty_print_info = type { ptr, ptr, i32, i32, i32, %struct.pp_wrapping_mode_t, ptr, i8, i8, i8 }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.cpp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.anon, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon = type { i32, i8, i8, i8, i8 }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.deferred_opt = type { i32, ptr }
%struct.line_map = type { ptr, i32, i32, i32, i8, i8, i8 }
%struct.line_maps = type { ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%union.tree_type_symtab = type { ptr }
%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@cpp_opts = dso_local local_unnamed_addr global ptr null, align 8
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
@stdout = external local_unnamed_addr global ptr, align 8
@exit_after_options = external local_unnamed_addr global i8, align 1
@flag_undef = external local_unnamed_addr global i32, align 4
@verbose = internal unnamed_addr global i1 false, align 1
@warn_psabi = external local_unnamed_addr global i32, align 4
@deferred_count = internal unnamed_addr global i64 0, align 8
@warn_implicit = external local_unnamed_addr global i32, align 4
@warn_implicit_int = external local_unnamed_addr global i32, align 4
@warn_implicit_function_declaration = external local_unnamed_addr global i32, align 4
@flag_iso = external local_unnamed_addr global i32, align 4
@flag_isoc94 = external local_unnamed_addr global i32, align 4
@flag_isoc99 = external local_unnamed_addr global i32, align 4
@cxx_dialect = external local_unnamed_addr global i32, align 4
@flag_dump_macros = external local_unnamed_addr global i8, align 1
@flag_dump_includes = external local_unnamed_addr global i8, align 1
@cpp_GCC_INCLUDE_DIR = external local_unnamed_addr constant [0 x i8], align 1
@cpp_GCC_INCLUDE_DIR_len = external local_unnamed_addr constant i64, align 8
@in_fnames = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@flag_excess_precision_cmdline = external local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [36 x i8] c"-fexcess-precision=standard for C++\00", align 1
@flag_gnu89_inline = external local_unnamed_addr global i32, align 4
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
@out_stream = internal unnamed_addr global ptr null, align 8
@.str.30 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"opening output file %s: %m\00", align 1
@num_in_fnames = external local_unnamed_addr global i32, align 4
@.str.32 = private unnamed_addr constant [52 x i8] c"too many filenames given.  Type %s --help for usage\00", align 1
@progname = external local_unnamed_addr global ptr, align 8
@this_input_filename = internal unnamed_addr global ptr null, align 8
@.str.33 = private unnamed_addr constant [20 x i8] c"DEPENDENCIES_OUTPUT\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"SUNPRO_DEPENDENCIES\00", align 1
@deps_append = internal unnamed_addr global i1 false, align 1
@.str.35 = private unnamed_addr constant [59 x i8] c"to generate dependencies you must specify either -M or -MM\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"-MG may only be used with -M or -MM\00", align 1
@warn_long_long = external local_unnamed_addr global i32, align 4
@pedantic = external local_unnamed_addr global i32, align 4
@warn_traditional = external local_unnamed_addr global i32, align 4
@debug_info_level = external local_unnamed_addr global i32, align 4
@.str.37 = private unnamed_addr constant [55 x i8] c"-fdirectives-only is incompatible with -Wunused_macros\00", align 1
@.str.38 = private unnamed_addr constant [52 x i8] c"-fdirectives-only is incompatible with -traditional\00", align 1
@include_cursor = internal unnamed_addr global i64 0, align 8
@.str.39 = private unnamed_addr constant [48 x i8] c"too late for # directive to set debug directory\00", align 1
@c_global_trees = external local_unnamed_addr global [55 x ptr], align 16
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@version_flag = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.40 = private unnamed_addr constant [11 x i8] c"<built-in>\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"<command-line>\00", align 1
@.str.42 = private unnamed_addr constant [50 x i8] c"The C parser does not support -dy, option ignored\00", align 1
@.str.43 = private unnamed_addr constant [60 x i8] c"The Objective-C parser does not support -dy, option ignored\00", align 1
@.str.44 = private unnamed_addr constant [52 x i8] c"The C++ parser does not support -dy, option ignored\00", align 1
@.str.45 = private unnamed_addr constant [62 x i8] c"The Objective-C++ parser does not support -dy, option ignored\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"c-opts.c\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@debug_hooks = external local_unnamed_addr global ptr, align 8
@.str.48 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"opening dependency file %s: %m\00", align 1
@.str.50 = private unnamed_addr constant [31 x i8] c"closing dependency file %s: %m\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"when writing output to %s: %m\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @c_common_missing_argument(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
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
  tail call void (ptr, ...) @error(ptr noundef nonnull %9, ptr noundef %0) #11
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i8 [ 0, %2 ], [ 1, %8 ]
  ret i8 %11
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @c_common_init_options(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @c_language, align 4, !tbaa !6
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @global_dc, align 8, !tbaa !10
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = getelementptr inbounds %struct.pretty_print_info, ptr %8, i64 0, i32 5, i32 1
  store i32 80, ptr %9, align 4, !tbaa !14
  %10 = getelementptr inbounds %struct.pretty_print_info, ptr %8, i64 0, i32 5
  store i32 0, ptr %10, align 4, !tbaa !17
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 5, %6 ], [ 0, %2 ]
  %13 = load ptr, ptr @ident_hash, align 8, !tbaa !10
  %14 = load ptr, ptr @line_table, align 8, !tbaa !10
  %15 = tail call ptr @cpp_create_reader(i32 noundef %12, ptr noundef %13, ptr noundef %14) #11
  store ptr %15, ptr @parse_in, align 8, !tbaa !10
  %16 = tail call ptr @cpp_get_callbacks(ptr noundef %15) #11
  %17 = getelementptr inbounds %struct.cpp_callbacks, ptr %16, i64 0, i32 12
  store ptr @c_cpp_error, ptr %17, align 8, !tbaa !18
  %18 = load ptr, ptr @parse_in, align 8, !tbaa !10
  %19 = tail call ptr @cpp_get_options(ptr noundef %18) #11
  store ptr %19, ptr @cpp_opts, align 8, !tbaa !10
  %20 = getelementptr inbounds %struct.cpp_options, ptr %19, i64 0, i32 24
  store i8 1, ptr %20, align 2, !tbaa !20
  %21 = load i32, ptr @c_language, align 4, !tbaa !6
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.cpp_options, ptr %19, i64 0, i32 4
  store i8 %23, ptr %24, align 2, !tbaa !24
  %25 = getelementptr inbounds %struct.cpp_options, ptr %19, i64 0, i32 26
  store i8 0, ptr %25, align 8, !tbaa !25
  %26 = lshr i32 %21, 1
  %27 = and i32 %26, 1
  store i32 %27, ptr @flag_exceptions, align 4, !tbaa !6
  store i32 %27, ptr @warn_pointer_arith, align 4, !tbaa !6
  store i32 %27, ptr @warn_write_strings, align 4, !tbaa !6
  store i8 1, ptr @flag_warn_unused_result, align 1, !tbaa !26
  store i32 2, ptr @flag_complex_method, align 4, !tbaa !6
  %28 = zext i32 %0 to i64
  %29 = shl nuw nsw i64 %28, 4
  %30 = tail call ptr @xmalloc(i64 noundef %29) #11
  store ptr %30, ptr @deferred_opts, align 8, !tbaa !10
  %31 = load i32, ptr @c_language, align 4, !tbaa !6
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i32], ptr @c_common_init_options.lang_flags, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !6
  %35 = icmp eq i32 %31, 0
  %36 = icmp ugt i32 %0, 1
  %37 = and i1 %35, %36
  br i1 %37, label %41, label %49

38:                                               ; preds = %41
  %39 = add nuw nsw i64 %42, 1
  %40 = icmp eq i64 %39, %28
  br i1 %40, label %49, label %41, !llvm.loop !27

41:                                               ; preds = %11, %38
  %42 = phi i64 [ %39, %38 ], [ 1, %11 ]
  %43 = getelementptr inbounds ptr, ptr %1, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !10
  %45 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %44, ptr noundef nonnull dereferenceable(10) @.str.6) #12
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %38

47:                                               ; preds = %41
  %48 = or i32 %34, 198
  br label %49

49:                                               ; preds = %38, %47, %11
  %50 = phi i32 [ %48, %47 ], [ %34, %11 ], [ %34, %38 ]
  ret i32 %50
}

; Function Attrs: optsize
declare ptr @cpp_create_reader(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @cpp_get_callbacks(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @c_cpp_error(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare ptr @cpp_get_options(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @c_common_handle_option(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %0
  %5 = trunc i64 %0 to i32
  %6 = load ptr, ptr @parse_in, align 8, !tbaa !10
  %7 = tail call ptr @cpp_get_options(ptr noundef %6) #11
  %8 = getelementptr inbounds %struct.cpp_options, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !29
  %10 = icmp eq i32 %9, 9
  switch i32 %5, label %11 [
    i32 2, label %27
    i32 6, label %28
    i32 7, label %29
    i32 8, label %32
    i32 9, label %36
    i32 10, label %37
    i32 13, label %38
    i32 11, label %423
    i32 14, label %41
    i32 16, label %51
    i32 21, label %51
    i32 17, label %56
    i32 22, label %56
    i32 19, label %62
    i32 20, label %63
    i32 24, label %66
    i32 25, label %69
    i32 26, label %69
    i32 29, label %70
    i32 714, label %71
    i32 30, label %72
    i32 37, label %73
    i32 48, label %106
    i32 57, label %110
    i32 58, label %110
    i32 49, label %114
    i32 67, label %129
    i32 75, label %133
    i32 79, label %137
    i32 80, label %141
    i32 91, label %142
    i32 98, label %143
    i32 102, label %145
    i32 107, label %423
    i32 117, label %146
    i32 132, label %150
    i32 137, label %154
    i32 144, label %158
    i32 172, label %187
    i32 186, label %188
    i32 202, label %189
    i32 204, label %193
    i32 209, label %197
    i32 212, label %201
    i32 224, label %203
    i32 233, label %205
    i32 237, label %207
    i32 72, label %208
    i32 238, label %211
    i32 244, label %217
    i32 305, label %218
    i32 263, label %223
    i32 265, label %223
    i32 367, label %223
    i32 375, label %223
    i32 408, label %223
    i32 413, label %223
    i32 415, label %223
    i32 464, label %223
    i32 496, label %223
    i32 497, label %223
    i32 502, label %223
    i32 613, label %223
    i32 626, label %223
    i32 634, label %223
    i32 707, label %223
    i32 717, label %223
    i32 706, label %223
    i32 252, label %226
    i32 270, label %227
    i32 290, label %230
    i32 291, label %233
    i32 337, label %236
    i32 341, label %240
    i32 393, label %244
    i32 414, label %247
    i32 599, label %251
    i32 600, label %252
    i32 601, label %253
    i32 605, label %254
    i32 606, label %255
    i32 684, label %256
    i32 685, label %259
    i32 297, label %262
    i32 306, label %263
    i32 308, label %264
    i32 329, label %265
    i32 352, label %266
    i32 366, label %267
    i32 373, label %268
    i32 385, label %272
    i32 402, label %273
    i32 403, label %276
    i32 409, label %279
    i32 419, label %281
    i32 420, label %282
    i32 422, label %283
    i32 465, label %284
    i32 492, label %285
    i32 498, label %286
    i32 499, label %287
    i32 501, label %288
    i32 510, label %291
    i32 514, label %295
    i32 520, label %296
    i32 521, label %300
    i32 525, label %302
    i32 534, label %303
    i32 562, label %307
    i32 563, label %308
    i32 569, label %311
    i32 602, label %312
    i32 621, label %316
    i32 628, label %317
    i32 370, label %322
    i32 713, label %325
    i32 438, label %328
    i32 631, label %331
    i32 632, label %331
    i32 690, label %332
    i32 691, label %333
    i32 702, label %334
    i32 708, label %341
    i32 636, label %342
    i32 535, label %343
    i32 719, label %344
    i32 725, label %345
    i32 359, label %346
    i32 361, label %347
    i32 360, label %348
    i32 737, label %349
    i32 738, label %351
    i32 740, label %351
    i32 739, label %352
    i32 741, label %353
    i32 742, label %354
    i32 743, label %356
    i32 744, label %357
    i32 745, label %359
    i32 746, label %360
    i32 747, label %361
    i32 748, label %365
    i32 829, label %368
    i32 830, label %369
    i32 832, label %370
    i32 835, label %375
    i32 834, label %375
    i32 837, label %390
    i32 838, label %391
    i32 840, label %393
    i32 844, label %396
    i32 854, label %396
    i32 843, label %400
    i32 853, label %400
    i32 845, label %404
    i32 846, label %404
    i32 859, label %404
    i32 860, label %404
    i32 855, label %408
    i32 856, label %408
    i32 847, label %410
    i32 848, label %410
    i32 861, label %410
    i32 862, label %410
    i32 857, label %412
    i32 858, label %412
    i32 865, label %414
    i32 864, label %417
    i32 866, label %420
    i32 867, label %421
    i32 32, label %422
  ]

11:                                               ; preds = %3
  %12 = and i64 %0, 4294967295
  %13 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %12, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !30
  %15 = and i32 %14, 198
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %423, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !30
  %20 = and i32 %19, 1048576
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %423, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr @targetcm, align 8, !tbaa !33
  %24 = tail call zeroext i8 %23(i64 noundef %0, ptr noundef %1, i32 noundef %2) #11
  %25 = icmp ne i8 %24, 0
  %26 = zext i1 %25 to i32
  br label %423

27:                                               ; preds = %3
  store ptr %1, ptr @pch_file, align 8, !tbaa !10
  br label %423

28:                                               ; preds = %3
  tail call fastcc void @defer_opt(i32 noundef 6, ptr noundef %1) #12
  br label %423

29:                                               ; preds = %3
  %30 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %31 = getelementptr inbounds %struct.cpp_options, ptr %30, i64 0, i32 5
  store i8 0, ptr %31, align 1, !tbaa !35
  br label %423

32:                                               ; preds = %3
  %33 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %34 = getelementptr inbounds %struct.cpp_options, ptr %33, i64 0, i32 5
  store i8 0, ptr %34, align 1, !tbaa !35
  %35 = getelementptr inbounds %struct.cpp_options, ptr %33, i64 0, i32 6
  store i8 0, ptr %35, align 4, !tbaa !36
  br label %423

36:                                               ; preds = %3
  tail call fastcc void @defer_opt(i32 noundef 9, ptr noundef %1) #12
  br label %423

37:                                               ; preds = %3
  store i32 1, ptr @flag_preprocess_only, align 4, !tbaa !6
  br label %423

38:                                               ; preds = %3
  %39 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %40 = getelementptr inbounds %struct.cpp_options, ptr %39, i64 0, i32 11
  store i8 1, ptr %40, align 1, !tbaa !37
  br label %423

41:                                               ; preds = %3
  %42 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.7) #12
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = tail call ptr @xstrdup(ptr noundef %1) #11
  tail call void @add_path(ptr noundef %45, i32 noundef 1, i32 noundef 0, i8 noundef zeroext 1) #11
  br label %423

46:                                               ; preds = %41
  %47 = load i1, ptr @quote_chain_split, align 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.8) #11
  br label %49

49:                                               ; preds = %48, %46
  store i1 true, ptr @quote_chain_split, align 1
  tail call void @split_quote_chain() #11
  %50 = load i32, ptr @input_location, align 4, !tbaa !6
  tail call void (i32, ptr, ...) @inform(i32 noundef %50, ptr noundef nonnull @.str.9) #11
  br label %423

51:                                               ; preds = %3, %3
  %52 = icmp eq i32 %5, 16
  %53 = select i1 %52, i32 2, i32 1
  %54 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %55 = getelementptr inbounds %struct.cpp_options, ptr %54, i64 0, i32 43
  store i32 %53, ptr %55, align 8, !tbaa !38
  store i8 1, ptr @flag_no_output, align 1, !tbaa !26
  br label %423

56:                                               ; preds = %3, %3
  %57 = icmp eq i32 %5, 17
  %58 = select i1 %57, i32 2, i32 1
  %59 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %60 = getelementptr inbounds %struct.cpp_options, ptr %59, i64 0, i32 43
  store i32 %58, ptr %60, align 8, !tbaa !38
  %61 = getelementptr inbounds %struct.cpp_options, ptr %59, i64 0, i32 43, i32 4
  store i8 1, ptr %61, align 1, !tbaa !39
  store ptr %1, ptr @deps_file, align 8, !tbaa !10
  br label %423

62:                                               ; preds = %3
  store i1 true, ptr @deps_seen, align 1
  store ptr %1, ptr @deps_file, align 8, !tbaa !10
  br label %423

63:                                               ; preds = %3
  store i1 true, ptr @deps_seen, align 1
  %64 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %65 = getelementptr inbounds %struct.cpp_options, ptr %64, i64 0, i32 43, i32 1
  store i8 1, ptr %65, align 4, !tbaa !40
  br label %423

66:                                               ; preds = %3
  store i1 true, ptr @deps_seen, align 1
  %67 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %68 = getelementptr inbounds %struct.cpp_options, ptr %67, i64 0, i32 43, i32 2
  store i8 1, ptr %68, align 1, !tbaa !41
  br label %423

69:                                               ; preds = %3, %3
  store i1 true, ptr @deps_seen, align 1
  tail call fastcc void @defer_opt(i32 noundef %5, ptr noundef %1) #12
  br label %423

70:                                               ; preds = %3
  store i8 1, ptr @flag_no_line_commands, align 1, !tbaa !26
  br label %423

71:                                               ; preds = %3
  store i32 %2, ptr @flag_working_directory, align 4, !tbaa !6
  br label %423

72:                                               ; preds = %3
  tail call fastcc void @defer_opt(i32 noundef 30, ptr noundef %1) #12
  br label %423

73:                                               ; preds = %3
  store i32 %2, ptr @warn_unused, align 4, !tbaa !6
  tail call void @set_Wformat(i32 noundef %2) #11
  tail call fastcc void @set_Wimplicit(i32 noundef %2) #12
  store i32 %2, ptr @warn_char_subscripts, align 4, !tbaa !6
  store i32 %2, ptr @warn_missing_braces, align 4, !tbaa !6
  store i32 %2, ptr @warn_parentheses, align 4, !tbaa !6
  store i32 %2, ptr @warn_return_type, align 4, !tbaa !6
  store i32 %2, ptr @warn_sequence_point, align 4, !tbaa !6
  store i32 %2, ptr @warn_switch, align 4, !tbaa !6
  %74 = load i32, ptr @warn_strict_aliasing, align 4, !tbaa !6
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  tail call void @set_Wstrict_aliasing(i32 noundef %2) #11
  br label %77

77:                                               ; preds = %76, %73
  store i32 %2, ptr @warn_address, align 4, !tbaa !6
  %78 = load i32, ptr @warn_strict_overflow, align 4, !tbaa !6
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 %2, ptr @warn_strict_overflow, align 4, !tbaa !6
  br label %81

81:                                               ; preds = %80, %77
  store i32 %2, ptr @warn_array_bounds, align 4, !tbaa !6
  store i32 %2, ptr @warn_volatile_register_var, align 4, !tbaa !6
  store i32 %2, ptr @warn_unknown_pragmas, align 4, !tbaa !6
  store i32 %2, ptr @warn_uninitialized, align 4, !tbaa !6
  %82 = load i32, ptr @c_language, align 4, !tbaa !6
  %83 = and i32 %82, 2
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load i32, ptr @warn_main, align 4, !tbaa !6
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = icmp eq i32 %2, 0
  %90 = select i1 %89, i32 0, i32 2
  store i32 %90, ptr @warn_main, align 4, !tbaa !6
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, ptr @warn_enum_compare, align 4, !tbaa !6
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %95, label %97

94:                                               ; preds = %81
  store i32 %2, ptr @warn_sign_compare, align 4, !tbaa !6
  store i32 %2, ptr @warn_reorder, align 4, !tbaa !6
  br label %95

95:                                               ; preds = %91, %94
  %96 = phi ptr [ @warn_cxx0x_compat, %94 ], [ @warn_enum_compare, %91 ]
  store i32 %2, ptr %96, align 4, !tbaa !6
  br label %97

97:                                               ; preds = %95, %91
  %98 = trunc i32 %2 to i8
  %99 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %100 = getelementptr inbounds %struct.cpp_options, ptr %99, i64 0, i32 15
  store i8 %98, ptr %100, align 1, !tbaa !42
  %101 = getelementptr inbounds %struct.cpp_options, ptr %99, i64 0, i32 13
  store i8 %98, ptr %101, align 1, !tbaa !43
  %102 = getelementptr inbounds %struct.cpp_options, ptr %99, i64 0, i32 20
  store i8 %98, ptr %102, align 2, !tbaa !44
  %103 = load i32, ptr @warn_pointer_sign, align 4, !tbaa !6
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %423

105:                                              ; preds = %97
  store i32 %2, ptr @warn_pointer_sign, align 4, !tbaa !6
  br label %423

106:                                              ; preds = %3
  %107 = trunc i32 %2 to i8
  %108 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %109 = getelementptr inbounds %struct.cpp_options, ptr %108, i64 0, i32 22
  store i8 %107, ptr %109, align 4, !tbaa !45
  br label %423

110:                                              ; preds = %3, %3
  %111 = trunc i32 %2 to i8
  %112 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %113 = getelementptr inbounds %struct.cpp_options, ptr %112, i64 0, i32 13
  store i8 %111, ptr %113, align 1, !tbaa !43
  br label %423

114:                                              ; preds = %3
  %115 = load i32, ptr @warn_enum_compare, align 4, !tbaa !6
  %116 = icmp eq i32 %115, -1
  %117 = icmp ne i32 %2, 0
  %118 = and i1 %117, %116
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store i32 %2, ptr @warn_enum_compare, align 4, !tbaa !6
  br label %120

120:                                              ; preds = %119, %114
  %121 = load i32, ptr @warn_jump_misses_init, align 4, !tbaa !6
  %122 = icmp eq i32 %121, -1
  %123 = and i1 %117, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i32 %2, ptr @warn_jump_misses_init, align 4, !tbaa !6
  br label %125

125:                                              ; preds = %124, %120
  %126 = trunc i32 %2 to i8
  %127 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %128 = getelementptr inbounds %struct.cpp_options, ptr %127, i64 0, i32 35
  store i8 %126, ptr %128, align 1, !tbaa !46
  br label %423

129:                                              ; preds = %3
  %130 = trunc i32 %2 to i8
  %131 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %132 = getelementptr inbounds %struct.cpp_options, ptr %131, i64 0, i32 12
  store i8 %130, ptr %132, align 2, !tbaa !47
  br label %423

133:                                              ; preds = %3
  %134 = trunc i32 %2 to i8
  %135 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %136 = getelementptr inbounds %struct.cpp_options, ptr %135, i64 0, i32 19
  store i8 %134, ptr %136, align 1, !tbaa !48
  br label %423

137:                                              ; preds = %3
  %138 = trunc i32 %2 to i8
  %139 = load ptr, ptr @global_dc, align 8, !tbaa !10
  %140 = getelementptr inbounds %struct.diagnostic_context, ptr %139, i64 0, i32 3
  store i8 %138, ptr %140, align 1, !tbaa !49
  br label %423

141:                                              ; preds = %3
  tail call void @enable_warning_as_error(ptr noundef nonnull @.str.10, i32 noundef %2, i32 noundef 66) #11
  br label %423

142:                                              ; preds = %3
  tail call void @set_Wformat(i32 noundef %2) #11
  br label %423

143:                                              ; preds = %3
  %144 = tail call i32 @atoi(ptr nocapture noundef %1) #12
  tail call void @set_Wformat(i32 noundef %144) #11
  br label %423

145:                                              ; preds = %3
  tail call fastcc void @set_Wimplicit(i32 noundef %2) #12
  br label %423

146:                                              ; preds = %3
  %147 = trunc i32 %2 to i8
  %148 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %149 = getelementptr inbounds %struct.cpp_options, ptr %148, i64 0, i32 41
  store i8 %147, ptr %149, align 4, !tbaa !50
  br label %423

150:                                              ; preds = %3
  %151 = trunc i32 %2 to i8
  %152 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %153 = getelementptr inbounds %struct.cpp_options, ptr %152, i64 0, i32 14
  store i8 %151, ptr %153, align 4, !tbaa !51
  br label %423

154:                                              ; preds = %3
  %155 = trunc i32 %2 to i8
  %156 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %157 = getelementptr inbounds %struct.cpp_options, ptr %156, i64 0, i32 16
  store i8 %155, ptr %157, align 2, !tbaa !52
  br label %423

158:                                              ; preds = %3
  %159 = icmp eq i32 %2, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %158
  %161 = icmp eq ptr %1, null
  br i1 %161, label %171, label %162

162:                                              ; preds = %160
  %163 = tail call i32 @strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.11) #12
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162, %158
  %166 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %167 = getelementptr inbounds %struct.cpp_options, ptr %166, i64 0, i32 40
  store i32 3, ptr %167, align 8, !tbaa !53
  br label %423

168:                                              ; preds = %162
  %169 = tail call i32 @strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.12) #12
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %160, %168
  %172 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %173 = getelementptr inbounds %struct.cpp_options, ptr %172, i64 0, i32 40
  store i32 0, ptr %173, align 8, !tbaa !53
  br label %423

174:                                              ; preds = %168
  %175 = tail call i32 @strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.13) #12
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %179 = getelementptr inbounds %struct.cpp_options, ptr %178, i64 0, i32 40
  store i32 2, ptr %179, align 8, !tbaa !53
  br label %423

180:                                              ; preds = %174
  %181 = tail call i32 @strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.14) #12
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %185 = getelementptr inbounds %struct.cpp_options, ptr %184, i64 0, i32 40
  store i32 1, ptr %185, align 8, !tbaa !53
  br label %423

186:                                              ; preds = %180
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.15, ptr noundef nonnull %1) #11
  br label %423

187:                                              ; preds = %3
  store i32 %2, ptr @warn_return_type, align 4, !tbaa !6
  br label %423

188:                                              ; preds = %3
  store i32 %2, ptr @warn_strict_null_sentinel, align 4, !tbaa !6
  br label %423

189:                                              ; preds = %3
  %190 = trunc i32 %2 to i8
  %191 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %192 = getelementptr inbounds %struct.cpp_options, ptr %191, i64 0, i32 17
  store i8 %190, ptr %192, align 1, !tbaa !54
  br label %423

193:                                              ; preds = %3
  %194 = trunc i32 %2 to i8
  %195 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %196 = getelementptr inbounds %struct.cpp_options, ptr %195, i64 0, i32 15
  store i8 %194, ptr %196, align 1, !tbaa !42
  br label %423

197:                                              ; preds = %3
  %198 = trunc i32 %2 to i8
  %199 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %200 = getelementptr inbounds %struct.cpp_options, ptr %199, i64 0, i32 27
  store i8 %198, ptr %200, align 1, !tbaa !55
  br label %423

201:                                              ; preds = %3
  %202 = shl nsw i32 %2, 1
  store i32 %202, ptr @warn_unknown_pragmas, align 4, !tbaa !6
  br label %423

203:                                              ; preds = %3
  %204 = trunc i32 %2 to i8
  store i8 %204, ptr @warn_unused_macros, align 1, !tbaa !26
  br label %423

205:                                              ; preds = %3
  %206 = trunc i32 %2 to i8
  store i8 %206, ptr @warn_variadic_macros, align 1, !tbaa !26
  br label %423

207:                                              ; preds = %3
  store i32 %2, ptr @warn_write_strings, align 4, !tbaa !6
  br label %423

208:                                              ; preds = %3
  store i32 %2, ptr @warn_ecpp, align 4, !tbaa !6
  %209 = icmp eq i32 %2, 0
  br i1 %209, label %423, label %210

210:                                              ; preds = %208
  store i32 1, ptr @warn_nonvdtor, align 4, !tbaa !6
  br label %423

211:                                              ; preds = %3
  %212 = load i32, ptr @c_language, align 4, !tbaa !6
  %213 = and i32 %212, 2
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  tail call fastcc void @set_std_c89(i32 noundef 0, i32 noundef 1) #12
  br label %423

216:                                              ; preds = %211
  tail call fastcc void @set_std_cxx98(i32 noundef 1) #12
  br label %423

217:                                              ; preds = %3
  tail call fastcc void @handle_OPT_d(ptr noundef %1) #12
  br label %423

218:                                              ; preds = %3
  %219 = load i32, ptr @c_language, align 4, !tbaa !6
  %220 = and i32 %219, 2
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %218
  store i32 %2, ptr @flag_cond_mismatch, align 4, !tbaa !6
  br label %423

223:                                              ; preds = %218, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %224 = load ptr, ptr %4, align 8, !tbaa !56
  %225 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef %224) #11
  br label %423

226:                                              ; preds = %3
  store i32 %2, ptr @flag_access_control, align 4, !tbaa !6
  br label %423

227:                                              ; preds = %3
  %228 = icmp eq i32 %2, 0
  %229 = zext i1 %228 to i32
  store i32 %229, ptr @flag_no_asm, align 4, !tbaa !6
  br label %423

230:                                              ; preds = %3
  %231 = icmp eq i32 %2, 0
  %232 = zext i1 %231 to i32
  store i32 %232, ptr @flag_no_builtin, align 4, !tbaa !6
  br label %423

233:                                              ; preds = %3
  %234 = icmp eq i32 %2, 0
  br i1 %234, label %235, label %423

235:                                              ; preds = %233
  tail call void @disable_builtin_function(ptr noundef %1) #11
  br label %423

236:                                              ; preds = %3
  %237 = trunc i32 %2 to i8
  %238 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %239 = getelementptr inbounds %struct.cpp_options, ptr %238, i64 0, i32 52
  store i8 %237, ptr %239, align 4, !tbaa !57
  br label %423

240:                                              ; preds = %3
  %241 = trunc i32 %2 to i8
  %242 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %243 = getelementptr inbounds %struct.cpp_options, ptr %242, i64 0, i32 24
  store i8 %241, ptr %243, align 2, !tbaa !20
  br label %423

244:                                              ; preds = %3
  %245 = icmp eq i32 %2, 0
  %246 = zext i1 %245 to i32
  br label %247

247:                                              ; preds = %3, %244
  %248 = phi i32 [ %2, %3 ], [ %246, %244 ]
  store i32 %248, ptr @flag_hosted, align 4, !tbaa !6
  %249 = icmp eq i32 %248, 0
  %250 = zext i1 %249 to i32
  store i32 %250, ptr @flag_no_builtin, align 4, !tbaa !6
  br label %423

251:                                              ; preds = %3
  store i32 %2, ptr @flag_short_double, align 4, !tbaa !6
  br label %423

252:                                              ; preds = %3
  store i32 %2, ptr @flag_short_enums, align 4, !tbaa !6
  br label %423

253:                                              ; preds = %3
  store i32 %2, ptr @flag_short_wchar, align 4, !tbaa !6
  br label %423

254:                                              ; preds = %3
  store i32 %2, ptr @flag_signed_bitfields, align 4, !tbaa !6
  br label %423

255:                                              ; preds = %3
  store i32 %2, ptr @flag_signed_char, align 4, !tbaa !6
  br label %423

256:                                              ; preds = %3
  %257 = icmp eq i32 %2, 0
  %258 = zext i1 %257 to i32
  store i32 %258, ptr @flag_signed_bitfields, align 4, !tbaa !6
  br label %423

259:                                              ; preds = %3
  %260 = icmp eq i32 %2, 0
  %261 = zext i1 %260 to i32
  store i32 %261, ptr @flag_signed_char, align 4, !tbaa !6
  br label %423

262:                                              ; preds = %3
  store i32 %2, ptr @flag_check_new, align 4, !tbaa !6
  br label %423

263:                                              ; preds = %3
  store i32 %2, ptr @flag_conserve_space, align 4, !tbaa !6
  br label %423

264:                                              ; preds = %3
  store ptr %1, ptr @constant_string_class_name, align 8, !tbaa !10
  br label %423

265:                                              ; preds = %3
  store i32 %2, ptr @flag_default_inline, align 4, !tbaa !6
  br label %423

266:                                              ; preds = %3
  store i32 %2, ptr @flag_elide_constructors, align 4, !tbaa !6
  br label %423

267:                                              ; preds = %3
  store i32 %2, ptr @flag_enforce_eh_specs, align 4, !tbaa !6
  br label %423

268:                                              ; preds = %3
  %269 = trunc i32 %2 to i8
  %270 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %271 = getelementptr inbounds %struct.cpp_options, ptr %270, i64 0, i32 25
  store i8 %269, ptr %271, align 1, !tbaa !58
  br label %423

272:                                              ; preds = %3
  store i32 %2, ptr @flag_new_for_scope, align 4, !tbaa !6
  br label %423

273:                                              ; preds = %3
  %274 = icmp eq i32 %2, 0
  %275 = zext i1 %274 to i32
  store i32 %275, ptr @flag_no_gnu_keywords, align 4, !tbaa !6
  br label %423

276:                                              ; preds = %3
  %277 = icmp eq i32 %2, 0
  %278 = zext i1 %277 to i32
  store i32 %278, ptr @flag_next_runtime, align 4, !tbaa !6
  br label %423

279:                                              ; preds = %3
  %280 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.17) #11
  store i32 %2, ptr @flag_exceptions, align 4, !tbaa !6
  br label %423

281:                                              ; preds = %3
  store i32 %2, ptr @flag_implement_inlines, align 4, !tbaa !6
  br label %423

282:                                              ; preds = %3
  store i32 %2, ptr @flag_implicit_inline_templates, align 4, !tbaa !6
  br label %423

283:                                              ; preds = %3
  store i32 %2, ptr @flag_implicit_templates, align 4, !tbaa !6
  br label %423

284:                                              ; preds = %3
  store i32 %2, ptr @flag_lax_vector_conversions, align 4, !tbaa !6
  br label %423

285:                                              ; preds = %3
  store i32 %2, ptr @flag_ms_extensions, align 4, !tbaa !6
  br label %423

286:                                              ; preds = %3
  store i32 %2, ptr @flag_next_runtime, align 4, !tbaa !6
  br label %423

287:                                              ; preds = %3
  store i32 %2, ptr @flag_nil_receivers, align 4, !tbaa !6
  br label %423

288:                                              ; preds = %3
  %289 = icmp eq i32 %2, 0
  %290 = zext i1 %289 to i32
  store i32 %290, ptr @flag_no_nonansi_builtin, align 4, !tbaa !6
  br label %423

291:                                              ; preds = %3
  %292 = trunc i32 %2 to i8
  %293 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %294 = getelementptr inbounds %struct.cpp_options, ptr %293, i64 0, i32 34
  store i8 %292, ptr %294, align 8, !tbaa !59
  br label %423

295:                                              ; preds = %3
  store i32 %2, ptr @flag_optional_diags, align 4, !tbaa !6
  br label %423

296:                                              ; preds = %3
  %297 = trunc i32 %2 to i8
  %298 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %299 = getelementptr inbounds %struct.cpp_options, ptr %298, i64 0, i32 42
  store i8 %297, ptr %299, align 1, !tbaa !60
  br label %423

300:                                              ; preds = %3
  %301 = trunc i32 %2 to i8
  store i8 %301, ptr @flag_pch_preprocess, align 1, !tbaa !26
  br label %423

302:                                              ; preds = %3
  store i32 %2, ptr @flag_permissive, align 4, !tbaa !6
  br label %423

303:                                              ; preds = %3
  %304 = trunc i32 %2 to i8
  %305 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %306 = getelementptr inbounds %struct.cpp_options, ptr %305, i64 0, i32 32
  store i8 %304, ptr %306, align 2, !tbaa !61
  br label %423

307:                                              ; preds = %3
  store i32 %2, ptr @flag_replace_objc_classes, align 4, !tbaa !6
  br label %423

308:                                              ; preds = %3
  store i32 %2, ptr @flag_use_repository, align 4, !tbaa !6
  %309 = icmp eq i32 %2, 0
  br i1 %309, label %423, label %310

310:                                              ; preds = %308
  store i32 0, ptr @flag_implicit_templates, align 4, !tbaa !6
  br label %423

311:                                              ; preds = %3
  store i32 %2, ptr @flag_rtti, align 4, !tbaa !6
  br label %423

312:                                              ; preds = %3
  %313 = trunc i32 %2 to i8
  %314 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %315 = getelementptr inbounds %struct.cpp_options, ptr %314, i64 0, i32 33
  store i8 %313, ptr %315, align 1, !tbaa !62
  br label %423

316:                                              ; preds = %3
  store i32 %2, ptr @flag_detailed_statistics, align 4, !tbaa !6
  br label %423

317:                                              ; preds = %3
  %318 = add i32 %2, -1
  %319 = icmp ult i32 %318, 100
  br i1 %319, label %320, label %423

320:                                              ; preds = %317
  %321 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  store i32 %2, ptr %321, align 8, !tbaa !63
  br label %423

322:                                              ; preds = %3
  %323 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %324 = getelementptr inbounds %struct.cpp_options, ptr %323, i64 0, i32 37
  store ptr %1, ptr %324, align 8, !tbaa !64
  br label %423

325:                                              ; preds = %3
  %326 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %327 = getelementptr inbounds %struct.cpp_options, ptr %326, i64 0, i32 38
  store ptr %1, ptr %327, align 8, !tbaa !65
  br label %423

328:                                              ; preds = %3
  %329 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %330 = getelementptr inbounds %struct.cpp_options, ptr %329, i64 0, i32 39
  store ptr %1, ptr %330, align 8, !tbaa !66
  br label %423

331:                                              ; preds = %3, %3
  store i32 %2, ptr @max_tinst_depth, align 4, !tbaa !6
  br label %423

332:                                              ; preds = %3
  store i32 %2, ptr @flag_use_cxa_atexit, align 4, !tbaa !6
  br label %423

333:                                              ; preds = %3
  store i32 %2, ptr @flag_use_cxa_get_exception_ptr, align 4, !tbaa !6
  br label %423

334:                                              ; preds = %3
  %335 = trunc i32 %2 to i8
  %336 = load i8, ptr @visibility_options, align 4
  %337 = shl i8 %335, 1
  %338 = and i8 %337, 2
  %339 = and i8 %336, -3
  %340 = or disjoint i8 %339, %338
  store i8 %340, ptr @visibility_options, align 4
  br label %423

341:                                              ; preds = %3
  store i32 %2, ptr @flag_weak, align 4, !tbaa !6
  br label %423

342:                                              ; preds = %3
  store i32 %2, ptr @flag_threadsafe_statics, align 4, !tbaa !6
  br label %423

343:                                              ; preds = %3
  store i32 %2, ptr @flag_pretty_templates, align 4, !tbaa !6
  br label %423

344:                                              ; preds = %3
  store i32 %2, ptr @flag_zero_link, align 4, !tbaa !6
  br label %423

345:                                              ; preds = %3
  store i32 1, ptr @flag_gen_declaration, align 4, !tbaa !6
  br label %423

346:                                              ; preds = %3
  tail call void @set_struct_debug_option(ptr noundef nonnull @.str.18) #11
  br label %423

347:                                              ; preds = %3
  tail call void @set_struct_debug_option(ptr noundef nonnull @.str.19) #11
  br label %423

348:                                              ; preds = %3
  tail call void @set_struct_debug_option(ptr noundef %1) #11
  br label %423

349:                                              ; preds = %3
  %350 = tail call ptr @xstrdup(ptr noundef %1) #11
  tail call void @add_path(ptr noundef %350, i32 noundef 3, i32 noundef 0, i8 noundef zeroext 1) #11
  br label %423

351:                                              ; preds = %3, %3
  tail call fastcc void @defer_opt(i32 noundef %5, ptr noundef %1) #12
  br label %423

352:                                              ; preds = %3
  store ptr %1, ptr @imultilib, align 8, !tbaa !10
  br label %423

353:                                              ; preds = %3
  store ptr %1, ptr @iprefix, align 8, !tbaa !10
  br label %423

354:                                              ; preds = %3
  %355 = tail call ptr @xstrdup(ptr noundef %1) #11
  tail call void @add_path(ptr noundef %355, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #11
  br label %423

356:                                              ; preds = %3
  store ptr %1, ptr @sysroot, align 8, !tbaa !10
  br label %423

357:                                              ; preds = %3
  %358 = tail call ptr @xstrdup(ptr noundef %1) #11
  tail call void @add_path(ptr noundef %358, i32 noundef 2, i32 noundef 0, i8 noundef zeroext 1) #11
  br label %423

359:                                              ; preds = %3
  tail call fastcc void @add_prefixed_path(ptr noundef %1, i64 noundef 2) #12
  br label %423

360:                                              ; preds = %3
  tail call fastcc void @add_prefixed_path(ptr noundef %1, i64 noundef 1) #12
  br label %423

361:                                              ; preds = %3
  %362 = load ptr, ptr @parse_in, align 8, !tbaa !10
  tail call void @cpp_set_lang(ptr noundef %362, i32 noundef 9) #11
  %363 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %364 = getelementptr inbounds %struct.cpp_options, ptr %363, i64 0, i32 24
  store i8 0, ptr %364, align 2, !tbaa !20
  br label %423

365:                                              ; preds = %3
  %366 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %367 = getelementptr inbounds %struct.cpp_options, ptr %366, i64 0, i32 4
  store i8 1, ptr %367, align 2, !tbaa !24
  br label %423

368:                                              ; preds = %3
  store i1 true, ptr @std_inc, align 1
  br label %423

369:                                              ; preds = %3
  store i1 true, ptr @std_cxx_inc, align 1
  br label %423

370:                                              ; preds = %3
  %371 = load ptr, ptr @out_fname, align 8, !tbaa !10
  %372 = icmp eq ptr %371, null
  br i1 %372, label %373, label %374

373:                                              ; preds = %370
  store ptr %1, ptr @out_fname, align 8, !tbaa !10
  br label %423

374:                                              ; preds = %370
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.20) #11
  br label %423

375:                                              ; preds = %3, %3
  %376 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %377 = getelementptr inbounds %struct.cpp_options, ptr %376, i64 0, i32 31
  store i8 1, ptr %377, align 1, !tbaa !67
  %378 = getelementptr inbounds %struct.cpp_options, ptr %376, i64 0, i32 19
  store i8 1, ptr %378, align 1, !tbaa !48
  %379 = load i32, ptr @warn_pointer_sign, align 4, !tbaa !6
  %380 = icmp eq i32 %379, -1
  br i1 %380, label %381, label %382

381:                                              ; preds = %375
  store i32 1, ptr @warn_pointer_sign, align 4, !tbaa !6
  br label %382

382:                                              ; preds = %381, %375
  %383 = load i32, ptr @warn_overlength_strings, align 4, !tbaa !6
  %384 = icmp eq i32 %383, -1
  br i1 %384, label %385, label %386

385:                                              ; preds = %382
  store i32 1, ptr @warn_overlength_strings, align 4, !tbaa !6
  br label %386

386:                                              ; preds = %385, %382
  %387 = load i32, ptr @warn_main, align 4, !tbaa !6
  %388 = icmp eq i32 %387, -1
  br i1 %388, label %389, label %423

389:                                              ; preds = %386
  store i32 2, ptr @warn_main, align 4, !tbaa !6
  br label %423

390:                                              ; preds = %3
  store i32 1, ptr @print_struct_values, align 4, !tbaa !6
  br label %423

391:                                              ; preds = %3
  %392 = load ptr, ptr @stdout, align 8, !tbaa !10
  tail call void @c_common_print_pch_checksum(ptr noundef %392) #11
  store i8 1, ptr @exit_after_options, align 1, !tbaa !26
  br label %423

393:                                              ; preds = %3
  %394 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %395 = getelementptr inbounds %struct.cpp_options, ptr %394, i64 0, i32 23
  store i8 1, ptr %395, align 1, !tbaa !68
  br label %423

396:                                              ; preds = %3, %3
  br i1 %10, label %423, label %397

397:                                              ; preds = %396
  %398 = icmp eq i32 %5, 844
  %399 = zext i1 %398 to i32
  tail call fastcc void @set_std_cxx98(i32 noundef %399) #12
  br label %423

400:                                              ; preds = %3, %3
  br i1 %10, label %423, label %401

401:                                              ; preds = %400
  %402 = icmp eq i32 %5, 843
  %403 = zext i1 %402 to i32
  tail call fastcc void @set_std_cxx0x(i32 noundef %403) #12
  br label %423

404:                                              ; preds = %3, %3, %3, %3
  br i1 %10, label %423, label %405

405:                                              ; preds = %404
  %406 = icmp eq i32 %5, 860
  %407 = zext i1 %406 to i32
  tail call fastcc void @set_std_c89(i32 noundef %407, i32 noundef 1) #12
  br label %423

408:                                              ; preds = %3, %3
  br i1 %10, label %423, label %409

409:                                              ; preds = %408
  tail call fastcc void @set_std_c89(i32 noundef 0, i32 noundef 0) #12
  br label %423

410:                                              ; preds = %3, %3, %3, %3
  br i1 %10, label %423, label %411

411:                                              ; preds = %410
  tail call fastcc void @set_std_c99(i32 noundef 1) #12
  br label %423

412:                                              ; preds = %3, %3
  br i1 %10, label %423, label %413

413:                                              ; preds = %412
  tail call fastcc void @set_std_c99(i32 noundef 0) #12
  br label %423

414:                                              ; preds = %3
  %415 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %416 = getelementptr inbounds %struct.cpp_options, ptr %415, i64 0, i32 7
  store i8 1, ptr %416, align 1, !tbaa !69
  br label %423

417:                                              ; preds = %3
  %418 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %419 = getelementptr inbounds %struct.cpp_options, ptr %418, i64 0, i32 36
  store i8 1, ptr %419, align 2, !tbaa !70
  br label %423

420:                                              ; preds = %3
  store i32 1, ptr @flag_undef, align 4, !tbaa !6
  br label %423

421:                                              ; preds = %3
  store i1 true, ptr @verbose, align 1
  br label %423

422:                                              ; preds = %3
  store i32 %2, ptr @warn_psabi, align 4, !tbaa !6
  br label %423

423:                                              ; preds = %22, %233, %11, %412, %413, %410, %411, %408, %409, %404, %405, %400, %401, %396, %397, %386, %389, %373, %374, %317, %320, %308, %310, %235, %215, %216, %208, %210, %165, %177, %186, %183, %171, %97, %105, %44, %49, %3, %17, %422, %421, %420, %417, %414, %393, %391, %390, %369, %368, %365, %361, %360, %359, %357, %356, %354, %353, %352, %351, %349, %348, %347, %346, %345, %344, %343, %342, %341, %334, %333, %332, %331, %328, %325, %322, %316, %312, %311, %307, %303, %302, %300, %296, %295, %291, %288, %287, %286, %285, %3, %284, %283, %282, %281, %279, %276, %273, %272, %268, %267, %266, %265, %264, %263, %262, %259, %256, %255, %254, %253, %252, %251, %247, %240, %236, %230, %227, %226, %223, %222, %217, %207, %205, %203, %201, %197, %193, %189, %188, %187, %154, %150, %146, %145, %143, %142, %141, %137, %133, %129, %125, %110, %106, %72, %71, %70, %69, %66, %63, %62, %56, %51, %38, %37, %36, %32, %29, %28, %27
  %424 = phi i32 [ 1, %17 ], [ 1, %422 ], [ 1, %421 ], [ 1, %420 ], [ 1, %417 ], [ 1, %414 ], [ 1, %412 ], [ 1, %413 ], [ 1, %410 ], [ 1, %411 ], [ 1, %408 ], [ 1, %409 ], [ 1, %404 ], [ 1, %405 ], [ 1, %400 ], [ 1, %401 ], [ 1, %396 ], [ 1, %397 ], [ 1, %393 ], [ 1, %391 ], [ 1, %390 ], [ 1, %389 ], [ 1, %386 ], [ 1, %374 ], [ 1, %373 ], [ 1, %369 ], [ 1, %368 ], [ 1, %365 ], [ 1, %361 ], [ 1, %360 ], [ 1, %359 ], [ 1, %357 ], [ 1, %356 ], [ 1, %354 ], [ 1, %353 ], [ 1, %352 ], [ 1, %351 ], [ 1, %349 ], [ 1, %348 ], [ 1, %347 ], [ 1, %346 ], [ 1, %345 ], [ 1, %344 ], [ 1, %343 ], [ 1, %342 ], [ 1, %341 ], [ 1, %334 ], [ 1, %333 ], [ 1, %332 ], [ 1, %331 ], [ 1, %328 ], [ 1, %325 ], [ 1, %322 ], [ 1, %320 ], [ 1, %317 ], [ 1, %316 ], [ 1, %312 ], [ 1, %311 ], [ 1, %310 ], [ 1, %308 ], [ 1, %307 ], [ 1, %303 ], [ 1, %302 ], [ 1, %300 ], [ 1, %296 ], [ 1, %295 ], [ 1, %291 ], [ 1, %288 ], [ 1, %287 ], [ 1, %286 ], [ 1, %285 ], [ 1, %284 ], [ 1, %283 ], [ 1, %282 ], [ 1, %281 ], [ 1, %279 ], [ 1, %276 ], [ 1, %273 ], [ 1, %272 ], [ 1, %268 ], [ 1, %267 ], [ 1, %266 ], [ 1, %265 ], [ 1, %264 ], [ 1, %263 ], [ 1, %262 ], [ 1, %259 ], [ 1, %256 ], [ 1, %255 ], [ 1, %254 ], [ 1, %253 ], [ 1, %252 ], [ 1, %251 ], [ 1, %247 ], [ 1, %240 ], [ 1, %236 ], [ 1, %235 ], [ 1, %230 ], [ 1, %227 ], [ 1, %226 ], [ 1, %223 ], [ 1, %222 ], [ 1, %217 ], [ 1, %216 ], [ 1, %215 ], [ 1, %210 ], [ 1, %208 ], [ 1, %207 ], [ 1, %205 ], [ 1, %203 ], [ 1, %201 ], [ 1, %197 ], [ 1, %193 ], [ 1, %189 ], [ 1, %188 ], [ 1, %187 ], [ 1, %165 ], [ 1, %171 ], [ 1, %177 ], [ 1, %183 ], [ 1, %186 ], [ 1, %154 ], [ 1, %150 ], [ 1, %146 ], [ 1, %145 ], [ 1, %143 ], [ 1, %142 ], [ 1, %141 ], [ 1, %137 ], [ 1, %133 ], [ 1, %129 ], [ 1, %125 ], [ 1, %110 ], [ 1, %106 ], [ 1, %105 ], [ 1, %97 ], [ 1, %72 ], [ 1, %71 ], [ 1, %70 ], [ 1, %69 ], [ 1, %66 ], [ 1, %63 ], [ 1, %62 ], [ 1, %56 ], [ 1, %51 ], [ 1, %44 ], [ 1, %49 ], [ 1, %3 ], [ 1, %3 ], [ 1, %38 ], [ 1, %37 ], [ 1, %36 ], [ 1, %32 ], [ 1, %29 ], [ 1, %28 ], [ 1, %27 ], [ %26, %22 ], [ 0, %11 ], [ 0, %233 ]
  ret i32 %424
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc void @defer_opt(i32 noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = load ptr, ptr @deferred_opts, align 8, !tbaa !10
  %4 = load i64, ptr @deferred_count, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.deferred_opt, ptr %3, i64 %4
  store i32 %0, ptr %5, align 8, !tbaa !72
  %6 = getelementptr inbounds %struct.deferred_opt, ptr %3, i64 %4, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !74
  %7 = add i64 %4, 1
  store i64 %7, ptr @deferred_count, align 8, !tbaa !71
  ret void
}

; Function Attrs: optsize
declare void @add_path(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xstrdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @split_quote_chain() local_unnamed_addr #1

; Function Attrs: optsize
declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @set_Wformat(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @set_Wimplicit(i32 noundef %0) unnamed_addr #4 {
  store i32 %0, ptr @warn_implicit, align 4, !tbaa !6
  store i32 %0, ptr @warn_implicit_int, align 4, !tbaa !6
  store i32 %0, ptr @warn_implicit_function_declaration, align 4, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare void @set_Wstrict_aliasing(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @enable_warning_as_error(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_std_c89(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @parse_in, align 8, !tbaa !10
  %4 = icmp eq i32 %0, 0
  %5 = icmp eq i32 %1, 0
  %6 = select i1 %5, i32 0, i32 2
  %7 = select i1 %4, i32 %6, i32 3
  tail call void @cpp_set_lang(ptr noundef %3, i32 noundef %7) #11
  store i32 %1, ptr @flag_iso, align 4, !tbaa !6
  store i32 %1, ptr @flag_no_asm, align 4, !tbaa !6
  store i32 %1, ptr @flag_no_gnu_keywords, align 4, !tbaa !6
  store i32 %1, ptr @flag_no_nonansi_builtin, align 4, !tbaa !6
  store i32 %0, ptr @flag_isoc94, align 4, !tbaa !6
  store i32 0, ptr @flag_isoc99, align 4, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_std_cxx98(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @parse_in, align 8, !tbaa !10
  %3 = icmp eq i32 %0, 0
  %4 = select i1 %3, i32 5, i32 6
  tail call void @cpp_set_lang(ptr noundef %2, i32 noundef %4) #11
  store i32 %0, ptr @flag_no_gnu_keywords, align 4, !tbaa !6
  store i32 %0, ptr @flag_no_nonansi_builtin, align 4, !tbaa !6
  store i32 %0, ptr @flag_iso, align 4, !tbaa !6
  store i32 0, ptr @cxx_dialect, align 4, !tbaa !6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @handle_OPT_d(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %4, %6 ]
  %4 = getelementptr inbounds i8, ptr %3, i64 1
  %5 = load i8, ptr %3, align 1, !tbaa !26
  switch i8 %5, label %6 [
    i8 0, label %9
    i8 77, label %7
    i8 78, label %7
    i8 68, label %7
    i8 85, label %7
    i8 73, label %8
  ]

6:                                                ; preds = %2, %8, %7
  br label %2, !llvm.loop !75

7:                                                ; preds = %2, %2, %2, %2
  store i8 %5, ptr @flag_dump_macros, align 1, !tbaa !26
  br label %6

8:                                                ; preds = %2
  store i8 1, ptr @flag_dump_includes, align 1, !tbaa !26
  br label %6

9:                                                ; preds = %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @disable_builtin_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @set_struct_debug_option(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_prefixed_path(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %4 = load ptr, ptr @iprefix, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #12
  br label %10

8:                                                ; preds = %2
  %9 = load i64, ptr @cpp_GCC_INCLUDE_DIR_len, align 8, !tbaa !71
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ @cpp_GCC_INCLUDE_DIR, %8 ], [ %4, %6 ]
  %12 = phi i64 [ %9, %8 ], [ %7, %6 ]
  %13 = add i64 %12, %3
  %14 = add i64 %13, 1
  %15 = tail call ptr @xmalloc(i64 noundef %14) #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %11, i64 %12, i1 false)
  %16 = getelementptr inbounds i8, ptr %15, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %0, i64 %3, i1 false)
  %17 = getelementptr inbounds i8, ptr %15, i64 %13
  store i8 0, ptr %17, align 1, !tbaa !26
  %18 = trunc i64 %1 to i32
  tail call void @add_path(ptr noundef %15, i32 noundef %18, i32 noundef 0, i8 noundef zeroext 0) #11
  ret void
}

; Function Attrs: optsize
declare void @cpp_set_lang(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @c_common_print_pch_checksum(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_std_cxx0x(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @parse_in, align 8, !tbaa !10
  %3 = icmp eq i32 %0, 0
  %4 = select i1 %3, i32 7, i32 8
  tail call void @cpp_set_lang(ptr noundef %2, i32 noundef %4) #11
  store i32 %0, ptr @flag_no_gnu_keywords, align 4, !tbaa !6
  store i32 %0, ptr @flag_no_nonansi_builtin, align 4, !tbaa !6
  store i32 %0, ptr @flag_iso, align 4, !tbaa !6
  store i32 1, ptr @cxx_dialect, align 4, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_std_c99(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @parse_in, align 8, !tbaa !10
  %3 = icmp eq i32 %0, 0
  %4 = select i1 %3, i32 1, i32 4
  tail call void @cpp_set_lang(ptr noundef %2, i32 noundef %4) #11
  store i32 %0, ptr @flag_no_asm, align 4, !tbaa !6
  store i32 %0, ptr @flag_no_nonansi_builtin, align 4, !tbaa !6
  store i32 %0, ptr @flag_iso, align 4, !tbaa !6
  store i32 1, ptr @flag_isoc99, align 4, !tbaa !6
  store i32 1, ptr @flag_isoc94, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @c_common_post_options(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @in_fnames, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call ptr @xmalloc(i64 noundef 8) #11
  store ptr %5, ptr @in_fnames, align 8, !tbaa !10
  br label %10

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !10
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(2) @.str.7) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6, %4
  %11 = phi ptr [ %5, %4 ], [ %2, %6 ]
  store ptr @.str.21, ptr %11, align 8, !tbaa !10
  br label %12

12:                                               ; preds = %10, %6
  %13 = load ptr, ptr @out_fname, align 8, !tbaa !10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(2) @.str.7) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12
  store ptr @.str.21, ptr @out_fname, align 8, !tbaa !10
  br label %19

19:                                               ; preds = %18, %15
  %20 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %21 = getelementptr inbounds %struct.cpp_options, ptr %20, i64 0, i32 43
  %22 = load i32, ptr %21, align 8, !tbaa !38
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  tail call fastcc void @check_deps_environment_vars() #12
  br label %25

25:                                               ; preds = %24, %19
  tail call fastcc void @handle_deferred_opts() #12
  tail call fastcc void @sanitize_cpp_opts() #12
  %26 = load ptr, ptr @parse_in, align 8, !tbaa !10
  %27 = load ptr, ptr @sysroot, align 8, !tbaa !10
  %28 = load ptr, ptr @iprefix, align 8, !tbaa !10
  %29 = load ptr, ptr @imultilib, align 8, !tbaa !10
  %30 = load i1, ptr @std_inc, align 1
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load i1, ptr @std_cxx_inc, align 1
  %34 = xor i1 %33, true
  %35 = load i32, ptr @c_language, align 4
  %36 = and i32 %35, 2
  %37 = icmp ne i32 %36, 0
  %38 = select i1 %34, i1 %37, i1 false
  %39 = zext i1 %38 to i32
  %40 = load i1, ptr @verbose, align 1
  %41 = zext i1 %40 to i32
  tail call void @register_include_chains(ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, i32 noundef %32, i32 noundef %39, i32 noundef %41) #11
  %42 = load i32, ptr @c_language, align 4, !tbaa !6
  %43 = and i32 %42, 2
  %44 = icmp eq i32 %43, 0
  %45 = load i32, ptr @flag_excess_precision_cmdline, align 4, !tbaa !6
  br i1 %44, label %49, label %46

46:                                               ; preds = %25
  %47 = icmp eq i32 %45, 2
  br i1 %47, label %48, label %55

48:                                               ; preds = %46
  tail call void (ptr, ...) @sorry(ptr noundef nonnull @.str.22) #11
  br label %55

49:                                               ; preds = %25
  %50 = icmp eq i32 %45, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %49
  %52 = load i32, ptr @flag_iso, align 4, !tbaa !6
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 1, i32 2
  br label %55

55:                                               ; preds = %46, %48, %51
  %56 = phi i32 [ %54, %51 ], [ 1, %48 ], [ 1, %46 ]
  store i32 %56, ptr @flag_excess_precision_cmdline, align 4, !tbaa !6
  br label %57

57:                                               ; preds = %55, %49
  %58 = load i32, ptr @flag_gnu89_inline, align 4, !tbaa !6
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, ptr @flag_isoc99, align 4, !tbaa !6
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  store i32 %63, ptr @flag_gnu89_inline, align 4, !tbaa !6
  br label %70

64:                                               ; preds = %57
  %65 = icmp ne i32 %58, 0
  %66 = load i32, ptr @flag_isoc99, align 4
  %67 = icmp ne i32 %66, 0
  %68 = select i1 %65, i1 true, i1 %67
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.23) #11
  br label %70

70:                                               ; preds = %64, %69, %60
  %71 = load i32, ptr @flag_objc_sjlj_exceptions, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, ptr @flag_next_runtime, align 4, !tbaa !6
  store i32 %74, ptr @flag_objc_sjlj_exceptions, align 4, !tbaa !6
  br label %75

75:                                               ; preds = %73, %70
  %76 = phi i32 [ %74, %73 ], [ %71, %70 ]
  %77 = load i32, ptr @flag_objc_exceptions, align 4, !tbaa !6
  %78 = icmp eq i32 %77, 0
  %79 = icmp ne i32 %76, 0
  %80 = select i1 %78, i1 true, i1 %79
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  store i32 1, ptr @flag_exceptions, align 4, !tbaa !6
  br label %82

82:                                               ; preds = %81, %75
  %83 = load i32, ptr @warn_type_limits, align 4, !tbaa !6
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, ptr @extra_warnings, align 4, !tbaa !6
  store i32 %86, ptr @warn_type_limits, align 4, !tbaa !6
  br label %87

87:                                               ; preds = %85, %82
  %88 = load i32, ptr @warn_clobbered, align 4, !tbaa !6
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, ptr @extra_warnings, align 4, !tbaa !6
  store i32 %91, ptr @warn_clobbered, align 4, !tbaa !6
  br label %92

92:                                               ; preds = %90, %87
  %93 = load i32, ptr @warn_empty_body, align 4, !tbaa !6
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, ptr @extra_warnings, align 4, !tbaa !6
  store i32 %96, ptr @warn_empty_body, align 4, !tbaa !6
  br label %97

97:                                               ; preds = %95, %92
  %98 = load i32, ptr @warn_sign_compare, align 4, !tbaa !6
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, ptr @extra_warnings, align 4, !tbaa !6
  store i32 %101, ptr @warn_sign_compare, align 4, !tbaa !6
  br label %102

102:                                              ; preds = %100, %97
  %103 = load i32, ptr @warn_missing_field_initializers, align 4, !tbaa !6
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, ptr @extra_warnings, align 4, !tbaa !6
  store i32 %106, ptr @warn_missing_field_initializers, align 4, !tbaa !6
  br label %107

107:                                              ; preds = %105, %102
  %108 = load i32, ptr @warn_missing_parameter_type, align 4, !tbaa !6
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, ptr @extra_warnings, align 4, !tbaa !6
  store i32 %111, ptr @warn_missing_parameter_type, align 4, !tbaa !6
  br label %112

112:                                              ; preds = %110, %107
  %113 = load i32, ptr @warn_old_style_declaration, align 4, !tbaa !6
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, ptr @extra_warnings, align 4, !tbaa !6
  store i32 %116, ptr @warn_old_style_declaration, align 4, !tbaa !6
  br label %117

117:                                              ; preds = %115, %112
  %118 = load i32, ptr @warn_override_init, align 4, !tbaa !6
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i32, ptr @extra_warnings, align 4, !tbaa !6
  store i32 %121, ptr @warn_override_init, align 4, !tbaa !6
  br label %122

122:                                              ; preds = %120, %117
  %123 = load i32, ptr @warn_ignored_qualifiers, align 4, !tbaa !6
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32, ptr @extra_warnings, align 4, !tbaa !6
  store i32 %126, ptr @warn_ignored_qualifiers, align 4, !tbaa !6
  br label %127

127:                                              ; preds = %125, %122
  %128 = load i32, ptr @warn_pointer_sign, align 4, !tbaa !6
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 0, ptr @warn_pointer_sign, align 4, !tbaa !6
  br label %131

131:                                              ; preds = %130, %127
  %132 = load i32, ptr @warn_strict_aliasing, align 4, !tbaa !6
  %133 = icmp eq i32 %132, -1
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i32 0, ptr @warn_strict_aliasing, align 4, !tbaa !6
  br label %135

135:                                              ; preds = %134, %131
  %136 = load i32, ptr @warn_strict_overflow, align 4, !tbaa !6
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i32 0, ptr @warn_strict_overflow, align 4, !tbaa !6
  br label %139

139:                                              ; preds = %138, %135
  %140 = load i32, ptr @warn_jump_misses_init, align 4, !tbaa !6
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  store i32 0, ptr @warn_jump_misses_init, align 4, !tbaa !6
  br label %143

143:                                              ; preds = %142, %139
  %144 = load i32, ptr @warn_overlength_strings, align 4, !tbaa !6
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %150, label %146

146:                                              ; preds = %143
  %147 = load i32, ptr @c_language, align 4, !tbaa !6
  %148 = and i32 %147, 2
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %146, %143
  store i32 0, ptr @warn_overlength_strings, align 4, !tbaa !6
  br label %151

151:                                              ; preds = %150, %146
  %152 = load i32, ptr @warn_main, align 4, !tbaa !6
  switch i32 %152, label %166 [
    i32 -1, label %153
    i32 2, label %160
  ]

153:                                              ; preds = %151
  %154 = load i32, ptr @c_language, align 4, !tbaa !6
  %155 = and i32 %154, 2
  %156 = icmp ne i32 %155, 0
  %157 = load i32, ptr @flag_hosted, align 4
  %158 = icmp ne i32 %157, 0
  %159 = select i1 %156, i1 %158, i1 false
  br label %163

160:                                              ; preds = %151
  %161 = load i32, ptr @flag_hosted, align 4, !tbaa !6
  %162 = icmp ne i32 %161, 0
  br label %163

163:                                              ; preds = %153, %160
  %164 = phi i1 [ %162, %160 ], [ %159, %153 ]
  %165 = zext i1 %164 to i32
  store i32 %165, ptr @warn_main, align 4, !tbaa !6
  br label %166

166:                                              ; preds = %163, %151
  %167 = load i32, ptr @warn_sign_conversion, align 4, !tbaa !6
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %175

169:                                              ; preds = %166
  %170 = load i32, ptr @c_language, align 4, !tbaa !6
  %171 = and i32 %170, 2
  %172 = icmp eq i32 %171, 0
  %173 = load i32, ptr @warn_conversion, align 4
  %174 = select i1 %172, i32 %173, i32 0
  store i32 %174, ptr @warn_sign_conversion, align 4, !tbaa !6
  br label %175

175:                                              ; preds = %169, %166
  %176 = load i32, ptr @warn_enum_compare, align 4, !tbaa !6
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = load i32, ptr @c_language, align 4, !tbaa !6
  %180 = lshr i32 %179, 1
  %181 = and i32 %180, 1
  store i32 %181, ptr @warn_enum_compare, align 4, !tbaa !6
  br label %182

182:                                              ; preds = %178, %175
  %183 = load i32, ptr @warn_packed_bitfield_compat, align 4, !tbaa !6
  %184 = icmp eq i32 %183, -1
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  store i32 1, ptr @warn_packed_bitfield_compat, align 4, !tbaa !6
  br label %186

186:                                              ; preds = %185, %182
  %187 = load i32, ptr @warn_format, align 4, !tbaa !6
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %186
  %190 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 96, ptr noundef nonnull @.str.24) #11
  %191 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 93, ptr noundef nonnull @.str.25) #11
  %192 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 97, ptr noundef nonnull @.str.26) #11
  %193 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 94, ptr noundef nonnull @.str.27) #11
  %194 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 92, ptr noundef nonnull @.str.28) #11
  %195 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 95, ptr noundef nonnull @.str.29) #11
  br label %196

196:                                              ; preds = %189, %186
  %197 = load i32, ptr @warn_implicit_function_declaration, align 4, !tbaa !6
  %198 = icmp eq i32 %197, -1
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = load i32, ptr @flag_isoc99, align 4, !tbaa !6
  store i32 %200, ptr @warn_implicit_function_declaration, align 4, !tbaa !6
  br label %201

201:                                              ; preds = %199, %196
  %202 = load i32, ptr @cxx_dialect, align 4, !tbaa !6
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  store i32 0, ptr @warn_cxx0x_compat, align 4, !tbaa !6
  br label %205

205:                                              ; preds = %204, %201
  %206 = load i32, ptr @flag_preprocess_only, align 4, !tbaa !6
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %229, label %208

208:                                              ; preds = %205
  %209 = load ptr, ptr @out_fname, align 8, !tbaa !10
  %210 = load i8, ptr %209, align 1, !tbaa !26
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %208
  %213 = load ptr, ptr @stdout, align 8, !tbaa !10
  br label %216

214:                                              ; preds = %208
  %215 = tail call ptr @fopen_unlocked(ptr noundef nonnull %209, ptr noundef nonnull @.str.30) #11
  br label %216

216:                                              ; preds = %214, %212
  %217 = phi ptr [ %215, %214 ], [ %213, %212 ]
  store ptr %217, ptr @out_stream, align 8, !tbaa !10
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = load ptr, ptr @out_fname, align 8, !tbaa !10
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.31, ptr noundef %220) #11
  br label %262

221:                                              ; preds = %216
  %222 = load i32, ptr @num_in_fnames, align 4, !tbaa !6
  %223 = icmp ugt i32 %222, 1
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load ptr, ptr @progname, align 8, !tbaa !10
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.32, ptr noundef %225) #11
  %226 = load ptr, ptr @out_stream, align 8, !tbaa !10
  br label %227

227:                                              ; preds = %224, %221
  %228 = phi ptr [ %226, %224 ], [ %217, %221 ]
  tail call void @init_pp_output(ptr noundef %228) #11
  br label %230

229:                                              ; preds = %205
  tail call void @init_c_lex() #11
  store i32 0, ptr @input_location, align 4, !tbaa !6
  br label %230

230:                                              ; preds = %229, %227
  %231 = load ptr, ptr @parse_in, align 8, !tbaa !10
  %232 = tail call ptr @cpp_get_callbacks(ptr noundef %231) #11
  %233 = getelementptr inbounds %struct.cpp_callbacks, ptr %232, i64 0, i32 1
  store ptr @cb_file_change, ptr %233, align 8, !tbaa !76
  %234 = getelementptr inbounds %struct.cpp_callbacks, ptr %232, i64 0, i32 2
  store ptr @cb_dir_change, ptr %234, align 8, !tbaa !77
  %235 = load ptr, ptr @parse_in, align 8, !tbaa !10
  tail call void @cpp_post_options(ptr noundef %235) #11
  store i32 0, ptr @input_location, align 4, !tbaa !6
  %236 = load ptr, ptr @parse_in, align 8, !tbaa !10
  %237 = load ptr, ptr @in_fnames, align 8, !tbaa !10
  %238 = load ptr, ptr %237, align 8, !tbaa !10
  %239 = tail call ptr @cpp_read_main_file(ptr noundef %236, ptr noundef %238) #11
  store ptr %239, ptr @this_input_filename, align 8, !tbaa !10
  store ptr %239, ptr %0, align 8, !tbaa !10
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %246

241:                                              ; preds = %230
  %242 = load ptr, ptr @global_dc, align 8, !tbaa !10
  %243 = getelementptr inbounds %struct.diagnostic_context, ptr %242, i64 0, i32 1, i64 4
  %244 = load i32, ptr %243, align 8, !tbaa !6
  %245 = add nsw i32 %244, 1
  store i32 %245, ptr %243, align 8, !tbaa !6
  br label %262

246:                                              ; preds = %230
  %247 = load i32, ptr @flag_working_directory, align 4, !tbaa !6
  %248 = icmp eq i32 %247, 0
  %249 = load i32, ptr @flag_preprocess_only, align 4
  %250 = icmp eq i32 %249, 0
  %251 = select i1 %248, i1 true, i1 %250
  %252 = load i8, ptr @flag_no_line_commands, align 1
  %253 = icmp ne i8 %252, 0
  %254 = select i1 %251, i1 true, i1 %253
  br i1 %254, label %259, label %255

255:                                              ; preds = %246
  %256 = load ptr, ptr @parse_in, align 8, !tbaa !10
  %257 = tail call ptr @get_src_pwd() #11
  tail call void @pp_dir_change(ptr noundef %256, ptr noundef %257) #11
  %258 = load i32, ptr @flag_preprocess_only, align 4, !tbaa !6
  br label %259

259:                                              ; preds = %255, %246
  %260 = phi i32 [ %258, %255 ], [ %249, %246 ]
  %261 = trunc i32 %260 to i8
  br label %262

262:                                              ; preds = %259, %241, %219
  %263 = phi i8 [ 0, %219 ], [ 0, %241 ], [ %261, %259 ]
  ret i8 %263
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: read) uwtable
define internal fastcc void @check_deps_environment_vars() unnamed_addr #8 {
  %1 = tail call ptr @getenv(ptr noundef nonnull @.str.33) #12
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.cpp_options, ptr %4, i64 0, i32 43
  store i32 1, ptr %5, align 8, !tbaa !38
  br label %13

6:                                                ; preds = %0
  %7 = tail call ptr @getenv(ptr noundef nonnull @.str.34) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %11 = getelementptr inbounds %struct.cpp_options, ptr %10, i64 0, i32 43
  store i32 2, ptr %11, align 8, !tbaa !38
  %12 = getelementptr inbounds %struct.cpp_options, ptr %10, i64 0, i32 43, i32 3
  store i8 1, ptr %12, align 2, !tbaa !78
  br label %13

13:                                               ; preds = %3, %9
  %14 = phi ptr [ %7, %9 ], [ %1, %3 ]
  %15 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %14, i32 noundef 32) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %15, i64 1
  tail call fastcc void @defer_opt(i32 noundef 26, ptr noundef nonnull %18) #12
  store i8 0, ptr %15, align 1, !tbaa !26
  br label %19

19:                                               ; preds = %17, %13
  %20 = load ptr, ptr @deps_file, align 8, !tbaa !10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store ptr %14, ptr @deps_file, align 8, !tbaa !10
  br label %23

23:                                               ; preds = %22, %19
  store i1 true, ptr @deps_append, align 1
  store i1 true, ptr @deps_seen, align 1
  br label %24

24:                                               ; preds = %6, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @handle_deferred_opts() unnamed_addr #0 {
  %1 = load i1, ptr @deps_seen, align 1
  br i1 %1, label %2, label %29

2:                                                ; preds = %0
  %3 = load ptr, ptr @parse_in, align 8, !tbaa !10
  %4 = tail call ptr @cpp_get_deps(ptr noundef %3) #11
  %5 = load i64, ptr @deferred_count, align 8, !tbaa !71
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @deferred_opts, align 8, !tbaa !10
  br label %9

9:                                                ; preds = %7, %24
  %10 = phi i64 [ %25, %24 ], [ %5, %7 ]
  %11 = phi ptr [ %26, %24 ], [ %8, %7 ]
  %12 = phi i64 [ %27, %24 ], [ 0, %7 ]
  %13 = getelementptr inbounds %struct.deferred_opt, ptr %11, i64 %12
  %14 = load i32, ptr %13, align 8, !tbaa !72
  %15 = add i32 %14, -25
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %24

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.deferred_opt, ptr %11, i64 %12, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !74
  %20 = icmp eq i32 %14, 25
  %21 = zext i1 %20 to i32
  tail call void @deps_add_target(ptr noundef %4, ptr noundef %19, i32 noundef %21) #11
  %22 = load ptr, ptr @deferred_opts, align 8, !tbaa !10
  %23 = load i64, ptr @deferred_count, align 8, !tbaa !71
  br label %24

24:                                               ; preds = %9, %17
  %25 = phi i64 [ %10, %9 ], [ %23, %17 ]
  %26 = phi ptr [ %11, %9 ], [ %22, %17 ]
  %27 = add nuw i64 %12, 1
  %28 = icmp ult i64 %27, %25
  br i1 %28, label %9, label %29, !llvm.loop !79

29:                                               ; preds = %24, %2, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sanitize_cpp_opts() unnamed_addr #0 {
  %1 = load i1, ptr @deps_seen, align 1
  br i1 %1, label %2, label %8

2:                                                ; preds = %0
  %3 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.cpp_options, ptr %3, i64 0, i32 43
  %5 = load i32, ptr %4, align 8, !tbaa !38
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.35) #11
  br label %8

8:                                                ; preds = %7, %2, %0
  %9 = load i8, ptr @flag_dump_macros, align 1
  %10 = icmp eq i8 %9, 77
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i8 1, ptr @flag_no_output, align 1, !tbaa !26
  br label %12

12:                                               ; preds = %11, %8
  %13 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %14 = getelementptr inbounds %struct.cpp_options, ptr %13, i64 0, i32 52
  %15 = load i8, ptr %14, align 4, !tbaa !57
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.cpp_options, ptr %13, i64 0, i32 32
  %19 = load i8, ptr %18, align 2, !tbaa !61
  %20 = or i8 %19, %9
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17, %12
  %23 = load i8, ptr @flag_no_output, align 1, !tbaa !26
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %28

25:                                               ; preds = %17
  store i8 68, ptr @flag_dump_macros, align 1, !tbaa !26
  %26 = load i8, ptr @flag_no_output, align 1, !tbaa !26
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %32, label %30

28:                                               ; preds = %22
  %29 = icmp eq i8 %9, 77
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %28
  store i8 0, ptr @flag_dump_macros, align 1, !tbaa !26
  br label %31

31:                                               ; preds = %30, %28
  store i8 0, ptr @flag_dump_includes, align 1, !tbaa !26
  store i8 1, ptr @flag_no_line_commands, align 1, !tbaa !26
  br label %38

32:                                               ; preds = %25, %22
  %33 = getelementptr inbounds %struct.cpp_options, ptr %13, i64 0, i32 43, i32 1
  %34 = load i8, ptr %33, align 4, !tbaa !40
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.36) #11
  %37 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  br label %38

38:                                               ; preds = %32, %36, %31
  %39 = phi ptr [ %13, %32 ], [ %37, %36 ], [ %13, %31 ]
  %40 = load i32, ptr @flag_signed_char, align 4, !tbaa !6
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.cpp_options, ptr %39, i64 0, i32 48
  store i8 %42, ptr %43, align 8, !tbaa !80
  %44 = getelementptr inbounds %struct.cpp_options, ptr %39, i64 0, i32 51
  store i8 0, ptr %44, align 1, !tbaa !81
  %45 = load i32, ptr @warn_long_long, align 4, !tbaa !6
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %64

47:                                               ; preds = %38
  %48 = load i32, ptr @pedantic, align 4, !tbaa !6
  %49 = icmp ne i32 %48, 0
  %50 = load i32, ptr @warn_traditional, align 4
  %51 = icmp ne i32 %50, 0
  %52 = select i1 %49, i1 true, i1 %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load i32, ptr @c_language, align 4, !tbaa !6
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  %57 = load i32, ptr @flag_isoc99, align 4
  %58 = load i32, ptr @cxx_dialect, align 4
  %59 = select i1 %56, i32 %57, i32 %58
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i32
  br label %62

62:                                               ; preds = %47, %53
  %63 = phi i32 [ %61, %53 ], [ 0, %47 ]
  store i32 %63, ptr @warn_long_long, align 4, !tbaa !6
  br label %64

64:                                               ; preds = %62, %38
  %65 = phi i32 [ %63, %62 ], [ %45, %38 ]
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds %struct.cpp_options, ptr %39, i64 0, i32 18
  store i8 %66, ptr %67, align 8, !tbaa !82
  %68 = load i8, ptr @warn_variadic_macros, align 1, !tbaa !26
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %64
  %71 = load i32, ptr @pedantic, align 4, !tbaa !6
  %72 = icmp ne i32 %71, 0
  %73 = load i32, ptr @warn_traditional, align 4
  %74 = icmp ne i32 %73, 0
  %75 = select i1 %72, i1 true, i1 %74
  %76 = zext i1 %75 to i8
  br label %77

77:                                               ; preds = %70, %64
  %78 = phi i8 [ 0, %64 ], [ %76, %70 ]
  %79 = getelementptr inbounds %struct.cpp_options, ptr %39, i64 0, i32 21
  store i8 %78, ptr %79, align 1, !tbaa !83
  %80 = load i32, ptr @flag_working_directory, align 4, !tbaa !6
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, ptr @debug_info_level, align 4, !tbaa !6
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i32
  store i32 %85, ptr @flag_working_directory, align 4, !tbaa !6
  br label %86

86:                                               ; preds = %82, %77
  %87 = getelementptr inbounds %struct.cpp_options, ptr %39, i64 0, i32 52
  %88 = load i8, ptr %87, align 4, !tbaa !57
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %86
  %91 = load i8, ptr @warn_unused_macros, align 1, !tbaa !26
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.37) #11
  %94 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  br label %95

95:                                               ; preds = %93, %90
  %96 = phi ptr [ %94, %93 ], [ %39, %90 ]
  %97 = getelementptr inbounds %struct.cpp_options, ptr %96, i64 0, i32 36
  %98 = load i8, ptr %97, align 2, !tbaa !70
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.38) #11
  br label %101

101:                                              ; preds = %95, %100, %86
  ret void
}

; Function Attrs: optsize
declare void @register_include_chains(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sorry(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fopen_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @fatal_error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @init_pp_output(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @init_c_lex() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cb_file_change(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @flag_preprocess_only, align 4, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @pp_file_change(ptr noundef %1) #11
  br label %7

6:                                                ; preds = %2
  tail call void @fe_file_change(ptr noundef %1) #11
  br label %7

7:                                                ; preds = %6, %5
  %8 = icmp eq ptr %1, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.line_map, ptr %1, i64 0, i32 4
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.line_map, ptr %1, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !84
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %7
  tail call fastcc void @push_command_line_include() #12
  br label %18

18:                                               ; preds = %17, %13, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cb_dir_change(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = tail call zeroext i8 @set_src_pwd(ptr noundef %1) #11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.39) #11
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: optsize
declare void @cpp_post_options(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @cpp_read_main_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @pp_dir_change(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_src_pwd() local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cpp_get_deps(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @deps_add_target(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @pp_file_change(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @fe_file_change(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_command_line_include() unnamed_addr #0 {
  %1 = load i64, ptr @include_cursor, align 8, !tbaa !71
  %2 = load i64, ptr @deferred_count, align 8, !tbaa !71
  %3 = icmp ult i64 %1, %2
  br i1 %3, label %4, label %37

4:                                                ; preds = %0
  %5 = load ptr, ptr @deferred_opts, align 8, !tbaa !10
  %6 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  br label %7

7:                                                ; preds = %4, %31
  %8 = phi i64 [ %32, %31 ], [ %2, %4 ]
  %9 = phi ptr [ %34, %31 ], [ %6, %4 ]
  %10 = phi ptr [ %35, %31 ], [ %5, %4 ]
  %11 = phi i64 [ %33, %31 ], [ %1, %4 ]
  %12 = add nuw i64 %11, 1
  store i64 %12, ptr @include_cursor, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.cpp_options, ptr %9, i64 0, i32 32
  %14 = load i8, ptr %13, align 2, !tbaa !61
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.deferred_opt, ptr %10, i64 %11
  %18 = load i32, ptr %17, align 8, !tbaa !72
  %19 = icmp eq i32 %18, 740
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load ptr, ptr @parse_in, align 8, !tbaa !10
  %22 = getelementptr inbounds %struct.deferred_opt, ptr %10, i64 %11, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !74
  %24 = tail call zeroext i8 @cpp_push_include(ptr noundef %21, ptr noundef %23) #11
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %20
  %27 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %28 = load ptr, ptr @deferred_opts, align 8, !tbaa !10
  %29 = load i64, ptr @include_cursor, align 8, !tbaa !71
  %30 = load i64, ptr @deferred_count, align 8, !tbaa !71
  br label %31

31:                                               ; preds = %26, %7, %16
  %32 = phi i64 [ %8, %7 ], [ %8, %16 ], [ %30, %26 ]
  %33 = phi i64 [ %12, %7 ], [ %12, %16 ], [ %29, %26 ]
  %34 = phi ptr [ %9, %7 ], [ %9, %16 ], [ %27, %26 ]
  %35 = phi ptr [ %10, %7 ], [ %10, %16 ], [ %28, %26 ]
  %36 = icmp ult i64 %33, %32
  br i1 %36, label %7, label %37

37:                                               ; preds = %31, %0
  %38 = phi i64 [ %1, %0 ], [ %33, %31 ]
  %39 = phi i64 [ %2, %0 ], [ %32, %31 ]
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = add i64 %38, 1
  store i64 %42, ptr @include_cursor, align 8, !tbaa !71
  %43 = load i8, ptr @warn_unused_macros, align 1, !tbaa !26
  %44 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %45 = getelementptr inbounds %struct.cpp_options, ptr %44, i64 0, i32 28
  store i8 %43, ptr %45, align 2, !tbaa !86
  %46 = getelementptr inbounds %struct.cpp_options, ptr %44, i64 0, i32 32
  %47 = load i8, ptr %46, align 2, !tbaa !61
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load ptr, ptr @parse_in, align 8, !tbaa !10
  %51 = load ptr, ptr @this_input_filename, align 8, !tbaa !10
  tail call void @cpp_change_file(ptr noundef %50, i32 noundef 2, ptr noundef %51) #11
  %52 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  br label %53

53:                                               ; preds = %49, %41
  %54 = phi ptr [ %52, %49 ], [ %44, %41 ]
  %55 = getelementptr inbounds %struct.cpp_options, ptr %54, i64 0, i32 11
  %56 = load i8, ptr %55, align 1, !tbaa !37
  %57 = load ptr, ptr @line_table, align 8, !tbaa !10
  %58 = getelementptr inbounds %struct.line_maps, ptr %57, i64 0, i32 6
  store i8 %56, ptr %58, align 4, !tbaa !87
  br label %59

59:                                               ; preds = %20, %53, %37
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @cpp_push_include(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cpp_change_file(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @set_src_pwd(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @c_common_init() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 7), align 8, !tbaa !10
  %2 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1023
  %5 = zext nneg i32 %4 to i64
  %6 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %7 = getelementptr inbounds %struct.cpp_options, ptr %6, i64 0, i32 44
  store i64 %5, ptr %7, align 8, !tbaa !89
  %8 = load ptr, ptr @integer_types, align 16, !tbaa !10
  %9 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1023
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds %struct.cpp_options, ptr %6, i64 0, i32 45
  store i64 %12, ptr %13, align 8, !tbaa !90
  %14 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !10
  %15 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1023
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds %struct.cpp_options, ptr %6, i64 0, i32 46
  store i64 %18, ptr %19, align 8, !tbaa !91
  %20 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 2), align 16, !tbaa !10
  %21 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1023
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds %struct.cpp_options, ptr %6, i64 0, i32 47
  store i64 %24, ptr %25, align 8, !tbaa !92
  %26 = load i64, ptr %20, align 8
  %27 = lshr i64 %26, 21
  %28 = trunc i64 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.cpp_options, ptr %6, i64 0, i32 49
  store i8 %29, ptr %30, align 1, !tbaa !93
  %31 = getelementptr inbounds %struct.cpp_options, ptr %6, i64 0, i32 50
  store i8 0, ptr %31, align 2, !tbaa !94
  %32 = load ptr, ptr @parse_in, align 8, !tbaa !10
  tail call void @cpp_init_iconv(ptr noundef %32) #11
  %33 = load i32, ptr @version_flag, align 4, !tbaa !6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %0
  %36 = load ptr, ptr @stderr, align 8, !tbaa !10
  tail call void @c_common_print_pch_checksum(ptr noundef %36) #11
  br label %37

37:                                               ; preds = %35, %0
  tail call void @init_pragma() #11
  %38 = load i32, ptr @flag_preprocess_only, align 4, !tbaa !6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  tail call fastcc void @finish_options() #12
  %41 = load ptr, ptr @parse_in, align 8, !tbaa !10
  tail call void @preprocess_file(ptr noundef %41) #11
  br label %42

42:                                               ; preds = %37, %40
  %43 = phi i8 [ 0, %40 ], [ 1, %37 ]
  ret i8 %43
}

; Function Attrs: optsize
declare void @cpp_init_iconv(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @init_pragma() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_options() unnamed_addr #0 {
  %1 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %2 = getelementptr inbounds %struct.cpp_options, ptr %1, i64 0, i32 32
  %3 = load i8, ptr %2, align 2, !tbaa !61
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %77

5:                                                ; preds = %0
  %6 = load ptr, ptr @line_table, align 8, !tbaa !10
  %7 = tail call ptr @linemap_add(ptr noundef %6, i32 noundef 2, i32 noundef 0, ptr noundef nonnull @.str.40, i32 noundef 0) #11
  tail call void @cb_file_change(ptr poison, ptr noundef %7) #12
  %8 = load ptr, ptr @parse_in, align 8, !tbaa !10
  %9 = load i32, ptr @flag_hosted, align 4, !tbaa !6
  tail call void @cpp_init_builtins(ptr noundef %8, i32 noundef %9) #11
  %10 = load ptr, ptr @parse_in, align 8, !tbaa !10
  tail call void @c_cpp_builtins(ptr noundef %10) #11
  %11 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.cpp_options, ptr %11, i64 0, i32 31
  %13 = load i8, ptr %12, align 1, !tbaa !67
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.cpp_options, ptr %11, i64 0, i32 29
  %17 = load i8, ptr %16, align 1, !tbaa !95
  %18 = icmp eq i8 %17, 0
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %15, %5
  %21 = phi i8 [ 0, %5 ], [ %19, %15 ]
  %22 = getelementptr inbounds %struct.cpp_options, ptr %11, i64 0, i32 26
  store i8 %21, ptr %22, align 8, !tbaa !25
  %23 = load ptr, ptr @line_table, align 8, !tbaa !10
  %24 = tail call ptr @linemap_add(ptr noundef %23, i32 noundef 2, i32 noundef 0, ptr noundef nonnull @.str.41, i32 noundef 0) #11
  tail call void @cb_file_change(ptr poison, ptr noundef %24) #12
  %25 = load i64, ptr @deferred_count, align 8, !tbaa !71
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %83, label %29

27:                                               ; preds = %51
  %28 = icmp eq i64 %53, 0
  br i1 %28, label %83, label %55

29:                                               ; preds = %20, %51
  %30 = phi i64 [ %52, %51 ], [ 0, %20 ]
  %31 = load ptr, ptr @deferred_opts, align 8, !tbaa !10
  %32 = getelementptr inbounds %struct.deferred_opt, ptr %31, i64 %30
  %33 = load i32, ptr %32, align 8, !tbaa !72
  switch i32 %33, label %51 [
    i32 9, label %34
    i32 30, label %38
    i32 6, label %42
  ]

34:                                               ; preds = %29
  %35 = load ptr, ptr @parse_in, align 8, !tbaa !10
  %36 = getelementptr inbounds %struct.deferred_opt, ptr %31, i64 %30, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !74
  tail call void @cpp_define(ptr noundef %35, ptr noundef %37) #11
  br label %51

38:                                               ; preds = %29
  %39 = load ptr, ptr @parse_in, align 8, !tbaa !10
  %40 = getelementptr inbounds %struct.deferred_opt, ptr %31, i64 %30, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !74
  tail call void @cpp_undef(ptr noundef %39, ptr noundef %41) #11
  br label %51

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.deferred_opt, ptr %31, i64 %30, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !74
  %45 = load i8, ptr %44, align 1, !tbaa !26
  %46 = icmp eq i8 %45, 45
  %47 = load ptr, ptr @parse_in, align 8, !tbaa !10
  br i1 %46, label %48, label %50

48:                                               ; preds = %42
  %49 = getelementptr inbounds i8, ptr %44, i64 1
  tail call void @cpp_unassert(ptr noundef %47, ptr noundef nonnull %49) #11
  br label %51

50:                                               ; preds = %42
  tail call void @cpp_assert(ptr noundef %47, ptr noundef nonnull %44) #11
  br label %51

51:                                               ; preds = %29, %38, %48, %50, %34
  %52 = add nuw i64 %30, 1
  %53 = load i64, ptr @deferred_count, align 8, !tbaa !71
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %29, label %27, !llvm.loop !96

55:                                               ; preds = %27, %73
  %56 = phi i64 [ %74, %73 ], [ %53, %27 ]
  %57 = phi i64 [ %75, %73 ], [ 0, %27 ]
  %58 = load ptr, ptr @deferred_opts, align 8, !tbaa !10
  %59 = getelementptr inbounds %struct.deferred_opt, ptr %58, i64 %57
  %60 = load i32, ptr %59, align 8, !tbaa !72
  %61 = icmp eq i32 %60, 738
  br i1 %61, label %62, label %73

62:                                               ; preds = %55
  %63 = load ptr, ptr @parse_in, align 8, !tbaa !10
  %64 = getelementptr inbounds %struct.deferred_opt, ptr %58, i64 %57, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !74
  %66 = tail call zeroext i8 @cpp_push_include(ptr noundef %63, ptr noundef %65) #11
  %67 = icmp eq i8 %66, 0
  %68 = load i64, ptr @deferred_count, align 8, !tbaa !71
  br i1 %67, label %73, label %69

69:                                               ; preds = %62
  %70 = add i64 %68, 1
  store i64 %70, ptr @include_cursor, align 8, !tbaa !71
  %71 = load ptr, ptr @parse_in, align 8, !tbaa !10
  tail call void @cpp_scan_nooutput(ptr noundef %71) #11
  %72 = load i64, ptr @deferred_count, align 8, !tbaa !71
  br label %73

73:                                               ; preds = %69, %62, %55
  %74 = phi i64 [ %72, %69 ], [ %68, %62 ], [ %56, %55 ]
  %75 = add nuw i64 %57, 1
  %76 = icmp ult i64 %75, %74
  br i1 %76, label %55, label %83, !llvm.loop !97

77:                                               ; preds = %0
  %78 = getelementptr inbounds %struct.cpp_options, ptr %1, i64 0, i32 52
  %79 = load i8, ptr %78, align 4, !tbaa !57
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr @parse_in, align 8, !tbaa !10
  tail call void @cpp_init_special_builtins(ptr noundef %82) #11
  br label %83

83:                                               ; preds = %73, %20, %27, %77, %81
  store i64 0, ptr @include_cursor, align 8, !tbaa !71
  tail call fastcc void @push_command_line_include() #12
  ret void
}

; Function Attrs: optsize
declare void @preprocess_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @linemap_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cpp_init_builtins(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @c_cpp_builtins(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cpp_define(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cpp_undef(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cpp_unassert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cpp_assert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cpp_scan_nooutput(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cpp_init_special_builtins(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @c_common_parse_file(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr @c_language, align 4, !tbaa !6
  switch i32 %4, label %13 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %9
    i32 3, label %11
  ]

5:                                                ; preds = %3
  %6 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.42) #11
  br label %14

7:                                                ; preds = %3
  %8 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.43) #11
  br label %14

9:                                                ; preds = %3
  %10 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.44) #11
  br label %14

11:                                               ; preds = %3
  %12 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.45) #11
  br label %14

13:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 1271, ptr noundef nonnull @.str.47) #11
  br label %14

14:                                               ; preds = %5, %7, %9, %11, %13, %1
  br label %15

15:                                               ; preds = %14, %38
  %16 = phi i64 [ %34, %38 ], [ 0, %14 ]
  %17 = load ptr, ptr @debug_hooks, align 8, !tbaa !10
  %18 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %17, i64 0, i32 31
  %19 = load i32, ptr %18, align 8, !tbaa !98
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %17, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !100
  %24 = load ptr, ptr @this_input_filename, align 8, !tbaa !10
  tail call void %23(i32 noundef 0, ptr noundef %24) #11
  br label %25

25:                                               ; preds = %21, %15
  tail call fastcc void @finish_options() #12
  tail call void @pch_init() #11
  tail call void @push_file_scope() #11
  tail call void @c_parse_file() #11
  tail call void @finish_file() #11
  tail call void @pop_file_scope() #11
  %26 = load ptr, ptr @debug_hooks, align 8, !tbaa !10
  %27 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %26, i64 0, i32 31
  %28 = load i32, ptr %27, align 8, !tbaa !98
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %26, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !101
  tail call void %32(i32 noundef 0) #11
  br label %33

33:                                               ; preds = %30, %25
  %34 = add nuw nsw i64 %16, 1
  %35 = load i32, ptr @num_in_fnames, align 4, !tbaa !6
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load ptr, ptr @parse_in, align 8, !tbaa !10
  tail call void @cpp_undef_all(ptr noundef %39) #11
  %40 = load ptr, ptr @parse_in, align 8, !tbaa !10
  tail call void @cpp_clear_file_cache(ptr noundef %40) #11
  %41 = load ptr, ptr @parse_in, align 8, !tbaa !10
  %42 = load ptr, ptr @in_fnames, align 8, !tbaa !10
  %43 = getelementptr inbounds ptr, ptr %42, i64 %34
  %44 = load ptr, ptr %43, align 8, !tbaa !10
  %45 = tail call ptr @cpp_read_main_file(ptr noundef %41, ptr noundef %44) #11
  store ptr %45, ptr @this_input_filename, align 8, !tbaa !10
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %15

47:                                               ; preds = %38, %33
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @pch_init() local_unnamed_addr #1

; Function Attrs: optsize
declare void @push_file_scope() local_unnamed_addr #1

; Function Attrs: optsize
declare void @c_parse_file() local_unnamed_addr #1

; Function Attrs: optsize
declare void @finish_file() local_unnamed_addr #1

; Function Attrs: optsize
declare void @pop_file_scope() local_unnamed_addr #1

; Function Attrs: optsize
declare void @cpp_undef_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cpp_clear_file_cache(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @c_common_finish() local_unnamed_addr #0 {
  %1 = load ptr, ptr @cpp_opts, align 8, !tbaa !10
  %2 = getelementptr inbounds %struct.cpp_options, ptr %1, i64 0, i32 43
  %3 = load i32, ptr %2, align 8, !tbaa !38
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %0
  %6 = load ptr, ptr @global_dc, align 8, !tbaa !10
  %7 = getelementptr inbounds %struct.diagnostic_context, ptr %6, i64 0, i32 1, i64 4
  %8 = load i32, ptr %7, align 8, !tbaa !6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %5
  %11 = load ptr, ptr @deps_file, align 8, !tbaa !10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load ptr, ptr @out_stream, align 8, !tbaa !10
  br label %22

15:                                               ; preds = %10
  %16 = load i1, ptr @deps_append, align 1
  %17 = select i1 %16, ptr @.str.48, ptr @.str.30
  %18 = tail call ptr @fopen_unlocked(ptr noundef nonnull %11, ptr noundef nonnull %17) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load ptr, ptr @deps_file, align 8, !tbaa !10
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.49, ptr noundef %21) #11
  br label %22

22:                                               ; preds = %13, %20, %15, %5, %0
  %23 = phi ptr [ %18, %15 ], [ null, %20 ], [ %14, %13 ], [ null, %5 ], [ null, %0 ]
  %24 = load ptr, ptr @parse_in, align 8, !tbaa !10
  tail call void @cpp_finish(ptr noundef %24, ptr noundef %23) #11
  %25 = icmp eq ptr %23, null
  %26 = load ptr, ptr @out_stream, align 8
  %27 = icmp eq ptr %23, %26
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %39, label %29

29:                                               ; preds = %22
  %30 = tail call i32 @ferror(ptr noundef nonnull %23) #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = tail call i32 @fclose(ptr noundef nonnull %23) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32, %29
  %36 = load ptr, ptr @deps_file, align 8, !tbaa !10
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.50, ptr noundef %36) #11
  br label %37

37:                                               ; preds = %32, %35
  %38 = load ptr, ptr @out_stream, align 8, !tbaa !10
  br label %39

39:                                               ; preds = %37, %22
  %40 = phi ptr [ %38, %37 ], [ %26, %22 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = tail call i32 @ferror(ptr noundef nonnull %40) #12
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = tail call i32 @fclose(ptr noundef nonnull %40) #12
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45, %42
  %49 = load ptr, ptr @out_fname, align 8, !tbaa !10
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.51, ptr noundef %49) #11
  br label %50

50:                                               ; preds = %48, %45, %39
  ret void
}

; Function Attrs: optsize
declare void @cpp_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"diagnostic_context", !11, i64 0, !8, i64 8, !8, i64 56, !8, i64 57, !8, i64 60, !8, i64 3540, !8, i64 3541, !11, i64 3544, !11, i64 3552, !11, i64 3560, !11, i64 3568, !11, i64 3576, !7, i64 3584, !8, i64 3588}
!14 = !{!15, !7, i64 32}
!15 = !{!"pretty_print_info", !11, i64 0, !11, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !16, i64 28, !11, i64 40, !8, i64 48, !8, i64 49, !8, i64 50}
!16 = !{!"", !7, i64 0, !7, i64 4}
!17 = !{!15, !7, i64 28}
!18 = !{!19, !11, i64 96}
!19 = !{!"cpp_callbacks", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128}
!20 = !{!21, !8, i64 30}
!21 = !{!"cpp_options", !7, i64 0, !7, i64 4, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15, !8, i64 16, !8, i64 17, !8, i64 18, !8, i64 19, !8, i64 20, !8, i64 21, !8, i64 22, !8, i64 23, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27, !8, i64 28, !8, i64 29, !8, i64 30, !8, i64 31, !8, i64 32, !8, i64 33, !8, i64 34, !8, i64 35, !8, i64 36, !8, i64 37, !8, i64 38, !8, i64 39, !8, i64 40, !8, i64 41, !8, i64 42, !11, i64 48, !11, i64 56, !11, i64 64, !7, i64 72, !8, i64 76, !8, i64 77, !22, i64 80, !23, i64 88, !23, i64 96, !23, i64 104, !23, i64 112, !8, i64 120, !8, i64 121, !8, i64 122, !8, i64 123, !8, i64 124}
!22 = !{!"", !7, i64 0, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7}
!23 = !{!"long", !8, i64 0}
!24 = !{!21, !8, i64 10}
!25 = !{!21, !8, i64 32}
!26 = !{!8, !8, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!21, !7, i64 4}
!30 = !{!31, !7, i64 24}
!31 = !{!"cl_option", !11, i64 0, !11, i64 8, !32, i64 16, !8, i64 18, !7, i64 20, !7, i64 24, !11, i64 32, !7, i64 40, !7, i64 44}
!32 = !{!"short", !8, i64 0}
!33 = !{!34, !11, i64 0}
!34 = !{!"gcc_targetcm", !11, i64 0}
!35 = !{!21, !8, i64 11}
!36 = !{!21, !8, i64 12}
!37 = !{!21, !8, i64 17}
!38 = !{!21, !7, i64 80}
!39 = !{!21, !8, i64 87}
!40 = !{!21, !8, i64 84}
!41 = !{!21, !8, i64 85}
!42 = !{!21, !8, i64 21}
!43 = !{!21, !8, i64 19}
!44 = !{!21, !8, i64 26}
!45 = !{!21, !8, i64 28}
!46 = !{!21, !8, i64 41}
!47 = !{!21, !8, i64 18}
!48 = !{!21, !8, i64 25}
!49 = !{!13, !8, i64 57}
!50 = !{!21, !8, i64 76}
!51 = !{!21, !8, i64 20}
!52 = !{!21, !8, i64 22}
!53 = !{!21, !7, i64 72}
!54 = !{!21, !8, i64 23}
!55 = !{!21, !8, i64 33}
!56 = !{!31, !11, i64 0}
!57 = !{!21, !8, i64 124}
!58 = !{!21, !8, i64 31}
!59 = !{!21, !8, i64 40}
!60 = !{!21, !8, i64 77}
!61 = !{!21, !8, i64 38}
!62 = !{!21, !8, i64 39}
!63 = !{!21, !7, i64 0}
!64 = !{!21, !11, i64 48}
!65 = !{!21, !11, i64 56}
!66 = !{!21, !11, i64 64}
!67 = !{!21, !8, i64 37}
!68 = !{!21, !8, i64 29}
!69 = !{!21, !8, i64 13}
!70 = !{!21, !8, i64 42}
!71 = !{!23, !23, i64 0}
!72 = !{!73, !7, i64 0}
!73 = !{!"deferred_opt", !7, i64 0, !11, i64 8}
!74 = !{!73, !11, i64 8}
!75 = distinct !{!75, !28}
!76 = !{!19, !11, i64 8}
!77 = !{!19, !11, i64 16}
!78 = !{!21, !8, i64 86}
!79 = distinct !{!79, !28}
!80 = !{!21, !8, i64 120}
!81 = !{!21, !8, i64 123}
!82 = !{!21, !8, i64 24}
!83 = !{!21, !8, i64 27}
!84 = !{!85, !7, i64 16}
!85 = !{!"line_map", !11, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !8, i64 21, !7, i64 22}
!86 = !{!21, !8, i64 34}
!87 = !{!88, !8, i64 28}
!88 = !{!"line_maps", !11, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !8, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !11, i64 48}
!89 = !{!21, !23, i64 88}
!90 = !{!21, !23, i64 96}
!91 = !{!21, !23, i64 104}
!92 = !{!21, !23, i64 112}
!93 = !{!21, !8, i64 121}
!94 = !{!21, !8, i64 122}
!95 = !{!21, !8, i64 35}
!96 = distinct !{!96, !28}
!97 = distinct !{!97, !28}
!98 = !{!99, !7, i64 248}
!99 = !{!"gcc_debug_hooks", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !7, i64 248}
!100 = !{!99, !11, i64 40}
!101 = !{!99, !11, i64 48}

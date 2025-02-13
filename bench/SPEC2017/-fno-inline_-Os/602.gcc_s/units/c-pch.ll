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
%struct.c_pch_validity = type { i8, [1 x i8], ptr, i64 }
%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.c_pch_header = type { i64 }
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.anon, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon = type { i32, i8, i8, i8, i8 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.cpp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.line_maps = type { ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }

@lang_post_pch_load = dso_local local_unnamed_addr global ptr null, align 8
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
@flag_exceptions = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"-fexceptions\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"can%'t write %s: %m\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"can%'t seek in %s: %m\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"can%'t read %s: %m\00", align 1
@get_ident.result = internal global [8 x i8] zeroinitializer, align 8
@get_ident.c_language_chars = internal unnamed_addr constant [5 x i8] c"Co+O\00", align 1
@c_language = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"%s: too short to be a PCH file\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"%s: not compatible with this GCC version\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"%s: not for %s\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.16 = private unnamed_addr constant [19 x i8] c"%s: not a PCH file\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"%s: created by a different GCC executable\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"%s: created with -g%s, but used with -g%s\00", align 1
@debug_type_names = external local_unnamed_addr constant [0 x ptr], align 8
@.str.19 = private unnamed_addr constant [33 x i8] c"%s: settings for %s do not match\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"%s: had text segment at different address\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"calling fdopen\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"reading\00", align 1
@flag_preprocess_only = external local_unnamed_addr global i32, align 4
@.str.25 = private unnamed_addr constant [8 x i8] c"seeking\00", align 1
@line_table = external local_unnamed_addr global ptr, align 8
@host_hooks = external local_unnamed_addr constant %struct.host_hooks, align 8
@.str.26 = private unnamed_addr constant [62 x i8] c"pch_preprocess pragma should only be used with -fpreprocessed\00", align 1
@input_location = external local_unnamed_addr global i32, align 4
@.str.27 = private unnamed_addr constant [21 x i8] c"use #include instead\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"%s: couldn%'t open PCH file: %m\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"use -Winvalid-pch for more information\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"%s: PCH file was invalid\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"Compiler executable checksum: \00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pch_init() #0 !prof !38 {
  %1 = alloca %struct.c_pch_validity, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #12
  %2 = load i32, ptr @flag_verbose_asm, align 4, !tbaa !39
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4, !prof !43

4:                                                ; preds = %0
  %5 = load ptr, ptr @asm_out_file, align 8, !tbaa !44
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #13
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !44
  tail call void @c_common_print_pch_checksum(ptr noundef %7) #13
  %8 = load ptr, ptr @asm_out_file, align 8, !tbaa !44
  %9 = tail call i32 @fputc(i32 noundef 10, ptr noundef %8) #13
  br label %10

10:                                               ; preds = %4, %0
  %11 = load ptr, ptr @pch_file, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %65, label %13, !prof !43

13:                                               ; preds = %10
  %14 = tail call ptr @fopen_unlocked(ptr noundef nonnull %11, ptr noundef nonnull @.str.2) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load ptr, ptr @pch_file, align 8, !tbaa !44
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.3, ptr noundef %17) #14
  br label %18

18:                                               ; preds = %16, %13
  store ptr %14, ptr @pch_outfile, align 8, !tbaa !44
  %19 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) @executable_checksum, ptr noundef nonnull dereferenceable(16) @no_checksum, i64 16)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 135, ptr noundef nonnull @.str.5) #14
  br label %22

22:                                               ; preds = %18, %21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %23 = load i32, ptr @write_symbols, align 4, !tbaa !39
  %24 = trunc i32 %23 to i8
  store i8 %24, ptr %1, align 8, !tbaa !46
  %25 = load i32, ptr @flag_exceptions, align 4, !tbaa !39
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.c_pch_validity, ptr %1, i64 0, i32 1
  store i8 %26, ptr %27, align 1, !tbaa !49
  %28 = add i32 %25, 128
  %29 = icmp ult i32 %28, 256
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 144, ptr noundef nonnull @.str.5) #14
  br label %31

31:                                               ; preds = %30, %22
  %32 = getelementptr inbounds %struct.c_pch_validity, ptr %1, i64 0, i32 2
  store ptr @pch_init, ptr %32, align 8, !tbaa !50
  %33 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 74), align 8, !tbaa !51
  %34 = getelementptr inbounds %struct.c_pch_validity, ptr %1, i64 0, i32 3
  %35 = call ptr %33(ptr noundef nonnull %34) #14
  %36 = call i64 @fwrite(ptr noundef nonnull @pch_init.partial_pch, i64 noundef 8, i64 noundef 1, ptr noundef %14) #13
  %37 = icmp eq i64 %36, 1
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = call i64 @fwrite(ptr noundef nonnull @executable_checksum, i64 noundef 16, i64 noundef 1, ptr noundef %14) #13
  %40 = icmp eq i64 %39, 1
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = call i64 @fwrite(ptr noundef nonnull %1, i64 noundef 24, i64 noundef 1, ptr noundef %14) #13
  %43 = icmp eq i64 %42, 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i64, ptr %34, align 8, !tbaa !63
  %46 = call i64 @fwrite(ptr noundef %35, i64 noundef %45, i64 noundef 1, ptr noundef %14) #13
  %47 = icmp eq i64 %46, 1
  br i1 %47, label %50, label %48

48:                                               ; preds = %44, %41, %38, %31
  %49 = load ptr, ptr @pch_file, align 8, !tbaa !44
  call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.6, ptr noundef %49) #14
  br label %50

50:                                               ; preds = %48, %44
  %51 = load ptr, ptr @asm_file_name, align 8, !tbaa !44
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(2) @.str.7) #13
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %50
  call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.8, ptr noundef %51) #14
  br label %57

57:                                               ; preds = %56, %53
  %58 = load ptr, ptr @asm_out_file, align 8, !tbaa !44
  %59 = call i64 @ftell(ptr noundef %58) #13
  store i64 %59, ptr @asm_file_startpos, align 8, !tbaa !64
  %60 = load ptr, ptr @debug_hooks, align 8, !tbaa !44
  %61 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %60, i64 0, i32 23
  %62 = load ptr, ptr %61, align 8, !tbaa !65
  call void %62(i32 noundef 0) #14
  %63 = load ptr, ptr @parse_in, align 8, !tbaa !44
  %64 = call i32 @cpp_save_state(ptr noundef %63, ptr noundef %14) #14
  br label %65

65:                                               ; preds = %10, %57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @c_common_print_pch_checksum(ptr nocapture noundef %0) local_unnamed_addr #3 !prof !67 {
  %2 = tail call i32 @fputs(ptr noundef nonnull @.str.31, ptr noundef %0) #13
  br label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %9, %3 ]
  %5 = getelementptr inbounds [16 x i8], ptr @executable_checksum, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !49
  %7 = zext i8 %6 to i32
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %7) #13
  %9 = add nuw nsw i64 %4, 1
  %10 = icmp eq i64 %9, 16
  br i1 %10, label %11, label %3, !llvm.loop !68

11:                                               ; preds = %3
  %12 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #13
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fopen_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @fatal_error(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @cpp_save_state(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @c_common_write_pch() local_unnamed_addr #0 !prof !67 {
  %1 = alloca %struct.c_pch_header, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #12
  %2 = load ptr, ptr @debug_hooks, align 8, !tbaa !44
  %3 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %2, i64 0, i32 23
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  tail call void %4(i32 noundef 1) #14
  %5 = load ptr, ptr @parse_in, align 8, !tbaa !44
  %6 = load ptr, ptr @pch_outfile, align 8, !tbaa !44
  %7 = tail call i32 @cpp_write_pch_deps(ptr noundef %5, ptr noundef %6) #14
  %8 = load ptr, ptr @asm_out_file, align 8, !tbaa !44
  %9 = tail call i64 @ftell(ptr noundef %8) #13
  %10 = load i64, ptr @asm_file_startpos, align 8, !tbaa !64
  %11 = sub nsw i64 %9, %10
  store i64 %11, ptr %1, align 8, !tbaa !70
  %12 = load ptr, ptr @pch_outfile, align 8, !tbaa !44
  %13 = call i64 @fwrite(ptr noundef nonnull %1, i64 noundef 8, i64 noundef 1, ptr noundef %12) #13
  %14 = icmp eq i64 %13, 1
  br i1 %14, label %17, label %15

15:                                               ; preds = %0
  %16 = load ptr, ptr @pch_file, align 8, !tbaa !44
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.10, ptr noundef %16) #14
  br label %17

17:                                               ; preds = %15, %0
  %18 = tail call ptr @xmalloc(i64 noundef 16384) #14
  %19 = load ptr, ptr @asm_out_file, align 8, !tbaa !44
  %20 = load i64, ptr @asm_file_startpos, align 8, !tbaa !64
  %21 = tail call i32 @fseek(ptr noundef %19, i64 noundef %20, i32 noundef 0) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr @asm_file_name, align 8, !tbaa !44
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.11, ptr noundef %24) #14
  br label %25

25:                                               ; preds = %23, %17
  %26 = load i64, ptr @asm_file_startpos, align 8, !tbaa !64
  %27 = icmp slt i64 %26, %9
  br i1 %27, label %28, label %46

28:                                               ; preds = %25, %43
  %29 = phi i64 [ %44, %43 ], [ %26, %25 ]
  %30 = sub nsw i64 %9, %29
  %31 = tail call i64 @llvm.smin.i64(i64 %30, i64 16384)
  %32 = load ptr, ptr @asm_out_file, align 8, !tbaa !44
  %33 = tail call i64 @fread(ptr noundef %18, i64 noundef %31, i64 noundef 1, ptr noundef %32) #13
  %34 = icmp eq i64 %33, 1
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = load ptr, ptr @asm_file_name, align 8, !tbaa !44
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.12, ptr noundef %36) #14
  br label %37

37:                                               ; preds = %35, %28
  %38 = load ptr, ptr @pch_outfile, align 8, !tbaa !44
  %39 = tail call i64 @fwrite(ptr noundef %18, i64 noundef %31, i64 noundef 1, ptr noundef %38) #13
  %40 = icmp eq i64 %39, 1
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr @pch_file, align 8, !tbaa !44
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.10, ptr noundef %42) #14
  br label %43

43:                                               ; preds = %41, %37
  %44 = add nsw i64 %31, %29
  %45 = icmp slt i64 %44, %9
  br i1 %45, label %28, label %46, !llvm.loop !72

46:                                               ; preds = %43, %25
  tail call void @free(ptr noundef %18) #13
  %47 = load ptr, ptr @asm_out_file, align 8, !tbaa !44
  %48 = tail call i32 @fseek(ptr noundef %47, i64 noundef 0, i32 noundef 2) #13
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr @asm_file_name, align 8, !tbaa !44
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.11, ptr noundef %51) #14
  br label %52

52:                                               ; preds = %50, %46
  %53 = load ptr, ptr @pch_outfile, align 8, !tbaa !44
  tail call void @gt_pch_save(ptr noundef %53) #14
  %54 = load ptr, ptr @parse_in, align 8, !tbaa !44
  %55 = load ptr, ptr @pch_outfile, align 8, !tbaa !44
  %56 = tail call i32 @cpp_write_pch_state(ptr noundef %54, ptr noundef %55) #14
  %57 = load ptr, ptr @pch_outfile, align 8, !tbaa !44
  %58 = tail call i32 @fseek(ptr noundef %57, i64 noundef 0, i32 noundef 0) #13
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  tail call fastcc void @get_ident() #13
  %61 = load ptr, ptr @pch_outfile, align 8, !tbaa !44
  %62 = tail call i64 @fwrite(ptr noundef nonnull @get_ident.result, i64 noundef 8, i64 noundef 1, ptr noundef %61) #13
  %63 = icmp eq i64 %62, 1
  br i1 %63, label %66, label %64

64:                                               ; preds = %60, %52
  %65 = load ptr, ptr @pch_file, align 8, !tbaa !44
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.10, ptr noundef %65) #14
  br label %66

66:                                               ; preds = %64, %60
  %67 = load ptr, ptr @pch_outfile, align 8, !tbaa !44
  %68 = tail call i32 @fclose(ptr noundef %67) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #12
  ret void
}

; Function Attrs: optsize
declare i32 @cpp_write_pch_deps(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @gt_pch_save(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @cpp_write_pch_state(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @get_ident() unnamed_addr #8 !prof !67 !PGOFuncName !73 {
  store i64 3688782545671123047, ptr @get_ident.result, align 8
  %1 = load i32, ptr @c_language, align 4, !tbaa !39
  %2 = zext i32 %1 to i64
  %3 = getelementptr inbounds [5 x i8], ptr @get_ident.c_language_chars, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !49
  store i8 %4, ptr getelementptr inbounds ([8 x i8], ptr @get_ident.result, i64 0, i64 4), align 4, !tbaa !49
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @c_common_valid_pch(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !67 {
  %4 = alloca [24 x i8], align 16
  %5 = alloca %struct.c_pch_validity, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %6 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) @executable_checksum, ptr noundef nonnull dereferenceable(16) @no_checksum, i64 16)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 240, ptr noundef nonnull @.str.5) #14
  br label %9

9:                                                ; preds = %3, %8
  %10 = call i64 @read(i32 noundef %2, ptr noundef nonnull %4, i64 noundef 24) #14
  %11 = trunc i64 %10 to i32
  switch i32 %11, label %13 [
    i32 -1, label %12
    i32 24, label %20
  ]

12:                                               ; preds = %9
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.12, ptr noundef %1) #14
  br label %20

13:                                               ; preds = %9
  %14 = tail call ptr @cpp_get_options(ptr noundef %0) #14
  %15 = getelementptr inbounds %struct.cpp_options, ptr %14, i64 0, i32 41
  %16 = load i8, ptr %15, align 4, !tbaa !74
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %127, label %18

18:                                               ; preds = %13
  %19 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef %1) #14
  br label %127

20:                                               ; preds = %9, %12
  tail call fastcc void @get_ident() #13
  %21 = load i64, ptr %4, align 16
  %22 = load i64, ptr @get_ident.result, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %43, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @cpp_get_options(ptr noundef %0) #14
  %26 = getelementptr inbounds %struct.cpp_options, ptr %25, i64 0, i32 41
  %27 = load i8, ptr %26, align 4, !tbaa !74
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %127, label %29

29:                                               ; preds = %24
  %30 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %4, ptr noundef nonnull dereferenceable(5) @get_ident.result, i64 5)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef %1) #14
  br label %127

34:                                               ; preds = %29
  %35 = load i32, ptr %4, align 16
  %36 = load i32, ptr @get_ident.result, align 8
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load ptr, ptr @lang_hooks, align 8, !tbaa !77
  %40 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %1, ptr noundef %39) #14
  br label %127

41:                                               ; preds = %34
  %42 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef %1) #14
  br label %127

43:                                               ; preds = %20
  %44 = getelementptr inbounds i8, ptr %4, i64 8
  %45 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %44, ptr noundef nonnull dereferenceable(16) @executable_checksum, i64 16)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  %48 = tail call ptr @cpp_get_options(ptr noundef %0) #14
  %49 = getelementptr inbounds %struct.cpp_options, ptr %48, i64 0, i32 41
  %50 = load i8, ptr %49, align 4, !tbaa !74
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %127, label %52

52:                                               ; preds = %47
  %53 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef %1) #14
  br label %127

54:                                               ; preds = %43
  %55 = call i64 @read(i32 noundef %2, ptr noundef nonnull %5, i64 noundef 24) #14
  %56 = icmp eq i64 %55, 24
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.12, ptr noundef %1) #14
  br label %58

58:                                               ; preds = %57, %54
  %59 = load i8, ptr %5, align 8, !tbaa !46
  %60 = zext i8 %59 to i32
  %61 = load i32, ptr @write_symbols, align 4
  %62 = icmp ne i32 %61, %60
  %63 = icmp ne i32 %61, 0
  %64 = and i1 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %58
  %66 = tail call ptr @cpp_get_options(ptr noundef %0) #14
  %67 = getelementptr inbounds %struct.cpp_options, ptr %66, i64 0, i32 41
  %68 = load i8, ptr %67, align 4, !tbaa !74
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %127, label %70

70:                                               ; preds = %65
  %71 = zext i8 %59 to i64
  %72 = getelementptr inbounds [0 x ptr], ptr @debug_type_names, i64 0, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !44
  %74 = load i32, ptr @write_symbols, align 4, !tbaa !39
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [0 x ptr], ptr @debug_type_names, i64 0, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !44
  %78 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef %1, ptr noundef %73, ptr noundef %77) #14
  br label %127

79:                                               ; preds = %58
  %80 = load i32, ptr @flag_exceptions, align 4, !tbaa !39
  %81 = getelementptr inbounds %struct.c_pch_validity, ptr %5, i64 0, i32 1
  %82 = load i8, ptr %81, align 1, !tbaa !49
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %92, label %85, !llvm.loop !85

85:                                               ; preds = %79
  %86 = tail call ptr @cpp_get_options(ptr noundef %0) #14
  %87 = getelementptr inbounds %struct.cpp_options, ptr %86, i64 0, i32 41
  %88 = load i8, ptr %87, align 4, !tbaa !74
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %127, label %90

90:                                               ; preds = %85
  %91 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef %1, ptr noundef nonnull @.str.9) #14
  br label %127

92:                                               ; preds = %79
  %93 = getelementptr inbounds %struct.c_pch_validity, ptr %5, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !50
  %95 = icmp eq ptr %94, @pch_init
  br i1 %95, label %103, label %96

96:                                               ; preds = %92
  %97 = tail call ptr @cpp_get_options(ptr noundef %0) #14
  %98 = getelementptr inbounds %struct.cpp_options, ptr %97, i64 0, i32 41
  %99 = load i8, ptr %98, align 4, !tbaa !74
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %127, label %101

101:                                              ; preds = %96
  %102 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef %1) #14
  br label %127

103:                                              ; preds = %92
  %104 = getelementptr inbounds %struct.c_pch_validity, ptr %5, i64 0, i32 3
  %105 = load i64, ptr %104, align 8, !tbaa !63
  %106 = tail call ptr @xmalloc(i64 noundef %105) #14
  %107 = tail call i64 @read(i32 noundef %2, ptr noundef %106, i64 noundef %105) #14
  %108 = icmp eq i64 %107, %105
  br i1 %108, label %110, label %109

109:                                              ; preds = %103
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.12, ptr noundef %1) #14
  br label %110

110:                                              ; preds = %109, %103
  %111 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 75), align 8, !tbaa !86
  %112 = tail call ptr %111(ptr noundef %106, i64 noundef %105) #14
  tail call void @free(ptr noundef %106) #13
  %113 = icmp eq ptr %112, null
  br i1 %113, label %121, label %114

114:                                              ; preds = %110
  %115 = tail call ptr @cpp_get_options(ptr noundef %0) #14
  %116 = getelementptr inbounds %struct.cpp_options, ptr %115, i64 0, i32 41
  %117 = load i8, ptr %116, align 4, !tbaa !74
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %114
  %120 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef %1, ptr noundef nonnull %112) #14
  br label %127

121:                                              ; preds = %110
  %122 = tail call i32 @cpp_valid_state(ptr noundef %0, ptr noundef %1, i32 noundef %2) #14
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = icmp eq i32 %122, 0
  %126 = zext i1 %125 to i32
  br label %127

127:                                              ; preds = %119, %114, %90, %85, %121, %96, %101, %65, %70, %47, %52, %24, %38, %41, %32, %13, %18, %124
  %128 = phi i32 [ %126, %124 ], [ 2, %18 ], [ 2, %13 ], [ 2, %32 ], [ 2, %41 ], [ 2, %38 ], [ 2, %24 ], [ 2, %52 ], [ 2, %47 ], [ 2, %70 ], [ 2, %65 ], [ 2, %101 ], [ 2, %96 ], [ 2, %121 ], [ 2, %85 ], [ 2, %90 ], [ 2, %114 ], [ 2, %119 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  ret i32 %128
}

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @cpp_get_options(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @cpp_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @cpp_valid_state(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @c_common_read_pch(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture readnone %3) local_unnamed_addr #0 !prof !67 {
  %5 = alloca %struct.c_pch_header, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.expanded_location, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  %8 = tail call ptr @fdopen_unlocked(i32 noundef %2, ptr noundef nonnull @.str.22) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.23) #14
  %12 = tail call i32 @close(i32 noundef %2) #14
  br label %73

13:                                               ; preds = %4
  %14 = load ptr, ptr @parse_in, align 8, !tbaa !44
  %15 = tail call ptr @cpp_get_callbacks(ptr noundef %14) #14
  %16 = getelementptr inbounds %struct.cpp_callbacks, ptr %15, i64 0, i32 8
  store ptr null, ptr %16, align 8, !tbaa !87
  %17 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %8) #13
  %18 = icmp eq i64 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.24) #14
  %21 = tail call i32 @fclose(ptr noundef nonnull %8) #13
  br label %73

22:                                               ; preds = %13
  %23 = load i32, ptr @flag_preprocess_only, align 4, !tbaa !39
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = tail call ptr @xmalloc(i64 noundef 16384) #14
  %27 = load i64, ptr %5, align 8, !tbaa !70
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %25, %41
  %30 = phi i64 [ %42, %41 ], [ 0, %25 ]
  %31 = sub i64 %27, %30
  %32 = tail call i64 @llvm.smin.i64(i64 %31, i64 16384)
  %33 = tail call i64 @fread(ptr noundef %26, i64 noundef %32, i64 noundef 1, ptr noundef nonnull %8) #13
  %34 = icmp eq i64 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load ptr, ptr @asm_out_file, align 8, !tbaa !44
  %37 = tail call i64 @fwrite(ptr noundef %26, i64 noundef %32, i64 noundef 1, ptr noundef %36) #13
  %38 = icmp eq i64 %37, 1
  br i1 %38, label %41, label %39

39:                                               ; preds = %35, %29
  %40 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.24) #14
  br label %41

41:                                               ; preds = %39, %35
  %42 = add i64 %32, %30
  %43 = icmp ult i64 %42, %27
  br i1 %43, label %29, label %44, !llvm.loop !89

44:                                               ; preds = %41, %25
  tail call void @free(ptr noundef %26) #13
  br label %51

45:                                               ; preds = %22
  %46 = load i64, ptr %5, align 8, !tbaa !70
  %47 = tail call i32 @fseek(ptr noundef nonnull %8, i64 noundef %46, i32 noundef 1) #13
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.25) #14
  br label %51

51:                                               ; preds = %45, %49, %44
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
  %52 = load ptr, ptr @line_table, align 8, !tbaa !44
  %53 = getelementptr inbounds %struct.line_maps, ptr %52, i64 0, i32 8
  %54 = load i32, ptr %53, align 4, !tbaa !90
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %7, i32 noundef %54) #14
  %55 = load ptr, ptr %7, align 8, !tbaa.struct !92
  %56 = getelementptr inbounds i8, ptr %7, i64 8
  %57 = load i32, ptr %56, align 8, !tbaa.struct !93
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  %58 = load ptr, ptr @line_table, align 8, !tbaa !44
  %59 = getelementptr inbounds %struct.line_maps, ptr %58, i64 0, i32 6
  %60 = load i8, ptr %59, align 4, !tbaa !94
  call void @cpp_prepare_state(ptr noundef %0, ptr noundef nonnull %6) #14
  call void @gt_pch_restore(ptr noundef nonnull %8) #14
  %61 = load ptr, ptr %6, align 8, !tbaa !44
  %62 = call i32 @cpp_read_state(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef %61) #14
  %63 = icmp eq i32 %62, 0
  %64 = call i32 @fclose(ptr noundef nonnull %8) #13
  br i1 %63, label %65, label %73

65:                                               ; preds = %51
  %66 = load ptr, ptr @line_table, align 8, !tbaa !44
  %67 = getelementptr inbounds %struct.line_maps, ptr %66, i64 0, i32 6
  store i8 %60, ptr %67, align 4, !tbaa !94
  call void @cpp_set_line_map(ptr noundef %0, ptr noundef %66) #14
  %68 = load ptr, ptr @line_table, align 8, !tbaa !44
  %69 = call ptr @linemap_add(ptr noundef %68, i32 noundef 2, i32 noundef 0, ptr noundef %55, i32 noundef %57) #14
  %70 = load ptr, ptr @lang_post_pch_load, align 8, !tbaa !44
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  call void %70() #14
  br label %73

73:                                               ; preds = %51, %65, %72, %19, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret void
}

; Function Attrs: optsize
declare ptr @fdopen_unlocked(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @cpp_errno(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @cpp_get_callbacks(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @cpp_prepare_state(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gt_pch_restore(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @cpp_read_state(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @cpp_set_line_map(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @linemap_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @c_common_no_more_pch() local_unnamed_addr #0 !prof !38 {
  %1 = load ptr, ptr @parse_in, align 8, !tbaa !44
  %2 = tail call ptr @cpp_get_callbacks(ptr noundef %1) #14
  %3 = getelementptr inbounds %struct.cpp_callbacks, ptr %2, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !95

6:                                                ; preds = %0
  %7 = load ptr, ptr @parse_in, align 8, !tbaa !44
  %8 = tail call ptr @cpp_get_callbacks(ptr noundef %7) #14
  %9 = getelementptr inbounds %struct.cpp_callbacks, ptr %8, i64 0, i32 8
  store ptr null, ptr %9, align 8, !tbaa !87
  %10 = load ptr, ptr getelementptr inbounds (%struct.host_hooks, ptr @host_hooks, i64 0, i32 2), align 8, !tbaa !96
  %11 = tail call i32 %10(ptr noundef null, i64 noundef 0, i32 noundef -1, i64 noundef 0) #14
  br label %12

12:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @c_common_pch_pragma(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !67 {
  %3 = tail call ptr @cpp_get_options(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.cpp_options, ptr %3, i64 0, i32 32
  %5 = load i8, ptr %4, align 2, !tbaa !98
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.26) #14
  %8 = load i32, ptr @input_location, align 4, !tbaa !39
  tail call void (i32, ptr, ...) @inform(i32 noundef %8, ptr noundef nonnull @.str.27) #14
  br label %26

9:                                                ; preds = %2
  %10 = tail call i32 (ptr, i32, ...) @open(ptr noundef %1, i32 noundef 0, i32 noundef 438) #14
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.28, ptr noundef %1) #14
  br label %13

13:                                               ; preds = %12, %9
  %14 = tail call i32 @c_common_valid_pch(ptr noundef %0, ptr noundef %1, i32 noundef %10) #13, !range !99
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @cpp_get_options(ptr noundef %0) #14
  %18 = getelementptr inbounds %struct.cpp_options, ptr %17, i64 0, i32 41
  %19 = load i8, ptr %18, align 4, !tbaa !74
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, ptr @input_location, align 4, !tbaa !39
  tail call void (i32, ptr, ...) @inform(i32 noundef %22, ptr noundef nonnull @.str.29) #14
  br label %23

23:                                               ; preds = %21, %16
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.30, ptr noundef %1) #14
  br label %24

24:                                               ; preds = %23, %13
  tail call void @c_common_read_pch(ptr noundef %0, ptr noundef %1, i32 noundef %10, ptr poison) #13
  %25 = tail call i32 @close(i32 noundef %10) #14
  br label %26

26:                                               ; preds = %24, %7
  ret void
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!37}

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
!35 = distinct !{!36}
!36 = !{ptr @c_common_no_more_pch, ptr @cpp_get_callbacks, i64 2}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 1}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!"branch_weights", i32 2, i32 1}
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !41, i64 0}
!46 = !{!47, !41, i64 0}
!47 = !{!"c_pch_validity", !41, i64 0, !41, i64 1, !45, i64 8, !48, i64 16}
!48 = !{!"long", !41, i64 0}
!49 = !{!41, !41, i64 0}
!50 = !{!47, !45, i64 8}
!51 = !{!52, !45, i64 1360}
!52 = !{!"gcc_target", !53, i64 0, !55, i64 368, !56, i64 664, !40, i64 744, !45, i64 752, !45, i64 760, !45, i64 768, !45, i64 776, !45, i64 784, !45, i64 792, !45, i64 800, !45, i64 808, !45, i64 816, !45, i64 824, !45, i64 832, !45, i64 840, !45, i64 848, !45, i64 856, !45, i64 864, !45, i64 872, !45, i64 880, !45, i64 888, !45, i64 896, !45, i64 904, !45, i64 912, !45, i64 920, !45, i64 928, !45, i64 936, !45, i64 944, !45, i64 952, !45, i64 960, !45, i64 968, !45, i64 976, !45, i64 984, !45, i64 992, !45, i64 1000, !45, i64 1008, !45, i64 1016, !45, i64 1024, !45, i64 1032, !45, i64 1040, !45, i64 1048, !45, i64 1056, !48, i64 1064, !48, i64 1072, !45, i64 1080, !45, i64 1088, !45, i64 1096, !45, i64 1104, !45, i64 1112, !45, i64 1120, !45, i64 1128, !45, i64 1136, !45, i64 1144, !45, i64 1152, !45, i64 1160, !45, i64 1168, !57, i64 1176, !45, i64 1232, !45, i64 1240, !45, i64 1248, !45, i64 1256, !45, i64 1264, !45, i64 1272, !45, i64 1280, !45, i64 1288, !45, i64 1296, !45, i64 1304, !45, i64 1312, !45, i64 1320, !45, i64 1328, !45, i64 1336, !45, i64 1344, !45, i64 1352, !45, i64 1360, !45, i64 1368, !45, i64 1376, !45, i64 1384, !45, i64 1392, !45, i64 1400, !45, i64 1408, !45, i64 1416, !45, i64 1424, !45, i64 1432, !45, i64 1440, !45, i64 1448, !45, i64 1456, !48, i64 1464, !58, i64 1472, !45, i64 1664, !45, i64 1672, !45, i64 1680, !45, i64 1688, !45, i64 1696, !45, i64 1704, !45, i64 1712, !45, i64 1720, !45, i64 1728, !45, i64 1736, !45, i64 1744, !45, i64 1752, !45, i64 1760, !45, i64 1768, !45, i64 1776, !59, i64 1784, !60, i64 1792, !61, i64 1896, !62, i64 1968, !45, i64 2016, !41, i64 2024, !41, i64 2025, !41, i64 2026, !41, i64 2027, !41, i64 2028, !41, i64 2029, !41, i64 2030, !41, i64 2031, !41, i64 2032, !41, i64 2033, !41, i64 2034, !41, i64 2035}
!53 = !{!"asm_out", !45, i64 0, !45, i64 8, !45, i64 16, !54, i64 24, !54, i64 56, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !45, i64 184, !45, i64 192, !45, i64 200, !45, i64 208, !45, i64 216, !45, i64 224, !45, i64 232, !45, i64 240, !45, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !45, i64 280, !45, i64 288, !45, i64 296, !45, i64 304, !45, i64 312, !45, i64 320, !45, i64 328, !45, i64 336, !45, i64 344, !45, i64 352, !45, i64 360}
!54 = !{!"asm_int_op", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24}
!55 = !{!"sched", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !45, i64 184, !45, i64 192, !45, i64 200, !45, i64 208, !45, i64 216, !45, i64 224, !45, i64 232, !45, i64 240, !45, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !45, i64 280, !45, i64 288}
!56 = !{!"vectorize", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72}
!57 = !{!"addr_space", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48}
!58 = !{!"calls", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !45, i64 184}
!59 = !{!"c", !45, i64 0}
!60 = !{!"cxx", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96}
!61 = !{!"emutls", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !41, i64 64, !41, i64 65}
!62 = !{!"target_option_hooks", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40}
!63 = !{!47, !48, i64 16}
!64 = !{!48, !48, i64 0}
!65 = !{!66, !45, i64 184}
!66 = !{!"gcc_debug_hooks", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !45, i64 184, !45, i64 192, !45, i64 200, !45, i64 208, !45, i64 216, !45, i64 224, !45, i64 232, !45, i64 240, !40, i64 248}
!67 = !{!"function_entry_count", i64 0}
!68 = distinct !{!68, !69}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!71, !48, i64 0}
!71 = !{!"c_pch_header", !48, i64 0}
!72 = distinct !{!72, !69}
!73 = !{!"c-pch.c:get_ident"}
!74 = !{!75, !41, i64 76}
!75 = !{!"cpp_options", !40, i64 0, !40, i64 4, !41, i64 8, !41, i64 9, !41, i64 10, !41, i64 11, !41, i64 12, !41, i64 13, !41, i64 14, !41, i64 15, !41, i64 16, !41, i64 17, !41, i64 18, !41, i64 19, !41, i64 20, !41, i64 21, !41, i64 22, !41, i64 23, !41, i64 24, !41, i64 25, !41, i64 26, !41, i64 27, !41, i64 28, !41, i64 29, !41, i64 30, !41, i64 31, !41, i64 32, !41, i64 33, !41, i64 34, !41, i64 35, !41, i64 36, !41, i64 37, !41, i64 38, !41, i64 39, !41, i64 40, !41, i64 41, !41, i64 42, !45, i64 48, !45, i64 56, !45, i64 64, !40, i64 72, !41, i64 76, !41, i64 77, !76, i64 80, !48, i64 88, !48, i64 96, !48, i64 104, !48, i64 112, !41, i64 120, !41, i64 121, !41, i64 122, !41, i64 123, !41, i64 124}
!76 = !{!"", !40, i64 0, !41, i64 4, !41, i64 5, !41, i64 6, !41, i64 7}
!77 = !{!78, !45, i64 0}
!78 = !{!"lang_hooks", !45, i64 0, !48, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !45, i64 184, !45, i64 192, !45, i64 200, !45, i64 208, !45, i64 216, !45, i64 224, !45, i64 232, !79, i64 240, !80, i64 248, !81, i64 256, !82, i64 272, !83, i64 432, !84, i64 560, !45, i64 584, !45, i64 592, !45, i64 600, !45, i64 608, !45, i64 616, !45, i64 624, !45, i64 632, !45, i64 640, !45, i64 648, !45, i64 656, !45, i64 664, !41, i64 672}
!79 = !{!"lang_hooks_for_tree_inlining", !45, i64 0}
!80 = !{!"lang_hooks_for_callgraph", !45, i64 0}
!81 = !{!"lang_hooks_for_tree_dump", !45, i64 0, !45, i64 8}
!82 = !{!"lang_hooks_for_decls", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152}
!83 = !{!"lang_hooks_for_types", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !41, i64 120}
!84 = !{!"lang_hooks_for_lto", !45, i64 0, !45, i64 8, !45, i64 16}
!85 = distinct !{!85, !69}
!86 = !{!52, !45, i64 1368}
!87 = !{!88, !45, i64 64}
!88 = !{!"cpp_callbacks", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !45, i64 128}
!89 = distinct !{!89, !69}
!90 = !{!91, !40, i64 36}
!91 = !{!"line_maps", !45, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !41, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !45, i64 48}
!92 = !{i64 0, i64 8, !44, i64 8, i64 4, !39, i64 12, i64 4, !39, i64 16, i64 1, !49}
!93 = !{i64 0, i64 4, !39, i64 4, i64 4, !39, i64 8, i64 1, !49}
!94 = !{!91, !41, i64 28}
!95 = !{!"branch_weights", i32 1, i32 2}
!96 = !{!97, !45, i64 16}
!97 = !{!"host_hooks", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24}
!98 = !{!75, !41, i64 38}
!99 = !{i32 0, i32 3}

; ModuleID = 'imainarg.c'
source_filename = "imainarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_s = type { %struct.gs_memory_procs_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.arg_list_s = type { i32, ptr, ptr, ptr, i32, i32, [513 x i8], [10 x %struct.arg_source_s] }
%struct.arg_source_s = type { i32, %union._u }
%union._u = type { ptr }
%struct.gs_main_instance_s = type { ptr, ptr, ptr, i32, i64, i32, i32, i32, i32, %struct.gs_file_path_s }
%struct.gs_file_path_s = type { %struct.ref_s, %struct.ref_s, ptr, ptr, i32 }
%struct.stream_s = type { ptr, ptr, ptr, %union.stream_cursor_s, ptr, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, ptr, i32, i32, ptr, i16, i16, ptr, ptr, i32, ptr, i32, ptr }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.gs_string_s = type { ptr, i32 }
%struct.stream_procs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scanner_state_s = type { i32, i32, i32, i32, %struct.dynamic_area_s, %union.sss_ }
%struct.dynamic_area_s = type { %struct.gs_string_s, ptr, ptr, ptr, i32, [257 x i8], ptr }
%union.sss_ = type { %struct.scan_binary_state_s }
%struct.scan_binary_state_s = type { i32, ptr, %struct.ref_s, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"GS_LIB\00", align 1
@gs_memory_default = external global %struct.gs_memory_s, align 8
@gs_lib_default_path = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"GS_OPTIONS\00", align 1
@gs_stdout = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"Unknown switch %s - ignoring\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"systemdict /start get exec\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"-dNOPAUSE\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c".runstdin\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"Usage: gs ... -%c file.ps arg1 ... argn\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"userdict/ARGUMENTS[\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"]put\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c".runfile\00", align 1
@gs_debug = external local_unnamed_addr global [128 x i8], align 16
@.str.15 = private unnamed_addr constant [29 x i8] c"-A may only be followed by -\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c".runstring\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"-E may only be followed by -\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"%ldx%ld\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"-g must be followed by <width>x<height>\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"DEVICEWIDTH\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"DEVICEHEIGHT\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"FIXEDMEDIA\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"-K<numK> must have 1 <= numK <= %ld\0A\00", align 1
@gs_malloc_limit = external local_unnamed_addr global i64, align 8
@.str.25 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"Only -P or -P- is allowed.\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"QUIET\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"%fx%f\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"-r must be followed by <res> or <xres>x<yres>\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"DEVICEXRESOLUTION\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"DEVICEYRESOLUTION\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"FIXEDRESOLUTION\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"Usage: -dname, -dname=token, -sname=string\00", align 1
@gs_imemory = external global %struct.gs_dual_memory_s, align 8
@.str.36 = private unnamed_addr constant [42 x i8] c"-dname= must be followed by a valid token\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.40 = private unnamed_addr constant [46 x i8] c"-dvar=name requires name=null, true, or false\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@gs_stderr = external local_unnamed_addr global ptr, align 8
@gs_product = external local_unnamed_addr global ptr, align 8
@.str.42 = private unnamed_addr constant [11 x i8] c"imainarg.c\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"Out of memory!\0A\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"-u requires a name to undefine.\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"\8E\03abc\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"== flush\0A\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"argproc\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c" (%d-%d-%d)\0A%s\0A\00", align 1
@gs_revisiondate = external local_unnamed_addr global i64, align 8
@gs_copyright = external local_unnamed_addr global ptr, align 8
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@.str.51 = private unnamed_addr constant [35 x i8] c"Unrecoverable error, exit code %d\0A\00", align 1
@help_usage1 = internal constant [262 x i8] c"Usage: gs [switches] [file1.ps file2.ps ...]\0AMost frequently used switches: (you can use # in place of =)\0A -dNOPAUSE           no pause after page   | -q       `quiet', fewer messages\0A -g<width>x<height>  page size in pixels   | -r<res>  pixels/inch resolution\0A\00", align 16
@help_usage2 = internal constant [218 x i8] c" -sDEVICE=<devname>  select device         | -dBATCH  exit after last file\0A -sOutputFile=<file> select output file: - for stdout, |command for pipe,\0A                                         embed %d or %ld for page #\0A\00", align 16
@help_emulators = internal constant [15 x i8] c"Input formats:\00", align 1
@gs_emulator_name_array = external local_unnamed_addr global [0 x %struct.ref_s], align 8
@.str.53 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@help_devices = internal constant [19 x i8] c"Available devices:\00", align 16
@.str.55 = private unnamed_addr constant [4 x i8] c"\0A  \00", align 1
@help_paths = internal constant [13 x i8] c"Search path:\00", align 1
@gp_file_name_list_separator = external local_unnamed_addr constant i8, align 1
@help_trailer = internal constant [89 x i8] c"For more information, see %s%suse.txt.\0AReport bugs to %s; use the form in bug-form.txt.\0A\00", align 16
@gs_doc_directory = external local_unnamed_addr global ptr, align 8
@.str.58 = private unnamed_addr constant [8 x i8] c"use.txt\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"ghost@aladdin.com\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"%d.%02d\00", align 1
@gs_revision = external local_unnamed_addr global i64, align 8

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_main_init_with_args(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.arg_list_s, align 8
  %5 = alloca [3 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 720, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @gs_get_real_stdio(ptr noundef nonnull %5) #10
  call void @arg_init(ptr noundef nonnull %4, ptr noundef %2, i32 noundef %1, ptr noundef nonnull @gs_main_arg_fopen, ptr noundef %0) #10
  %6 = load ptr, ptr %5, align 16, !tbaa !5
  %7 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 2
  %10 = load ptr, ptr %9, align 16, !tbaa !5
  call void @gs_main_init0(ptr noundef %0, ptr noundef %6, ptr noundef %8, ptr noundef %10, i32 noundef 25) #10
  %11 = call ptr @getenv(ptr noundef nonnull @.str)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #11
  %15 = trunc i64 %14 to i32
  %16 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 4), align 8, !tbaa !9
  %17 = add nsw i32 %15, 1
  %18 = call ptr %16(ptr noundef nonnull @gs_memory_default, i32 noundef %17, i32 noundef 1, ptr noundef nonnull @.str) #10
  %19 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) %11) #10
  %20 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 2
  store ptr %18, ptr %20, align 8, !tbaa !12
  br label %21

21:                                               ; preds = %13, %3
  %22 = load ptr, ptr @gs_lib_default_path, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 3
  store ptr %22, ptr %23, align 8, !tbaa !20
  call void @gs_main_set_lib_paths(ptr noundef %0) #10
  %24 = icmp sgt i32 %1, 1
  br i1 %24, label %25, label %59

25:                                               ; preds = %21
  %26 = zext nneg i32 %1 to i64
  br label %27

27:                                               ; preds = %25, %51
  %28 = phi i64 [ 1, %25 ], [ %53, %51 ]
  %29 = phi i32 [ 0, %25 ], [ %52, %51 ]
  %30 = getelementptr inbounds ptr, ptr %2, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(3) @.str.1) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %55, label %34

34:                                               ; preds = %27
  %35 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(7) @.str.2) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  call fastcc void @print_help(ptr noundef %0)
  br label %51

38:                                               ; preds = %34
  %39 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(10) @.str.3) #11
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %43 = load i64, ptr @gs_revision, align 8, !tbaa !21
  %44 = sdiv i64 %43, 100
  %45 = trunc i64 %44 to i32
  %46 = srem i64 %43, 100
  %47 = trunc i64 %46 to i32
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.60, i32 noundef %45, i32 noundef %47)
  %49 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4)
  br label %51

51:                                               ; preds = %38, %41, %37
  %52 = phi i32 [ %29, %38 ], [ 1, %41 ], [ 1, %37 ]
  %53 = add nuw nsw i64 %28, 1
  %54 = icmp eq i64 %53, %26
  br i1 %54, label %55, label %27, !llvm.loop !22

55:                                               ; preds = %27, %51
  %56 = phi i32 [ %52, %51 ], [ 0, %27 ]
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call void @gs_exit(i32 noundef 0) #10
  br label %59

59:                                               ; preds = %21, %58, %55
  %60 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 8
  store i32 1, ptr %60, align 4, !tbaa !24
  %61 = call ptr @getenv(ptr noundef nonnull @.str.5)
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  call void @arg_push_string(ptr noundef nonnull %4, ptr noundef nonnull %61) #10
  br label %64

64:                                               ; preds = %63, %59
  %65 = call ptr @arg_next(ptr noundef nonnull %4) #10
  %66 = icmp eq ptr %65, null
  br i1 %66, label %81, label %67

67:                                               ; preds = %64, %78
  %68 = phi ptr [ %79, %78 ], [ %65, %64 ]
  %69 = load i8, ptr %68, align 1, !tbaa !25
  %70 = icmp eq i8 %69, 45
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = call fastcc i32 @swproc(ptr noundef %0, ptr noundef nonnull %68, ptr noundef nonnull %4), !range !26
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef nonnull @.str.6, ptr noundef nonnull %68)
  br label %78

77:                                               ; preds = %67
  call fastcc void @runarg(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %68, ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef 1)
  br label %78

78:                                               ; preds = %71, %74, %77
  %79 = call ptr @arg_next(ptr noundef nonnull %4) #10
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %67, !llvm.loop !27

81:                                               ; preds = %78, %64
  call void @gs_main_init2(ptr noundef %0) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 720, ptr nonnull %4) #10
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @gs_get_real_stdio(ptr noundef) local_unnamed_addr #2

declare void @arg_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @gs_main_arg_fopen(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @gs_main_set_lib_paths(ptr noundef %1) #10
  %3 = tail call ptr @lib_fopen(ptr noundef %0) #10
  ret ptr %3
}

declare void @gs_main_init0(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @gs_main_set_lib_paths(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @print_help(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [3 x i8], align 1
  %3 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %4 = load ptr, ptr @gs_product, align 8, !tbaa !5
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.49, ptr noundef %4)
  %6 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %7 = load i64, ptr @gs_revision, align 8, !tbaa !21
  %8 = sdiv i64 %7, 100
  %9 = trunc i64 %8 to i32
  %10 = srem i64 %7, 100
  %11 = trunc i64 %10 to i32
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.60, i32 noundef %9, i32 noundef %11)
  %13 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %14 = load i64, ptr @gs_revisiondate, align 8, !tbaa !21
  %15 = sdiv i64 %14, 10000
  %16 = trunc i64 %15 to i32
  %17 = sdiv i64 %14, 100
  %18 = srem i64 %17, 100
  %19 = trunc i64 %18 to i32
  %20 = srem i64 %14, 100
  %21 = trunc i64 %20 to i32
  %22 = load ptr, ptr @gs_copyright, align 8, !tbaa !5
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.50, i32 noundef %16, i32 noundef %19, i32 noundef %21, ptr noundef %22)
  %24 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %25 = tail call i64 @fwrite(ptr nonnull @help_usage1, i64 261, i64 1, ptr %24)
  %26 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %27 = tail call i64 @fwrite(ptr nonnull @help_usage2, i64 217, i64 1, ptr %26)
  %28 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %29 = tail call i64 @fwrite(ptr nonnull @help_emulators, i64 14, i64 1, ptr %28)
  %30 = load ptr, ptr getelementptr inbounds ([0 x %struct.ref_s], ptr @gs_emulator_name_array, i64 0, i64 0, i32 1), align 8, !tbaa !25
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %1, %32
  %33 = phi ptr [ %39, %32 ], [ %30, %1 ]
  %34 = phi ptr [ %37, %32 ], [ @gs_emulator_name_array, %1 ]
  %35 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.53, ptr noundef nonnull %33)
  %37 = getelementptr inbounds %struct.ref_s, ptr %34, i64 1
  %38 = getelementptr inbounds %struct.ref_s, ptr %34, i64 1, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !25
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %32, !llvm.loop !28

41:                                               ; preds = %32, %1
  %42 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %43 = tail call i32 @fputc(i32 10, ptr %42)
  %44 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %45 = tail call i64 @fwrite(ptr nonnull @help_devices, i64 18, i64 1, ptr %44)
  %46 = tail call ptr @gs_getdevice(i32 noundef 0) #10
  %47 = icmp eq ptr %46, null
  br i1 %47, label %70, label %48

48:                                               ; preds = %41, %61
  %49 = phi ptr [ %68, %61 ], [ %46, %41 ]
  %50 = phi i32 [ %67, %61 ], [ 0, %41 ]
  %51 = phi i32 [ %66, %61 ], [ 100, %41 ]
  %52 = tail call ptr @gs_devicename(ptr noundef nonnull %49) #10
  %53 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %52) #11
  %54 = trunc i64 %53 to i32
  %55 = add i32 %54, 1
  %56 = add i32 %55, %51
  %57 = icmp sgt i32 %56, 76
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %60 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 3, i64 1, ptr %59)
  br label %61

61:                                               ; preds = %58, %48
  %62 = phi i32 [ 2, %58 ], [ %51, %48 ]
  %63 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef nonnull @.str.53, ptr noundef %52)
  %65 = add nsw i32 %54, 1
  %66 = add nsw i32 %65, %62
  %67 = add nuw nsw i32 %50, 1
  %68 = tail call ptr @gs_getdevice(i32 noundef %67) #10
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %48, !llvm.loop !29

70:                                               ; preds = %61, %41
  %71 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %72 = tail call i32 @fputc(i32 10, ptr %71)
  %73 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %74 = tail call i64 @fwrite(ptr nonnull @help_paths, i64 12, i64 1, ptr %73)
  tail call void @gs_main_set_lib_paths(ptr noundef %0) #10
  %75 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 1, i32 0, i32 1
  %76 = load i16, ptr %75, align 2, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #10
  store i8 32, ptr %2, align 1, !tbaa !25
  %77 = load i8, ptr @gp_file_name_list_separator, align 1, !tbaa !25
  %78 = getelementptr inbounds [3 x i8], ptr %2, i64 0, i64 1
  store i8 %77, ptr %78, align 1, !tbaa !25
  %79 = getelementptr inbounds [3 x i8], ptr %2, i64 0, i64 2
  store i8 0, ptr %79, align 1, !tbaa !25
  %80 = icmp eq i16 %76, 0
  br i1 %80, label %133, label %81

81:                                               ; preds = %70
  %82 = zext i16 %76 to i64
  %83 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 1, i32 1
  %84 = add nuw nsw i64 %82, 4294967295
  %85 = and i64 %84, 4294967295
  br label %86

86:                                               ; preds = %123, %81
  %87 = phi i64 [ 0, %81 ], [ %131, %123 ]
  %88 = phi i32 [ 100, %81 ], [ %130, %123 ]
  %89 = load ptr, ptr %83, align 8, !tbaa !25
  %90 = getelementptr inbounds %struct.ref_s, ptr %89, i64 %87, i32 0, i32 1
  %91 = load i16, ptr %90, align 2, !tbaa !31
  %92 = zext i16 %91 to i32
  %93 = icmp eq i64 %87, %85
  %94 = select i1 %93, ptr @.str.4, ptr %2
  %95 = add nsw i32 %88, 1
  %96 = sext i32 %95 to i64
  %97 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %94) #11
  %98 = add i64 %97, %96
  %99 = zext i16 %91 to i64
  %100 = add i64 %98, %99
  %101 = icmp ugt i64 %100, 76
  br i1 %101, label %102, label %105

102:                                              ; preds = %86
  %103 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %104 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 3, i64 1, ptr %103)
  br label %105

105:                                              ; preds = %102, %86
  %106 = phi i32 [ 2, %102 ], [ %88, %86 ]
  %107 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %108 = tail call i32 @fputc(i32 32, ptr %107)
  %109 = icmp eq i16 %91, 0
  br i1 %109, label %123, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.ref_s, ptr %89, i64 %87, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !25
  br label %113

113:                                              ; preds = %113, %110
  %114 = phi i32 [ %121, %113 ], [ %92, %110 ]
  %115 = phi ptr [ %117, %113 ], [ %112, %110 ]
  %116 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %117 = getelementptr inbounds i8, ptr %115, i64 1
  %118 = load i8, ptr %115, align 1, !tbaa !25
  %119 = sext i8 %118 to i32
  %120 = tail call i32 @fputc(i32 %119, ptr %116)
  %121 = add nsw i32 %114, -1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %113, !llvm.loop !32

123:                                              ; preds = %113, %105
  %124 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %125 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef nonnull %94)
  %126 = add nuw nsw i32 %92, 1
  %127 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %94) #11
  %128 = trunc i64 %127 to i32
  %129 = add i32 %126, %106
  %130 = add i32 %129, %128
  %131 = add nuw nsw i64 %87, 1
  %132 = icmp eq i64 %131, %82
  br i1 %132, label %133, label %86, !llvm.loop !33

133:                                              ; preds = %123, %70
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #10
  %134 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %135 = tail call i32 @fputc(i32 10, ptr %134)
  %136 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %137 = load ptr, ptr @gs_doc_directory, align 8, !tbaa !5
  %138 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %137) #11
  %139 = trunc i64 %138 to i32
  %140 = tail call ptr @gp_file_name_concat_string(ptr noundef %137, i32 noundef %139, ptr noundef nonnull @.str.58, i32 noundef 7) #10
  %141 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %136, ptr noundef nonnull @help_trailer, ptr noundef %137, ptr noundef %140, ptr noundef nonnull @.str.59)
  ret void
}

declare void @gs_exit(i32 noundef) local_unnamed_addr #2

declare void @arg_push_string(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @arg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @swproc(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ref_s, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ref_s, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.ref_s, align 8
  %14 = alloca %struct.ref_s, align 8
  %15 = alloca %struct.stream_s, align 8
  %16 = alloca %struct.scanner_state_s, align 8
  %17 = alloca %struct.ref_s, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.ref_s, align 8
  %20 = getelementptr inbounds i8, ptr %1, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %22 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  store i16 1, ptr %22, align 8, !tbaa !25
  store i16 256, ptr %4, align 8, !tbaa !34
  %23 = getelementptr inbounds i8, ptr %1, i64 2
  %24 = sext i8 %21 to i32
  switch i8 %21, label %288 [
    i8 0, label %25
    i8 45, label %28
    i8 43, label %28
    i8 64, label %29
    i8 65, label %45
    i8 99, label %52
    i8 69, label %76
    i8 102, label %83
    i8 103, label %87
    i8 104, label %97
    i8 63, label %97
    i8 73, label %98
    i8 75, label %100
    i8 77, label %111
    i8 78, label %116
    i8 80, label %122
    i8 113, label %135
    i8 114, label %136
    i8 68, label %147
    i8 100, label %147
    i8 83, label %147
    i8 115, label %147
    i8 117, label %237
    i8 118, label %244
    i8 88, label %266
    i8 90, label %271
  ]

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 8
  store i32 0, ptr %26, align 4, !tbaa !24
  %27 = tail call fastcc i32 @swproc(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %2), !range !26
  tail call void @gs_main_init2(ptr noundef %0) #10
  tail call fastcc void @run_string(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef 1)
  br label %288

28:                                               ; preds = %3, %3
  store i32 0, ptr %2, align 8, !tbaa !35
  br label %29

29:                                               ; preds = %3, %28
  %30 = tail call ptr @arg_next(ptr noundef %2) #10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.11, i32 noundef %24)
  tail call void @arg_finit(ptr noundef %2) #10
  tail call void @gs_exit(i32 noundef 1) #10
  br label %35

35:                                               ; preds = %32, %29
  %36 = tail call ptr @arg_copy(ptr noundef %30, ptr noundef nonnull @gs_memory_default) #10
  tail call void @gs_main_init2(ptr noundef %0) #10
  tail call fastcc void @run_string(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef 0)
  %37 = tail call ptr @arg_next(ptr noundef %2) #10
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %35, %39
  %40 = phi ptr [ %42, %39 ], [ %37, %35 ]
  %41 = tail call ptr @arg_copy(ptr noundef nonnull %40, ptr noundef nonnull @gs_memory_default) #10
  tail call fastcc void @runarg(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %41, ptr noundef nonnull @.str.4, i32 noundef 1, i32 noundef 0)
  %42 = tail call ptr @arg_next(ptr noundef %2) #10
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %39, !llvm.loop !37

44:                                               ; preds = %39, %35
  tail call fastcc void @runarg(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef %36, ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef 1)
  tail call void @gs_exit(i32 noundef 0) #10
  unreachable

45:                                               ; preds = %3
  %46 = load i8, ptr %23, align 1, !tbaa !25
  switch i8 %46, label %49 [
    i8 0, label %47
    i8 45, label %48
  ]

47:                                               ; preds = %45
  store i8 1, ptr getelementptr inbounds ([128 x i8], ptr @gs_debug, i64 0, i64 64), align 16, !tbaa !25
  br label %288

48:                                               ; preds = %45
  store i8 0, ptr getelementptr inbounds ([128 x i8], ptr @gs_debug, i64 0, i64 64), align 16, !tbaa !25
  br label %288

49:                                               ; preds = %45
  %50 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15)
  tail call void @gs_exit(i32 noundef 1) #10
  br label %288

52:                                               ; preds = %3
  %53 = load i32, ptr %2, align 8, !tbaa !35
  tail call void @gs_main_init2(ptr noundef %0) #10
  store i32 0, ptr %2, align 8, !tbaa !35
  %54 = tail call ptr @arg_next(ptr noundef nonnull %2) #10
  %55 = icmp eq ptr %54, null
  br i1 %55, label %75, label %56

56:                                               ; preds = %52, %69
  %57 = phi ptr [ %71, %69 ], [ %54, %52 ]
  %58 = load i8, ptr %57, align 1, !tbaa !25
  switch i8 %58, label %69 [
    i8 64, label %73
    i8 45, label %59
  ]

59:                                               ; preds = %56
  %60 = tail call ptr @__ctype_b_loc() #12
  %61 = load ptr, ptr %60, align 8, !tbaa !5
  %62 = getelementptr inbounds i8, ptr %57, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !25
  %64 = sext i8 %63 to i64
  %65 = getelementptr inbounds i16, ptr %61, i64 %64
  %66 = load i16, ptr %65, align 2, !tbaa !38
  %67 = and i16 %66, 2048
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %56, %59
  %70 = tail call ptr @arg_copy(ptr noundef nonnull %57, ptr noundef nonnull @gs_memory_default) #10
  tail call fastcc void @runarg(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %70, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef 0)
  %71 = tail call ptr @arg_next(ptr noundef nonnull %2) #10
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %56

73:                                               ; preds = %56, %59
  %74 = tail call ptr @arg_copy(ptr noundef nonnull %57, ptr noundef nonnull @gs_memory_default) #10
  tail call void @arg_push_string(ptr noundef nonnull %2, ptr noundef %74) #10
  br label %75

75:                                               ; preds = %69, %52, %73
  store i32 %53, ptr %2, align 8, !tbaa !35
  br label %288

76:                                               ; preds = %3
  %77 = load i8, ptr %23, align 1, !tbaa !25
  switch i8 %77, label %80 [
    i8 0, label %78
    i8 45, label %79
  ]

78:                                               ; preds = %76
  store i8 1, ptr getelementptr inbounds ([128 x i8], ptr @gs_debug, i64 0, i64 35), align 1, !tbaa !25
  br label %288

79:                                               ; preds = %76
  store i8 0, ptr getelementptr inbounds ([128 x i8], ptr @gs_debug, i64 0, i64 35), align 1, !tbaa !25
  br label %288

80:                                               ; preds = %76
  %81 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.17)
  tail call void @gs_exit(i32 noundef 1) #10
  br label %288

83:                                               ; preds = %3
  %84 = load i8, ptr %23, align 1, !tbaa !25
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %288, label %86

86:                                               ; preds = %83
  tail call fastcc void @runarg(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %23, ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef 1)
  br label %288

87:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  tail call void @gs_main_init1(ptr noundef %0) #10
  %88 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %23, ptr noundef nonnull @.str.18, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.19)
  call void @gs_exit(i32 noundef 1) #10
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i64, ptr %5, align 8, !tbaa !21
  %95 = getelementptr inbounds %struct.ref_s, ptr %7, i64 0, i32 1
  store i64 %94, ptr %95, align 8, !tbaa !25
  store i16 2816, ptr %7, align 8, !tbaa !34
  call void @initial_enter_name(ptr noundef nonnull @.str.20, ptr noundef nonnull %7) #10
  %96 = load i64, ptr %6, align 8, !tbaa !21
  store i64 %96, ptr %95, align 8, !tbaa !25
  store i16 2816, ptr %7, align 8, !tbaa !34
  call void @initial_enter_name(ptr noundef nonnull @.str.21, ptr noundef nonnull %7) #10
  call void @initial_enter_name(ptr noundef nonnull @.str.22, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %288

97:                                               ; preds = %3, %3
  tail call fastcc void @print_help(ptr noundef %0)
  tail call void @gs_exit(i32 noundef 0) #10
  br label %98

98:                                               ; preds = %3, %97
  %99 = tail call ptr @arg_copy(ptr noundef nonnull %23, ptr noundef nonnull @gs_memory_default) #10
  tail call void @gs_main_add_lib_path(ptr noundef %0, ptr noundef %99) #10
  br label %288

100:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  store i64 0, ptr %8, align 8, !tbaa !21
  %101 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %23, ptr noundef nonnull @.str.23, ptr noundef nonnull %8) #10
  %102 = load i64, ptr %8, align 8
  %103 = add i64 %102, -9007199254740992
  %104 = icmp ult i64 %103, -9007199254740991
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %107 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef nonnull @.str.24, i64 noundef 9007199254740991)
  call void @gs_exit(i32 noundef 1) #10
  br label %108

108:                                              ; preds = %100, %105
  %109 = load i64, ptr %8, align 8, !tbaa !21
  %110 = shl i64 %109, 10
  store i64 %110, ptr @gs_malloc_limit, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  br label %288

111:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  store i32 0, ptr %9, align 4, !tbaa !39
  %112 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %23, ptr noundef nonnull @.str.25, ptr noundef nonnull %9) #10
  %113 = load i32, ptr %9, align 4, !tbaa !39
  %114 = shl i32 %113, 10
  %115 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 3
  store i32 %114, ptr %115, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  br label %288

116:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  store i32 0, ptr %10, align 4, !tbaa !39
  %117 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %23, ptr noundef nonnull @.str.26, ptr noundef nonnull %10) #10
  %118 = load i32, ptr %10, align 4, !tbaa !39
  %119 = zext i32 %118 to i64
  %120 = shl nuw nsw i64 %119, 10
  %121 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 4
  store i64 %120, ptr %121, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  br label %288

122:                                              ; preds = %3
  %123 = load i8, ptr %23, align 1
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 7
  store i32 1, ptr %126, align 8, !tbaa !42
  br label %288

127:                                              ; preds = %122
  %128 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(2) @.str.27) #11
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 7
  store i32 0, ptr %131, align 8, !tbaa !42
  br label %288

132:                                              ; preds = %127
  %133 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %134 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.28)
  tail call void @gs_exit(i32 noundef 1) #10
  br label %288

135:                                              ; preds = %3
  tail call void @gs_main_init1(ptr noundef %0) #10
  call void @initial_enter_name(ptr noundef nonnull @.str.29, ptr noundef nonnull %4) #10
  br label %288

136:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #10
  tail call void @gs_main_init1(ptr noundef %0) #10
  %137 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %23, ptr noundef nonnull @.str.30, ptr noundef nonnull %11, ptr noundef nonnull %12) #10
  switch i32 %137, label %138 [
    i32 1, label %141
    i32 2, label %143
  ]

138:                                              ; preds = %136
  %139 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %140 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.31)
  call void @gs_exit(i32 noundef 1) #10
  br label %141

141:                                              ; preds = %136, %138
  %142 = load float, ptr %11, align 4, !tbaa !43
  store float %142, ptr %12, align 4, !tbaa !43
  br label %143

143:                                              ; preds = %136, %141
  %144 = load float, ptr %11, align 4, !tbaa !43
  %145 = getelementptr inbounds %struct.ref_s, ptr %13, i64 0, i32 1
  store float %144, ptr %145, align 8, !tbaa !25
  store i16 4096, ptr %13, align 8, !tbaa !34
  call void @initial_enter_name(ptr noundef nonnull @.str.32, ptr noundef nonnull %13) #10
  %146 = load float, ptr %12, align 4, !tbaa !43
  store float %146, ptr %145, align 8, !tbaa !25
  store i16 4096, ptr %13, align 8, !tbaa !34
  call void @initial_enter_name(ptr noundef nonnull @.str.33, ptr noundef nonnull %13) #10
  call void @initial_enter_name(ptr noundef nonnull @.str.34, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  br label %288

147:                                              ; preds = %3, %3, %3, %3
  %148 = tail call ptr @arg_copy(ptr noundef nonnull %23, ptr noundef nonnull @gs_memory_default) #10
  %149 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %148, i32 noundef 61) #11
  %150 = and i8 %21, -33
  %151 = icmp eq i8 %150, 68
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #10
  %152 = icmp eq ptr %149, null
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %148, i32 noundef 35) #11
  br label %155

155:                                              ; preds = %153, %147
  %156 = phi ptr [ %154, %153 ], [ %149, %147 ]
  tail call void @gs_main_init1(ptr noundef %0) #10
  %157 = icmp eq ptr %156, %148
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %160 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %159, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.35)
  tail call void @gs_exit(i32 noundef 1) #10
  br label %161

161:                                              ; preds = %158, %155
  %162 = icmp eq ptr %156, null
  br i1 %162, label %163, label %168

163:                                              ; preds = %161
  %164 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  br i1 %151, label %165, label %166

165:                                              ; preds = %163
  store i16 1, ptr %164, align 8, !tbaa !25
  store i16 256, ptr %14, align 8, !tbaa !34
  br label %236

166:                                              ; preds = %163
  store ptr null, ptr %164, align 8, !tbaa !25
  store i16 4704, ptr %14, align 8, !tbaa !34
  %167 = getelementptr inbounds %struct.tas_s, ptr %14, i64 0, i32 1
  store i16 0, ptr %167, align 2, !tbaa !31
  br label %236

168:                                              ; preds = %161
  %169 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !45
  %170 = getelementptr inbounds i8, ptr %156, i64 1
  store i8 0, ptr %156, align 1, !tbaa !25
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef 4) #10
  br i1 %151, label %171, label %217

171:                                              ; preds = %168
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %15) #10
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %16) #10
  %172 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %170) #11
  %173 = trunc i64 %172 to i32
  call void @sread_string(ptr noundef nonnull %15, ptr noundef nonnull %170, i32 noundef %173) #10
  %174 = getelementptr inbounds %struct.scanner_state_s, ptr %16, i64 0, i32 3
  store i32 0, ptr %174, align 4, !tbaa !47
  store i32 0, ptr %16, align 8, !tbaa !51
  %175 = getelementptr inbounds %struct.scanner_state_s, ptr %16, i64 0, i32 2
  store i32 0, ptr %175, align 8, !tbaa !52
  %176 = call i32 @scan_token(ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef nonnull %16) #10
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %171
  %179 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %180 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %179, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.36)
  call void @gs_exit(i32 noundef 1) #10
  br label %181

181:                                              ; preds = %178, %171
  %182 = load i16, ptr %14, align 8, !tbaa !34
  %183 = and i16 %182, 16256
  %184 = icmp eq i16 %183, 3456
  br i1 %184, label %185, label %216

185:                                              ; preds = %181
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #10
  call void @name_string_ref(ptr noundef nonnull %14, ptr noundef nonnull %17) #10
  %186 = getelementptr inbounds %struct.tas_s, ptr %17, i64 0, i32 1
  %187 = load i16, ptr %186, align 2, !tbaa !31
  %188 = icmp eq i16 %187, 4
  br i1 %188, label %189, label %203

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.ref_s, ptr %17, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !25
  %192 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %191, ptr noundef nonnull dereferenceable(5) @.str.37, i64 noundef 4) #11
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  store i16 3584, ptr %14, align 8, !tbaa !34
  br label %215

195:                                              ; preds = %189
  br i1 %188, label %196, label %203

196:                                              ; preds = %195
  %197 = getelementptr inbounds %struct.ref_s, ptr %17, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !25
  %199 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %198, ptr noundef nonnull dereferenceable(5) @.str.38, i64 noundef 4) #11
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  store i16 1, ptr %202, align 8, !tbaa !25
  store i16 256, ptr %14, align 8, !tbaa !34
  br label %215

203:                                              ; preds = %185, %196, %195
  %204 = icmp eq i16 %187, 5
  br i1 %204, label %205, label %212

205:                                              ; preds = %203
  %206 = getelementptr inbounds %struct.ref_s, ptr %17, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !25
  %208 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %207, ptr noundef nonnull dereferenceable(6) @.str.39, i64 noundef 5) #11
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  store i16 0, ptr %211, align 8, !tbaa !25
  store i16 256, ptr %14, align 8, !tbaa !34
  br label %215

212:                                              ; preds = %205, %203
  %213 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %214 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %213, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.40)
  call void @gs_exit(i32 noundef 1) #10
  br label %215

215:                                              ; preds = %201, %212, %210, %194
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #10
  br label %216

216:                                              ; preds = %215, %181
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %15) #10
  br label %235

217:                                              ; preds = %168
  %218 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %170) #11
  %219 = trunc i64 %218 to i32
  %220 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 4), align 8, !tbaa !9
  %221 = tail call ptr %220(ptr noundef nonnull @gs_memory_default, i32 noundef %219, i32 noundef 1, ptr noundef nonnull @.str.41) #10
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %229

223:                                              ; preds = %217
  %224 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  %225 = load ptr, ptr @gs_product, align 8, !tbaa !5
  tail call void @eprintf_program_name(ptr noundef %224, ptr noundef %225) #10
  %226 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  tail call void @lprintf_file_and_line(ptr noundef %226, ptr noundef nonnull @.str.42, i32 noundef 432) #10
  %227 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  %228 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 15, i64 1, ptr %227)
  tail call void @gs_exit(i32 noundef 1) #10
  br label %229

229:                                              ; preds = %223, %217
  %230 = shl i64 %218, 32
  %231 = ashr exact i64 %230, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %221, ptr nonnull align 1 %170, i64 %231, i1 false)
  %232 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  store ptr %221, ptr %232, align 8, !tbaa !25
  store i16 4704, ptr %14, align 8, !tbaa !34
  %233 = trunc i64 %218 to i16
  %234 = getelementptr inbounds %struct.tas_s, ptr %14, i64 0, i32 1
  store i16 %233, ptr %234, align 2, !tbaa !31
  br label %235

235:                                              ; preds = %229, %216
  call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %169) #10
  br label %236

236:                                              ; preds = %165, %166, %235
  call void @initial_enter_name(ptr noundef %148, ptr noundef nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #10
  br label %288

237:                                              ; preds = %3
  %238 = load i8, ptr %23, align 1, !tbaa !25
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %242 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.44)
  tail call void @gs_exit(i32 noundef 1) #10
  br label %243

243:                                              ; preds = %240, %237
  tail call void @gs_main_init1(ptr noundef %0) #10
  tail call void @initial_remove_name(ptr noundef nonnull %23) #10
  br label %288

244:                                              ; preds = %3
  %245 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %246 = load ptr, ptr @gs_product, align 8, !tbaa !5
  %247 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %245, ptr noundef nonnull @.str.49, ptr noundef %246)
  %248 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %249 = load i64, ptr @gs_revision, align 8, !tbaa !21
  %250 = sdiv i64 %249, 100
  %251 = trunc i64 %250 to i32
  %252 = srem i64 %249, 100
  %253 = trunc i64 %252 to i32
  %254 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %248, ptr noundef nonnull @.str.60, i32 noundef %251, i32 noundef %253)
  %255 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %256 = load i64, ptr @gs_revisiondate, align 8, !tbaa !21
  %257 = sdiv i64 %256, 10000
  %258 = trunc i64 %257 to i32
  %259 = sdiv i64 %256, 100
  %260 = srem i64 %259, 100
  %261 = trunc i64 %260 to i32
  %262 = srem i64 %256, 100
  %263 = trunc i64 %262 to i32
  %264 = load ptr, ptr @gs_copyright, align 8, !tbaa !5
  %265 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %255, ptr noundef nonnull @.str.50, i32 noundef %258, i32 noundef %261, i32 noundef %263, ptr noundef %264)
  tail call void @gs_exit(i32 noundef 0) #10
  br label %266

266:                                              ; preds = %3, %244
  tail call void @gs_main_init2(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #10
  %267 = call i32 @gs_main_run_string_begin(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %18, ptr noundef nonnull %19) #10
  %268 = call i32 @gs_main_run_string_continue(ptr noundef %0, ptr noundef nonnull @.str.45, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %18, ptr noundef nonnull %19) #10
  %269 = call i32 @gs_main_run_string_continue(ptr noundef %0, ptr noundef nonnull @.str.46, i32 noundef 9, i32 noundef 1, ptr noundef nonnull %18, ptr noundef nonnull %19) #10
  %270 = call i32 @gs_main_run_string_end(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %18, ptr noundef nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #10
  call void @gs_exit(i32 noundef 0) #10
  br label %271

271:                                              ; preds = %3, %266
  %272 = load i8, ptr %23, align 1, !tbaa !25
  %273 = icmp ne i8 %272, 45
  %274 = getelementptr inbounds i8, ptr %1, i64 3
  %275 = select i1 %273, ptr %23, ptr %274
  %276 = sext i1 %273 to i8
  %277 = load i8, ptr %275, align 1, !tbaa !25
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %288, label %279

279:                                              ; preds = %271, %279
  %280 = phi i8 [ %286, %279 ], [ %277, %271 ]
  %281 = phi ptr [ %282, %279 ], [ %275, %271 ]
  %282 = getelementptr inbounds i8, ptr %281, i64 1
  %283 = and i8 %280, 127
  %284 = zext nneg i8 %283 to i64
  %285 = getelementptr inbounds [128 x i8], ptr @gs_debug, i64 0, i64 %284
  store i8 %276, ptr %285, align 1, !tbaa !25
  %286 = load i8, ptr %282, align 1, !tbaa !25
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %288, label %279, !llvm.loop !53

288:                                              ; preds = %279, %271, %25, %75, %93, %98, %108, %111, %116, %135, %143, %236, %243, %49, %48, %47, %80, %79, %78, %86, %83, %130, %132, %125, %3
  %289 = phi i32 [ -1, %3 ], [ 0, %125 ], [ 0, %132 ], [ 0, %130 ], [ 0, %83 ], [ 0, %86 ], [ 0, %78 ], [ 0, %79 ], [ 0, %80 ], [ 0, %47 ], [ 0, %48 ], [ 0, %49 ], [ 0, %243 ], [ 0, %236 ], [ 0, %143 ], [ 0, %135 ], [ 0, %116 ], [ 0, %111 ], [ 0, %108 ], [ 0, %98 ], [ 0, %93 ], [ 0, %75 ], [ 0, %25 ], [ 0, %271 ], [ 0, %279 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret i32 %289
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare void @gs_main_init2(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @gs_main_run_start(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @run_string(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @run_string(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  %6 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !54
  %8 = call i32 @gs_main_run_string(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %9 = icmp ne i32 %2, 0
  %10 = icmp ne i32 %8, 0
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load ptr, ptr @o_stack, align 8, !tbaa !55
  %14 = call i32 @zflush(ptr noundef %13) #10
  %15 = load ptr, ptr @o_stack, align 8, !tbaa !55
  %16 = call i32 @zflushpage(ptr noundef %15) #10
  br label %17

17:                                               ; preds = %3, %12
  %18 = load i32, ptr %4, align 4, !tbaa !39
  switch i32 %8, label %25 [
    i32 0, label %26
    i32 -101, label %19
    i32 -100, label %20
  ]

19:                                               ; preds = %17
  call void @gs_exit(i32 noundef 0) #10
  br label %20

20:                                               ; preds = %19, %17
  %21 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  %22 = load ptr, ptr @gs_product, align 8, !tbaa !5
  call void @eprintf_program_name(ptr noundef %21, ptr noundef %22) #10
  %23 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.51, i32 noundef %18)
  call void @gs_exit(i32 noundef %18) #10
  br label %25

25:                                               ; preds = %20, %17
  call void @gs_debug_dump_stack(i32 noundef %8, ptr noundef nonnull %5) #10
  call void @gs_exit_with_code(i32 noundef 255, i32 noundef %8) #10
  br label %26

26:                                               ; preds = %17, %25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

declare ptr @lib_fopen(ptr noundef) local_unnamed_addr #2

declare void @arg_finit(ptr noundef) local_unnamed_addr #2

declare ptr @arg_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @runarg(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #11
  %9 = shl i64 %8, 1
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #11
  %11 = add i64 %7, 2
  %12 = add i64 %11, %9
  %13 = add i64 %12, %10
  %14 = trunc i64 %13 to i32
  %15 = add i32 %14, 1
  %16 = icmp eq i32 %4, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %6
  tail call void @gs_main_init2(ptr noundef %0) #10
  br label %18

18:                                               ; preds = %17, %6
  %19 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 4), align 8, !tbaa !9
  %20 = tail call ptr %19(ptr noundef nonnull @gs_memory_default, i32 noundef %15, i32 noundef 1, ptr noundef nonnull @.str.47) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  %24 = load ptr, ptr @gs_product, align 8, !tbaa !5
  tail call void @eprintf_program_name(ptr noundef %23, ptr noundef %24) #10
  %25 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  tail call void @lprintf_file_and_line(ptr noundef %25, ptr noundef nonnull @.str.42, i32 noundef 526) #10
  %26 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  %27 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 15, i64 1, ptr %26)
  tail call void @gs_exit(i32 noundef 1) #10
  br label %28

28:                                               ; preds = %22, %18
  %29 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %1) #10
  %30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #11
  %31 = getelementptr inbounds i8, ptr %20, i64 %30
  %32 = getelementptr inbounds i8, ptr %31, i64 1
  store i8 60, ptr %31, align 1, !tbaa !25
  %33 = load i8, ptr %2, align 1, !tbaa !25
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %28, %35
  %36 = phi i8 [ %51, %35 ], [ %33, %28 ]
  %37 = phi ptr [ %49, %35 ], [ %32, %28 ]
  %38 = phi ptr [ %50, %35 ], [ %2, %28 ]
  %39 = zext i8 %36 to i32
  %40 = lshr i32 %39, 4
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr @.str.48, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !25
  %44 = getelementptr inbounds i8, ptr %37, i64 1
  store i8 %43, ptr %37, align 1, !tbaa !25
  %45 = and i32 %39, 15
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr @.str.48, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !25
  %49 = getelementptr inbounds i8, ptr %37, i64 2
  store i8 %48, ptr %44, align 1, !tbaa !25
  %50 = getelementptr inbounds i8, ptr %38, i64 1
  %51 = load i8, ptr %50, align 1, !tbaa !25
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %35, !llvm.loop !57

53:                                               ; preds = %35, %28
  %54 = phi ptr [ %32, %28 ], [ %49, %35 ]
  %55 = getelementptr inbounds i8, ptr %54, i64 1
  store i8 62, ptr %54, align 1, !tbaa !25
  store i8 0, ptr %55, align 1, !tbaa !25
  %56 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %3) #10
  tail call fastcc void @run_string(ptr noundef %0, ptr noundef %20, i32 noundef %5)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

declare void @gs_main_init1(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare void @initial_enter_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gs_main_add_lib_path(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @ialloc_set_space(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @sread_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @scan_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @name_string_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

declare void @eprintf_program_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lprintf_file_and_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare void @initial_remove_name(ptr noundef) local_unnamed_addr #2

declare i32 @gs_main_run_string_begin(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_main_run_string_continue(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_main_run_string_end(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

declare i32 @gs_main_run_string(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @zflush(ptr noundef) local_unnamed_addr #2

declare i32 @zflushpage(ptr noundef) local_unnamed_addr #2

declare void @gs_debug_dump_stack(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @gs_exit_with_code(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @gs_getdevice(i32 noundef) local_unnamed_addr #2

declare ptr @gs_devicename(ptr noundef) local_unnamed_addr #2

declare ptr @gp_file_name_concat_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 32}
!10 = !{!"gs_memory_s", !11, i64 0}
!11 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!12 = !{!13, !6, i64 88}
!13 = !{!"gs_main_instance_s", !6, i64 0, !6, i64 8, !6, i64 16, !14, i64 24, !15, i64 32, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !16, i64 56}
!14 = !{!"int", !7, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"gs_file_path_s", !17, i64 0, !17, i64 16, !6, i64 32, !6, i64 40, !14, i64 48}
!17 = !{!"ref_s", !18, i64 0, !7, i64 8}
!18 = !{!"tas_s", !19, i64 0, !19, i64 2}
!19 = !{!"short", !7, i64 0}
!20 = !{!13, !6, i64 96}
!21 = !{!15, !15, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = !{!13, !14, i64 52}
!25 = !{!7, !7, i64 0}
!26 = !{i32 -1, i32 1}
!27 = distinct !{!27, !23}
!28 = distinct !{!28, !23}
!29 = distinct !{!29, !23}
!30 = !{!13, !19, i64 74}
!31 = !{!17, !19, i64 2}
!32 = distinct !{!32, !23}
!33 = distinct !{!33, !23}
!34 = !{!17, !19, i64 0}
!35 = !{!36, !14, i64 0}
!36 = !{!"arg_list_s", !14, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !14, i64 32, !14, i64 36, !7, i64 40, !7, i64 560}
!37 = distinct !{!37, !23}
!38 = !{!19, !19, i64 0}
!39 = !{!14, !14, i64 0}
!40 = !{!13, !14, i64 24}
!41 = !{!13, !15, i64 32}
!42 = !{!13, !14, i64 48}
!43 = !{!44, !44, i64 0}
!44 = !{!"float", !7, i64 0}
!45 = !{!46, !14, i64 40}
!46 = !{!"gs_dual_memory_s", !6, i64 0, !7, i64 8, !14, i64 40, !14, i64 44, !6, i64 48, !14, i64 56, !14, i64 60}
!47 = !{!48, !14, i64 12}
!48 = !{!"scanner_state_s", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !49, i64 16, !7, i64 328}
!49 = !{!"dynamic_area_s", !50, i64 0, !6, i64 16, !6, i64 24, !6, i64 32, !14, i64 40, !7, i64 44, !6, i64 304}
!50 = !{!"gs_string_s", !6, i64 0, !14, i64 8}
!51 = !{!48, !14, i64 0}
!52 = !{!48, !14, i64 8}
!53 = distinct !{!53, !23}
!54 = !{!13, !14, i64 44}
!55 = !{!56, !6, i64 0}
!56 = !{!"ref_stack_s", !6, i64 0, !6, i64 8, !6, i64 16, !17, i64 24, !14, i64 40, !14, i64 44, !17, i64 48, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !14, i64 80, !17, i64 88, !14, i64 104, !14, i64 108, !14, i64 112, !6, i64 120}
!57 = distinct !{!57, !23}

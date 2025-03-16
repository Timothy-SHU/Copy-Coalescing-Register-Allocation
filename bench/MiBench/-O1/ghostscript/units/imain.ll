; ModuleID = 'imain.c'
source_filename = "imain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_main_instance_s = type { ptr, ptr, ptr, i32, i64, i32, i32, i32, i32, %struct.gs_file_path_s }
%struct.gs_file_path_s = type { %struct.ref_s, %struct.ref_s, ptr, ptr, i32 }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_memory_s = type { %struct.gs_memory_procs_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.scanner_state_s = type { i32, i32, i32, i32, %struct.dynamic_area_s, %union.sss_ }
%struct.dynamic_area_s = type { %struct.gs_string_s, ptr, ptr, ptr, i32, [257 x i8], ptr }
%struct.gs_string_s = type { ptr, i32 }
%union.sss_ = type { %struct.scan_binary_state_s }
%struct.scan_binary_state_s = type { i32, ptr, %struct.ref_s, i32, i32, i32, i32, i32 }

@stdin = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@the_gs_main_instance = internal global %struct.gs_main_instance_s zeroinitializer, align 8
@gs_main_instance_init_values = external local_unnamed_addr constant %struct.gs_main_instance_s, align 8
@gs_stdin = external local_unnamed_addr global ptr, align 8
@gs_stdout = external local_unnamed_addr global ptr, align 8
@gs_stderr = external local_unnamed_addr global ptr, align 8
@gs_memory_default = external global %struct.gs_memory_s, align 8
@.str = private unnamed_addr constant [15 x i8] c"lib_path array\00", align 1
@gs_imemory = external global %struct.gs_dual_memory_s, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"name_init failed\00", align 1
@gs_init_file_array = external global [0 x %struct.ref_s], align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"INITFILES\00", align 1
@gs_emulator_name_array = external global [0 x %struct.ref_s], align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"EMULATORS\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"LIBPATH\00", align 1
@gp_current_directory_name = external constant [0 x i8], align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Can't find initialization file %s.\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c".runstringbegin\00", align 1
@o_stack = external global %struct.ref_stack_s, align 8
@gs_exit_status = dso_local local_unnamed_addr global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"\0AUnexpected interpreter error %d.\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Error object: \00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Operand stack\00", align 1
@e_stack = external global %struct.ref_stack_s, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"Execution stack\00", align 1
@d_stack = external global %struct.ref_stack_s, align 8
@.str.13 = private unnamed_addr constant [17 x i8] c"Dictionary stack\00", align 1
@gp_file_name_list_separator = external local_unnamed_addr constant i8, align 1
@gs_init_string_sizeof = external local_unnamed_addr constant i32, align 4
@gs_init_file = external local_unnamed_addr global ptr, align 8
@gs_init_string = external constant [0 x i8], align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"Initialization file %s does not begin with an integer.\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @gs_get_real_stdio(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stdin, align 8, !tbaa !5
  store ptr %2, ptr %0, align 8, !tbaa !5
  %3 = load ptr, ptr @stdout, align 8, !tbaa !5
  %4 = getelementptr inbounds ptr, ptr %0, i64 1
  store ptr %3, ptr %4, align 8, !tbaa !5
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = getelementptr inbounds ptr, ptr %0, i64 2
  store ptr %5, ptr %6, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @gs_main_instance_default() local_unnamed_addr #1 {
  %1 = load i32, ptr getelementptr inbounds (%struct.gs_main_instance_s, ptr @the_gs_main_instance, i64 0, i32 3), align 8, !tbaa !9
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) @the_gs_main_instance, ptr noundef nonnull align 8 dereferenceable(112) @gs_main_instance_init_values, i64 112, i1 false), !tbaa.struct !17
  br label %4

4:                                                ; preds = %3, %0
  ret ptr @the_gs_main_instance
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local void @gs_main_init0(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #3 {
  store ptr %1, ptr @gs_stdin, align 8, !tbaa !5
  store ptr %2, ptr @gs_stdout, align 8, !tbaa !5
  store ptr %3, ptr @gs_stderr, align 8, !tbaa !5
  tail call void @gp_init() #10
  %6 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  tail call void @gs_lib_init0(ptr noundef %6) #10
  %7 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 4), align 8, !tbaa !23
  %8 = tail call ptr %7(ptr noundef nonnull @gs_memory_default, i32 noundef %4, i32 noundef 16, ptr noundef nonnull @.str) #10
  %9 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9
  %10 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 0, i32 1
  store ptr %8, ptr %10, align 8, !tbaa !26
  store i16 1024, ptr %9, align 8, !tbaa !27
  %11 = trunc i32 %4 to i16
  %12 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 0, i32 0, i32 1
  store i16 %11, ptr %12, align 2, !tbaa !28
  %13 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 1
  %14 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 1, i32 1
  store ptr %8, ptr %14, align 8, !tbaa !26
  store i16 1120, ptr %13, align 8, !tbaa !29
  %15 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 1, i32 0, i32 1
  store i16 0, ptr %15, align 2, !tbaa !30
  %16 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 2
  %17 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %16, i8 0, i64 20, i1 false)
  store i32 1, ptr %17, align 4, !tbaa !31
  %18 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 5
  store i32 0, ptr %18, align 8, !tbaa !32
  ret void
}

declare void @gp_init() local_unnamed_addr #4

declare void @gs_lib_init0(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @gs_main_init1(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !32
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %5, label %29

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !9
  %8 = tail call i32 @gs_have_level2() #10
  tail call void @ialloc_init(ptr noundef nonnull @gs_memory_default, i32 noundef %7, i32 noundef %8) #10
  %9 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 1), align 8, !tbaa !26
  tail call void @gs_lib_init1(ptr noundef %9) #10
  tail call void @alloc_save_init(ptr noundef nonnull @gs_imemory) #10
  %10 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 4
  %11 = load i64, ptr %10, align 8, !tbaa !33
  %12 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 1), align 8, !tbaa !26
  %13 = tail call ptr @name_init(i64 noundef %11, ptr noundef %12) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %5
  %16 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %17 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 16, i64 1, ptr %16)
  %18 = load ptr, ptr @gs_stdout, align 8, !tbaa !5
  %19 = tail call i32 @fputc(i32 noundef 10, ptr noundef %18)
  %20 = load i32, ptr getelementptr inbounds (%struct.gs_main_instance_s, ptr @the_gs_main_instance, i64 0, i32 3), align 8, !tbaa !9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) @the_gs_main_instance, ptr noundef nonnull align 8 dereferenceable(112) @gs_main_instance_init_values, i64 112, i1 false), !tbaa.struct !17
  br label %23

23:                                               ; preds = %22, %15
  store i32 1, ptr @gs_exit_status, align 4, !tbaa !18
  %24 = load i32, ptr getelementptr inbounds (%struct.gs_main_instance_s, ptr @the_gs_main_instance, i64 0, i32 5), align 8, !tbaa !32
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void @alloc_restore_all(ptr noundef nonnull @gs_imemory) #10
  br label %27

27:                                               ; preds = %23, %26
  tail call void @gs_lib_finit(i32 noundef 1, i32 noundef 0) #10
  tail call void @gp_do_exit(i32 noundef 1) #10
  br label %28

28:                                               ; preds = %27, %5
  tail call void @obj_init() #10
  tail call void @scan_init() #10
  store i32 1, ptr %2, align 8, !tbaa !32
  br label %29

29:                                               ; preds = %28, %1
  ret void
}

declare void @ialloc_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @gs_have_level2() local_unnamed_addr #4

declare void @gs_lib_init1(ptr noundef) local_unnamed_addr #4

declare void @alloc_save_init(ptr noundef) local_unnamed_addr #4

declare ptr @name_init(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @gs_exit(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load i32, ptr getelementptr inbounds (%struct.gs_main_instance_s, ptr @the_gs_main_instance, i64 0, i32 3), align 8, !tbaa !9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) @the_gs_main_instance, ptr noundef nonnull align 8 dereferenceable(112) @gs_main_instance_init_values, i64 112, i1 false), !tbaa.struct !17
  br label %5

5:                                                ; preds = %4, %1
  store i32 %0, ptr @gs_exit_status, align 4, !tbaa !18
  %6 = load i32, ptr getelementptr inbounds (%struct.gs_main_instance_s, ptr @the_gs_main_instance, i64 0, i32 5), align 8, !tbaa !32
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @alloc_restore_all(ptr noundef nonnull @gs_imemory) #10
  br label %9

9:                                                ; preds = %5, %8
  tail call void @gs_lib_finit(i32 noundef %0, i32 noundef 0) #10
  tail call void @gp_do_exit(i32 noundef %0) #10
  ret void
}

declare void @obj_init() local_unnamed_addr #4

declare void @scan_init() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @gs_main_init2(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca [200 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_s, align 8
  %5 = alloca %struct.ref_s, align 8
  %6 = alloca %struct.scanner_state_s, align 8
  %7 = alloca %struct.ref_s, align 8
  %8 = alloca %struct.ref_s, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ref_s, align 8
  tail call void @gs_main_init1(ptr noundef %0)
  %11 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !32
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %127

14:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #10
  tail call void @igs_init() #10
  tail call void @zop_init() #10
  %15 = load ptr, ptr @gs_imemory, align 8, !tbaa !34
  tail call void @gs_iodev_init(ptr noundef %15) #10
  tail call void @op_init() #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  %16 = load ptr, ptr getelementptr inbounds ([0 x %struct.ref_s], ptr @gs_init_file_array, i64 0, i64 0, i32 1), align 8, !tbaa !26
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %14, %18
  %19 = phi ptr [ %26, %18 ], [ %16, %14 ]
  %20 = phi ptr [ %24, %18 ], [ @gs_init_file_array, %14 ]
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #11
  %22 = trunc i64 %21 to i16
  %23 = getelementptr inbounds %struct.tas_s, ptr %20, i64 0, i32 1
  store i16 %22, ptr %23, align 2, !tbaa !36
  %24 = getelementptr inbounds %struct.ref_s, ptr %20, i64 1
  %25 = getelementptr inbounds %struct.ref_s, ptr %20, i64 1, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !26
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %18, !llvm.loop !37

28:                                               ; preds = %18, %14
  %29 = phi ptr [ @gs_init_file_array, %14 ], [ %24, %18 ]
  %30 = getelementptr inbounds %struct.ref_s, ptr %8, i64 0, i32 1
  store ptr @gs_init_file_array, ptr %30, align 8, !tbaa !26
  store i16 1120, ptr %8, align 8, !tbaa !39
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %31, ptrtoint (ptr @gs_init_file_array to i64)
  %33 = lshr exact i64 %32, 4
  %34 = trunc i64 %33 to i16
  %35 = getelementptr inbounds %struct.tas_s, ptr %8, i64 0, i32 1
  store i16 %34, ptr %35, align 2, !tbaa !36
  call void @initial_enter_name(ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  %36 = load ptr, ptr getelementptr inbounds ([0 x %struct.ref_s], ptr @gs_emulator_name_array, i64 0, i64 0, i32 1), align 8, !tbaa !26
  %37 = icmp eq ptr %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %28, %38
  %39 = phi ptr [ %46, %38 ], [ %36, %28 ]
  %40 = phi ptr [ %44, %38 ], [ @gs_emulator_name_array, %28 ]
  %41 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %39) #11
  %42 = trunc i64 %41 to i16
  %43 = getelementptr inbounds %struct.tas_s, ptr %40, i64 0, i32 1
  store i16 %42, ptr %43, align 2, !tbaa !36
  %44 = getelementptr inbounds %struct.ref_s, ptr %40, i64 1
  %45 = getelementptr inbounds %struct.ref_s, ptr %40, i64 1, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !26
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %38, !llvm.loop !37

48:                                               ; preds = %38, %28
  %49 = phi ptr [ @gs_emulator_name_array, %28 ], [ %44, %38 ]
  %50 = getelementptr inbounds %struct.ref_s, ptr %7, i64 0, i32 1
  store ptr @gs_emulator_name_array, ptr %50, align 8, !tbaa !26
  store i16 1120, ptr %7, align 8, !tbaa !39
  %51 = ptrtoint ptr %49 to i64
  %52 = sub i64 %51, ptrtoint (ptr @gs_emulator_name_array to i64)
  %53 = lshr exact i64 %52, 4
  %54 = trunc i64 %53 to i16
  %55 = getelementptr inbounds %struct.tas_s, ptr %7, i64 0, i32 1
  store i16 %54, ptr %55, align 2, !tbaa !36
  call void @initial_enter_name(ptr noundef nonnull @.str.3, ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  %56 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 1
  call void @initial_enter_name(ptr noundef nonnull @.str.4, ptr noundef nonnull %56) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %6) #10
  call void @gs_main_set_lib_paths(ptr noundef %0)
  %57 = load i32, ptr @gs_init_string_sizeof, align 4, !tbaa !18
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %48
  %60 = load ptr, ptr @gs_init_file, align 8, !tbaa !5
  call void @gs_main_set_lib_paths(ptr noundef %0)
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %61 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %60) #11
  %62 = trunc i64 %61 to i32
  %63 = call i32 @lib_file_open(ptr noundef %60, i32 noundef %62, ptr noundef nonnull %2, i32 noundef 200, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %2) #10
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  %67 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef nonnull @.str.5, ptr noundef %60)
  br label %73

68:                                               ; preds = %59
  %69 = load i16, ptr %4, align 8, !tbaa !39
  %70 = or i16 %69, 192
  store i16 %70, ptr %4, align 8, !tbaa !39
  br label %73

71:                                               ; preds = %48
  %72 = call i32 @file_read_string(ptr noundef nonnull @gs_init_string, i32 noundef %57, ptr noundef nonnull %4) #10
  br label %73

73:                                               ; preds = %71, %68, %65
  %74 = phi i32 [ %72, %71 ], [ -100, %65 ], [ 0, %68 ]
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 255, ptr %9, align 4, !tbaa !18
  br label %100

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 3
  store i32 0, ptr %78, align 4, !tbaa !40
  store i32 0, ptr %6, align 8, !tbaa !44
  %79 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 2
  store i32 0, ptr %79, align 8, !tbaa !45
  %80 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !26
  %82 = call i32 @scan_token(ptr noundef %81, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %83 = icmp eq i32 %82, 0
  %84 = getelementptr inbounds i8, ptr %5, i64 1
  %85 = load i8, ptr %84, align 1
  %86 = icmp eq i8 %85, 11
  %87 = select i1 %83, i1 %86, i1 false
  br i1 %87, label %92, label %88

88:                                               ; preds = %77
  %89 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  %90 = load ptr, ptr @gs_init_file, align 8, !tbaa !5
  %91 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.14, ptr noundef %90)
  store i32 255, ptr %9, align 4, !tbaa !18
  br label %100

92:                                               ; preds = %77
  %93 = load ptr, ptr @o_stack, align 8, !tbaa !46
  %94 = getelementptr inbounds %struct.ref_s, ptr %93, i64 1
  store ptr %94, ptr @o_stack, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %94, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !48
  %95 = load i16, ptr %4, align 8, !tbaa !39
  %96 = or i16 %95, 128
  store i16 %96, ptr %4, align 8, !tbaa !39
  %97 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 6
  %98 = load i32, ptr %97, align 4, !tbaa !31
  %99 = call i32 @gs_interpret(ptr noundef nonnull %4, i32 noundef %98, ptr noundef nonnull %9, ptr noundef nonnull %10) #10
  br label %100

100:                                              ; preds = %76, %88, %92
  %101 = phi i32 [ %74, %76 ], [ %99, %92 ], [ -100, %88 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %126

103:                                              ; preds = %100
  %104 = icmp eq i32 %101, -100
  br i1 %104, label %114, label %105

105:                                              ; preds = %103
  %106 = load ptr, ptr @o_stack, align 8, !tbaa !46
  %107 = call i32 @zflush(ptr noundef %106) #10
  %108 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  %109 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.7, i32 noundef %101)
  %110 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  %111 = call i64 @fwrite(ptr nonnull @.str.9, i64 14, i64 1, ptr %110)
  call void @debug_print_ref(ptr noundef nonnull %10) #10
  %112 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  %113 = call i32 @fputc(i32 10, ptr %112)
  call void @debug_dump_stack(ptr noundef nonnull @o_stack, ptr noundef nonnull @.str.11) #10
  call void @debug_dump_stack(ptr noundef nonnull @e_stack, ptr noundef nonnull @.str.12) #10
  call void @debug_dump_stack(ptr noundef nonnull @d_stack, ptr noundef nonnull @.str.13) #10
  br label %114

114:                                              ; preds = %105, %103
  %115 = load i32, ptr %9, align 4
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %116, i32 2, i32 %115
  %118 = load i32, ptr getelementptr inbounds (%struct.gs_main_instance_s, ptr @the_gs_main_instance, i64 0, i32 3), align 8, !tbaa !9
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) @the_gs_main_instance, ptr noundef nonnull align 8 dereferenceable(112) @gs_main_instance_init_values, i64 112, i1 false), !tbaa.struct !17
  br label %121

121:                                              ; preds = %120, %114
  store i32 %117, ptr @gs_exit_status, align 4, !tbaa !18
  %122 = load i32, ptr getelementptr inbounds (%struct.gs_main_instance_s, ptr @the_gs_main_instance, i64 0, i32 5), align 8, !tbaa !32
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  call void @alloc_restore_all(ptr noundef nonnull @gs_imemory) #10
  br label %125

125:                                              ; preds = %121, %124
  call void @gs_lib_finit(i32 noundef %117, i32 noundef %101) #10
  call void @gp_do_exit(i32 noundef %117) #10
  br label %126

126:                                              ; preds = %125, %100
  store i32 2, ptr %11, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  br label %127

127:                                              ; preds = %126, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

declare void @igs_init() local_unnamed_addr #4

declare void @zop_init() local_unnamed_addr #4

declare void @gs_iodev_init(ptr noundef) local_unnamed_addr #4

declare void @op_init() local_unnamed_addr #4

declare void @initial_enter_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @gs_debug_dump_stack(i32 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr @o_stack, align 8, !tbaa !46
  %4 = tail call i32 @zflush(ptr noundef %3) #10
  %5 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef %0)
  %7 = icmp eq ptr %1, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  %10 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 14, i64 1, ptr %9)
  tail call void @debug_print_ref(ptr noundef nonnull %1) #10
  %11 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  %12 = tail call i32 @fputc(i32 10, ptr %11)
  br label %13

13:                                               ; preds = %8, %2
  tail call void @debug_dump_stack(ptr noundef nonnull @o_stack, ptr noundef nonnull @.str.11) #10
  tail call void @debug_dump_stack(ptr noundef nonnull @e_stack, ptr noundef nonnull @.str.12) #10
  tail call void @debug_dump_stack(ptr noundef nonnull @d_stack, ptr noundef nonnull @.str.13) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gs_exit_with_code(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = load i32, ptr getelementptr inbounds (%struct.gs_main_instance_s, ptr @the_gs_main_instance, i64 0, i32 3), align 8, !tbaa !9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) @the_gs_main_instance, ptr noundef nonnull align 8 dereferenceable(112) @gs_main_instance_init_values, i64 112, i1 false), !tbaa.struct !17
  br label %6

6:                                                ; preds = %2, %5
  store i32 %0, ptr @gs_exit_status, align 4, !tbaa !18
  %7 = load i32, ptr getelementptr inbounds (%struct.gs_main_instance_s, ptr @the_gs_main_instance, i64 0, i32 5), align 8, !tbaa !32
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @alloc_restore_all(ptr noundef nonnull @gs_imemory) #10
  br label %10

10:                                               ; preds = %6, %9
  tail call void @gs_lib_finit(i32 noundef %0, i32 noundef %1) #10
  tail call void @gp_do_exit(i32 noundef %0) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind uwtable
define dso_local void @gs_main_add_lib_path(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 1, i32 0, i32 1
  %4 = load i16, ptr %3, align 2, !tbaa !30
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !26
  %9 = getelementptr inbounds %struct.ref_s, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !26
  %11 = icmp eq ptr %10, @gp_current_directory_name
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %6 ]
  %15 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !49
  %17 = add i32 %16, %14
  %18 = trunc i32 %17 to i16
  store i16 %18, ptr %3, align 2, !tbaa !30
  %19 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 1, i32 0, i32 1
  %20 = icmp eq ptr %1, null
  br i1 %20, label %68, label %21

21:                                               ; preds = %13
  %22 = load i16, ptr %19, align 2, !tbaa !50
  %23 = zext i16 %22 to i32
  %24 = load i8, ptr @gp_file_name_list_separator, align 1
  %25 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 0, i32 0, i32 1
  %26 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 0, i32 1
  br label %27

27:                                               ; preds = %62, %21
  %28 = phi i32 [ %63, %62 ], [ %23, %21 ]
  %29 = phi ptr [ %64, %62 ], [ %1, %21 ]
  br label %30

30:                                               ; preds = %30, %27
  %31 = phi ptr [ %29, %27 ], [ %36, %30 ]
  %32 = load i8, ptr %31, align 1, !tbaa !26
  %33 = icmp eq i8 %32, 0
  %34 = icmp eq i8 %32, %24
  %35 = select i1 %33, i1 true, i1 %34
  %36 = getelementptr inbounds i8, ptr %31, i64 1
  br i1 %35, label %37, label %30, !llvm.loop !51

37:                                               ; preds = %30
  %38 = icmp ugt ptr %31, %29
  br i1 %38, label %39, label %56

39:                                               ; preds = %37
  %40 = load i16, ptr %25, align 2, !tbaa !52
  %41 = zext i16 %40 to i32
  %42 = icmp eq i32 %28, %41
  br i1 %42, label %62, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %26, align 8, !tbaa !26
  %45 = zext i32 %28 to i64
  %46 = getelementptr inbounds %struct.ref_s, ptr %44, i64 %45, i32 1
  store ptr %29, ptr %46, align 8, !tbaa !26
  %47 = load ptr, ptr %26, align 8, !tbaa !26
  %48 = getelementptr inbounds %struct.ref_s, ptr %47, i64 %45
  store i16 4704, ptr %48, align 8, !tbaa !39
  %49 = ptrtoint ptr %31 to i64
  %50 = ptrtoint ptr %29 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i16
  %53 = load ptr, ptr %26, align 8, !tbaa !26
  %54 = getelementptr inbounds %struct.ref_s, ptr %53, i64 %45, i32 0, i32 1
  store i16 %52, ptr %54, align 2, !tbaa !36
  %55 = add i32 %28, 1
  br label %56

56:                                               ; preds = %43, %37
  %57 = phi i32 [ %55, %43 ], [ %28, %37 ]
  %58 = load i8, ptr %31, align 1, !tbaa !26
  %59 = icmp eq i8 %58, 0
  %60 = select i1 %59, ptr %29, ptr %36
  %61 = select i1 %59, i32 2, i32 0
  br label %62

62:                                               ; preds = %56, %39
  %63 = phi i32 [ %28, %39 ], [ %57, %56 ]
  %64 = phi ptr [ %29, %39 ], [ %60, %56 ]
  %65 = phi i32 [ 1, %39 ], [ %61, %56 ]
  switch i32 %65, label %68 [
    i32 0, label %27
    i32 2, label %66
  ], !llvm.loop !53

66:                                               ; preds = %62
  %67 = trunc i32 %63 to i16
  store i16 %67, ptr %19, align 2, !tbaa !50
  br label %68

68:                                               ; preds = %62, %13, %66
  %69 = load i16, ptr %3, align 2, !tbaa !30
  %70 = zext i16 %69 to i32
  %71 = sub nsw i32 %70, %14
  store i32 %71, ptr %15, align 8, !tbaa !49
  tail call void @gs_main_set_lib_paths(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gs_main_set_lib_paths(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !26
  %4 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 1, i32 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !30
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !26
  %10 = icmp eq ptr %9, @gp_current_directory_name
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i1 [ false, %1 ], [ %10, %7 ]
  %13 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !54
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %11
  br i1 %12, label %43, label %19

19:                                               ; preds = %18
  br i1 %6, label %30, label %20

20:                                               ; preds = %19
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @gp_current_directory_name) #11
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !26
  %25 = getelementptr inbounds %struct.tas_s, ptr %3, i64 0, i32 1
  %26 = load i16, ptr %25, align 2, !tbaa !36
  %27 = zext i16 %26 to i32
  %28 = tail call i32 @bytes_compare(ptr noundef nonnull @gp_current_directory_name, i32 noundef %22, ptr noundef %24, i32 noundef %27) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %20, %19
  %31 = getelementptr inbounds %struct.ref_s, ptr %3, i64 1
  %32 = sext i32 %14 to i64
  %33 = shl nsw i64 %32, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %31, ptr align 8 %3, i64 %33, i1 false)
  %34 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  store ptr @gp_current_directory_name, ptr %34, align 8, !tbaa !26
  store i16 4704, ptr %3, align 8, !tbaa !39
  %35 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @gp_current_directory_name) #11
  %36 = trunc i64 %35 to i16
  %37 = getelementptr inbounds %struct.tas_s, ptr %3, i64 0, i32 1
  store i16 %36, ptr %37, align 2, !tbaa !36
  br label %43

38:                                               ; preds = %11
  br i1 %12, label %39, label %43

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.ref_s, ptr %3, i64 1
  %41 = sext i32 %14 to i64
  %42 = shl nsw i64 %41, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %3, ptr nonnull align 8 %40, i64 %42, i1 false)
  br label %43

43:                                               ; preds = %38, %39, %18, %20, %30
  %44 = load i32, ptr %15, align 8, !tbaa !54
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = add nsw i32 %14, %46
  %48 = trunc i32 %47 to i16
  store i16 %48, ptr %4, align 2, !tbaa !30
  %49 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !55
  %51 = icmp eq ptr %50, null
  br i1 %51, label %100, label %52

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 1, i32 0, i32 1
  %54 = load i16, ptr %53, align 2, !tbaa !50
  %55 = zext i16 %54 to i32
  %56 = load i8, ptr @gp_file_name_list_separator, align 1
  %57 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 0, i32 0, i32 1
  %58 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 0, i32 1
  br label %59

59:                                               ; preds = %94, %52
  %60 = phi i32 [ %95, %94 ], [ %55, %52 ]
  %61 = phi ptr [ %96, %94 ], [ %50, %52 ]
  br label %62

62:                                               ; preds = %62, %59
  %63 = phi ptr [ %61, %59 ], [ %68, %62 ]
  %64 = load i8, ptr %63, align 1, !tbaa !26
  %65 = icmp eq i8 %64, 0
  %66 = icmp eq i8 %64, %56
  %67 = select i1 %65, i1 true, i1 %66
  %68 = getelementptr inbounds i8, ptr %63, i64 1
  br i1 %67, label %69, label %62, !llvm.loop !51

69:                                               ; preds = %62
  %70 = icmp ugt ptr %63, %61
  br i1 %70, label %71, label %88

71:                                               ; preds = %69
  %72 = load i16, ptr %57, align 2, !tbaa !52
  %73 = zext i16 %72 to i32
  %74 = icmp eq i32 %60, %73
  br i1 %74, label %94, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %58, align 8, !tbaa !26
  %77 = zext i32 %60 to i64
  %78 = getelementptr inbounds %struct.ref_s, ptr %76, i64 %77, i32 1
  store ptr %61, ptr %78, align 8, !tbaa !26
  %79 = load ptr, ptr %58, align 8, !tbaa !26
  %80 = getelementptr inbounds %struct.ref_s, ptr %79, i64 %77
  store i16 4704, ptr %80, align 8, !tbaa !39
  %81 = ptrtoint ptr %63 to i64
  %82 = ptrtoint ptr %61 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i16
  %85 = load ptr, ptr %58, align 8, !tbaa !26
  %86 = getelementptr inbounds %struct.ref_s, ptr %85, i64 %77, i32 0, i32 1
  store i16 %84, ptr %86, align 2, !tbaa !36
  %87 = add i32 %60, 1
  br label %88

88:                                               ; preds = %75, %69
  %89 = phi i32 [ %87, %75 ], [ %60, %69 ]
  %90 = load i8, ptr %63, align 1, !tbaa !26
  %91 = icmp eq i8 %90, 0
  %92 = select i1 %91, ptr %61, ptr %68
  %93 = select i1 %91, i32 2, i32 0
  br label %94

94:                                               ; preds = %88, %71
  %95 = phi i32 [ %60, %71 ], [ %89, %88 ]
  %96 = phi ptr [ %61, %71 ], [ %92, %88 ]
  %97 = phi i32 [ 1, %71 ], [ %93, %88 ]
  switch i32 %97, label %100 [
    i32 0, label %59
    i32 2, label %98
  ], !llvm.loop !53

98:                                               ; preds = %94
  %99 = trunc i32 %95 to i16
  store i16 %99, ptr %53, align 2, !tbaa !50
  br label %100

100:                                              ; preds = %94, %98, %43
  %101 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !56
  %103 = icmp eq ptr %102, null
  br i1 %103, label %152, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 1, i32 0, i32 1
  %106 = load i16, ptr %105, align 2, !tbaa !50
  %107 = zext i16 %106 to i32
  %108 = load i8, ptr @gp_file_name_list_separator, align 1
  %109 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 0, i32 0, i32 1
  %110 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 9, i32 0, i32 1
  br label %111

111:                                              ; preds = %146, %104
  %112 = phi i32 [ %147, %146 ], [ %107, %104 ]
  %113 = phi ptr [ %148, %146 ], [ %102, %104 ]
  br label %114

114:                                              ; preds = %114, %111
  %115 = phi ptr [ %113, %111 ], [ %120, %114 ]
  %116 = load i8, ptr %115, align 1, !tbaa !26
  %117 = icmp eq i8 %116, 0
  %118 = icmp eq i8 %116, %108
  %119 = select i1 %117, i1 true, i1 %118
  %120 = getelementptr inbounds i8, ptr %115, i64 1
  br i1 %119, label %121, label %114, !llvm.loop !51

121:                                              ; preds = %114
  %122 = icmp ugt ptr %115, %113
  br i1 %122, label %123, label %140

123:                                              ; preds = %121
  %124 = load i16, ptr %109, align 2, !tbaa !52
  %125 = zext i16 %124 to i32
  %126 = icmp eq i32 %112, %125
  br i1 %126, label %146, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr %110, align 8, !tbaa !26
  %129 = zext i32 %112 to i64
  %130 = getelementptr inbounds %struct.ref_s, ptr %128, i64 %129, i32 1
  store ptr %113, ptr %130, align 8, !tbaa !26
  %131 = load ptr, ptr %110, align 8, !tbaa !26
  %132 = getelementptr inbounds %struct.ref_s, ptr %131, i64 %129
  store i16 4704, ptr %132, align 8, !tbaa !39
  %133 = ptrtoint ptr %115 to i64
  %134 = ptrtoint ptr %113 to i64
  %135 = sub i64 %133, %134
  %136 = trunc i64 %135 to i16
  %137 = load ptr, ptr %110, align 8, !tbaa !26
  %138 = getelementptr inbounds %struct.ref_s, ptr %137, i64 %129, i32 0, i32 1
  store i16 %136, ptr %138, align 2, !tbaa !36
  %139 = add i32 %112, 1
  br label %140

140:                                              ; preds = %127, %121
  %141 = phi i32 [ %139, %127 ], [ %112, %121 ]
  %142 = load i8, ptr %115, align 1, !tbaa !26
  %143 = icmp eq i8 %142, 0
  %144 = select i1 %143, ptr %113, ptr %120
  %145 = select i1 %143, i32 2, i32 0
  br label %146

146:                                              ; preds = %140, %123
  %147 = phi i32 [ %112, %123 ], [ %141, %140 ]
  %148 = phi ptr [ %113, %123 ], [ %144, %140 ]
  %149 = phi i32 [ 1, %123 ], [ %145, %140 ]
  switch i32 %149, label %152 [
    i32 0, label %111
    i32 2, label %150
  ], !llvm.loop !53

150:                                              ; preds = %146
  %151 = trunc i32 %147 to i16
  store i16 %151, ptr %105, align 2, !tbaa !50
  br label %152

152:                                              ; preds = %146, %150, %100
  ret void
}

declare i32 @bytes_compare(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_main_lib_open(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = alloca [200 x i8], align 16
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %7 = trunc i64 %6 to i32
  %8 = call i32 @lib_file_open(ptr noundef %1, i32 noundef %7, ptr noundef nonnull %4, i32 noundef 200, ptr noundef nonnull %5, ptr noundef %2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #10
  ret i32 %8
}

declare i32 @lib_file_open(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_main_run_file(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 {
  %6 = alloca [200 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  tail call void @gs_main_set_lib_paths(ptr noundef %0)
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %10 = trunc i64 %9 to i32
  %11 = call i32 @lib_file_open(ptr noundef %1, i32 noundef %10, ptr noundef nonnull %6, i32 noundef 200, ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %6) #10
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.5, ptr noundef %1)
  br label %19

16:                                               ; preds = %5
  %17 = load i16, ptr %8, align 8, !tbaa !39
  %18 = or i16 %17, 192
  store i16 %18, ptr %8, align 8, !tbaa !39
  br label %19

19:                                               ; preds = %13, %16
  %20 = phi i32 [ -100, %13 ], [ 0, %16 ]
  br i1 %12, label %23, label %21

21:                                               ; preds = %19
  %22 = call i32 @gs_interpret(ptr noundef nonnull %8, i32 noundef %2, ptr noundef %3, ptr noundef %4) #10
  br label %23

23:                                               ; preds = %19, %21
  %24 = phi i32 [ %22, %21 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_main_run_file_open(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = alloca [200 x i8], align 16
  %5 = alloca i32, align 4
  tail call void @gs_main_set_lib_paths(ptr noundef %0)
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %7 = trunc i64 %6 to i32
  %8 = call i32 @lib_file_open(ptr noundef %1, i32 noundef %7, ptr noundef nonnull %4, i32 noundef 200, ptr noundef nonnull %5, ptr noundef %2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #10
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.5, ptr noundef %1)
  br label %16

13:                                               ; preds = %3
  %14 = load i16, ptr %2, align 8, !tbaa !39
  %15 = or i16 %14, 192
  store i16 %15, ptr %2, align 8, !tbaa !39
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i32 [ -100, %10 ], [ 0, %13 ]
  ret i32 %17
}

declare i32 @gs_interpret(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_main_run_string(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 {
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %7 = trunc i64 %6 to i32
  %8 = tail call i32 @gs_main_run_string_with_length(ptr noundef %0, ptr noundef %1, i32 noundef %7, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_main_run_string_with_length(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 {
  %7 = alloca %struct.ref_s, align 8
  %8 = alloca %struct.ref_s, align 8
  %9 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #10
  tail call void @gs_main_set_lib_paths(ptr noundef %0)
  %10 = getelementptr inbounds %struct.ref_s, ptr %9, i64 0, i32 1
  store ptr @.str.6, ptr %10, align 8, !tbaa !26
  store i16 4832, ptr %9, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.tas_s, ptr %9, i64 0, i32 1
  store i16 15, ptr %11, align 2, !tbaa !36
  %12 = call i32 @gs_interpret(ptr noundef nonnull %9, i32 noundef %3, ptr noundef %4, ptr noundef %5) #10
  %13 = icmp eq i32 %12, -106
  %14 = icmp eq i32 %12, 0
  %15 = select i1 %14, i32 -100, i32 %12
  %16 = select i1 %13, i32 0, i32 %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #10
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  %19 = icmp eq i32 %2, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.ref_s, ptr %8, i64 0, i32 1
  store ptr %1, ptr %21, align 8, !tbaa !26
  store i16 4704, ptr %8, align 8, !tbaa !39
  %22 = trunc i32 %2 to i16
  %23 = getelementptr inbounds %struct.tas_s, ptr %8, i64 0, i32 1
  store i16 %22, ptr %23, align 2, !tbaa !36
  %24 = call i32 @gs_interpret(ptr noundef nonnull %8, i32 noundef %3, ptr noundef %4, ptr noundef %5) #10
  br label %25

25:                                               ; preds = %18, %20
  %26 = phi i32 [ %24, %20 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  %27 = icmp eq i32 %26, -106
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  %29 = getelementptr inbounds %struct.ref_s, ptr %7, i64 0, i32 1
  store ptr null, ptr %29, align 8, !tbaa !26
  store i16 4704, ptr %7, align 8, !tbaa !39
  %30 = getelementptr inbounds %struct.tas_s, ptr %7, i64 0, i32 1
  store i16 0, ptr %30, align 2, !tbaa !36
  %31 = call i32 @gs_interpret(ptr noundef nonnull %7, i32 noundef %3, ptr noundef %4, ptr noundef %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  br label %32

32:                                               ; preds = %25, %6, %28
  %33 = phi i32 [ %31, %28 ], [ %16, %6 ], [ %26, %25 ]
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_main_run_string_begin(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 {
  %5 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  tail call void @gs_main_set_lib_paths(ptr noundef %0)
  %6 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  store ptr @.str.6, ptr %6, align 8, !tbaa !26
  store i16 4832, ptr %5, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.tas_s, ptr %5, i64 0, i32 1
  store i16 15, ptr %7, align 2, !tbaa !36
  %8 = call i32 @gs_interpret(ptr noundef nonnull %5, i32 noundef %1, ptr noundef %2, ptr noundef %3) #10
  %9 = icmp eq i32 %8, -106
  %10 = icmp eq i32 %8, 0
  %11 = select i1 %10, i32 -100, i32 %8
  %12 = select i1 %9, i32 0, i32 %11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_main_run_string_continue(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 {
  %7 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ref_s, ptr %7, i64 0, i32 1
  store ptr %1, ptr %10, align 8, !tbaa !26
  store i16 4704, ptr %7, align 8, !tbaa !39
  %11 = trunc i32 %2 to i16
  %12 = getelementptr inbounds %struct.tas_s, ptr %7, i64 0, i32 1
  store i16 %11, ptr %12, align 2, !tbaa !36
  %13 = call i32 @gs_interpret(ptr noundef nonnull %7, i32 noundef %3, ptr noundef %4, ptr noundef %5) #10
  br label %14

14:                                               ; preds = %6, %9
  %15 = phi i32 [ %13, %9 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_main_run_string_end(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 {
  %5 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  %6 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !26
  store i16 4704, ptr %5, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.tas_s, ptr %5, i64 0, i32 1
  store i16 0, ptr %7, align 2, !tbaa !36
  %8 = call i32 @gs_interpret(ptr noundef nonnull %5, i32 noundef %1, ptr noundef %2, ptr noundef %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_push_boolean(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = tail call i32 @ref_stack_push(ptr noundef nonnull @o_stack, i32 noundef 1) #10
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = trunc i32 %1 to i16
  %7 = tail call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef 0) #10
  store i16 256, ptr %7, align 8, !tbaa.struct !48
  %8 = getelementptr inbounds i8, ptr %7, i64 8
  store i16 %6, ptr %8, align 8, !tbaa.struct !57
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi i32 [ 0, %5 ], [ %3, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_push_integer(ptr nocapture noundef readnone %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = tail call i32 @ref_stack_push(ptr noundef nonnull @o_stack, i32 noundef 1) #10
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef 0) #10
  store i16 2816, ptr %6, align 8, !tbaa.struct !48
  %7 = getelementptr inbounds i8, ptr %6, i64 8
  store i64 %1, ptr %7, align 8, !tbaa.struct !57
  br label %8

8:                                                ; preds = %2, %5
  %9 = phi i32 [ 0, %5 ], [ %3, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_push_real(ptr nocapture noundef readnone %0, double noundef %1) local_unnamed_addr #3 {
  %3 = tail call i32 @ref_stack_push(ptr noundef nonnull @o_stack, i32 noundef 1) #10
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = fptrunc double %1 to float
  %7 = tail call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef 0) #10
  store i16 4096, ptr %7, align 8, !tbaa.struct !48
  %8 = getelementptr inbounds i8, ptr %7, i64 8
  store float %6, ptr %8, align 8, !tbaa.struct !57
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi i32 [ 0, %5 ], [ %3, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_push_string(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = tail call i32 @ref_stack_push(ptr noundef nonnull @o_stack, i32 noundef 1) #10
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = trunc i32 %2 to i16
  %9 = icmp eq i32 %3, 0
  %10 = select i1 %9, i16 4720, i16 4704
  %11 = tail call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef 0) #10
  store i16 %10, ptr %11, align 8, !tbaa.struct !48
  %12 = getelementptr inbounds i8, ptr %11, i64 2
  store i16 %8, ptr %12, align 2, !tbaa.struct !58
  %13 = getelementptr inbounds i8, ptr %11, i64 8
  store ptr %1, ptr %13, align 8, !tbaa.struct !57
  br label %14

14:                                               ; preds = %4, %7
  %15 = phi i32 [ 0, %7 ], [ %5, %4 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_pop_boolean(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = tail call i32 @ref_stack_count(ptr noundef nonnull @o_stack) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef 0) #10
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa.struct !59
  %9 = getelementptr inbounds i8, ptr %6, i64 8
  %10 = load i16, ptr %9, align 8, !tbaa.struct !57
  %11 = icmp ne i8 %8, 1
  %12 = zext i16 %10 to i32
  br label %13

13:                                               ; preds = %2, %5
  %14 = phi i32 [ -17, %2 ], [ -20, %5 ]
  %15 = phi i1 [ true, %2 ], [ %11, %5 ]
  %16 = phi i32 [ 0, %2 ], [ %12, %5 ]
  br i1 %15, label %18, label %17

17:                                               ; preds = %13
  store i32 %16, ptr %1, align 4, !tbaa !18
  tail call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef 1) #10
  br label %18

18:                                               ; preds = %13, %17
  %19 = phi i32 [ 0, %17 ], [ %14, %13 ]
  ret i32 %19
}

declare void @ref_stack_pop(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_pop_integer(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = tail call i32 @ref_stack_count(ptr noundef nonnull @o_stack) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef 0) #10
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa.struct !59
  %9 = getelementptr inbounds i8, ptr %6, i64 8
  %10 = load i64, ptr %9, align 8, !tbaa.struct !57
  %11 = icmp ne i8 %8, 11
  br label %12

12:                                               ; preds = %2, %5
  %13 = phi i32 [ -17, %2 ], [ -20, %5 ]
  %14 = phi i1 [ true, %2 ], [ %11, %5 ]
  %15 = phi i64 [ undef, %2 ], [ %10, %5 ]
  br i1 %14, label %17, label %16

16:                                               ; preds = %12
  store i64 %15, ptr %1, align 8, !tbaa !19
  tail call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef 1) #10
  br label %17

17:                                               ; preds = %12, %16
  %18 = phi i32 [ 0, %16 ], [ %13, %12 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_pop_real(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = tail call i32 @ref_stack_count(ptr noundef nonnull @o_stack) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef 0) #10
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa.struct !59
  %9 = getelementptr inbounds i8, ptr %6, i64 8
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds i8, ptr %6, i64 12
  %12 = load i32, ptr %11, align 4
  %13 = zext i32 %12 to i64
  %14 = shl nuw i64 %13, 32
  br label %15

15:                                               ; preds = %2, %5
  %16 = phi i32 [ undef, %2 ], [ %10, %5 ]
  %17 = phi i8 [ undef, %2 ], [ %8, %5 ]
  %18 = phi i64 [ 0, %2 ], [ %14, %5 ]
  %19 = phi i32 [ -17, %2 ], [ 0, %5 ]
  br i1 %4, label %29, label %20

20:                                               ; preds = %15
  switch i8 %17, label %29 [
    i8 16, label %21
    i8 11, label %23
  ]

21:                                               ; preds = %20
  %22 = bitcast i32 %16 to float
  br label %27

23:                                               ; preds = %20
  %24 = zext i32 %16 to i64
  %25 = or disjoint i64 %18, %24
  %26 = sitofp i64 %25 to float
  br label %27

27:                                               ; preds = %23, %21
  %28 = phi float [ %26, %23 ], [ %22, %21 ]
  store float %28, ptr %1, align 4, !tbaa !21
  tail call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef 1) #10
  br label %29

29:                                               ; preds = %20, %15, %27
  %30 = phi i32 [ 0, %27 ], [ %19, %15 ], [ -20, %20 ]
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_pop_string(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %4 = tail call i32 @ref_stack_count(ptr noundef nonnull @o_stack) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef 0) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !48
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ 0, %6 ], [ -17, %2 ]
  br i1 %5, label %27, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds i8, ptr %3, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !26
  switch i8 %12, label %27 [
    i8 13, label %13
    i8 18, label %14
  ]

13:                                               ; preds = %10
  call void @name_string_ref(ptr noundef nonnull %3, ptr noundef nonnull %3) #10
  br label %19

14:                                               ; preds = %10
  %15 = load i16, ptr %3, align 8, !tbaa !39
  %16 = and i16 %15, 16
  %17 = icmp eq i16 %16, 0
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %14, %13
  %20 = phi i32 [ %18, %14 ], [ 1, %13 ]
  %21 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !26
  store ptr %22, ptr %1, align 8, !tbaa !60
  %23 = getelementptr inbounds %struct.tas_s, ptr %3, i64 0, i32 1
  %24 = load i16, ptr %23, align 2, !tbaa !36
  %25 = zext i16 %24 to i32
  %26 = getelementptr inbounds %struct.gs_string_s, ptr %1, i64 0, i32 1
  store i32 %25, ptr %26, align 8, !tbaa !61
  call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef 1) #10
  br label %27

27:                                               ; preds = %10, %8, %19
  %28 = phi i32 [ %20, %19 ], [ %9, %8 ], [ -20, %10 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i32 %28
}

declare void @name_string_ref(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @gs_main_finit(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  store i32 %1, ptr @gs_exit_status, align 4, !tbaa !18
  %4 = getelementptr inbounds %struct.gs_main_instance_s, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !32
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @alloc_restore_all(ptr noundef nonnull @gs_imemory) #10
  br label %8

8:                                                ; preds = %7, %3
  tail call void @gs_lib_finit(i32 noundef %1, i32 noundef %2) #10
  ret void
}

declare void @alloc_restore_all(ptr noundef) local_unnamed_addr #4

declare void @gs_lib_finit(i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @gp_do_exit(i32 noundef) local_unnamed_addr #4

declare i32 @zflush(ptr noundef) local_unnamed_addr #4

declare void @debug_print_ref(ptr noundef) local_unnamed_addr #4

declare void @debug_dump_stack(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @file_read_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @scan_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ref_stack_push(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @ref_stack_index(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @ref_stack_count(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!9 = !{!10, !11, i64 24}
!10 = !{!"gs_main_instance_s", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !12, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !13, i64 56}
!11 = !{!"int", !7, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!"gs_file_path_s", !14, i64 0, !14, i64 16, !6, i64 32, !6, i64 40, !11, i64 48}
!14 = !{!"ref_s", !15, i64 0, !7, i64 8}
!15 = !{!"tas_s", !16, i64 0, !16, i64 2}
!16 = !{!"short", !7, i64 0}
!17 = !{i64 0, i64 8, !5, i64 8, i64 8, !5, i64 16, i64 8, !5, i64 24, i64 4, !18, i64 32, i64 8, !19, i64 40, i64 4, !18, i64 44, i64 4, !18, i64 48, i64 4, !18, i64 52, i64 4, !18, i64 56, i64 2, !20, i64 58, i64 2, !20, i64 64, i64 8, !19, i64 64, i64 2, !20, i64 64, i64 4, !21, i64 64, i64 8, !19, i64 64, i64 8, !5, i64 64, i64 8, !5, i64 64, i64 8, !5, i64 64, i64 8, !5, i64 64, i64 8, !5, i64 64, i64 8, !5, i64 64, i64 8, !5, i64 64, i64 8, !5, i64 64, i64 8, !5, i64 64, i64 8, !5, i64 64, i64 8, !5, i64 64, i64 8, !5, i64 64, i64 8, !5, i64 72, i64 2, !20, i64 74, i64 2, !20, i64 80, i64 8, !19, i64 80, i64 2, !20, i64 80, i64 4, !21, i64 80, i64 8, !19, i64 80, i64 8, !5, i64 80, i64 8, !5, i64 80, i64 8, !5, i64 80, i64 8, !5, i64 80, i64 8, !5, i64 80, i64 8, !5, i64 80, i64 8, !5, i64 80, i64 8, !5, i64 80, i64 8, !5, i64 80, i64 8, !5, i64 80, i64 8, !5, i64 80, i64 8, !5, i64 80, i64 8, !5, i64 88, i64 8, !5, i64 96, i64 8, !5, i64 104, i64 4, !18}
!18 = !{!11, !11, i64 0}
!19 = !{!12, !12, i64 0}
!20 = !{!16, !16, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"float", !7, i64 0}
!23 = !{!24, !6, i64 32}
!24 = !{!"gs_memory_s", !25, i64 0}
!25 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!26 = !{!7, !7, i64 0}
!27 = !{!10, !16, i64 56}
!28 = !{!10, !16, i64 58}
!29 = !{!10, !16, i64 72}
!30 = !{!10, !16, i64 74}
!31 = !{!10, !11, i64 44}
!32 = !{!10, !11, i64 40}
!33 = !{!10, !12, i64 32}
!34 = !{!35, !6, i64 0}
!35 = !{!"gs_dual_memory_s", !6, i64 0, !7, i64 8, !11, i64 40, !11, i64 44, !6, i64 48, !11, i64 56, !11, i64 60}
!36 = !{!14, !16, i64 2}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = !{!14, !16, i64 0}
!40 = !{!41, !11, i64 12}
!41 = !{!"scanner_state_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !42, i64 16, !7, i64 328}
!42 = !{!"dynamic_area_s", !43, i64 0, !6, i64 16, !6, i64 24, !6, i64 32, !11, i64 40, !7, i64 44, !6, i64 304}
!43 = !{!"gs_string_s", !6, i64 0, !11, i64 8}
!44 = !{!41, !11, i64 0}
!45 = !{!41, !11, i64 8}
!46 = !{!47, !6, i64 0}
!47 = !{!"ref_stack_s", !6, i64 0, !6, i64 8, !6, i64 16, !14, i64 24, !11, i64 40, !11, i64 44, !14, i64 48, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !14, i64 88, !11, i64 104, !11, i64 108, !11, i64 112, !6, i64 120}
!48 = !{i64 0, i64 2, !20, i64 2, i64 2, !20, i64 8, i64 8, !19, i64 8, i64 2, !20, i64 8, i64 4, !21, i64 8, i64 8, !19, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5}
!49 = !{!10, !11, i64 104}
!50 = !{!13, !16, i64 18}
!51 = distinct !{!51, !38}
!52 = !{!13, !16, i64 2}
!53 = distinct !{!53, !38}
!54 = !{!10, !11, i64 48}
!55 = !{!10, !6, i64 88}
!56 = !{!10, !6, i64 96}
!57 = !{i64 0, i64 8, !19, i64 0, i64 2, !20, i64 0, i64 4, !21, i64 0, i64 8, !19, i64 0, i64 8, !5, i64 0, i64 8, !5, i64 0, i64 8, !5, i64 0, i64 8, !5, i64 0, i64 8, !5, i64 0, i64 8, !5, i64 0, i64 8, !5, i64 0, i64 8, !5, i64 0, i64 8, !5, i64 0, i64 8, !5, i64 0, i64 8, !5, i64 0, i64 8, !5, i64 0, i64 8, !5}
!58 = !{i64 0, i64 2, !20, i64 6, i64 8, !19, i64 6, i64 2, !20, i64 6, i64 4, !21, i64 6, i64 8, !19, i64 6, i64 8, !5, i64 6, i64 8, !5, i64 6, i64 8, !5, i64 6, i64 8, !5, i64 6, i64 8, !5, i64 6, i64 8, !5, i64 6, i64 8, !5, i64 6, i64 8, !5, i64 6, i64 8, !5, i64 6, i64 8, !5, i64 6, i64 8, !5, i64 6, i64 8, !5, i64 6, i64 8, !5}
!59 = !{i64 0, i64 1, !20, i64 1, i64 2, !20, i64 7, i64 8, !19, i64 7, i64 2, !20, i64 7, i64 4, !21, i64 7, i64 8, !19, i64 7, i64 8, !5, i64 7, i64 8, !5, i64 7, i64 8, !5, i64 7, i64 8, !5, i64 7, i64 8, !5, i64 7, i64 8, !5, i64 7, i64 8, !5, i64 7, i64 8, !5, i64 7, i64 8, !5, i64 7, i64 8, !5, i64 7, i64 8, !5, i64 7, i64 8, !5, i64 7, i64 8, !5}
!60 = !{!43, !6, i64 0}
!61 = !{!43, !11, i64 8}

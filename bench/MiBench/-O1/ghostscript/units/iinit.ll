; ModuleID = 'iinit.c'
source_filename = "iinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.anon = type { ptr, i32, i32 }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.gs_gc_root_s = type { ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.op_array_table_s = type { %struct.ref_s, ptr, i32, i32, i32, ptr }
%struct.op_def = type { ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [13 x i8] c"unknownerror\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"dictfull\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"dictstackoverflow\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"dictstackunderflow\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"execstackoverflow\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"invalidaccess\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"invalidexit\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"invalidfileaccess\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"invalidfont\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"invalidrestore\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"ioerror\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"limitcheck\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"nocurrentpoint\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"rangecheck\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"stackoverflow\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"stackunderflow\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"syntaxerror\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"typecheck\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"undefinedfilename\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"undefinedresult\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"unmatchedmark\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"VMerror\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"configurationerror\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"invalidcontext\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"undefinedresource\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"unregistered\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"invalidid\00", align 1
@gs_error_names = dso_local local_unnamed_addr global [31 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr null], align 16
@gs_stderr = external local_unnamed_addr global ptr, align 8
@.str.30 = private unnamed_addr constant [8 x i8] c"iinit.c\00", align 1
@.str.31 = private unnamed_addr constant [57 x i8] c"initial_enter failed (%d), entering /%s in -dict:%u/%u-\0A\00", align 1
@ref_systemdict = external global %struct.ref_s, align 8
@.str.32 = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"globaldict\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"userdict\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"filterdict\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"internaldict\00", align 1
@initial_dictionaries = dso_local local_unnamed_addr constant [5 x %struct.anon] [%struct.anon { ptr @.str.32, i32 191, i32 0 }, %struct.anon { ptr @.str.33, i32 0, i32 0 }, %struct.anon { ptr @.str.34, i32 0, i32 1 }, %struct.anon { ptr @.str.35, i32 43, i32 0 }, %struct.anon { ptr @.str.36, i32 3, i32 1 }], align 16
@initial_dstack = dso_local local_unnamed_addr global [1 x ptr] [ptr @.str.34], align 8
@op_defs_all = external local_unnamed_addr global [0 x ptr], align 8
@gs_imemory = external global %struct.gs_dual_memory_s, align 8
@ref_language_level = external local_unnamed_addr global %struct.ref_s, align 8
@min_dstack_size = external local_unnamed_addr global i32, align 4
@d_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@.str.37 = private unnamed_addr constant [11 x i8] c"systemdict\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"ErrorNames\00", align 1
@gs_copyright = external local_unnamed_addr global ptr, align 8
@.str.42 = private unnamed_addr constant [10 x i8] c"copyright\00", align 1
@gs_product = external local_unnamed_addr global ptr, align 8
@.str.43 = private unnamed_addr constant [8 x i8] c"product\00", align 1
@gs_revision = external local_unnamed_addr global i64, align 8
@.str.44 = private unnamed_addr constant [9 x i8] c"revision\00", align 1
@gs_revisiondate = external local_unnamed_addr global i64, align 8
@.str.45 = private unnamed_addr constant [13 x i8] c"revisiondate\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"op_init(op_def_table)\00", align 1
@op_def_table = dso_local global ptr null, align 8
@op_def_count = dso_local local_unnamed_addr global i32 0, align 4
@gs_interp_num_special_ops = external local_unnamed_addr constant i32, align 4
@gs_interp_max_op_num_args = external local_unnamed_addr constant i32, align 4
@op_def_root = internal global %struct.gs_gc_root_s zeroinitializer, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.47 = private unnamed_addr constant [13 x i8] c"op_def_table\00", align 1
@op_array_table_global = dso_local global %struct.op_array_table_s zeroinitializer, align 8
@op_array_root_global = internal global %struct.gs_gc_root_s zeroinitializer, align 8
@ptr_ref_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.48 = private unnamed_addr constant [23 x i8] c"op_array_table(global)\00", align 1
@op_array_nx_root_global = internal global %struct.gs_gc_root_s zeroinitializer, align 8
@.str.49 = private unnamed_addr constant [26 x i8] c"op_array nx_table(global)\00", align 1
@op_array_table_local = dso_local global %struct.op_array_table_s zeroinitializer, align 8
@op_array_root_local = internal global %struct.gs_gc_root_s zeroinitializer, align 8
@.str.50 = private unnamed_addr constant [22 x i8] c"op_array_table(local)\00", align 1
@op_array_nx_root_local = internal global %struct.gs_gc_root_s zeroinitializer, align 8
@.str.51 = private unnamed_addr constant [25 x i8] c"op_array nx_table(local)\00", align 1
@op_array_count = dso_local local_unnamed_addr global i32 0, align 4
@.str.52 = private unnamed_addr constant [24 x i8] c"name_enter failed - %s\0A\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"op_array table\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"op_array nx_table\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @initial_enter_name_in(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @dict_put_string(ptr noundef %2, ptr noundef %0, ptr noundef %1) #6
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  tail call void @lprintf_file_and_line(ptr noundef %7, ptr noundef nonnull @.str.30, i32 noundef 96) #6
  %8 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  %9 = tail call i32 @dict_length(ptr noundef %2) #6
  %10 = tail call i32 @dict_maxlength(ptr noundef %2) #6
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.31, i32 noundef %4, ptr noundef %0, i32 noundef %9, i32 noundef %10)
  tail call void @gs_exit(i32 noundef 1) #6
  br label %12

12:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @dict_put_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lprintf_file_and_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare i32 @dict_length(ptr noundef) local_unnamed_addr #2

declare i32 @dict_maxlength(ptr noundef) local_unnamed_addr #2

declare void @gs_exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @initial_enter_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @initial_enter_name_in(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ref_systemdict)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @initial_remove_name(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #7
  %4 = trunc i64 %3 to i32
  %5 = call i32 @name_ref(ptr noundef %0, i32 noundef %4, ptr noundef nonnull %2, i32 noundef -1) #6
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @dict_undef(ptr noundef nonnull @ref_systemdict, ptr noundef nonnull %2) #6
  br label %9

9:                                                ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  ret void
}

declare i32 @name_ref(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

declare i32 @dict_undef(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_have_level2() local_unnamed_addr #0 {
  %1 = load ptr, ptr @op_defs_all, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %26, label %3

3:                                                ; preds = %0, %22
  %4 = phi ptr [ %24, %22 ], [ %1, %0 ]
  %5 = phi ptr [ %23, %22 ], [ @op_defs_all, %0 ]
  %6 = tail call ptr %4() #6
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %3, %18
  %10 = phi ptr [ %20, %18 ], [ %7, %3 ]
  %11 = phi ptr [ %19, %18 ], [ %6, %3 ]
  %12 = getelementptr inbounds %struct.op_def, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(11) @.str.32) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %9, %15
  %19 = getelementptr inbounds %struct.op_def, ptr %11, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %9, !llvm.loop !12

22:                                               ; preds = %18, %3
  %23 = getelementptr inbounds ptr, ptr %5, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %3, !llvm.loop !14

26:                                               ; preds = %22, %15, %0
  %27 = phi i32 [ 0, %0 ], [ 1, %15 ], [ 0, %22 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @obj_init() local_unnamed_addr #0 {
  %1 = alloca [5 x %struct.ref_s], align 16
  %2 = alloca %struct.ref_s, align 8
  %3 = alloca %struct.ref_s, align 8
  %4 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !15
  %5 = load ptr, ptr @op_defs_all, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %0, %26
  %8 = phi ptr [ %28, %26 ], [ %5, %0 ]
  %9 = phi ptr [ %27, %26 ], [ @op_defs_all, %0 ]
  %10 = tail call ptr %8() #6
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %7, %22
  %14 = phi ptr [ %24, %22 ], [ %11, %7 ]
  %15 = phi ptr [ %23, %22 ], [ %10, %7 ]
  %16 = getelementptr inbounds %struct.op_def, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(11) @.str.32) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19, %13
  %23 = getelementptr inbounds %struct.op_def, ptr %15, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %13, !llvm.loop !12

26:                                               ; preds = %22, %7
  %27 = getelementptr inbounds ptr, ptr %9, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %7, !llvm.loop !14

30:                                               ; preds = %19
  store i64 1, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_language_level, i64 0, i32 1), align 8, !tbaa !18
  store i16 2816, ptr @ref_language_level, align 8, !tbaa !19
  tail call void @gs_interp_init() #6
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %1) #6
  store i32 2, ptr @min_dstack_size, align 4, !tbaa !23
  call void @refset_null(ptr noundef nonnull %1, i32 noundef 5) #6
  call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef 8) #6
  %31 = load ptr, ptr @d_stack, align 8, !tbaa !24
  %32 = getelementptr inbounds %struct.ref_s, ptr %31, i64 2
  store ptr %32, ptr @d_stack, align 8, !tbaa !24
  %33 = call i32 @dict_create(i32 noundef 809, ptr noundef nonnull %32) #6
  %34 = load ptr, ptr @d_stack, align 8, !tbaa !24
  %35 = getelementptr inbounds %struct.ref_s, ptr %34, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull align 8 dereferenceable(16) %34, i64 16, i1 false), !tbaa.struct !26
  %36 = load i32, ptr @min_dstack_size, align 4, !tbaa !23
  %37 = add i32 %36, 1
  store i32 %37, ptr @min_dstack_size, align 4, !tbaa !23
  br label %42

38:                                               ; preds = %26, %0
  store i64 1, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_language_level, i64 0, i32 1), align 8, !tbaa !18
  store i16 2816, ptr @ref_language_level, align 8, !tbaa !19
  tail call void @gs_interp_init() #6
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %1) #6
  store i32 2, ptr @min_dstack_size, align 4, !tbaa !23
  call void @refset_null(ptr noundef nonnull %1, i32 noundef 5) #6
  call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef 8) #6
  %39 = load ptr, ptr @d_stack, align 8, !tbaa !24
  %40 = getelementptr inbounds %struct.ref_s, ptr %39, i64 1
  store ptr %40, ptr @d_stack, align 8, !tbaa !24
  %41 = call i32 @dict_create(i32 noundef 563, ptr noundef nonnull %40) #6
  br label %42

42:                                               ; preds = %38, %30
  %43 = load ptr, ptr @d_stack, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @ref_systemdict, ptr noundef nonnull align 8 dereferenceable(16) %43, i64 16, i1 false), !tbaa.struct !26
  call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %4) #6
  %44 = load ptr, ptr @op_defs_all, align 8, !tbaa !5
  %45 = icmp eq ptr %44, null
  br i1 %45, label %68, label %46

46:                                               ; preds = %42, %64
  %47 = phi ptr [ %66, %64 ], [ %44, %42 ]
  %48 = phi ptr [ %65, %64 ], [ @op_defs_all, %42 ]
  %49 = call ptr %47() #6
  %50 = load ptr, ptr %49, align 8, !tbaa !9
  %51 = icmp eq ptr %50, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %46, %60
  %53 = phi ptr [ %62, %60 ], [ %50, %46 ]
  %54 = phi ptr [ %61, %60 ], [ %49, %46 ]
  %55 = getelementptr inbounds %struct.op_def, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !11
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call fastcc ptr @make_initial_dict(ptr noundef nonnull %53, ptr noundef nonnull %1)
  br label %60

60:                                               ; preds = %52, %58
  %61 = getelementptr inbounds %struct.op_def, ptr %54, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !9
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %52, !llvm.loop !32

64:                                               ; preds = %60, %46
  %65 = getelementptr inbounds ptr, ptr %48, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !5
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %46, !llvm.loop !33

68:                                               ; preds = %64, %42
  %69 = load ptr, ptr @initial_dstack, align 8, !tbaa !5
  %70 = load ptr, ptr @d_stack, align 8, !tbaa !24
  %71 = getelementptr inbounds %struct.ref_s, ptr %70, i64 1
  store ptr %71, ptr @d_stack, align 8, !tbaa !24
  %72 = call fastcc ptr @make_initial_dict(ptr noundef %69, ptr noundef nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %71, ptr noundef nonnull align 8 dereferenceable(16) %72, i64 16, i1 false), !tbaa.struct !26
  call void @initial_enter_name_in(ptr noundef nonnull @.str.37, ptr noundef nonnull @ref_systemdict, ptr noundef nonnull @ref_systemdict)
  br label %73

73:                                               ; preds = %68, %88
  %74 = phi i64 [ 0, %68 ], [ %89, %88 ]
  %75 = getelementptr inbounds [5 x %struct.ref_s], ptr %1, i64 0, i64 %74
  %76 = getelementptr inbounds i8, ptr %75, i64 1
  %77 = load i8, ptr %76, align 1, !tbaa !18
  %78 = icmp eq i8 %77, 14
  br i1 %78, label %88, label %79

79:                                               ; preds = %73
  %80 = load i16, ptr @ref_systemdict, align 8, !tbaa !19
  %81 = and i16 %80, 12
  %82 = or i16 %80, 12
  store i16 %82, ptr @ref_systemdict, align 8, !tbaa !19
  %83 = getelementptr inbounds [5 x %struct.anon], ptr @initial_dictionaries, i64 0, i64 %74
  %84 = load ptr, ptr %83, align 16, !tbaa !34
  call void @initial_enter_name_in(ptr noundef %84, ptr noundef nonnull %75, ptr noundef nonnull @ref_systemdict)
  %85 = load i16, ptr @ref_systemdict, align 8, !tbaa !19
  %86 = and i16 %85, -13
  %87 = or disjoint i16 %86, %81
  store i16 %87, ptr @ref_systemdict, align 8, !tbaa !19
  br label %88

88:                                               ; preds = %79, %73
  %89 = add nuw nsw i64 %74, 1
  %90 = icmp eq i64 %89, 5
  br i1 %90, label %91, label %73, !llvm.loop !36

91:                                               ; preds = %88
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %1) #6
  call void @gs_interp_reset() #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  store i16 3584, ptr %2, align 8, !tbaa !19
  call void @initial_enter_name_in(ptr noundef nonnull @.str.38, ptr noundef nonnull %2, ptr noundef nonnull @ref_systemdict)
  %92 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  store i16 1, ptr %92, align 8, !tbaa !18
  store i16 256, ptr %2, align 8, !tbaa !19
  call void @initial_enter_name_in(ptr noundef nonnull @.str.39, ptr noundef nonnull %2, ptr noundef nonnull @ref_systemdict)
  store i16 0, ptr %92, align 8, !tbaa !18
  store i16 256, ptr %2, align 8, !tbaa !19
  call void @initial_enter_name_in(ptr noundef nonnull @.str.40, ptr noundef nonnull %2, ptr noundef nonnull @ref_systemdict)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %93 = load ptr, ptr @gs_imemory, align 8, !tbaa !37
  %94 = call i32 @gs_alloc_ref_array(ptr noundef %93, ptr noundef nonnull %3, i32 noundef 96, i32 noundef 30, ptr noundef nonnull @.str.41) #6
  %95 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  br label %96

96:                                               ; preds = %91, %108
  %97 = phi i64 [ 0, %91 ], [ %109, %108 ]
  %98 = getelementptr inbounds [31 x ptr], ptr @gs_error_names, i64 0, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !5
  %100 = load ptr, ptr %95, align 8, !tbaa !18
  %101 = getelementptr inbounds %struct.ref_s, ptr %100, i64 %97
  %102 = call i32 @name_enter_string(ptr noundef %99, ptr noundef %101) #6
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %96
  %105 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  call void @lprintf_file_and_line(ptr noundef %105, ptr noundef nonnull @.str.30, i32 noundef 117) #6
  %106 = load ptr, ptr @gs_stderr, align 8, !tbaa !5
  %107 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef nonnull @.str.52, ptr noundef %99)
  call void @gs_exit(i32 noundef 1) #6
  br label %108

108:                                              ; preds = %96, %104
  %109 = add nuw nsw i64 %97, 1
  %110 = icmp eq i64 %109, 30
  br i1 %110, label %111, label %96, !llvm.loop !38

111:                                              ; preds = %108
  call void @initial_enter_name_in(ptr noundef nonnull @.str.41, ptr noundef nonnull %3, ptr noundef nonnull @ref_systemdict)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret void
}

declare void @gs_interp_init() local_unnamed_addr #2

declare void @refset_null(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ialloc_set_space(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @dict_create(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal fastcc ptr @make_initial_dict(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(11) @.str.37) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %34, label %8

5:                                                ; preds = %32
  %6 = add nuw nsw i64 %9, 1
  %7 = icmp eq i64 %6, 5
  br i1 %7, label %34, label %8, !llvm.loop !39

8:                                                ; preds = %2, %5
  %9 = phi i64 [ %6, %5 ], [ 0, %2 ]
  %10 = phi ptr [ %33, %5 ], [ undef, %2 ]
  %11 = getelementptr inbounds [5 x %struct.anon], ptr @initial_dictionaries, i64 0, i64 %9
  %12 = load ptr, ptr %11, align 16, !tbaa !34
  %13 = getelementptr inbounds [5 x %struct.anon], ptr @initial_dictionaries, i64 0, i64 %9, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !40
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %12) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.ref_s, ptr %1, i64 %9
  %19 = getelementptr inbounds i8, ptr %18, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !18
  %21 = icmp eq i8 %20, 14
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !15
  %24 = icmp ne i64 %9, 2
  %25 = icmp ne i64 %9, 4
  %26 = and i1 %24, %25
  %27 = select i1 %26, i32 8, i32 12
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %27) #6
  %28 = tail call i32 @dict_create(i32 noundef %14, ptr noundef %18) #6
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %23) #6
  %29 = icmp sgt i32 %28, -1
  %30 = select i1 %29, ptr %10, ptr null
  br i1 %29, label %31, label %32

31:                                               ; preds = %22, %17
  br label %32

32:                                               ; preds = %8, %31, %22
  %33 = phi ptr [ %18, %31 ], [ %30, %22 ], [ %10, %8 ]
  br i1 %16, label %34, label %5

34:                                               ; preds = %5, %32, %2
  %35 = phi ptr [ @ref_systemdict, %2 ], [ %33, %32 ], [ null, %5 ]
  ret ptr %35
}

declare void @gs_interp_reset() local_unnamed_addr #2

declare i32 @gs_alloc_ref_array(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @zop_init() local_unnamed_addr #0 {
  %1 = alloca %struct.ref_s, align 8
  %2 = load ptr, ptr @op_defs_all, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %0, %18
  %5 = phi ptr [ %20, %18 ], [ %2, %0 ]
  %6 = phi ptr [ %19, %18 ], [ @op_defs_all, %0 ]
  %7 = tail call ptr %5() #6
  br label %8

8:                                                ; preds = %8, %4
  %9 = phi ptr [ %7, %4 ], [ %12, %8 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.op_def, ptr %9, i64 1
  br i1 %11, label %13, label %8, !llvm.loop !41

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.op_def, ptr %9, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void %15() #6
  br label %18

18:                                               ; preds = %13, %17
  %19 = getelementptr inbounds ptr, ptr %6, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %4, !llvm.loop !42

22:                                               ; preds = %18, %0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #6
  %23 = load ptr, ptr @gs_copyright, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !18
  store i16 4704, ptr %1, align 8, !tbaa !19
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %23) #7
  %26 = trunc i64 %25 to i16
  %27 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  store i16 %26, ptr %27, align 2, !tbaa !43
  call void @initial_enter_name_in(ptr noundef nonnull @.str.42, ptr noundef nonnull %1, ptr noundef nonnull @ref_systemdict)
  %28 = load ptr, ptr @gs_product, align 8, !tbaa !5
  store ptr %28, ptr %24, align 8, !tbaa !18
  store i16 4704, ptr %1, align 8, !tbaa !19
  %29 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %28) #7
  %30 = trunc i64 %29 to i16
  store i16 %30, ptr %27, align 2, !tbaa !43
  call void @initial_enter_name_in(ptr noundef nonnull @.str.43, ptr noundef nonnull %1, ptr noundef nonnull @ref_systemdict)
  %31 = load i64, ptr @gs_revision, align 8, !tbaa !28
  store i64 %31, ptr %24, align 8, !tbaa !18
  store i16 2816, ptr %1, align 8, !tbaa !19
  call void @initial_enter_name_in(ptr noundef nonnull @.str.44, ptr noundef nonnull %1, ptr noundef nonnull @ref_systemdict)
  %32 = load i64, ptr @gs_revisiondate, align 8, !tbaa !28
  store i64 %32, ptr %24, align 8, !tbaa !18
  store i16 2816, ptr %1, align 8, !tbaa !19
  call void @initial_enter_name_in(ptr noundef nonnull @.str.45, ptr noundef nonnull %1, ptr noundef nonnull @ref_systemdict)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @op_init() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ref_s, align 8
  %3 = alloca %struct.ref_s, align 8
  %4 = load ptr, ptr @op_defs_all, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %0, %24
  %7 = phi ptr [ %27, %24 ], [ %4, %0 ]
  %8 = phi i32 [ %25, %24 ], [ 1, %0 ]
  %9 = phi ptr [ %26, %24 ], [ @op_defs_all, %0 ]
  %10 = tail call ptr %7() #6
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %6, %13
  %14 = phi i32 [ %20, %13 ], [ %8, %6 ]
  %15 = phi ptr [ %21, %13 ], [ %10, %6 ]
  %16 = getelementptr inbounds %struct.op_def, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i32
  %20 = add nsw i32 %14, %19
  %21 = getelementptr inbounds %struct.op_def, ptr %15, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %13, !llvm.loop !44

24:                                               ; preds = %13, %6
  %25 = phi i32 [ %8, %6 ], [ %20, %13 ]
  %26 = getelementptr inbounds ptr, ptr %9, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %6, !llvm.loop !45

29:                                               ; preds = %24, %0
  %30 = phi i32 [ 1, %0 ], [ %25, %24 ]
  %31 = load ptr, ptr @gs_imemory, align 8, !tbaa !37
  %32 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %31, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  %34 = tail call ptr %33(ptr noundef %31, i32 noundef %30, i32 noundef 8, ptr noundef nonnull @.str.46) #6
  store ptr %34, ptr @op_def_table, align 8, !tbaa !5
  store i32 %30, ptr @op_def_count, align 4, !tbaa !23
  %35 = load i32, ptr @gs_interp_num_special_ops, align 4, !tbaa !23
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %29
  %38 = add nuw i32 %35, 1
  %39 = zext i32 %38 to i64
  br label %40

40:                                               ; preds = %37, %40
  %41 = phi i64 [ 0, %37 ], [ %44, %40 ]
  %42 = load ptr, ptr @op_def_table, align 8, !tbaa !5
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  store ptr null, ptr %43, align 8, !tbaa !5
  %44 = add nuw nsw i64 %41, 1
  %45 = icmp eq i64 %44, %39
  br i1 %45, label %46, label %40, !llvm.loop !49

46:                                               ; preds = %40, %29
  %47 = load ptr, ptr @op_defs_all, align 8, !tbaa !5
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = add nsw i32 %35, 1
  %51 = getelementptr inbounds %struct.tas_s, ptr %3, i64 0, i32 1
  %52 = load i32, ptr @gs_interp_max_op_num_args, align 4
  br label %58

53:                                               ; preds = %116, %46
  %54 = icmp slt i32 %35, 1
  br i1 %54, label %131, label %55

55:                                               ; preds = %53
  %56 = add nuw i32 %35, 1
  %57 = zext i32 %56 to i64
  br label %121

58:                                               ; preds = %49, %116
  %59 = phi ptr [ %47, %49 ], [ %119, %116 ]
  %60 = phi i32 [ %50, %49 ], [ %117, %116 ]
  %61 = phi ptr [ @op_defs_all, %49 ], [ %118, %116 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #6
  store ptr @ref_systemdict, ptr %1, align 8, !tbaa !5
  %62 = call ptr %59() #6
  %63 = load ptr, ptr %62, align 8, !tbaa !9
  %64 = icmp eq ptr %63, null
  br i1 %64, label %116, label %65

65:                                               ; preds = %58, %111
  %66 = phi ptr [ %114, %111 ], [ %63, %58 ]
  %67 = phi i32 [ %112, %111 ], [ %60, %58 ]
  %68 = phi ptr [ %113, %111 ], [ %62, %58 ]
  %69 = getelementptr inbounds %struct.op_def, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !11
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %89

72:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  %73 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %66) #7
  %74 = trunc i64 %73 to i32
  %75 = call i32 @name_ref(ptr noundef nonnull %66, i32 noundef %74, ptr noundef nonnull %2, i32 noundef -1) #6
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  call void @gs_exit(i32 noundef 1) #6
  br label %78

78:                                               ; preds = %77, %72
  %79 = call i32 @dict_find(ptr noundef nonnull @ref_systemdict, ptr noundef nonnull %2, ptr noundef nonnull %1) #6
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  call void @gs_exit(i32 noundef 1) #6
  br label %82

82:                                               ; preds = %81, %78
  %83 = load ptr, ptr %1, align 8, !tbaa !5
  %84 = getelementptr inbounds i8, ptr %83, i64 1
  %85 = load i8, ptr %84, align 1, !tbaa !18
  %86 = icmp eq i8 %85, 2
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  call void @gs_exit(i32 noundef 1) #6
  br label %88

88:                                               ; preds = %87, %82
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  br label %111

89:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %90 = load ptr, ptr %69, align 8, !tbaa !11
  call void @gs_interp_make_oper(ptr noundef nonnull %3, ptr noundef %90, i32 noundef %67) #6
  %91 = load i16, ptr %51, align 2, !tbaa !43
  %92 = zext i16 %91 to i32
  %93 = load i8, ptr %66, align 1, !tbaa !18
  %94 = sext i8 %93 to i32
  %95 = add nsw i32 %94, -48
  %96 = icmp sgt i32 %95, %52
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  call void @gs_exit(i32 noundef 1) #6
  br label %98

98:                                               ; preds = %97, %89
  %99 = getelementptr inbounds i8, ptr %66, i64 1
  %100 = load i8, ptr %99, align 1, !tbaa !18
  %101 = icmp eq i8 %100, 37
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %1, align 8, !tbaa !5
  call void @initial_enter_name_in(ptr noundef nonnull %99, ptr noundef nonnull %3, ptr noundef %103)
  br label %104

104:                                              ; preds = %102, %98
  %105 = load ptr, ptr @op_def_table, align 8, !tbaa !5
  %106 = zext i16 %91 to i64
  %107 = getelementptr inbounds ptr, ptr %105, i64 %106
  store ptr %68, ptr %107, align 8, !tbaa !5
  %108 = icmp eq i32 %67, %92
  %109 = zext i1 %108 to i32
  %110 = add nuw nsw i32 %67, %109
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  br label %111

111:                                              ; preds = %88, %104
  %112 = phi i32 [ %67, %88 ], [ %110, %104 ]
  %113 = getelementptr inbounds %struct.op_def, ptr %68, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !9
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %65, !llvm.loop !50

116:                                              ; preds = %111, %58
  %117 = phi i32 [ %60, %58 ], [ %112, %111 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #6
  %118 = getelementptr inbounds ptr, ptr %61, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !5
  %120 = icmp eq ptr %119, null
  br i1 %120, label %53, label %58, !llvm.loop !51

121:                                              ; preds = %55, %128
  %122 = phi i64 [ 1, %55 ], [ %129, %128 ]
  %123 = load ptr, ptr @op_def_table, align 8, !tbaa !5
  %124 = getelementptr inbounds ptr, ptr %123, i64 %122
  %125 = load ptr, ptr %124, align 8, !tbaa !5
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  call void @gs_exit(i32 noundef 1) #6
  br label %128

128:                                              ; preds = %121, %127
  %129 = add nuw nsw i64 %122, 1
  %130 = icmp eq i64 %129, %57
  br i1 %130, label %131, label %121, !llvm.loop !52

131:                                              ; preds = %128, %53
  %132 = load ptr, ptr @gs_imemory, align 8, !tbaa !37
  %133 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %132, i64 0, i32 16
  %134 = load ptr, ptr %133, align 8, !tbaa !53
  call void %134(ptr noundef %132, ptr noundef nonnull @op_def_root, ptr noundef nonnull @ptr_struct_procs, ptr noundef nonnull @op_def_table, ptr noundef nonnull @.str.47) #6
  %135 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !15
  call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef 8) #6
  %136 = load ptr, ptr @gs_imemory, align 8, !tbaa !37
  %137 = call i32 @gs_alloc_ref_array(ptr noundef %136, ptr noundef nonnull @op_array_table_global, i32 noundef 96, i32 noundef 120, ptr noundef nonnull @.str.53) #6
  call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %135) #6
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %131
  %140 = load ptr, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_global, i64 0, i32 0, i32 1), align 8, !tbaa !18
  call void @refset_null(ptr noundef %140, i32 noundef 120) #6
  %141 = load ptr, ptr @gs_imemory, align 8, !tbaa !37
  %142 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %141, i64 0, i32 4
  %143 = load ptr, ptr %142, align 8, !tbaa !46
  %144 = call ptr %143(ptr noundef %141, i32 noundef 120, i32 noundef 2, ptr noundef nonnull @.str.54) #6
  store ptr %144, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_global, i64 0, i32 1), align 8, !tbaa !54
  %145 = icmp eq ptr %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %139
  store i32 0, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_global, i64 0, i32 2), align 8, !tbaa !56
  store ptr @op_array_table_global, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_global, i64 0, i32 5), align 8, !tbaa !57
  store i32 136, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_global, i64 0, i32 4), align 8, !tbaa !58
  br label %148

147:                                              ; preds = %139, %131
  call void @gs_exit(i32 noundef 1) #6
  br label %148

148:                                              ; preds = %146, %147
  %149 = load i32, ptr @op_def_count, align 4, !tbaa !23
  store i32 %149, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_global, i64 0, i32 3), align 4, !tbaa !59
  %150 = load ptr, ptr @gs_imemory, align 8, !tbaa !37
  %151 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %150, i64 0, i32 16
  %152 = load ptr, ptr %151, align 8, !tbaa !53
  call void %152(ptr noundef %150, ptr noundef nonnull @op_array_root_global, ptr noundef nonnull @ptr_ref_procs, ptr noundef nonnull getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_global, i64 0, i32 5), ptr noundef nonnull @.str.48) #6
  %153 = load ptr, ptr @gs_imemory, align 8, !tbaa !37
  %154 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %153, i64 0, i32 16
  %155 = load ptr, ptr %154, align 8, !tbaa !53
  call void %155(ptr noundef %153, ptr noundef nonnull @op_array_nx_root_global, ptr noundef nonnull @ptr_struct_procs, ptr noundef nonnull getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_global, i64 0, i32 1), ptr noundef nonnull @.str.49) #6
  %156 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !15
  call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef 12) #6
  %157 = load ptr, ptr @gs_imemory, align 8, !tbaa !37
  %158 = call i32 @gs_alloc_ref_array(ptr noundef %157, ptr noundef nonnull @op_array_table_local, i32 noundef 96, i32 noundef 60, ptr noundef nonnull @.str.53) #6
  call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %156) #6
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %168, label %160

160:                                              ; preds = %148
  %161 = load ptr, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_local, i64 0, i32 0, i32 1), align 8, !tbaa !18
  call void @refset_null(ptr noundef %161, i32 noundef 60) #6
  %162 = load ptr, ptr @gs_imemory, align 8, !tbaa !37
  %163 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %162, i64 0, i32 4
  %164 = load ptr, ptr %163, align 8, !tbaa !46
  %165 = call ptr %164(ptr noundef %162, i32 noundef 60, i32 noundef 2, ptr noundef nonnull @.str.54) #6
  store ptr %165, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_local, i64 0, i32 1), align 8, !tbaa !54
  %166 = icmp eq ptr %165, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %160
  store i32 0, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_local, i64 0, i32 2), align 8, !tbaa !56
  store ptr @op_array_table_local, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_local, i64 0, i32 5), align 8, !tbaa !57
  store i32 140, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_local, i64 0, i32 4), align 8, !tbaa !58
  br label %169

168:                                              ; preds = %160, %148
  call void @gs_exit(i32 noundef 1) #6
  br label %169

169:                                              ; preds = %167, %168
  %170 = load i32, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_global, i64 0, i32 3), align 4, !tbaa !59
  %171 = load i16, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_global, i64 0, i32 0, i32 0, i32 1), align 2, !tbaa !60
  %172 = zext i16 %171 to i32
  %173 = add i32 %170, %172
  store i32 %173, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_local, i64 0, i32 3), align 4, !tbaa !59
  %174 = load ptr, ptr @gs_imemory, align 8, !tbaa !37
  %175 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %174, i64 0, i32 16
  %176 = load ptr, ptr %175, align 8, !tbaa !53
  call void %176(ptr noundef %174, ptr noundef nonnull @op_array_root_local, ptr noundef nonnull @ptr_ref_procs, ptr noundef nonnull getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_local, i64 0, i32 5), ptr noundef nonnull @.str.50) #6
  %177 = load ptr, ptr @gs_imemory, align 8, !tbaa !37
  %178 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %177, i64 0, i32 16
  %179 = load ptr, ptr %178, align 8, !tbaa !53
  call void %179(ptr noundef %177, ptr noundef nonnull @op_array_nx_root_local, ptr noundef nonnull @ptr_struct_procs, ptr noundef nonnull getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_local, i64 0, i32 1), ptr noundef nonnull @.str.51) #6
  ret void
}

declare i32 @dict_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gs_interp_make_oper(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @name_enter_string(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!9 = !{!10, !6, i64 0}
!10 = !{!"", !6, i64 0, !6, i64 8}
!11 = !{!10, !6, i64 8}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !13}
!15 = !{!16, !17, i64 40}
!16 = !{!"gs_dual_memory_s", !6, i64 0, !7, i64 8, !17, i64 40, !17, i64 44, !6, i64 48, !17, i64 56, !17, i64 60}
!17 = !{!"int", !7, i64 0}
!18 = !{!7, !7, i64 0}
!19 = !{!20, !22, i64 0}
!20 = !{!"ref_s", !21, i64 0, !7, i64 8}
!21 = !{!"tas_s", !22, i64 0, !22, i64 2}
!22 = !{!"short", !7, i64 0}
!23 = !{!17, !17, i64 0}
!24 = !{!25, !6, i64 0}
!25 = !{!"ref_stack_s", !6, i64 0, !6, i64 8, !6, i64 16, !20, i64 24, !17, i64 40, !17, i64 44, !20, i64 48, !17, i64 64, !17, i64 68, !17, i64 72, !17, i64 76, !17, i64 80, !20, i64 88, !17, i64 104, !17, i64 108, !17, i64 112, !6, i64 120}
!26 = !{i64 0, i64 2, !27, i64 2, i64 2, !27, i64 8, i64 8, !28, i64 8, i64 2, !27, i64 8, i64 4, !30, i64 8, i64 8, !28, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5}
!27 = !{!22, !22, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"long", !7, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"float", !7, i64 0}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13}
!34 = !{!35, !6, i64 0}
!35 = !{!"", !6, i64 0, !17, i64 8, !17, i64 12}
!36 = distinct !{!36, !13}
!37 = !{!16, !6, i64 0}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = !{!35, !17, i64 8}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = !{!20, !22, i64 2}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = !{!47, !6, i64 32}
!47 = !{!"gs_memory_s", !48, i64 0}
!48 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = !{!47, !6, i64 128}
!54 = !{!55, !6, i64 16}
!55 = !{!"op_array_table_s", !20, i64 0, !6, i64 16, !17, i64 24, !17, i64 28, !17, i64 32, !6, i64 40}
!56 = !{!55, !17, i64 24}
!57 = !{!55, !6, i64 40}
!58 = !{!55, !17, i64 32}
!59 = !{!55, !17, i64 28}
!60 = !{!55, !22, i64 2}

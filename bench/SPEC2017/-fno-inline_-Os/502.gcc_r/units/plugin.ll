; ModuleID = 'plugin.c'
source_filename = "plugin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.plugin_name_args = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.plugin_argument = type { ptr, ptr }
%struct.callback_info = type { ptr, ptr, ptr, ptr }
%struct.print_options = type { ptr, ptr }
%struct.plugin_gcc_version = type { ptr, ptr, ptr, ptr, ptr }

@plugin_event_name_init = internal global [23 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], align 16
@plugin_event_name = dso_local local_unnamed_addr global ptr @plugin_event_name_init, align 8
@plugin_name_args_tab = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [52 x i8] c"Plugin %s was specified with different paths:\0A%s\0A%s\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Malformed option -fplugin-arg-%s (multiple '=' signs)\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Malformed option -fplugin-arg-%s (missing -<key>[=<value>])\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"plugin.c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"Plugin %s should be specified before -fplugin-arg-%s in the command line\00", align 1
@event_tab = internal unnamed_addr global ptr null, align 8
@event_last = internal unnamed_addr global i32 23, align 4
@event_horizon = internal unnamed_addr global i32 23, align 4
@plugin_callbacks = internal unnamed_addr global ptr @plugin_callbacks_init, align 8
@plugin_callbacks_init = internal global [23 x ptr] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [47 x i8] c"Unknown callback event registered by plugin %s\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"Plugin %s registered a null callback function for event %s\00", align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"%sVersions of loaded plugins:\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"%sHelp for the loaded plugins:\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"%-32s | %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Event\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Plugins\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"%-32s |\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [26 x i8] c"PLUGIN_PASS_MANAGER_SETUP\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"PLUGIN_FINISH_TYPE\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"PLUGIN_FINISH_UNIT\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"PLUGIN_PRE_GENERICIZE\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"PLUGIN_FINISH\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"PLUGIN_INFO\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"PLUGIN_GGC_START\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"PLUGIN_GGC_MARKING\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"PLUGIN_GGC_END\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"PLUGIN_REGISTER_GGC_ROOTS\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"PLUGIN_REGISTER_GGC_CACHES\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"PLUGIN_ATTRIBUTES\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"PLUGIN_START_UNIT\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"PLUGIN_PRAGMAS\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"PLUGIN_ALL_PASSES_START\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"PLUGIN_ALL_PASSES_END\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"PLUGIN_ALL_IPA_PASSES_START\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"PLUGIN_ALL_IPA_PASSES_END\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"PLUGIN_OVERRIDE_GATE\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"PLUGIN_PASS_EXECUTION\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"PLUGIN_EARLY_GIMPLE_PASSES_START\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"PLUGIN_EARLY_GIMPLE_PASSES_END\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"PLUGIN_NEW_PASS\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"Unknown version.\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c" %s%s: %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"No help available .\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c" %s%s:\0A\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"   %s %s\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_new_plugin(ptr noundef %0) local_unnamed_addr #0 !prof !39 {
  %2 = tail call fastcc ptr @get_plugin_base_name(ptr noundef %0) #14
  %3 = load ptr, ptr @plugin_name_args_tab, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @htab_hash_string, ptr noundef nonnull @htab_str_eq, ptr noundef null) #15
  store ptr %6, ptr @plugin_name_args_tab, align 8, !tbaa !40
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %9 = tail call ptr @htab_find_slot(ptr noundef %8, ptr noundef %2, i32 noundef 1) #15
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.plugin_name_args, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %0) #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %10, align 8, !tbaa !47
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str, ptr noundef %18, ptr noundef %14, ptr noundef %0) #15
  br label %22

19:                                               ; preds = %7
  %20 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 48) #15
  store ptr %2, ptr %20, align 8, !tbaa !47
  %21 = getelementptr inbounds %struct.plugin_name_args, ptr %20, i64 0, i32 1
  store ptr %0, ptr %21, align 8, !tbaa !44
  store ptr %20, ptr %9, align 8, !tbaa !40
  br label %22

22:                                               ; preds = %12, %17, %19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @get_plugin_base_name(ptr noundef %0) unnamed_addr #0 !prof !39 !PGOFuncName !48 {
  %2 = tail call ptr @lbasename(ptr noundef %0) #15
  %3 = tail call ptr @xstrdup(ptr noundef %2) #15
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #14
  %5 = trunc i64 %4 to i32
  tail call void @strip_off_ending(ptr noundef %3, i32 noundef %5) #15
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @htab_hash_string(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @htab_str_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !39 !PGOFuncName !49 {
  %3 = load ptr, ptr %0, align 8, !tbaa !47
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %1) #14
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @parse_plugin_arg_opt(ptr noundef %0) local_unnamed_addr #0 !prof !39 {
  %2 = load i8, ptr %0, align 1, !tbaa !50
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %41, label %4

4:                                                ; preds = %1, %28
  %5 = phi i8 [ %37, %28 ], [ %2, %1 ]
  %6 = phi i64 [ %35, %28 ], [ 0, %1 ]
  %7 = phi i64 [ %34, %28 ], [ 0, %1 ]
  %8 = phi i8 [ %33, %28 ], [ 0, %1 ]
  %9 = phi i8 [ %32, %28 ], [ 0, %1 ]
  %10 = phi i64 [ %31, %28 ], [ 0, %1 ]
  %11 = phi ptr [ %36, %28 ], [ %0, %1 ]
  %12 = phi ptr [ %30, %28 ], [ null, %1 ]
  %13 = phi ptr [ %29, %28 ], [ null, %1 ]
  %14 = icmp ne i8 %5, 45
  %15 = icmp ne i8 %9, 0
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds i8, ptr %11, i64 1
  br label %28

19:                                               ; preds = %4
  %20 = icmp eq i8 %5, 61
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  %22 = icmp eq i8 %8, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.1, ptr noundef nonnull %0) #15
  br label %99

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, ptr %11, i64 1
  br label %28

26:                                               ; preds = %19
  %27 = add i64 %6, 1
  br label %28

28:                                               ; preds = %26, %24, %17
  %29 = phi ptr [ %13, %24 ], [ %13, %26 ], [ %18, %17 ]
  %30 = phi ptr [ %25, %24 ], [ %12, %26 ], [ %12, %17 ]
  %31 = phi i64 [ %6, %24 ], [ %10, %26 ], [ %10, %17 ]
  %32 = phi i8 [ %9, %24 ], [ %9, %26 ], [ 1, %17 ]
  %33 = phi i8 [ 1, %24 ], [ %8, %26 ], [ %8, %17 ]
  %34 = phi i64 [ %7, %24 ], [ %7, %26 ], [ %6, %17 ]
  %35 = phi i64 [ 0, %24 ], [ %27, %26 ], [ 0, %17 ]
  %36 = getelementptr inbounds i8, ptr %11, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !50
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %4, !llvm.loop !51

39:                                               ; preds = %28
  %40 = icmp eq ptr %29, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %1, %39
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.2, ptr noundef nonnull %0) #15
  br label %99

42:                                               ; preds = %39
  %43 = icmp eq ptr %30, null
  %44 = select i1 %43, i64 %35, i64 %31
  %45 = add i64 %34, 1
  %46 = tail call ptr @xmalloc(i64 noundef %45) #15
  %47 = tail call ptr @strncpy(ptr noundef %46, ptr noundef nonnull %0, i64 noundef %34) #14
  %48 = getelementptr inbounds i8, ptr %46, i64 %34
  store i8 0, ptr %48, align 1, !tbaa !50
  %49 = load ptr, ptr @plugin_name_args_tab, align 8, !tbaa !40
  %50 = icmp eq ptr %49, null
  br i1 %50, label %97, label %51

51:                                               ; preds = %42
  %52 = tail call ptr @htab_find_slot(ptr noundef nonnull %49, ptr noundef nonnull %46, i32 noundef 0) #15
  %53 = icmp eq ptr %52, null
  br i1 %53, label %97, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %52, align 8, !tbaa !40
  %56 = add i64 %44, 1
  %57 = tail call ptr @xmalloc(i64 noundef %56) #15
  %58 = tail call ptr @strncpy(ptr noundef %57, ptr noundef nonnull %29, i64 noundef %44) #14
  %59 = getelementptr inbounds i8, ptr %57, i64 %44
  store i8 0, ptr %59, align 1, !tbaa !50
  br i1 %43, label %65, label %60

60:                                               ; preds = %54
  %61 = add i64 %35, 1
  %62 = tail call ptr @xmalloc(i64 noundef %61) #15
  %63 = tail call ptr @strncpy(ptr noundef %62, ptr noundef nonnull %30, i64 noundef %35) #14
  %64 = getelementptr inbounds i8, ptr %62, i64 %35
  store i8 0, ptr %64, align 1, !tbaa !50
  br label %65

65:                                               ; preds = %54, %60
  %66 = phi ptr [ %62, %60 ], [ null, %54 ]
  %67 = getelementptr inbounds %struct.plugin_name_args, ptr %55, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !53
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %65
  %71 = add nuw nsw i32 %68, 1
  %72 = zext nneg i32 %71 to i64
  %73 = shl nuw nsw i64 %72, 4
  %74 = tail call ptr @xmalloc(i64 noundef %73) #15
  %75 = getelementptr inbounds %struct.plugin_name_args, ptr %55, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !54
  %77 = load i32, ptr %67, align 8, !tbaa !53
  %78 = sext i32 %77 to i64
  %79 = shl nsw i64 %78, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %74, ptr align 8 %76, i64 %79, i1 false)
  %80 = load ptr, ptr %75, align 8, !tbaa !54
  tail call void @free(ptr noundef %80) #14
  store ptr %74, ptr %75, align 8, !tbaa !54
  %81 = load i32, ptr %67, align 8, !tbaa !53
  %82 = add nsw i32 %81, 1
  br label %90

83:                                               ; preds = %65
  %84 = getelementptr inbounds %struct.plugin_name_args, ptr %55, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !54
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 268, ptr noundef nonnull @.str.4) #15
  br label %88

88:                                               ; preds = %83, %87
  %89 = tail call ptr @xmalloc(i64 noundef 16) #15
  store ptr %89, ptr %84, align 8, !tbaa !54
  br label %90

90:                                               ; preds = %88, %70
  %91 = phi ptr [ %89, %88 ], [ %74, %70 ]
  %92 = phi i32 [ 1, %88 ], [ %82, %70 ]
  store i32 %92, ptr %67, align 8, !tbaa !53
  %93 = sext i32 %92 to i64
  %94 = getelementptr %struct.plugin_argument, ptr %91, i64 %93
  %95 = getelementptr %struct.plugin_argument, ptr %94, i64 -1
  store ptr %57, ptr %95, align 8, !tbaa !55
  %96 = getelementptr %struct.plugin_argument, ptr %94, i64 -1, i32 1
  store ptr %66, ptr %96, align 8, !tbaa !57
  br label %98

97:                                               ; preds = %51, %42
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.5, ptr noundef nonnull %46, ptr noundef nonnull %0) #15
  br label %98

98:                                               ; preds = %97, %90
  tail call void @free(ptr noundef nonnull %46) #14
  br label %99

99:                                               ; preds = %98, %41, %23
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_named_event_id(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !39 {
  %3 = load ptr, ptr @event_tab, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %28

5:                                                ; preds = %2
  %6 = tail call ptr @htab_create(i64 noundef 150, ptr noundef nonnull @htab_hash_string, ptr noundef nonnull @htab_event_eq, ptr noundef null) #15
  store ptr %6, ptr @event_tab, align 8, !tbaa !40
  %7 = load i32, ptr @event_last, align 4, !tbaa !58
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %5, %19
  %10 = phi i64 [ %22, %19 ], [ 0, %5 ]
  %11 = load ptr, ptr @event_tab, align 8, !tbaa !40
  %12 = load ptr, ptr @plugin_event_name, align 8, !tbaa !40
  %13 = getelementptr inbounds ptr, ptr %12, i64 %10
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  %15 = tail call ptr @htab_find_slot(ptr noundef %11, ptr noundef %14, i32 noundef 1) #15
  %16 = load ptr, ptr %15, align 8, !tbaa !40
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 322, ptr noundef nonnull @.str.4) #15
  br label %19

19:                                               ; preds = %9, %18
  %20 = load ptr, ptr @plugin_event_name, align 8, !tbaa !40
  %21 = getelementptr inbounds ptr, ptr %20, i64 %10
  store ptr %21, ptr %15, align 8, !tbaa !40
  %22 = add nuw nsw i64 %10, 1
  %23 = load i32, ptr @event_last, align 4, !tbaa !58
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %9, label %26, !llvm.loop !59

26:                                               ; preds = %19
  %27 = load ptr, ptr @event_tab, align 8, !tbaa !40
  br label %28

28:                                               ; preds = %26, %5, %2
  %29 = phi ptr [ %27, %26 ], [ %6, %5 ], [ %3, %2 ]
  %30 = tail call ptr @htab_find_slot(ptr noundef %29, ptr noundef %0, i32 noundef %1) #15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %80, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %30, align 8, !tbaa !40
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr @plugin_event_name, align 8, !tbaa !40
  %37 = ptrtoint ptr %33 to i64
  %38 = ptrtoint ptr %36 to i64
  %39 = sub i64 %37, %38
  %40 = lshr exact i64 %39, 3
  %41 = trunc i64 %40 to i32
  br label %80

42:                                               ; preds = %32
  %43 = load i32, ptr @event_last, align 4, !tbaa !58
  %44 = load i32, ptr @event_horizon, align 4, !tbaa !58
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %70, label %46

46:                                               ; preds = %42
  %47 = shl nsw i32 %43, 1
  store i32 %47, ptr @event_horizon, align 4, !tbaa !58
  %48 = load ptr, ptr @plugin_event_name, align 8, !tbaa !40
  %49 = icmp eq ptr %48, @plugin_event_name_init
  %50 = sext i32 %47 to i64
  %51 = shl nsw i64 %50, 3
  br i1 %49, label %52, label %58

52:                                               ; preds = %46
  %53 = tail call ptr @xmalloc(i64 noundef %51) #15
  store ptr %53, ptr @plugin_event_name, align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %53, ptr noundef nonnull align 16 dereferenceable(184) @plugin_event_name_init, i64 184, i1 false)
  %54 = load i32, ptr @event_horizon, align 4, !tbaa !58
  %55 = sext i32 %54 to i64
  %56 = shl nsw i64 %55, 3
  %57 = tail call ptr @xmalloc(i64 noundef %56) #15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %57, ptr noundef nonnull align 16 dereferenceable(184) @plugin_callbacks_init, i64 184, i1 false)
  br label %65

58:                                               ; preds = %46
  %59 = tail call ptr @xrealloc(ptr noundef %48, i64 noundef %51) #15
  store ptr %59, ptr @plugin_event_name, align 8, !tbaa !40
  %60 = load ptr, ptr @plugin_callbacks, align 8, !tbaa !40
  %61 = load i32, ptr @event_horizon, align 4, !tbaa !58
  %62 = sext i32 %61 to i64
  %63 = shl nsw i64 %62, 3
  %64 = tail call ptr @xrealloc(ptr noundef %60, i64 noundef %63) #15
  br label %65

65:                                               ; preds = %58, %52
  %66 = phi ptr [ %57, %52 ], [ %64, %58 ]
  store ptr %66, ptr @plugin_callbacks, align 8
  %67 = load ptr, ptr @event_tab, align 8, !tbaa !40
  tail call void @htab_delete(ptr noundef %67) #15
  store ptr null, ptr @event_tab, align 8, !tbaa !40
  %68 = load i32, ptr @event_last, align 4, !tbaa !58
  %69 = sext i32 %68 to i64
  br label %74

70:                                               ; preds = %42
  %71 = load ptr, ptr @plugin_event_name, align 8, !tbaa !40
  %72 = sext i32 %43 to i64
  %73 = getelementptr inbounds ptr, ptr %71, i64 %72
  store ptr %73, ptr %30, align 8, !tbaa !40
  br label %74

74:                                               ; preds = %70, %65
  %75 = phi i64 [ %72, %70 ], [ %69, %65 ]
  %76 = phi i32 [ %43, %70 ], [ %68, %65 ]
  %77 = load ptr, ptr @plugin_event_name, align 8, !tbaa !40
  %78 = getelementptr inbounds ptr, ptr %77, i64 %75
  store ptr %0, ptr %78, align 8, !tbaa !40
  %79 = add nsw i32 %76, 1
  store i32 %79, ptr @event_last, align 4, !tbaa !58
  br label %80

80:                                               ; preds = %28, %74, %35
  %81 = phi i32 [ %41, %35 ], [ %76, %74 ], [ -1, %28 ]
  ret i32 %81
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @htab_event_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !39 !PGOFuncName !60 {
  %3 = load ptr, ptr %0, align 8, !tbaa !40
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %1) #14
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_callback(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !39 {
  switch i32 %1, label %21 [
    i32 0, label %5
    i32 5, label %9
    i32 9, label %13
    i32 10, label %17
    i32 22, label %27
    i32 1, label %27
    i32 12, label %27
    i32 2, label %27
    i32 3, label %27
    i32 6, label %27
    i32 7, label %27
    i32 8, label %27
    i32 11, label %27
    i32 13, label %27
    i32 4, label %27
    i32 14, label %27
    i32 15, label %27
    i32 16, label %27
    i32 17, label %27
    i32 18, label %27
    i32 19, label %27
    i32 20, label %27
    i32 21, label %27
  ]

5:                                                ; preds = %4
  %6 = icmp eq ptr %2, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 378, ptr noundef nonnull @.str.4) #15
  br label %8

8:                                                ; preds = %5, %7
  tail call void @register_pass(ptr noundef %3) #15
  br label %43

9:                                                ; preds = %4
  %10 = icmp eq ptr %2, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 382, ptr noundef nonnull @.str.4) #15
  br label %12

12:                                               ; preds = %9, %11
  tail call fastcc void @register_plugin_info(ptr noundef %0, ptr noundef %3) #14
  br label %43

13:                                               ; preds = %4
  %14 = icmp eq ptr %2, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 386, ptr noundef nonnull @.str.4) #15
  br label %16

16:                                               ; preds = %13, %15
  tail call void @ggc_register_root_tab(ptr noundef %3) #15
  br label %43

17:                                               ; preds = %4
  %18 = icmp eq ptr %2, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 390, ptr noundef nonnull @.str.4) #15
  br label %20

20:                                               ; preds = %17, %19
  tail call void @ggc_register_cache_tab(ptr noundef %3) #15
  br label %43

21:                                               ; preds = %4
  %22 = icmp sgt i32 %1, 22
  %23 = load i32, ptr @event_last, align 4
  %24 = icmp sgt i32 %23, %1
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.6, ptr noundef %0) #15
  br label %43

27:                                               ; preds = %21, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %28 = icmp eq ptr %2, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %27
  %30 = load ptr, ptr @plugin_event_name, align 8, !tbaa !40
  %31 = zext nneg i32 %1 to i64
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !40
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.7, ptr noundef %0, ptr noundef %33) #15
  br label %43

34:                                               ; preds = %27
  %35 = tail call ptr @xmalloc(i64 noundef 32) #15
  store ptr %0, ptr %35, align 8, !tbaa !61
  %36 = getelementptr inbounds %struct.callback_info, ptr %35, i64 0, i32 1
  store ptr %2, ptr %36, align 8, !tbaa !63
  %37 = getelementptr inbounds %struct.callback_info, ptr %35, i64 0, i32 2
  store ptr %3, ptr %37, align 8, !tbaa !64
  %38 = load ptr, ptr @plugin_callbacks, align 8, !tbaa !40
  %39 = zext nneg i32 %1 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !40
  %42 = getelementptr inbounds %struct.callback_info, ptr %35, i64 0, i32 3
  store ptr %41, ptr %42, align 8, !tbaa !65
  store ptr %35, ptr %40, align 8, !tbaa !40
  br label %43

43:                                               ; preds = %29, %34, %26, %20, %16, %12, %8
  ret void
}

; Function Attrs: optsize
declare void @register_pass(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @register_plugin_info(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !39 !PGOFuncName !66 {
  %3 = load ptr, ptr @plugin_name_args_tab, align 8, !tbaa !40
  %4 = tail call ptr @htab_find_slot(ptr noundef %3, ptr noundef %0, i32 noundef 0) #15
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds %struct.plugin_name_args, ptr %5, i64 0, i32 4
  %7 = load <2 x ptr>, ptr %1, align 8, !tbaa !40
  store <2 x ptr> %7, ptr %6, align 8, !tbaa !40
  ret void
}

; Function Attrs: optsize
declare void @ggc_register_root_tab(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ggc_register_cache_tab(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @unregister_callback(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 !prof !39 {
  %3 = load i32, ptr @event_last, align 4, !tbaa !58
  %4 = icmp sgt i32 %3, %1
  br i1 %4, label %5, label %31

5:                                                ; preds = %2
  %6 = load ptr, ptr @plugin_callbacks, align 8, !tbaa !40
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %9, align 8, !tbaa !61
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %0) #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %26

15:                                               ; preds = %26
  %16 = load ptr, ptr %29, align 8, !tbaa !61
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %0) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26, !llvm.loop !67

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.callback_info, ptr %27, i64 0, i32 3
  br label %21

21:                                               ; preds = %19, %11
  %22 = phi ptr [ %9, %11 ], [ %29, %19 ]
  %23 = phi ptr [ %8, %11 ], [ %20, %19 ]
  %24 = getelementptr inbounds %struct.callback_info, ptr %22, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !65
  store ptr %25, ptr %23, align 8, !tbaa !40
  br label %31

26:                                               ; preds = %11, %15
  %27 = phi ptr [ %29, %15 ], [ %9, %11 ]
  %28 = getelementptr inbounds %struct.callback_info, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !40
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %15, !llvm.loop !67

31:                                               ; preds = %26, %5, %2, %21
  %32 = phi i32 [ 0, %21 ], [ 2, %2 ], [ 3, %5 ], [ 3, %26 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @invoke_plugin_callbacks(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !68 {
  %3 = load i8, ptr @timevar_enable, align 1, !tbaa !50
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5, !prof !69

5:                                                ; preds = %2
  tail call void @timevar_push_1(i32 noundef 170) #15
  br label %6

6:                                                ; preds = %5, %2
  switch i32 %0, label %7 [
    i32 10, label %30
    i32 1, label %14
    i32 12, label %14
    i32 2, label %14
    i32 3, label %14
    i32 11, label %14
    i32 13, label %14
    i32 4, label %14
    i32 6, label %14
    i32 7, label %14
    i32 8, label %14
    i32 14, label %14
    i32 15, label %14
    i32 16, label %14
    i32 17, label %14
    i32 18, label %14
    i32 19, label %14
    i32 20, label %14
    i32 21, label %14
    i32 22, label %14
    i32 0, label %30
    i32 9, label %30
  ], !prof !70

7:                                                ; preds = %6
  %8 = icmp sgt i32 %0, 22
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 480, ptr noundef nonnull @.str.4) #15
  br label %10

10:                                               ; preds = %7, %9
  %11 = load i32, ptr @event_last, align 4, !tbaa !58
  %12 = icmp sgt i32 %11, %0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 481, ptr noundef nonnull @.str.4) #15
  br label %14

14:                                               ; preds = %13, %10, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  %15 = load ptr, ptr @plugin_callbacks, align 8, !tbaa !40
  %16 = sext i32 %0 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !40
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, i32 3, i32 0, !prof !69
  br i1 %19, label %31, label %21, !prof !71

21:                                               ; preds = %14, %21
  %22 = phi ptr [ %28, %21 ], [ %18, %14 ]
  %23 = getelementptr inbounds %struct.callback_info, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  %25 = getelementptr inbounds %struct.callback_info, ptr %22, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !64
  tail call void %24(ptr noundef %1, ptr noundef %26) #15
  %27 = getelementptr inbounds %struct.callback_info, ptr %22, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %21, !prof !72, !llvm.loop !73

30:                                               ; preds = %6, %6, %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 517, ptr noundef nonnull @.str.4) #15
  br label %31

31:                                               ; preds = %21, %14, %30
  %32 = phi i32 [ 0, %30 ], [ 3, %14 ], [ %20, %21 ]
  %33 = load i8, ptr @timevar_enable, align 1, !tbaa !50
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35, !prof !69

35:                                               ; preds = %31
  tail call void @timevar_pop_1(i32 noundef 170) #15
  br label %36

36:                                               ; preds = %35, %31
  ret i32 %32
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @initialize_plugins() local_unnamed_addr #0 !prof !74 {
  %1 = load ptr, ptr @plugin_name_args_tab, align 8, !tbaa !40
  %2 = icmp eq ptr %1, null
  %3 = load i8, ptr @timevar_enable, align 1
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %10, label %6, !prof !75

6:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 169) #15
  %7 = load i8, ptr @timevar_enable, align 1, !tbaa !50
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @timevar_pop_1(i32 noundef 169) #15
  br label %10

10:                                               ; preds = %6, %9, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @finalize_plugins() local_unnamed_addr #0 !prof !74 {
  %1 = load ptr, ptr @plugin_name_args_tab, align 8, !tbaa !40
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3, !prof !76

3:                                                ; preds = %0
  tail call void @htab_traverse_noresize(ptr noundef nonnull %1, ptr noundef nonnull @finalize_one_plugin, ptr noundef null) #15
  %4 = load ptr, ptr @plugin_name_args_tab, align 8, !tbaa !40
  tail call void @htab_delete(ptr noundef %4) #15
  store ptr null, ptr @plugin_name_args_tab, align 8, !tbaa !40
  br label %5

5:                                                ; preds = %0, %3
  ret void
}

; Function Attrs: optsize
declare void @htab_traverse_noresize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal noundef i32 @finalize_one_plugin(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #9 !prof !39 !PGOFuncName !77 {
  %3 = load ptr, ptr %0, align 8, !tbaa !40
  tail call void @free(ptr noundef %3) #14
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_plugins_versions(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !39 {
  %3 = alloca %struct.print_options, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  store ptr %0, ptr %3, align 8, !tbaa !78
  %4 = getelementptr inbounds %struct.print_options, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !80
  %5 = load ptr, ptr @plugin_name_args_tab, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = tail call i64 @htab_elements(ptr noundef nonnull %5) #15
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef %1) #14
  %12 = load ptr, ptr @plugin_name_args_tab, align 8, !tbaa !40
  call void @htab_traverse_noresize(ptr noundef %12, ptr noundef nonnull @print_version_one_plugin, ptr noundef nonnull %3) #15
  br label %13

13:                                               ; preds = %2, %7, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret void
}

; Function Attrs: optsize
declare i64 @htab_elements(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @print_version_one_plugin(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !prof !39 !PGOFuncName !81 {
  %3 = load ptr, ptr %0, align 8, !tbaa !40
  %4 = getelementptr inbounds %struct.plugin_name_args, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @.str.38, ptr %5
  %8 = load ptr, ptr %1, align 8, !tbaa !78
  %9 = getelementptr inbounds %struct.print_options, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  %11 = load ptr, ptr %3, align 8, !tbaa !47
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.39, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %7) #14
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_plugins_help(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !39 {
  %3 = alloca %struct.print_options, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  store ptr %0, ptr %3, align 8, !tbaa !78
  %4 = getelementptr inbounds %struct.print_options, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !80
  %5 = load ptr, ptr @plugin_name_args_tab, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = tail call i64 @htab_elements(ptr noundef nonnull %5) #15
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %1) #14
  %12 = load ptr, ptr @plugin_name_args_tab, align 8, !tbaa !40
  call void @htab_traverse_noresize(ptr noundef %12, ptr noundef nonnull @print_help_one_plugin, ptr noundef nonnull %3) #15
  br label %13

13:                                               ; preds = %2, %7, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @print_help_one_plugin(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !39 !PGOFuncName !83 {
  %3 = load ptr, ptr %0, align 8, !tbaa !40
  %4 = getelementptr inbounds %struct.plugin_name_args, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @.str.40, ptr %5
  %8 = tail call ptr @xstrdup(ptr noundef nonnull %7) #15
  %9 = load ptr, ptr %1, align 8, !tbaa !78
  %10 = getelementptr inbounds %struct.print_options, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  %12 = load ptr, ptr %3, align 8, !tbaa !47
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.41, ptr noundef %11, ptr noundef %12) #14
  %14 = icmp eq ptr %8, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %2, %21
  %16 = phi ptr [ %22, %21 ], [ %8, %2 ]
  %17 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %16, i32 noundef 10) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  store i8 0, ptr %17, align 1, !tbaa !50
  %20 = getelementptr inbounds i8, ptr %17, i64 1
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi ptr [ %20, %19 ], [ null, %15 ]
  %23 = load ptr, ptr %1, align 8, !tbaa !78
  %24 = load ptr, ptr %10, align 8, !tbaa !80
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.42, ptr noundef %24, ptr noundef nonnull %16) #14
  %26 = icmp eq ptr %22, null
  br i1 %26, label %27, label %15, !llvm.loop !85

27:                                               ; preds = %21, %2
  tail call void @free(ptr noundef %8) #14
  ret i32 1
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @plugins_active_p() local_unnamed_addr #12 !prof !39 {
  %1 = load i32, ptr @event_last, align 4, !tbaa !58
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %14

3:                                                ; preds = %0
  %4 = load ptr, ptr @plugin_callbacks, align 8, !tbaa !40
  %5 = zext nneg i32 %1 to i64
  br label %9

6:                                                ; preds = %9
  %7 = add nuw nsw i64 %10, 1
  %8 = icmp eq i64 %7, %5
  br i1 %8, label %14, label %9, !llvm.loop !86

9:                                                ; preds = %3, %6
  %10 = phi i64 [ 0, %3 ], [ %7, %6 ]
  %11 = getelementptr inbounds ptr, ptr %4, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  %13 = icmp eq ptr %12, null
  br i1 %13, label %6, label %14

14:                                               ; preds = %9, %6, %0
  %15 = phi i8 [ 0, %0 ], [ 0, %6 ], [ 1, %9 ]
  ret i8 %15
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_active_plugins(ptr nocapture noundef %0) local_unnamed_addr #11 !prof !39 {
  %2 = tail call zeroext i8 @plugins_active_p() #14, !range !87
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %43, label %4

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #14
  %6 = load i32, ptr @event_last, align 4, !tbaa !58
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %43

8:                                                ; preds = %4
  %9 = load ptr, ptr @plugin_callbacks, align 8, !tbaa !40
  br label %10

10:                                               ; preds = %8, %37
  %11 = phi i32 [ %6, %8 ], [ %38, %37 ]
  %12 = phi ptr [ %9, %8 ], [ %39, %37 ]
  %13 = phi i64 [ 0, %8 ], [ %40, %37 ]
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr @plugin_event_name, align 8, !tbaa !40
  %19 = getelementptr inbounds ptr, ptr %18, i64 %13
  %20 = load ptr, ptr %19, align 8, !tbaa !40
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef %20) #14
  %22 = load ptr, ptr @plugin_callbacks, align 8, !tbaa !40
  %23 = getelementptr inbounds ptr, ptr %22, i64 %13
  %24 = load ptr, ptr %23, align 8, !tbaa !40
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %17, %26
  %27 = phi ptr [ %31, %26 ], [ %24, %17 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !61
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %28) #14
  %30 = getelementptr inbounds %struct.callback_info, ptr %27, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !40
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %26, !llvm.loop !88

33:                                               ; preds = %26, %17
  %34 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #14
  %35 = load ptr, ptr @plugin_callbacks, align 8, !tbaa !40
  %36 = load i32, ptr @event_last, align 4, !tbaa !58
  br label %37

37:                                               ; preds = %10, %33
  %38 = phi i32 [ %11, %10 ], [ %36, %33 ]
  %39 = phi ptr [ %12, %10 ], [ %35, %33 ]
  %40 = add nuw nsw i64 %13, 1
  %41 = sext i32 %38 to i64
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %10, label %43, !llvm.loop !89

43:                                               ; preds = %37, %4, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_active_plugins() local_unnamed_addr #11 !prof !39 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !40
  tail call void @dump_active_plugins(ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @plugin_default_version_check(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #3 !prof !39 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %40

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !90
  %8 = load ptr, ptr %1, align 8, !tbaa !90
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %8) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.plugin_gcc_version, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !92
  %14 = getelementptr inbounds %struct.plugin_gcc_version, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %15) #14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.plugin_gcc_version, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !93
  %21 = getelementptr inbounds %struct.plugin_gcc_version, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !93
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %22) #14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.plugin_gcc_version, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !94
  %28 = getelementptr inbounds %struct.plugin_gcc_version, ptr %1, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !94
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(1) %29) #14
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.plugin_gcc_version, ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !95
  %35 = getelementptr inbounds %struct.plugin_gcc_version, ptr %1, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !95
  %37 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %36) #14
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i8
  br label %40

40:                                               ; preds = %32, %25, %18, %11, %6, %2
  %41 = phi i8 [ 0, %2 ], [ 0, %6 ], [ 0, %11 ], [ 0, %18 ], [ 0, %25 ], [ %39, %32 ]
  ret i8 %41
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_event_last() local_unnamed_addr #13 !prof !39 {
  %1 = load i32, ptr @event_last, align 4, !tbaa !58
  ret i32 %1
}

; Function Attrs: optsize
declare ptr @xstrdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lbasename(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @strip_off_ending(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!38}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @invoke_plugin_callbacks, ptr @timevar_push_1, i64 1}
!36 = !{ptr @invoke_plugin_callbacks, ptr @fancy_abort, i64 5}
!37 = !{ptr @invoke_plugin_callbacks, ptr @timevar_pop_1, i64 1}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!45, !41, i64 8}
!45 = !{!"plugin_name_args", !41, i64 0, !41, i64 8, !46, i64 16, !41, i64 24, !41, i64 32, !41, i64 40}
!46 = !{!"int", !42, i64 0}
!47 = !{!45, !41, i64 0}
!48 = !{!"plugin.c:get_plugin_base_name"}
!49 = !{!"plugin.c:htab_str_eq"}
!50 = !{!42, !42, i64 0}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!45, !46, i64 16}
!54 = !{!45, !41, i64 24}
!55 = !{!56, !41, i64 0}
!56 = !{!"plugin_argument", !41, i64 0, !41, i64 8}
!57 = !{!56, !41, i64 8}
!58 = !{!46, !46, i64 0}
!59 = distinct !{!59, !52}
!60 = !{!"plugin.c:htab_event_eq"}
!61 = !{!62, !41, i64 0}
!62 = !{!"callback_info", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!63 = !{!62, !41, i64 8}
!64 = !{!62, !41, i64 16}
!65 = !{!62, !41, i64 24}
!66 = !{!"plugin.c:register_plugin_info"}
!67 = distinct !{!67, !52}
!68 = !{!"function_entry_count", i64 16861}
!69 = !{!"branch_weights", i32 16862, i32 1}
!70 = !{!"branch_weights", i32 2, i32 1, i32 925, i32 2, i32 2, i32 656, i32 2, i32 2, i32 2, i32 1, i32 1, i32 1, i32 39, i32 39, i32 2, i32 2, i32 8305, i32 6691, i32 2, i32 2, i32 204, i32 1, i32 1}
!71 = !{!"branch_weights", i32 16861, i32 1}
!72 = !{!"branch_weights", i32 1, i32 0}
!73 = distinct !{!73, !52}
!74 = !{!"function_entry_count", i64 1}
!75 = !{!"branch_weights", i32 5, i32 1}
!76 = !{!"branch_weights", i32 2, i32 1}
!77 = !{!"plugin.c:finalize_one_plugin"}
!78 = !{!79, !41, i64 0}
!79 = !{!"print_options", !41, i64 0, !41, i64 8}
!80 = !{!79, !41, i64 8}
!81 = !{!"plugin.c:print_version_one_plugin"}
!82 = !{!45, !41, i64 32}
!83 = !{!"plugin.c:print_help_one_plugin"}
!84 = !{!45, !41, i64 40}
!85 = distinct !{!85, !52}
!86 = distinct !{!86, !52}
!87 = !{i8 0, i8 2}
!88 = distinct !{!88, !52}
!89 = distinct !{!89, !52}
!90 = !{!91, !41, i64 0}
!91 = !{!"plugin_gcc_version", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32}
!92 = !{!91, !41, i64 8}
!93 = !{!91, !41, i64 16}
!94 = !{!91, !41, i64 24}
!95 = !{!91, !41, i64 32}

; ModuleID = 'plugin.c'
source_filename = "plugin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.plugin_name_args = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.plugin_argument = type { ptr, ptr }
%struct.plugin_info = type { ptr, ptr }
%struct.callback_info = type { ptr, ptr, ptr, ptr }
%struct.print_options = type { ptr, ptr }
%struct.plugin_gcc_version = type { ptr, ptr, ptr, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #21
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #21
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #21
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
  %5 = tail call ptr @__ctype_tolower_loc() #21
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
  %5 = tail call ptr @__ctype_toupper_loc() #21
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #21
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

; Function Attrs: cold nounwind uwtable
define dso_local void @add_new_plugin(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call ptr @lbasename(ptr noundef %0) #21
  %3 = tail call ptr @xstrdup(ptr noundef %2) #21
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3)
  %5 = trunc i64 %4 to i32
  tail call void @strip_off_ending(ptr noundef %3, i32 noundef %5) #21
  %6 = load ptr, ptr @plugin_name_args_tab, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @htab_hash_string, ptr noundef nonnull @htab_str_eq, ptr noundef null) #21
  store ptr %9, ptr @plugin_name_args_tab, align 8, !tbaa !35
  br label %10

10:                                               ; preds = %8, %1
  %11 = load ptr, ptr @plugin_name_args_tab, align 8, !tbaa !35
  %12 = tail call ptr @htab_find_slot(ptr noundef %11, ptr noundef %3, i32 noundef 1) #21
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.plugin_name_args, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %0)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %13, align 8, !tbaa !56
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str, ptr noundef %21, ptr noundef %17, ptr noundef %0) #21
  br label %25

22:                                               ; preds = %10
  %23 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 48) #21
  store ptr %3, ptr %23, align 8, !tbaa !56
  %24 = getelementptr inbounds %struct.plugin_name_args, ptr %23, i64 0, i32 1
  store ptr %0, ptr %24, align 8, !tbaa !54
  store ptr %23, ptr %12, align 8, !tbaa !35
  br label %25

25:                                               ; preds = %15, %20, %22
  ret void
}

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @htab_hash_string(ptr noundef) #3

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @htab_str_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !56
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %1)
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

declare void @error(ptr noundef, ...) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @parse_plugin_arg_opt(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load i8, ptr %0, align 1, !tbaa !46
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %39, label %4

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
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.1, ptr noundef nonnull %0) #21
  br label %106

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
  %37 = load i8, ptr %36, align 1, !tbaa !46
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %4, !llvm.loop !57

39:                                               ; preds = %28, %1
  %40 = phi ptr [ null, %1 ], [ %29, %28 ]
  %41 = phi ptr [ null, %1 ], [ %30, %28 ]
  %42 = phi i64 [ 0, %1 ], [ %31, %28 ]
  %43 = phi i64 [ 0, %1 ], [ %34, %28 ]
  %44 = phi i64 [ 0, %1 ], [ %35, %28 ]
  %45 = icmp eq ptr %40, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.2, ptr noundef nonnull %0) #21
  br label %106

47:                                               ; preds = %39
  %48 = icmp eq ptr %41, null
  %49 = select i1 %48, i64 0, i64 %44
  %50 = select i1 %48, i64 %44, i64 %42
  %51 = add i64 %43, 1
  %52 = tail call ptr @xmalloc(i64 noundef %51) #21
  %53 = tail call ptr @strncpy(ptr noundef %52, ptr noundef nonnull %0, i64 noundef %43)
  %54 = getelementptr inbounds i8, ptr %52, i64 %43
  store i8 0, ptr %54, align 1, !tbaa !46
  %55 = load ptr, ptr @plugin_name_args_tab, align 8, !tbaa !35
  %56 = icmp eq ptr %55, null
  br i1 %56, label %104, label %57

57:                                               ; preds = %47
  %58 = tail call ptr @htab_find_slot(ptr noundef nonnull %55, ptr noundef %52, i32 noundef 0) #21
  %59 = icmp eq ptr %58, null
  br i1 %59, label %104, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %58, align 8, !tbaa !35
  %62 = add i64 %50, 1
  %63 = tail call ptr @xmalloc(i64 noundef %62) #21
  %64 = tail call ptr @strncpy(ptr noundef %63, ptr noundef nonnull %40, i64 noundef %50)
  %65 = getelementptr inbounds i8, ptr %63, i64 %50
  store i8 0, ptr %65, align 1, !tbaa !46
  br i1 %48, label %71, label %66

66:                                               ; preds = %60
  %67 = add i64 %49, 1
  %68 = tail call ptr @xmalloc(i64 noundef %67) #21
  %69 = tail call ptr @strncpy(ptr noundef %68, ptr noundef nonnull %41, i64 noundef %49)
  %70 = getelementptr inbounds i8, ptr %68, i64 %49
  store i8 0, ptr %70, align 1, !tbaa !46
  br label %71

71:                                               ; preds = %60, %66
  %72 = phi ptr [ %68, %66 ], [ null, %60 ]
  %73 = getelementptr inbounds %struct.plugin_name_args, ptr %61, i64 0, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !58
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = add nuw nsw i32 %74, 1
  %78 = zext nneg i32 %77 to i64
  %79 = shl nuw nsw i64 %78, 4
  %80 = tail call ptr @xmalloc(i64 noundef %79) #21
  %81 = getelementptr inbounds %struct.plugin_name_args, ptr %61, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !59
  %83 = load i32, ptr %73, align 8, !tbaa !58
  %84 = sext i32 %83 to i64
  %85 = shl nsw i64 %84, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %80, ptr align 8 %82, i64 %85, i1 false)
  %86 = load ptr, ptr %81, align 8, !tbaa !59
  tail call void @free(ptr noundef %86)
  store ptr %80, ptr %81, align 8, !tbaa !59
  %87 = load i32, ptr %73, align 8, !tbaa !58
  %88 = add nsw i32 %87, 1
  br label %96

89:                                               ; preds = %71
  %90 = getelementptr inbounds %struct.plugin_name_args, ptr %61, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !59
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 268, ptr noundef nonnull @.str.4) #21
  br label %94

94:                                               ; preds = %89, %93
  %95 = tail call ptr @xmalloc(i64 noundef 16) #21
  store ptr %95, ptr %90, align 8, !tbaa !59
  br label %96

96:                                               ; preds = %94, %76
  %97 = phi i32 [ 1, %94 ], [ %88, %76 ]
  store i32 %97, ptr %73, align 8, !tbaa !58
  %98 = getelementptr inbounds %struct.plugin_name_args, ptr %61, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !59
  %100 = sext i32 %97 to i64
  %101 = getelementptr %struct.plugin_argument, ptr %99, i64 %100
  %102 = getelementptr %struct.plugin_argument, ptr %101, i64 -1
  store ptr %63, ptr %102, align 8, !tbaa !60
  %103 = getelementptr %struct.plugin_argument, ptr %101, i64 -1, i32 1
  store ptr %72, ptr %103, align 8, !tbaa !62
  br label %105

104:                                              ; preds = %57, %47
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.5, ptr noundef %52, ptr noundef nonnull %0) #21
  br label %105

105:                                              ; preds = %104, %96
  tail call void @free(ptr noundef %52)
  br label %106

106:                                              ; preds = %105, %46, %23
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @get_named_event_id(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = load ptr, ptr @event_tab, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %26

5:                                                ; preds = %2
  %6 = tail call ptr @htab_create(i64 noundef 150, ptr noundef nonnull @htab_hash_string, ptr noundef nonnull @htab_event_eq, ptr noundef null) #21
  store ptr %6, ptr @event_tab, align 8, !tbaa !35
  %7 = load i32, ptr @event_last, align 4, !tbaa !50
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %5, %19
  %10 = phi i64 [ %22, %19 ], [ 0, %5 ]
  %11 = load ptr, ptr @event_tab, align 8, !tbaa !35
  %12 = load ptr, ptr @plugin_event_name, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 %10
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = tail call ptr @htab_find_slot(ptr noundef %11, ptr noundef %14, i32 noundef 1) #21
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 322, ptr noundef nonnull @.str.4) #21
  br label %19

19:                                               ; preds = %9, %18
  %20 = load ptr, ptr @plugin_event_name, align 8, !tbaa !35
  %21 = getelementptr inbounds ptr, ptr %20, i64 %10
  store ptr %21, ptr %15, align 8, !tbaa !35
  %22 = add nuw nsw i64 %10, 1
  %23 = load i32, ptr @event_last, align 4, !tbaa !50
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %9, label %26, !llvm.loop !63

26:                                               ; preds = %19, %5, %2
  %27 = load ptr, ptr @event_tab, align 8, !tbaa !35
  %28 = tail call ptr @htab_find_slot(ptr noundef %27, ptr noundef %0, i32 noundef %1) #21
  %29 = icmp eq ptr %28, null
  br i1 %29, label %75, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %28, align 8, !tbaa !35
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr @plugin_event_name, align 8, !tbaa !35
  %35 = ptrtoint ptr %31 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = lshr exact i64 %37, 3
  %39 = trunc i64 %38 to i32
  br label %75

40:                                               ; preds = %30
  %41 = load i32, ptr @event_last, align 4, !tbaa !50
  %42 = load i32, ptr @event_horizon, align 4, !tbaa !50
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %65, label %44

44:                                               ; preds = %40
  %45 = shl nsw i32 %41, 1
  store i32 %45, ptr @event_horizon, align 4, !tbaa !50
  %46 = load ptr, ptr @plugin_event_name, align 8, !tbaa !35
  %47 = icmp eq ptr %46, @plugin_event_name_init
  %48 = sext i32 %45 to i64
  %49 = shl nsw i64 %48, 3
  br i1 %47, label %50, label %56

50:                                               ; preds = %44
  %51 = tail call ptr @xmalloc(i64 noundef %49) #21
  store ptr %51, ptr @plugin_event_name, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %51, ptr noundef nonnull align 16 dereferenceable(184) @plugin_event_name_init, i64 184, i1 false)
  %52 = load i32, ptr @event_horizon, align 4, !tbaa !50
  %53 = sext i32 %52 to i64
  %54 = shl nsw i64 %53, 3
  %55 = tail call ptr @xmalloc(i64 noundef %54) #21
  store ptr %55, ptr @plugin_callbacks, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %55, ptr noundef nonnull align 16 dereferenceable(184) @plugin_callbacks_init, i64 184, i1 false)
  br label %63

56:                                               ; preds = %44
  %57 = tail call ptr @xrealloc(ptr noundef %46, i64 noundef %49) #21
  store ptr %57, ptr @plugin_event_name, align 8, !tbaa !35
  %58 = load ptr, ptr @plugin_callbacks, align 8, !tbaa !35
  %59 = load i32, ptr @event_horizon, align 4, !tbaa !50
  %60 = sext i32 %59 to i64
  %61 = shl nsw i64 %60, 3
  %62 = tail call ptr @xrealloc(ptr noundef %58, i64 noundef %61) #21
  store ptr %62, ptr @plugin_callbacks, align 8, !tbaa !35
  br label %63

63:                                               ; preds = %56, %50
  %64 = load ptr, ptr @event_tab, align 8, !tbaa !35
  tail call void @htab_delete(ptr noundef %64) #21
  store ptr null, ptr @event_tab, align 8, !tbaa !35
  br label %69

65:                                               ; preds = %40
  %66 = load ptr, ptr @plugin_event_name, align 8, !tbaa !35
  %67 = sext i32 %41 to i64
  %68 = getelementptr inbounds ptr, ptr %66, i64 %67
  store ptr %68, ptr %28, align 8, !tbaa !35
  br label %69

69:                                               ; preds = %65, %63
  %70 = load ptr, ptr @plugin_event_name, align 8, !tbaa !35
  %71 = load i32, ptr @event_last, align 4, !tbaa !50
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds ptr, ptr %70, i64 %72
  store ptr %0, ptr %73, align 8, !tbaa !35
  %74 = add nsw i32 %71, 1
  store i32 %74, ptr @event_last, align 4, !tbaa !50
  br label %75

75:                                               ; preds = %26, %69, %33
  %76 = phi i32 [ %39, %33 ], [ %71, %69 ], [ -1, %26 ]
  ret i32 %76
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @htab_event_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %1)
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @register_callback(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !34 {
  switch i32 %1, label %29 [
    i32 0, label %5
    i32 5, label %9
    i32 9, label %21
    i32 10, label %25
    i32 22, label %35
    i32 1, label %35
    i32 12, label %35
    i32 2, label %35
    i32 3, label %35
    i32 6, label %35
    i32 7, label %35
    i32 8, label %35
    i32 11, label %35
    i32 13, label %35
    i32 4, label %35
    i32 14, label %35
    i32 15, label %35
    i32 16, label %35
    i32 17, label %35
    i32 18, label %35
    i32 19, label %35
    i32 20, label %35
    i32 21, label %35
  ]

5:                                                ; preds = %4
  %6 = icmp eq ptr %2, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 378, ptr noundef nonnull @.str.4) #21
  br label %8

8:                                                ; preds = %5, %7
  tail call void @register_pass(ptr noundef %3) #21
  br label %51

9:                                                ; preds = %4
  %10 = icmp eq ptr %2, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 382, ptr noundef nonnull @.str.4) #21
  br label %12

12:                                               ; preds = %9, %11
  %13 = load ptr, ptr @plugin_name_args_tab, align 8, !tbaa !35
  %14 = tail call ptr @htab_find_slot(ptr noundef %13, ptr noundef %0, i32 noundef 0) #21
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = load ptr, ptr %3, align 8, !tbaa !64
  %17 = getelementptr inbounds %struct.plugin_name_args, ptr %15, i64 0, i32 4
  store ptr %16, ptr %17, align 8, !tbaa !66
  %18 = getelementptr inbounds %struct.plugin_info, ptr %3, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  %20 = getelementptr inbounds %struct.plugin_name_args, ptr %15, i64 0, i32 5
  store ptr %19, ptr %20, align 8, !tbaa !68
  br label %51

21:                                               ; preds = %4
  %22 = icmp eq ptr %2, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 386, ptr noundef nonnull @.str.4) #21
  br label %24

24:                                               ; preds = %21, %23
  tail call void @ggc_register_root_tab(ptr noundef %3) #21
  br label %51

25:                                               ; preds = %4
  %26 = icmp eq ptr %2, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 390, ptr noundef nonnull @.str.4) #21
  br label %28

28:                                               ; preds = %25, %27
  tail call void @ggc_register_cache_tab(ptr noundef %3) #21
  br label %51

29:                                               ; preds = %4
  %30 = icmp sgt i32 %1, 22
  %31 = load i32, ptr @event_last, align 4
  %32 = icmp sgt i32 %31, %1
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.6, ptr noundef %0) #21
  br label %51

35:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %29, %4
  %36 = icmp eq ptr %2, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %35
  %38 = load ptr, ptr @plugin_event_name, align 8, !tbaa !35
  %39 = sext i32 %1 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.7, ptr noundef %0, ptr noundef %41) #21
  br label %51

42:                                               ; preds = %35
  %43 = tail call ptr @xmalloc(i64 noundef 32) #21
  store ptr %0, ptr %43, align 8, !tbaa !69
  %44 = getelementptr inbounds %struct.callback_info, ptr %43, i64 0, i32 1
  store ptr %2, ptr %44, align 8, !tbaa !71
  %45 = getelementptr inbounds %struct.callback_info, ptr %43, i64 0, i32 2
  store ptr %3, ptr %45, align 8, !tbaa !72
  %46 = load ptr, ptr @plugin_callbacks, align 8, !tbaa !35
  %47 = sext i32 %1 to i64
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !35
  %50 = getelementptr inbounds %struct.callback_info, ptr %43, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !73
  store ptr %43, ptr %48, align 8, !tbaa !35
  br label %51

51:                                               ; preds = %37, %42, %34, %28, %24, %12, %8
  ret void
}

declare void @register_pass(ptr noundef) local_unnamed_addr #3

declare void @ggc_register_root_tab(ptr noundef) local_unnamed_addr #3

declare void @ggc_register_cache_tab(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @unregister_callback(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #15 !prof !34 {
  %3 = load i32, ptr @event_last, align 4, !tbaa !50
  %4 = icmp sgt i32 %3, %1
  br i1 %4, label %5, label %31

5:                                                ; preds = %2
  %6 = load ptr, ptr @plugin_callbacks, align 8, !tbaa !35
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %9, align 8, !tbaa !69
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %0)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %26

15:                                               ; preds = %26
  %16 = load ptr, ptr %29, align 8, !tbaa !69
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %0)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26, !llvm.loop !74

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.callback_info, ptr %27, i64 0, i32 3
  br label %21

21:                                               ; preds = %19, %11
  %22 = phi ptr [ %9, %11 ], [ %29, %19 ]
  %23 = phi ptr [ %8, %11 ], [ %20, %19 ]
  %24 = getelementptr inbounds %struct.callback_info, ptr %22, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !73
  store ptr %25, ptr %23, align 8, !tbaa !35
  br label %31

26:                                               ; preds = %11, %15
  %27 = phi ptr [ %29, %15 ], [ %9, %11 ]
  %28 = getelementptr inbounds %struct.callback_info, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %15, !llvm.loop !74

31:                                               ; preds = %26, %5, %2, %21
  %32 = phi i32 [ 0, %21 ], [ 2, %2 ], [ 3, %5 ], [ 3, %26 ]
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define dso_local i32 @invoke_plugin_callbacks(i32 noundef %0, ptr noundef %1) local_unnamed_addr #16 !prof !75 {
  %3 = load i8, ptr @timevar_enable, align 1, !tbaa !46
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5, !prof !76

5:                                                ; preds = %2
  tail call void @timevar_push_1(i32 noundef 170) #21
  br label %6

6:                                                ; preds = %5, %2
  switch i32 %0, label %7 [
    i32 10, label %31
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
    i32 0, label %31
    i32 9, label %31
  ], !prof !77

7:                                                ; preds = %6
  %8 = icmp sgt i32 %0, 22
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 480, ptr noundef nonnull @.str.4) #21
  br label %10

10:                                               ; preds = %7, %9
  %11 = load i32, ptr @event_last, align 4, !tbaa !50
  %12 = icmp sgt i32 %11, %0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 481, ptr noundef nonnull @.str.4) #21
  br label %14

14:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %13, %10, %6
  %15 = load ptr, ptr @plugin_callbacks, align 8, !tbaa !35
  %16 = sext i32 %0 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, i32 3, i32 0, !prof !76
  %21 = icmp eq ptr %18, null
  br i1 %21, label %32, label %22, !prof !78

22:                                               ; preds = %14, %22
  %23 = phi ptr [ %29, %22 ], [ %18, %14 ]
  %24 = getelementptr inbounds %struct.callback_info, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !71
  %26 = getelementptr inbounds %struct.callback_info, ptr %23, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !72
  tail call void %25(ptr noundef %1, ptr noundef %27) #21
  %28 = getelementptr inbounds %struct.callback_info, ptr %23, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !73
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %22, !prof !78, !llvm.loop !79

31:                                               ; preds = %6, %6, %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 517, ptr noundef nonnull @.str.4) #21
  br label %32

32:                                               ; preds = %22, %14, %31
  %33 = phi i32 [ 0, %31 ], [ %20, %14 ], [ %20, %22 ]
  %34 = load i8, ptr @timevar_enable, align 1, !tbaa !46
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %36, !prof !76

36:                                               ; preds = %32
  tail call void @timevar_pop_1(i32 noundef 170) #21
  br label %37

37:                                               ; preds = %36, %32
  ret i32 %33
}

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @initialize_plugins() local_unnamed_addr #9 !prof !80 {
  %1 = load ptr, ptr @plugin_name_args_tab, align 8, !tbaa !35
  %2 = icmp eq ptr %1, null
  br i1 %2, label %11, label %3, !prof !78

3:                                                ; preds = %0
  %4 = load i8, ptr @timevar_enable, align 1, !tbaa !46
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @timevar_push_1(i32 noundef 169) #21
  br label %7

7:                                                ; preds = %6, %3
  %8 = load i8, ptr @timevar_enable, align 1, !tbaa !46
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @timevar_pop_1(i32 noundef 169) #21
  br label %11

11:                                               ; preds = %7, %10, %0
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @finalize_plugins() local_unnamed_addr #9 !prof !80 {
  %1 = load ptr, ptr @plugin_name_args_tab, align 8, !tbaa !35
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3, !prof !78

3:                                                ; preds = %0
  tail call void @htab_traverse_noresize(ptr noundef nonnull %1, ptr noundef nonnull @finalize_one_plugin, ptr noundef null) #21
  %4 = load ptr, ptr @plugin_name_args_tab, align 8, !tbaa !35
  tail call void @htab_delete(ptr noundef %4) #21
  store ptr null, ptr @plugin_name_args_tab, align 8, !tbaa !35
  br label %5

5:                                                ; preds = %0, %3
  ret void
}

declare void @htab_traverse_noresize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define internal noundef i32 @finalize_one_plugin(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #17 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  tail call void @free(ptr noundef %3)
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define dso_local void @print_plugins_versions(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.print_options, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  store ptr %0, ptr %3, align 8, !tbaa !81
  %4 = getelementptr inbounds %struct.print_options, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !83
  %5 = load ptr, ptr @plugin_name_args_tab, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = tail call i64 @htab_elements(ptr noundef nonnull %5) #21
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef %1)
  %12 = load ptr, ptr @plugin_name_args_tab, align 8, !tbaa !35
  call void @htab_traverse_noresize(ptr noundef %12, ptr noundef nonnull @print_version_one_plugin, ptr noundef nonnull %3) #21
  br label %13

13:                                               ; preds = %2, %7, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  ret void
}

declare i64 @htab_elements(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nofree nounwind uwtable
define internal noundef i32 @print_version_one_plugin(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.plugin_name_args, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @.str.38, ptr %5
  %8 = load ptr, ptr %1, align 8, !tbaa !81
  %9 = getelementptr inbounds %struct.print_options, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  %11 = load ptr, ptr %3, align 8, !tbaa !56
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.39, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %7)
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define dso_local void @print_plugins_help(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.print_options, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  store ptr %0, ptr %3, align 8, !tbaa !81
  %4 = getelementptr inbounds %struct.print_options, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !83
  %5 = load ptr, ptr @plugin_name_args_tab, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = tail call i64 @htab_elements(ptr noundef nonnull %5) #21
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %1)
  %12 = load ptr, ptr @plugin_name_args_tab, align 8, !tbaa !35
  call void @htab_traverse_noresize(ptr noundef %12, ptr noundef nonnull @print_help_one_plugin, ptr noundef nonnull %3) #21
  br label %13

13:                                               ; preds = %2, %7, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @print_help_one_plugin(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.plugin_name_args, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @.str.40, ptr %5
  %8 = tail call ptr @xstrdup(ptr noundef nonnull %7) #21
  %9 = load ptr, ptr %1, align 8, !tbaa !81
  %10 = getelementptr inbounds %struct.print_options, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  %12 = load ptr, ptr %3, align 8, !tbaa !56
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.41, ptr noundef %11, ptr noundef %12)
  %14 = icmp eq ptr %8, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %2, %21
  %16 = phi ptr [ %22, %21 ], [ %8, %2 ]
  %17 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %16, i32 noundef 10)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  store i8 0, ptr %17, align 1, !tbaa !46
  %20 = getelementptr inbounds i8, ptr %17, i64 1
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi ptr [ %20, %19 ], [ null, %15 ]
  %23 = load ptr, ptr %1, align 8, !tbaa !81
  %24 = load ptr, ptr %10, align 8, !tbaa !83
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.42, ptr noundef %24, ptr noundef nonnull %16)
  %26 = icmp eq ptr %22, null
  br i1 %26, label %27, label %15, !llvm.loop !84

27:                                               ; preds = %21, %2
  tail call void @free(ptr noundef %8)
  ret i32 1
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @plugins_active_p() local_unnamed_addr #19 !prof !34 {
  %1 = load i32, ptr @event_last, align 4, !tbaa !50
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %14

3:                                                ; preds = %0
  %4 = load ptr, ptr @plugin_callbacks, align 8, !tbaa !35
  %5 = zext nneg i32 %1 to i64
  br label %9

6:                                                ; preds = %9
  %7 = add nuw nsw i64 %10, 1
  %8 = icmp eq i64 %7, %5
  br i1 %8, label %14, label %9, !llvm.loop !85

9:                                                ; preds = %3, %6
  %10 = phi i64 [ 0, %3 ], [ %7, %6 ]
  %11 = getelementptr inbounds ptr, ptr %4, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = icmp eq ptr %12, null
  br i1 %13, label %6, label %14

14:                                               ; preds = %9, %6, %0
  %15 = phi i8 [ 0, %0 ], [ 1, %9 ], [ 0, %6 ]
  ret i8 %15
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dump_active_plugins(ptr nocapture noundef %0) local_unnamed_addr #18 !prof !34 {
  %2 = load i32, ptr @event_last, align 4, !tbaa !50
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %55

4:                                                ; preds = %1
  %5 = load ptr, ptr @plugin_callbacks, align 8, !tbaa !35
  %6 = zext nneg i32 %2 to i64
  %7 = zext nneg i32 %2 to i64
  %8 = load ptr, ptr %5, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %4, %14
  %11 = phi i64 [ %12, %14 ], [ 0, %4 ]
  %12 = add nuw nsw i64 %11, 1
  %13 = icmp eq i64 %12, %7
  br i1 %13, label %55, label %14, !llvm.loop !85

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %5, i64 %12
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %10, label %18, !llvm.loop !85

18:                                               ; preds = %14
  %19 = icmp ult i64 %12, %6
  br label %20

20:                                               ; preds = %18, %4
  %21 = phi i1 [ %19, %18 ], [ %3, %4 ]
  br i1 %21, label %22, label %55

22:                                               ; preds = %20
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12)
  %24 = load i32, ptr @event_last, align 4, !tbaa !50
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %22, %50
  %27 = phi i64 [ %51, %50 ], [ 0, %22 ]
  %28 = load ptr, ptr @plugin_callbacks, align 8, !tbaa !35
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  %31 = icmp eq ptr %30, null
  br i1 %31, label %50, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr @plugin_event_name, align 8, !tbaa !35
  %34 = getelementptr inbounds ptr, ptr %33, i64 %27
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef %35)
  %37 = load ptr, ptr @plugin_callbacks, align 8, !tbaa !35
  %38 = getelementptr inbounds ptr, ptr %37, i64 %27
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  %40 = icmp eq ptr %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %32, %41
  %42 = phi ptr [ %46, %41 ], [ %39, %32 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !69
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %43)
  %45 = getelementptr inbounds %struct.callback_info, ptr %42, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !35
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %41, !llvm.loop !86

48:                                               ; preds = %41, %32
  %49 = tail call i32 @putc(i32 noundef 10, ptr noundef %0)
  br label %50

50:                                               ; preds = %26, %48
  %51 = add nuw nsw i64 %27, 1
  %52 = load i32, ptr @event_last, align 4, !tbaa !50
  %53 = sext i32 %52 to i64
  %54 = icmp slt i64 %51, %53
  br i1 %54, label %26, label %55, !llvm.loop !87

55:                                               ; preds = %10, %50, %1, %22, %20
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @debug_active_plugins() local_unnamed_addr #18 !prof !34 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !35
  tail call void @dump_active_plugins(ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @plugin_default_version_check(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #10 !prof !34 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %40

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !88
  %8 = load ptr, ptr %1, align 8, !tbaa !88
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.plugin_gcc_version, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  %14 = getelementptr inbounds %struct.plugin_gcc_version, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !90
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %15)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.plugin_gcc_version, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !91
  %21 = getelementptr inbounds %struct.plugin_gcc_version, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !91
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.plugin_gcc_version, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !92
  %28 = getelementptr inbounds %struct.plugin_gcc_version, ptr %1, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !92
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(1) %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.plugin_gcc_version, ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !93
  %35 = getelementptr inbounds %struct.plugin_gcc_version, ptr %1, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !93
  %37 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %36)
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i8
  br label %40

40:                                               ; preds = %32, %25, %18, %11, %6, %2
  %41 = phi i8 [ 0, %2 ], [ 0, %6 ], [ 0, %11 ], [ 0, %18 ], [ 0, %25 ], [ %39, %32 ]
  ret i8 %41
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_event_last() local_unnamed_addr #20 !prof !34 {
  %1 = load i32, ptr @event_last, align 4, !tbaa !50
  ret i32 %1
}

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

declare ptr @lbasename(ptr noundef) local_unnamed_addr #3

declare void @strip_off_ending(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #11

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
attributes #10 = { cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind }

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
!54 = !{!55, !36, i64 8}
!55 = !{!"plugin_name_args", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!56 = !{!55, !36, i64 0}
!57 = distinct !{!57, !52, !53}
!58 = !{!55, !41, i64 16}
!59 = !{!55, !36, i64 24}
!60 = !{!61, !36, i64 0}
!61 = !{!"plugin_argument", !36, i64 0, !36, i64 8}
!62 = !{!61, !36, i64 8}
!63 = distinct !{!63, !52, !53}
!64 = !{!65, !36, i64 0}
!65 = !{!"plugin_info", !36, i64 0, !36, i64 8}
!66 = !{!55, !36, i64 32}
!67 = !{!65, !36, i64 8}
!68 = !{!55, !36, i64 40}
!69 = !{!70, !36, i64 0}
!70 = !{!"callback_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!71 = !{!70, !36, i64 8}
!72 = !{!70, !36, i64 16}
!73 = !{!70, !36, i64 24}
!74 = distinct !{!74, !52, !53}
!75 = !{!"function_entry_count", i64 16861}
!76 = !{!"branch_weights", i32 16861, i32 0}
!77 = !{!"branch_weights", i32 0, i32 0, i32 924, i32 1, i32 1, i32 655, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 38, i32 38, i32 1, i32 1, i32 8304, i32 6690, i32 1, i32 1, i32 203, i32 0, i32 0}
!78 = !{!"branch_weights", i32 1, i32 0}
!79 = distinct !{!79, !52, !53}
!80 = !{!"function_entry_count", i64 1}
!81 = !{!82, !36, i64 0}
!82 = !{!"print_options", !36, i64 0, !36, i64 8}
!83 = !{!82, !36, i64 8}
!84 = distinct !{!84, !52, !53}
!85 = distinct !{!85, !52, !53}
!86 = distinct !{!86, !52, !53}
!87 = distinct !{!87, !52, !53}
!88 = !{!89, !36, i64 0}
!89 = !{!"plugin_gcc_version", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!90 = !{!89, !36, i64 8}
!91 = !{!89, !36, i64 16}
!92 = !{!89, !36, i64 24}
!93 = !{!89, !36, i64 32}

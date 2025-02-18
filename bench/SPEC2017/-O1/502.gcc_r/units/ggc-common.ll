; ModuleID = 'ggc-common.c'
source_filename = "ggc-common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.host_hooks = type { ptr, ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.VEC_const_ggc_root_tab_t_base = type { i32, i32, [1 x ptr] }
%struct.VEC_const_ggc_cache_tab_t_base = type { i32, i32, [1 x ptr] }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ggc_cache_tab = type { ptr, i64, i64, ptr, ptr, ptr }
%struct.ptr_data = type { ptr, ptr, ptr, ptr, i64, ptr, i32 }
%struct.traversal_state = type { ptr, ptr, i64, ptr, i64 }
%struct.mmap_info = type { i64, i64, ptr }
%struct.rlimit = type { i64, i64 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@ggc_protect_identifiers = dso_local local_unnamed_addr global i8 1, align 1
@extra_root_vec = internal unnamed_addr global ptr null, align 8
@extra_cache_vec = internal unnamed_addr global ptr null, align 8
@gt_ggc_deletable_rtab = external local_unnamed_addr constant [0 x ptr], align 8
@gt_ggc_rtab = external constant [0 x ptr], align 8
@gt_ggc_cache_rtab = external local_unnamed_addr constant [0 x ptr], align 8
@.str = private unnamed_addr constant [13 x i8] c"ggc-common.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@ggc_stats = internal unnamed_addr global ptr null, align 8
@saving_htab = internal unnamed_addr global ptr null, align 8
@host_hooks = external local_unnamed_addr constant %struct.host_hooks, align 8
@gt_pch_cache_rtab = external constant [0 x ptr], align 8
@gt_pch_scalar_rtab = external local_unnamed_addr constant [0 x ptr], align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"can't write PCH file: %m\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"can't get position in PCH file: %m\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"can't write padding to PCH file: %m\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"can't read PCH file: %m\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"had to relocate PCH\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"ggc-min-expand\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"ggc-min-heapsize\00", align 1
@ggc_force_collect = dso_local local_unnamed_addr global i8 0, align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !51 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !52
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !51 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !52
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !51 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !62

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !56
  %11 = load i8, ptr %3, align 1, !tbaa !63
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !51 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !62

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !56
  %11 = load i8, ptr %3, align 1, !tbaa !63
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !51 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !52
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !62

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #19
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !56
  %11 = load i8, ptr %3, align 1, !tbaa !63
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !51 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !52
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !51 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !62

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !64
  store i8 %12, ptr %4, align 1, !tbaa !63
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !51 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !62

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !64
  store i8 %12, ptr %4, align 1, !tbaa !63
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !51 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !62

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !64
  store i8 %12, ptr %4, align 1, !tbaa !63
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !51 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #19
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !51 {
  %2 = load i32, ptr %0, align 8, !tbaa !66
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !51 {
  %2 = load i32, ptr %0, align 8, !tbaa !66
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !51 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !67
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !51 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !67
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !51 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !51 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !51 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !51 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #19
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
  br i1 %23, label %7, label %24, !llvm.loop !68

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !51 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @ggc_register_root_tab(ptr noundef %0) local_unnamed_addr #9 !prof !51 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @extra_root_vec, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.VEC_const_ggc_root_tab_t_base, ptr %4, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !71
  %9 = load i32, ptr %4, align 8, !tbaa !73
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3, %6
  %12 = tail call ptr @vec_heap_p_reserve(ptr noundef %4, i32 noundef 1) #19
  store ptr %12, ptr @extra_root_vec, align 8, !tbaa !52
  br label %13

13:                                               ; preds = %6, %11
  %14 = load ptr, ptr @extra_root_vec, align 8, !tbaa !52
  %15 = load i32, ptr %14, align 8, !tbaa !73
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 8, !tbaa !73
  %17 = zext i32 %15 to i64
  %18 = getelementptr inbounds %struct.VEC_const_ggc_root_tab_t_base, ptr %14, i64 0, i32 2, i64 %17
  store ptr %0, ptr %18, align 8, !tbaa !52
  br label %19

19:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ggc_register_cache_tab(ptr noundef %0) local_unnamed_addr #9 !prof !51 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @extra_cache_vec, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.VEC_const_ggc_cache_tab_t_base, ptr %4, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !74
  %9 = load i32, ptr %4, align 8, !tbaa !76
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3, %6
  %12 = tail call ptr @vec_heap_p_reserve(ptr noundef %4, i32 noundef 1) #19
  store ptr %12, ptr @extra_cache_vec, align 8, !tbaa !52
  br label %13

13:                                               ; preds = %6, %11
  %14 = load ptr, ptr @extra_cache_vec, align 8, !tbaa !52
  %15 = load i32, ptr %14, align 8, !tbaa !76
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 8, !tbaa !76
  %17 = zext i32 %15 to i64
  %18 = getelementptr inbounds %struct.VEC_const_ggc_cache_tab_t_base, ptr %14, i64 0, i32 2, i64 %17
  store ptr %0, ptr %18, align 8, !tbaa !52
  br label %19

19:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ggc_mark_roots() local_unnamed_addr #9 !prof !51 {
  %1 = load ptr, ptr @gt_ggc_deletable_rtab, align 8, !tbaa !52
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0, %19
  %4 = phi ptr [ %21, %19 ], [ %1, %0 ]
  %5 = phi ptr [ %20, %19 ], [ @gt_ggc_deletable_rtab, %0 ]
  %6 = load ptr, ptr %4, align 8, !tbaa !77
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %11

8:                                                ; preds = %19, %0
  %9 = load ptr, ptr @gt_ggc_rtab, align 8, !tbaa !52
  %10 = icmp eq ptr %9, null
  br i1 %10, label %55, label %23

11:                                               ; preds = %3, %11
  %12 = phi ptr [ %17, %11 ], [ %6, %3 ]
  %13 = phi ptr [ %16, %11 ], [ %4, %3 ]
  %14 = getelementptr inbounds %struct.ggc_root_tab, ptr %13, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !79
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %12, i8 0, i64 %15, i1 false)
  %16 = getelementptr inbounds %struct.ggc_root_tab, ptr %13, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !77
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %11, !llvm.loop !80

19:                                               ; preds = %11, %3
  %20 = getelementptr inbounds ptr, ptr %5, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !52
  %22 = icmp eq ptr %21, null
  br i1 %22, label %8, label %3, !llvm.loop !81

23:                                               ; preds = %8, %51
  %24 = phi ptr [ %53, %51 ], [ %9, %8 ]
  %25 = phi ptr [ %52, %51 ], [ @gt_ggc_rtab, %8 ]
  %26 = load ptr, ptr %24, align 8, !tbaa !77
  %27 = icmp eq ptr %26, null
  br i1 %27, label %51, label %28

28:                                               ; preds = %23, %47
  %29 = phi ptr [ %48, %47 ], [ %24, %23 ]
  %30 = getelementptr inbounds %struct.ggc_root_tab, ptr %29, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !82
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ggc_root_tab, ptr %29, i64 0, i32 3
  %35 = getelementptr inbounds %struct.ggc_root_tab, ptr %29, i64 0, i32 2
  br label %36

36:                                               ; preds = %33, %36
  %37 = phi i64 [ 0, %33 ], [ %44, %36 ]
  %38 = load ptr, ptr %34, align 8, !tbaa !83
  %39 = load ptr, ptr %29, align 8, !tbaa !77
  %40 = load i64, ptr %35, align 8, !tbaa !79
  %41 = mul i64 %40, %37
  %42 = getelementptr inbounds i8, ptr %39, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !52
  tail call void %38(ptr noundef %43) #19
  %44 = add nuw i64 %37, 1
  %45 = load i64, ptr %30, align 8, !tbaa !82
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %36, label %47, !llvm.loop !84

47:                                               ; preds = %36, %28
  %48 = getelementptr inbounds %struct.ggc_root_tab, ptr %29, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !77
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %28, !llvm.loop !85

51:                                               ; preds = %47, %23
  %52 = getelementptr inbounds ptr, ptr %25, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !52
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %23, !llvm.loop !86

55:                                               ; preds = %51, %8
  br label %56

56:                                               ; preds = %55, %98
  %57 = phi i64 [ %100, %98 ], [ 0, %55 ]
  %58 = load ptr, ptr @extra_root_vec, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = trunc i64 %57 to i32
  %62 = load i32, ptr %58, align 8, !tbaa !73
  %63 = icmp ugt i32 %62, %61
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = and i64 %57, 4294967295
  %66 = getelementptr inbounds %struct.VEC_const_ggc_root_tab_t_base, ptr %58, i64 0, i32 2, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !52
  br label %68

68:                                               ; preds = %56, %60, %64
  %69 = phi ptr [ %67, %64 ], [ null, %60 ], [ null, %56 ]
  %70 = phi i1 [ false, %64 ], [ true, %60 ], [ true, %56 ]
  br i1 %70, label %101, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %69, align 8, !tbaa !77
  %73 = icmp eq ptr %72, null
  br i1 %73, label %98, label %74

74:                                               ; preds = %71, %93
  %75 = phi ptr [ %95, %93 ], [ %69, %71 ]
  %76 = getelementptr inbounds %struct.ggc_root_tab, ptr %75, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !82
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.ggc_root_tab, ptr %75, i64 0, i32 3
  %81 = getelementptr inbounds %struct.ggc_root_tab, ptr %75, i64 0, i32 2
  br label %82

82:                                               ; preds = %79, %82
  %83 = phi i64 [ 0, %79 ], [ %90, %82 ]
  %84 = load ptr, ptr %80, align 8, !tbaa !83
  %85 = load ptr, ptr %75, align 8, !tbaa !77
  %86 = load i64, ptr %81, align 8, !tbaa !79
  %87 = mul i64 %86, %83
  %88 = getelementptr inbounds i8, ptr %85, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !52
  tail call void %84(ptr noundef %89) #19
  %90 = add nuw i64 %83, 1
  %91 = load i64, ptr %76, align 8, !tbaa !82
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %82, label %93, !llvm.loop !87

93:                                               ; preds = %82, %74
  %94 = phi i64 [ 0, %74 ], [ %90, %82 ]
  %95 = getelementptr inbounds %struct.ggc_root_tab, ptr %75, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !77
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %74, !llvm.loop !88

98:                                               ; preds = %93, %71
  %99 = phi i64 [ %57, %71 ], [ %94, %93 ]
  %100 = add i64 %99, 1
  br label %56, !llvm.loop !89

101:                                              ; preds = %68
  %102 = load i8, ptr @ggc_protect_identifiers, align 1, !tbaa !63
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  tail call void @ggc_mark_stringpool() #19
  br label %105

105:                                              ; preds = %104, %101
  %106 = load ptr, ptr @gt_ggc_cache_rtab, align 8, !tbaa !52
  %107 = icmp eq ptr %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %105, %108
  %109 = phi ptr [ %112, %108 ], [ %106, %105 ]
  %110 = phi ptr [ %111, %108 ], [ @gt_ggc_cache_rtab, %105 ]
  tail call fastcc void @ggc_scan_cache_tab(ptr noundef nonnull %109)
  %111 = getelementptr inbounds ptr, ptr %110, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !52
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %108, !llvm.loop !90

114:                                              ; preds = %108, %105
  br label %115

115:                                              ; preds = %114, %130
  %116 = phi i64 [ %131, %130 ], [ 0, %114 ]
  %117 = load ptr, ptr @extra_cache_vec, align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %127, label %119

119:                                              ; preds = %115
  %120 = trunc i64 %116 to i32
  %121 = load i32, ptr %117, align 8, !tbaa !76
  %122 = icmp ugt i32 %121, %120
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = and i64 %116, 4294967295
  %125 = getelementptr inbounds %struct.VEC_const_ggc_cache_tab_t_base, ptr %117, i64 0, i32 2, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !52
  br label %127

127:                                              ; preds = %115, %119, %123
  %128 = phi ptr [ %126, %123 ], [ null, %119 ], [ null, %115 ]
  %129 = phi i1 [ false, %123 ], [ true, %119 ], [ true, %115 ]
  br i1 %129, label %132, label %130

130:                                              ; preds = %127
  tail call fastcc void @ggc_scan_cache_tab(ptr noundef %128)
  %131 = add i64 %116, 1
  br label %115, !llvm.loop !91

132:                                              ; preds = %127
  %133 = load i8, ptr @ggc_protect_identifiers, align 1, !tbaa !63
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  tail call void @ggc_purge_stringpool() #19
  br label %136

136:                                              ; preds = %135, %132
  %137 = tail call i32 @invoke_plugin_callbacks(i32 noundef 7, ptr noundef null) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

declare void @ggc_mark_stringpool() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @ggc_scan_cache_tab(ptr noundef %0) unnamed_addr #9 !prof !51 {
  %2 = load ptr, ptr %0, align 8, !tbaa !92
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1, %18
  %5 = phi ptr [ %20, %18 ], [ %2, %1 ]
  %6 = phi ptr [ %19, %18 ], [ %0, %1 ]
  %7 = load ptr, ptr %5, align 8, !tbaa !52
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @ggc_set_mark(ptr noundef nonnull %7) #19
  %11 = load ptr, ptr %6, align 8, !tbaa !92
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  tail call void @htab_traverse_noresize(ptr noundef %12, ptr noundef nonnull @ggc_htab_delete, ptr noundef nonnull %6) #19
  %13 = load ptr, ptr %6, align 8, !tbaa !92
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = getelementptr inbounds %struct.htab, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !94
  %17 = tail call i32 @ggc_set_mark(ptr noundef %16) #19
  br label %18

18:                                               ; preds = %4, %9
  %19 = getelementptr inbounds %struct.ggc_cache_tab, ptr %6, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !92
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %4, !llvm.loop !96

22:                                               ; preds = %18, %1
  ret void
}

declare void @ggc_purge_stringpool() local_unnamed_addr #3

declare i32 @invoke_plugin_callbacks(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @ggc_alloc_cleared_stat(i64 noundef %0) local_unnamed_addr #11 !prof !97 {
  %2 = tail call ptr @ggc_alloc_stat(i64 noundef %0) #19
  tail call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %0, i1 false), !prof !98
  ret ptr %2
}

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @ggc_realloc_stat(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !prof !99 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6, !prof !100

4:                                                ; preds = %2
  %5 = tail call ptr @ggc_alloc_stat(i64 noundef %1) #19
  br label %11

6:                                                ; preds = %2
  %7 = tail call i64 @ggc_get_size(ptr noundef nonnull %0) #19
  %8 = icmp ult i64 %7, %1
  br i1 %8, label %9, label %11, !prof !101

9:                                                ; preds = %6
  %10 = tail call ptr @ggc_alloc_stat(i64 noundef %1) #19
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr nonnull align 1 %0, i64 %7, i1 false), !prof !102
  tail call void @ggc_free(ptr noundef nonnull %0) #19
  br label %11

11:                                               ; preds = %6, %9, %4
  %12 = phi ptr [ %5, %4 ], [ %10, %9 ], [ %0, %6 ]
  ret ptr %12
}

declare i64 @ggc_get_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

declare void @ggc_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @ggc_calloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #13 !prof !103 {
  %3 = mul i64 %1, %0
  %4 = tail call ptr @ggc_alloc_stat(i64 noundef %3) #19
  tail call void @llvm.memset.p0.i64(ptr align 1 %4, i8 0, i64 %3, i1 false), !prof !104
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ggc_splay_alloc(i32 noundef %0, ptr noundef readnone %1) local_unnamed_addr #13 !prof !105 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %5, label %4, !prof !106

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 260, ptr noundef nonnull @.str.1) #19
  br label %5

5:                                                ; preds = %2, %4
  %6 = sext i32 %0 to i64
  %7 = tail call ptr @ggc_alloc_stat(i64 noundef %6) #19
  ret ptr %7
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ggc_splay_dont_free(ptr nocapture noundef readnone %0, ptr noundef readnone %1) local_unnamed_addr #13 !prof !107 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %5, label %4, !prof !108

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 267, ptr noundef nonnull @.str.1) #19
  br label %5

5:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ggc_print_common_statistics(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #9 !prof !51 {
  store ptr %1, ptr @ggc_stats, align 8, !tbaa !52
  tail call void @ggc_collect() #19
  ret void
}

declare void @ggc_collect() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !51 {
  %5 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %5, label %40, label %6

6:                                                ; preds = %4
  %7 = ptrtoint ptr %0 to i64
  %8 = load ptr, ptr @saving_htab, align 8, !tbaa !52
  %9 = lshr i64 %7, 3
  %10 = trunc i64 %9 to i32
  %11 = tail call ptr @htab_find_slot_with_hash(ptr noundef %8, ptr noundef %0, i32 noundef %10, i32 noundef 1) #19
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.ptr_data, ptr %12, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !109
  %17 = icmp eq ptr %16, %2
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ptr_data, ptr %12, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !111
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %40, label %22

22:                                               ; preds = %18, %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 330, ptr noundef nonnull @.str.1) #19
  br label %40

23:                                               ; preds = %6
  %24 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 56) #19
  store ptr %24, ptr %11, align 8, !tbaa !52
  store ptr %0, ptr %24, align 8, !tbaa !112
  %25 = load ptr, ptr %11, align 8, !tbaa !52
  %26 = getelementptr inbounds %struct.ptr_data, ptr %25, i64 0, i32 2
  store ptr %2, ptr %26, align 8, !tbaa !109
  %27 = load ptr, ptr %11, align 8, !tbaa !52
  %28 = getelementptr inbounds %struct.ptr_data, ptr %27, i64 0, i32 1
  store ptr %1, ptr %28, align 8, !tbaa !111
  %29 = icmp eq ptr %2, @gt_pch_p_S
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %32 = add i64 %31, 1
  br label %35

33:                                               ; preds = %23
  %34 = tail call i64 @ggc_get_size(ptr noundef %0) #19
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i64 [ %34, %33 ], [ %32, %30 ]
  %37 = load ptr, ptr %11, align 8, !tbaa !52
  %38 = getelementptr inbounds %struct.ptr_data, ptr %37, i64 0, i32 4
  store i64 %36, ptr %38, align 8, !tbaa !113
  %39 = getelementptr inbounds %struct.ptr_data, ptr %37, i64 0, i32 6
  store i32 %3, ptr %39, align 8, !tbaa !114
  br label %40

40:                                               ; preds = %4, %22, %18, %35
  %41 = phi i32 [ 1, %35 ], [ 0, %4 ], [ 0, %18 ], [ 0, %22 ]
  ret i32 %41
}

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @gt_pch_p_S(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_note_reorder(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) local_unnamed_addr #9 !prof !51 {
  %4 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = ptrtoint ptr %0 to i64
  %7 = load ptr, ptr @saving_htab, align 8, !tbaa !52
  %8 = lshr i64 %6, 3
  %9 = trunc i64 %8 to i32
  %10 = tail call ptr @htab_find_with_hash(ptr noundef %7, ptr noundef %0, i32 noundef %9) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ptr_data, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !111
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 359, ptr noundef nonnull @.str.1) #19
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.ptr_data, ptr %10, i64 0, i32 3
  store ptr %2, ptr %18, align 8, !tbaa !115
  br label %19

19:                                               ; preds = %3, %17
  ret void
}

declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_save(ptr noundef %0) local_unnamed_addr #9 !prof !51 {
  %2 = alloca %struct.traversal_state, align 8
  %3 = alloca %struct.mmap_info, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  %4 = load ptr, ptr getelementptr inbounds (%struct.host_hooks, ptr @host_hooks, i64 0, i32 3), align 8, !tbaa !116
  %5 = tail call i64 %4() #19
  tail call void @gt_pch_save_stringpool() #19
  %6 = tail call ptr @htab_create(i64 noundef 50000, ptr noundef nonnull @saving_htab_hash, ptr noundef nonnull @saving_htab_eq, ptr noundef nonnull @free) #19
  store ptr %6, ptr @saving_htab, align 8, !tbaa !52
  %7 = load ptr, ptr @gt_ggc_rtab, align 8, !tbaa !52
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1, %40
  %10 = phi ptr [ %42, %40 ], [ %7, %1 ]
  %11 = phi ptr [ %41, %40 ], [ @gt_ggc_rtab, %1 ]
  %12 = load ptr, ptr %10, align 8, !tbaa !77
  %13 = icmp eq ptr %12, null
  br i1 %13, label %40, label %17

14:                                               ; preds = %40, %1
  %15 = load ptr, ptr @gt_pch_cache_rtab, align 8, !tbaa !52
  %16 = icmp eq ptr %15, null
  br i1 %16, label %76, label %44

17:                                               ; preds = %9, %36
  %18 = phi ptr [ %37, %36 ], [ %10, %9 ]
  %19 = getelementptr inbounds %struct.ggc_root_tab, ptr %18, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !82
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ggc_root_tab, ptr %18, i64 0, i32 4
  %24 = getelementptr inbounds %struct.ggc_root_tab, ptr %18, i64 0, i32 2
  br label %25

25:                                               ; preds = %22, %25
  %26 = phi i64 [ 0, %22 ], [ %33, %25 ]
  %27 = load ptr, ptr %23, align 8, !tbaa !118
  %28 = load ptr, ptr %18, align 8, !tbaa !77
  %29 = load i64, ptr %24, align 8, !tbaa !79
  %30 = mul i64 %29, %26
  %31 = getelementptr inbounds i8, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !52
  tail call void %27(ptr noundef %32) #19
  %33 = add nuw i64 %26, 1
  %34 = load i64, ptr %19, align 8, !tbaa !82
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %25, label %36, !llvm.loop !119

36:                                               ; preds = %25, %17
  %37 = getelementptr inbounds %struct.ggc_root_tab, ptr %18, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !77
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %17, !llvm.loop !120

40:                                               ; preds = %36, %9
  %41 = getelementptr inbounds ptr, ptr %11, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !52
  %43 = icmp eq ptr %42, null
  br i1 %43, label %14, label %9, !llvm.loop !121

44:                                               ; preds = %14, %72
  %45 = phi ptr [ %74, %72 ], [ %15, %14 ]
  %46 = phi ptr [ %73, %72 ], [ @gt_pch_cache_rtab, %14 ]
  %47 = load ptr, ptr %45, align 8, !tbaa !77
  %48 = icmp eq ptr %47, null
  br i1 %48, label %72, label %49

49:                                               ; preds = %44, %68
  %50 = phi ptr [ %69, %68 ], [ %45, %44 ]
  %51 = getelementptr inbounds %struct.ggc_root_tab, ptr %50, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !82
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.ggc_root_tab, ptr %50, i64 0, i32 4
  %56 = getelementptr inbounds %struct.ggc_root_tab, ptr %50, i64 0, i32 2
  br label %57

57:                                               ; preds = %54, %57
  %58 = phi i64 [ 0, %54 ], [ %65, %57 ]
  %59 = load ptr, ptr %55, align 8, !tbaa !118
  %60 = load ptr, ptr %50, align 8, !tbaa !77
  %61 = load i64, ptr %56, align 8, !tbaa !79
  %62 = mul i64 %61, %58
  %63 = getelementptr inbounds i8, ptr %60, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !52
  tail call void %59(ptr noundef %64) #19
  %65 = add nuw i64 %58, 1
  %66 = load i64, ptr %51, align 8, !tbaa !82
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %57, label %68, !llvm.loop !122

68:                                               ; preds = %57, %49
  %69 = getelementptr inbounds %struct.ggc_root_tab, ptr %50, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !77
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %49, !llvm.loop !123

72:                                               ; preds = %68, %44
  %73 = getelementptr inbounds ptr, ptr %46, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !52
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %44, !llvm.loop !124

76:                                               ; preds = %72, %14
  store ptr %0, ptr %2, align 8, !tbaa !125
  %77 = tail call ptr @init_ggc_pch() #19
  %78 = getelementptr inbounds %struct.traversal_state, ptr %2, i64 0, i32 1
  store ptr %77, ptr %78, align 8, !tbaa !127
  %79 = getelementptr inbounds %struct.traversal_state, ptr %2, i64 0, i32 2
  store i64 0, ptr %79, align 8, !tbaa !128
  %80 = load ptr, ptr @saving_htab, align 8, !tbaa !52
  call void @htab_traverse(ptr noundef %80, ptr noundef nonnull @call_count, ptr noundef nonnull %2) #19
  %81 = load ptr, ptr %78, align 8, !tbaa !127
  %82 = call i64 @ggc_pch_total_size(ptr noundef %81) #19
  %83 = getelementptr inbounds %struct.mmap_info, ptr %3, i64 0, i32 1
  store i64 %82, ptr %83, align 8, !tbaa !129
  %84 = load ptr, ptr getelementptr inbounds (%struct.host_hooks, ptr @host_hooks, i64 0, i32 1), align 8, !tbaa !131
  %85 = call i32 @fileno(ptr noundef %0)
  %86 = call ptr %84(i64 noundef %82, i32 noundef %85) #19
  %87 = getelementptr inbounds %struct.mmap_info, ptr %3, i64 0, i32 2
  store ptr %86, ptr %87, align 8, !tbaa !132
  %88 = load ptr, ptr %78, align 8, !tbaa !127
  call void @ggc_pch_this_base(ptr noundef %88, ptr noundef %86) #19
  %89 = load i64, ptr %79, align 8, !tbaa !128
  %90 = shl i64 %89, 3
  %91 = call ptr @xmalloc(i64 noundef %90) #19
  %92 = getelementptr inbounds %struct.traversal_state, ptr %2, i64 0, i32 3
  store ptr %91, ptr %92, align 8, !tbaa !133
  %93 = getelementptr inbounds %struct.traversal_state, ptr %2, i64 0, i32 4
  store i64 0, ptr %93, align 8, !tbaa !134
  %94 = load ptr, ptr @saving_htab, align 8, !tbaa !52
  call void @htab_traverse(ptr noundef %94, ptr noundef nonnull @call_alloc, ptr noundef nonnull %2) #19
  %95 = load ptr, ptr %92, align 8, !tbaa !133
  %96 = load i64, ptr %79, align 8, !tbaa !128
  call void @spec_qsort(ptr noundef %95, i64 noundef %96, i64 noundef 8, ptr noundef nonnull @compare_ptr_data) #19
  %97 = load ptr, ptr @gt_pch_scalar_rtab, align 8, !tbaa !52
  %98 = icmp eq ptr %97, null
  br i1 %98, label %120, label %99

99:                                               ; preds = %76, %116
  %100 = phi ptr [ %118, %116 ], [ %97, %76 ]
  %101 = phi ptr [ %117, %116 ], [ @gt_pch_scalar_rtab, %76 ]
  %102 = load ptr, ptr %100, align 8, !tbaa !77
  %103 = icmp eq ptr %102, null
  br i1 %103, label %116, label %104

104:                                              ; preds = %99, %112
  %105 = phi ptr [ %114, %112 ], [ %102, %99 ]
  %106 = phi ptr [ %113, %112 ], [ %100, %99 ]
  %107 = getelementptr inbounds %struct.ggc_root_tab, ptr %106, i64 0, i32 2
  %108 = load i64, ptr %107, align 8, !tbaa !79
  %109 = call i64 @fwrite(ptr noundef nonnull %105, i64 noundef %108, i64 noundef 1, ptr noundef %0)
  %110 = icmp eq i64 %109, 1
  br i1 %110, label %112, label %111

111:                                              ; preds = %104
  call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.2) #19
  br label %112

112:                                              ; preds = %104, %111
  %113 = getelementptr inbounds %struct.ggc_root_tab, ptr %106, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !77
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %104, !llvm.loop !135

116:                                              ; preds = %112, %99
  %117 = getelementptr inbounds ptr, ptr %101, i64 1
  %118 = load ptr, ptr %117, align 8, !tbaa !52
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %99, !llvm.loop !136

120:                                              ; preds = %116, %76
  call fastcc void @write_pch_globals(ptr noundef nonnull @gt_ggc_rtab, ptr noundef nonnull %2)
  call fastcc void @write_pch_globals(ptr noundef nonnull @gt_pch_cache_rtab, ptr noundef nonnull %2)
  %121 = load ptr, ptr %2, align 8, !tbaa !125
  %122 = call i64 @ftell(ptr noundef %121)
  %123 = add i64 %122, 24
  %124 = icmp eq i64 %123, -1
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.3) #19
  br label %126

126:                                              ; preds = %125, %120
  %127 = urem i64 %123, %5
  %128 = sub i64 %5, %127
  %129 = icmp eq i64 %127, 0
  %130 = select i1 %129, i64 0, i64 %128
  %131 = add i64 %130, %123
  store i64 %131, ptr %3, align 8, !tbaa !137
  %132 = load ptr, ptr %2, align 8, !tbaa !125
  %133 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 24, i64 noundef 1, ptr noundef %132)
  %134 = icmp eq i64 %133, 1
  br i1 %134, label %136, label %135

135:                                              ; preds = %126
  call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.2) #19
  br label %136

136:                                              ; preds = %135, %126
  %137 = load i64, ptr %3, align 8, !tbaa !137
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %136
  %140 = load ptr, ptr %2, align 8, !tbaa !125
  %141 = call i32 @fseek(ptr noundef %140, i64 noundef %137, i32 noundef 0)
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.4) #19
  br label %144

144:                                              ; preds = %143, %139, %136
  %145 = load ptr, ptr %78, align 8, !tbaa !127
  %146 = load ptr, ptr %2, align 8, !tbaa !125
  call void @ggc_pch_prepare_write(ptr noundef %145, ptr noundef %146) #19
  %147 = load i64, ptr %79, align 8, !tbaa !128
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %217, label %149

149:                                              ; preds = %144, %213
  %150 = phi i64 [ %163, %213 ], [ 0, %144 ]
  %151 = phi ptr [ %162, %213 ], [ null, %144 ]
  %152 = phi i64 [ %214, %213 ], [ 0, %144 ]
  %153 = load ptr, ptr %92, align 8, !tbaa !133
  %154 = getelementptr inbounds ptr, ptr %153, i64 %152
  %155 = load ptr, ptr %154, align 8, !tbaa !52
  %156 = getelementptr inbounds %struct.ptr_data, ptr %155, i64 0, i32 4
  %157 = load i64, ptr %156, align 8, !tbaa !113
  %158 = icmp ult i64 %150, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %149
  %160 = call ptr @xrealloc(ptr noundef %151, i64 noundef %157) #19
  br label %161

161:                                              ; preds = %159, %149
  %162 = phi ptr [ %160, %159 ], [ %151, %149 ]
  %163 = phi i64 [ %157, %159 ], [ %150, %149 ]
  %164 = load ptr, ptr %92, align 8, !tbaa !133
  %165 = getelementptr inbounds ptr, ptr %164, i64 %152
  %166 = load ptr, ptr %165, align 8, !tbaa !52
  %167 = load ptr, ptr %166, align 8, !tbaa !112
  %168 = getelementptr inbounds %struct.ptr_data, ptr %166, i64 0, i32 4
  %169 = load i64, ptr %168, align 8, !tbaa !113
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %162, ptr align 1 %167, i64 %169, i1 false)
  %170 = load ptr, ptr %92, align 8, !tbaa !133
  %171 = getelementptr inbounds ptr, ptr %170, i64 %152
  %172 = load ptr, ptr %171, align 8, !tbaa !52
  %173 = getelementptr inbounds %struct.ptr_data, ptr %172, i64 0, i32 3
  %174 = load ptr, ptr %173, align 8, !tbaa !115
  %175 = icmp eq ptr %174, null
  br i1 %175, label %180, label %176

176:                                              ; preds = %161
  %177 = load ptr, ptr %172, align 8, !tbaa !112
  %178 = getelementptr inbounds %struct.ptr_data, ptr %172, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !111
  call void %174(ptr noundef %177, ptr noundef %179, ptr noundef nonnull @relocate_ptrs, ptr noundef nonnull %2) #19
  br label %180

180:                                              ; preds = %176, %161
  %181 = load ptr, ptr %92, align 8, !tbaa !133
  %182 = getelementptr inbounds ptr, ptr %181, i64 %152
  %183 = load ptr, ptr %182, align 8, !tbaa !52
  %184 = getelementptr inbounds %struct.ptr_data, ptr %183, i64 0, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !109
  %186 = load ptr, ptr %183, align 8, !tbaa !112
  %187 = getelementptr inbounds %struct.ptr_data, ptr %183, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !111
  call void %185(ptr noundef %186, ptr noundef %188, ptr noundef nonnull @relocate_ptrs, ptr noundef nonnull %2) #19
  %189 = load ptr, ptr %78, align 8, !tbaa !127
  %190 = load ptr, ptr %2, align 8, !tbaa !125
  %191 = load ptr, ptr %92, align 8, !tbaa !133
  %192 = getelementptr inbounds ptr, ptr %191, i64 %152
  %193 = load ptr, ptr %192, align 8, !tbaa !52
  %194 = load ptr, ptr %193, align 8, !tbaa !112
  %195 = getelementptr inbounds %struct.ptr_data, ptr %193, i64 0, i32 5
  %196 = load ptr, ptr %195, align 8, !tbaa !138
  %197 = getelementptr inbounds %struct.ptr_data, ptr %193, i64 0, i32 4
  %198 = load i64, ptr %197, align 8, !tbaa !113
  %199 = getelementptr inbounds %struct.ptr_data, ptr %193, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !109
  %201 = icmp eq ptr %200, @gt_pch_p_S
  %202 = zext i1 %201 to i8
  call void @ggc_pch_write_object(ptr noundef %189, ptr noundef %190, ptr noundef %194, ptr noundef %196, i64 noundef %198, i8 noundef zeroext %202) #19
  %203 = load ptr, ptr %92, align 8, !tbaa !133
  %204 = getelementptr inbounds ptr, ptr %203, i64 %152
  %205 = load ptr, ptr %204, align 8, !tbaa !52
  %206 = getelementptr inbounds %struct.ptr_data, ptr %205, i64 0, i32 2
  %207 = load ptr, ptr %206, align 8, !tbaa !109
  %208 = icmp eq ptr %207, @gt_pch_p_S
  br i1 %208, label %213, label %209

209:                                              ; preds = %180
  %210 = load ptr, ptr %205, align 8, !tbaa !112
  %211 = getelementptr inbounds %struct.ptr_data, ptr %205, i64 0, i32 4
  %212 = load i64, ptr %211, align 8, !tbaa !113
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %210, ptr align 1 %162, i64 %212, i1 false)
  br label %213

213:                                              ; preds = %180, %209
  %214 = add nuw i64 %152, 1
  %215 = load i64, ptr %79, align 8, !tbaa !128
  %216 = icmp ult i64 %214, %215
  br i1 %216, label %149, label %217, !llvm.loop !139

217:                                              ; preds = %213, %144
  %218 = load ptr, ptr %78, align 8, !tbaa !127
  %219 = load ptr, ptr %2, align 8, !tbaa !125
  call void @ggc_pch_finish(ptr noundef %218, ptr noundef %219) #19
  call void @gt_pch_fixup_stringpool() #19
  %220 = load ptr, ptr %92, align 8, !tbaa !133
  call void @free(ptr noundef %220)
  %221 = load ptr, ptr @saving_htab, align 8, !tbaa !52
  call void @htab_delete(ptr noundef %221) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #19
  ret void
}

declare void @gt_pch_save_stringpool() local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @saving_htab_hash(ptr nocapture noundef readonly %0) #15 !prof !51 {
  %2 = load ptr, ptr %0, align 8, !tbaa !112
  %3 = ptrtoint ptr %2 to i64
  %4 = lshr i64 %3, 3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @saving_htab_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #15 !prof !51 {
  %3 = load ptr, ptr %0, align 8, !tbaa !112
  %4 = icmp eq ptr %3, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #16

declare ptr @init_ggc_pch() local_unnamed_addr #3

declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @call_count(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #9 !prof !51 {
  %3 = load ptr, ptr %0, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.traversal_state, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !127
  %6 = load ptr, ptr %3, align 8, !tbaa !112
  %7 = getelementptr inbounds %struct.ptr_data, ptr %3, i64 0, i32 4
  %8 = load i64, ptr %7, align 8, !tbaa !113
  %9 = getelementptr inbounds %struct.ptr_data, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !109
  %11 = icmp eq ptr %10, @gt_pch_p_S
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.ptr_data, ptr %3, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !114
  tail call void @ggc_pch_count_object(ptr noundef %5, ptr noundef %6, i64 noundef %8, i8 noundef zeroext %12, i32 noundef %14) #19
  %15 = getelementptr inbounds %struct.traversal_state, ptr %1, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !128
  %17 = add i64 %16, 1
  store i64 %17, ptr %15, align 8, !tbaa !128
  ret i32 1
}

declare i64 @ggc_pch_total_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #1

declare void @ggc_pch_this_base(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @call_alloc(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #9 !prof !51 {
  %3 = load ptr, ptr %0, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.traversal_state, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !127
  %6 = load ptr, ptr %3, align 8, !tbaa !112
  %7 = getelementptr inbounds %struct.ptr_data, ptr %3, i64 0, i32 4
  %8 = load i64, ptr %7, align 8, !tbaa !113
  %9 = getelementptr inbounds %struct.ptr_data, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !109
  %11 = icmp eq ptr %10, @gt_pch_p_S
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.ptr_data, ptr %3, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !114
  %15 = tail call ptr @ggc_pch_alloc_object(ptr noundef %5, ptr noundef %6, i64 noundef %8, i8 noundef zeroext %12, i32 noundef %14) #19
  %16 = getelementptr inbounds %struct.ptr_data, ptr %3, i64 0, i32 5
  store ptr %15, ptr %16, align 8, !tbaa !138
  %17 = getelementptr inbounds %struct.traversal_state, ptr %1, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !133
  %19 = getelementptr inbounds %struct.traversal_state, ptr %1, i64 0, i32 4
  %20 = load i64, ptr %19, align 8, !tbaa !134
  %21 = add i64 %20, 1
  store i64 %21, ptr %19, align 8, !tbaa !134
  %22 = getelementptr inbounds ptr, ptr %18, i64 %20
  store ptr %3, ptr %22, align 8, !tbaa !52
  ret i32 1
}

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_ptr_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #17 !prof !51 {
  %3 = load ptr, ptr %0, align 8, !tbaa !52
  %4 = load ptr, ptr %1, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.ptr_data, ptr %3, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = getelementptr inbounds %struct.ptr_data, ptr %4, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !138
  %9 = icmp ugt ptr %6, %8
  %10 = zext i1 %9 to i32
  %11 = icmp ult ptr %6, %8
  %12 = sext i1 %11 to i32
  %13 = add nsw i32 %12, %10
  ret i32 %13
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare void @fatal_error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @write_pch_globals(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !51 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %53, label %6

6:                                                ; preds = %2, %49
  %7 = phi ptr [ %51, %49 ], [ %4, %2 ]
  %8 = phi ptr [ %50, %49 ], [ %0, %2 ]
  %9 = load ptr, ptr %7, align 8, !tbaa !77
  %10 = icmp eq ptr %9, null
  br i1 %10, label %49, label %11

11:                                               ; preds = %6, %45
  %12 = phi ptr [ %46, %45 ], [ %7, %6 ]
  %13 = getelementptr inbounds %struct.ggc_root_tab, ptr %12, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !82
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %45, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ggc_root_tab, ptr %12, i64 0, i32 2
  br label %18

18:                                               ; preds = %16, %41
  %19 = phi i64 [ 0, %16 ], [ %42, %41 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %20 = load ptr, ptr %12, align 8, !tbaa !77
  %21 = load i64, ptr %17, align 8, !tbaa !79
  %22 = mul i64 %21, %19
  %23 = getelementptr inbounds i8, ptr %20, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !52
  store ptr %24, ptr %3, align 8, !tbaa !52
  %25 = icmp ult ptr %24, inttoptr (i64 2 to ptr)
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load ptr, ptr %1, align 8, !tbaa !125
  %28 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 8, i64 noundef 1, ptr noundef %27)
  %29 = icmp eq i64 %28, 1
  br i1 %29, label %41, label %40

30:                                               ; preds = %18
  %31 = ptrtoint ptr %24 to i64
  %32 = load ptr, ptr @saving_htab, align 8, !tbaa !52
  %33 = lshr i64 %31, 3
  %34 = trunc i64 %33 to i32
  %35 = tail call ptr @htab_find_with_hash(ptr noundef %32, ptr noundef %24, i32 noundef %34) #19
  %36 = getelementptr inbounds %struct.ptr_data, ptr %35, i64 0, i32 5
  %37 = load ptr, ptr %1, align 8, !tbaa !125
  %38 = tail call i64 @fwrite(ptr noundef nonnull %36, i64 noundef 8, i64 noundef 1, ptr noundef %37)
  %39 = icmp eq i64 %38, 1
  br i1 %39, label %41, label %40

40:                                               ; preds = %30, %26
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.2) #19
  br label %41

41:                                               ; preds = %40, %30, %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  %42 = add nuw i64 %19, 1
  %43 = load i64, ptr %13, align 8, !tbaa !82
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %18, label %45, !llvm.loop !140

45:                                               ; preds = %41, %11
  %46 = getelementptr inbounds %struct.ggc_root_tab, ptr %12, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !77
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %11, !llvm.loop !141

49:                                               ; preds = %45, %6
  %50 = getelementptr inbounds ptr, ptr %8, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !52
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %6, !llvm.loop !142

53:                                               ; preds = %49, %2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @ggc_pch_prepare_write(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @relocate_ptrs(ptr nocapture noundef %0, ptr nocapture readnone %1) #9 !prof !51 {
  %3 = load ptr, ptr %0, align 8, !tbaa !52
  %4 = icmp ult ptr %3, inttoptr (i64 2 to ptr)
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i64
  %7 = load ptr, ptr @saving_htab, align 8, !tbaa !52
  %8 = lshr i64 %6, 3
  %9 = trunc i64 %8 to i32
  %10 = tail call ptr @htab_find_with_hash(ptr noundef %7, ptr noundef nonnull %3, i32 noundef %9) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 443, ptr noundef nonnull @.str.1) #19
  br label %13

13:                                               ; preds = %5, %12
  %14 = getelementptr inbounds %struct.ptr_data, ptr %10, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !138
  store ptr %15, ptr %0, align 8, !tbaa !52
  br label %16

16:                                               ; preds = %2, %13
  ret void
}

declare void @ggc_pch_write_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @ggc_pch_finish(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gt_pch_fixup_stringpool() local_unnamed_addr #3

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_restore(ptr noundef %0) local_unnamed_addr #9 !prof !51 {
  %2 = alloca %struct.mmap_info, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  %3 = load ptr, ptr @gt_ggc_deletable_rtab, align 8, !tbaa !52
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %21
  %6 = phi ptr [ %23, %21 ], [ %3, %1 ]
  %7 = phi ptr [ %22, %21 ], [ @gt_ggc_deletable_rtab, %1 ]
  %8 = load ptr, ptr %6, align 8, !tbaa !77
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %13

10:                                               ; preds = %21, %1
  %11 = load ptr, ptr @gt_pch_scalar_rtab, align 8, !tbaa !52
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %25

13:                                               ; preds = %5, %13
  %14 = phi ptr [ %19, %13 ], [ %8, %5 ]
  %15 = phi ptr [ %18, %13 ], [ %6, %5 ]
  %16 = getelementptr inbounds %struct.ggc_root_tab, ptr %15, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !79
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %14, i8 0, i64 %17, i1 false)
  %18 = getelementptr inbounds %struct.ggc_root_tab, ptr %15, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !77
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %13, !llvm.loop !143

21:                                               ; preds = %13, %5
  %22 = getelementptr inbounds ptr, ptr %7, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  %24 = icmp eq ptr %23, null
  br i1 %24, label %10, label %5, !llvm.loop !144

25:                                               ; preds = %10, %45
  %26 = phi ptr [ %47, %45 ], [ %11, %10 ]
  %27 = phi ptr [ %46, %45 ], [ @gt_pch_scalar_rtab, %10 ]
  %28 = load ptr, ptr %26, align 8, !tbaa !77
  %29 = icmp eq ptr %28, null
  br i1 %29, label %45, label %33

30:                                               ; preds = %45, %10
  %31 = load ptr, ptr @gt_ggc_rtab, align 8, !tbaa !52
  %32 = icmp eq ptr %31, null
  br i1 %32, label %54, label %49

33:                                               ; preds = %25, %41
  %34 = phi ptr [ %43, %41 ], [ %28, %25 ]
  %35 = phi ptr [ %42, %41 ], [ %26, %25 ]
  %36 = getelementptr inbounds %struct.ggc_root_tab, ptr %35, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !79
  %38 = tail call i64 @fread(ptr noundef nonnull %34, i64 noundef %37, i64 noundef 1, ptr noundef %0)
  %39 = icmp eq i64 %38, 1
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.5) #19
  br label %41

41:                                               ; preds = %33, %40
  %42 = getelementptr inbounds %struct.ggc_root_tab, ptr %35, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !77
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %33, !llvm.loop !145

45:                                               ; preds = %41, %25
  %46 = getelementptr inbounds ptr, ptr %27, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !52
  %48 = icmp eq ptr %47, null
  br i1 %48, label %30, label %25, !llvm.loop !146

49:                                               ; preds = %30, %81
  %50 = phi ptr [ %83, %81 ], [ %31, %30 ]
  %51 = phi ptr [ %82, %81 ], [ @gt_ggc_rtab, %30 ]
  %52 = load ptr, ptr %50, align 8, !tbaa !77
  %53 = icmp eq ptr %52, null
  br i1 %53, label %81, label %57

54:                                               ; preds = %81, %30
  %55 = load ptr, ptr @gt_pch_cache_rtab, align 8, !tbaa !52
  %56 = icmp eq ptr %55, null
  br i1 %56, label %118, label %85

57:                                               ; preds = %49, %77
  %58 = phi ptr [ %78, %77 ], [ %50, %49 ]
  %59 = getelementptr inbounds %struct.ggc_root_tab, ptr %58, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !82
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.ggc_root_tab, ptr %58, i64 0, i32 2
  br label %64

64:                                               ; preds = %62, %73
  %65 = phi i64 [ 0, %62 ], [ %74, %73 ]
  %66 = load ptr, ptr %58, align 8, !tbaa !77
  %67 = load i64, ptr %63, align 8, !tbaa !79
  %68 = mul i64 %67, %65
  %69 = getelementptr inbounds i8, ptr %66, i64 %68
  %70 = tail call i64 @fread(ptr noundef %69, i64 noundef 8, i64 noundef 1, ptr noundef %0)
  %71 = icmp eq i64 %70, 1
  br i1 %71, label %73, label %72

72:                                               ; preds = %64
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.5) #19
  br label %73

73:                                               ; preds = %64, %72
  %74 = add nuw i64 %65, 1
  %75 = load i64, ptr %59, align 8, !tbaa !82
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %64, label %77, !llvm.loop !147

77:                                               ; preds = %73, %57
  %78 = getelementptr inbounds %struct.ggc_root_tab, ptr %58, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !77
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %57, !llvm.loop !148

81:                                               ; preds = %77, %49
  %82 = getelementptr inbounds ptr, ptr %51, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !52
  %84 = icmp eq ptr %83, null
  br i1 %84, label %54, label %49, !llvm.loop !149

85:                                               ; preds = %54, %114
  %86 = phi ptr [ %116, %114 ], [ %55, %54 ]
  %87 = phi ptr [ %115, %114 ], [ @gt_pch_cache_rtab, %54 ]
  %88 = load ptr, ptr %86, align 8, !tbaa !77
  %89 = icmp eq ptr %88, null
  br i1 %89, label %114, label %90

90:                                               ; preds = %85, %110
  %91 = phi ptr [ %111, %110 ], [ %86, %85 ]
  %92 = getelementptr inbounds %struct.ggc_root_tab, ptr %91, i64 0, i32 1
  %93 = load i64, ptr %92, align 8, !tbaa !82
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %110, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.ggc_root_tab, ptr %91, i64 0, i32 2
  br label %97

97:                                               ; preds = %95, %106
  %98 = phi i64 [ 0, %95 ], [ %107, %106 ]
  %99 = load ptr, ptr %91, align 8, !tbaa !77
  %100 = load i64, ptr %96, align 8, !tbaa !79
  %101 = mul i64 %100, %98
  %102 = getelementptr inbounds i8, ptr %99, i64 %101
  %103 = tail call i64 @fread(ptr noundef %102, i64 noundef 8, i64 noundef 1, ptr noundef %0)
  %104 = icmp eq i64 %103, 1
  br i1 %104, label %106, label %105

105:                                              ; preds = %97
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.5) #19
  br label %106

106:                                              ; preds = %97, %105
  %107 = add nuw i64 %98, 1
  %108 = load i64, ptr %92, align 8, !tbaa !82
  %109 = icmp ult i64 %107, %108
  br i1 %109, label %97, label %110, !llvm.loop !150

110:                                              ; preds = %106, %90
  %111 = getelementptr inbounds %struct.ggc_root_tab, ptr %91, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !77
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %90, !llvm.loop !151

114:                                              ; preds = %110, %85
  %115 = getelementptr inbounds ptr, ptr %87, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !52
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %85, !llvm.loop !152

118:                                              ; preds = %114, %54
  %119 = call i64 @fread(ptr noundef nonnull %2, i64 noundef 24, i64 noundef 1, ptr noundef %0)
  %120 = icmp eq i64 %119, 1
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.5) #19
  br label %122

122:                                              ; preds = %121, %118
  %123 = load ptr, ptr getelementptr inbounds (%struct.host_hooks, ptr @host_hooks, i64 0, i32 2), align 8, !tbaa !153
  %124 = getelementptr inbounds %struct.mmap_info, ptr %2, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !132
  %126 = getelementptr inbounds %struct.mmap_info, ptr %2, i64 0, i32 1
  %127 = load i64, ptr %126, align 8, !tbaa !129
  %128 = tail call i32 @fileno(ptr noundef %0)
  %129 = load i64, ptr %2, align 8, !tbaa !137
  %130 = tail call i32 %123(ptr noundef %125, i64 noundef %127, i32 noundef %128, i64 noundef %129) #19
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %122
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.6) #19
  br label %133

133:                                              ; preds = %132, %122
  %134 = icmp eq i32 %130, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %133
  %136 = tail call i32 @fseek(ptr noundef %0, i64 noundef %129, i32 noundef 0)
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = tail call i64 @fread(ptr noundef %125, i64 noundef %127, i64 noundef 1, ptr noundef %0)
  %140 = icmp eq i64 %139, 1
  br i1 %140, label %146, label %145

141:                                              ; preds = %133
  %142 = add i64 %129, %127
  %143 = tail call i32 @fseek(ptr noundef %0, i64 noundef %142, i32 noundef 0)
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %141, %135, %138
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.5) #19
  br label %146

146:                                              ; preds = %145, %141, %138
  tail call void @ggc_pch_read(ptr noundef %0, ptr noundef %125) #19
  tail call void @gt_pch_restore_stringpool() #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare void @ggc_pch_read(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gt_pch_restore_stringpool() local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @default_gt_pch_get_address(i64 noundef %0, i32 noundef %1) local_unnamed_addr #18 !prof !51 {
  ret ptr null
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @default_gt_pch_use_address(ptr noundef readnone %0, i64 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #9 !prof !154 {
  %5 = tail call ptr @xmalloc(i64 noundef %1) #19
  %6 = icmp ne ptr %5, %0
  %7 = sext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @default_gt_pch_alloc_granularity() local_unnamed_addr #18 !prof !51 {
  ret i64 0
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @ggc_min_expand_heuristic() local_unnamed_addr #9 !prof !155 {
  %1 = alloca %struct.rlimit, align 8
  %2 = tail call double @physmem_total() #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #19
  %3 = call i32 @getrlimit(i32 noundef 9, ptr noundef nonnull %1) #19
  %4 = icmp eq i32 %3, 0
  %5 = load i64, ptr %1, align 8
  %6 = icmp ne i64 %5, -1
  %7 = select i1 %4, i1 %6, i1 false, !prof !156
  br i1 %7, label %8, label %12, !prof !157

8:                                                ; preds = %0
  %9 = uitofp i64 %5 to double
  %10 = fcmp ogt double %2, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %0, %8, %11
  %13 = phi double [ %9, %11 ], [ %2, %8 ], [ %2, %0 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #19
  %14 = fmul double %13, 0x3E10000000000000
  %15 = fmul double %14, 7.000000e+01
  %16 = fcmp olt double %15, 7.000000e+01
  %17 = select i1 %16, double %15, double 7.000000e+01, !prof !157
  %18 = fadd double %17, 3.000000e+01
  %19 = fptosi double %18 to i32
  ret i32 %19
}

declare double @physmem_total() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @ggc_min_heapsize_heuristic() local_unnamed_addr #9 !prof !154 {
  %1 = alloca %struct.rlimit, align 8
  %2 = alloca %struct.rlimit, align 8
  %3 = tail call double @physmem_total() #19
  %4 = fmul double %3, 2.000000e+00
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #19
  %5 = call i32 @getrlimit(i32 noundef 9, ptr noundef nonnull %1) #19
  %6 = icmp eq i32 %5, 0
  %7 = load i64, ptr %1, align 8
  %8 = icmp ne i64 %7, -1
  %9 = select i1 %6, i1 %8, i1 false, !prof !158
  br i1 %9, label %10, label %14, !prof !159

10:                                               ; preds = %0
  %11 = uitofp i64 %7 to double
  %12 = fcmp ogt double %4, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %0, %10, %13
  %15 = phi double [ %11, %13 ], [ %4, %10 ], [ %4, %0 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #19
  %16 = fmul double %3, 0x3F50000000000000
  %17 = fmul double %16, 1.250000e-01
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  %18 = call i32 @getrlimit(i32 noundef 5, ptr noundef nonnull %2) #19
  %19 = icmp eq i32 %18, 0
  %20 = load i64, ptr %2, align 8
  %21 = icmp ne i64 %20, -1
  %22 = select i1 %19, i1 %21, i1 false, !prof !158
  br i1 %22, label %23, label %28, !prof !159

23:                                               ; preds = %14
  %24 = lshr i64 %20, 10
  %25 = uitofp i64 %24 to double
  %26 = fcmp olt double %17, %25
  %27 = select i1 %26, double %17, double %25
  br label %28

28:                                               ; preds = %23, %14
  %29 = phi double [ %27, %23 ], [ %17, %14 ]
  %30 = fmul double %15, 0x3F50000000000000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  %31 = fmul double %30, 2.500000e-01
  %32 = fcmp ogt double %31, 2.048000e+04
  %33 = select i1 %32, double %31, double 2.048000e+04, !prof !158
  %34 = fsub double %30, %33
  %35 = fcmp olt double %34, 0.000000e+00
  %36 = fmul double %34, 1.000000e+02
  %37 = select i1 %35, double 0.000000e+00, double %36, !prof !159
  %38 = call i32 @ggc_min_expand_heuristic()
  %39 = add nsw i32 %38, 110
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %37, %40
  %42 = fcmp olt double %29, %41
  %43 = select i1 %42, double %29, double %41, !prof !158
  %44 = fcmp ogt double %43, 4.096000e+03
  %45 = select i1 %44, double %43, double 4.096000e+03, !prof !158
  %46 = fcmp olt double %45, 1.310720e+05
  %47 = select i1 %46, double %45, double 1.310720e+05, !prof !159
  %48 = fptosi double %47 to i32
  ret i32 %48
}

declare i32 @getrlimit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @init_ggc_heuristics() local_unnamed_addr #9 !prof !154 {
  %1 = tail call i32 @ggc_min_expand_heuristic()
  tail call void @set_param_value(ptr noundef nonnull @.str.7, i32 noundef %1) #19
  %2 = tail call i32 @ggc_min_heapsize_heuristic()
  tail call void @set_param_value(ptr noundef nonnull @.str.8, i32 noundef %2) #19
  ret void
}

declare void @set_param_value(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @dump_ggc_loc_statistics(i8 noundef zeroext %0) local_unnamed_addr #18 !prof !51 {
  ret void
}

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #3

declare void @htab_traverse_noresize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @ggc_htab_delete(ptr noundef %0, ptr nocapture noundef readonly %1) #9 !prof !51 {
  %3 = getelementptr inbounds %struct.ggc_cache_tab, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !160
  %5 = load ptr, ptr %0, align 8, !tbaa !52
  %6 = tail call i32 %4(ptr noundef %5) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8, !tbaa !92
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  tail call void @htab_clear_slot(ptr noundef %10, ptr noundef nonnull %0) #19
  br label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ggc_cache_tab, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !161
  %14 = load ptr, ptr %0, align 8, !tbaa !52
  tail call void %13(ptr noundef %14) #19
  br label %15

15:                                               ; preds = %11, %8
  ret i32 1
}

declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggc_pch_count_object(ptr noundef, ptr noundef, i64 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare ptr @ggc_pch_alloc_object(ptr noundef, ptr noundef, i64 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

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
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!50}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!35 = !{ptr @ggc_alloc_cleared_stat, ptr @ggc_alloc_stat, i64 3904210}
!36 = !{ptr @ggc_realloc_stat, ptr @ggc_alloc_stat, i64 1399870}
!37 = !{ptr @ggc_realloc_stat, ptr @ggc_get_size, i64 56117}
!38 = !{ptr @ggc_realloc_stat, ptr @ggc_free, i64 55402}
!39 = !{ptr @ggc_calloc, ptr @ggc_alloc_stat, i64 1875}
!40 = !{ptr @ggc_splay_alloc, ptr @ggc_alloc_stat, i64 132}
!41 = !{ptr @default_gt_pch_use_address, ptr @xmalloc, i64 1}
!42 = !{ptr @ggc_min_expand_heuristic, ptr @physmem_total, i64 2}
!43 = !{ptr @ggc_min_expand_heuristic, ptr @getrlimit, i64 2}
!44 = !{ptr @ggc_min_heapsize_heuristic, ptr @physmem_total, i64 1}
!45 = !{ptr @ggc_min_heapsize_heuristic, ptr @getrlimit, i64 2}
!46 = !{ptr @ggc_min_heapsize_heuristic, ptr @ggc_min_expand_heuristic, i64 1}
!47 = !{ptr @init_ggc_heuristics, ptr @ggc_min_expand_heuristic, i64 1}
!48 = !{ptr @init_ggc_heuristics, ptr @set_param_value, i64 2}
!49 = !{ptr @init_ggc_heuristics, ptr @ggc_min_heapsize_heuristic, i64 1}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = !{!"function_entry_count", i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !{!57, !53, i64 8}
!57 = !{!"_IO_FILE", !58, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !53, i64 96, !53, i64 104, !58, i64 112, !58, i64 116, !59, i64 120, !60, i64 128, !54, i64 130, !54, i64 131, !53, i64 136, !59, i64 144, !53, i64 152, !53, i64 160, !53, i64 168, !53, i64 176, !59, i64 184, !58, i64 192, !54, i64 196}
!58 = !{!"int", !54, i64 0}
!59 = !{!"long", !54, i64 0}
!60 = !{!"short", !54, i64 0}
!61 = !{!57, !53, i64 16}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{!54, !54, i64 0}
!64 = !{!57, !53, i64 40}
!65 = !{!57, !53, i64 48}
!66 = !{!57, !58, i64 0}
!67 = !{!58, !58, i64 0}
!68 = distinct !{!68, !69, !70}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !{!72, !58, i64 4}
!72 = !{!"VEC_const_ggc_root_tab_t_base", !58, i64 0, !58, i64 4, !54, i64 8}
!73 = !{!72, !58, i64 0}
!74 = !{!75, !58, i64 4}
!75 = !{!"VEC_const_ggc_cache_tab_t_base", !58, i64 0, !58, i64 4, !54, i64 8}
!76 = !{!75, !58, i64 0}
!77 = !{!78, !53, i64 0}
!78 = !{!"ggc_root_tab", !53, i64 0, !59, i64 8, !59, i64 16, !53, i64 24, !53, i64 32}
!79 = !{!78, !59, i64 16}
!80 = distinct !{!80, !69, !70}
!81 = distinct !{!81, !69, !70}
!82 = !{!78, !59, i64 8}
!83 = !{!78, !53, i64 24}
!84 = distinct !{!84, !69, !70}
!85 = distinct !{!85, !69, !70}
!86 = distinct !{!86, !69, !70}
!87 = distinct !{!87, !69, !70}
!88 = distinct !{!88, !69, !70}
!89 = distinct !{!89, !69, !70}
!90 = distinct !{!90, !69, !70}
!91 = distinct !{!91, !69, !70}
!92 = !{!93, !53, i64 0}
!93 = !{!"ggc_cache_tab", !53, i64 0, !59, i64 8, !59, i64 16, !53, i64 24, !53, i64 32, !53, i64 40}
!94 = !{!95, !53, i64 24}
!95 = !{!"htab", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !59, i64 32, !59, i64 40, !59, i64 48, !58, i64 56, !58, i64 60, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !53, i64 96, !58, i64 104}
!96 = distinct !{!96, !69, !70}
!97 = !{!"function_entry_count", i64 3904210}
!98 = !{!"VP", i32 1, i64 3904210, i64 65, i64 1147387, i64 64, i64 830966, i64 33, i64 561662, i64 16, i64 550737}
!99 = !{!"function_entry_count", i64 1400585}
!100 = !{!"branch_weights", i32 1344468, i32 56117}
!101 = !{!"branch_weights", i32 55402, i32 715}
!102 = !{!"VP", i32 1, i64 55402, i64 33, i64 19597, i64 17, i64 16402, i64 32, i64 15230, i64 65, i64 1855}
!103 = !{!"function_entry_count", i64 1875}
!104 = !{!"VP", i32 1, i64 1875, i64 65, i64 856, i64 513, i64 468, i64 33, i64 308, i64 129, i64 203}
!105 = !{!"function_entry_count", i64 132}
!106 = !{!"branch_weights", i32 132, i32 0}
!107 = !{!"function_entry_count", i64 38}
!108 = !{!"branch_weights", i32 38, i32 0}
!109 = !{!110, !53, i64 16}
!110 = !{!"ptr_data", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !59, i64 32, !53, i64 40, !58, i64 48}
!111 = !{!110, !53, i64 8}
!112 = !{!110, !53, i64 0}
!113 = !{!110, !59, i64 32}
!114 = !{!110, !58, i64 48}
!115 = !{!110, !53, i64 24}
!116 = !{!117, !53, i64 24}
!117 = !{!"host_hooks", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24}
!118 = !{!78, !53, i64 32}
!119 = distinct !{!119, !69, !70}
!120 = distinct !{!120, !69, !70}
!121 = distinct !{!121, !69, !70}
!122 = distinct !{!122, !69, !70}
!123 = distinct !{!123, !69, !70}
!124 = distinct !{!124, !69, !70}
!125 = !{!126, !53, i64 0}
!126 = !{!"traversal_state", !53, i64 0, !53, i64 8, !59, i64 16, !53, i64 24, !59, i64 32}
!127 = !{!126, !53, i64 8}
!128 = !{!126, !59, i64 16}
!129 = !{!130, !59, i64 8}
!130 = !{!"mmap_info", !59, i64 0, !59, i64 8, !53, i64 16}
!131 = !{!117, !53, i64 8}
!132 = !{!130, !53, i64 16}
!133 = !{!126, !53, i64 24}
!134 = !{!126, !59, i64 32}
!135 = distinct !{!135, !69, !70}
!136 = distinct !{!136, !69, !70}
!137 = !{!130, !59, i64 0}
!138 = !{!110, !53, i64 40}
!139 = distinct !{!139, !69, !70}
!140 = distinct !{!140, !69, !70}
!141 = distinct !{!141, !69, !70}
!142 = distinct !{!142, !69, !70}
!143 = distinct !{!143, !69, !70}
!144 = distinct !{!144, !69, !70}
!145 = distinct !{!145, !69, !70}
!146 = distinct !{!146, !69, !70}
!147 = distinct !{!147, !69, !70}
!148 = distinct !{!148, !69, !70}
!149 = distinct !{!149, !69, !70}
!150 = distinct !{!150, !69, !70}
!151 = distinct !{!151, !69, !70}
!152 = distinct !{!152, !69, !70}
!153 = !{!117, !53, i64 16}
!154 = !{!"function_entry_count", i64 1}
!155 = !{!"function_entry_count", i64 2}
!156 = !{!"branch_weights", i32 2, i32 0}
!157 = !{!"branch_weights", i32 0, i32 2}
!158 = !{!"branch_weights", i32 1, i32 0}
!159 = !{!"branch_weights", i32 0, i32 1}
!160 = !{!93, !53, i64 40}
!161 = !{!93, !53, i64 24}

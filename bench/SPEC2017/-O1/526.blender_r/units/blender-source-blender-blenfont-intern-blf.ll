; ModuleID = 'blender/source/blender/blenfont/intern/blf.c'
source_filename = "blender/source/blender/blenfont/intern/blf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FontBLF = type { ptr, ptr, [3 x float], [3 x float], float, i32, i32, i32, i32, [4 x float], [4 x float], [16 x double], %struct.rctf, i32, i32, i32, i32, i32, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.FontBufInfoBLF }
%struct.rctf = type { float, float, float, float }
%struct.ListBase = type { ptr, ptr }
%struct.FontBufInfoBLF = type { ptr, ptr, i32, i32, i32, ptr, [4 x float] }
%struct.GlyphCacheBLF = type { ptr, ptr, i32, i32, [257 x %struct.ListBase], [256 x ptr], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float }

@blf_mono_font = dso_local local_unnamed_addr global i32 -1, align 4
@blf_mono_font_render = dso_local local_unnamed_addr global i32 -1, align 4
@global_font = internal unnamed_addr global [16 x ptr] zeroinitializer, align 16
@global_font_points = internal unnamed_addr global i32 11, align 4
@global_font_dpi = internal unnamed_addr global i32 72, align 4
@global_font_default = internal unnamed_addr global i32 -1, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Can't find font: %s\0A\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Can't load font: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Can't load font: %s from memory!!\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@str.8 = private unnamed_addr constant [18 x i8] c"Too many fonts!!!\00", align 1
@str.9 = private unnamed_addr constant [34 x i8] c"Warning: Can't find default font!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @BLF_init(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) @global_font, i8 0, i64 128, i1 false), !tbaa !34
  store i32 %0, ptr @global_font_points, align 4, !tbaa !38
  store i32 %1, ptr @global_font_dpi, align 4, !tbaa !38
  %3 = tail call i32 @blf_font_init() #14
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @blf_font_init() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @BLF_default_dpi(i32 noundef %0) local_unnamed_addr #3 {
  store i32 %0, ptr @global_font_dpi, align 4, !tbaa !38
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLF_exit() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %7
  %2 = phi i64 [ 0, %0 ], [ %8, %7 ]
  %3 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @blf_font_free(ptr noundef nonnull %4) #14
  store ptr null, ptr %3, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %1, %6
  %8 = add nuw nsw i64 %2, 1
  %9 = icmp eq i64 %8, 16
  br i1 %9, label %10, label %1, !llvm.loop !40

10:                                               ; preds = %7
  tail call void @blf_font_exit() #14
  ret void
}

declare void @blf_font_free(ptr noundef) local_unnamed_addr #2

declare void @blf_font_exit() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BLF_cache_clear() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %7
  %2 = phi i64 [ 0, %0 ], [ %8, %7 ]
  %3 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @blf_glyph_cache_clear(ptr noundef nonnull %4) #14
  br label %7

7:                                                ; preds = %1, %6
  %8 = add nuw nsw i64 %2, 1
  %9 = icmp eq i64 %8, 16
  br i1 %9, label %10, label %1, !llvm.loop !43

10:                                               ; preds = %7
  ret void
}

declare void @blf_glyph_cache_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @BLF_default_set(i32 noundef %0) local_unnamed_addr #4 {
  %2 = icmp ult i32 %0, 16
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp ne ptr %6, null
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi i1 [ %7, %3 ], [ false, %1 ]
  %10 = icmp eq i32 %0, -1
  %11 = or i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 %0, ptr @global_font_default, align 4, !tbaa !38
  br label %13

13:                                               ; preds = %8, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BLF_load(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %49, label %3

3:                                                ; preds = %1, %12
  %4 = phi i64 [ %13, %12 ], [ 0, %1 ]
  %5 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %6, align 8, !tbaa !44
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %0) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8, %3
  %13 = add nuw nsw i64 %4, 1
  %14 = icmp eq i64 %13, 16
  br i1 %14, label %17, label %3, !llvm.loop !50

15:                                               ; preds = %8
  %16 = trunc i64 %4 to i32
  br label %17

17:                                               ; preds = %12, %15
  %18 = phi i32 [ %16, %15 ], [ -1, %12 ]
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %49, label %20

20:                                               ; preds = %17, %25
  %21 = phi i64 [ %26, %25 ], [ 0, %17 ]
  %22 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = add nuw nsw i64 %21, 1
  %27 = icmp eq i64 %26, 16
  br i1 %27, label %30, label %20, !llvm.loop !51

28:                                               ; preds = %20
  %29 = trunc i64 %21 to i32
  br label %30

30:                                               ; preds = %25, %28
  %31 = phi i32 [ %29, %28 ], [ -1, %25 ]
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  br label %49

35:                                               ; preds = %30
  %36 = tail call ptr @blf_dir_search(ptr noundef nonnull %0) #14
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %0)
  br label %49

40:                                               ; preds = %35
  %41 = tail call ptr @blf_font_new(ptr noundef nonnull %0, ptr noundef nonnull %36) #14
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %42(ptr noundef nonnull %36) #14
  %43 = icmp eq ptr %41, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %0)
  br label %49

46:                                               ; preds = %40
  %47 = sext i32 %31 to i64
  %48 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %47
  store ptr %41, ptr %48, align 8, !tbaa !34
  br label %49

49:                                               ; preds = %17, %1, %46, %44, %38, %33
  %50 = phi i32 [ -1, %33 ], [ %31, %46 ], [ -1, %44 ], [ -1, %38 ], [ -1, %1 ], [ %18, %17 ]
  ret i32 %50
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare ptr @blf_dir_search(ptr noundef) local_unnamed_addr #2

declare ptr @blf_font_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @BLF_load_unique(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %32, label %3

3:                                                ; preds = %1, %8
  %4 = phi i64 [ %9, %8 ], [ 0, %1 ]
  %5 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = add nuw nsw i64 %4, 1
  %10 = icmp eq i64 %9, 16
  br i1 %10, label %13, label %3, !llvm.loop !51

11:                                               ; preds = %3
  %12 = trunc i64 %4 to i32
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i32 [ %12, %11 ], [ -1, %8 ]
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  br label %32

18:                                               ; preds = %13
  %19 = tail call ptr @blf_dir_search(ptr noundef nonnull %0) #14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %0)
  br label %32

23:                                               ; preds = %18
  %24 = tail call ptr @blf_font_new(ptr noundef nonnull %0, ptr noundef nonnull %19) #14
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %25(ptr noundef nonnull %19) #14
  %26 = icmp eq ptr %24, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %0)
  br label %32

29:                                               ; preds = %23
  %30 = sext i32 %14 to i64
  %31 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %30
  store ptr %24, ptr %31, align 8, !tbaa !34
  br label %32

32:                                               ; preds = %1, %29, %27, %21, %16
  %33 = phi i32 [ -1, %16 ], [ %14, %29 ], [ -1, %27 ], [ -1, %21 ], [ -1, %1 ]
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define dso_local void @BLF_metrics_attach(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult i32 %0, 16
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = zext nneg i32 %0 to i64
  %7 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %3, %5
  %10 = phi ptr [ %8, %5 ], [ null, %3 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @blf_font_attach_from_mem(ptr noundef nonnull %10, ptr noundef %1, i32 noundef %2) #14
  br label %13

13:                                               ; preds = %12, %9
  ret void
}

declare void @blf_font_attach_from_mem(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @BLF_load_mem(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %3, %14
  %6 = phi i64 [ %15, %14 ], [ 0, %3 ]
  %7 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %8, align 8, !tbaa !44
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %0) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10, %5
  %15 = add nuw nsw i64 %6, 1
  %16 = icmp eq i64 %15, 16
  br i1 %16, label %19, label %5, !llvm.loop !50

17:                                               ; preds = %10
  %18 = trunc i64 %6 to i32
  br label %19

19:                                               ; preds = %14, %17
  %20 = phi i32 [ %18, %17 ], [ -1, %14 ]
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %51, label %22

22:                                               ; preds = %19, %27
  %23 = phi i64 [ %28, %27 ], [ 0, %19 ]
  %24 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = add nuw nsw i64 %23, 1
  %29 = icmp eq i64 %28, 16
  br i1 %29, label %32, label %22, !llvm.loop !51

30:                                               ; preds = %22
  %31 = trunc i64 %23 to i32
  br label %32

32:                                               ; preds = %27, %30
  %33 = phi i32 [ %31, %30 ], [ -1, %27 ]
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  br label %51

37:                                               ; preds = %32
  %38 = icmp ne ptr %1, null
  %39 = icmp ne i32 %2, 0
  %40 = and i1 %38, %39
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %0)
  br label %51

43:                                               ; preds = %37
  %44 = tail call ptr @blf_font_new_from_mem(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2) #14
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %0)
  br label %51

48:                                               ; preds = %43
  %49 = sext i32 %33 to i64
  %50 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %49
  store ptr %44, ptr %50, align 8, !tbaa !34
  br label %51

51:                                               ; preds = %19, %3, %48, %46, %41, %35
  %52 = phi i32 [ -1, %35 ], [ %33, %48 ], [ -1, %46 ], [ -1, %41 ], [ -1, %3 ], [ %20, %19 ]
  ret i32 %52
}

declare ptr @blf_font_new_from_mem(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @BLF_load_mem_unique(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %3, %10
  %6 = phi i64 [ %11, %10 ], [ 0, %3 ]
  %7 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = add nuw nsw i64 %6, 1
  %12 = icmp eq i64 %11, 16
  br i1 %12, label %15, label %5, !llvm.loop !51

13:                                               ; preds = %5
  %14 = trunc i64 %6 to i32
  br label %15

15:                                               ; preds = %10, %13
  %16 = phi i32 [ %14, %13 ], [ -1, %10 ]
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  br label %34

20:                                               ; preds = %15
  %21 = icmp ne ptr %1, null
  %22 = icmp ne i32 %2, 0
  %23 = and i1 %21, %22
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %0)
  br label %34

26:                                               ; preds = %20
  %27 = tail call ptr @blf_font_new_from_mem(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %0)
  br label %34

31:                                               ; preds = %26
  %32 = sext i32 %16 to i64
  %33 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %32
  store ptr %27, ptr %33, align 8, !tbaa !34
  br label %34

34:                                               ; preds = %3, %31, %29, %24, %18
  %35 = phi i32 [ -1, %18 ], [ %16, %31 ], [ -1, %29 ], [ -1, %24 ], [ -1, %3 ]
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define dso_local void @BLF_unload(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %12
  %3 = phi i64 [ 0, %1 ], [ %13, %12 ]
  %4 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !44
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %0) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @blf_font_free(ptr noundef nonnull %5) #14
  store ptr null, ptr %4, align 8, !tbaa !34
  br label %12

12:                                               ; preds = %2, %7, %11
  %13 = add nuw nsw i64 %3, 1
  %14 = icmp eq i64 %13, 16
  br i1 %14, label %15, label %2, !llvm.loop !52

15:                                               ; preds = %12
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @BLF_unload_id(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult i32 %0, 16
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ null, %1 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  tail call void @blf_font_free(ptr noundef nonnull %8) #14
  %11 = sext i32 %0 to i64
  %12 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %11
  store ptr null, ptr %12, align 8, !tbaa !34
  br label %13

13:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLF_enable(i32 noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = icmp ult i32 %0, 16
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %0 to i64
  %6 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.FontBLF, ptr %9, i64 0, i32 17
  %13 = load i32, ptr %12, align 8, !tbaa !53
  %14 = or i32 %13, %1
  store i32 %14, ptr %12, align 8, !tbaa !53
  br label %15

15:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLF_disable(i32 noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = icmp ult i32 %0, 16
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %0 to i64
  %6 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = xor i32 %1, -1
  %13 = getelementptr inbounds %struct.FontBLF, ptr %9, i64 0, i32 17
  %14 = load i32, ptr %13, align 8, !tbaa !53
  %15 = and i32 %14, %12
  store i32 %15, ptr %13, align 8, !tbaa !53
  br label %16

16:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLF_enable_default(i32 noundef %0) local_unnamed_addr #7 {
  %2 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %3 = icmp ult i32 %2, 16
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  %6 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ null, %1 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.FontBLF, ptr %9, i64 0, i32 17
  %13 = load i32, ptr %12, align 8, !tbaa !53
  %14 = or i32 %13, %0
  store i32 %14, ptr %12, align 8, !tbaa !53
  br label %15

15:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLF_disable_default(i32 noundef %0) local_unnamed_addr #7 {
  %2 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %3 = icmp ult i32 %2, 16
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  %6 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ null, %1 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = xor i32 %0, -1
  %13 = getelementptr inbounds %struct.FontBLF, ptr %9, i64 0, i32 17
  %14 = load i32, ptr %13, align 8, !tbaa !53
  %15 = and i32 %14, %12
  store i32 %15, ptr %13, align 8, !tbaa !53
  br label %16

16:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @BLF_aspect(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #8 {
  %5 = icmp ult i32 %0, 16
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = zext nneg i32 %0 to i64
  %8 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %4, %6
  %11 = phi ptr [ %9, %6 ], [ null, %4 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.FontBLF, ptr %11, i64 0, i32 2
  store float %1, ptr %14, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.FontBLF, ptr %11, i64 0, i32 2, i64 1
  store float %2, ptr %15, align 4, !tbaa !54
  %16 = getelementptr inbounds %struct.FontBLF, ptr %11, i64 0, i32 2, i64 2
  store float %3, ptr %16, align 8, !tbaa !54
  br label %17

17:                                               ; preds = %13, %10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLF_matrix(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = icmp ult i32 %0, 16
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %0 to i64
  %6 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.FontBLF, ptr %9, i64 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %12, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false)
  br label %13

13:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLF_position(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #7 {
  %5 = icmp ult i32 %0, 16
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = zext nneg i32 %0 to i64
  %8 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %4, %6
  %11 = phi ptr [ %9, %6 ], [ null, %4 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %71, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.FontBLF, ptr %11, i64 0, i32 17
  %15 = load i32, ptr %14, align 8, !tbaa !53
  %16 = and i32 %15, 32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.FontBLF, ptr %11, i64 0, i32 2
  %20 = load float, ptr %19, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct.FontBLF, ptr %11, i64 0, i32 2, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !54
  %23 = getelementptr inbounds %struct.FontBLF, ptr %11, i64 0, i32 2, i64 2
  %24 = load float, ptr %23, align 8, !tbaa !54
  br label %25

25:                                               ; preds = %13, %18
  %26 = phi float [ %20, %18 ], [ 1.000000e+00, %13 ]
  %27 = phi float [ %22, %18 ], [ 1.000000e+00, %13 ]
  %28 = phi float [ %24, %18 ], [ 1.000000e+00, %13 ]
  %29 = tail call float @llvm.floor.f32(float %1)
  %30 = fsub float %1, %29
  %31 = fcmp ogt float %30, 0x3FD99999A0000000
  %32 = fcmp olt float %30, 0x3FE3333340000000
  %33 = and i1 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = fcmp olt float %30, 5.000000e-01
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = tail call float @llvm.fmuladd.f32(float %26, float 0xBFB99999A0000000, float %1)
  br label %40

38:                                               ; preds = %34
  %39 = tail call float @llvm.fmuladd.f32(float %26, float 0x3FB99999A0000000, float %1)
  br label %40

40:                                               ; preds = %36, %38, %25
  %41 = phi float [ %37, %36 ], [ %39, %38 ], [ %1, %25 ]
  %42 = tail call float @llvm.floor.f32(float %2)
  %43 = fsub float %2, %42
  %44 = fcmp ogt float %43, 0x3FD99999A0000000
  %45 = fcmp olt float %43, 0x3FE3333340000000
  %46 = and i1 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = fcmp olt float %43, 5.000000e-01
  br i1 %48, label %49, label %51

49:                                               ; preds = %47
  %50 = tail call float @llvm.fmuladd.f32(float %27, float 0xBFB99999A0000000, float %2)
  br label %53

51:                                               ; preds = %47
  %52 = tail call float @llvm.fmuladd.f32(float %27, float 0x3FB99999A0000000, float %2)
  br label %53

53:                                               ; preds = %49, %51, %40
  %54 = phi float [ %50, %49 ], [ %52, %51 ], [ %2, %40 ]
  %55 = tail call float @llvm.floor.f32(float %3)
  %56 = fsub float %3, %55
  %57 = fcmp ogt float %56, 0x3FD99999A0000000
  %58 = fcmp olt float %56, 0x3FE3333340000000
  %59 = and i1 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = fcmp olt float %56, 5.000000e-01
  br i1 %61, label %62, label %64

62:                                               ; preds = %60
  %63 = tail call float @llvm.fmuladd.f32(float %28, float 0xBFB99999A0000000, float %3)
  br label %66

64:                                               ; preds = %60
  %65 = tail call float @llvm.fmuladd.f32(float %28, float 0x3FB99999A0000000, float %3)
  br label %66

66:                                               ; preds = %62, %64, %53
  %67 = phi float [ %63, %62 ], [ %65, %64 ], [ %3, %53 ]
  %68 = getelementptr inbounds %struct.FontBLF, ptr %11, i64 0, i32 3
  store float %41, ptr %68, align 4, !tbaa !54
  %69 = getelementptr inbounds %struct.FontBLF, ptr %11, i64 0, i32 3, i64 1
  store float %54, ptr %69, align 4, !tbaa !54
  %70 = getelementptr inbounds %struct.FontBLF, ptr %11, i64 0, i32 3, i64 2
  store float %67, ptr %70, align 4, !tbaa !54
  br label %71

71:                                               ; preds = %66, %10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: nounwind uwtable
define dso_local void @BLF_size(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult i32 %0, 16
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = zext nneg i32 %0 to i64
  %7 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %3, %5
  %10 = phi ptr [ %8, %5 ], [ null, %3 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @blf_font_size(ptr noundef nonnull %10, i32 noundef %1, i32 noundef %2) #14
  br label %13

13:                                               ; preds = %12, %9
  ret void
}

declare void @blf_font_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @BLF_blur(i32 noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = icmp ult i32 %0, 16
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %0 to i64
  %6 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.FontBLF, ptr %9, i64 0, i32 5
  store i32 %1, ptr %12, align 4, !tbaa !55
  br label %13

13:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLF_draw_default(float noundef %0, float noundef %1, float noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %26

10:                                               ; preds = %5, %19
  %11 = phi i64 [ %20, %19 ], [ 0, %5 ]
  %12 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %13, align 8, !tbaa !44
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(8) @.str.4) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15, %10
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, 16
  br i1 %21, label %24, label %10, !llvm.loop !50

22:                                               ; preds = %15
  %23 = trunc i64 %11 to i32
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i32 [ %23, %22 ], [ -1, %19 ]
  store i32 %25, ptr @global_font_default, align 4, !tbaa !38
  br label %26

26:                                               ; preds = %24, %5
  %27 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  br label %128

31:                                               ; preds = %26
  %32 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %33 = load i32, ptr @global_font_points, align 4, !tbaa !38
  %34 = load i32, ptr @global_font_dpi, align 4, !tbaa !38
  %35 = icmp ult i32 %32, 16
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = zext nneg i32 %32 to i64
  %38 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi ptr [ %39, %36 ], [ null, %31 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void @blf_font_size(ptr noundef nonnull %41, i32 noundef %33, i32 noundef %34) #14
  br label %44

44:                                               ; preds = %40, %43
  %45 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %46 = icmp ult i32 %45, 16
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = zext nneg i32 %45 to i64
  %49 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi ptr [ %50, %47 ], [ null, %44 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %112, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.FontBLF, ptr %52, i64 0, i32 17
  %56 = load i32, ptr %55, align 8, !tbaa !53
  %57 = and i32 %56, 32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.FontBLF, ptr %52, i64 0, i32 2
  %61 = load float, ptr %60, align 8, !tbaa !54
  %62 = getelementptr inbounds %struct.FontBLF, ptr %52, i64 0, i32 2, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !54
  %64 = getelementptr inbounds %struct.FontBLF, ptr %52, i64 0, i32 2, i64 2
  %65 = load float, ptr %64, align 8, !tbaa !54
  br label %66

66:                                               ; preds = %59, %54
  %67 = phi float [ %61, %59 ], [ 1.000000e+00, %54 ]
  %68 = phi float [ %63, %59 ], [ 1.000000e+00, %54 ]
  %69 = phi float [ %65, %59 ], [ 1.000000e+00, %54 ]
  %70 = tail call float @llvm.floor.f32(float %0)
  %71 = fsub float %0, %70
  %72 = fcmp ogt float %71, 0x3FD99999A0000000
  %73 = fcmp olt float %71, 0x3FE3333340000000
  %74 = and i1 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %66
  %76 = fcmp olt float %71, 5.000000e-01
  br i1 %76, label %77, label %79

77:                                               ; preds = %75
  %78 = tail call float @llvm.fmuladd.f32(float %67, float 0xBFB99999A0000000, float %0)
  br label %81

79:                                               ; preds = %75
  %80 = tail call float @llvm.fmuladd.f32(float %67, float 0x3FB99999A0000000, float %0)
  br label %81

81:                                               ; preds = %79, %77, %66
  %82 = phi float [ %78, %77 ], [ %80, %79 ], [ %0, %66 ]
  %83 = tail call float @llvm.floor.f32(float %1)
  %84 = fsub float %1, %83
  %85 = fcmp ogt float %84, 0x3FD99999A0000000
  %86 = fcmp olt float %84, 0x3FE3333340000000
  %87 = and i1 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = fcmp olt float %84, 5.000000e-01
  br i1 %89, label %90, label %92

90:                                               ; preds = %88
  %91 = tail call float @llvm.fmuladd.f32(float %68, float 0xBFB99999A0000000, float %1)
  br label %94

92:                                               ; preds = %88
  %93 = tail call float @llvm.fmuladd.f32(float %68, float 0x3FB99999A0000000, float %1)
  br label %94

94:                                               ; preds = %92, %90, %81
  %95 = phi float [ %91, %90 ], [ %93, %92 ], [ %1, %81 ]
  %96 = tail call float @llvm.floor.f32(float %2)
  %97 = fsub float %2, %96
  %98 = fcmp ogt float %97, 0x3FD99999A0000000
  %99 = fcmp olt float %97, 0x3FE3333340000000
  %100 = and i1 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = fcmp olt float %97, 5.000000e-01
  br i1 %102, label %103, label %105

103:                                              ; preds = %101
  %104 = tail call float @llvm.fmuladd.f32(float %69, float 0xBFB99999A0000000, float %2)
  br label %107

105:                                              ; preds = %101
  %106 = tail call float @llvm.fmuladd.f32(float %69, float 0x3FB99999A0000000, float %2)
  br label %107

107:                                              ; preds = %105, %103, %94
  %108 = phi float [ %104, %103 ], [ %106, %105 ], [ %2, %94 ]
  %109 = getelementptr inbounds %struct.FontBLF, ptr %52, i64 0, i32 3
  store float %82, ptr %109, align 4, !tbaa !54
  %110 = getelementptr inbounds %struct.FontBLF, ptr %52, i64 0, i32 3, i64 1
  store float %95, ptr %110, align 4, !tbaa !54
  %111 = getelementptr inbounds %struct.FontBLF, ptr %52, i64 0, i32 3, i64 2
  store float %108, ptr %111, align 4, !tbaa !54
  br label %112

112:                                              ; preds = %51, %107
  br i1 %46, label %113, label %117

113:                                              ; preds = %112
  %114 = zext nneg i32 %45 to i64
  %115 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !34
  br label %117

117:                                              ; preds = %113, %112
  %118 = phi ptr [ %116, %113 ], [ null, %112 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  %119 = icmp eq ptr %118, null
  br i1 %119, label %127, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.FontBLF, ptr %118, i64 0, i32 19
  %122 = load ptr, ptr %121, align 8, !tbaa !56
  %123 = icmp eq ptr %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  call fastcc void @blf_draw__start(ptr noundef nonnull %118, ptr noundef nonnull %6, ptr noundef nonnull %7)
  call void @blf_font_draw(ptr noundef nonnull %118, ptr noundef %3, i64 noundef %4) #14
  %125 = load i32, ptr %6, align 4, !tbaa !38
  %126 = load i32, ptr %7, align 4, !tbaa !38
  call fastcc void @blf_draw__end(i32 noundef %125, i32 noundef %126)
  br label %127

127:                                              ; preds = %117, %120, %124
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %128

128:                                              ; preds = %29, %127
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLF_draw(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = icmp ult i32 %0, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = zext nneg i32 %0 to i64
  %9 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  br label %11

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %10, %7 ], [ null, %3 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.FontBLF, ptr %12, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  call fastcc void @blf_draw__start(ptr noundef nonnull %12, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call void @blf_font_draw(ptr noundef nonnull %12, ptr noundef %1, i64 noundef %2) #14
  %19 = load i32, ptr %4, align 4, !tbaa !38
  %20 = load i32, ptr %5, align 4, !tbaa !38
  call fastcc void @blf_draw__end(i32 noundef %19, i32 noundef %20)
  br label %21

21:                                               ; preds = %18, %14, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLF_draw_default_ascii(float noundef %0, float noundef %1, float noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %26

10:                                               ; preds = %5, %19
  %11 = phi i64 [ %20, %19 ], [ 0, %5 ]
  %12 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %13, align 8, !tbaa !44
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(8) @.str.4) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15, %10
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, 16
  br i1 %21, label %24, label %10, !llvm.loop !50

22:                                               ; preds = %15
  %23 = trunc i64 %11 to i32
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i32 [ %23, %22 ], [ -1, %19 ]
  store i32 %25, ptr @global_font_default, align 4, !tbaa !38
  br label %26

26:                                               ; preds = %24, %5
  %27 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  br label %128

31:                                               ; preds = %26
  %32 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %33 = load i32, ptr @global_font_points, align 4, !tbaa !38
  %34 = load i32, ptr @global_font_dpi, align 4, !tbaa !38
  %35 = icmp ult i32 %32, 16
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = zext nneg i32 %32 to i64
  %38 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi ptr [ %39, %36 ], [ null, %31 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void @blf_font_size(ptr noundef nonnull %41, i32 noundef %33, i32 noundef %34) #14
  br label %44

44:                                               ; preds = %40, %43
  %45 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %46 = icmp ult i32 %45, 16
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = zext nneg i32 %45 to i64
  %49 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi ptr [ %50, %47 ], [ null, %44 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %112, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.FontBLF, ptr %52, i64 0, i32 17
  %56 = load i32, ptr %55, align 8, !tbaa !53
  %57 = and i32 %56, 32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.FontBLF, ptr %52, i64 0, i32 2
  %61 = load float, ptr %60, align 8, !tbaa !54
  %62 = getelementptr inbounds %struct.FontBLF, ptr %52, i64 0, i32 2, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !54
  %64 = getelementptr inbounds %struct.FontBLF, ptr %52, i64 0, i32 2, i64 2
  %65 = load float, ptr %64, align 8, !tbaa !54
  br label %66

66:                                               ; preds = %59, %54
  %67 = phi float [ %61, %59 ], [ 1.000000e+00, %54 ]
  %68 = phi float [ %63, %59 ], [ 1.000000e+00, %54 ]
  %69 = phi float [ %65, %59 ], [ 1.000000e+00, %54 ]
  %70 = tail call float @llvm.floor.f32(float %0)
  %71 = fsub float %0, %70
  %72 = fcmp ogt float %71, 0x3FD99999A0000000
  %73 = fcmp olt float %71, 0x3FE3333340000000
  %74 = and i1 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %66
  %76 = fcmp olt float %71, 5.000000e-01
  br i1 %76, label %77, label %79

77:                                               ; preds = %75
  %78 = tail call float @llvm.fmuladd.f32(float %67, float 0xBFB99999A0000000, float %0)
  br label %81

79:                                               ; preds = %75
  %80 = tail call float @llvm.fmuladd.f32(float %67, float 0x3FB99999A0000000, float %0)
  br label %81

81:                                               ; preds = %79, %77, %66
  %82 = phi float [ %78, %77 ], [ %80, %79 ], [ %0, %66 ]
  %83 = tail call float @llvm.floor.f32(float %1)
  %84 = fsub float %1, %83
  %85 = fcmp ogt float %84, 0x3FD99999A0000000
  %86 = fcmp olt float %84, 0x3FE3333340000000
  %87 = and i1 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = fcmp olt float %84, 5.000000e-01
  br i1 %89, label %90, label %92

90:                                               ; preds = %88
  %91 = tail call float @llvm.fmuladd.f32(float %68, float 0xBFB99999A0000000, float %1)
  br label %94

92:                                               ; preds = %88
  %93 = tail call float @llvm.fmuladd.f32(float %68, float 0x3FB99999A0000000, float %1)
  br label %94

94:                                               ; preds = %92, %90, %81
  %95 = phi float [ %91, %90 ], [ %93, %92 ], [ %1, %81 ]
  %96 = tail call float @llvm.floor.f32(float %2)
  %97 = fsub float %2, %96
  %98 = fcmp ogt float %97, 0x3FD99999A0000000
  %99 = fcmp olt float %97, 0x3FE3333340000000
  %100 = and i1 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = fcmp olt float %97, 5.000000e-01
  br i1 %102, label %103, label %105

103:                                              ; preds = %101
  %104 = tail call float @llvm.fmuladd.f32(float %69, float 0xBFB99999A0000000, float %2)
  br label %107

105:                                              ; preds = %101
  %106 = tail call float @llvm.fmuladd.f32(float %69, float 0x3FB99999A0000000, float %2)
  br label %107

107:                                              ; preds = %105, %103, %94
  %108 = phi float [ %104, %103 ], [ %106, %105 ], [ %2, %94 ]
  %109 = getelementptr inbounds %struct.FontBLF, ptr %52, i64 0, i32 3
  store float %82, ptr %109, align 4, !tbaa !54
  %110 = getelementptr inbounds %struct.FontBLF, ptr %52, i64 0, i32 3, i64 1
  store float %95, ptr %110, align 4, !tbaa !54
  %111 = getelementptr inbounds %struct.FontBLF, ptr %52, i64 0, i32 3, i64 2
  store float %108, ptr %111, align 4, !tbaa !54
  br label %112

112:                                              ; preds = %51, %107
  br i1 %46, label %113, label %117

113:                                              ; preds = %112
  %114 = zext nneg i32 %45 to i64
  %115 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !34
  br label %117

117:                                              ; preds = %113, %112
  %118 = phi ptr [ %116, %113 ], [ null, %112 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  %119 = icmp eq ptr %118, null
  br i1 %119, label %127, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.FontBLF, ptr %118, i64 0, i32 19
  %122 = load ptr, ptr %121, align 8, !tbaa !56
  %123 = icmp eq ptr %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  call fastcc void @blf_draw__start(ptr noundef nonnull %118, ptr noundef nonnull %6, ptr noundef nonnull %7)
  call void @blf_font_draw_ascii(ptr noundef nonnull %118, ptr noundef %3, i64 noundef %4) #14
  %125 = load i32, ptr %6, align 4, !tbaa !38
  %126 = load i32, ptr %7, align 4, !tbaa !38
  call fastcc void @blf_draw__end(i32 noundef %125, i32 noundef %126)
  br label %127

127:                                              ; preds = %117, %120, %124
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %128

128:                                              ; preds = %29, %127
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLF_draw_ascii(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = icmp ult i32 %0, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = zext nneg i32 %0 to i64
  %9 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  br label %11

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %10, %7 ], [ null, %3 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.FontBLF, ptr %12, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  call fastcc void @blf_draw__start(ptr noundef nonnull %12, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call void @blf_font_draw_ascii(ptr noundef nonnull %12, ptr noundef %1, i64 noundef %2) #14
  %19 = load i32, ptr %4, align 4, !tbaa !38
  %20 = load i32, ptr %5, align 4, !tbaa !38
  call fastcc void @blf_draw__end(i32 noundef %19, i32 noundef %20)
  br label %21

21:                                               ; preds = %18, %14, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @BLF_rotation_default(float noundef %0) local_unnamed_addr #8 {
  %2 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %3 = icmp ult i32 %2, 16
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  %6 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ null, %1 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.FontBLF, ptr %9, i64 0, i32 4
  store float %0, ptr %12, align 8, !tbaa !57
  br label %13

13:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @blf_draw__start(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  tail call void @glEnable(i32 noundef 3042) #14
  tail call void @glEnable(i32 noundef 3553) #14
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #14
  tail call void @glGetIntegerv(i32 noundef 2976, ptr noundef %1) #14
  tail call void @glMatrixMode(i32 noundef 5890) #14
  tail call void @glPushMatrix() #14
  tail call void @glLoadIdentity() #14
  tail call void @glMatrixMode(i32 noundef 5888) #14
  tail call void @glPushMatrix() #14
  %4 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 17
  %5 = load i32, ptr %4, align 8, !tbaa !53
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 11
  tail call void @glMultMatrixd(ptr noundef nonnull %9) #14
  br label %10

10:                                               ; preds = %8, %3
  %11 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 3
  %12 = load float, ptr %11, align 4, !tbaa !54
  %13 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 3, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !54
  %15 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 3, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !54
  tail call void @glTranslatef(float noundef %12, float noundef %14, float noundef %16) #14
  %17 = load i32, ptr %4, align 8, !tbaa !53
  %18 = and i32 %17, 32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 2
  %22 = load float, ptr %21, align 8, !tbaa !54
  %23 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 2, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !54
  %25 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 2, i64 2
  %26 = load float, ptr %25, align 8, !tbaa !54
  tail call void @glScalef(float noundef %22, float noundef %24, float noundef %26) #14
  br label %27

27:                                               ; preds = %20, %10
  %28 = load i32, ptr %4, align 8, !tbaa !53
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 4
  %33 = load float, ptr %32, align 8, !tbaa !57
  %34 = fmul float %33, 0x404CA5DC20000000
  tail call void @glRotatef(float noundef %34, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #14
  br label %35

35:                                               ; preds = %31, %27
  %36 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 6
  %37 = load i32, ptr %36, align 8, !tbaa !58
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 5
  %41 = load i32, ptr %40, align 4, !tbaa !55
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39, %35
  %44 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 10
  tail call void @glGetFloatv(i32 noundef 2816, ptr noundef nonnull %44) #14
  br label %45

45:                                               ; preds = %43, %39
  %46 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 16
  store i32 -1, ptr %46, align 4, !tbaa !59
  tail call void @glGetTexEnviv(i32 noundef 8960, i32 noundef 8704, ptr noundef %2) #14
  %47 = load i32, ptr %2, align 4, !tbaa !38
  %48 = icmp eq i32 %47, 8448
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448) #14
  br label %50

50:                                               ; preds = %49, %45
  ret void
}

declare void @blf_font_draw(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @blf_draw__end(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq i32 %1, 8448
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef %1) #14
  br label %5

5:                                                ; preds = %4, %2
  tail call void @glMatrixMode(i32 noundef 5890) #14
  tail call void @glPopMatrix() #14
  tail call void @glMatrixMode(i32 noundef 5888) #14
  tail call void @glPopMatrix() #14
  %6 = icmp eq i32 %0, 5888
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  tail call void @glMatrixMode(i32 noundef %0) #14
  br label %8

8:                                                ; preds = %7, %5
  tail call void @glDisable(i32 noundef 3042) #14
  tail call void @glDisable(i32 noundef 3553) #14
  ret void
}

declare void @blf_font_draw_ascii(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @BLF_draw_mono(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = icmp ult i32 %0, 16
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = zext nneg i32 %0 to i64
  %10 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  br label %12

12:                                               ; preds = %4, %8
  %13 = phi ptr [ %11, %8 ], [ null, %4 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.FontBLF, ptr %13, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  call fastcc void @blf_draw__start(ptr noundef nonnull %13, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %20 = call i32 @blf_font_draw_mono(ptr noundef nonnull %13, ptr noundef %1, i64 noundef %2, i32 noundef %3) #14
  %21 = load i32, ptr %5, align 4, !tbaa !38
  %22 = load i32, ptr %6, align 4, !tbaa !38
  call fastcc void @blf_draw__end(i32 noundef %21, i32 noundef %22)
  br label %23

23:                                               ; preds = %19, %15, %12
  %24 = phi i32 [ %20, %19 ], [ 0, %15 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret i32 %24
}

declare i32 @blf_font_draw_mono(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @BLF_width_to_strlen(i32 noundef %0, ptr noundef %1, i64 noundef %2, float noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = icmp ult i32 %0, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = zext nneg i32 %0 to i64
  %9 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  br label %11

11:                                               ; preds = %5, %7
  %12 = phi ptr [ %10, %7 ], [ null, %5 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.FontBLF, ptr %12, i64 0, i32 17
  %16 = load i32, ptr %15, align 8, !tbaa !53
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.FontBLF, ptr %12, i64 0, i32 2
  %21 = load float, ptr %20, align 8, !tbaa !54
  br label %22

22:                                               ; preds = %14, %19
  %23 = phi float [ %21, %19 ], [ 1.000000e+00, %14 ]
  %24 = fdiv float %3, %23
  %25 = tail call i64 @blf_font_width_to_strlen(ptr noundef nonnull %12, ptr noundef %1, i64 noundef %2, float noundef %24, ptr noundef %4) #14
  %26 = icmp eq ptr %4, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = load float, ptr %4, align 4, !tbaa !54
  %29 = fmul float %23, %28
  br label %32

30:                                               ; preds = %11
  %31 = icmp eq ptr %4, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %30, %27
  %33 = phi float [ %29, %27 ], [ 0.000000e+00, %30 ]
  %34 = phi i64 [ %25, %27 ], [ 0, %30 ]
  store float %33, ptr %4, align 4, !tbaa !54
  br label %35

35:                                               ; preds = %32, %30, %22
  %36 = phi i64 [ %25, %22 ], [ 0, %30 ], [ %34, %32 ]
  ret i64 %36
}

declare i64 @blf_font_width_to_strlen(ptr noundef, ptr noundef, i64 noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @BLF_width_to_rstrlen(i32 noundef %0, ptr noundef %1, i64 noundef %2, float noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = icmp ult i32 %0, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = zext nneg i32 %0 to i64
  %9 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  br label %11

11:                                               ; preds = %5, %7
  %12 = phi ptr [ %10, %7 ], [ null, %5 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.FontBLF, ptr %12, i64 0, i32 17
  %16 = load i32, ptr %15, align 8, !tbaa !53
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.FontBLF, ptr %12, i64 0, i32 2
  %21 = load float, ptr %20, align 8, !tbaa !54
  br label %22

22:                                               ; preds = %14, %19
  %23 = phi float [ %21, %19 ], [ 1.000000e+00, %14 ]
  %24 = fdiv float %3, %23
  %25 = tail call i64 @blf_font_width_to_rstrlen(ptr noundef nonnull %12, ptr noundef %1, i64 noundef %2, float noundef %24, ptr noundef %4) #14
  %26 = icmp eq ptr %4, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = load float, ptr %4, align 4, !tbaa !54
  %29 = fmul float %23, %28
  br label %32

30:                                               ; preds = %11
  %31 = icmp eq ptr %4, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %30, %27
  %33 = phi float [ %29, %27 ], [ 0.000000e+00, %30 ]
  %34 = phi i64 [ %25, %27 ], [ 0, %30 ]
  store float %33, ptr %4, align 4, !tbaa !54
  br label %35

35:                                               ; preds = %32, %30, %22
  %36 = phi i64 [ %25, %22 ], [ 0, %30 ], [ %34, %32 ]
  ret i64 %36
}

declare i64 @blf_font_width_to_rstrlen(ptr noundef, ptr noundef, i64 noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BLF_boundbox(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i32 %0, 16
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = zext nneg i32 %0 to i64
  %8 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %4, %6
  %11 = phi ptr [ %9, %6 ], [ null, %4 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @blf_font_boundbox(ptr noundef nonnull %11, ptr noundef %1, i64 noundef %2, ptr noundef %3) #14
  br label %14

14:                                               ; preds = %13, %10
  ret void
}

declare void @blf_font_boundbox(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BLF_width_and_height(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = icmp ult i32 %0, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = zext nneg i32 %0 to i64
  %9 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  br label %11

11:                                               ; preds = %5, %7
  %12 = phi ptr [ %10, %7 ], [ null, %5 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.FontBLF, ptr %12, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @blf_font_width_and_height(ptr noundef nonnull %12, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #14
  br label %20

19:                                               ; preds = %14, %11
  store float 0.000000e+00, ptr %4, align 4, !tbaa !54
  store float 0.000000e+00, ptr %3, align 4, !tbaa !54
  br label %20

20:                                               ; preds = %19, %18
  ret void
}

declare void @blf_font_width_and_height(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BLF_width_and_height_default(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %23

7:                                                ; preds = %4, %16
  %8 = phi i64 [ %17, %16 ], [ 0, %4 ]
  %9 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %10, align 8, !tbaa !44
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(8) @.str.4) #15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12, %7
  %17 = add nuw nsw i64 %8, 1
  %18 = icmp eq i64 %17, 16
  br i1 %18, label %21, label %7, !llvm.loop !50

19:                                               ; preds = %12
  %20 = trunc i64 %8 to i32
  br label %21

21:                                               ; preds = %16, %19
  %22 = phi i32 [ %20, %19 ], [ -1, %16 ]
  store i32 %22, ptr @global_font_default, align 4, !tbaa !38
  br label %23

23:                                               ; preds = %21, %4
  %24 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  store float 0.000000e+00, ptr %3, align 4, !tbaa !54
  store float 0.000000e+00, ptr %2, align 4, !tbaa !54
  br label %57

28:                                               ; preds = %23
  %29 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %30 = load i32, ptr @global_font_points, align 4, !tbaa !38
  %31 = load i32, ptr @global_font_dpi, align 4, !tbaa !38
  %32 = icmp ult i32 %29, 16
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = zext nneg i32 %29 to i64
  %35 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  br label %37

37:                                               ; preds = %33, %28
  %38 = phi ptr [ %36, %33 ], [ null, %28 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @blf_font_size(ptr noundef nonnull %38, i32 noundef %30, i32 noundef %31) #14
  br label %41

41:                                               ; preds = %37, %40
  %42 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %43 = icmp ult i32 %42, 16
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = zext nneg i32 %42 to i64
  %46 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi ptr [ %47, %44 ], [ null, %41 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.FontBLF, ptr %49, i64 0, i32 19
  %53 = load ptr, ptr %52, align 8, !tbaa !56
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @blf_font_width_and_height(ptr noundef nonnull %49, ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #14
  br label %57

56:                                               ; preds = %51, %48
  store float 0.000000e+00, ptr %3, align 4, !tbaa !54
  store float 0.000000e+00, ptr %2, align 4, !tbaa !54
  br label %57

57:                                               ; preds = %56, %55, %26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local float @BLF_width(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult i32 %0, 16
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = zext nneg i32 %0 to i64
  %7 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %3, %5
  %10 = phi ptr [ %8, %5 ], [ null, %3 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.FontBLF, ptr %10, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !56
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call float @blf_font_width(ptr noundef nonnull %10, ptr noundef %1, i64 noundef %2) #14
  br label %18

18:                                               ; preds = %9, %12, %16
  %19 = phi float [ %17, %16 ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %9 ]
  ret float %19
}

declare float @blf_font_width(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local float @BLF_fixed_width(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult i32 %0, 16
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ null, %1 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.FontBLF, ptr %8, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call float @blf_font_fixed_width(ptr noundef nonnull %8) #14
  br label %16

16:                                               ; preds = %7, %10, %14
  %17 = phi float [ %15, %14 ], [ 0.000000e+00, %10 ], [ 0.000000e+00, %7 ]
  ret float %17
}

declare float @blf_font_fixed_width(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local float @BLF_width_default(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %21

5:                                                ; preds = %2, %14
  %6 = phi i64 [ %15, %14 ], [ 0, %2 ]
  %7 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %8, align 8, !tbaa !44
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(8) @.str.4) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10, %5
  %15 = add nuw nsw i64 %6, 1
  %16 = icmp eq i64 %15, 16
  br i1 %16, label %19, label %5, !llvm.loop !50

17:                                               ; preds = %10
  %18 = trunc i64 %6 to i32
  br label %19

19:                                               ; preds = %14, %17
  %20 = phi i32 [ %18, %17 ], [ -1, %14 ]
  store i32 %20, ptr @global_font_default, align 4, !tbaa !38
  br label %21

21:                                               ; preds = %19, %2
  %22 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  br label %55

26:                                               ; preds = %21
  %27 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %28 = load i32, ptr @global_font_points, align 4, !tbaa !38
  %29 = load i32, ptr @global_font_dpi, align 4, !tbaa !38
  %30 = icmp ult i32 %27, 16
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = zext nneg i32 %27 to i64
  %33 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  br label %35

35:                                               ; preds = %31, %26
  %36 = phi ptr [ %34, %31 ], [ null, %26 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @blf_font_size(ptr noundef nonnull %36, i32 noundef %28, i32 noundef %29) #14
  br label %39

39:                                               ; preds = %35, %38
  %40 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %41 = icmp ult i32 %40, 16
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = zext nneg i32 %40 to i64
  %44 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  br label %46

46:                                               ; preds = %42, %39
  %47 = phi ptr [ %45, %42 ], [ null, %39 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.FontBLF, ptr %47, i64 0, i32 19
  %51 = load ptr, ptr %50, align 8, !tbaa !56
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = tail call float @blf_font_width(ptr noundef nonnull %47, ptr noundef %0, i64 noundef %1) #14
  br label %55

55:                                               ; preds = %24, %53, %49, %46
  %56 = phi float [ 0.000000e+00, %24 ], [ %54, %53 ], [ 0.000000e+00, %49 ], [ 0.000000e+00, %46 ]
  ret float %56
}

; Function Attrs: nounwind uwtable
define dso_local float @BLF_height(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult i32 %0, 16
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = zext nneg i32 %0 to i64
  %7 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %3, %5
  %10 = phi ptr [ %8, %5 ], [ null, %3 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.FontBLF, ptr %10, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !56
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call float @blf_font_height(ptr noundef nonnull %10, ptr noundef %1, i64 noundef %2) #14
  br label %18

18:                                               ; preds = %9, %12, %16
  %19 = phi float [ %17, %16 ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %9 ]
  ret float %19
}

declare float @blf_font_height(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BLF_height_max(i32 noundef %0) local_unnamed_addr #11 {
  %2 = icmp ult i32 %0, 16
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ null, %1 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.FontBLF, ptr %8, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %12, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !60
  %17 = sitofp i32 %16 to float
  br label %18

18:                                               ; preds = %7, %10, %14
  %19 = phi float [ %17, %14 ], [ 0.000000e+00, %10 ], [ 0.000000e+00, %7 ]
  ret float %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BLF_width_max(i32 noundef %0) local_unnamed_addr #11 {
  %2 = icmp ult i32 %0, 16
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ null, %1 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.FontBLF, ptr %8, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %12, i64 0, i32 12
  %16 = load i32, ptr %15, align 4, !tbaa !62
  %17 = sitofp i32 %16 to float
  br label %18

18:                                               ; preds = %7, %10, %14
  %19 = phi float [ %17, %14 ], [ 0.000000e+00, %10 ], [ 0.000000e+00, %7 ]
  ret float %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BLF_descender(i32 noundef %0) local_unnamed_addr #11 {
  %2 = icmp ult i32 %0, 16
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ null, %1 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.FontBLF, ptr %8, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %12, i64 0, i32 19
  %16 = load float, ptr %15, align 8, !tbaa !63
  br label %17

17:                                               ; preds = %7, %10, %14
  %18 = phi float [ %16, %14 ], [ 0.000000e+00, %10 ], [ 0.000000e+00, %7 ]
  ret float %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BLF_ascender(i32 noundef %0) local_unnamed_addr #11 {
  %2 = icmp ult i32 %0, 16
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ null, %1 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.FontBLF, ptr %8, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %12, i64 0, i32 18
  %16 = load float, ptr %15, align 4, !tbaa !64
  br label %17

17:                                               ; preds = %7, %10, %14
  %18 = phi float [ %16, %14 ], [ 0.000000e+00, %10 ], [ 0.000000e+00, %7 ]
  ret float %18
}

; Function Attrs: nounwind uwtable
define dso_local float @BLF_height_default(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %21

5:                                                ; preds = %2, %14
  %6 = phi i64 [ %15, %14 ], [ 0, %2 ]
  %7 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %8, align 8, !tbaa !44
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(8) @.str.4) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10, %5
  %15 = add nuw nsw i64 %6, 1
  %16 = icmp eq i64 %15, 16
  br i1 %16, label %19, label %5, !llvm.loop !50

17:                                               ; preds = %10
  %18 = trunc i64 %6 to i32
  br label %19

19:                                               ; preds = %14, %17
  %20 = phi i32 [ %18, %17 ], [ -1, %14 ]
  store i32 %20, ptr @global_font_default, align 4, !tbaa !38
  br label %21

21:                                               ; preds = %19, %2
  %22 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  br label %55

26:                                               ; preds = %21
  %27 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %28 = load i32, ptr @global_font_points, align 4, !tbaa !38
  %29 = load i32, ptr @global_font_dpi, align 4, !tbaa !38
  %30 = icmp ult i32 %27, 16
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = zext nneg i32 %27 to i64
  %33 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  br label %35

35:                                               ; preds = %31, %26
  %36 = phi ptr [ %34, %31 ], [ null, %26 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @blf_font_size(ptr noundef nonnull %36, i32 noundef %28, i32 noundef %29) #14
  br label %39

39:                                               ; preds = %35, %38
  %40 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %41 = icmp ult i32 %40, 16
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = zext nneg i32 %40 to i64
  %44 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  br label %46

46:                                               ; preds = %42, %39
  %47 = phi ptr [ %45, %42 ], [ null, %39 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.FontBLF, ptr %47, i64 0, i32 19
  %51 = load ptr, ptr %50, align 8, !tbaa !56
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = tail call float @blf_font_height(ptr noundef nonnull %47, ptr noundef %0, i64 noundef %1) #14
  br label %55

55:                                               ; preds = %24, %53, %49, %46
  %56 = phi float [ 0.000000e+00, %24 ], [ %54, %53 ], [ 0.000000e+00, %49 ], [ 0.000000e+00, %46 ]
  ret float %56
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @BLF_rotation(i32 noundef %0, float noundef %1) local_unnamed_addr #8 {
  %3 = icmp ult i32 %0, 16
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %0 to i64
  %6 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.FontBLF, ptr %9, i64 0, i32 4
  store float %1, ptr %12, align 8, !tbaa !57
  br label %13

13:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @BLF_clipping(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #8 {
  %6 = icmp ult i32 %0, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = zext nneg i32 %0 to i64
  %9 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  br label %11

11:                                               ; preds = %5, %7
  %12 = phi ptr [ %10, %7 ], [ null, %5 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.FontBLF, ptr %12, i64 0, i32 12
  store float %1, ptr %15, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct.FontBLF, ptr %12, i64 0, i32 12, i32 2
  store float %2, ptr %16, align 8, !tbaa !66
  %17 = getelementptr inbounds %struct.FontBLF, ptr %12, i64 0, i32 12, i32 1
  store float %3, ptr %17, align 4, !tbaa !67
  %18 = getelementptr inbounds %struct.FontBLF, ptr %12, i64 0, i32 12, i32 3
  store float %4, ptr %18, align 4, !tbaa !68
  br label %19

19:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @BLF_clipping_default(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #8 {
  %5 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %6 = icmp ult i32 %5, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  br label %11

11:                                               ; preds = %4, %7
  %12 = phi ptr [ %10, %7 ], [ null, %4 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.FontBLF, ptr %12, i64 0, i32 12
  store float %0, ptr %15, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct.FontBLF, ptr %12, i64 0, i32 12, i32 2
  store float %1, ptr %16, align 8, !tbaa !66
  %17 = getelementptr inbounds %struct.FontBLF, ptr %12, i64 0, i32 12, i32 1
  store float %2, ptr %17, align 4, !tbaa !67
  %18 = getelementptr inbounds %struct.FontBLF, ptr %12, i64 0, i32 12, i32 3
  store float %3, ptr %18, align 4, !tbaa !68
  br label %19

19:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @BLF_shadow(i32 noundef %0, i32 noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #8 {
  %7 = icmp ult i32 %0, 16
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = zext nneg i32 %0 to i64
  %10 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  br label %12

12:                                               ; preds = %6, %8
  %13 = phi ptr [ %11, %8 ], [ null, %6 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.FontBLF, ptr %13, i64 0, i32 6
  store i32 %1, ptr %16, align 8, !tbaa !58
  %17 = getelementptr inbounds %struct.FontBLF, ptr %13, i64 0, i32 9
  store float %2, ptr %17, align 4, !tbaa !54
  %18 = getelementptr inbounds %struct.FontBLF, ptr %13, i64 0, i32 9, i64 1
  store float %3, ptr %18, align 4, !tbaa !54
  %19 = getelementptr inbounds %struct.FontBLF, ptr %13, i64 0, i32 9, i64 2
  store float %4, ptr %19, align 4, !tbaa !54
  %20 = getelementptr inbounds %struct.FontBLF, ptr %13, i64 0, i32 9, i64 3
  store float %5, ptr %20, align 4, !tbaa !54
  br label %21

21:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @BLF_shadow_offset(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = icmp ult i32 %0, 16
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = zext nneg i32 %0 to i64
  %7 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %3, %5
  %10 = phi ptr [ %8, %5 ], [ null, %3 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.FontBLF, ptr %10, i64 0, i32 7
  store i32 %1, ptr %13, align 4, !tbaa !69
  %14 = getelementptr inbounds %struct.FontBLF, ptr %10, i64 0, i32 8
  store i32 %2, ptr %14, align 8, !tbaa !70
  br label %15

15:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @BLF_buffer(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #8 {
  %8 = icmp ult i32 %0, 16
  br i1 %8, label %9, label %13

9:                                                ; preds = %7
  %10 = zext nneg i32 %0 to i64
  %11 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  br label %13

13:                                               ; preds = %7, %9
  %14 = phi ptr [ %12, %9 ], [ null, %7 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.FontBLF, ptr %14, i64 0, i32 23
  store ptr %1, ptr %17, align 8, !tbaa !71
  %18 = getelementptr inbounds %struct.FontBLF, ptr %14, i64 0, i32 23, i32 1
  store ptr %2, ptr %18, align 8, !tbaa !72
  %19 = getelementptr inbounds %struct.FontBLF, ptr %14, i64 0, i32 23, i32 2
  store i32 %3, ptr %19, align 8, !tbaa !73
  %20 = getelementptr inbounds %struct.FontBLF, ptr %14, i64 0, i32 23, i32 3
  store i32 %4, ptr %20, align 4, !tbaa !74
  %21 = getelementptr inbounds %struct.FontBLF, ptr %14, i64 0, i32 23, i32 4
  store i32 %5, ptr %21, align 8, !tbaa !75
  %22 = getelementptr inbounds %struct.FontBLF, ptr %14, i64 0, i32 23, i32 5
  store ptr %6, ptr %22, align 8, !tbaa !76
  br label %23

23:                                               ; preds = %16, %13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @BLF_buffer_col(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #8 {
  %6 = icmp ult i32 %0, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = zext nneg i32 %0 to i64
  %9 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  br label %11

11:                                               ; preds = %5, %7
  %12 = phi ptr [ %10, %7 ], [ null, %5 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.FontBLF, ptr %12, i64 0, i32 23, i32 6
  store float %1, ptr %15, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.FontBLF, ptr %12, i64 0, i32 23, i32 6, i64 1
  store float %2, ptr %16, align 4, !tbaa !54
  %17 = getelementptr inbounds %struct.FontBLF, ptr %12, i64 0, i32 23, i32 6, i64 2
  store float %3, ptr %17, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.FontBLF, ptr %12, i64 0, i32 23, i32 6, i64 3
  store float %4, ptr %18, align 4, !tbaa !54
  br label %19

19:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLF_draw_buffer(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i32 %0, 16
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %0 to i64
  %6 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.FontBLF, ptr %9, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.FontBLF, ptr %9, i64 0, i32 23
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.FontBLF, ptr %9, i64 0, i32 23, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !72
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %15
  tail call void @blf_font_buffer(ptr noundef nonnull %9, ptr noundef %1) #14
  br label %24

24:                                               ; preds = %23, %19, %11, %8
  ret void
}

declare void @blf_font_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glMatrixMode(i32 noundef) local_unnamed_addr #2

declare void @glPushMatrix() local_unnamed_addr #2

declare void @glLoadIdentity() local_unnamed_addr #2

declare void @glMultMatrixd(ptr noundef) local_unnamed_addr #2

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glRotatef(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glGetFloatv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glGetTexEnviv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glTexEnvi(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glPopMatrix() local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = distinct !{!40, !41, !42}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !41, !42}
!44 = !{!45, !35, i64 0}
!45 = !{!"FontBLF", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 28, !46, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !36, i64 60, !36, i64 76, !36, i64 96, !47, i64 224, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !48, i64 264, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !49, i64 312}
!46 = !{!"float", !36, i64 0}
!47 = !{!"rctf", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!48 = !{!"ListBase", !35, i64 0, !35, i64 8}
!49 = !{!"FontBufInfoBLF", !35, i64 0, !35, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !35, i64 32, !36, i64 40}
!50 = distinct !{!50, !41, !42}
!51 = distinct !{!51, !41, !42}
!52 = distinct !{!52, !41, !42}
!53 = !{!45, !39, i64 256}
!54 = !{!46, !46, i64 0}
!55 = !{!45, !39, i64 44}
!56 = !{!45, !35, i64 280}
!57 = !{!45, !46, i64 40}
!58 = !{!45, !39, i64 48}
!59 = !{!45, !39, i64 252}
!60 = !{!61, !39, i64 6216}
!61 = !{!"GlyphCacheBLF", !35, i64 0, !35, i64 8, !39, i64 16, !39, i64 20, !36, i64 24, !36, i64 4136, !35, i64 6184, !39, i64 6192, !39, i64 6196, !39, i64 6200, !39, i64 6204, !39, i64 6208, !39, i64 6212, !39, i64 6216, !39, i64 6220, !39, i64 6224, !39, i64 6228, !39, i64 6232, !46, i64 6236, !46, i64 6240}
!62 = !{!61, !39, i64 6212}
!63 = !{!61, !46, i64 6240}
!64 = !{!61, !46, i64 6236}
!65 = !{!45, !46, i64 224}
!66 = !{!45, !46, i64 232}
!67 = !{!45, !46, i64 228}
!68 = !{!45, !46, i64 236}
!69 = !{!45, !39, i64 52}
!70 = !{!45, !39, i64 56}
!71 = !{!45, !35, i64 312}
!72 = !{!45, !35, i64 320}
!73 = !{!45, !39, i64 328}
!74 = !{!45, !39, i64 332}
!75 = !{!45, !39, i64 336}
!76 = !{!45, !35, i64 344}

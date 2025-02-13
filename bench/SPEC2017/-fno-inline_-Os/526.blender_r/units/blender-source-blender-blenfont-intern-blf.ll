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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLF_init(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) @global_font, i8 0, i64 128, i1 false), !tbaa !34
  store i32 %0, ptr @global_font_points, align 4, !tbaa !38
  store i32 %1, ptr @global_font_dpi, align 4, !tbaa !38
  %3 = tail call i32 @blf_font_init() #17
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @blf_font_init() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @BLF_default_dpi(i32 noundef %0) local_unnamed_addr #3 {
  store i32 %0, ptr @global_font_dpi, align 4, !tbaa !38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLF_exit() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %7
  %2 = phi i64 [ 0, %0 ], [ %8, %7 ]
  %3 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @blf_font_free(ptr noundef nonnull %4) #17
  store ptr null, ptr %3, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %1, %6
  %8 = add nuw nsw i64 %2, 1
  %9 = icmp eq i64 %8, 16
  br i1 %9, label %10, label %1, !llvm.loop !40

10:                                               ; preds = %7
  tail call void @blf_font_exit() #17
  ret void
}

; Function Attrs: optsize
declare void @blf_font_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @blf_font_exit() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLF_cache_clear() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %7
  %2 = phi i64 [ 0, %0 ], [ %8, %7 ]
  %3 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @blf_glyph_cache_clear(ptr noundef nonnull %4) #17
  br label %7

7:                                                ; preds = %1, %6
  %8 = add nuw nsw i64 %2, 1
  %9 = icmp eq i64 %8, 16
  br i1 %9, label %10, label %1, !llvm.loop !42

10:                                               ; preds = %7
  ret void
}

; Function Attrs: optsize
declare void @blf_glyph_cache_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @BLF_default_set(i32 noundef %0) local_unnamed_addr #4 {
  %2 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %3 = icmp ne ptr %2, null
  %4 = icmp eq i32 %0, -1
  %5 = or i1 %4, %3
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 %0, ptr @global_font_default, align 4, !tbaa !38
  br label %7

7:                                                ; preds = %1, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc ptr @blf_get(i32 noundef %0) unnamed_addr #5 !PGOFuncName !43 {
  %2 = icmp ult i32 %0, 16
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLF_load(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @blf_search(ptr noundef nonnull %0) #18
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %25, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @blf_search_available() #18
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  br label %25

11:                                               ; preds = %6
  %12 = tail call ptr @blf_dir_search(ptr noundef nonnull %0) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %0) #18
  br label %25

16:                                               ; preds = %11
  %17 = tail call ptr @blf_font_new(ptr noundef nonnull %0, ptr noundef nonnull %12) #17
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %18(ptr noundef nonnull %12) #17
  %19 = icmp eq ptr %17, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %0) #18
  br label %25

22:                                               ; preds = %16
  %23 = sext i32 %7 to i64
  %24 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %23
  store ptr %17, ptr %24, align 8, !tbaa !34
  br label %25

25:                                               ; preds = %3, %1, %22, %20, %14, %9
  %26 = phi i32 [ -1, %9 ], [ %7, %22 ], [ -1, %20 ], [ -1, %14 ], [ -1, %1 ], [ %4, %3 ]
  ret i32 %26
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @blf_search(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !44 {
  br label %2

2:                                                ; preds = %1, %11
  %3 = phi i64 [ 0, %1 ], [ %12, %11 ]
  %4 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !45
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %0) #19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2, %7
  %12 = add nuw nsw i64 %3, 1
  %13 = icmp eq i64 %12, 16
  br i1 %13, label %16, label %2, !llvm.loop !51

14:                                               ; preds = %7
  %15 = trunc i64 %3 to i32
  br label %16

16:                                               ; preds = %11, %14
  %17 = phi i32 [ %15, %14 ], [ -1, %11 ]
  ret i32 %17
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @blf_search_available() unnamed_addr #7 !PGOFuncName !52 {
  br label %1

1:                                                ; preds = %0, %6
  %2 = phi i64 [ 0, %0 ], [ %7, %6 ]
  %3 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add nuw nsw i64 %2, 1
  %8 = icmp eq i64 %7, 16
  br i1 %8, label %11, label %1, !llvm.loop !53

9:                                                ; preds = %1
  %10 = trunc i64 %2 to i32
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i32 [ %10, %9 ], [ -1, %6 ]
  ret i32 %12
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @blf_dir_search(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @blf_font_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLF_load_unique(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @blf_search_available() #18
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  br label %22

8:                                                ; preds = %3
  %9 = tail call ptr @blf_dir_search(ptr noundef nonnull %0) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %0) #18
  br label %22

13:                                               ; preds = %8
  %14 = tail call ptr @blf_font_new(ptr noundef nonnull %0, ptr noundef nonnull %9) #17
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %15(ptr noundef nonnull %9) #17
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %0) #18
  br label %22

19:                                               ; preds = %13
  %20 = sext i32 %4 to i64
  %21 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %20
  store ptr %14, ptr %21, align 8, !tbaa !34
  br label %22

22:                                               ; preds = %1, %19, %17, %11, %6
  %23 = phi i32 [ -1, %6 ], [ %4, %19 ], [ -1, %17 ], [ -1, %11 ], [ -1, %1 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLF_metrics_attach(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @blf_font_attach_from_mem(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %2) #17
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: optsize
declare void @blf_font_attach_from_mem(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLF_load_mem(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %3
  %6 = tail call fastcc i32 @blf_search(ptr noundef nonnull %0) #18
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %27, label %8

8:                                                ; preds = %5
  %9 = tail call fastcc i32 @blf_search_available() #18
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  br label %27

13:                                               ; preds = %8
  %14 = icmp ne ptr %1, null
  %15 = icmp ne i32 %2, 0
  %16 = and i1 %14, %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %0) #18
  br label %27

19:                                               ; preds = %13
  %20 = tail call ptr @blf_font_new_from_mem(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2) #17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %0) #18
  br label %27

24:                                               ; preds = %19
  %25 = sext i32 %9 to i64
  %26 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %25
  store ptr %20, ptr %26, align 8, !tbaa !34
  br label %27

27:                                               ; preds = %5, %3, %24, %22, %17, %11
  %28 = phi i32 [ -1, %11 ], [ %9, %24 ], [ -1, %22 ], [ -1, %17 ], [ -1, %3 ], [ %6, %5 ]
  ret i32 %28
}

; Function Attrs: optsize
declare ptr @blf_font_new_from_mem(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLF_load_mem_unique(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %3
  %6 = tail call fastcc i32 @blf_search_available() #18
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  br label %24

10:                                               ; preds = %5
  %11 = icmp ne ptr %1, null
  %12 = icmp ne i32 %2, 0
  %13 = and i1 %11, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %0) #18
  br label %24

16:                                               ; preds = %10
  %17 = tail call ptr @blf_font_new_from_mem(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2) #17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %0) #18
  br label %24

21:                                               ; preds = %16
  %22 = sext i32 %6 to i64
  %23 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %22
  store ptr %17, ptr %23, align 8, !tbaa !34
  br label %24

24:                                               ; preds = %3, %21, %19, %14, %8
  %25 = phi i32 [ -1, %8 ], [ %6, %21 ], [ -1, %19 ], [ -1, %14 ], [ -1, %3 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLF_unload(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %12
  %3 = phi i64 [ 0, %1 ], [ %13, %12 ]
  %4 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !45
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %0) #19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @blf_font_free(ptr noundef nonnull %5) #17
  store ptr null, ptr %4, align 8, !tbaa !34
  br label %12

12:                                               ; preds = %2, %7, %11
  %13 = add nuw nsw i64 %3, 1
  %14 = icmp eq i64 %13, 16
  br i1 %14, label %15, label %2, !llvm.loop !54

15:                                               ; preds = %12
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLF_unload_id(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  tail call void @blf_font_free(ptr noundef nonnull %2) #17
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [16 x ptr], ptr @global_font, i64 0, i64 %5
  store ptr null, ptr %6, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLF_enable(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.FontBLF, ptr %3, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !55
  %8 = or i32 %7, %1
  store i32 %8, ptr %6, align 8, !tbaa !55
  br label %9

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLF_disable(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = xor i32 %1, -1
  %7 = getelementptr inbounds %struct.FontBLF, ptr %3, i64 0, i32 17
  %8 = load i32, ptr %7, align 8, !tbaa !55
  %9 = and i32 %8, %6
  store i32 %9, ptr %7, align 8, !tbaa !55
  br label %10

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLF_enable_default(i32 noundef %0) local_unnamed_addr #10 {
  %2 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %3 = tail call fastcc ptr @blf_get(i32 noundef %2) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.FontBLF, ptr %3, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !55
  %8 = or i32 %7, %0
  store i32 %8, ptr %6, align 8, !tbaa !55
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLF_disable_default(i32 noundef %0) local_unnamed_addr #10 {
  %2 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %3 = tail call fastcc ptr @blf_get(i32 noundef %2) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = xor i32 %0, -1
  %7 = getelementptr inbounds %struct.FontBLF, ptr %3, i64 0, i32 17
  %8 = load i32, ptr %7, align 8, !tbaa !55
  %9 = and i32 %8, %6
  store i32 %9, ptr %7, align 8, !tbaa !55
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLF_aspect(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #10 {
  %5 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 2
  store float %1, ptr %8, align 8, !tbaa !56
  %9 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 2, i64 1
  store float %2, ptr %9, align 4, !tbaa !56
  %10 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 2, i64 2
  store float %3, ptr %10, align 8, !tbaa !56
  br label %11

11:                                               ; preds = %7, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLF_matrix(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  %3 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.FontBLF, ptr %3, i64 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false)
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLF_position(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #10 {
  %5 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %65, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 17
  %9 = load i32, ptr %8, align 8, !tbaa !55
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 2
  %14 = load float, ptr %13, align 8, !tbaa !56
  %15 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !56
  %17 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 2, i64 2
  %18 = load float, ptr %17, align 8, !tbaa !56
  br label %19

19:                                               ; preds = %7, %12
  %20 = phi float [ %14, %12 ], [ 1.000000e+00, %7 ]
  %21 = phi float [ %16, %12 ], [ 1.000000e+00, %7 ]
  %22 = phi float [ %18, %12 ], [ 1.000000e+00, %7 ]
  %23 = tail call float @llvm.floor.f32(float %1)
  %24 = fsub float %1, %23
  %25 = fcmp ogt float %24, 0x3FD99999A0000000
  %26 = fcmp olt float %24, 0x3FE3333340000000
  %27 = and i1 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = fcmp olt float %24, 5.000000e-01
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = tail call float @llvm.fmuladd.f32(float %20, float 0xBFB99999A0000000, float %1)
  br label %34

32:                                               ; preds = %28
  %33 = tail call float @llvm.fmuladd.f32(float %20, float 0x3FB99999A0000000, float %1)
  br label %34

34:                                               ; preds = %30, %32, %19
  %35 = phi float [ %31, %30 ], [ %33, %32 ], [ %1, %19 ]
  %36 = tail call float @llvm.floor.f32(float %2)
  %37 = fsub float %2, %36
  %38 = fcmp ogt float %37, 0x3FD99999A0000000
  %39 = fcmp olt float %37, 0x3FE3333340000000
  %40 = and i1 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = fcmp olt float %37, 5.000000e-01
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = tail call float @llvm.fmuladd.f32(float %21, float 0xBFB99999A0000000, float %2)
  br label %47

45:                                               ; preds = %41
  %46 = tail call float @llvm.fmuladd.f32(float %21, float 0x3FB99999A0000000, float %2)
  br label %47

47:                                               ; preds = %43, %45, %34
  %48 = phi float [ %44, %43 ], [ %46, %45 ], [ %2, %34 ]
  %49 = tail call float @llvm.floor.f32(float %3)
  %50 = fsub float %3, %49
  %51 = fcmp ogt float %50, 0x3FD99999A0000000
  %52 = fcmp olt float %50, 0x3FE3333340000000
  %53 = and i1 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = fcmp olt float %50, 5.000000e-01
  br i1 %55, label %56, label %58

56:                                               ; preds = %54
  %57 = tail call float @llvm.fmuladd.f32(float %22, float 0xBFB99999A0000000, float %3)
  br label %60

58:                                               ; preds = %54
  %59 = tail call float @llvm.fmuladd.f32(float %22, float 0x3FB99999A0000000, float %3)
  br label %60

60:                                               ; preds = %56, %58, %47
  %61 = phi float [ %57, %56 ], [ %59, %58 ], [ %3, %47 ]
  %62 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 3
  store float %35, ptr %62, align 4, !tbaa !56
  %63 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 3, i64 1
  store float %48, ptr %63, align 4, !tbaa !56
  %64 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 3, i64 2
  store float %61, ptr %64, align 4, !tbaa !56
  br label %65

65:                                               ; preds = %60, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLF_size(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @blf_font_size(ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2) #17
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: optsize
declare void @blf_font_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLF_blur(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.FontBLF, ptr %3, i64 0, i32 5
  store i32 %1, ptr %6, align 4, !tbaa !57
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLF_draw_default(float noundef %0, float noundef %1, float noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i32 @blf_global_font_init() #18, !range !58
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %10 = load i32, ptr @global_font_points, align 4, !tbaa !38
  %11 = load i32, ptr @global_font_dpi, align 4, !tbaa !38
  tail call void @BLF_size(i32 noundef %9, i32 noundef %10, i32 noundef %11) #18
  %12 = load i32, ptr @global_font_default, align 4, !tbaa !38
  tail call void @BLF_position(i32 noundef %12, float noundef %0, float noundef %1, float noundef %2) #18
  tail call void @BLF_draw(i32 noundef %12, ptr noundef %3, i64 noundef %4) #18
  br label %13

13:                                               ; preds = %5, %8
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @blf_global_font_init() unnamed_addr #13 !PGOFuncName !59 {
  %1 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = tail call fastcc i32 @blf_search(ptr noundef nonnull @.str.4) #18
  store i32 %4, ptr @global_font_default, align 4, !tbaa !38
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  br label %8

8:                                                ; preds = %0, %3, %6
  %9 = phi i32 [ 0, %6 ], [ 1, %3 ], [ 1, %0 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLF_draw(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.FontBLF, ptr %6, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  call fastcc void @blf_draw__start(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  call void @blf_font_draw(ptr noundef nonnull %6, ptr noundef %1, i64 noundef %2) #17
  %13 = load i32, ptr %4, align 4, !tbaa !38
  %14 = load i32, ptr %5, align 4, !tbaa !38
  call fastcc void @blf_draw__end(i32 noundef %13, i32 noundef %14) #18
  br label %15

15:                                               ; preds = %12, %8, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLF_draw_default_ascii(float noundef %0, float noundef %1, float noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i32 @blf_global_font_init() #18, !range !58
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %10 = load i32, ptr @global_font_points, align 4, !tbaa !38
  %11 = load i32, ptr @global_font_dpi, align 4, !tbaa !38
  tail call void @BLF_size(i32 noundef %9, i32 noundef %10, i32 noundef %11) #18
  %12 = load i32, ptr @global_font_default, align 4, !tbaa !38
  tail call void @BLF_position(i32 noundef %12, float noundef %0, float noundef %1, float noundef %2) #18
  tail call void @BLF_draw_ascii(i32 noundef %12, ptr noundef %3, i64 noundef %4) #18
  br label %13

13:                                               ; preds = %5, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLF_draw_ascii(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.FontBLF, ptr %6, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  call fastcc void @blf_draw__start(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  call void @blf_font_draw_ascii(ptr noundef nonnull %6, ptr noundef %1, i64 noundef %2) #17
  %13 = load i32, ptr %4, align 4, !tbaa !38
  %14 = load i32, ptr %5, align 4, !tbaa !38
  call fastcc void @blf_draw__end(i32 noundef %13, i32 noundef %14) #18
  br label %15

15:                                               ; preds = %12, %8, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLF_rotation_default(float noundef %0) local_unnamed_addr #10 {
  %2 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %3 = tail call fastcc ptr @blf_get(i32 noundef %2) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.FontBLF, ptr %3, i64 0, i32 4
  store float %0, ptr %6, align 8, !tbaa !61
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @blf_draw__start(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !62 {
  tail call void @glEnable(i32 noundef 3042) #17
  tail call void @glEnable(i32 noundef 3553) #17
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #17
  tail call void @glGetIntegerv(i32 noundef 2976, ptr noundef %1) #17
  tail call void @glMatrixMode(i32 noundef 5890) #17
  tail call void @glPushMatrix() #17
  tail call void @glLoadIdentity() #17
  tail call void @glMatrixMode(i32 noundef 5888) #17
  tail call void @glPushMatrix() #17
  %4 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 17
  %5 = load i32, ptr %4, align 8, !tbaa !55
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 11
  tail call void @glMultMatrixd(ptr noundef nonnull %9) #17
  br label %10

10:                                               ; preds = %8, %3
  %11 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 3
  %12 = load float, ptr %11, align 4, !tbaa !56
  %13 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 3, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !56
  %15 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 3, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !56
  tail call void @glTranslatef(float noundef %12, float noundef %14, float noundef %16) #17
  %17 = load i32, ptr %4, align 8, !tbaa !55
  %18 = and i32 %17, 32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 2
  %22 = load float, ptr %21, align 8, !tbaa !56
  %23 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 2, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !56
  %25 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 2, i64 2
  %26 = load float, ptr %25, align 8, !tbaa !56
  tail call void @glScalef(float noundef %22, float noundef %24, float noundef %26) #17
  %27 = load i32, ptr %4, align 8, !tbaa !55
  br label %28

28:                                               ; preds = %20, %10
  %29 = phi i32 [ %27, %20 ], [ %17, %10 ]
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 4
  %34 = load float, ptr %33, align 8, !tbaa !61
  %35 = fmul float %34, 0x404CA5DC20000000
  tail call void @glRotatef(float noundef %35, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #17
  br label %36

36:                                               ; preds = %32, %28
  %37 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !63
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 5
  %42 = load i32, ptr %41, align 4, !tbaa !57
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40, %36
  %45 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 10
  tail call void @glGetFloatv(i32 noundef 2816, ptr noundef nonnull %45) #17
  br label %46

46:                                               ; preds = %44, %40
  %47 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 16
  store i32 -1, ptr %47, align 4, !tbaa !64
  tail call void @glGetTexEnviv(i32 noundef 8960, i32 noundef 8704, ptr noundef %2) #17
  %48 = load i32, ptr %2, align 4, !tbaa !38
  %49 = icmp eq i32 %48, 8448
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448) #17
  br label %51

51:                                               ; preds = %50, %46
  ret void
}

; Function Attrs: optsize
declare void @blf_font_draw(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @blf_draw__end(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !65 {
  %3 = icmp eq i32 %1, 8448
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef %1) #17
  br label %5

5:                                                ; preds = %4, %2
  tail call void @glMatrixMode(i32 noundef 5890) #17
  tail call void @glPopMatrix() #17
  tail call void @glMatrixMode(i32 noundef 5888) #17
  tail call void @glPopMatrix() #17
  %6 = icmp eq i32 %0, 5888
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  tail call void @glMatrixMode(i32 noundef %0) #17
  br label %8

8:                                                ; preds = %7, %5
  tail call void @glDisable(i32 noundef 3042) #17
  tail call void @glDisable(i32 noundef 3553) #17
  ret void
}

; Function Attrs: optsize
declare void @blf_font_draw_ascii(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLF_draw_mono(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.FontBLF, ptr %7, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  call fastcc void @blf_draw__start(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %14 = call i32 @blf_font_draw_mono(ptr noundef nonnull %7, ptr noundef %1, i64 noundef %2, i32 noundef %3) #17
  %15 = load i32, ptr %5, align 4, !tbaa !38
  %16 = load i32, ptr %6, align 4, !tbaa !38
  call fastcc void @blf_draw__end(i32 noundef %15, i32 noundef %16) #18
  br label %17

17:                                               ; preds = %13, %9, %4
  %18 = phi i32 [ %14, %13 ], [ 0, %9 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret i32 %18
}

; Function Attrs: optsize
declare i32 @blf_font_draw_mono(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @BLF_width_to_strlen(i32 noundef %0, ptr noundef %1, i64 noundef %2, float noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.FontBLF, ptr %6, i64 0, i32 17
  %10 = load i32, ptr %9, align 8, !tbaa !55
  %11 = and i32 %10, 32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.FontBLF, ptr %6, i64 0, i32 2
  %15 = load float, ptr %14, align 8, !tbaa !56
  br label %16

16:                                               ; preds = %8, %13
  %17 = phi float [ %15, %13 ], [ 1.000000e+00, %8 ]
  %18 = fdiv float %3, %17
  %19 = tail call i64 @blf_font_width_to_strlen(ptr noundef nonnull %6, ptr noundef %1, i64 noundef %2, float noundef %18, ptr noundef %4) #17
  %20 = icmp eq ptr %4, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = load float, ptr %4, align 4, !tbaa !56
  %23 = fmul float %17, %22
  br label %26

24:                                               ; preds = %5
  %25 = icmp eq ptr %4, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %24, %21
  %27 = phi float [ %23, %21 ], [ 0.000000e+00, %24 ]
  %28 = phi i64 [ %19, %21 ], [ 0, %24 ]
  store float %27, ptr %4, align 4, !tbaa !56
  br label %29

29:                                               ; preds = %26, %24, %16
  %30 = phi i64 [ %19, %16 ], [ 0, %24 ], [ %28, %26 ]
  ret i64 %30
}

; Function Attrs: optsize
declare i64 @blf_font_width_to_strlen(ptr noundef, ptr noundef, i64 noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @BLF_width_to_rstrlen(i32 noundef %0, ptr noundef %1, i64 noundef %2, float noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.FontBLF, ptr %6, i64 0, i32 17
  %10 = load i32, ptr %9, align 8, !tbaa !55
  %11 = and i32 %10, 32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.FontBLF, ptr %6, i64 0, i32 2
  %15 = load float, ptr %14, align 8, !tbaa !56
  br label %16

16:                                               ; preds = %8, %13
  %17 = phi float [ %15, %13 ], [ 1.000000e+00, %8 ]
  %18 = fdiv float %3, %17
  %19 = tail call i64 @blf_font_width_to_rstrlen(ptr noundef nonnull %6, ptr noundef %1, i64 noundef %2, float noundef %18, ptr noundef %4) #17
  %20 = icmp eq ptr %4, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = load float, ptr %4, align 4, !tbaa !56
  %23 = fmul float %17, %22
  br label %26

24:                                               ; preds = %5
  %25 = icmp eq ptr %4, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %24, %21
  %27 = phi float [ %23, %21 ], [ 0.000000e+00, %24 ]
  %28 = phi i64 [ %19, %21 ], [ 0, %24 ]
  store float %27, ptr %4, align 4, !tbaa !56
  br label %29

29:                                               ; preds = %26, %24, %16
  %30 = phi i64 [ %19, %16 ], [ 0, %24 ], [ %28, %26 ]
  ret i64 %30
}

; Function Attrs: optsize
declare i64 @blf_font_width_to_rstrlen(ptr noundef, ptr noundef, i64 noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLF_boundbox(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @blf_font_boundbox(ptr noundef nonnull %5, ptr noundef %1, i64 noundef %2, ptr noundef %3) #17
  br label %8

8:                                                ; preds = %7, %4
  ret void
}

; Function Attrs: optsize
declare void @blf_font_boundbox(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLF_width_and_height(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.FontBLF, ptr %6, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @blf_font_width_and_height(ptr noundef nonnull %6, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #17
  br label %14

13:                                               ; preds = %8, %5
  store float 0.000000e+00, ptr %4, align 4, !tbaa !56
  store float 0.000000e+00, ptr %3, align 4, !tbaa !56
  br label %14

14:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: optsize
declare void @blf_font_width_and_height(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLF_width_and_height_default(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc i32 @blf_global_font_init() #18, !range !58
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  store float 0.000000e+00, ptr %3, align 4, !tbaa !56
  store float 0.000000e+00, ptr %2, align 4, !tbaa !56
  br label %13

8:                                                ; preds = %4
  %9 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %10 = load i32, ptr @global_font_points, align 4, !tbaa !38
  %11 = load i32, ptr @global_font_dpi, align 4, !tbaa !38
  tail call void @BLF_size(i32 noundef %9, i32 noundef %10, i32 noundef %11) #18
  %12 = load i32, ptr @global_font_default, align 4, !tbaa !38
  tail call void @BLF_width_and_height(i32 noundef %12, ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #18
  br label %13

13:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BLF_width(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.FontBLF, ptr %4, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call float @blf_font_width(ptr noundef nonnull %4, ptr noundef %1, i64 noundef %2) #17
  br label %12

12:                                               ; preds = %3, %6, %10
  %13 = phi float [ %11, %10 ], [ 0.000000e+00, %6 ], [ 0.000000e+00, %3 ]
  ret float %13
}

; Function Attrs: optsize
declare float @blf_font_width(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BLF_fixed_width(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.FontBLF, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call float @blf_font_fixed_width(ptr noundef nonnull %2) #17
  br label %10

10:                                               ; preds = %1, %4, %8
  %11 = phi float [ %9, %8 ], [ 0.000000e+00, %4 ], [ 0.000000e+00, %1 ]
  ret float %11
}

; Function Attrs: optsize
declare float @blf_font_fixed_width(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BLF_width_default(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @blf_global_font_init() #18, !range !58
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %7 = load i32, ptr @global_font_points, align 4, !tbaa !38
  %8 = load i32, ptr @global_font_dpi, align 4, !tbaa !38
  tail call void @BLF_size(i32 noundef %6, i32 noundef %7, i32 noundef %8) #18
  %9 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %10 = tail call float @BLF_width(i32 noundef %9, ptr noundef %0, i64 noundef %1) #18
  br label %11

11:                                               ; preds = %2, %5
  %12 = phi float [ %10, %5 ], [ 0.000000e+00, %2 ]
  ret float %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BLF_height(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.FontBLF, ptr %4, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call float @blf_font_height(ptr noundef nonnull %4, ptr noundef %1, i64 noundef %2) #17
  br label %12

12:                                               ; preds = %3, %6, %10
  %13 = phi float [ %11, %10 ], [ 0.000000e+00, %6 ], [ 0.000000e+00, %3 ]
  ret float %13
}

; Function Attrs: optsize
declare float @blf_font_height(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BLF_height_max(i32 noundef %0) local_unnamed_addr #14 {
  %2 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.FontBLF, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %6, i64 0, i32 13
  %10 = load i32, ptr %9, align 8, !tbaa !66
  %11 = sitofp i32 %10 to float
  br label %12

12:                                               ; preds = %1, %4, %8
  %13 = phi float [ %11, %8 ], [ 0.000000e+00, %4 ], [ 0.000000e+00, %1 ]
  ret float %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BLF_width_max(i32 noundef %0) local_unnamed_addr #14 {
  %2 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.FontBLF, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %6, i64 0, i32 12
  %10 = load i32, ptr %9, align 4, !tbaa !68
  %11 = sitofp i32 %10 to float
  br label %12

12:                                               ; preds = %1, %4, %8
  %13 = phi float [ %11, %8 ], [ 0.000000e+00, %4 ], [ 0.000000e+00, %1 ]
  ret float %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BLF_descender(i32 noundef %0) local_unnamed_addr #14 {
  %2 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.FontBLF, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %6, i64 0, i32 19
  %10 = load float, ptr %9, align 8, !tbaa !69
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi float [ %10, %8 ], [ 0.000000e+00, %4 ], [ 0.000000e+00, %1 ]
  ret float %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BLF_ascender(i32 noundef %0) local_unnamed_addr #14 {
  %2 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.FontBLF, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %6, i64 0, i32 18
  %10 = load float, ptr %9, align 4, !tbaa !70
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi float [ %10, %8 ], [ 0.000000e+00, %4 ], [ 0.000000e+00, %1 ]
  ret float %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BLF_height_default(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @blf_global_font_init() #18, !range !58
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %7 = load i32, ptr @global_font_points, align 4, !tbaa !38
  %8 = load i32, ptr @global_font_dpi, align 4, !tbaa !38
  tail call void @BLF_size(i32 noundef %6, i32 noundef %7, i32 noundef %8) #18
  %9 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %10 = tail call float @BLF_height(i32 noundef %9, ptr noundef %0, i64 noundef %1) #18
  br label %11

11:                                               ; preds = %2, %5
  %12 = phi float [ %10, %5 ], [ 0.000000e+00, %2 ]
  ret float %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLF_rotation(i32 noundef %0, float noundef %1) local_unnamed_addr #10 {
  %3 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.FontBLF, ptr %3, i64 0, i32 4
  store float %1, ptr %6, align 8, !tbaa !61
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLF_clipping(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #10 {
  %6 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.FontBLF, ptr %6, i64 0, i32 12
  store float %1, ptr %9, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.FontBLF, ptr %6, i64 0, i32 12, i32 2
  store float %2, ptr %10, align 8, !tbaa !72
  %11 = getelementptr inbounds %struct.FontBLF, ptr %6, i64 0, i32 12, i32 1
  store float %3, ptr %11, align 4, !tbaa !73
  %12 = getelementptr inbounds %struct.FontBLF, ptr %6, i64 0, i32 12, i32 3
  store float %4, ptr %12, align 4, !tbaa !74
  br label %13

13:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLF_clipping_default(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #10 {
  %5 = load i32, ptr @global_font_default, align 4, !tbaa !38
  %6 = tail call fastcc ptr @blf_get(i32 noundef %5) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.FontBLF, ptr %6, i64 0, i32 12
  store float %0, ptr %9, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.FontBLF, ptr %6, i64 0, i32 12, i32 2
  store float %1, ptr %10, align 8, !tbaa !72
  %11 = getelementptr inbounds %struct.FontBLF, ptr %6, i64 0, i32 12, i32 1
  store float %2, ptr %11, align 4, !tbaa !73
  %12 = getelementptr inbounds %struct.FontBLF, ptr %6, i64 0, i32 12, i32 3
  store float %3, ptr %12, align 4, !tbaa !74
  br label %13

13:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLF_shadow(i32 noundef %0, i32 noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #10 {
  %7 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.FontBLF, ptr %7, i64 0, i32 6
  store i32 %1, ptr %10, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct.FontBLF, ptr %7, i64 0, i32 9
  store float %2, ptr %11, align 4, !tbaa !56
  %12 = getelementptr inbounds %struct.FontBLF, ptr %7, i64 0, i32 9, i64 1
  store float %3, ptr %12, align 4, !tbaa !56
  %13 = getelementptr inbounds %struct.FontBLF, ptr %7, i64 0, i32 9, i64 2
  store float %4, ptr %13, align 4, !tbaa !56
  %14 = getelementptr inbounds %struct.FontBLF, ptr %7, i64 0, i32 9, i64 3
  store float %5, ptr %14, align 4, !tbaa !56
  br label %15

15:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLF_shadow_offset(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 {
  %4 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.FontBLF, ptr %4, i64 0, i32 7
  store i32 %1, ptr %7, align 4, !tbaa !75
  %8 = getelementptr inbounds %struct.FontBLF, ptr %4, i64 0, i32 8
  store i32 %2, ptr %8, align 8, !tbaa !76
  br label %9

9:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLF_buffer(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #10 {
  %8 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.FontBLF, ptr %8, i64 0, i32 23
  store ptr %1, ptr %11, align 8, !tbaa !77
  %12 = getelementptr inbounds %struct.FontBLF, ptr %8, i64 0, i32 23, i32 1
  store ptr %2, ptr %12, align 8, !tbaa !78
  %13 = getelementptr inbounds %struct.FontBLF, ptr %8, i64 0, i32 23, i32 2
  store i32 %3, ptr %13, align 8, !tbaa !79
  %14 = getelementptr inbounds %struct.FontBLF, ptr %8, i64 0, i32 23, i32 3
  store i32 %4, ptr %14, align 4, !tbaa !80
  %15 = getelementptr inbounds %struct.FontBLF, ptr %8, i64 0, i32 23, i32 4
  store i32 %5, ptr %15, align 8, !tbaa !81
  %16 = getelementptr inbounds %struct.FontBLF, ptr %8, i64 0, i32 23, i32 5
  store ptr %6, ptr %16, align 8, !tbaa !82
  br label %17

17:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLF_buffer_col(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #10 {
  %6 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.FontBLF, ptr %6, i64 0, i32 23, i32 6
  store float %1, ptr %9, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct.FontBLF, ptr %6, i64 0, i32 23, i32 6, i64 1
  store float %2, ptr %10, align 4, !tbaa !56
  %11 = getelementptr inbounds %struct.FontBLF, ptr %6, i64 0, i32 23, i32 6, i64 2
  store float %3, ptr %11, align 8, !tbaa !56
  %12 = getelementptr inbounds %struct.FontBLF, ptr %6, i64 0, i32 23, i32 6, i64 3
  store float %4, ptr %12, align 4, !tbaa !56
  br label %13

13:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLF_draw_buffer(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @blf_get(i32 noundef %0) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.FontBLF, ptr %3, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.FontBLF, ptr %3, i64 0, i32 23
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.FontBLF, ptr %3, i64 0, i32 23, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !78
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %9
  tail call void @blf_font_buffer(ptr noundef nonnull %3, ptr noundef %1) #17
  br label %18

18:                                               ; preds = %17, %13, %5, %2
  ret void
}

; Function Attrs: optsize
declare void @blf_font_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glMatrixMode(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLoadIdentity() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glMultMatrixd(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glRotatef(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glGetFloatv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glGetTexEnviv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTexEnvi(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize willreturn memory(read) }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = distinct !{!42, !41}
!43 = !{!"blf.c:blf_get"}
!44 = !{!"blf.c:blf_search"}
!45 = !{!46, !35, i64 0}
!46 = !{!"FontBLF", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 28, !47, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !36, i64 60, !36, i64 76, !36, i64 96, !48, i64 224, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !49, i64 264, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !50, i64 312}
!47 = !{!"float", !36, i64 0}
!48 = !{!"rctf", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!49 = !{!"ListBase", !35, i64 0, !35, i64 8}
!50 = !{!"FontBufInfoBLF", !35, i64 0, !35, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !35, i64 32, !36, i64 40}
!51 = distinct !{!51, !41}
!52 = !{!"blf.c:blf_search_available"}
!53 = distinct !{!53, !41}
!54 = distinct !{!54, !41}
!55 = !{!46, !39, i64 256}
!56 = !{!47, !47, i64 0}
!57 = !{!46, !39, i64 44}
!58 = !{i32 0, i32 2}
!59 = !{!"blf.c:blf_global_font_init"}
!60 = !{!46, !35, i64 280}
!61 = !{!46, !47, i64 40}
!62 = !{!"blf.c:blf_draw__start"}
!63 = !{!46, !39, i64 48}
!64 = !{!46, !39, i64 252}
!65 = !{!"blf.c:blf_draw__end"}
!66 = !{!67, !39, i64 6216}
!67 = !{!"GlyphCacheBLF", !35, i64 0, !35, i64 8, !39, i64 16, !39, i64 20, !36, i64 24, !36, i64 4136, !35, i64 6184, !39, i64 6192, !39, i64 6196, !39, i64 6200, !39, i64 6204, !39, i64 6208, !39, i64 6212, !39, i64 6216, !39, i64 6220, !39, i64 6224, !39, i64 6228, !39, i64 6232, !47, i64 6236, !47, i64 6240}
!68 = !{!67, !39, i64 6212}
!69 = !{!67, !47, i64 6240}
!70 = !{!67, !47, i64 6236}
!71 = !{!46, !47, i64 224}
!72 = !{!46, !47, i64 232}
!73 = !{!46, !47, i64 228}
!74 = !{!46, !47, i64 236}
!75 = !{!46, !39, i64 52}
!76 = !{!46, !39, i64 56}
!77 = !{!46, !35, i64 312}
!78 = !{!46, !35, i64 320}
!79 = !{!46, !39, i64 328}
!80 = !{!46, !39, i64 332}
!81 = !{!46, !39, i64 336}
!82 = !{!46, !35, i64 344}

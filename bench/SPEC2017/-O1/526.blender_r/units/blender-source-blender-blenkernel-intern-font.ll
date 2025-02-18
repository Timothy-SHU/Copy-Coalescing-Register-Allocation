; ModuleID = 'blender/source/blender/blenkernel/intern/font.c'
source_filename = "blender/source/blender/blenkernel/intern/font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.VFont = type { %struct.ID, [1024 x i8], ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.VFontData = type { ptr, [128 x i8], float }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.EditFont = type { ptr, ptr, ptr, ptr, ptr, [4 x [2 x float]], i32, i32, i32, i32 }
%struct.TextBox = type { float, float, float, float }
%struct.VChar = type { %struct.ListBase, i32, float }
%struct.CharTrans = type { float, float, float, i16, i16, i8 }
%struct.TempLineInfo = type { float, float, i32, i32 }
%struct.EditFontSelBox = type { float, float, float, float, float }
%struct.CurveCache = type { %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr }
%struct.Path = type { ptr, i32, float }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"<builtin>\00", align 1
@builtin_font_data = internal unnamed_addr global ptr null, align 8
@builtin_font_size = internal unnamed_addr global i32 0, align 4
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"convertedmem\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"strinfo compat\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"TextBox compat\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"font selboxes\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"buildtext\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"lineinfo\00", align 1
@vfont_rwlock = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"vfd_builtin\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Font file doesn't exist: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"duplichar_nurb\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"duplichar_bezt2\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"underline_nurb\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"underline_bp\00", align 1
@str = private unnamed_addr constant [40 x i8] c"Internal error, builtin font not loaded\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_vfont_free_data(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.GHashIterator, align 8
  %3 = getelementptr inbounds %struct.VFont, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %40, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  %10 = load ptr, ptr %4, align 8, !tbaa !42
  call void @BLI_ghashIterator_init(ptr noundef nonnull %2, ptr noundef %10) #16
  %11 = getelementptr inbounds %struct.GHashIterator, ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %9, %30
  %15 = phi ptr [ %32, %30 ], [ %12, %9 ]
  %16 = getelementptr inbounds %struct._gh_Entry, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %14, %27
  %21 = phi ptr [ %28, %27 ], [ %18, %14 ]
  %22 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 18
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %26(ptr noundef nonnull %23) #16
  br label %27

27:                                               ; preds = %25, %20
  call void @BLI_freelinkN(ptr noundef nonnull %17, ptr noundef nonnull %21) #16
  %28 = load ptr, ptr %17, align 8, !tbaa !49
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %20, !llvm.loop !55

30:                                               ; preds = %27, %14
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %31(ptr noundef nonnull %17) #16
  call void @BLI_ghashIterator_step(ptr noundef nonnull %2) #16
  %32 = load ptr, ptr %11, align 8, !tbaa !45
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %14, !llvm.loop !58

34:                                               ; preds = %30, %9
  %35 = load ptr, ptr %3, align 8, !tbaa !34
  %36 = load ptr, ptr %35, align 8, !tbaa !42
  call void @BLI_ghash_free(ptr noundef %36, ptr noundef null, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  br label %37

37:                                               ; preds = %34, %6
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  %39 = load ptr, ptr %3, align 8, !tbaa !34
  call void %38(ptr noundef %39) #16
  store ptr null, ptr %3, align 8, !tbaa !34
  br label %40

40:                                               ; preds = %37, %1
  %41 = getelementptr inbounds %struct.VFont, ptr %0, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !59
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  call void @freePackedFile(ptr noundef nonnull %42) #16
  store ptr null, ptr %41, align 8, !tbaa !59
  br label %45

45:                                               ; preds = %44, %40
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @freePackedFile(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_vfont_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  tail call void @BKE_vfont_free_data(ptr noundef nonnull %0)
  %4 = getelementptr inbounds %struct.VFont, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @freePackedFile(ptr noundef nonnull %5) #16
  store ptr null, ptr %4, align 8, !tbaa !60
  br label %8

8:                                                ; preds = %1, %7, %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BKE_vfont_is_builtin(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.VFont, ptr %0, i64 0, i32 1
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(10) @.str) #17
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @BKE_vfont_builtin_register(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  store ptr %0, ptr @builtin_font_data, align 8, !tbaa !54
  store i32 %1, ptr @builtin_font_size, align 4, !tbaa !61
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_vfont_load(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #16
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 256) #16
  %8 = load ptr, ptr @builtin_font_data, align 8, !tbaa !54
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %25

12:                                               ; preds = %6
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !54
  %14 = load i32, ptr @builtin_font_size, align 4, !tbaa !61
  %15 = sext i32 %14 to i64
  %16 = call ptr %13(i64 noundef %15, ptr noundef nonnull @.str.8) #16
  %17 = load ptr, ptr @builtin_font_data, align 8, !tbaa !54
  %18 = load i32, ptr @builtin_font_size, align 4, !tbaa !61
  %19 = sext i32 %18 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %17, i64 %19, i1 false)
  %20 = call ptr @newPackedFileMemory(ptr noundef %16, i32 noundef %18) #16
  br label %25

21:                                               ; preds = %2
  call void @BLI_split_file_part(ptr noundef %1, ptr noundef nonnull %3, i64 noundef 256) #16
  %22 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 2
  %23 = call ptr @newPackedFile(ptr noundef null, ptr noundef %1, ptr noundef nonnull %22) #16
  %24 = call ptr @newPackedFile(ptr noundef null, ptr noundef %1, ptr noundef nonnull %22) #16
  br label %25

25:                                               ; preds = %12, %10, %21
  %26 = phi ptr [ %23, %21 ], [ %20, %12 ], [ null, %10 ]
  %27 = phi ptr [ %24, %21 ], [ null, %12 ], [ null, %10 ]
  %28 = icmp eq ptr %26, null
  br i1 %28, label %63, label %29

29:                                               ; preds = %25
  %30 = call ptr @BLI_vfontdata_from_freetypefont(ptr noundef nonnull %26) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %55, label %32

32:                                               ; preds = %29
  %33 = call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 18006, ptr noundef nonnull %3) #16
  %34 = getelementptr inbounds %struct.VFont, ptr %33, i64 0, i32 2
  store ptr %30, ptr %34, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.VFontData, ptr %30, i64 0, i32 1
  %36 = load i8, ptr %35, align 8, !tbaa !62
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ID, ptr %33, i64 0, i32 4, i64 2
  %40 = call ptr @BLI_strncpy(ptr noundef nonnull %39, ptr noundef nonnull %35, i64 noundef 64) #16
  br label %41

41:                                               ; preds = %38, %32
  %42 = getelementptr inbounds %struct.VFont, ptr %33, i64 0, i32 1
  %43 = call ptr @BLI_strncpy(ptr noundef nonnull %42, ptr noundef %1, i64 noundef 1024) #16
  br i1 %5, label %50, label %44

44:                                               ; preds = %41
  %45 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !63
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.VFont, ptr %33, i64 0, i32 3
  store ptr %26, ptr %49, align 8, !tbaa !60
  br label %50

50:                                               ; preds = %48, %44, %41
  %51 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %3, ptr noundef nonnull dereferenceable(10) @.str, i64 10)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.VFont, ptr %33, i64 0, i32 4
  store ptr %27, ptr %54, align 8, !tbaa !59
  br label %55

55:                                               ; preds = %50, %53, %29
  %56 = phi ptr [ %33, %53 ], [ %33, %50 ], [ null, %29 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.VFont, ptr %56, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !60
  %61 = icmp eq ptr %60, %26
  br i1 %61, label %63, label %62

62:                                               ; preds = %58, %55
  call void @freePackedFile(ptr noundef nonnull %26) #16
  br label %63

63:                                               ; preds = %58, %62, %25
  %64 = phi ptr [ null, %25 ], [ %56, %62 ], [ %56, %58 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #16
  ret ptr %64
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLI_split_file_part(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @newPackedFile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_vfontdata_from_freetypefont(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_vfont_builtin_get() local_unnamed_addr #0 {
  %1 = load ptr, ptr @G, align 8, !tbaa !65
  %2 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 28
  br label %3

3:                                                ; preds = %7, %0
  %4 = phi ptr [ %2, %0 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.VFont, ptr %5, i64 0, i32 1
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(10) @.str) #17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %3, !llvm.loop !66

11:                                               ; preds = %3
  %12 = tail call ptr @BKE_vfont_load(ptr noundef %1, ptr noundef nonnull @.str)
  br label %13

13:                                               ; preds = %7, %11
  %14 = phi ptr [ %12, %11 ], [ %5, %7 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_vfont_select_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 53
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !74
  %10 = icmp ne i16 %9, 4
  %11 = icmp eq ptr %7, null
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %30, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 8
  %15 = load i32, ptr %14, align 8, !tbaa !75
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 9
  %19 = load i32, ptr %18, align 4, !tbaa !77
  %20 = icmp sgt i32 %15, %19
  %21 = add nsw i32 %15, -1
  %22 = add nsw i32 %19, -1
  %23 = add nsw i32 %15, -2
  %24 = select i1 %20, i32 %19, i32 %21
  %25 = select i1 %20, i32 %23, i32 %22
  %26 = add nsw i32 %25, 1
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  %29 = select i1 %20, i32 -1, i32 1
  store i32 %24, ptr %1, align 4, !tbaa !61
  store i32 %25, ptr %2, align 4, !tbaa !61
  br label %30

30:                                               ; preds = %17, %13, %3, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %3 ], [ 0, %13 ], [ 0, %17 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_vfont_select_clamp(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 53
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 7
  %7 = load i32, ptr %6, align 4, !tbaa !78
  %8 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !79
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 %9, ptr %6, align 4, !tbaa !78
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !75
  %15 = add nsw i32 %9, 1
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 %15, ptr %13, align 8, !tbaa !75
  br label %18

18:                                               ; preds = %17, %12
  %19 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 9
  %20 = load i32, ptr %19, align 4, !tbaa !77
  %21 = icmp sgt i32 %20, %9
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 %9, ptr %19, align 4, !tbaa !77
  br label %23

23:                                               ; preds = %22, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_vfont_to_curve_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr noundef writeonly %7) local_unnamed_addr #0 {
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [4 x float], align 16
  %13 = alloca [4 x float], align 16
  %14 = alloca [3 x float], align 4
  %15 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !67
  %17 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 53
  %18 = load ptr, ptr %17, align 8, !tbaa !71
  %19 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 44
  %20 = load float, ptr %19, align 8, !tbaa !80
  %21 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 40
  %22 = load float, ptr %21, align 8, !tbaa !81
  %23 = fdiv float %20, %22
  %24 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 45
  %25 = load float, ptr %24, align 4, !tbaa !82
  %26 = fdiv float %25, %22
  %27 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 55
  %28 = load ptr, ptr %27, align 8, !tbaa !83
  %29 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 52
  %30 = load ptr, ptr %29, align 8, !tbaa !84
  %31 = icmp eq ptr %30, null
  %32 = icmp eq ptr %28, null
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %1401, label %34

34:                                               ; preds = %8
  %35 = tail call fastcc ptr @vfont_get_data(ptr noundef %0, ptr noundef nonnull %28)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %1401, label %37

37:                                               ; preds = %34
  %38 = icmp eq ptr %18, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.EditFont, ptr %18, i64 0, i32 6
  %41 = load i32, ptr %40, align 8, !tbaa !79
  %42 = getelementptr inbounds %struct.EditFont, ptr %18, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !85
  %44 = getelementptr inbounds %struct.EditFont, ptr %18, i64 0, i32 3
  br label %64

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 50
  %47 = load i32, ptr %46, align 8, !tbaa !86
  %48 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !54
  %49 = add nsw i32 %47, 1
  %50 = sext i32 %49 to i64
  %51 = shl nsw i64 %50, 2
  %52 = tail call ptr %48(i64 noundef %51, ptr noundef nonnull @.str.1) #16
  %53 = load ptr, ptr %29, align 8, !tbaa !84
  %54 = tail call i64 @BLI_strncpy_wchar_from_utf8(ptr noundef %52, ptr noundef %53, i64 noundef %50) #16
  %55 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 62
  %56 = load ptr, ptr %55, align 8, !tbaa !87
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %45
  %59 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %60 = add nsw i32 %47, 4
  %61 = sext i32 %60 to i64
  %62 = shl nsw i64 %61, 3
  %63 = tail call ptr %59(i64 noundef %62, ptr noundef nonnull @.str.2) #16
  store ptr %63, ptr %55, align 8, !tbaa !87
  br label %64

64:                                               ; preds = %45, %58, %39
  %65 = phi i32 [ %41, %39 ], [ %47, %58 ], [ %47, %45 ]
  %66 = phi ptr [ %43, %39 ], [ %52, %58 ], [ %52, %45 ]
  %67 = phi ptr [ %44, %39 ], [ %55, %58 ], [ %55, %45 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !54
  %69 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 59
  %70 = load ptr, ptr %69, align 8, !tbaa !88
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %74 = tail call ptr %73(i64 noundef 4096, ptr noundef nonnull @.str.3) #16
  store ptr %74, ptr %69, align 8, !tbaa !88
  br label %75

75:                                               ; preds = %72, %64
  br i1 %38, label %120, label %76

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.EditFont, ptr %18, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !89
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %81(ptr noundef nonnull %78) #16
  br label %82

82:                                               ; preds = %80, %76
  %83 = load ptr, ptr %15, align 8, !tbaa !67
  %84 = getelementptr inbounds %struct.Curve, ptr %83, i64 0, i32 53
  %85 = load ptr, ptr %84, align 8, !tbaa !71
  %86 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %87 = load i16, ptr %86, align 8, !tbaa !74
  %88 = icmp ne i16 %87, 4
  %89 = icmp eq ptr %85, null
  %90 = select i1 %88, i1 true, i1 %89
  br i1 %90, label %107, label %91

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.EditFont, ptr %85, i64 0, i32 8
  %93 = load i32, ptr %92, align 8, !tbaa !75
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.EditFont, ptr %85, i64 0, i32 9
  %97 = load i32, ptr %96, align 4, !tbaa !77
  %98 = icmp sgt i32 %93, %97
  %99 = add nsw i32 %93, -1
  %100 = add nsw i32 %97, -1
  %101 = add nsw i32 %93, -2
  %102 = select i1 %98, i32 %97, i32 %99
  %103 = select i1 %98, i32 %101, i32 %100
  %104 = add nsw i32 %103, 1
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %107, label %106

106:                                              ; preds = %95
  br label %107

107:                                              ; preds = %82, %91, %95, %106
  %108 = phi i32 [ undef, %82 ], [ undef, %91 ], [ undef, %95 ], [ %102, %106 ]
  %109 = phi i32 [ undef, %82 ], [ undef, %91 ], [ undef, %95 ], [ %103, %106 ]
  %110 = phi i1 [ true, %82 ], [ true, %91 ], [ true, %95 ], [ false, %106 ]
  br i1 %110, label %118, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %113 = sub i32 %109, %108
  %114 = add i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = mul nsw i64 %115, 20
  %117 = tail call ptr %112(i64 noundef %116, ptr noundef nonnull @.str.4) #16
  br label %118

118:                                              ; preds = %107, %111
  %119 = phi ptr [ %117, %111 ], [ null, %107 ]
  store ptr %119, ptr %77, align 8, !tbaa !89
  br label %120

120:                                              ; preds = %118, %75
  %121 = phi i32 [ undef, %75 ], [ %108, %118 ]
  %122 = phi i32 [ undef, %75 ], [ %109, %118 ]
  %123 = phi ptr [ null, %75 ], [ %119, %118 ]
  %124 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %125 = add nsw i32 %65, 1
  %126 = sext i32 %125 to i64
  %127 = mul nsw i64 %126, 20
  %128 = tail call ptr %124(i64 noundef %127, ptr noundef nonnull @.str.5) #16
  %129 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !54
  %130 = shl nsw i32 %65, 1
  %131 = or disjoint i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = shl nsw i64 %132, 4
  %134 = tail call ptr %129(i64 noundef %133, ptr noundef nonnull @.str.6) #16
  %135 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 38
  %136 = load float, ptr %135, align 8, !tbaa !90
  %137 = load ptr, ptr %69, align 8, !tbaa !88
  %138 = load float, ptr %21, align 8, !tbaa !81
  %139 = fdiv float 1.000000e+00, %138
  %140 = load float, ptr %137, align 4, !tbaa !91
  %141 = fmul float %140, %139
  %142 = getelementptr inbounds %struct.TextBox, ptr %137, i64 0, i32 1
  %143 = load float, ptr %142, align 4, !tbaa !93
  %144 = fmul float %139, %143
  %145 = getelementptr inbounds %struct.TextBox, ptr %137, i64 0, i32 2
  %146 = load float, ptr %145, align 4, !tbaa !94
  %147 = fmul float %139, %146
  %148 = getelementptr inbounds %struct.TextBox, ptr %137, i64 0, i32 3
  %149 = load float, ptr %148, align 4, !tbaa !95
  %150 = fmul float %139, %149
  %151 = fcmp une float %147, 0.000000e+00
  %152 = fadd float %23, %141
  %153 = fadd float %26, %144
  %154 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 37
  %155 = load float, ptr %154, align 4, !tbaa !96
  %156 = tail call float @llvm.fmuladd.f32(float %155, float 5.000000e-01, float -5.000000e-01)
  %157 = icmp sgt i32 %65, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %120
  %159 = zext nneg i32 %65 to i64
  br label %172

160:                                              ; preds = %172, %120
  %161 = icmp slt i32 %65, 0
  br i1 %161, label %469, label %162

162:                                              ; preds = %160
  %163 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 58
  %164 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 57
  %165 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 56
  %166 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 19
  %167 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 60
  %168 = fneg float %136
  %169 = icmp eq ptr %123, null
  %170 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 41
  %171 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 19
  br label %179

172:                                              ; preds = %158, %172
  %173 = phi i64 [ 0, %158 ], [ %177, %172 ]
  %174 = getelementptr inbounds %struct.CharInfo, ptr %68, i64 %173, i32 2
  %175 = load i8, ptr %174, align 2, !tbaa !97
  %176 = and i8 %175, -41
  store i8 %176, ptr %174, align 2, !tbaa !97
  %177 = add nuw nsw i64 %173, 1
  %178 = icmp eq i64 %177, %159
  br i1 %178, label %160, label %172, !llvm.loop !98

179:                                              ; preds = %162, %455
  %180 = phi ptr [ null, %162 ], [ %242, %455 ]
  %181 = phi ptr [ %35, %162 ], [ %241, %455 ]
  %182 = phi ptr [ %128, %162 ], [ %466, %455 ]
  %183 = phi float [ %152, %162 ], [ %465, %455 ]
  %184 = phi float [ %153, %162 ], [ %464, %455 ]
  %185 = phi i32 [ 0, %162 ], [ %463, %455 ]
  %186 = phi i32 [ 0, %162 ], [ %462, %455 ]
  %187 = phi i32 [ 0, %162 ], [ %461, %455 ]
  %188 = phi i32 [ 0, %162 ], [ %460, %455 ]
  %189 = phi i32 [ 0, %162 ], [ %467, %455 ]
  %190 = phi float [ %150, %162 ], [ %459, %455 ]
  %191 = phi float [ %147, %162 ], [ %458, %455 ]
  %192 = phi float [ %144, %162 ], [ %457, %455 ]
  %193 = phi float [ %141, %162 ], [ %456, %455 ]
  %194 = fcmp une float %191, 0.000000e+00
  %195 = fadd float %23, %191
  br label %196

196:                                              ; preds = %179, %302
  %197 = phi i32 [ %304, %302 ], [ %189, %179 ]
  %198 = phi i32 [ %309, %302 ], [ %187, %179 ]
  %199 = phi i32 [ %315, %302 ], [ %185, %179 ]
  %200 = phi float [ %316, %302 ], [ %183, %179 ]
  %201 = phi ptr [ %308, %302 ], [ %182, %179 ]
  %202 = phi ptr [ %241, %302 ], [ %181, %179 ]
  %203 = phi ptr [ %242, %302 ], [ %180, %179 ]
  %204 = sext i32 %197 to i64
  %205 = getelementptr inbounds i32, ptr %66, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !61
  %207 = getelementptr inbounds %struct.CharInfo, ptr %68, i64 %204, i32 2
  %208 = load i8, ptr %207, align 2, !tbaa !97
  %209 = and i8 %208, 16
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %218, label %211

211:                                              ; preds = %196
  %212 = tail call i32 @towupper(i32 noundef %206) #16
  %213 = load i32, ptr %205, align 4, !tbaa !61
  %214 = icmp eq i32 %213, %212
  br i1 %214, label %218, label %215

215:                                              ; preds = %211
  %216 = load i8, ptr %207, align 2, !tbaa !97
  %217 = or i8 %216, 32
  store i8 %217, ptr %207, align 2, !tbaa !97
  br label %218

218:                                              ; preds = %211, %215, %196
  %219 = phi i32 [ %212, %215 ], [ %212, %211 ], [ %206, %196 ]
  %220 = load i8, ptr %207, align 2, !tbaa !97
  %221 = and i8 %220, 3
  switch i8 %221, label %231 [
    i8 1, label %222
    i8 2, label %225
    i8 3, label %228
  ]

222:                                              ; preds = %218
  %223 = load ptr, ptr %165, align 8, !tbaa !99
  %224 = icmp eq ptr %223, null
  br i1 %224, label %231, label %233

225:                                              ; preds = %218
  %226 = load ptr, ptr %164, align 8, !tbaa !100
  %227 = icmp eq ptr %226, null
  br i1 %227, label %231, label %233

228:                                              ; preds = %218
  %229 = load ptr, ptr %163, align 8, !tbaa !101
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %233

231:                                              ; preds = %218, %228, %225, %222
  %232 = load ptr, ptr %27, align 8, !tbaa !83
  br label %233

233:                                              ; preds = %231, %222, %225, %228
  %234 = phi ptr [ %223, %222 ], [ %226, %225 ], [ %229, %228 ], [ %232, %231 ]
  %235 = icmp eq ptr %234, null
  br i1 %235, label %469, label %236

236:                                              ; preds = %233
  %237 = icmp eq ptr %234, %203
  br i1 %237, label %240, label %238

238:                                              ; preds = %236
  %239 = tail call fastcc ptr @vfont_get_data(ptr noundef %0, ptr noundef nonnull %234)
  br label %240

240:                                              ; preds = %238, %236
  %241 = phi ptr [ %239, %238 ], [ %202, %236 ]
  %242 = phi ptr [ %234, %238 ], [ %203, %236 ]
  %243 = icmp eq ptr %241, null
  br i1 %243, label %244, label %246

244:                                              ; preds = %240
  %245 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %245(ptr noundef %128) #16
  br label %1380

246:                                              ; preds = %240
  switch i32 %219, label %247 [
    i32 10, label %266
    i32 0, label %266
  ]

247:                                              ; preds = %246
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @vfont_rwlock, i32 noundef 1) #16
  %248 = load ptr, ptr %241, align 8, !tbaa !42
  %249 = zext i32 %219 to i64
  %250 = inttoptr i64 %249 to ptr
  %251 = tail call ptr @BLI_ghash_lookup(ptr noundef %248, ptr noundef %250) #16
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @vfont_rwlock) #16
  %252 = icmp eq ptr %251, null
  br i1 %252, label %253, label %266

253:                                              ; preds = %247
  %254 = getelementptr inbounds %struct.VFont, ptr %234, i64 0, i32 1
  %255 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %254, ptr noundef nonnull dereferenceable(10) @.str) #17
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %266, label %257

257:                                              ; preds = %253
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @vfont_rwlock, i32 noundef 2) #16
  %258 = load ptr, ptr %241, align 8, !tbaa !42
  %259 = tail call ptr @BLI_ghash_lookup(ptr noundef %258, ptr noundef %250) #16
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %264

261:                                              ; preds = %257
  %262 = sext i32 %219 to i64
  %263 = tail call ptr @BLI_vfontchar_from_freetypefont(ptr noundef nonnull %234, i64 noundef %262) #16
  br label %264

264:                                              ; preds = %261, %257
  %265 = phi ptr [ %263, %261 ], [ %259, %257 ]
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @vfont_rwlock) #16
  br label %266

266:                                              ; preds = %246, %246, %247, %253, %264
  %267 = phi ptr [ %265, %264 ], [ null, %253 ], [ %251, %247 ], [ null, %246 ], [ null, %246 ]
  %268 = icmp eq ptr %267, null
  br i1 %268, label %278, label %269

269:                                              ; preds = %266
  %270 = load i8, ptr %207, align 2, !tbaa !97
  %271 = and i8 %270, 32
  %272 = icmp eq i8 %271, 0
  %273 = getelementptr inbounds %struct.VChar, ptr %267, i64 0, i32 2
  %274 = load float, ptr %273, align 4, !tbaa !102
  br i1 %272, label %278, label %275

275:                                              ; preds = %269
  %276 = load float, ptr %166, align 8, !tbaa !103
  %277 = fmul float %274, %276
  br label %278

278:                                              ; preds = %269, %266, %275
  %279 = phi float [ %277, %275 ], [ 0.000000e+00, %266 ], [ %274, %269 ]
  br i1 %194, label %280, label %325

280:                                              ; preds = %278
  %281 = getelementptr inbounds %struct.CharTrans, ptr %201, i64 0, i32 5
  %282 = load i8, ptr %281, align 4, !tbaa !104
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %284, label %325

284:                                              ; preds = %280
  %285 = fsub float %200, %193
  %286 = fadd float %285, %279
  %287 = fcmp ule float %286, %195
  %288 = icmp eq i32 %197, 0
  %289 = or i1 %287, %288
  br i1 %289, label %325, label %290

290:                                              ; preds = %284
  %291 = sext i32 %197 to i64
  br label %292

292:                                              ; preds = %290, %321
  %293 = phi i64 [ %291, %290 ], [ %322, %321 ]
  %294 = getelementptr inbounds i32, ptr %66, i64 %293
  %295 = load i32, ptr %294, align 4, !tbaa !61
  %296 = icmp eq i32 %295, 10
  br i1 %296, label %325, label %297

297:                                              ; preds = %292
  %298 = getelementptr inbounds %struct.CharTrans, ptr %128, i64 %293, i32 5
  %299 = load i8, ptr %298, align 4, !tbaa !104
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %301, label %325

301:                                              ; preds = %297
  switch i32 %295, label %321 [
    i32 32, label %302
    i32 45, label %302
  ]

302:                                              ; preds = %301, %301
  %303 = trunc i64 %293 to i32
  %304 = add nsw i32 %303, -1
  %305 = sub nsw i32 %197, %304
  %306 = sext i32 %305 to i64
  %307 = sub nsw i64 0, %306
  %308 = getelementptr inbounds %struct.CharTrans, ptr %201, i64 %307
  %309 = sub nsw i32 %198, %305
  %310 = icmp eq i32 %295, 32
  %311 = sext i1 %310 to i32
  %312 = add nsw i32 %199, %311
  %313 = icmp eq i32 %295, 45
  %314 = zext i1 %313 to i32
  %315 = add nsw i32 %312, %314
  %316 = load float, ptr %308, align 4, !tbaa !106
  %317 = getelementptr inbounds %struct.CharTrans, ptr %308, i64 1, i32 5
  store i8 1, ptr %317, align 4, !tbaa !104
  %318 = getelementptr inbounds %struct.CharInfo, ptr %68, i64 %293, i32 2
  %319 = load i8, ptr %318, align 2, !tbaa !97
  %320 = or i8 %319, 8
  store i8 %320, ptr %318, align 2, !tbaa !97
  br label %196

321:                                              ; preds = %301
  %322 = add nsw i64 %293, -1
  %323 = and i64 %322, 4294967295
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %325, label %292, !llvm.loop !107

325:                                              ; preds = %284, %280, %278, %297, %321, %292
  %326 = phi i32 [ %197, %292 ], [ %197, %321 ], [ %197, %297 ], [ %189, %278 ], [ %197, %280 ], [ %197, %284 ]
  %327 = phi i32 [ %198, %292 ], [ %198, %321 ], [ %198, %297 ], [ %187, %278 ], [ %198, %280 ], [ %198, %284 ]
  %328 = phi i32 [ %199, %292 ], [ %199, %321 ], [ %199, %297 ], [ %185, %278 ], [ %199, %280 ], [ %199, %284 ]
  %329 = phi float [ %200, %292 ], [ %200, %321 ], [ %200, %297 ], [ %183, %278 ], [ %200, %280 ], [ %200, %284 ]
  %330 = phi ptr [ %201, %292 ], [ %201, %321 ], [ %201, %297 ], [ %182, %278 ], [ %201, %280 ], [ %201, %284 ]
  %331 = getelementptr inbounds %struct.CharInfo, ptr %68, i64 %204
  switch i32 %219, label %332 [
    i32 10, label %336
    i32 0, label %336
  ]

332:                                              ; preds = %325
  %333 = getelementptr inbounds %struct.CharTrans, ptr %330, i64 0, i32 5
  %334 = load i8, ptr %333, align 4, !tbaa !104
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %388, label %336

336:                                              ; preds = %325, %325, %332
  store float %329, ptr %330, align 4, !tbaa !106
  %337 = getelementptr inbounds %struct.CharTrans, ptr %330, i64 0, i32 1
  store float %184, ptr %337, align 4, !tbaa !108
  %338 = trunc i32 %186 to i16
  %339 = getelementptr inbounds %struct.CharTrans, ptr %330, i64 0, i32 3
  store i16 %338, ptr %339, align 4, !tbaa !109
  %340 = trunc i32 %327 to i16
  %341 = getelementptr inbounds %struct.CharTrans, ptr %330, i64 0, i32 4
  store i16 %340, ptr %341, align 2, !tbaa !110
  %342 = fsub float %184, %136
  %343 = fsub float %329, %156
  %344 = fsub float %343, %193
  %345 = sext i32 %186 to i64
  %346 = getelementptr inbounds %struct.TempLineInfo, ptr %134, i64 %345
  store float %344, ptr %346, align 4, !tbaa !111
  %347 = getelementptr inbounds %struct.TempLineInfo, ptr %134, i64 %345, i32 1
  store float %191, ptr %347, align 4, !tbaa !113
  %348 = getelementptr inbounds %struct.TempLineInfo, ptr %134, i64 %345, i32 2
  store i32 %327, ptr %348, align 4, !tbaa !114
  %349 = getelementptr inbounds %struct.TempLineInfo, ptr %134, i64 %345, i32 3
  store i32 %328, ptr %349, align 4, !tbaa !115
  %350 = fcmp une float %190, 0.000000e+00
  br i1 %350, label %351, label %379

351:                                              ; preds = %336
  %352 = load i32, ptr %167, align 8, !tbaa !116
  %353 = add nsw i32 %188, 1
  %354 = icmp sgt i32 %352, %353
  br i1 %354, label %355, label %379

355:                                              ; preds = %351
  %356 = fsub float %342, %192
  %357 = fneg float %356
  %358 = load float, ptr %21, align 8, !tbaa !81
  %359 = tail call float @llvm.fmuladd.f32(float %168, float %358, float %190)
  %360 = fsub float %359, %26
  %361 = fcmp olt float %360, %357
  br i1 %361, label %362, label %379

362:                                              ; preds = %355
  %363 = load ptr, ptr %69, align 8, !tbaa !88
  %364 = sext i32 %353 to i64
  %365 = getelementptr inbounds %struct.TextBox, ptr %363, i64 %364
  %366 = fdiv float 1.000000e+00, %358
  %367 = load float, ptr %365, align 4, !tbaa !91
  %368 = fmul float %366, %367
  %369 = getelementptr inbounds %struct.TextBox, ptr %363, i64 %364, i32 1
  %370 = load float, ptr %369, align 4, !tbaa !93
  %371 = fmul float %366, %370
  %372 = getelementptr inbounds %struct.TextBox, ptr %363, i64 %364, i32 2
  %373 = load float, ptr %372, align 4, !tbaa !94
  %374 = fmul float %366, %373
  %375 = getelementptr inbounds %struct.TextBox, ptr %363, i64 %364, i32 3
  %376 = load float, ptr %375, align 4, !tbaa !95
  %377 = fmul float %366, %376
  %378 = fadd float %26, %371
  br label %379

379:                                              ; preds = %362, %355, %351, %336
  %380 = phi float [ %368, %362 ], [ %193, %355 ], [ %193, %351 ], [ %193, %336 ]
  %381 = phi float [ %371, %362 ], [ %192, %355 ], [ %192, %351 ], [ %192, %336 ]
  %382 = phi float [ %374, %362 ], [ %191, %355 ], [ %191, %351 ], [ %191, %336 ]
  %383 = phi float [ %377, %362 ], [ %190, %355 ], [ %190, %351 ], [ %190, %336 ]
  %384 = phi i32 [ %353, %362 ], [ %188, %355 ], [ %188, %351 ], [ %188, %336 ]
  %385 = phi float [ %378, %362 ], [ %342, %355 ], [ %342, %351 ], [ %342, %336 ]
  %386 = fadd float %23, %380
  %387 = add nsw i32 %186, 1
  br label %455

388:                                              ; preds = %332
  %389 = icmp eq i32 %219, 9
  store float %329, ptr %330, align 4, !tbaa !106
  %390 = getelementptr inbounds %struct.CharTrans, ptr %330, i64 0, i32 1
  store float %184, ptr %390, align 4, !tbaa !108
  %391 = trunc i32 %186 to i16
  %392 = getelementptr inbounds %struct.CharTrans, ptr %330, i64 0, i32 3
  store i16 %391, ptr %392, align 4, !tbaa !109
  %393 = add nsw i32 %327, 1
  %394 = trunc i32 %327 to i16
  %395 = getelementptr inbounds %struct.CharTrans, ptr %330, i64 0, i32 4
  store i16 %394, ptr %395, align 2, !tbaa !110
  br i1 %389, label %396, label %404

396:                                              ; preds = %388
  %397 = fadd float %23, %193
  %398 = fsub float %329, %397
  %399 = fadd float %398, 0x3F847AE140000000
  %400 = fmul float %399, 5.000000e-01
  %401 = tail call float @llvm.ceil.f32(float %400)
  %402 = fmul float %401, 2.000000e+00
  %403 = fadd float %397, %402
  br label %455

404:                                              ; preds = %388
  br i1 %169, label %421, label %405

405:                                              ; preds = %404
  %406 = icmp slt i32 %326, %121
  %407 = icmp sgt i32 %326, %122
  %408 = or i1 %406, %407
  br i1 %408, label %421, label %409

409:                                              ; preds = %405
  %410 = sub nsw i32 %326, %121
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.EditFontSelBox, ptr %123, i64 %411
  %413 = load float, ptr %21, align 8, !tbaa !81
  %414 = fmul float %136, %413
  %415 = fmul float %414, 0xBFB99999A0000000
  %416 = tail call float @llvm.fmuladd.f32(float %184, float %413, float %415)
  %417 = getelementptr inbounds %struct.EditFontSelBox, ptr %123, i64 %411, i32 1
  store float %416, ptr %417, align 4, !tbaa !117
  %418 = getelementptr inbounds %struct.EditFontSelBox, ptr %123, i64 %411, i32 3
  store float %414, ptr %418, align 4, !tbaa !119
  %419 = fmul float %329, %413
  %420 = getelementptr inbounds %struct.EditFontSelBox, ptr %123, i64 %411, i32 2
  store float %419, ptr %420, align 4, !tbaa !120
  br label %421

421:                                              ; preds = %409, %405, %404
  %422 = phi ptr [ %412, %409 ], [ null, %405 ], [ null, %404 ]
  %423 = icmp eq i32 %219, 32
  br i1 %423, label %424, label %427

424:                                              ; preds = %421
  %425 = load float, ptr %170, align 4, !tbaa !121
  %426 = add nsw i32 %328, 1
  br label %427

427:                                              ; preds = %421, %424
  %428 = phi i32 [ %426, %424 ], [ %328, %421 ]
  %429 = phi float [ %425, %424 ], [ 1.000000e+00, %421 ]
  br i1 %268, label %439, label %430

430:                                              ; preds = %427
  %431 = load i8, ptr %207, align 2, !tbaa !97
  %432 = and i8 %431, 32
  %433 = icmp eq i8 %432, 0
  %434 = getelementptr inbounds %struct.VChar, ptr %267, i64 0, i32 2
  %435 = load float, ptr %434, align 4, !tbaa !102
  br i1 %433, label %439, label %436

436:                                              ; preds = %430
  %437 = load float, ptr %171, align 8, !tbaa !103
  %438 = fmul float %435, %437
  br label %439

439:                                              ; preds = %430, %427, %436
  %440 = phi float [ %438, %436 ], [ 0.000000e+00, %427 ], [ %435, %430 ]
  %441 = fmul float %429, %440
  %442 = load i16, ptr %331, align 2, !tbaa !122
  %443 = sitofp i16 %442 to float
  %444 = fdiv float %443, 4.000000e+01
  %445 = fadd float %444, 1.000000e+00
  %446 = tail call float @llvm.fmuladd.f32(float %441, float %445, float %156)
  %447 = fadd float %329, %446
  %448 = icmp eq ptr %422, null
  br i1 %448, label %455, label %449

449:                                              ; preds = %439
  %450 = load float, ptr %21, align 8, !tbaa !81
  %451 = getelementptr inbounds %struct.EditFontSelBox, ptr %422, i64 0, i32 2
  %452 = load float, ptr %451, align 4, !tbaa !120
  %453 = fneg float %452
  %454 = tail call float @llvm.fmuladd.f32(float %447, float %450, float %453)
  store float %454, ptr %451, align 4, !tbaa !120
  br label %455

455:                                              ; preds = %439, %449, %396, %379
  %456 = phi float [ %193, %396 ], [ %193, %439 ], [ %193, %449 ], [ %380, %379 ]
  %457 = phi float [ %192, %396 ], [ %192, %439 ], [ %192, %449 ], [ %381, %379 ]
  %458 = phi float [ %191, %396 ], [ %191, %439 ], [ %191, %449 ], [ %382, %379 ]
  %459 = phi float [ %190, %396 ], [ %190, %439 ], [ %190, %449 ], [ %383, %379 ]
  %460 = phi i32 [ %188, %396 ], [ %188, %439 ], [ %188, %449 ], [ %384, %379 ]
  %461 = phi i32 [ %393, %396 ], [ %393, %439 ], [ %393, %449 ], [ 0, %379 ]
  %462 = phi i32 [ %186, %396 ], [ %186, %439 ], [ %186, %449 ], [ %387, %379 ]
  %463 = phi i32 [ %328, %396 ], [ %428, %439 ], [ %428, %449 ], [ 0, %379 ]
  %464 = phi float [ %184, %396 ], [ %184, %439 ], [ %184, %449 ], [ %385, %379 ]
  %465 = phi float [ %403, %396 ], [ %447, %439 ], [ %447, %449 ], [ %386, %379 ]
  %466 = getelementptr inbounds %struct.CharTrans, ptr %330, i64 1
  %467 = add nsw i32 %326, 1
  %468 = icmp slt i32 %326, %65
  br i1 %468, label %179, label %469, !llvm.loop !123

469:                                              ; preds = %455, %233, %160
  %470 = phi i32 [ 0, %160 ], [ %186, %233 ], [ %462, %455 ]
  %471 = phi ptr [ %35, %160 ], [ %202, %233 ], [ %241, %455 ]
  %472 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 34
  store i16 1, ptr %472, align 8, !tbaa !124
  %473 = icmp slt i32 %65, 0
  br i1 %473, label %492, label %474

474:                                              ; preds = %469
  %475 = add nuw i32 %65, 1
  %476 = zext i32 %475 to i64
  br label %477

477:                                              ; preds = %474, %489
  %478 = phi i64 [ 0, %474 ], [ %490, %489 ]
  %479 = getelementptr inbounds i32, ptr %66, i64 %478
  %480 = load i32, ptr %479, align 4, !tbaa !61
  %481 = icmp eq i32 %480, 10
  br i1 %481, label %486, label %482

482:                                              ; preds = %477
  %483 = getelementptr inbounds %struct.CharTrans, ptr %128, i64 %478, i32 5
  %484 = load i8, ptr %483, align 4, !tbaa !104
  %485 = icmp eq i8 %484, 0
  br i1 %485, label %489, label %486

486:                                              ; preds = %482, %477
  %487 = load i16, ptr %472, align 8, !tbaa !124
  %488 = add i16 %487, 1
  store i16 %488, ptr %472, align 8, !tbaa !124
  br label %489

489:                                              ; preds = %482, %486
  %490 = add nuw nsw i64 %478, 1
  %491 = icmp eq i64 %490, %476
  br i1 %491, label %492, label %477, !llvm.loop !125

492:                                              ; preds = %489, %469
  %493 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 35
  %494 = load i8, ptr %493, align 2, !tbaa !126
  switch i8 %494, label %552 [
    i8 0, label %665
    i8 2, label %497
    i8 1, label %495
  ]

495:                                              ; preds = %492
  %496 = icmp sgt i32 %470, 0
  br i1 %496, label %527, label %525

497:                                              ; preds = %492
  %498 = icmp sgt i32 %470, 0
  br i1 %498, label %501, label %499

499:                                              ; preds = %501, %497
  %500 = icmp slt i32 %65, 0
  br i1 %500, label %665, label %512

501:                                              ; preds = %497, %501
  %502 = phi ptr [ %510, %501 ], [ %134, %497 ]
  %503 = phi i32 [ %509, %501 ], [ 0, %497 ]
  %504 = getelementptr inbounds %struct.TempLineInfo, ptr %502, i64 0, i32 1
  %505 = load float, ptr %504, align 4, !tbaa !113
  %506 = load float, ptr %502, align 4, !tbaa !111
  %507 = fsub float %505, %506
  %508 = fadd float %23, %507
  store float %508, ptr %502, align 4, !tbaa !111
  %509 = add nuw nsw i32 %503, 1
  %510 = getelementptr inbounds %struct.TempLineInfo, ptr %502, i64 1
  %511 = icmp eq i32 %509, %470
  br i1 %511, label %499, label %501, !llvm.loop !127

512:                                              ; preds = %499, %512
  %513 = phi ptr [ %522, %512 ], [ %128, %499 ]
  %514 = phi i32 [ %523, %512 ], [ 0, %499 ]
  %515 = getelementptr inbounds %struct.CharTrans, ptr %513, i64 0, i32 3
  %516 = load i16, ptr %515, align 4, !tbaa !109
  %517 = sext i16 %516 to i64
  %518 = getelementptr inbounds %struct.TempLineInfo, ptr %134, i64 %517
  %519 = load float, ptr %518, align 4, !tbaa !111
  %520 = load float, ptr %513, align 4, !tbaa !106
  %521 = fadd float %519, %520
  store float %521, ptr %513, align 4, !tbaa !106
  %522 = getelementptr inbounds %struct.CharTrans, ptr %513, i64 1
  %523 = add nuw i32 %514, 1
  %524 = icmp eq i32 %514, %65
  br i1 %524, label %665, label %512, !llvm.loop !128

525:                                              ; preds = %527, %495
  %526 = icmp slt i32 %65, 0
  br i1 %526, label %665, label %539

527:                                              ; preds = %495, %527
  %528 = phi ptr [ %537, %527 ], [ %134, %495 ]
  %529 = phi i32 [ %536, %527 ], [ 0, %495 ]
  %530 = getelementptr inbounds %struct.TempLineInfo, ptr %528, i64 0, i32 1
  %531 = load float, ptr %530, align 4, !tbaa !113
  %532 = load float, ptr %528, align 4, !tbaa !111
  %533 = fsub float %531, %532
  %534 = fadd float %23, %533
  %535 = fmul float %534, 5.000000e-01
  store float %535, ptr %528, align 4, !tbaa !111
  %536 = add nuw nsw i32 %529, 1
  %537 = getelementptr inbounds %struct.TempLineInfo, ptr %528, i64 1
  %538 = icmp eq i32 %536, %470
  br i1 %538, label %525, label %527, !llvm.loop !129

539:                                              ; preds = %525, %539
  %540 = phi ptr [ %549, %539 ], [ %128, %525 ]
  %541 = phi i32 [ %550, %539 ], [ 0, %525 ]
  %542 = getelementptr inbounds %struct.CharTrans, ptr %540, i64 0, i32 3
  %543 = load i16, ptr %542, align 4, !tbaa !109
  %544 = sext i16 %543 to i64
  %545 = getelementptr inbounds %struct.TempLineInfo, ptr %134, i64 %544
  %546 = load float, ptr %545, align 4, !tbaa !111
  %547 = load float, ptr %540, align 4, !tbaa !106
  %548 = fadd float %546, %547
  store float %548, ptr %540, align 4, !tbaa !106
  %549 = getelementptr inbounds %struct.CharTrans, ptr %540, i64 1
  %550 = add nuw i32 %541, 1
  %551 = icmp eq i32 %541, %65
  br i1 %551, label %665, label %539, !llvm.loop !130

552:                                              ; preds = %492
  %553 = icmp eq i8 %494, 4
  %554 = select i1 %553, i1 %151, i1 false
  br i1 %554, label %555, label %597

555:                                              ; preds = %552
  %556 = icmp sgt i32 %470, 0
  br i1 %556, label %562, label %557

557:                                              ; preds = %577, %555
  %558 = icmp slt i32 %65, 0
  br i1 %558, label %665, label %559

559:                                              ; preds = %557
  %560 = add nuw i32 %65, 1
  %561 = zext i32 %560 to i64
  br label %581

562:                                              ; preds = %555, %577
  %563 = phi ptr [ %579, %577 ], [ %134, %555 ]
  %564 = phi i32 [ %578, %577 ], [ 0, %555 ]
  %565 = getelementptr inbounds %struct.TempLineInfo, ptr %563, i64 0, i32 1
  %566 = load float, ptr %565, align 4, !tbaa !113
  %567 = load float, ptr %563, align 4, !tbaa !111
  %568 = fsub float %566, %567
  %569 = fadd float %23, %568
  store float %569, ptr %563, align 4, !tbaa !111
  %570 = getelementptr inbounds %struct.TempLineInfo, ptr %563, i64 0, i32 2
  %571 = load i32, ptr %570, align 4, !tbaa !114
  %572 = icmp sgt i32 %571, 1
  br i1 %572, label %573, label %577

573:                                              ; preds = %562
  %574 = add nsw i32 %571, -1
  %575 = sitofp i32 %574 to float
  %576 = fdiv float %569, %575
  store float %576, ptr %563, align 4, !tbaa !111
  br label %577

577:                                              ; preds = %562, %573
  %578 = add nuw nsw i32 %564, 1
  %579 = getelementptr inbounds %struct.TempLineInfo, ptr %563, i64 1
  %580 = icmp eq i32 %578, %470
  br i1 %580, label %557, label %562, !llvm.loop !131

581:                                              ; preds = %559, %581
  %582 = phi i64 [ 0, %559 ], [ %595, %581 ]
  %583 = phi ptr [ %128, %559 ], [ %594, %581 ]
  %584 = getelementptr inbounds %struct.CharTrans, ptr %583, i64 0, i32 4
  %585 = load i16, ptr %584, align 2, !tbaa !110
  %586 = sitofp i16 %585 to float
  %587 = getelementptr inbounds %struct.CharTrans, ptr %583, i64 0, i32 3
  %588 = load i16, ptr %587, align 4, !tbaa !109
  %589 = sext i16 %588 to i64
  %590 = getelementptr inbounds %struct.TempLineInfo, ptr %134, i64 %589
  %591 = load float, ptr %590, align 4, !tbaa !111
  %592 = load float, ptr %583, align 4, !tbaa !106
  %593 = tail call float @llvm.fmuladd.f32(float %586, float %591, float %592)
  store float %593, ptr %583, align 4, !tbaa !106
  %594 = getelementptr inbounds %struct.CharTrans, ptr %583, i64 1
  %595 = add nuw nsw i64 %582, 1
  %596 = icmp eq i64 %595, %561
  br i1 %596, label %665, label %581, !llvm.loop !132

597:                                              ; preds = %552
  %598 = icmp eq i8 %494, 3
  %599 = select i1 %598, i1 %151, i1 false
  %600 = icmp sgt i32 %65, -1
  %601 = select i1 %599, i1 %600, i1 false
  br i1 %601, label %602, label %665

602:                                              ; preds = %597
  %603 = sext i32 %65 to i64
  %604 = add i32 %65, 1
  %605 = zext i32 %604 to i64
  br label %606

606:                                              ; preds = %602, %660
  %607 = phi i64 [ 0, %602 ], [ %663, %660 ]
  %608 = phi float [ 0.000000e+00, %602 ], [ %661, %660 ]
  %609 = phi ptr [ %128, %602 ], [ %662, %660 ]
  br label %610

610:                                              ; preds = %614, %606
  %611 = phi i64 [ %620, %614 ], [ %607, %606 ]
  %612 = getelementptr inbounds i32, ptr %66, i64 %611
  %613 = load i32, ptr %612, align 4, !tbaa !61
  switch i32 %613, label %614 [
    i32 10, label %650
    i32 0, label %623
  ]

614:                                              ; preds = %610
  %615 = getelementptr inbounds %struct.CharTrans, ptr %128, i64 %611, i32 5
  %616 = load i8, ptr %615, align 4, !tbaa !104
  %617 = icmp eq i8 %616, 0
  %618 = icmp slt i64 %611, %603
  %619 = select i1 %617, i1 %618, i1 false
  %620 = add nuw nsw i64 %611, 1
  br i1 %619, label %610, label %621, !llvm.loop !133

621:                                              ; preds = %614
  %622 = icmp eq i32 %613, 10
  br i1 %622, label %650, label %623

623:                                              ; preds = %610, %621
  %624 = getelementptr inbounds %struct.CharTrans, ptr %128, i64 %611, i32 5
  %625 = load i8, ptr %624, align 4, !tbaa !104
  %626 = icmp eq i8 %625, 0
  br i1 %626, label %650, label %627

627:                                              ; preds = %623
  %628 = getelementptr inbounds i32, ptr %66, i64 %607
  %629 = load i32, ptr %628, align 4, !tbaa !61
  %630 = icmp eq i32 %629, 32
  br i1 %630, label %631, label %646

631:                                              ; preds = %627
  %632 = getelementptr inbounds %struct.CharTrans, ptr %609, i64 0, i32 3
  %633 = load i16, ptr %632, align 4, !tbaa !109
  %634 = sext i16 %633 to i64
  %635 = getelementptr inbounds %struct.TempLineInfo, ptr %134, i64 %634
  %636 = getelementptr inbounds %struct.TempLineInfo, ptr %134, i64 %634, i32 1
  %637 = load float, ptr %636, align 4, !tbaa !113
  %638 = load float, ptr %635, align 4, !tbaa !111
  %639 = fsub float %637, %638
  %640 = fadd float %23, %639
  %641 = getelementptr inbounds %struct.TempLineInfo, ptr %134, i64 %634, i32 3
  %642 = load i32, ptr %641, align 4, !tbaa !115
  %643 = sitofp i32 %642 to float
  %644 = fdiv float %640, %643
  %645 = fadd float %608, %644
  br label %646

646:                                              ; preds = %631, %627
  %647 = phi float [ %645, %631 ], [ %608, %627 ]
  %648 = load float, ptr %609, align 4, !tbaa !106
  %649 = fadd float %647, %648
  store float %649, ptr %609, align 4, !tbaa !106
  br label %650

650:                                              ; preds = %610, %646, %623, %621
  %651 = phi float [ %647, %646 ], [ %608, %623 ], [ %608, %621 ], [ %608, %610 ]
  %652 = getelementptr inbounds i32, ptr %66, i64 %607
  %653 = load i32, ptr %652, align 4, !tbaa !61
  %654 = icmp eq i32 %653, 10
  br i1 %654, label %659, label %655

655:                                              ; preds = %650
  %656 = getelementptr inbounds %struct.CharTrans, ptr %128, i64 %607, i32 5
  %657 = load i8, ptr %656, align 4, !tbaa !104
  %658 = icmp eq i8 %657, 0
  br i1 %658, label %660, label %659

659:                                              ; preds = %655, %650
  br label %660

660:                                              ; preds = %659, %655
  %661 = phi float [ 0.000000e+00, %659 ], [ %651, %655 ]
  %662 = getelementptr inbounds %struct.CharTrans, ptr %609, i64 1
  %663 = add nuw nsw i64 %607, 1
  %664 = icmp eq i64 %663, %605
  br i1 %664, label %665, label %606, !llvm.loop !134

665:                                              ; preds = %539, %512, %660, %581, %525, %499, %557, %492, %597
  %666 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %666(ptr noundef %134) #16
  %667 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 7
  %668 = load ptr, ptr %667, align 8, !tbaa !135
  %669 = icmp eq ptr %668, null
  br i1 %669, label %843, label %670

670:                                              ; preds = %665
  %671 = getelementptr inbounds %struct.Object, ptr %668, i64 0, i32 3
  %672 = load i16, ptr %671, align 8, !tbaa !74
  %673 = icmp eq i16 %672, 2
  br i1 %673, label %674, label %843

674:                                              ; preds = %670
  %675 = getelementptr inbounds %struct.Object, ptr %668, i64 0, i32 118
  %676 = load ptr, ptr %675, align 8, !tbaa !136
  %677 = getelementptr inbounds %struct.CurveCache, ptr %676, i64 0, i32 3
  %678 = load ptr, ptr %677, align 8, !tbaa !137
  %679 = icmp eq ptr %678, null
  br i1 %679, label %843, label %680

680:                                              ; preds = %674
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #16
  %681 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %682 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %681) #16
  call void @copy_m3_m4(ptr noundef nonnull %10, ptr noundef nonnull %9) #16
  %683 = load ptr, ptr %667, align 8, !tbaa !135
  %684 = getelementptr inbounds %struct.Object, ptr %683, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %11, ptr noundef nonnull %684) #16
  call void @mul_m3_m3m3(ptr noundef nonnull %11, ptr noundef nonnull %11, ptr noundef nonnull %10) #16
  %685 = load float, ptr %11, align 16, !tbaa !139
  %686 = getelementptr inbounds float, ptr %11, i64 1
  %687 = load float, ptr %686, align 4, !tbaa !139
  %688 = fmul float %687, %687
  %689 = call float @llvm.fmuladd.f32(float %685, float %685, float %688)
  %690 = getelementptr inbounds float, ptr %11, i64 2
  %691 = load float, ptr %690, align 8, !tbaa !139
  %692 = call float @llvm.fmuladd.f32(float %691, float %691, float %689)
  %693 = fcmp ogt float %692, 0x38AA95A5C0000000
  br i1 %693, label %694, label %703

694:                                              ; preds = %680
  %695 = call float @sqrtf(float noundef %692) #16
  %696 = fdiv float 1.000000e+00, %695
  %697 = load float, ptr %11, align 16, !tbaa !139
  %698 = fmul float %697, %696
  store float %698, ptr %11, align 16, !tbaa !139
  %699 = load float, ptr %686, align 4, !tbaa !139
  %700 = fmul float %696, %699
  store float %700, ptr %686, align 4, !tbaa !139
  %701 = load float, ptr %690, align 8, !tbaa !139
  %702 = fmul float %696, %701
  br label %704

703:                                              ; preds = %680
  store float 0.000000e+00, ptr %11, align 16, !tbaa !139
  store float 0.000000e+00, ptr %686, align 4, !tbaa !139
  br label %704

704:                                              ; preds = %694, %703
  %705 = phi float [ 0.000000e+00, %703 ], [ %702, %694 ]
  %706 = phi float [ 0.000000e+00, %703 ], [ %695, %694 ]
  store float %705, ptr %690, align 8, !tbaa !139
  %707 = load float, ptr %21, align 8, !tbaa !81
  %708 = fdiv float %706, %707
  %709 = icmp slt i32 %65, 0
  br i1 %709, label %723, label %710

710:                                              ; preds = %704, %710
  %711 = phi float [ %719, %710 ], [ 0xC415AF1D80000000, %704 ]
  %712 = phi float [ %717, %710 ], [ 0x4415AF1D80000000, %704 ]
  %713 = phi ptr [ %721, %710 ], [ %128, %704 ]
  %714 = phi i32 [ %720, %710 ], [ 0, %704 ]
  %715 = load float, ptr %713, align 4, !tbaa !106
  %716 = fcmp ogt float %712, %715
  %717 = select i1 %716, float %715, float %712
  %718 = fcmp olt float %711, %715
  %719 = select i1 %718, float %715, float %711
  %720 = add nuw i32 %714, 1
  %721 = getelementptr inbounds %struct.CharTrans, ptr %713, i64 1
  %722 = icmp eq i32 %714, %65
  br i1 %722, label %723, label %710, !llvm.loop !140

723:                                              ; preds = %710, %704
  %724 = phi float [ 0x4415AF1D80000000, %704 ], [ %717, %710 ]
  %725 = phi float [ 0xC415AF1D80000000, %704 ], [ %719, %710 ]
  %726 = load ptr, ptr %667, align 8, !tbaa !135
  %727 = getelementptr inbounds %struct.Object, ptr %726, i64 0, i32 118
  %728 = load ptr, ptr %727, align 8, !tbaa !136
  %729 = getelementptr inbounds %struct.CurveCache, ptr %728, i64 0, i32 3
  %730 = load ptr, ptr %729, align 8, !tbaa !137
  %731 = getelementptr inbounds %struct.Path, ptr %730, i64 0, i32 2
  %732 = load float, ptr %731, align 4, !tbaa !141
  %733 = fmul float %708, %732
  %734 = fsub float %725, %724
  %735 = fdiv float %733, %734
  %736 = fcmp ogt float %735, 1.000000e+00
  br i1 %736, label %737, label %746

737:                                              ; preds = %723
  %738 = fdiv float 1.000000e+00, %735
  %739 = load i8, ptr %493, align 2, !tbaa !126
  switch i8 %739, label %746 [
    i8 2, label %740
    i8 1, label %742
    i8 4, label %745
  ]

740:                                              ; preds = %737
  %741 = fsub float 1.000000e+00, %738
  br label %746

742:                                              ; preds = %737
  %743 = fsub float 1.000000e+00, %738
  %744 = fmul float %743, 5.000000e-01
  br label %746

745:                                              ; preds = %737
  br label %746

746:                                              ; preds = %723, %737, %740, %745, %742
  %747 = phi float [ %738, %740 ], [ %738, %742 ], [ 1.000000e+00, %745 ], [ %738, %737 ], [ 1.000000e+00, %723 ]
  %748 = phi float [ %741, %740 ], [ %744, %742 ], [ 0.000000e+00, %745 ], [ 0.000000e+00, %737 ], [ 0.000000e+00, %723 ]
  %749 = fdiv float %747, %734
  %750 = load float, ptr %19, align 8, !tbaa !80
  %751 = call float @llvm.fmuladd.f32(float %749, float %750, float %748)
  %752 = icmp slt i32 %65, 0
  br i1 %752, label %842, label %753

753:                                              ; preds = %746
  %754 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 19
  %755 = fmul float %749, 5.000000e-01
  %756 = getelementptr inbounds float, ptr %12, i64 1
  %757 = getelementptr inbounds float, ptr %12, i64 2
  %758 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 1
  %759 = icmp eq ptr %123, null
  %760 = sext i32 %122 to i64
  %761 = sext i32 %121 to i64
  %762 = sext i32 %121 to i64
  %763 = add nuw i32 %65, 1
  %764 = zext i32 %763 to i64
  br label %765

765:                                              ; preds = %753, %838
  %766 = phi i64 [ 0, %753 ], [ %839, %838 ]
  %767 = phi ptr [ %128, %753 ], [ %840, %838 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #16
  %768 = getelementptr inbounds i32, ptr %66, i64 %766
  %769 = load i32, ptr %768, align 4, !tbaa !61
  %770 = getelementptr inbounds %struct.CharInfo, ptr %68, i64 %766, i32 2
  %771 = load i8, ptr %770, align 2, !tbaa !97
  %772 = and i8 %771, 32
  %773 = icmp eq i8 %772, 0
  br i1 %773, label %776, label %774

774:                                              ; preds = %765
  %775 = call i32 @towupper(i32 noundef %769) #16
  br label %776

776:                                              ; preds = %774, %765
  %777 = phi i32 [ %775, %774 ], [ %769, %765 ]
  %778 = load ptr, ptr %471, align 8, !tbaa !42
  %779 = zext i32 %777 to i64
  %780 = inttoptr i64 %779 to ptr
  %781 = call ptr @BLI_ghash_lookup(ptr noundef %778, ptr noundef %780) #16
  %782 = icmp eq ptr %781, null
  br i1 %782, label %792, label %783

783:                                              ; preds = %776
  %784 = load i8, ptr %770, align 2, !tbaa !97
  %785 = and i8 %784, 32
  %786 = icmp eq i8 %785, 0
  %787 = getelementptr inbounds %struct.VChar, ptr %781, i64 0, i32 2
  %788 = load float, ptr %787, align 4, !tbaa !102
  br i1 %786, label %792, label %789

789:                                              ; preds = %783
  %790 = load float, ptr %754, align 8, !tbaa !103
  %791 = fmul float %788, %790
  br label %792

792:                                              ; preds = %783, %776, %789
  %793 = phi float [ %791, %789 ], [ 0.000000e+00, %776 ], [ %788, %783 ]
  %794 = fmul float %755, %793
  %795 = load float, ptr %767, align 4, !tbaa !106
  %796 = fsub float %795, %724
  %797 = call float @llvm.fmuladd.f32(float %749, float %796, float %751)
  %798 = fcmp olt float %797, 0.000000e+00
  br i1 %798, label %802, label %799

799:                                              ; preds = %792
  %800 = fcmp ogt float %797, 1.000000e+00
  br i1 %800, label %801, label %802

801:                                              ; preds = %799
  br label %802

802:                                              ; preds = %792, %799, %801
  %803 = phi float [ 1.000000e+00, %801 ], [ %797, %799 ], [ 0.000000e+00, %792 ]
  %804 = load ptr, ptr %667, align 8, !tbaa !135
  %805 = call i32 @where_on_path(ptr noundef %804, float noundef %803, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef null, ptr noundef null, ptr noundef null) #16
  %806 = load ptr, ptr %667, align 8, !tbaa !135
  %807 = fadd float %794, %803
  %808 = call i32 @where_on_path(ptr noundef %806, float noundef %807, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef null, ptr noundef null, ptr noundef null) #16
  %809 = load float, ptr %12, align 16, !tbaa !139
  %810 = fmul float %708, %809
  store float %810, ptr %12, align 16, !tbaa !139
  %811 = load float, ptr %756, align 4, !tbaa !139
  %812 = fmul float %708, %811
  store float %812, ptr %756, align 4, !tbaa !139
  %813 = load float, ptr %757, align 8, !tbaa !139
  %814 = fmul float %708, %813
  store float %814, ptr %757, align 8, !tbaa !139
  %815 = load float, ptr %758, align 4, !tbaa !139
  %816 = load float, ptr %14, align 4, !tbaa !139
  %817 = call float @atan2f(float noundef %815, float noundef %816) #16
  %818 = fsub float 0x400921FB60000000, %817
  %819 = getelementptr inbounds %struct.CharTrans, ptr %767, i64 0, i32 2
  store float %818, ptr %819, align 4, !tbaa !143
  %820 = call float @sinf(float noundef %818) #16
  %821 = load float, ptr %819, align 4, !tbaa !143
  %822 = call float @cosf(float noundef %821) #16
  %823 = getelementptr inbounds %struct.CharTrans, ptr %767, i64 0, i32 1
  %824 = load float, ptr %823, align 4, !tbaa !108
  %825 = load float, ptr %12, align 16, !tbaa !139
  %826 = call float @llvm.fmuladd.f32(float %820, float %824, float %825)
  store float %826, ptr %767, align 4, !tbaa !106
  %827 = load float, ptr %756, align 4, !tbaa !139
  %828 = call float @llvm.fmuladd.f32(float %822, float %824, float %827)
  store float %828, ptr %823, align 4, !tbaa !108
  br i1 %759, label %838, label %829

829:                                              ; preds = %802
  %830 = icmp slt i64 %766, %762
  %831 = icmp sgt i64 %766, %760
  %832 = or i1 %830, %831
  br i1 %832, label %838, label %833

833:                                              ; preds = %829
  %834 = sub nsw i64 %766, %761
  %835 = load float, ptr %819, align 4, !tbaa !143
  %836 = fneg float %835
  %837 = getelementptr inbounds %struct.EditFontSelBox, ptr %123, i64 %834, i32 4
  store float %836, ptr %837, align 4, !tbaa !144
  br label %838

838:                                              ; preds = %833, %829, %802
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #16
  %839 = add nuw nsw i64 %766, 1
  %840 = getelementptr inbounds %struct.CharTrans, ptr %767, i64 1
  %841 = icmp eq i64 %839, %764
  br i1 %841, label %842, label %765, !llvm.loop !145

842:                                              ; preds = %838, %746
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #16
  br label %843

843:                                              ; preds = %674, %842, %670, %665
  %844 = icmp eq ptr %123, null
  %845 = icmp slt i32 %122, 0
  %846 = or i1 %844, %845
  br i1 %846, label %870, label %847

847:                                              ; preds = %843
  %848 = sext i32 %121 to i64
  %849 = sext i32 %121 to i64
  %850 = add i32 %122, 1
  %851 = zext i32 %850 to i64
  br label %852

852:                                              ; preds = %847, %866
  %853 = phi i64 [ 0, %847 ], [ %867, %866 ]
  %854 = phi ptr [ %128, %847 ], [ %868, %866 ]
  %855 = icmp slt i64 %853, %849
  br i1 %855, label %866, label %856

856:                                              ; preds = %852
  %857 = load float, ptr %854, align 4, !tbaa !106
  %858 = load float, ptr %21, align 8, !tbaa !81
  %859 = fmul float %857, %858
  %860 = sub nsw i64 %853, %848
  %861 = getelementptr inbounds %struct.EditFontSelBox, ptr %123, i64 %860
  store float %859, ptr %861, align 4, !tbaa !146
  %862 = getelementptr inbounds %struct.CharTrans, ptr %854, i64 0, i32 1
  %863 = load float, ptr %862, align 4, !tbaa !108
  %864 = fmul float %858, %863
  %865 = getelementptr inbounds %struct.EditFontSelBox, ptr %123, i64 %860, i32 1
  store float %864, ptr %865, align 4, !tbaa !117
  br label %866

866:                                              ; preds = %852, %856
  %867 = add nuw nsw i64 %853, 1
  %868 = getelementptr inbounds %struct.CharTrans, ptr %854, i64 1
  %869 = icmp eq i64 %867, %851
  br i1 %869, label %870, label %852, !llvm.loop !147

870:                                              ; preds = %866, %843
  switch i32 %2, label %928 [
    i32 9, label %871
    i32 8, label %871
    i32 3, label %871
    i32 2, label %871
  ]

871:                                              ; preds = %870, %870, %870, %870
  %872 = getelementptr inbounds %struct.EditFont, ptr %18, i64 0, i32 7
  %873 = load i32, ptr %872, align 4, !tbaa !78
  %874 = sext i32 %873 to i64
  switch i32 %2, label %900 [
    i32 8, label %875
    i32 2, label %875
    i32 9, label %880
    i32 3, label %880
  ]

875:                                              ; preds = %871, %871
  %876 = getelementptr inbounds %struct.CharTrans, ptr %128, i64 %874, i32 3
  %877 = load i16, ptr %876, align 4, !tbaa !109
  %878 = icmp eq i16 %877, 0
  br i1 %878, label %928, label %879

879:                                              ; preds = %875
  switch i32 %2, label %900 [
    i32 9, label %880
    i32 3, label %880
    i32 2, label %886
    i32 8, label %893
  ]

880:                                              ; preds = %871, %871, %879, %879
  %881 = getelementptr inbounds %struct.CharTrans, ptr %128, i64 %874, i32 3
  %882 = load i16, ptr %881, align 4, !tbaa !109
  %883 = sext i16 %882 to i32
  %884 = icmp eq i32 %470, %883
  br i1 %884, label %928, label %885

885:                                              ; preds = %880
  switch i32 %2, label %900 [
    i32 2, label %886
    i32 3, label %891
    i32 8, label %893
    i32 9, label %898
  ]

886:                                              ; preds = %879, %885
  %887 = getelementptr inbounds %struct.CharTrans, ptr %128, i64 %874, i32 3
  %888 = load i16, ptr %887, align 4, !tbaa !109
  %889 = sext i16 %888 to i32
  %890 = add nsw i32 %889, -1
  br label %900

891:                                              ; preds = %885
  %892 = add nsw i32 %883, 1
  br label %900

893:                                              ; preds = %879, %885
  %894 = getelementptr inbounds %struct.CharTrans, ptr %128, i64 %874, i32 3
  %895 = load i16, ptr %894, align 4, !tbaa !109
  %896 = sext i16 %895 to i32
  %897 = add nsw i32 %896, -10
  br label %900

898:                                              ; preds = %885
  %899 = add nsw i32 %883, 10
  br label %900

900:                                              ; preds = %871, %879, %885, %898, %893, %891, %886
  %901 = phi i32 [ %470, %885 ], [ %899, %898 ], [ %897, %893 ], [ %892, %891 ], [ %890, %886 ], [ %470, %879 ], [ %470, %871 ]
  %902 = getelementptr inbounds %struct.CharTrans, ptr %128, i64 %874, i32 4
  %903 = load i16, ptr %902, align 2, !tbaa !110
  store i32 0, ptr %872, align 4, !tbaa !78
  %904 = icmp sgt i32 %65, 0
  br i1 %904, label %905, label %928

905:                                              ; preds = %900, %922
  %906 = phi ptr [ %925, %922 ], [ %128, %900 ]
  %907 = phi i32 [ %926, %922 ], [ 0, %900 ]
  %908 = getelementptr inbounds %struct.CharTrans, ptr %906, i64 0, i32 3
  %909 = load i16, ptr %908, align 4, !tbaa !109
  %910 = sext i16 %909 to i32
  %911 = icmp eq i32 %901, %910
  br i1 %911, label %912, label %920

912:                                              ; preds = %905
  %913 = getelementptr inbounds %struct.CharTrans, ptr %906, i64 0, i32 4
  %914 = load i16, ptr %913, align 2, !tbaa !110
  %915 = icmp eq i16 %914, %903
  br i1 %915, label %928, label %916

916:                                              ; preds = %912
  %917 = getelementptr inbounds %struct.CharTrans, ptr %906, i64 1, i32 4
  %918 = load i16, ptr %917, align 2, !tbaa !110
  %919 = icmp eq i16 %918, 0
  br i1 %919, label %928, label %922

920:                                              ; preds = %905
  %921 = icmp slt i32 %901, %910
  br i1 %921, label %928, label %922

922:                                              ; preds = %920, %916
  %923 = load i32, ptr %872, align 4, !tbaa !78
  %924 = add nsw i32 %923, 1
  store i32 %924, ptr %872, align 4, !tbaa !78
  %925 = getelementptr inbounds %struct.CharTrans, ptr %906, i64 1
  %926 = add nuw nsw i32 %907, 1
  %927 = icmp eq i32 %926, %65
  br i1 %927, label %928, label %905, !llvm.loop !148

928:                                              ; preds = %920, %912, %916, %922, %900, %870, %875, %880
  br i1 %38, label %986, label %929

929:                                              ; preds = %928
  %930 = getelementptr inbounds %struct.EditFont, ptr %18, i64 0, i32 7
  %931 = load i32, ptr %930, align 4, !tbaa !78
  %932 = sext i32 %931 to i64
  %933 = getelementptr inbounds %struct.CharTrans, ptr %128, i64 %932
  %934 = getelementptr inbounds %struct.CharTrans, ptr %128, i64 %932, i32 2
  %935 = load float, ptr %934, align 4, !tbaa !143
  %936 = call float @sinf(float noundef %935) #16
  %937 = load float, ptr %934, align 4, !tbaa !143
  %938 = call float @cosf(float noundef %937) #16
  %939 = getelementptr inbounds %struct.EditFont, ptr %18, i64 0, i32 5
  %940 = load float, ptr %21, align 8, !tbaa !81
  %941 = load float, ptr %933, align 4, !tbaa !106
  %942 = call float @llvm.fmuladd.f32(float %938, float 0xBFB99999A0000000, float %941)
  %943 = fmul float %940, %942
  store float %943, ptr %939, align 4, !tbaa !139
  %944 = load float, ptr %21, align 8, !tbaa !81
  %945 = getelementptr inbounds %struct.CharTrans, ptr %128, i64 %932, i32 1
  %946 = load float, ptr %945, align 4, !tbaa !108
  %947 = call float @llvm.fmuladd.f32(float %936, float 0x3FB99999A0000000, float %946)
  %948 = fmul float %944, %947
  %949 = getelementptr inbounds %struct.EditFont, ptr %18, i64 0, i32 5, i64 0, i64 1
  store float %948, ptr %949, align 4, !tbaa !139
  %950 = load float, ptr %21, align 8, !tbaa !81
  %951 = load float, ptr %933, align 4, !tbaa !106
  %952 = call float @llvm.fmuladd.f32(float %938, float 0x3FB99999A0000000, float %951)
  %953 = fmul float %950, %952
  %954 = getelementptr inbounds %struct.EditFont, ptr %18, i64 0, i32 5, i64 1
  store float %953, ptr %954, align 4, !tbaa !139
  %955 = load float, ptr %21, align 8, !tbaa !81
  %956 = load float, ptr %945, align 4, !tbaa !108
  %957 = call float @llvm.fmuladd.f32(float %936, float 0xBFB99999A0000000, float %956)
  %958 = fmul float %955, %957
  %959 = getelementptr inbounds %struct.EditFont, ptr %18, i64 0, i32 5, i64 1, i64 1
  store float %958, ptr %959, align 4, !tbaa !139
  %960 = load float, ptr %21, align 8, !tbaa !81
  %961 = fmul float %936, 0x3FE99999A0000000
  %962 = call float @llvm.fmuladd.f32(float %938, float 0x3FB99999A0000000, float %961)
  %963 = load float, ptr %933, align 4, !tbaa !106
  %964 = fadd float %962, %963
  %965 = fmul float %960, %964
  %966 = getelementptr inbounds %struct.EditFont, ptr %18, i64 0, i32 5, i64 2
  store float %965, ptr %966, align 4, !tbaa !139
  %967 = load float, ptr %21, align 8, !tbaa !81
  %968 = fmul float %938, 0x3FE99999A0000000
  %969 = call float @llvm.fmuladd.f32(float %936, float 0xBFB99999A0000000, float %968)
  %970 = load float, ptr %945, align 4, !tbaa !108
  %971 = fadd float %969, %970
  %972 = fmul float %967, %971
  %973 = getelementptr inbounds %struct.EditFont, ptr %18, i64 0, i32 5, i64 2, i64 1
  store float %972, ptr %973, align 4, !tbaa !139
  %974 = load float, ptr %21, align 8, !tbaa !81
  %975 = call float @llvm.fmuladd.f32(float %938, float 0xBFB99999A0000000, float %961)
  %976 = load float, ptr %933, align 4, !tbaa !106
  %977 = fadd float %975, %976
  %978 = fmul float %974, %977
  %979 = getelementptr inbounds %struct.EditFont, ptr %18, i64 0, i32 5, i64 3
  store float %978, ptr %979, align 4, !tbaa !139
  %980 = load float, ptr %21, align 8, !tbaa !81
  %981 = call float @llvm.fmuladd.f32(float %936, float 0x3FB99999A0000000, float %968)
  %982 = load float, ptr %945, align 4, !tbaa !108
  %983 = fadd float %981, %982
  %984 = fmul float %980, %983
  %985 = getelementptr inbounds %struct.EditFont, ptr %18, i64 0, i32 5, i64 3, i64 1
  store float %984, ptr %985, align 4, !tbaa !139
  br label %986

986:                                              ; preds = %929, %928
  switch i32 %2, label %1383 [
    i32 10, label %1380
    i32 0, label %987
  ]

987:                                              ; preds = %986
  call void @BKE_nurbList_free(ptr noundef %3) #16
  %988 = icmp sgt i32 %65, 0
  br i1 %988, label %989, label %1383

989:                                              ; preds = %987
  %990 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 31
  %991 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 58
  %992 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 57
  %993 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 56
  %994 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 39
  %995 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 27
  %996 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 19
  %997 = add nsw i32 %65, -1
  %998 = fadd float %156, 0x3FB99999A0000000
  %999 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 19
  %1000 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 43
  %1001 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 42
  %1002 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 27
  %1003 = sext i32 %997 to i64
  %1004 = zext nneg i32 %65 to i64
  br label %1005

1005:                                             ; preds = %989, %1376
  %1006 = phi i64 [ 0, %989 ], [ %1378, %1376 ]
  %1007 = phi ptr [ %128, %989 ], [ %1377, %1376 ]
  %1008 = getelementptr inbounds i32, ptr %66, i64 %1006
  %1009 = load i32, ptr %1008, align 4, !tbaa !61
  %1010 = getelementptr inbounds %struct.CharInfo, ptr %68, i64 %1006
  %1011 = getelementptr inbounds %struct.CharInfo, ptr %68, i64 %1006, i32 2
  %1012 = load i8, ptr %1011, align 2, !tbaa !97
  %1013 = and i8 %1012, 32
  %1014 = icmp eq i8 %1013, 0
  br i1 %1014, label %1017, label %1015

1015:                                             ; preds = %1005
  %1016 = call i32 @towupper(i32 noundef %1009) #16
  br label %1017

1017:                                             ; preds = %1015, %1005
  %1018 = phi i32 [ %1016, %1015 ], [ %1009, %1005 ]
  %1019 = getelementptr inbounds %struct.CharInfo, ptr %68, i64 %1006, i32 1
  %1020 = load i16, ptr %1019, align 2, !tbaa !149
  %1021 = sext i16 %1020 to i32
  %1022 = load i32, ptr %990, align 8, !tbaa !150
  %1023 = icmp slt i32 %1022, %1021
  br i1 %1023, label %1024, label %1025

1024:                                             ; preds = %1017
  store i16 0, ptr %1019, align 2, !tbaa !149
  br label %1025

1025:                                             ; preds = %1024, %1017
  %1026 = icmp ne i32 %1018, 10
  br i1 %1026, label %1027, label %1224

1027:                                             ; preds = %1025
  %1028 = load float, ptr %1007, align 4, !tbaa !106
  %1029 = getelementptr inbounds %struct.CharTrans, ptr %1007, i64 0, i32 1
  %1030 = load float, ptr %1029, align 4, !tbaa !108
  %1031 = getelementptr inbounds %struct.CharTrans, ptr %1007, i64 0, i32 2
  %1032 = load float, ptr %1031, align 4, !tbaa !143
  %1033 = load i8, ptr %1011, align 2, !tbaa !97
  %1034 = and i8 %1033, 3
  switch i8 %1034, label %1044 [
    i8 1, label %1035
    i8 2, label %1038
    i8 3, label %1041
  ]

1035:                                             ; preds = %1027
  %1036 = load ptr, ptr %993, align 8, !tbaa !99
  %1037 = icmp eq ptr %1036, null
  br i1 %1037, label %1044, label %1046

1038:                                             ; preds = %1027
  %1039 = load ptr, ptr %992, align 8, !tbaa !100
  %1040 = icmp eq ptr %1039, null
  br i1 %1040, label %1044, label %1046

1041:                                             ; preds = %1027
  %1042 = load ptr, ptr %991, align 8, !tbaa !101
  %1043 = icmp eq ptr %1042, null
  br i1 %1043, label %1044, label %1046

1044:                                             ; preds = %1027, %1041, %1038, %1035
  %1045 = load ptr, ptr %27, align 8, !tbaa !83
  br label %1046

1046:                                             ; preds = %1044, %1041, %1038, %1035
  %1047 = phi ptr [ %1036, %1035 ], [ %1039, %1038 ], [ %1042, %1041 ], [ %1045, %1044 ]
  %1048 = call fastcc ptr @vfont_get_data(ptr noundef %0, ptr noundef %1047)
  %1049 = icmp eq ptr %1048, null
  br i1 %1049, label %1224, label %1050

1050:                                             ; preds = %1046
  %1051 = load float, ptr %21, align 8, !tbaa !81
  %1052 = load float, ptr %994, align 4, !tbaa !151
  %1053 = call float @sinf(float noundef %1032) #16
  %1054 = call float @cosf(float noundef %1032) #16
  %1055 = load ptr, ptr %1048, align 8, !tbaa !42
  %1056 = zext i32 %1018 to i64
  %1057 = inttoptr i64 %1056 to ptr
  %1058 = call ptr @BLI_ghash_lookup(ptr noundef %1055, ptr noundef %1057) #16
  %1059 = icmp eq ptr %1058, null
  br i1 %1059, label %1062, label %1060

1060:                                             ; preds = %1050
  %1061 = load ptr, ptr %1058, align 8, !tbaa !49
  br label %1062

1062:                                             ; preds = %1060, %1050
  %1063 = phi ptr [ %1061, %1060 ], [ null, %1050 ]
  %1064 = icmp eq ptr %1063, null
  br i1 %1064, label %1224, label %1065

1065:                                             ; preds = %1062
  %1066 = fcmp une float %1052, 0.000000e+00
  %1067 = fcmp une float %1032, 0.000000e+00
  %1068 = fneg float %1053
  %1069 = trunc i64 %1006 to i32
  br label %1070

1070:                                             ; preds = %1065, %1221
  %1071 = phi ptr [ %1063, %1065 ], [ %1222, %1221 ]
  %1072 = getelementptr inbounds %struct.Nurb, ptr %1071, i64 0, i32 18
  %1073 = load ptr, ptr %1072, align 8, !tbaa !52
  %1074 = icmp eq ptr %1073, null
  br i1 %1074, label %1221, label %1075

1075:                                             ; preds = %1070
  %1076 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !54
  %1077 = call ptr %1076(i64 noundef 88, ptr noundef nonnull @.str.10) #16
  %1078 = icmp eq ptr %1077, null
  br i1 %1078, label %1224, label %1079

1079:                                             ; preds = %1075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %1077, ptr noundef nonnull align 8 dereferenceable(88) %1071, i64 88, i1 false)
  %1080 = load i16, ptr %995, align 4, !tbaa !152
  %1081 = getelementptr inbounds %struct.Nurb, ptr %1077, i64 0, i32 9
  store i16 %1080, ptr %1081, align 4, !tbaa !153
  %1082 = getelementptr inbounds %struct.Nurb, ptr %1077, i64 0, i32 15
  %1083 = getelementptr inbounds %struct.Nurb, ptr %1077, i64 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1082, i8 0, i64 24, i1 false)
  store i16 1, ptr %1083, align 2, !tbaa !154
  %1084 = getelementptr inbounds %struct.Nurb, ptr %1077, i64 0, i32 21
  store i32 %1069, ptr %1084, align 4, !tbaa !155
  %1085 = load i16, ptr %1019, align 2, !tbaa !149
  %1086 = icmp sgt i16 %1085, 0
  %1087 = add nsw i16 %1085, -1
  %1088 = select i1 %1086, i16 %1087, i16 0
  %1089 = getelementptr inbounds %struct.Nurb, ptr %1077, i64 0, i32 3
  store i16 %1088, ptr %1089, align 2, !tbaa !156
  %1090 = getelementptr inbounds %struct.Nurb, ptr %1077, i64 0, i32 6
  %1091 = load i32, ptr %1090, align 8, !tbaa !157
  %1092 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !54
  %1093 = sext i32 %1091 to i64
  %1094 = mul nsw i64 %1093, 72
  %1095 = call ptr %1092(i64 noundef %1094, ptr noundef nonnull @.str.11) #16
  %1096 = icmp eq ptr %1095, null
  br i1 %1096, label %1097, label %1099

1097:                                             ; preds = %1079
  %1098 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %1098(ptr noundef nonnull %1077) #16
  br label %1224

1099:                                             ; preds = %1079
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %1095, ptr nonnull align 4 %1073, i64 %1094, i1 false)
  %1100 = getelementptr inbounds %struct.Nurb, ptr %1077, i64 0, i32 18
  store ptr %1095, ptr %1100, align 8, !tbaa !52
  br i1 %1066, label %1101, label %1124

1101:                                             ; preds = %1099
  %1102 = load i32, ptr %1090, align 8, !tbaa !157
  %1103 = icmp sgt i32 %1102, 0
  br i1 %1103, label %1104, label %1124

1104:                                             ; preds = %1101, %1104
  %1105 = phi ptr [ %1121, %1104 ], [ %1095, %1101 ]
  %1106 = phi i32 [ %1122, %1104 ], [ %1102, %1101 ]
  %1107 = getelementptr inbounds [3 x float], ptr %1105, i64 0, i64 1
  %1108 = load float, ptr %1107, align 4, !tbaa !139
  %1109 = load float, ptr %1105, align 4, !tbaa !139
  %1110 = call float @llvm.fmuladd.f32(float %1052, float %1108, float %1109)
  store float %1110, ptr %1105, align 4, !tbaa !139
  %1111 = getelementptr inbounds [3 x [3 x float]], ptr %1105, i64 0, i64 1
  %1112 = getelementptr inbounds [3 x [3 x float]], ptr %1105, i64 0, i64 1, i64 1
  %1113 = load float, ptr %1112, align 4, !tbaa !139
  %1114 = load float, ptr %1111, align 4, !tbaa !139
  %1115 = call float @llvm.fmuladd.f32(float %1052, float %1113, float %1114)
  store float %1115, ptr %1111, align 4, !tbaa !139
  %1116 = getelementptr inbounds [3 x [3 x float]], ptr %1105, i64 0, i64 2
  %1117 = getelementptr inbounds [3 x [3 x float]], ptr %1105, i64 0, i64 2, i64 1
  %1118 = load float, ptr %1117, align 4, !tbaa !139
  %1119 = load float, ptr %1116, align 4, !tbaa !139
  %1120 = call float @llvm.fmuladd.f32(float %1052, float %1118, float %1119)
  store float %1120, ptr %1116, align 4, !tbaa !139
  %1121 = getelementptr inbounds %struct.BezTriple, ptr %1105, i64 1
  %1122 = add nsw i32 %1106, -1
  %1123 = icmp sgt i32 %1106, 1
  br i1 %1123, label %1104, label %1124, !llvm.loop !158

1124:                                             ; preds = %1104, %1101, %1099
  br i1 %1067, label %1125, label %1157

1125:                                             ; preds = %1124
  %1126 = load i32, ptr %1090, align 8, !tbaa !157
  %1127 = icmp sgt i32 %1126, 0
  br i1 %1127, label %1128, label %1157

1128:                                             ; preds = %1125, %1128
  %1129 = phi ptr [ %1154, %1128 ], [ %1095, %1125 ]
  %1130 = phi i32 [ %1155, %1128 ], [ %1126, %1125 ]
  %1131 = load float, ptr %1129, align 4, !tbaa !139
  %1132 = getelementptr inbounds float, ptr %1129, i64 1
  %1133 = load float, ptr %1132, align 4, !tbaa !139
  %1134 = fmul float %1053, %1133
  %1135 = call float @llvm.fmuladd.f32(float %1054, float %1131, float %1134)
  store float %1135, ptr %1129, align 4, !tbaa !139
  %1136 = fmul float %1054, %1133
  %1137 = call float @llvm.fmuladd.f32(float %1068, float %1131, float %1136)
  store float %1137, ptr %1132, align 4, !tbaa !139
  %1138 = getelementptr inbounds float, ptr %1129, i64 3
  %1139 = load float, ptr %1138, align 4, !tbaa !139
  %1140 = getelementptr inbounds float, ptr %1129, i64 4
  %1141 = load float, ptr %1140, align 4, !tbaa !139
  %1142 = fmul float %1053, %1141
  %1143 = call float @llvm.fmuladd.f32(float %1054, float %1139, float %1142)
  store float %1143, ptr %1138, align 4, !tbaa !139
  %1144 = fmul float %1054, %1141
  %1145 = call float @llvm.fmuladd.f32(float %1068, float %1139, float %1144)
  store float %1145, ptr %1140, align 4, !tbaa !139
  %1146 = getelementptr inbounds float, ptr %1129, i64 6
  %1147 = load float, ptr %1146, align 4, !tbaa !139
  %1148 = getelementptr inbounds float, ptr %1129, i64 7
  %1149 = load float, ptr %1148, align 4, !tbaa !139
  %1150 = fmul float %1053, %1149
  %1151 = call float @llvm.fmuladd.f32(float %1054, float %1147, float %1150)
  store float %1151, ptr %1146, align 4, !tbaa !139
  %1152 = fmul float %1054, %1149
  %1153 = call float @llvm.fmuladd.f32(float %1068, float %1147, float %1152)
  store float %1153, ptr %1148, align 4, !tbaa !139
  %1154 = getelementptr inbounds %struct.BezTriple, ptr %1129, i64 1
  %1155 = add nsw i32 %1130, -1
  %1156 = icmp sgt i32 %1130, 1
  br i1 %1156, label %1128, label %1157, !llvm.loop !159

1157:                                             ; preds = %1128, %1125, %1124
  %1158 = load i8, ptr %1011, align 2, !tbaa !97
  %1159 = and i8 %1158, 32
  %1160 = icmp eq i8 %1159, 0
  br i1 %1160, label %1188, label %1161

1161:                                             ; preds = %1157
  %1162 = load float, ptr %996, align 8, !tbaa !103
  %1163 = load i32, ptr %1090, align 8, !tbaa !157
  %1164 = icmp sgt i32 %1163, 0
  br i1 %1164, label %1165, label %1188

1165:                                             ; preds = %1161, %1165
  %1166 = phi ptr [ %1185, %1165 ], [ %1095, %1161 ]
  %1167 = phi i32 [ %1186, %1165 ], [ %1163, %1161 ]
  %1168 = load float, ptr %1166, align 4, !tbaa !139
  %1169 = fmul float %1162, %1168
  store float %1169, ptr %1166, align 4, !tbaa !139
  %1170 = getelementptr inbounds float, ptr %1166, i64 1
  %1171 = load float, ptr %1170, align 4, !tbaa !139
  %1172 = fmul float %1162, %1171
  store float %1172, ptr %1170, align 4, !tbaa !139
  %1173 = getelementptr inbounds float, ptr %1166, i64 3
  %1174 = load float, ptr %1173, align 4, !tbaa !139
  %1175 = fmul float %1162, %1174
  store float %1175, ptr %1173, align 4, !tbaa !139
  %1176 = getelementptr inbounds float, ptr %1166, i64 4
  %1177 = load float, ptr %1176, align 4, !tbaa !139
  %1178 = fmul float %1162, %1177
  store float %1178, ptr %1176, align 4, !tbaa !139
  %1179 = getelementptr inbounds float, ptr %1166, i64 6
  %1180 = load float, ptr %1179, align 4, !tbaa !139
  %1181 = fmul float %1162, %1180
  store float %1181, ptr %1179, align 4, !tbaa !139
  %1182 = getelementptr inbounds float, ptr %1166, i64 7
  %1183 = load float, ptr %1182, align 4, !tbaa !139
  %1184 = fmul float %1162, %1183
  store float %1184, ptr %1182, align 4, !tbaa !139
  %1185 = getelementptr inbounds %struct.BezTriple, ptr %1166, i64 1
  %1186 = add nsw i32 %1167, -1
  %1187 = icmp sgt i32 %1167, 1
  br i1 %1187, label %1165, label %1188, !llvm.loop !160

1188:                                             ; preds = %1165, %1161, %1157
  %1189 = load i32, ptr %1090, align 8, !tbaa !157
  %1190 = icmp sgt i32 %1189, 0
  br i1 %1190, label %1191, label %1220

1191:                                             ; preds = %1188, %1191
  %1192 = phi ptr [ %1217, %1191 ], [ %1095, %1188 ]
  %1193 = phi i32 [ %1218, %1191 ], [ %1189, %1188 ]
  %1194 = load float, ptr %1192, align 4, !tbaa !139
  %1195 = fadd float %1028, %1194
  %1196 = fmul float %1051, %1195
  store float %1196, ptr %1192, align 4, !tbaa !139
  %1197 = getelementptr inbounds float, ptr %1192, i64 1
  %1198 = load float, ptr %1197, align 4, !tbaa !139
  %1199 = fadd float %1030, %1198
  %1200 = fmul float %1051, %1199
  store float %1200, ptr %1197, align 4, !tbaa !139
  %1201 = getelementptr inbounds float, ptr %1192, i64 3
  %1202 = load float, ptr %1201, align 4, !tbaa !139
  %1203 = fadd float %1028, %1202
  %1204 = fmul float %1051, %1203
  store float %1204, ptr %1201, align 4, !tbaa !139
  %1205 = getelementptr inbounds float, ptr %1192, i64 4
  %1206 = load float, ptr %1205, align 4, !tbaa !139
  %1207 = fadd float %1030, %1206
  %1208 = fmul float %1051, %1207
  store float %1208, ptr %1205, align 4, !tbaa !139
  %1209 = getelementptr inbounds float, ptr %1192, i64 6
  %1210 = load float, ptr %1209, align 4, !tbaa !139
  %1211 = fadd float %1028, %1210
  %1212 = fmul float %1051, %1211
  store float %1212, ptr %1209, align 4, !tbaa !139
  %1213 = getelementptr inbounds float, ptr %1192, i64 7
  %1214 = load float, ptr %1213, align 4, !tbaa !139
  %1215 = fadd float %1030, %1214
  %1216 = fmul float %1051, %1215
  store float %1216, ptr %1213, align 4, !tbaa !139
  %1217 = getelementptr inbounds %struct.BezTriple, ptr %1192, i64 1
  %1218 = add nsw i32 %1193, -1
  %1219 = icmp sgt i32 %1193, 1
  br i1 %1219, label %1191, label %1220, !llvm.loop !161

1220:                                             ; preds = %1191, %1188
  call void @BLI_addtail(ptr noundef %3, ptr noundef nonnull %1077) #16
  br label %1221

1221:                                             ; preds = %1220, %1070
  %1222 = load ptr, ptr %1071, align 8, !tbaa !162
  %1223 = icmp eq ptr %1222, null
  br i1 %1223, label %1224, label %1070, !llvm.loop !163

1224:                                             ; preds = %1221, %1075, %1062, %1097, %1046, %1025
  %1225 = load i8, ptr %1011, align 2, !tbaa !97
  %1226 = and i8 %1225, 4
  %1227 = icmp ne i8 %1226, 0
  %1228 = and i1 %1026, %1227
  br i1 %1228, label %1229, label %1376

1229:                                             ; preds = %1224
  %1230 = icmp slt i64 %1006, %1003
  br i1 %1230, label %1231, label %1246

1231:                                             ; preds = %1229
  %1232 = add nuw nsw i64 %1006, 1
  %1233 = getelementptr inbounds i32, ptr %66, i64 %1232
  %1234 = load i32, ptr %1233, align 4, !tbaa !61
  switch i32 %1234, label %1240 [
    i32 10, label %1246
    i32 32, label %1235
  ]

1235:                                             ; preds = %1231
  %1236 = getelementptr inbounds %struct.CharInfo, ptr %68, i64 %1232, i32 2
  %1237 = load i8, ptr %1236, align 2, !tbaa !97
  %1238 = and i8 %1237, 4
  %1239 = icmp eq i8 %1238, 0
  br i1 %1239, label %1246, label %1240

1240:                                             ; preds = %1231, %1235
  %1241 = getelementptr inbounds %struct.CharInfo, ptr %68, i64 %1232, i32 2
  %1242 = load i8, ptr %1241, align 2, !tbaa !97
  %1243 = and i8 %1242, 8
  %1244 = icmp eq i8 %1243, 0
  br i1 %1244, label %1245, label %1246

1245:                                             ; preds = %1240
  br label %1246

1246:                                             ; preds = %1231, %1245, %1240, %1235, %1229
  %1247 = phi float [ %998, %1245 ], [ 0.000000e+00, %1240 ], [ 0.000000e+00, %1235 ], [ 0.000000e+00, %1231 ], [ 0.000000e+00, %1229 ]
  %1248 = load ptr, ptr %471, align 8, !tbaa !42
  %1249 = zext i32 %1018 to i64
  %1250 = inttoptr i64 %1249 to ptr
  %1251 = call ptr @BLI_ghash_lookup(ptr noundef %1248, ptr noundef %1250) #16
  %1252 = icmp eq ptr %1251, null
  br i1 %1252, label %1262, label %1253

1253:                                             ; preds = %1246
  %1254 = load i8, ptr %1011, align 2, !tbaa !97
  %1255 = and i8 %1254, 32
  %1256 = icmp eq i8 %1255, 0
  %1257 = getelementptr inbounds %struct.VChar, ptr %1251, i64 0, i32 2
  %1258 = load float, ptr %1257, align 4, !tbaa !102
  br i1 %1256, label %1262, label %1259

1259:                                             ; preds = %1253
  %1260 = load float, ptr %999, align 8, !tbaa !103
  %1261 = fmul float %1258, %1260
  br label %1262

1262:                                             ; preds = %1253, %1246, %1259
  %1263 = phi float [ %1261, %1259 ], [ 0.000000e+00, %1246 ], [ %1258, %1253 ]
  %1264 = load i16, ptr %1010, align 2, !tbaa !122
  %1265 = sitofp i16 %1264 to float
  %1266 = fdiv float %1265, 4.000000e+01
  %1267 = fadd float %1266, 1.000000e+00
  %1268 = call float @llvm.fmuladd.f32(float %1263, float %1267, float %1247)
  %1269 = load float, ptr %1007, align 4, !tbaa !106
  %1270 = fadd float %1269, %1268
  %1271 = getelementptr inbounds %struct.CharTrans, ptr %1007, i64 0, i32 1
  %1272 = load float, ptr %1271, align 4, !tbaa !108
  %1273 = load float, ptr %1000, align 4, !tbaa !164
  %1274 = fsub float %1272, %1273
  %1275 = load float, ptr %1001, align 8, !tbaa !165
  %1276 = fadd float %1275, 0xBFA99999A0000000
  %1277 = getelementptr inbounds %struct.CharTrans, ptr %1007, i64 0, i32 2
  %1278 = load float, ptr %1277, align 4, !tbaa !143
  %1279 = load i16, ptr %1019, align 2, !tbaa !149
  %1280 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %1281 = call ptr %1280(i64 noundef 88, ptr noundef nonnull @.str.12) #16
  %1282 = load i16, ptr %1002, align 4, !tbaa !152
  %1283 = getelementptr inbounds %struct.Nurb, ptr %1281, i64 0, i32 9
  store i16 %1282, ptr %1283, align 4, !tbaa !153
  %1284 = getelementptr inbounds %struct.Nurb, ptr %1281, i64 0, i32 18
  store ptr null, ptr %1284, align 8, !tbaa !52
  %1285 = getelementptr inbounds %struct.Nurb, ptr %1281, i64 0, i32 15
  %1286 = getelementptr inbounds %struct.Nurb, ptr %1281, i64 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1285, i8 0, i64 16, i1 false)
  store i16 8, ptr %1286, align 2, !tbaa !154
  %1287 = getelementptr inbounds %struct.Nurb, ptr %1281, i64 0, i32 21
  %1288 = trunc i64 %1006 to i32
  %1289 = add i32 %1288, 1000
  store i32 %1289, ptr %1287, align 4, !tbaa !155
  %1290 = icmp sgt i16 %1279, 0
  br i1 %1290, label %1291, label %1294

1291:                                             ; preds = %1262
  %1292 = add nsw i16 %1279, -1
  %1293 = getelementptr inbounds %struct.Nurb, ptr %1281, i64 0, i32 3
  store i16 %1292, ptr %1293, align 2, !tbaa !156
  br label %1294

1294:                                             ; preds = %1291, %1262
  %1295 = getelementptr inbounds %struct.Nurb, ptr %1281, i64 0, i32 6
  store i32 4, ptr %1295, align 8, !tbaa !157
  %1296 = getelementptr inbounds %struct.Nurb, ptr %1281, i64 0, i32 7
  store i32 1, ptr %1296, align 4, !tbaa !166
  %1297 = getelementptr inbounds %struct.Nurb, ptr %1281, i64 0, i32 11
  store i16 4, ptr %1297, align 8, !tbaa !167
  %1298 = getelementptr inbounds %struct.Nurb, ptr %1281, i64 0, i32 12
  store i16 1, ptr %1298, align 2, !tbaa !168
  %1299 = getelementptr inbounds %struct.Nurb, ptr %1281, i64 0, i32 13
  store i16 1, ptr %1299, align 4, !tbaa !169
  %1300 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %1301 = call ptr %1300(i64 noundef 144, ptr noundef nonnull @.str.13) #16
  %1302 = fadd float %1274, %1276
  store float %1269, ptr %1301, align 4, !tbaa !139
  %1303 = getelementptr inbounds float, ptr %1301, i64 1
  store float %1302, ptr %1303, align 4, !tbaa !139
  %1304 = getelementptr inbounds float, ptr %1301, i64 2
  store float 0.000000e+00, ptr %1304, align 4, !tbaa !139
  %1305 = getelementptr inbounds float, ptr %1301, i64 3
  store float 1.000000e+00, ptr %1305, align 4, !tbaa !139
  %1306 = getelementptr inbounds %struct.BPoint, ptr %1301, i64 1
  store float %1270, ptr %1306, align 4, !tbaa !139
  %1307 = getelementptr inbounds %struct.BPoint, ptr %1301, i64 1, i32 0, i64 1
  store float %1302, ptr %1307, align 4, !tbaa !139
  %1308 = getelementptr inbounds %struct.BPoint, ptr %1301, i64 1, i32 0, i64 2
  store float 0.000000e+00, ptr %1308, align 4, !tbaa !139
  %1309 = getelementptr inbounds %struct.BPoint, ptr %1301, i64 1, i32 0, i64 3
  store float 1.000000e+00, ptr %1309, align 4, !tbaa !139
  %1310 = getelementptr inbounds %struct.BPoint, ptr %1301, i64 2
  %1311 = fadd float %1272, %1276
  store float %1270, ptr %1310, align 4, !tbaa !139
  %1312 = getelementptr inbounds %struct.BPoint, ptr %1301, i64 2, i32 0, i64 1
  store float %1311, ptr %1312, align 4, !tbaa !139
  %1313 = getelementptr inbounds %struct.BPoint, ptr %1301, i64 2, i32 0, i64 2
  store float 0.000000e+00, ptr %1313, align 4, !tbaa !139
  %1314 = getelementptr inbounds %struct.BPoint, ptr %1301, i64 2, i32 0, i64 3
  store float 1.000000e+00, ptr %1314, align 4, !tbaa !139
  %1315 = getelementptr inbounds %struct.BPoint, ptr %1301, i64 3
  store float %1269, ptr %1315, align 4, !tbaa !139
  %1316 = getelementptr inbounds %struct.BPoint, ptr %1301, i64 3, i32 0, i64 1
  store float %1311, ptr %1316, align 4, !tbaa !139
  %1317 = getelementptr inbounds %struct.BPoint, ptr %1301, i64 3, i32 0, i64 2
  store float 0.000000e+00, ptr %1317, align 4, !tbaa !139
  %1318 = getelementptr inbounds %struct.BPoint, ptr %1301, i64 3, i32 0, i64 3
  store float 1.000000e+00, ptr %1318, align 4, !tbaa !139
  %1319 = getelementptr inbounds %struct.Nurb, ptr %1281, i64 0, i32 17
  store ptr %1301, ptr %1319, align 8, !tbaa !170
  call void @BLI_addtail(ptr noundef %3, ptr noundef %1281) #16
  %1320 = fcmp une float %1278, 0.000000e+00
  br i1 %1320, label %1321, label %1347

1321:                                             ; preds = %1294
  %1322 = call float @sinf(float noundef %1278) #16
  %1323 = call float @cosf(float noundef %1278) #16
  %1324 = load i32, ptr %1295, align 8, !tbaa !157
  %1325 = icmp sgt i32 %1324, 0
  br i1 %1325, label %1326, label %1345

1326:                                             ; preds = %1321
  %1327 = fneg float %1322
  br label %1328

1328:                                             ; preds = %1326, %1328
  %1329 = phi ptr [ %1301, %1326 ], [ %1342, %1328 ]
  %1330 = phi i32 [ %1324, %1326 ], [ %1343, %1328 ]
  %1331 = load float, ptr %1329, align 4, !tbaa !139
  %1332 = fsub float %1331, %1269
  %1333 = getelementptr inbounds float, ptr %1329, i64 1
  %1334 = load float, ptr %1333, align 4, !tbaa !139
  %1335 = fsub float %1334, %1272
  %1336 = fmul float %1322, %1335
  %1337 = call float @llvm.fmuladd.f32(float %1323, float %1332, float %1336)
  %1338 = fadd float %1269, %1337
  store float %1338, ptr %1329, align 4, !tbaa !139
  %1339 = fmul float %1323, %1335
  %1340 = call float @llvm.fmuladd.f32(float %1327, float %1332, float %1339)
  %1341 = fadd float %1272, %1340
  store float %1341, ptr %1333, align 4, !tbaa !139
  %1342 = getelementptr inbounds %struct.BPoint, ptr %1329, i64 1
  %1343 = add nsw i32 %1330, -1
  %1344 = icmp sgt i32 %1330, 1
  br i1 %1344, label %1328, label %1345, !llvm.loop !171

1345:                                             ; preds = %1328, %1321
  %1346 = load ptr, ptr %1319, align 8, !tbaa !170
  br label %1347

1347:                                             ; preds = %1294, %1345
  %1348 = phi ptr [ %1346, %1345 ], [ %1301, %1294 ]
  %1349 = load float, ptr %21, align 8, !tbaa !81
  %1350 = load float, ptr %1348, align 4, !tbaa !139
  %1351 = fmul float %1349, %1350
  store float %1351, ptr %1348, align 4, !tbaa !139
  %1352 = getelementptr inbounds float, ptr %1348, i64 1
  %1353 = load float, ptr %1352, align 4, !tbaa !139
  %1354 = fmul float %1349, %1353
  store float %1354, ptr %1352, align 4, !tbaa !139
  %1355 = getelementptr inbounds %struct.BPoint, ptr %1348, i64 1
  %1356 = load float, ptr %21, align 8, !tbaa !81
  %1357 = load float, ptr %1355, align 4, !tbaa !139
  %1358 = fmul float %1356, %1357
  store float %1358, ptr %1355, align 4, !tbaa !139
  %1359 = getelementptr inbounds %struct.BPoint, ptr %1348, i64 1, i32 0, i64 1
  %1360 = load float, ptr %1359, align 4, !tbaa !139
  %1361 = fmul float %1356, %1360
  store float %1361, ptr %1359, align 4, !tbaa !139
  %1362 = getelementptr inbounds %struct.BPoint, ptr %1348, i64 2
  %1363 = load float, ptr %21, align 8, !tbaa !81
  %1364 = load float, ptr %1362, align 4, !tbaa !139
  %1365 = fmul float %1363, %1364
  store float %1365, ptr %1362, align 4, !tbaa !139
  %1366 = getelementptr inbounds %struct.BPoint, ptr %1348, i64 2, i32 0, i64 1
  %1367 = load float, ptr %1366, align 4, !tbaa !139
  %1368 = fmul float %1363, %1367
  store float %1368, ptr %1366, align 4, !tbaa !139
  %1369 = getelementptr inbounds %struct.BPoint, ptr %1348, i64 3
  %1370 = load float, ptr %21, align 8, !tbaa !81
  %1371 = load float, ptr %1369, align 4, !tbaa !139
  %1372 = fmul float %1370, %1371
  store float %1372, ptr %1369, align 4, !tbaa !139
  %1373 = getelementptr inbounds %struct.BPoint, ptr %1348, i64 3, i32 0, i64 1
  %1374 = load float, ptr %1373, align 4, !tbaa !139
  %1375 = fmul float %1370, %1374
  store float %1375, ptr %1373, align 4, !tbaa !139
  br label %1376

1376:                                             ; preds = %1347, %1224
  %1377 = getelementptr inbounds %struct.CharTrans, ptr %1007, i64 1
  %1378 = add nuw nsw i64 %1006, 1
  %1379 = icmp eq i64 %1378, %1004
  br i1 %1379, label %1383, label %1005, !llvm.loop !172

1380:                                             ; preds = %986, %244
  %1381 = phi ptr [ %134, %244 ], [ %128, %986 ]
  %1382 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %1382(ptr noundef %1381) #16
  br label %1383

1383:                                             ; preds = %1376, %1380, %987, %986
  %1384 = phi i1 [ true, %986 ], [ true, %987 ], [ false, %1380 ], [ true, %1376 ]
  %1385 = phi i8 [ 1, %986 ], [ 1, %987 ], [ 0, %1380 ], [ 1, %1376 ]
  %1386 = phi ptr [ %128, %986 ], [ %128, %987 ], [ null, %1380 ], [ %128, %1376 ]
  %1387 = icmp eq ptr %4, null
  br i1 %1387, label %1390, label %1388

1388:                                             ; preds = %1383
  store ptr %66, ptr %4, align 8, !tbaa !54
  store i32 %65, ptr %5, align 4, !tbaa !61
  %1389 = zext i1 %38 to i8
  store i8 %1389, ptr %6, align 1, !tbaa !62
  br label %1393

1390:                                             ; preds = %1383
  br i1 %38, label %1391, label %1393

1391:                                             ; preds = %1390
  %1392 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %1392(ptr noundef %66) #16
  br label %1393

1393:                                             ; preds = %1390, %1391, %1388
  %1394 = icmp eq ptr %1386, null
  br i1 %1394, label %1401, label %1395

1395:                                             ; preds = %1393
  %1396 = icmp ne ptr %7, null
  %1397 = and i1 %1396, %1384
  br i1 %1397, label %1398, label %1399

1398:                                             ; preds = %1395
  store ptr %1386, ptr %7, align 8, !tbaa !54
  br label %1401

1399:                                             ; preds = %1395
  %1400 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %1400(ptr noundef nonnull %1386) #16
  br label %1401

1401:                                             ; preds = %1393, %1399, %1398, %34, %8
  %1402 = phi i8 [ 0, %8 ], [ 0, %34 ], [ %1385, %1398 ], [ %1385, %1399 ], [ %1385, %1393 ]
  ret i8 %1402
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @vfont_get_data(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %90, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VFont, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %88

8:                                                ; preds = %4
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @vfont_rwlock, i32 noundef 2) #16
  %9 = load ptr, ptr %5, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @vfont_rwlock) #16
  %12 = load ptr, ptr %5, align 8, !tbaa !34
  br label %86

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.VFont, ptr %1, i64 0, i32 1
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(10) @.str) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load ptr, ptr @builtin_font_data, align 8, !tbaa !54
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %76

22:                                               ; preds = %17
  %23 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !54
  %24 = load i32, ptr @builtin_font_size, align 4, !tbaa !61
  %25 = sext i32 %24 to i64
  %26 = tail call ptr %23(i64 noundef %25, ptr noundef nonnull @.str.8) #16
  %27 = load ptr, ptr @builtin_font_data, align 8, !tbaa !54
  %28 = load i32, ptr @builtin_font_size, align 4, !tbaa !61
  %29 = sext i32 %28 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %26, ptr align 1 %27, i64 %29, i1 false)
  %30 = tail call ptr @newPackedFileMemory(ptr noundef %26, i32 noundef %28) #16
  br label %76

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.VFont, ptr %1, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !60
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.VFont, ptr %1, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !59
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = tail call ptr @dupPackedFile(ptr noundef nonnull %33) #16
  store ptr %40, ptr %36, align 8, !tbaa !59
  br label %58

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !173
  %44 = icmp eq ptr %43, null
  %45 = getelementptr inbounds %struct.Library, ptr %43, i64 0, i32 4
  %46 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 2
  %47 = select i1 %44, ptr %46, ptr %45
  %48 = tail call ptr @newPackedFile(ptr noundef null, ptr noundef nonnull %14, ptr noundef nonnull %47) #16
  %49 = getelementptr inbounds %struct.VFont, ptr %1, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !59
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load ptr, ptr %42, align 8, !tbaa !173
  %54 = icmp eq ptr %53, null
  %55 = getelementptr inbounds %struct.Library, ptr %53, i64 0, i32 4
  %56 = select i1 %54, ptr %46, ptr %55
  %57 = tail call ptr @newPackedFile(ptr noundef null, ptr noundef nonnull %14, ptr noundef nonnull %56) #16
  store ptr %57, ptr %49, align 8, !tbaa !59
  br label %58

58:                                               ; preds = %41, %52, %35, %39
  %59 = phi ptr [ %33, %39 ], [ %33, %35 ], [ %48, %52 ], [ %48, %41 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %58
  %62 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull %14)
  %63 = load ptr, ptr @builtin_font_data, align 8, !tbaa !54
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %76

67:                                               ; preds = %61
  %68 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !54
  %69 = load i32, ptr @builtin_font_size, align 4, !tbaa !61
  %70 = sext i32 %69 to i64
  %71 = tail call ptr %68(i64 noundef %70, ptr noundef nonnull @.str.8) #16
  %72 = load ptr, ptr @builtin_font_data, align 8, !tbaa !54
  %73 = load i32, ptr @builtin_font_size, align 4, !tbaa !61
  %74 = sext i32 %73 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %71, ptr align 1 %72, i64 %74, i1 false)
  %75 = tail call ptr @newPackedFileMemory(ptr noundef %71, i32 noundef %73) #16
  br label %76

76:                                               ; preds = %67, %65, %22, %20, %58
  %77 = phi ptr [ %59, %58 ], [ %30, %22 ], [ null, %20 ], [ %75, %67 ], [ null, %65 ]
  %78 = icmp eq ptr %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %76
  %80 = tail call ptr @BLI_vfontdata_from_freetypefont(ptr noundef nonnull %77) #16
  store ptr %80, ptr %5, align 8, !tbaa !34
  %81 = getelementptr inbounds %struct.VFont, ptr %1, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !60
  %83 = icmp eq ptr %77, %82
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  tail call void @freePackedFile(ptr noundef nonnull %77) #16
  br label %85

85:                                               ; preds = %79, %84, %76
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @vfont_rwlock) #16
  br label %86

86:                                               ; preds = %85, %11
  %87 = phi ptr [ %12, %11 ], [ undef, %85 ]
  br i1 %10, label %88, label %90

88:                                               ; preds = %86, %4
  %89 = load ptr, ptr %5, align 8, !tbaa !34
  br label %90

90:                                               ; preds = %86, %2, %88
  %91 = phi ptr [ %89, %88 ], [ %87, %86 ], [ null, %2 ]
  ret ptr %91
}

declare i64 @BLI_strncpy_wchar_from_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: nounwind
declare i32 @towupper(i32 noundef) local_unnamed_addr #9

declare void @BLI_rw_mutex_lock(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_rw_mutex_unlock(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_vfontchar_from_freetypefont(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #8

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @where_on_path(ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #10

declare void @BKE_nurbList_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_vfont_to_curve_nubase(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call zeroext i8 @BKE_vfont_to_curve_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null), !range !174
  ret i8 %5
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_vfont_to_curve(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 3
  %7 = tail call zeroext i8 @BKE_vfont_to_curve_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null), !range !174
  ret i8 %7
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

declare ptr @newPackedFileMemory(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @dupPackedFile(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree nounwind willreturn memory(argmem: read) }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !37, i64 1144}
!35 = !{!"VFont", !36, i64 0, !38, i64 120, !37, i64 1144, !37, i64 1152, !37, i64 1160}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!43, !37, i64 0}
!43 = !{!"VFontData", !37, i64 0, !38, i64 8, !44, i64 136}
!44 = !{!"float", !38, i64 0}
!45 = !{!46, !37, i64 8}
!46 = !{!"GHashIterator", !37, i64 0, !37, i64 8, !41, i64 16}
!47 = !{!48, !37, i64 16}
!48 = !{!"_gh_Entry", !37, i64 0, !37, i64 8, !37, i64 16}
!49 = !{!50, !37, i64 0}
!50 = !{!"VChar", !51, i64 0, !41, i64 16, !44, i64 20}
!51 = !{!"ListBase", !37, i64 0, !37, i64 8}
!52 = !{!53, !37, i64 72}
!53 = !{!"Nurb", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !41, i64 24, !41, i64 28, !38, i64 32, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !40, i64 80, !40, i64 82, !41, i64 84}
!54 = !{!37, !37, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !56, !57}
!59 = !{!35, !37, i64 1160}
!60 = !{!35, !37, i64 1152}
!61 = !{!41, !41, i64 0}
!62 = !{!38, !38, i64 0}
!63 = !{!64, !41, i64 2108}
!64 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !51, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!65 = !{!64, !37, i64 0}
!66 = distinct !{!66, !56, !57}
!67 = !{!68, !37, i64 296}
!68 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !69, i64 312, !37, i64 360, !51, i64 368, !51, i64 384, !51, i64 400, !51, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !44, i64 616, !44, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !44, i64 1048, !44, i64 1052, !51, i64 1056, !51, i64 1072, !51, i64 1088, !51, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !51, i64 1176, !51, i64 1192, !51, i64 1208, !51, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !44, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !70, i64 1304, !70, i64 1312, !41, i64 1320, !41, i64 1324, !51, i64 1328, !51, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !51, i64 1400, !37, i64 1416}
!69 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!70 = !{!"long", !38, i64 0}
!71 = !{!72, !37, i64 376}
!72 = !{!"Curve", !36, i64 0, !37, i64 120, !37, i64 128, !51, i64 136, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !38, i64 220, !38, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !44, i64 252, !44, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !41, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !41, i64 292, !41, i64 296, !38, i64 300, !40, i64 304, !38, i64 306, !38, i64 307, !44, i64 308, !44, i64 312, !44, i64 316, !44, i64 320, !44, i64 324, !44, i64 328, !44, i64 332, !44, i64 336, !44, i64 340, !44, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !37, i64 368, !37, i64 376, !38, i64 384, !37, i64 448, !37, i64 456, !37, i64 464, !37, i64 472, !37, i64 480, !41, i64 488, !41, i64 492, !37, i64 496, !73, i64 504, !44, i64 512, !44, i64 516, !44, i64 520, !38, i64 524, !38, i64 525, !38, i64 526}
!73 = !{!"CharInfo", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !40, i64 6}
!74 = !{!68, !40, i64 136}
!75 = !{!76, !41, i64 80}
!76 = !{!"EditFont", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84}
!77 = !{!76, !41, i64 84}
!78 = !{!76, !41, i64 76}
!79 = !{!76, !41, i64 72}
!80 = !{!72, !44, i64 336}
!81 = !{!72, !44, i64 320}
!82 = !{!72, !44, i64 340}
!83 = !{!72, !37, i64 448}
!84 = !{!72, !37, i64 368}
!85 = !{!76, !37, i64 16}
!86 = !{!72, !41, i64 360}
!87 = !{!72, !37, i64 496}
!88 = !{!72, !37, i64 480}
!89 = !{!76, !37, i64 32}
!90 = !{!72, !44, i64 312}
!91 = !{!92, !44, i64 0}
!92 = !{!"TextBox", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!93 = !{!92, !44, i64 4}
!94 = !{!92, !44, i64 8}
!95 = !{!92, !44, i64 12}
!96 = !{!72, !44, i64 308}
!97 = !{!73, !38, i64 4}
!98 = distinct !{!98, !56, !57}
!99 = !{!72, !37, i64 456}
!100 = !{!72, !37, i64 464}
!101 = !{!72, !37, i64 472}
!102 = !{!50, !44, i64 20}
!103 = !{!72, !44, i64 256}
!104 = !{!105, !38, i64 16}
!105 = !{!"CharTrans", !44, i64 0, !44, i64 4, !44, i64 8, !40, i64 12, !40, i64 14, !38, i64 16}
!106 = !{!105, !44, i64 0}
!107 = distinct !{!107, !56, !57}
!108 = !{!105, !44, i64 4}
!109 = !{!105, !40, i64 12}
!110 = !{!105, !40, i64 14}
!111 = !{!112, !44, i64 0}
!112 = !{!"TempLineInfo", !44, i64 0, !44, i64 4, !41, i64 8, !41, i64 12}
!113 = !{!112, !44, i64 4}
!114 = !{!112, !41, i64 8}
!115 = !{!112, !41, i64 12}
!116 = !{!72, !41, i64 488}
!117 = !{!118, !44, i64 4}
!118 = !{!"EditFontSelBox", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16}
!119 = !{!118, !44, i64 12}
!120 = !{!118, !44, i64 8}
!121 = !{!72, !44, i64 324}
!122 = !{!73, !40, i64 0}
!123 = distinct !{!123, !56, !57}
!124 = !{!72, !40, i64 304}
!125 = distinct !{!125, !56, !57}
!126 = !{!72, !38, i64 306}
!127 = distinct !{!127, !56, !57}
!128 = distinct !{!128, !56, !57}
!129 = distinct !{!129, !56, !57}
!130 = distinct !{!130, !56, !57}
!131 = distinct !{!131, !56, !57}
!132 = distinct !{!132, !56, !57}
!133 = distinct !{!133, !56, !57}
!134 = distinct !{!134, !56, !57}
!135 = !{!72, !37, i64 176}
!136 = !{!68, !37, i64 1280}
!137 = !{!138, !37, i64 48}
!138 = !{!"CurveCache", !51, i64 0, !51, i64 16, !51, i64 32, !37, i64 48}
!139 = !{!44, !44, i64 0}
!140 = distinct !{!140, !56, !57}
!141 = !{!142, !44, i64 12}
!142 = !{!"Path", !37, i64 0, !41, i64 8, !44, i64 12}
!143 = !{!105, !44, i64 8}
!144 = !{!118, !44, i64 16}
!145 = distinct !{!145, !56, !57}
!146 = !{!118, !44, i64 0}
!147 = distinct !{!147, !56, !57}
!148 = distinct !{!148, !56, !57}
!149 = !{!73, !40, i64 2}
!150 = !{!68, !41, i64 456}
!151 = !{!72, !44, i64 316}
!152 = !{!72, !40, i64 284}
!153 = !{!53, !40, i64 36}
!154 = !{!53, !40, i64 22}
!155 = !{!53, !41, i64 84}
!156 = !{!53, !40, i64 18}
!157 = !{!53, !41, i64 24}
!158 = distinct !{!158, !56, !57}
!159 = distinct !{!159, !56, !57}
!160 = distinct !{!160, !56, !57}
!161 = distinct !{!161, !56, !57}
!162 = !{!53, !37, i64 0}
!163 = distinct !{!163, !56, !57}
!164 = !{!72, !44, i64 332}
!165 = !{!72, !44, i64 328}
!166 = !{!53, !41, i64 28}
!167 = !{!53, !40, i64 40}
!168 = !{!53, !40, i64 42}
!169 = !{!53, !40, i64 44}
!170 = !{!53, !37, i64 64}
!171 = distinct !{!171, !56, !57}
!172 = distinct !{!172, !56, !57}
!173 = !{!35, !37, i64 24}
!174 = !{i8 0, i8 2}

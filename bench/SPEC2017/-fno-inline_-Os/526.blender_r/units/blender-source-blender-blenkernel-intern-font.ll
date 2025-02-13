; ModuleID = 'blender/source/blender/blenkernel/intern/font.c'
source_filename = "blender/source/blender/blenkernel/intern/font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.VFont = type { %struct.ID, [1024 x i8], ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.VFontData = type { ptr, [128 x i8], float }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.EditFont = type { ptr, ptr, ptr, ptr, ptr, [4 x [2 x float]], i32, i32, i32, i32 }
%struct.TextBox = type { float, float, float, float }
%struct.rctf = type { float, float, float, float }
%struct.CharTrans = type { float, float, float, i16, i16, i8 }
%struct.TempLineInfo = type { float, float, i32, i32 }
%struct.EditFontSelBox = type { float, float, float, float, float }
%struct.CurveCache = type { %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr }
%struct.Path = type { ptr, i32, float }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }
%struct.VChar = type { %struct.ListBase, i32, float }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_vfont_free_data(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.GHashIterator, align 8
  %3 = getelementptr inbounds %struct.VFont, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %37, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  call void @BLI_ghashIterator_init(ptr noundef nonnull %2, ptr noundef nonnull %7) #23
  %10 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %2) #24, !range !45
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %9, %26
  %13 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef nonnull %2) #24
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %12, %23
  %17 = phi ptr [ %24, %23 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 18
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %22(ptr noundef nonnull %19) #23
  br label %23

23:                                               ; preds = %21, %16
  call void @BLI_freelinkN(ptr noundef nonnull %13, ptr noundef nonnull %17) #23
  %24 = load ptr, ptr %13, align 8, !tbaa !46
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %16, !llvm.loop !52

26:                                               ; preds = %23, %12
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %27(ptr noundef nonnull %13) #23
  call void @BLI_ghashIterator_step(ptr noundef nonnull %2) #23
  %28 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %2) #24, !range !45
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %12, label %30, !llvm.loop !54

30:                                               ; preds = %26, %9
  %31 = load ptr, ptr %3, align 8, !tbaa !34
  %32 = load ptr, ptr %31, align 8, !tbaa !42
  call void @BLI_ghash_free(ptr noundef %32, ptr noundef null, ptr noundef null) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  %33 = load ptr, ptr %3, align 8, !tbaa !34
  br label %34

34:                                               ; preds = %30, %6
  %35 = phi ptr [ %33, %30 ], [ %4, %6 ]
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %36(ptr noundef %35) #23
  store ptr null, ptr %3, align 8, !tbaa !34
  br label %37

37:                                               ; preds = %34, %1
  %38 = getelementptr inbounds %struct.VFont, ptr %0, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !55
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  call void @freePackedFile(ptr noundef nonnull %39) #23
  store ptr null, ptr %38, align 8, !tbaa !55
  br label %42

42:                                               ; preds = %41, %37
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !56 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !59 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @freePackedFile(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_vfont_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  tail call void @BKE_vfont_free_data(ptr noundef nonnull %0) #24
  %4 = getelementptr inbounds %struct.VFont, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @freePackedFile(ptr noundef nonnull %5) #23
  store ptr null, ptr %4, align 8, !tbaa !62
  br label %8

8:                                                ; preds = %1, %7, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BKE_vfont_is_builtin(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.VFont, ptr %0, i64 0, i32 1
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(10) @.str) #25
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @BKE_vfont_builtin_register(ptr noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  store ptr %0, ptr @builtin_font_data, align 8, !tbaa !51
  store i32 %1, ptr @builtin_font_size, align 4, !tbaa !63
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_vfont_load(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #22
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str) #25
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 256) #23
  %8 = call fastcc ptr @get_builtin_packedfile() #24
  br label %13

9:                                                ; preds = %2
  call void @BLI_split_file_part(ptr noundef %1, ptr noundef nonnull %3, i64 noundef 256) #23
  %10 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 2
  %11 = call ptr @newPackedFile(ptr noundef null, ptr noundef %1, ptr noundef nonnull %10) #23
  %12 = call ptr @newPackedFile(ptr noundef null, ptr noundef %1, ptr noundef nonnull %10) #23
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi ptr [ %8, %6 ], [ %11, %9 ]
  %15 = phi ptr [ null, %6 ], [ %12, %9 ]
  %16 = icmp eq ptr %14, null
  br i1 %16, label %49, label %17

17:                                               ; preds = %13
  %18 = call ptr @BLI_vfontdata_from_freetypefont(ptr noundef nonnull %14) #23
  %19 = icmp eq ptr %18, null
  br i1 %19, label %47, label %20

20:                                               ; preds = %17
  %21 = call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 18006, ptr noundef nonnull %3) #23
  %22 = getelementptr inbounds %struct.VFont, ptr %21, i64 0, i32 2
  store ptr %18, ptr %22, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.VFontData, ptr %18, i64 0, i32 1
  %24 = load i8, ptr %23, align 8, !tbaa !64
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 4, i64 2
  %28 = call ptr @BLI_strncpy(ptr noundef nonnull %27, ptr noundef nonnull %23, i64 noundef 64) #23
  br label %29

29:                                               ; preds = %26, %20
  %30 = getelementptr inbounds %struct.VFont, ptr %21, i64 0, i32 1
  %31 = call ptr @BLI_strncpy(ptr noundef nonnull %30, ptr noundef %1, i64 noundef 1024) #23
  br i1 %5, label %38, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !65
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.VFont, ptr %21, i64 0, i32 3
  store ptr %14, ptr %37, align 8, !tbaa !62
  br label %38

38:                                               ; preds = %36, %32, %29
  %39 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %3, ptr noundef nonnull dereferenceable(10) @.str, i64 10)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.VFont, ptr %21, i64 0, i32 4
  store ptr %15, ptr %42, align 8, !tbaa !55
  br label %43

43:                                               ; preds = %41, %38
  %44 = getelementptr inbounds %struct.VFont, ptr %21, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !62
  %46 = icmp eq ptr %45, %14
  br i1 %46, label %49, label %47

47:                                               ; preds = %17, %43
  %48 = phi ptr [ %21, %43 ], [ null, %17 ]
  call void @freePackedFile(ptr noundef nonnull %14) #23
  br label %49

49:                                               ; preds = %43, %47, %13
  %50 = phi ptr [ null, %13 ], [ %48, %47 ], [ %21, %43 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #22
  ret ptr %50
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_builtin_packedfile() unnamed_addr #0 !PGOFuncName !67 {
  %1 = load ptr, ptr @builtin_font_data, align 8, !tbaa !51
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %14

5:                                                ; preds = %0
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %7 = load i32, ptr @builtin_font_size, align 4, !tbaa !63
  %8 = sext i32 %7 to i64
  %9 = tail call ptr %6(i64 noundef %8, ptr noundef nonnull @.str.8) #23
  %10 = load ptr, ptr @builtin_font_data, align 8, !tbaa !51
  %11 = load i32, ptr @builtin_font_size, align 4, !tbaa !63
  %12 = sext i32 %11 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %10, i64 %12, i1 false)
  %13 = tail call ptr @newPackedFileMemory(ptr noundef %9, i32 noundef %11) #23
  br label %14

14:                                               ; preds = %5, %3
  %15 = phi ptr [ %13, %5 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: optsize
declare void @BLI_split_file_part(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @newPackedFile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_vfontdata_from_freetypefont(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_vfont_builtin_get() local_unnamed_addr #0 {
  %1 = load ptr, ptr @G, align 8, !tbaa !68
  %2 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 28
  br label %3

3:                                                ; preds = %7, %0
  %4 = phi ptr [ %2, %0 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @BKE_vfont_is_builtin(ptr noundef nonnull %5) #24, !range !45
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %3, label %12, !llvm.loop !69

10:                                               ; preds = %3
  %11 = tail call ptr @BKE_vfont_load(ptr noundef %1, ptr noundef nonnull @.str) #24
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi ptr [ %11, %10 ], [ %5, %7 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_vfont_select_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 53
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !77
  %10 = icmp ne i16 %9, 4
  %11 = icmp eq ptr %7, null
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %30, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 8
  %15 = load i32, ptr %14, align 8, !tbaa !78
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 9
  %19 = load i32, ptr %18, align 4, !tbaa !80
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
  store i32 %24, ptr %1, align 4, !tbaa !63
  store i32 %25, ptr %2, align 4, !tbaa !63
  br label %30

30:                                               ; preds = %17, %13, %3, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %3 ], [ 0, %13 ], [ 0, %17 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_vfont_select_clamp(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 53
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 7
  %7 = load i32, ptr %6, align 4, !tbaa !81
  %8 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !82
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 %9, ptr %6, align 4, !tbaa !81
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !78
  %15 = add nsw i32 %9, 1
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 %15, ptr %13, align 8, !tbaa !78
  br label %18

18:                                               ; preds = %17, %12
  %19 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 9
  %20 = load i32, ptr %19, align 4, !tbaa !80
  %21 = icmp sgt i32 %20, %9
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 %9, ptr %19, align 4, !tbaa !80
  br label %23

23:                                               ; preds = %22, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_vfont_to_curve_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr noundef writeonly %7) local_unnamed_addr #0 {
  %9 = alloca %struct.TextBox, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [3 x [3 x float]], align 16
  %14 = alloca [3 x [3 x float]], align 16
  %15 = alloca [4 x float], align 16
  %16 = alloca [4 x float], align 16
  %17 = alloca [3 x float], align 4
  %18 = alloca %struct.rctf, align 4
  %19 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !70
  %21 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 53
  %22 = load ptr, ptr %21, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #22
  %23 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 44
  %24 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 40
  %25 = load float, ptr %24, align 8, !tbaa !83
  %26 = load <2 x float>, ptr %23, align 8, !tbaa !84
  %27 = insertelement <2 x float> poison, float %25, i64 0
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> zeroinitializer
  %29 = fdiv <2 x float> %26, %28
  %30 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 55
  %31 = load ptr, ptr %30, align 8, !tbaa !85
  %32 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 52
  %33 = load ptr, ptr %32, align 8, !tbaa !86
  %34 = icmp eq ptr %33, null
  %35 = icmp eq ptr %31, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %972, label %37

37:                                               ; preds = %8
  %38 = tail call fastcc ptr @vfont_get_data(ptr noundef %0, ptr noundef nonnull %31) #24
  %39 = icmp eq ptr %38, null
  br i1 %39, label %972, label %40

40:                                               ; preds = %37
  %41 = icmp eq ptr %22, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.EditFont, ptr %22, i64 0, i32 6
  %44 = load i32, ptr %43, align 8, !tbaa !82
  %45 = getelementptr inbounds %struct.EditFont, ptr %22, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !87
  %47 = getelementptr inbounds %struct.EditFont, ptr %22, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !51
  br label %68

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 50
  %51 = load i32, ptr %50, align 8, !tbaa !88
  %52 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %53 = add nsw i32 %51, 1
  %54 = sext i32 %53 to i64
  %55 = shl nsw i64 %54, 2
  %56 = tail call ptr %52(i64 noundef %55, ptr noundef nonnull @.str.1) #23
  %57 = load ptr, ptr %32, align 8, !tbaa !86
  %58 = tail call i64 @BLI_strncpy_wchar_from_utf8(ptr noundef %56, ptr noundef %57, i64 noundef %54) #23
  %59 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 62
  %60 = load ptr, ptr %59, align 8, !tbaa !51
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %49
  %63 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %64 = add nsw i32 %51, 4
  %65 = sext i32 %64 to i64
  %66 = shl nsw i64 %65, 3
  %67 = tail call ptr %63(i64 noundef %66, ptr noundef nonnull @.str.2) #23
  store ptr %67, ptr %59, align 8, !tbaa !89
  br label %68

68:                                               ; preds = %49, %62, %42
  %69 = phi ptr [ %48, %42 ], [ %67, %62 ], [ %60, %49 ]
  %70 = phi i32 [ %44, %42 ], [ %51, %62 ], [ %51, %49 ]
  %71 = phi ptr [ %46, %42 ], [ %56, %62 ], [ %56, %49 ]
  %72 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 59
  %73 = load ptr, ptr %72, align 8, !tbaa !90
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %77 = tail call ptr %76(i64 noundef 4096, ptr noundef nonnull @.str.3) #23
  store ptr %77, ptr %72, align 8, !tbaa !90
  br label %78

78:                                               ; preds = %75, %68
  br i1 %41, label %99, label %79

79:                                               ; preds = %78
  %80 = getelementptr inbounds %struct.EditFont, ptr %22, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !91
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %84(ptr noundef nonnull %81) #23
  br label %85

85:                                               ; preds = %83, %79
  %86 = call i32 @BKE_vfont_select_get(ptr noundef nonnull %1, ptr noundef nonnull %10, ptr noundef nonnull %11) #24, !range !92
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %90 = load i32, ptr %11, align 4, !tbaa !63
  %91 = load i32, ptr %10, align 4, !tbaa !63
  %92 = add i32 %90, 1
  %93 = sub i32 %92, %91
  %94 = sext i32 %93 to i64
  %95 = mul nsw i64 %94, 20
  %96 = tail call ptr %89(i64 noundef %95, ptr noundef nonnull @.str.4) #23
  br label %97

97:                                               ; preds = %85, %88
  %98 = phi ptr [ %96, %88 ], [ null, %85 ]
  store ptr %98, ptr %80, align 8, !tbaa !91
  br label %99

99:                                               ; preds = %97, %78
  %100 = phi ptr [ %98, %97 ], [ null, %78 ]
  %101 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %102 = add i32 %70, 1
  %103 = sext i32 %102 to i64
  %104 = mul nsw i64 %103, 20
  %105 = tail call ptr %101(i64 noundef %104, ptr noundef nonnull @.str.5) #23
  %106 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %107 = shl nsw i32 %70, 1
  %108 = or disjoint i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = shl nsw i64 %109, 4
  %111 = tail call ptr %106(i64 noundef %110, ptr noundef nonnull @.str.6) #23
  %112 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 38
  %113 = load float, ptr %112, align 8, !tbaa !93
  %114 = load ptr, ptr %72, align 8, !tbaa !90
  %115 = load float, ptr %24, align 8, !tbaa !83
  %116 = fdiv float 1.000000e+00, %115
  call fastcc void @textbox_scale(ptr noundef nonnull %9, ptr noundef %114, float noundef %116) #24
  %117 = getelementptr inbounds %struct.TextBox, ptr %9, i64 0, i32 2
  %118 = load float, ptr %117, align 8, !tbaa !94
  %119 = fcmp une float %118, 0.000000e+00
  %120 = getelementptr inbounds %struct.TextBox, ptr %9, i64 0, i32 1
  %121 = load <2 x float>, ptr %9, align 8, !tbaa !84
  %122 = fadd <2 x float> %29, %121
  %123 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 37
  %124 = load float, ptr %123, align 4, !tbaa !96
  %125 = tail call float @llvm.fmuladd.f32(float %124, float 5.000000e-01, float -5.000000e-01)
  %126 = icmp sgt i32 %70, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %99
  %128 = zext nneg i32 %70 to i64
  br label %143

129:                                              ; preds = %143, %99
  %130 = icmp slt i32 %70, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 34
  store i16 1, ptr %132, align 8, !tbaa !97
  br label %414

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.TextBox, ptr %9, i64 0, i32 3
  %135 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 60
  %136 = fneg float %113
  %137 = icmp eq ptr %100, null
  %138 = load i32, ptr %10, align 4
  %139 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 41
  %140 = extractelement <2 x float> %121, i64 1
  %141 = extractelement <2 x float> %29, i64 0
  %142 = extractelement <2 x float> %29, i64 1
  br label %150

143:                                              ; preds = %127, %143
  %144 = phi i64 [ 0, %127 ], [ %148, %143 ]
  %145 = getelementptr inbounds %struct.CharInfo, ptr %69, i64 %144, i32 2
  %146 = load i8, ptr %145, align 2, !tbaa !98
  %147 = and i8 %146, -41
  store i8 %147, ptr %145, align 2, !tbaa !98
  %148 = add nuw nsw i64 %144, 1
  %149 = icmp eq i64 %148, %128
  br i1 %149, label %129, label %143, !llvm.loop !99

150:                                              ; preds = %133, %382
  %151 = phi float [ %140, %133 ], [ %383, %382 ]
  %152 = phi ptr [ null, %133 ], [ %199, %382 ]
  %153 = phi ptr [ %38, %133 ], [ %198, %382 ]
  %154 = phi ptr [ %105, %133 ], [ %389, %382 ]
  %155 = phi i32 [ 0, %133 ], [ %387, %382 ]
  %156 = phi i32 [ 0, %133 ], [ %386, %382 ]
  %157 = phi i32 [ 0, %133 ], [ %385, %382 ]
  %158 = phi i32 [ 0, %133 ], [ %384, %382 ]
  %159 = phi i32 [ 0, %133 ], [ %390, %382 ]
  %160 = phi <2 x float> [ %122, %133 ], [ %388, %382 ]
  %161 = load float, ptr %117, align 8
  %162 = fcmp une float %161, 0.000000e+00
  %163 = load float, ptr %9, align 8
  %164 = fadd float %141, %161
  %165 = extractelement <2 x float> %160, i64 0
  br label %166

166:                                              ; preds = %150, %242
  %167 = phi i32 [ %244, %242 ], [ %159, %150 ]
  %168 = phi i32 [ %249, %242 ], [ %157, %150 ]
  %169 = phi i32 [ %255, %242 ], [ %155, %150 ]
  %170 = phi float [ %256, %242 ], [ %165, %150 ]
  %171 = phi ptr [ %248, %242 ], [ %154, %150 ]
  %172 = phi ptr [ %198, %242 ], [ %153, %150 ]
  %173 = phi ptr [ %199, %242 ], [ %152, %150 ]
  %174 = sext i32 %167 to i64
  %175 = getelementptr inbounds %struct.CharInfo, ptr %69, i64 %174
  %176 = getelementptr inbounds i32, ptr %71, i64 %174
  %177 = load i32, ptr %176, align 4, !tbaa !63
  %178 = getelementptr inbounds %struct.CharInfo, ptr %69, i64 %174, i32 2
  %179 = load i8, ptr %178, align 2, !tbaa !98
  %180 = and i8 %179, 16
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %189, label %182

182:                                              ; preds = %166
  %183 = tail call i32 @towupper(i32 noundef %177) #23
  %184 = load i32, ptr %176, align 4, !tbaa !63
  %185 = icmp eq i32 %184, %183
  br i1 %185, label %189, label %186

186:                                              ; preds = %182
  %187 = load i8, ptr %178, align 2, !tbaa !98
  %188 = or i8 %187, 32
  store i8 %188, ptr %178, align 2, !tbaa !98
  br label %189

189:                                              ; preds = %182, %186, %166
  %190 = phi i32 [ %183, %186 ], [ %183, %182 ], [ %177, %166 ]
  %191 = tail call fastcc ptr @which_vfont(ptr noundef %20, ptr noundef nonnull %175) #24
  %192 = icmp eq ptr %191, null
  br i1 %192, label %392, label %193

193:                                              ; preds = %189
  %194 = icmp eq ptr %191, %173
  br i1 %194, label %197, label %195

195:                                              ; preds = %193
  %196 = tail call fastcc ptr @vfont_get_data(ptr noundef %0, ptr noundef nonnull %191) #24
  br label %197

197:                                              ; preds = %195, %193
  %198 = phi ptr [ %196, %195 ], [ %172, %193 ]
  %199 = phi ptr [ %191, %195 ], [ %173, %193 ]
  %200 = icmp eq ptr %198, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %197
  %202 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %202(ptr noundef %105) #23
  %203 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %203(ptr noundef %111) #23
  br label %954

204:                                              ; preds = %197
  switch i32 %190, label %205 [
    i32 10, label %219
    i32 0, label %219
  ]

205:                                              ; preds = %204
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @vfont_rwlock, i32 noundef 1) #23
  %206 = tail call fastcc ptr @find_vfont_char(ptr noundef nonnull %198, i32 noundef %190) #24
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @vfont_rwlock) #23
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %219

208:                                              ; preds = %205
  %209 = tail call zeroext i8 @BKE_vfont_is_builtin(ptr noundef nonnull %191) #24, !range !45
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %208
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @vfont_rwlock, i32 noundef 2) #23
  %212 = tail call fastcc ptr @find_vfont_char(ptr noundef nonnull %198, i32 noundef %190) #24
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = sext i32 %190 to i64
  %216 = tail call ptr @BLI_vfontchar_from_freetypefont(ptr noundef nonnull %191, i64 noundef %215) #23
  br label %217

217:                                              ; preds = %214, %211
  %218 = phi ptr [ %216, %214 ], [ %212, %211 ]
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @vfont_rwlock) #23
  br label %219

219:                                              ; preds = %204, %204, %205, %208, %217
  %220 = phi ptr [ %218, %217 ], [ null, %208 ], [ %206, %205 ], [ null, %204 ], [ null, %204 ]
  %221 = tail call fastcc float @char_width(ptr noundef %20, ptr noundef %220, ptr noundef nonnull %175) #24
  br i1 %162, label %222, label %265

222:                                              ; preds = %219
  %223 = getelementptr inbounds %struct.CharTrans, ptr %171, i64 0, i32 5
  %224 = load i8, ptr %223, align 4, !tbaa !100
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %226, label %265

226:                                              ; preds = %222
  %227 = fsub float %170, %163
  %228 = fadd float %221, %227
  %229 = fcmp ule float %228, %164
  %230 = icmp eq i32 %167, 0
  %231 = or i1 %229, %230
  br i1 %231, label %265, label %232

232:                                              ; preds = %226, %261
  %233 = phi i64 [ %262, %261 ], [ %174, %226 ]
  %234 = getelementptr inbounds i32, ptr %71, i64 %233
  %235 = load i32, ptr %234, align 4, !tbaa !63
  %236 = icmp eq i32 %235, 10
  br i1 %236, label %265, label %237

237:                                              ; preds = %232
  %238 = getelementptr inbounds %struct.CharTrans, ptr %105, i64 %233, i32 5
  %239 = load i8, ptr %238, align 4, !tbaa !100
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %241, label %265

241:                                              ; preds = %237
  switch i32 %235, label %261 [
    i32 32, label %242
    i32 45, label %242
  ]

242:                                              ; preds = %241, %241
  %243 = trunc i64 %233 to i32
  %244 = add nsw i32 %243, -1
  %245 = sub nsw i32 %167, %244
  %246 = sext i32 %245 to i64
  %247 = sub nsw i64 0, %246
  %248 = getelementptr inbounds %struct.CharTrans, ptr %171, i64 %247
  %249 = sub nsw i32 %168, %245
  %250 = icmp eq i32 %235, 32
  %251 = sext i1 %250 to i32
  %252 = add nsw i32 %169, %251
  %253 = icmp eq i32 %235, 45
  %254 = zext i1 %253 to i32
  %255 = add nsw i32 %252, %254
  %256 = load float, ptr %248, align 4, !tbaa !102
  %257 = getelementptr inbounds %struct.CharTrans, ptr %248, i64 1, i32 5
  store i8 1, ptr %257, align 4, !tbaa !100
  %258 = getelementptr inbounds %struct.CharInfo, ptr %69, i64 %233, i32 2
  %259 = load i8, ptr %258, align 2, !tbaa !98
  %260 = or i8 %259, 8
  store i8 %260, ptr %258, align 2, !tbaa !98
  br label %166

261:                                              ; preds = %241
  %262 = add nsw i64 %233, -1
  %263 = and i64 %262, 4294967295
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %232, !llvm.loop !103

265:                                              ; preds = %226, %222, %219, %232, %261, %237
  %266 = phi i32 [ %167, %237 ], [ %167, %261 ], [ %167, %232 ], [ %167, %226 ], [ %167, %222 ], [ %159, %219 ]
  %267 = phi i32 [ %168, %237 ], [ %168, %261 ], [ %168, %232 ], [ %168, %226 ], [ %168, %222 ], [ %157, %219 ]
  %268 = phi i32 [ %169, %237 ], [ %169, %261 ], [ %169, %232 ], [ %169, %226 ], [ %169, %222 ], [ %155, %219 ]
  %269 = phi float [ %170, %237 ], [ %170, %261 ], [ %170, %232 ], [ %170, %226 ], [ %170, %222 ], [ %165, %219 ]
  %270 = phi ptr [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %226 ], [ %171, %222 ], [ %154, %219 ]
  switch i32 %190, label %271 [
    i32 10, label %275
    i32 0, label %275
  ]

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.CharTrans, ptr %270, i64 0, i32 5
  %273 = load i8, ptr %272, align 4, !tbaa !100
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %321, label %275

275:                                              ; preds = %265, %265, %271
  store float %269, ptr %270, align 4, !tbaa !102
  %276 = getelementptr inbounds %struct.CharTrans, ptr %270, i64 0, i32 1
  %277 = extractelement <2 x float> %160, i64 1
  store float %277, ptr %276, align 4, !tbaa !104
  %278 = trunc i32 %156 to i16
  %279 = getelementptr inbounds %struct.CharTrans, ptr %270, i64 0, i32 3
  store i16 %278, ptr %279, align 4, !tbaa !105
  %280 = trunc i32 %267 to i16
  %281 = getelementptr inbounds %struct.CharTrans, ptr %270, i64 0, i32 4
  store i16 %280, ptr %281, align 2, !tbaa !106
  %282 = fsub float %277, %113
  %283 = fsub float %269, %125
  %284 = load float, ptr %9, align 8, !tbaa !107
  %285 = fsub float %283, %284
  %286 = sext i32 %156 to i64
  %287 = getelementptr inbounds %struct.TempLineInfo, ptr %111, i64 %286
  store float %285, ptr %287, align 4, !tbaa !108
  %288 = getelementptr inbounds %struct.TempLineInfo, ptr %111, i64 %286, i32 1
  store float %161, ptr %288, align 4, !tbaa !110
  %289 = getelementptr inbounds %struct.TempLineInfo, ptr %111, i64 %286, i32 2
  store i32 %267, ptr %289, align 4, !tbaa !111
  %290 = getelementptr inbounds %struct.TempLineInfo, ptr %111, i64 %286, i32 3
  store i32 %268, ptr %290, align 4, !tbaa !112
  %291 = load float, ptr %134, align 4, !tbaa !113
  %292 = fcmp une float %291, 0.000000e+00
  br i1 %292, label %293, label %312

293:                                              ; preds = %275
  %294 = load i32, ptr %135, align 8, !tbaa !114
  %295 = add nsw i32 %158, 1
  %296 = icmp sgt i32 %294, %295
  br i1 %296, label %297, label %312

297:                                              ; preds = %293
  %298 = fsub float %282, %151
  %299 = fneg float %298
  %300 = load float, ptr %24, align 8, !tbaa !83
  %301 = tail call float @llvm.fmuladd.f32(float %136, float %300, float %291)
  %302 = fsub float %301, %142
  %303 = fcmp olt float %302, %299
  br i1 %303, label %304, label %312

304:                                              ; preds = %297
  %305 = load ptr, ptr %72, align 8, !tbaa !90
  %306 = sext i32 %295 to i64
  %307 = getelementptr inbounds %struct.TextBox, ptr %305, i64 %306
  %308 = fdiv float 1.000000e+00, %300
  call fastcc void @textbox_scale(ptr noundef nonnull %9, ptr noundef %307, float noundef %308) #24
  %309 = load float, ptr %120, align 4, !tbaa !115
  %310 = fadd float %142, %309
  %311 = load float, ptr %9, align 8, !tbaa !107
  br label %312

312:                                              ; preds = %304, %297, %293, %275
  %313 = phi float [ %311, %304 ], [ %284, %297 ], [ %284, %293 ], [ %284, %275 ]
  %314 = phi float [ %309, %304 ], [ %151, %297 ], [ %151, %293 ], [ %151, %275 ]
  %315 = phi i32 [ %295, %304 ], [ %158, %297 ], [ %158, %293 ], [ %158, %275 ]
  %316 = phi float [ %310, %304 ], [ %282, %297 ], [ %282, %293 ], [ %282, %275 ]
  %317 = fadd float %141, %313
  %318 = add nsw i32 %156, 1
  %319 = insertelement <2 x float> poison, float %317, i64 0
  %320 = insertelement <2 x float> %319, float %316, i64 1
  br label %382

321:                                              ; preds = %271
  %322 = icmp eq i32 %190, 9
  store float %269, ptr %270, align 4, !tbaa !102
  %323 = getelementptr inbounds %struct.CharTrans, ptr %270, i64 0, i32 1
  %324 = extractelement <2 x float> %160, i64 1
  store float %324, ptr %323, align 4, !tbaa !104
  %325 = trunc i32 %156 to i16
  %326 = getelementptr inbounds %struct.CharTrans, ptr %270, i64 0, i32 3
  store i16 %325, ptr %326, align 4, !tbaa !105
  %327 = add nsw i32 %267, 1
  %328 = trunc i32 %267 to i16
  %329 = getelementptr inbounds %struct.CharTrans, ptr %270, i64 0, i32 4
  store i16 %328, ptr %329, align 2, !tbaa !106
  br i1 %322, label %330, label %339

330:                                              ; preds = %321
  %331 = fadd float %141, %163
  %332 = fsub float %269, %331
  %333 = fadd float %332, 0x3F847AE140000000
  %334 = fmul float %333, 5.000000e-01
  %335 = tail call float @llvm.ceil.f32(float %334)
  %336 = fmul float %335, 2.000000e+00
  %337 = fadd float %331, %336
  %338 = insertelement <2 x float> %160, float %337, i64 0
  br label %382

339:                                              ; preds = %321
  br i1 %137, label %357, label %340

340:                                              ; preds = %339
  %341 = icmp slt i32 %266, %138
  %342 = load i32, ptr %11, align 4
  %343 = icmp sgt i32 %266, %342
  %344 = select i1 %341, i1 true, i1 %343
  br i1 %344, label %357, label %345

345:                                              ; preds = %340
  %346 = sub nsw i32 %266, %138
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.EditFontSelBox, ptr %100, i64 %347
  %349 = load float, ptr %24, align 8, !tbaa !83
  %350 = fmul float %113, %349
  %351 = fmul float %350, 0xBFB99999A0000000
  %352 = tail call float @llvm.fmuladd.f32(float %324, float %349, float %351)
  %353 = getelementptr inbounds %struct.EditFontSelBox, ptr %100, i64 %347, i32 1
  store float %352, ptr %353, align 4, !tbaa !116
  %354 = getelementptr inbounds %struct.EditFontSelBox, ptr %100, i64 %347, i32 3
  store float %350, ptr %354, align 4, !tbaa !118
  %355 = fmul float %269, %349
  %356 = getelementptr inbounds %struct.EditFontSelBox, ptr %100, i64 %347, i32 2
  store float %355, ptr %356, align 4, !tbaa !119
  br label %357

357:                                              ; preds = %345, %340, %339
  %358 = phi ptr [ %348, %345 ], [ null, %340 ], [ null, %339 ]
  %359 = icmp eq i32 %190, 32
  br i1 %359, label %360, label %363

360:                                              ; preds = %357
  %361 = load float, ptr %139, align 4, !tbaa !120
  %362 = add nsw i32 %268, 1
  br label %363

363:                                              ; preds = %357, %360
  %364 = phi i32 [ %362, %360 ], [ %268, %357 ]
  %365 = phi float [ %361, %360 ], [ 1.000000e+00, %357 ]
  %366 = tail call fastcc float @char_width(ptr noundef %20, ptr noundef %220, ptr noundef %175) #24
  %367 = fmul float %365, %366
  %368 = load i16, ptr %175, align 2, !tbaa !121
  %369 = sitofp i16 %368 to float
  %370 = fdiv float %369, 4.000000e+01
  %371 = fadd float %370, 1.000000e+00
  %372 = tail call float @llvm.fmuladd.f32(float %367, float %371, float %125)
  %373 = fadd float %269, %372
  %374 = icmp eq ptr %358, null
  %375 = insertelement <2 x float> %160, float %373, i64 0
  br i1 %374, label %382, label %376

376:                                              ; preds = %363
  %377 = load float, ptr %24, align 8, !tbaa !83
  %378 = getelementptr inbounds %struct.EditFontSelBox, ptr %358, i64 0, i32 2
  %379 = load float, ptr %378, align 4, !tbaa !119
  %380 = fneg float %379
  %381 = tail call float @llvm.fmuladd.f32(float %373, float %377, float %380)
  store float %381, ptr %378, align 4, !tbaa !119
  br label %382

382:                                              ; preds = %363, %376, %330, %312
  %383 = phi float [ %314, %312 ], [ %151, %330 ], [ %151, %376 ], [ %151, %363 ]
  %384 = phi i32 [ %315, %312 ], [ %158, %330 ], [ %158, %376 ], [ %158, %363 ]
  %385 = phi i32 [ 0, %312 ], [ %327, %330 ], [ %327, %376 ], [ %327, %363 ]
  %386 = phi i32 [ %318, %312 ], [ %156, %330 ], [ %156, %376 ], [ %156, %363 ]
  %387 = phi i32 [ 0, %312 ], [ %268, %330 ], [ %364, %376 ], [ %364, %363 ]
  %388 = phi <2 x float> [ %320, %312 ], [ %338, %330 ], [ %375, %376 ], [ %375, %363 ]
  %389 = getelementptr inbounds %struct.CharTrans, ptr %270, i64 1
  %390 = add nsw i32 %266, 1
  %391 = icmp slt i32 %266, %70
  br i1 %391, label %150, label %392, !llvm.loop !122

392:                                              ; preds = %382, %189
  %393 = phi i32 [ %156, %189 ], [ %386, %382 ]
  %394 = phi ptr [ %172, %189 ], [ %198, %382 ]
  %395 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 34
  store i16 1, ptr %395, align 8, !tbaa !97
  br i1 %130, label %414, label %396

396:                                              ; preds = %392
  %397 = zext i32 %102 to i64
  br label %398

398:                                              ; preds = %396, %410
  %399 = phi i16 [ 1, %396 ], [ %411, %410 ]
  %400 = phi i64 [ 0, %396 ], [ %412, %410 ]
  %401 = getelementptr inbounds i32, ptr %71, i64 %400
  %402 = load i32, ptr %401, align 4, !tbaa !63
  %403 = icmp eq i32 %402, 10
  br i1 %403, label %408, label %404

404:                                              ; preds = %398
  %405 = getelementptr inbounds %struct.CharTrans, ptr %105, i64 %400, i32 5
  %406 = load i8, ptr %405, align 4, !tbaa !100
  %407 = icmp eq i8 %406, 0
  br i1 %407, label %410, label %408

408:                                              ; preds = %404, %398
  %409 = add i16 %399, 1
  store i16 %409, ptr %395, align 8, !tbaa !97
  br label %410

410:                                              ; preds = %404, %408
  %411 = phi i16 [ %399, %404 ], [ %409, %408 ]
  %412 = add nuw nsw i64 %400, 1
  %413 = icmp eq i64 %412, %397
  br i1 %413, label %414, label %398, !llvm.loop !123

414:                                              ; preds = %410, %131, %392
  %415 = phi ptr [ %38, %131 ], [ %394, %392 ], [ %394, %410 ]
  %416 = phi i32 [ 0, %131 ], [ %393, %392 ], [ %393, %410 ]
  %417 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 35
  %418 = load i8, ptr %417, align 2, !tbaa !124
  switch i8 %418, label %478 [
    i8 0, label %591
    i8 2, label %423
    i8 1, label %419
  ]

419:                                              ; preds = %414
  %420 = icmp sgt i32 %416, 0
  br i1 %420, label %421, label %452

421:                                              ; preds = %419
  %422 = extractelement <2 x float> %29, i64 0
  br label %453

423:                                              ; preds = %414
  %424 = icmp sgt i32 %416, 0
  br i1 %424, label %425, label %427

425:                                              ; preds = %423
  %426 = extractelement <2 x float> %29, i64 0
  br label %428

427:                                              ; preds = %428, %423
  br i1 %130, label %591, label %439

428:                                              ; preds = %425, %428
  %429 = phi ptr [ %437, %428 ], [ %111, %425 ]
  %430 = phi i32 [ %436, %428 ], [ 0, %425 ]
  %431 = getelementptr inbounds %struct.TempLineInfo, ptr %429, i64 0, i32 1
  %432 = load float, ptr %431, align 4, !tbaa !110
  %433 = load float, ptr %429, align 4, !tbaa !108
  %434 = fsub float %432, %433
  %435 = fadd float %426, %434
  store float %435, ptr %429, align 4, !tbaa !108
  %436 = add nuw nsw i32 %430, 1
  %437 = getelementptr inbounds %struct.TempLineInfo, ptr %429, i64 1
  %438 = icmp eq i32 %436, %416
  br i1 %438, label %427, label %428, !llvm.loop !125

439:                                              ; preds = %427, %439
  %440 = phi ptr [ %449, %439 ], [ %105, %427 ]
  %441 = phi i32 [ %450, %439 ], [ 0, %427 ]
  %442 = getelementptr inbounds %struct.CharTrans, ptr %440, i64 0, i32 3
  %443 = load i16, ptr %442, align 4, !tbaa !105
  %444 = sext i16 %443 to i64
  %445 = getelementptr inbounds %struct.TempLineInfo, ptr %111, i64 %444
  %446 = load float, ptr %445, align 4, !tbaa !108
  %447 = load float, ptr %440, align 4, !tbaa !102
  %448 = fadd float %446, %447
  store float %448, ptr %440, align 4, !tbaa !102
  %449 = getelementptr inbounds %struct.CharTrans, ptr %440, i64 1
  %450 = add nuw i32 %441, 1
  %451 = icmp eq i32 %441, %70
  br i1 %451, label %591, label %439, !llvm.loop !126

452:                                              ; preds = %453, %419
  br i1 %130, label %591, label %465

453:                                              ; preds = %421, %453
  %454 = phi ptr [ %463, %453 ], [ %111, %421 ]
  %455 = phi i32 [ %462, %453 ], [ 0, %421 ]
  %456 = getelementptr inbounds %struct.TempLineInfo, ptr %454, i64 0, i32 1
  %457 = load float, ptr %456, align 4, !tbaa !110
  %458 = load float, ptr %454, align 4, !tbaa !108
  %459 = fsub float %457, %458
  %460 = fadd float %422, %459
  %461 = fmul float %460, 5.000000e-01
  store float %461, ptr %454, align 4, !tbaa !108
  %462 = add nuw nsw i32 %455, 1
  %463 = getelementptr inbounds %struct.TempLineInfo, ptr %454, i64 1
  %464 = icmp eq i32 %462, %416
  br i1 %464, label %452, label %453, !llvm.loop !127

465:                                              ; preds = %452, %465
  %466 = phi ptr [ %475, %465 ], [ %105, %452 ]
  %467 = phi i32 [ %476, %465 ], [ 0, %452 ]
  %468 = getelementptr inbounds %struct.CharTrans, ptr %466, i64 0, i32 3
  %469 = load i16, ptr %468, align 4, !tbaa !105
  %470 = sext i16 %469 to i64
  %471 = getelementptr inbounds %struct.TempLineInfo, ptr %111, i64 %470
  %472 = load float, ptr %471, align 4, !tbaa !108
  %473 = load float, ptr %466, align 4, !tbaa !102
  %474 = fadd float %472, %473
  store float %474, ptr %466, align 4, !tbaa !102
  %475 = getelementptr inbounds %struct.CharTrans, ptr %466, i64 1
  %476 = add nuw i32 %467, 1
  %477 = icmp eq i32 %467, %70
  br i1 %477, label %591, label %465, !llvm.loop !128

478:                                              ; preds = %414
  %479 = icmp eq i8 %418, 4
  %480 = select i1 %479, i1 %119, i1 false
  br i1 %480, label %481, label %523

481:                                              ; preds = %478
  %482 = icmp sgt i32 %416, 0
  br i1 %482, label %483, label %485

483:                                              ; preds = %481
  %484 = extractelement <2 x float> %29, i64 0
  br label %488

485:                                              ; preds = %503, %481
  br i1 %130, label %591, label %486

486:                                              ; preds = %485
  %487 = zext i32 %102 to i64
  br label %507

488:                                              ; preds = %483, %503
  %489 = phi ptr [ %505, %503 ], [ %111, %483 ]
  %490 = phi i32 [ %504, %503 ], [ 0, %483 ]
  %491 = getelementptr inbounds %struct.TempLineInfo, ptr %489, i64 0, i32 1
  %492 = load float, ptr %491, align 4, !tbaa !110
  %493 = load float, ptr %489, align 4, !tbaa !108
  %494 = fsub float %492, %493
  %495 = fadd float %484, %494
  store float %495, ptr %489, align 4, !tbaa !108
  %496 = getelementptr inbounds %struct.TempLineInfo, ptr %489, i64 0, i32 2
  %497 = load i32, ptr %496, align 4, !tbaa !111
  %498 = icmp sgt i32 %497, 1
  br i1 %498, label %499, label %503

499:                                              ; preds = %488
  %500 = add nsw i32 %497, -1
  %501 = sitofp i32 %500 to float
  %502 = fdiv float %495, %501
  store float %502, ptr %489, align 4, !tbaa !108
  br label %503

503:                                              ; preds = %488, %499
  %504 = add nuw nsw i32 %490, 1
  %505 = getelementptr inbounds %struct.TempLineInfo, ptr %489, i64 1
  %506 = icmp eq i32 %504, %416
  br i1 %506, label %485, label %488, !llvm.loop !129

507:                                              ; preds = %486, %507
  %508 = phi i64 [ 0, %486 ], [ %521, %507 ]
  %509 = phi ptr [ %105, %486 ], [ %520, %507 ]
  %510 = getelementptr inbounds %struct.CharTrans, ptr %509, i64 0, i32 4
  %511 = load i16, ptr %510, align 2, !tbaa !106
  %512 = sitofp i16 %511 to float
  %513 = getelementptr inbounds %struct.CharTrans, ptr %509, i64 0, i32 3
  %514 = load i16, ptr %513, align 4, !tbaa !105
  %515 = sext i16 %514 to i64
  %516 = getelementptr inbounds %struct.TempLineInfo, ptr %111, i64 %515
  %517 = load float, ptr %516, align 4, !tbaa !108
  %518 = load float, ptr %509, align 4, !tbaa !102
  %519 = tail call float @llvm.fmuladd.f32(float %512, float %517, float %518)
  store float %519, ptr %509, align 4, !tbaa !102
  %520 = getelementptr inbounds %struct.CharTrans, ptr %509, i64 1
  %521 = add nuw nsw i64 %508, 1
  %522 = icmp eq i64 %521, %487
  br i1 %522, label %591, label %507, !llvm.loop !130

523:                                              ; preds = %478
  %524 = icmp eq i8 %418, 3
  %525 = select i1 %524, i1 %119, i1 false
  %526 = icmp sgt i32 %70, -1
  %527 = select i1 %525, i1 %526, i1 false
  br i1 %527, label %528, label %591

528:                                              ; preds = %523
  %529 = zext nneg i32 %70 to i64
  %530 = zext i32 %102 to i64
  %531 = extractelement <2 x float> %29, i64 0
  br label %532

532:                                              ; preds = %528, %586
  %533 = phi i64 [ 0, %528 ], [ %589, %586 ]
  %534 = phi float [ 0.000000e+00, %528 ], [ %587, %586 ]
  %535 = phi ptr [ %105, %528 ], [ %588, %586 ]
  br label %536

536:                                              ; preds = %543, %532
  %537 = phi i64 [ %549, %543 ], [ %533, %532 ]
  %538 = getelementptr inbounds i32, ptr %71, i64 %537
  %539 = load i32, ptr %538, align 4, !tbaa !63
  switch i32 %539, label %543 [
    i32 10, label %576
    i32 0, label %540
  ]

540:                                              ; preds = %536
  %541 = getelementptr inbounds %struct.CharTrans, ptr %105, i64 %537, i32 5
  %542 = load i8, ptr %541, align 4, !tbaa !100
  br label %550

543:                                              ; preds = %536
  %544 = getelementptr inbounds %struct.CharTrans, ptr %105, i64 %537, i32 5
  %545 = load i8, ptr %544, align 4, !tbaa !100
  %546 = icmp eq i8 %545, 0
  %547 = icmp ult i64 %537, %529
  %548 = select i1 %546, i1 %547, i1 false
  %549 = add nuw nsw i64 %537, 1
  br i1 %548, label %536, label %550, !llvm.loop !131

550:                                              ; preds = %543, %540
  %551 = phi i8 [ %542, %540 ], [ %545, %543 ]
  %552 = icmp eq i8 %551, 0
  br i1 %552, label %576, label %553

553:                                              ; preds = %550
  %554 = getelementptr inbounds i32, ptr %71, i64 %533
  %555 = load i32, ptr %554, align 4, !tbaa !63
  %556 = icmp eq i32 %555, 32
  br i1 %556, label %557, label %572

557:                                              ; preds = %553
  %558 = getelementptr inbounds %struct.CharTrans, ptr %535, i64 0, i32 3
  %559 = load i16, ptr %558, align 4, !tbaa !105
  %560 = sext i16 %559 to i64
  %561 = getelementptr inbounds %struct.TempLineInfo, ptr %111, i64 %560
  %562 = getelementptr inbounds %struct.TempLineInfo, ptr %111, i64 %560, i32 1
  %563 = load float, ptr %562, align 4, !tbaa !110
  %564 = load float, ptr %561, align 4, !tbaa !108
  %565 = fsub float %563, %564
  %566 = fadd float %531, %565
  %567 = getelementptr inbounds %struct.TempLineInfo, ptr %111, i64 %560, i32 3
  %568 = load i32, ptr %567, align 4, !tbaa !112
  %569 = sitofp i32 %568 to float
  %570 = fdiv float %566, %569
  %571 = fadd float %534, %570
  br label %572

572:                                              ; preds = %557, %553
  %573 = phi float [ %571, %557 ], [ %534, %553 ]
  %574 = load float, ptr %535, align 4, !tbaa !102
  %575 = fadd float %573, %574
  store float %575, ptr %535, align 4, !tbaa !102
  br label %576

576:                                              ; preds = %536, %572, %550
  %577 = phi float [ %573, %572 ], [ %534, %550 ], [ %534, %536 ]
  %578 = getelementptr inbounds i32, ptr %71, i64 %533
  %579 = load i32, ptr %578, align 4, !tbaa !63
  %580 = icmp eq i32 %579, 10
  br i1 %580, label %585, label %581

581:                                              ; preds = %576
  %582 = getelementptr inbounds %struct.CharTrans, ptr %105, i64 %533, i32 5
  %583 = load i8, ptr %582, align 4, !tbaa !100
  %584 = icmp eq i8 %583, 0
  br i1 %584, label %586, label %585

585:                                              ; preds = %581, %576
  br label %586

586:                                              ; preds = %585, %581
  %587 = phi float [ 0.000000e+00, %585 ], [ %577, %581 ]
  %588 = getelementptr inbounds %struct.CharTrans, ptr %535, i64 1
  %589 = add nuw nsw i64 %533, 1
  %590 = icmp eq i64 %589, %530
  br i1 %590, label %591, label %532, !llvm.loop !132

591:                                              ; preds = %465, %439, %586, %507, %452, %427, %485, %414, %523
  %592 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %592(ptr noundef %111) #23
  %593 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 7
  %594 = load ptr, ptr %593, align 8, !tbaa !133
  %595 = icmp eq ptr %594, null
  br i1 %595, label %725, label %596

596:                                              ; preds = %591
  %597 = getelementptr inbounds %struct.Object, ptr %594, i64 0, i32 3
  %598 = load i16, ptr %597, align 8, !tbaa !77
  %599 = icmp eq i16 %598, 2
  br i1 %599, label %600, label %725

600:                                              ; preds = %596
  %601 = getelementptr inbounds %struct.Object, ptr %594, i64 0, i32 118
  %602 = load ptr, ptr %601, align 8, !tbaa !134
  %603 = getelementptr inbounds %struct.CurveCache, ptr %602, i64 0, i32 3
  %604 = load ptr, ptr %603, align 8, !tbaa !135
  %605 = icmp eq ptr %604, null
  br i1 %605, label %725, label %606

606:                                              ; preds = %600
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %14) #22
  %607 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %608 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %12, ptr noundef nonnull %607) #23
  call void @copy_m3_m4(ptr noundef nonnull %13, ptr noundef nonnull %12) #23
  %609 = load ptr, ptr %593, align 8, !tbaa !133
  %610 = getelementptr inbounds %struct.Object, ptr %609, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %14, ptr noundef nonnull %610) #23
  call void @mul_m3_m3m3(ptr noundef nonnull %14, ptr noundef nonnull %14, ptr noundef nonnull %13) #23
  %611 = call fastcc float @normalize_v3(ptr noundef nonnull %14) #24
  %612 = load float, ptr %24, align 8, !tbaa !83
  %613 = fdiv float %611, %612
  br i1 %130, label %627, label %614

614:                                              ; preds = %606, %614
  %615 = phi float [ %623, %614 ], [ 0xC415AF1D80000000, %606 ]
  %616 = phi float [ %621, %614 ], [ 0x4415AF1D80000000, %606 ]
  %617 = phi ptr [ %625, %614 ], [ %105, %606 ]
  %618 = phi i32 [ %624, %614 ], [ 0, %606 ]
  %619 = load float, ptr %617, align 4, !tbaa !102
  %620 = fcmp ogt float %616, %619
  %621 = select i1 %620, float %619, float %616
  %622 = fcmp olt float %615, %619
  %623 = select i1 %622, float %619, float %615
  %624 = add nuw i32 %618, 1
  %625 = getelementptr inbounds %struct.CharTrans, ptr %617, i64 1
  %626 = icmp eq i32 %618, %70
  br i1 %626, label %627, label %614, !llvm.loop !137

627:                                              ; preds = %614, %606
  %628 = phi float [ 0x4415AF1D80000000, %606 ], [ %621, %614 ]
  %629 = phi float [ 0xC415AF1D80000000, %606 ], [ %623, %614 ]
  %630 = load ptr, ptr %593, align 8, !tbaa !133
  %631 = getelementptr inbounds %struct.Object, ptr %630, i64 0, i32 118
  %632 = load ptr, ptr %631, align 8, !tbaa !134
  %633 = getelementptr inbounds %struct.CurveCache, ptr %632, i64 0, i32 3
  %634 = load ptr, ptr %633, align 8, !tbaa !135
  %635 = getelementptr inbounds %struct.Path, ptr %634, i64 0, i32 2
  %636 = load float, ptr %635, align 4, !tbaa !138
  %637 = fmul float %613, %636
  %638 = fsub float %629, %628
  %639 = fdiv float %637, %638
  %640 = fcmp ogt float %639, 1.000000e+00
  br i1 %640, label %641, label %650

641:                                              ; preds = %627
  %642 = fdiv float 1.000000e+00, %639
  %643 = load i8, ptr %417, align 2, !tbaa !124
  switch i8 %643, label %650 [
    i8 2, label %644
    i8 1, label %646
    i8 4, label %649
  ]

644:                                              ; preds = %641
  %645 = fsub float 1.000000e+00, %642
  br label %650

646:                                              ; preds = %641
  %647 = fsub float 1.000000e+00, %642
  %648 = fmul float %647, 5.000000e-01
  br label %650

649:                                              ; preds = %641
  br label %650

650:                                              ; preds = %627, %641, %644, %649, %646
  %651 = phi float [ %642, %644 ], [ %642, %646 ], [ 1.000000e+00, %649 ], [ %642, %641 ], [ 1.000000e+00, %627 ]
  %652 = phi float [ %645, %644 ], [ %648, %646 ], [ 0.000000e+00, %649 ], [ 0.000000e+00, %641 ], [ 0.000000e+00, %627 ]
  %653 = fdiv float %651, %638
  %654 = load float, ptr %23, align 8, !tbaa !140
  %655 = call float @llvm.fmuladd.f32(float %653, float %654, float %652)
  br i1 %130, label %724, label %656

656:                                              ; preds = %650
  %657 = fmul float %653, 5.000000e-01
  %658 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 1
  %659 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 1
  %660 = icmp eq ptr %100, null
  %661 = load i32, ptr %10, align 4
  %662 = sext i32 %661 to i64
  %663 = zext i32 %102 to i64
  br label %664

664:                                              ; preds = %656, %720
  %665 = phi i64 [ 0, %656 ], [ %721, %720 ]
  %666 = phi ptr [ %105, %656 ], [ %722, %720 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #22
  %667 = getelementptr inbounds %struct.CharInfo, ptr %69, i64 %665
  %668 = getelementptr inbounds i32, ptr %71, i64 %665
  %669 = load i32, ptr %668, align 4, !tbaa !63
  %670 = getelementptr inbounds %struct.CharInfo, ptr %69, i64 %665, i32 2
  %671 = load i8, ptr %670, align 2, !tbaa !98
  %672 = and i8 %671, 32
  %673 = icmp eq i8 %672, 0
  br i1 %673, label %676, label %674

674:                                              ; preds = %664
  %675 = call i32 @towupper(i32 noundef %669) #23
  br label %676

676:                                              ; preds = %674, %664
  %677 = phi i32 [ %675, %674 ], [ %669, %664 ]
  %678 = call fastcc ptr @find_vfont_char(ptr noundef %415, i32 noundef %677) #24
  %679 = call fastcc float @char_width(ptr noundef nonnull %20, ptr noundef %678, ptr noundef nonnull %667) #24
  %680 = fmul float %657, %679
  %681 = load float, ptr %666, align 4, !tbaa !102
  %682 = fsub float %681, %628
  %683 = call float @llvm.fmuladd.f32(float %653, float %682, float %655)
  %684 = fcmp olt float %683, 0.000000e+00
  br i1 %684, label %688, label %685

685:                                              ; preds = %676
  %686 = fcmp ogt float %683, 1.000000e+00
  br i1 %686, label %687, label %688

687:                                              ; preds = %685
  br label %688

688:                                              ; preds = %676, %685, %687
  %689 = phi float [ 1.000000e+00, %687 ], [ %683, %685 ], [ 0.000000e+00, %676 ]
  %690 = load ptr, ptr %593, align 8, !tbaa !133
  %691 = call i32 @where_on_path(ptr noundef %690, float noundef %689, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef null, ptr noundef null, ptr noundef null) #23
  %692 = load ptr, ptr %593, align 8, !tbaa !133
  %693 = fadd float %680, %689
  %694 = call i32 @where_on_path(ptr noundef %692, float noundef %693, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef null, ptr noundef null, ptr noundef null) #23
  call fastcc void @mul_v3_fl(ptr noundef nonnull %15, float noundef %613) #24
  %695 = load float, ptr %658, align 4, !tbaa !84
  %696 = load float, ptr %17, align 4, !tbaa !84
  %697 = call float @atan2f(float noundef %695, float noundef %696) #23
  %698 = fsub float 0x400921FB60000000, %697
  %699 = getelementptr inbounds %struct.CharTrans, ptr %666, i64 0, i32 2
  store float %698, ptr %699, align 4, !tbaa !141
  %700 = call float @sinf(float noundef %698) #23
  %701 = load float, ptr %699, align 4, !tbaa !141
  %702 = call float @cosf(float noundef %701) #23
  %703 = getelementptr inbounds %struct.CharTrans, ptr %666, i64 0, i32 1
  %704 = load float, ptr %703, align 4, !tbaa !104
  %705 = load float, ptr %15, align 16, !tbaa !84
  %706 = call float @llvm.fmuladd.f32(float %700, float %704, float %705)
  store float %706, ptr %666, align 4, !tbaa !102
  %707 = load float, ptr %659, align 4, !tbaa !84
  %708 = call float @llvm.fmuladd.f32(float %702, float %704, float %707)
  store float %708, ptr %703, align 4, !tbaa !104
  br i1 %660, label %720, label %709

709:                                              ; preds = %688
  %710 = icmp slt i64 %665, %662
  %711 = load i32, ptr %11, align 4
  %712 = sext i32 %711 to i64
  %713 = icmp sgt i64 %665, %712
  %714 = select i1 %710, i1 true, i1 %713
  br i1 %714, label %720, label %715

715:                                              ; preds = %709
  %716 = sub nsw i64 %665, %662
  %717 = load float, ptr %699, align 4, !tbaa !141
  %718 = fneg float %717
  %719 = getelementptr inbounds %struct.EditFontSelBox, ptr %100, i64 %716, i32 4
  store float %718, ptr %719, align 4, !tbaa !142
  br label %720

720:                                              ; preds = %715, %709, %688
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #22
  %721 = add nuw nsw i64 %665, 1
  %722 = getelementptr inbounds %struct.CharTrans, ptr %666, i64 1
  %723 = icmp eq i64 %721, %663
  br i1 %723, label %724, label %664, !llvm.loop !143

724:                                              ; preds = %720, %650
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #22
  br label %725

725:                                              ; preds = %600, %724, %596, %591
  %726 = icmp eq ptr %100, null
  br i1 %726, label %751, label %727

727:                                              ; preds = %725
  %728 = load i32, ptr %11, align 4, !tbaa !63
  %729 = icmp slt i32 %728, 0
  br i1 %729, label %751, label %730

730:                                              ; preds = %727
  %731 = load i32, ptr %10, align 4, !tbaa !63
  %732 = sext i32 %731 to i64
  %733 = add nuw i32 %728, 1
  %734 = zext i32 %733 to i64
  br label %735

735:                                              ; preds = %730, %747
  %736 = phi i64 [ 0, %730 ], [ %748, %747 ]
  %737 = phi ptr [ %105, %730 ], [ %749, %747 ]
  %738 = icmp slt i64 %736, %732
  br i1 %738, label %747, label %739

739:                                              ; preds = %735
  %740 = load float, ptr %24, align 8, !tbaa !83
  %741 = sub nsw i64 %736, %732
  %742 = getelementptr inbounds %struct.EditFontSelBox, ptr %100, i64 %741
  %743 = load <2 x float>, ptr %737, align 4, !tbaa !84
  %744 = insertelement <2 x float> poison, float %740, i64 0
  %745 = shufflevector <2 x float> %744, <2 x float> poison, <2 x i32> zeroinitializer
  %746 = fmul <2 x float> %745, %743
  store <2 x float> %746, ptr %742, align 4, !tbaa !84
  br label %747

747:                                              ; preds = %735, %739
  %748 = add nuw nsw i64 %736, 1
  %749 = getelementptr inbounds %struct.CharTrans, ptr %737, i64 1
  %750 = icmp eq i64 %748, %734
  br i1 %750, label %751, label %735, !llvm.loop !144

751:                                              ; preds = %747, %727, %725
  switch i32 %2, label %806 [
    i32 9, label %752
    i32 8, label %752
    i32 3, label %752
    i32 2, label %752
  ]

752:                                              ; preds = %751, %751, %751, %751
  %753 = getelementptr inbounds %struct.EditFont, ptr %22, i64 0, i32 7
  %754 = load i32, ptr %753, align 4, !tbaa !81
  %755 = sext i32 %754 to i64
  switch i32 %2, label %779 [
    i32 8, label %756
    i32 2, label %756
    i32 9, label %763
    i32 3, label %763
  ]

756:                                              ; preds = %752, %752
  %757 = getelementptr inbounds %struct.CharTrans, ptr %105, i64 %755, i32 3
  %758 = load i16, ptr %757, align 4, !tbaa !105
  %759 = icmp eq i16 %758, 0
  br i1 %759, label %810, label %760

760:                                              ; preds = %756
  switch i32 %2, label %779 [
    i32 8, label %761
    i32 3, label %763
    i32 2, label %769
  ]

761:                                              ; preds = %760
  %762 = sext i16 %758 to i32
  br label %774

763:                                              ; preds = %752, %752, %760
  %764 = getelementptr inbounds %struct.CharTrans, ptr %105, i64 %755, i32 3
  %765 = load i16, ptr %764, align 4, !tbaa !105
  %766 = sext i16 %765 to i32
  %767 = icmp eq i32 %416, %766
  br i1 %767, label %810, label %768

768:                                              ; preds = %763
  switch i32 %2, label %779 [
    i32 9, label %777
    i32 3, label %772
    i32 8, label %774
  ]

769:                                              ; preds = %760
  %770 = sext i16 %758 to i32
  %771 = add nsw i32 %770, -1
  br label %779

772:                                              ; preds = %768
  %773 = add nsw i32 %766, 1
  br label %779

774:                                              ; preds = %761, %768
  %775 = phi i32 [ %762, %761 ], [ %766, %768 ]
  %776 = add nsw i32 %775, -10
  br label %779

777:                                              ; preds = %768
  %778 = add nsw i32 %766, 10
  br label %779

779:                                              ; preds = %752, %760, %768, %777, %774, %772, %769
  %780 = phi i32 [ %416, %768 ], [ %778, %777 ], [ %776, %774 ], [ %773, %772 ], [ %771, %769 ], [ %416, %760 ], [ %416, %752 ]
  %781 = getelementptr inbounds %struct.CharTrans, ptr %105, i64 %755, i32 4
  %782 = load i16, ptr %781, align 2, !tbaa !106
  store i32 0, ptr %753, align 4, !tbaa !81
  br i1 %126, label %783, label %810

783:                                              ; preds = %779, %801
  %784 = phi i32 [ %802, %801 ], [ 0, %779 ]
  %785 = phi ptr [ %803, %801 ], [ %105, %779 ]
  %786 = phi i32 [ %804, %801 ], [ 0, %779 ]
  %787 = getelementptr inbounds %struct.CharTrans, ptr %785, i64 0, i32 3
  %788 = load i16, ptr %787, align 4, !tbaa !105
  %789 = sext i16 %788 to i32
  %790 = icmp eq i32 %780, %789
  br i1 %790, label %791, label %799

791:                                              ; preds = %783
  %792 = getelementptr inbounds %struct.CharTrans, ptr %785, i64 0, i32 4
  %793 = load i16, ptr %792, align 2, !tbaa !106
  %794 = icmp eq i16 %793, %782
  br i1 %794, label %807, label %795

795:                                              ; preds = %791
  %796 = getelementptr inbounds %struct.CharTrans, ptr %785, i64 1, i32 4
  %797 = load i16, ptr %796, align 2, !tbaa !106
  %798 = icmp eq i16 %797, 0
  br i1 %798, label %807, label %801

799:                                              ; preds = %783
  %800 = icmp slt i32 %780, %789
  br i1 %800, label %806, label %801

801:                                              ; preds = %799, %795
  %802 = add nuw nsw i32 %784, 1
  store i32 %802, ptr %753, align 4, !tbaa !81
  %803 = getelementptr inbounds %struct.CharTrans, ptr %785, i64 1
  %804 = add nuw nsw i32 %786, 1
  %805 = icmp eq i32 %804, %70
  br i1 %805, label %810, label %783, !llvm.loop !145

806:                                              ; preds = %799, %751
  br i1 %41, label %866, label %807

807:                                              ; preds = %791, %795, %806
  %808 = getelementptr inbounds %struct.EditFont, ptr %22, i64 0, i32 7
  %809 = load i32, ptr %808, align 4, !tbaa !81
  br label %810

810:                                              ; preds = %801, %807, %779, %763, %756
  %811 = phi i32 [ %809, %807 ], [ 0, %779 ], [ %754, %763 ], [ %754, %756 ], [ %802, %801 ]
  %812 = sext i32 %811 to i64
  %813 = getelementptr inbounds %struct.CharTrans, ptr %105, i64 %812
  %814 = getelementptr inbounds %struct.CharTrans, ptr %105, i64 %812, i32 2
  %815 = load float, ptr %814, align 4, !tbaa !141
  %816 = call float @sinf(float noundef %815) #23
  %817 = load float, ptr %814, align 4, !tbaa !141
  %818 = call float @cosf(float noundef %817) #23
  %819 = getelementptr inbounds %struct.EditFont, ptr %22, i64 0, i32 5
  %820 = load float, ptr %24, align 8, !tbaa !83
  %821 = load float, ptr %813, align 4, !tbaa !102
  %822 = call float @llvm.fmuladd.f32(float %818, float 0xBFB99999A0000000, float %821)
  %823 = fmul float %820, %822
  store float %823, ptr %819, align 4, !tbaa !84
  %824 = load float, ptr %24, align 8, !tbaa !83
  %825 = getelementptr inbounds %struct.CharTrans, ptr %105, i64 %812, i32 1
  %826 = load float, ptr %825, align 4, !tbaa !104
  %827 = call float @llvm.fmuladd.f32(float %816, float 0x3FB99999A0000000, float %826)
  %828 = fmul float %824, %827
  %829 = getelementptr inbounds %struct.EditFont, ptr %22, i64 0, i32 5, i64 0, i64 1
  store float %828, ptr %829, align 4, !tbaa !84
  %830 = load float, ptr %24, align 8, !tbaa !83
  %831 = load float, ptr %813, align 4, !tbaa !102
  %832 = call float @llvm.fmuladd.f32(float %818, float 0x3FB99999A0000000, float %831)
  %833 = fmul float %830, %832
  %834 = getelementptr inbounds %struct.EditFont, ptr %22, i64 0, i32 5, i64 1
  store float %833, ptr %834, align 4, !tbaa !84
  %835 = load float, ptr %24, align 8, !tbaa !83
  %836 = load float, ptr %825, align 4, !tbaa !104
  %837 = call float @llvm.fmuladd.f32(float %816, float 0xBFB99999A0000000, float %836)
  %838 = fmul float %835, %837
  %839 = getelementptr inbounds %struct.EditFont, ptr %22, i64 0, i32 5, i64 1, i64 1
  store float %838, ptr %839, align 4, !tbaa !84
  %840 = load float, ptr %24, align 8, !tbaa !83
  %841 = fmul float %816, 0x3FE99999A0000000
  %842 = call float @llvm.fmuladd.f32(float %818, float 0x3FB99999A0000000, float %841)
  %843 = load float, ptr %813, align 4, !tbaa !102
  %844 = fadd float %842, %843
  %845 = fmul float %840, %844
  %846 = getelementptr inbounds %struct.EditFont, ptr %22, i64 0, i32 5, i64 2
  store float %845, ptr %846, align 4, !tbaa !84
  %847 = load float, ptr %24, align 8, !tbaa !83
  %848 = fmul float %818, 0x3FE99999A0000000
  %849 = call float @llvm.fmuladd.f32(float %816, float 0xBFB99999A0000000, float %848)
  %850 = load float, ptr %825, align 4, !tbaa !104
  %851 = fadd float %849, %850
  %852 = fmul float %847, %851
  %853 = getelementptr inbounds %struct.EditFont, ptr %22, i64 0, i32 5, i64 2, i64 1
  store float %852, ptr %853, align 4, !tbaa !84
  %854 = load float, ptr %24, align 8, !tbaa !83
  %855 = call float @llvm.fmuladd.f32(float %818, float 0xBFB99999A0000000, float %841)
  %856 = load float, ptr %813, align 4, !tbaa !102
  %857 = fadd float %855, %856
  %858 = fmul float %854, %857
  %859 = getelementptr inbounds %struct.EditFont, ptr %22, i64 0, i32 5, i64 3
  store float %858, ptr %859, align 4, !tbaa !84
  %860 = load float, ptr %24, align 8, !tbaa !83
  %861 = call float @llvm.fmuladd.f32(float %816, float 0x3FB99999A0000000, float %848)
  %862 = load float, ptr %825, align 4, !tbaa !104
  %863 = fadd float %861, %862
  %864 = fmul float %860, %863
  %865 = getelementptr inbounds %struct.EditFont, ptr %22, i64 0, i32 5, i64 3, i64 1
  store float %864, ptr %865, align 4, !tbaa !84
  br label %866

866:                                              ; preds = %810, %806
  switch i32 %2, label %954 [
    i32 10, label %867
    i32 0, label %869
  ]

867:                                              ; preds = %866
  %868 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %868(ptr noundef %105) #23
  br label %954

869:                                              ; preds = %866
  call void @BKE_nurbList_free(ptr noundef %3) #23
  br i1 %126, label %870, label %954

870:                                              ; preds = %869
  %871 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 31
  %872 = add nsw i32 %70, -1
  %873 = fadd float %125, 0x3FB99999A0000000
  %874 = getelementptr inbounds %struct.rctf, ptr %18, i64 0, i32 1
  %875 = getelementptr inbounds %struct.rctf, ptr %18, i64 0, i32 2
  %876 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 43
  %877 = getelementptr inbounds %struct.rctf, ptr %18, i64 0, i32 3
  %878 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 42
  %879 = zext nneg i32 %872 to i64
  %880 = zext nneg i32 %70 to i64
  br label %881

881:                                              ; preds = %870, %950
  %882 = phi i64 [ 0, %870 ], [ %952, %950 ]
  %883 = phi ptr [ %105, %870 ], [ %951, %950 ]
  %884 = getelementptr inbounds i32, ptr %71, i64 %882
  %885 = load i32, ptr %884, align 4, !tbaa !63
  %886 = getelementptr inbounds %struct.CharInfo, ptr %69, i64 %882
  %887 = getelementptr inbounds %struct.CharInfo, ptr %69, i64 %882, i32 2
  %888 = load i8, ptr %887, align 2, !tbaa !98
  %889 = and i8 %888, 32
  %890 = icmp eq i8 %889, 0
  br i1 %890, label %893, label %891

891:                                              ; preds = %881
  %892 = call i32 @towupper(i32 noundef %885) #23
  br label %893

893:                                              ; preds = %891, %881
  %894 = phi i32 [ %892, %891 ], [ %885, %881 ]
  %895 = getelementptr inbounds %struct.CharInfo, ptr %69, i64 %882, i32 1
  %896 = load i16, ptr %895, align 2, !tbaa !146
  %897 = sext i16 %896 to i32
  %898 = load i32, ptr %871, align 8, !tbaa !147
  %899 = icmp slt i32 %898, %897
  br i1 %899, label %900, label %901

900:                                              ; preds = %893
  store i16 0, ptr %895, align 2, !tbaa !146
  br label %901

901:                                              ; preds = %900, %893
  %902 = icmp eq i32 %894, 10
  br i1 %902, label %950, label %903

903:                                              ; preds = %901
  %904 = load float, ptr %883, align 4, !tbaa !102
  %905 = getelementptr inbounds %struct.CharTrans, ptr %883, i64 0, i32 1
  %906 = load float, ptr %905, align 4, !tbaa !104
  %907 = getelementptr inbounds %struct.CharTrans, ptr %883, i64 0, i32 2
  %908 = load float, ptr %907, align 4, !tbaa !141
  %909 = trunc i64 %882 to i32
  call fastcc void @buildchar(ptr noundef %0, ptr noundef %20, ptr noundef %3, i32 noundef %894, ptr noundef nonnull %886, float noundef %904, float noundef %906, float noundef %908, i32 noundef %909) #24
  %910 = load i8, ptr %887, align 2, !tbaa !98
  %911 = and i8 %910, 4
  %912 = icmp eq i8 %911, 0
  br i1 %912, label %950, label %913

913:                                              ; preds = %903
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #22
  %914 = icmp ult i64 %882, %879
  br i1 %914, label %915, label %932

915:                                              ; preds = %913
  %916 = add nuw nsw i64 %882, 1
  %917 = getelementptr inbounds i32, ptr %71, i64 %916
  %918 = load i32, ptr %917, align 4, !tbaa !63
  switch i32 %918, label %919 [
    i32 10, label %932
    i32 32, label %922
  ]

919:                                              ; preds = %915
  %920 = getelementptr inbounds %struct.CharInfo, ptr %69, i64 %916, i32 2
  %921 = load i8, ptr %920, align 2, !tbaa !98
  br label %927

922:                                              ; preds = %915
  %923 = getelementptr inbounds %struct.CharInfo, ptr %69, i64 %916, i32 2
  %924 = load i8, ptr %923, align 2, !tbaa !98
  %925 = and i8 %924, 4
  %926 = icmp eq i8 %925, 0
  br i1 %926, label %932, label %927

927:                                              ; preds = %919, %922
  %928 = phi i8 [ %921, %919 ], [ %924, %922 ]
  %929 = and i8 %928, 8
  %930 = icmp eq i8 %929, 0
  br i1 %930, label %931, label %932

931:                                              ; preds = %927
  br label %932

932:                                              ; preds = %915, %931, %927, %922, %913
  %933 = phi float [ %873, %931 ], [ 0.000000e+00, %927 ], [ 0.000000e+00, %922 ], [ 0.000000e+00, %915 ], [ 0.000000e+00, %913 ]
  %934 = call fastcc ptr @find_vfont_char(ptr noundef %415, i32 noundef %894) #24
  %935 = call fastcc float @char_width(ptr noundef %20, ptr noundef %934, ptr noundef nonnull %886) #24
  %936 = load i16, ptr %886, align 2, !tbaa !121
  %937 = sitofp i16 %936 to float
  %938 = fdiv float %937, 4.000000e+01
  %939 = fadd float %938, 1.000000e+00
  %940 = call float @llvm.fmuladd.f32(float %935, float %939, float %933)
  %941 = load float, ptr %883, align 4, !tbaa !102
  store float %941, ptr %18, align 4, !tbaa !148
  %942 = fadd float %941, %940
  store float %942, ptr %874, align 4, !tbaa !150
  %943 = load float, ptr %905, align 4, !tbaa !104
  store float %943, ptr %875, align 4, !tbaa !151
  %944 = load float, ptr %876, align 4, !tbaa !152
  %945 = fsub float %943, %944
  store float %945, ptr %877, align 4, !tbaa !153
  %946 = load float, ptr %878, align 8, !tbaa !154
  %947 = fadd float %946, 0xBFA99999A0000000
  %948 = load float, ptr %907, align 4, !tbaa !141
  %949 = load i16, ptr %895, align 2, !tbaa !146
  call fastcc void @build_underline(ptr noundef %20, ptr noundef %3, ptr noundef nonnull %18, float noundef %947, float noundef %948, i32 noundef %909, i16 noundef signext %949) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #22
  br label %950

950:                                              ; preds = %901, %932, %903
  %951 = getelementptr inbounds %struct.CharTrans, ptr %883, i64 1
  %952 = add nuw nsw i64 %882, 1
  %953 = icmp eq i64 %952, %880
  br i1 %953, label %954, label %881, !llvm.loop !155

954:                                              ; preds = %950, %869, %866, %867, %201
  %955 = phi i1 [ false, %867 ], [ false, %201 ], [ true, %866 ], [ true, %869 ], [ true, %950 ]
  %956 = phi i8 [ 0, %867 ], [ 0, %201 ], [ 1, %866 ], [ 1, %869 ], [ 1, %950 ]
  %957 = phi ptr [ null, %867 ], [ null, %201 ], [ %105, %866 ], [ %105, %869 ], [ %105, %950 ]
  %958 = icmp eq ptr %4, null
  br i1 %958, label %961, label %959

959:                                              ; preds = %954
  store ptr %71, ptr %4, align 8, !tbaa !51
  store i32 %70, ptr %5, align 4, !tbaa !63
  %960 = zext i1 %41 to i8
  store i8 %960, ptr %6, align 1, !tbaa !64
  br label %964

961:                                              ; preds = %954
  br i1 %41, label %962, label %964

962:                                              ; preds = %961
  %963 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %963(ptr noundef %71) #23
  br label %964

964:                                              ; preds = %961, %962, %959
  %965 = icmp eq ptr %957, null
  br i1 %965, label %972, label %966

966:                                              ; preds = %964
  %967 = icmp ne ptr %7, null
  %968 = and i1 %967, %955
  br i1 %968, label %969, label %970

969:                                              ; preds = %966
  store ptr %957, ptr %7, align 8, !tbaa !51
  br label %972

970:                                              ; preds = %966
  %971 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %971(ptr noundef nonnull %957) #23
  br label %972

972:                                              ; preds = %964, %970, %969, %37, %8
  %973 = phi i8 [ 0, %8 ], [ 0, %37 ], [ %956, %969 ], [ %956, %970 ], [ %956, %964 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #22
  ret i8 %973
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vfont_get_data(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !156 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %58, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VFont, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %58

8:                                                ; preds = %4
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @vfont_rwlock, i32 noundef 2) #23
  %9 = load ptr, ptr %5, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %56

11:                                               ; preds = %8
  %12 = tail call zeroext i8 @BKE_vfont_is_builtin(ptr noundef nonnull %1) #24, !range !45
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.VFont, ptr %1, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.VFont, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !55
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %18
  %23 = tail call ptr @dupPackedFile(ptr noundef nonnull %16) #23
  store ptr %23, ptr %19, align 8, !tbaa !55
  br label %49

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.VFont, ptr %1, i64 0, i32 1
  %26 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !157
  %28 = icmp eq ptr %27, null
  %29 = getelementptr inbounds %struct.Library, ptr %27, i64 0, i32 4
  %30 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 2
  %31 = select i1 %28, ptr %30, ptr %29
  %32 = tail call ptr @newPackedFile(ptr noundef null, ptr noundef nonnull %25, ptr noundef nonnull %31) #23
  %33 = getelementptr inbounds %struct.VFont, ptr %1, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !55
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load ptr, ptr %26, align 8, !tbaa !157
  %38 = icmp eq ptr %37, null
  %39 = getelementptr inbounds %struct.Library, ptr %37, i64 0, i32 4
  %40 = select i1 %38, ptr %30, ptr %39
  %41 = tail call ptr @newPackedFile(ptr noundef null, ptr noundef nonnull %25, ptr noundef nonnull %40) #23
  store ptr %41, ptr %33, align 8, !tbaa !55
  br label %42

42:                                               ; preds = %24, %36
  %43 = icmp eq ptr %32, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %42
  %45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull %25) #24
  br label %46

46:                                               ; preds = %11, %44
  %47 = tail call fastcc ptr @get_builtin_packedfile() #24
  %48 = icmp eq ptr %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %18, %22, %42, %46
  %50 = phi ptr [ %47, %46 ], [ %32, %42 ], [ %16, %22 ], [ %16, %18 ]
  %51 = tail call ptr @BLI_vfontdata_from_freetypefont(ptr noundef nonnull %50) #23
  store ptr %51, ptr %5, align 8, !tbaa !34
  %52 = getelementptr inbounds %struct.VFont, ptr %1, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !62
  %54 = icmp eq ptr %50, %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  tail call void @freePackedFile(ptr noundef nonnull %50) #23
  br label %56

56:                                               ; preds = %8, %49, %55, %46
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @vfont_rwlock) #23
  %57 = load ptr, ptr %5, align 8, !tbaa !34
  br label %58

58:                                               ; preds = %56, %4, %2
  %59 = phi ptr [ null, %2 ], [ %6, %4 ], [ %57, %56 ]
  ret ptr %59
}

; Function Attrs: optsize
declare i64 @BLI_strncpy_wchar_from_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @textbox_scale(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #10 !PGOFuncName !158 {
  %4 = load <4 x float>, ptr %1, align 4, !tbaa !84
  %5 = insertelement <4 x float> poison, float %2, i64 0
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> zeroinitializer
  %7 = fmul <4 x float> %4, %6
  store <4 x float> %7, ptr %0, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: nounwind optsize
declare i32 @towupper(i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @which_vfont(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !159 {
  %3 = getelementptr inbounds %struct.CharInfo, ptr %1, i64 0, i32 2
  %4 = load i8, ptr %3, align 2, !tbaa !98
  %5 = and i8 %4, 3
  switch i8 %5, label %18 [
    i8 1, label %6
    i8 2, label %10
    i8 3, label %14
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 56
  %8 = load ptr, ptr %7, align 8, !tbaa !160
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %21

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 57
  %12 = load ptr, ptr %11, align 8, !tbaa !161
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %21

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 58
  %16 = load ptr, ptr %15, align 8, !tbaa !162
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2, %14, %10, %6
  %19 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 55
  %20 = load ptr, ptr %19, align 8, !tbaa !85
  br label %21

21:                                               ; preds = %18, %14, %10, %6
  %22 = phi ptr [ %8, %6 ], [ %12, %10 ], [ %16, %14 ], [ %20, %18 ]
  ret ptr %22
}

; Function Attrs: optsize
declare void @BLI_rw_mutex_lock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_vfont_char(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !163 {
  %3 = load ptr, ptr %0, align 8, !tbaa !42
  %4 = zext i32 %1 to i64
  %5 = inttoptr i64 %4 to ptr
  %6 = tail call ptr @BLI_ghash_lookup(ptr noundef %3, ptr noundef %5) #23
  ret ptr %6
}

; Function Attrs: optsize
declare void @BLI_rw_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_vfontchar_from_freetypefont(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @char_width(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !164 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.CharInfo, ptr %2, i64 0, i32 2
  %7 = load i8, ptr %6, align 2, !tbaa !98
  %8 = and i8 %7, 32
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds %struct.VChar, ptr %1, i64 0, i32 2
  %11 = load float, ptr %10, align 4, !tbaa !165
  br i1 %9, label %16, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 19
  %14 = load float, ptr %13, align 8, !tbaa !166
  %15 = fmul float %11, %14
  br label %16

16:                                               ; preds = %5, %3, %12
  %17 = phi float [ %15, %12 ], [ 0.000000e+00, %3 ], [ %11, %5 ]
  ret float %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #11

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #13 !PGOFuncName !167 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #24
  ret float %2
}

; Function Attrs: optsize
declare i32 @where_on_path(ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #10 !PGOFuncName !168 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !84
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !84
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !84
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #14

; Function Attrs: optsize
declare void @BKE_nurbList_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @buildchar(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, float noundef %5, float noundef %6, float noundef %7, i32 noundef %8) unnamed_addr #0 !PGOFuncName !169 {
  %10 = tail call fastcc ptr @which_vfont(ptr noundef %1, ptr noundef %4) #24
  %11 = tail call fastcc ptr @vfont_get_data(ptr noundef %0, ptr noundef %10) #24
  %12 = icmp eq ptr %11, null
  br i1 %12, label %180, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Curve, ptr %1, i64 0, i32 40
  %15 = load float, ptr %14, align 8, !tbaa !83
  %16 = getelementptr inbounds %struct.Curve, ptr %1, i64 0, i32 39
  %17 = load float, ptr %16, align 4, !tbaa !170
  %18 = tail call float @sinf(float noundef %7) #23
  %19 = tail call float @cosf(float noundef %7) #23
  %20 = tail call fastcc ptr @find_vfont_char(ptr noundef nonnull %11, i32 noundef %3) #24
  %21 = icmp eq ptr %20, null
  br i1 %21, label %180, label %22

22:                                               ; preds = %13
  %23 = load ptr, ptr %20, align 8, !tbaa !46
  %24 = icmp eq ptr %23, null
  br i1 %24, label %180, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.Curve, ptr %1, i64 0, i32 27
  %27 = getelementptr inbounds %struct.CharInfo, ptr %4, i64 0, i32 1
  %28 = fcmp une float %17, 0.000000e+00
  %29 = fcmp une float %7, 0.000000e+00
  %30 = fneg float %18
  %31 = getelementptr inbounds %struct.CharInfo, ptr %4, i64 0, i32 2
  %32 = getelementptr inbounds %struct.Curve, ptr %1, i64 0, i32 19
  %33 = insertelement <2 x float> poison, float %18, i64 0
  %34 = insertelement <2 x float> %33, float %19, i64 1
  %35 = insertelement <2 x float> poison, float %19, i64 0
  %36 = insertelement <2 x float> %35, float %30, i64 1
  %37 = insertelement <2 x float> poison, float %5, i64 0
  %38 = insertelement <2 x float> %37, float %6, i64 1
  %39 = insertelement <2 x float> poison, float %15, i64 0
  %40 = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> zeroinitializer
  br label %41

41:                                               ; preds = %25, %177
  %42 = phi ptr [ %23, %25 ], [ %178, %177 ]
  %43 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 18
  %44 = load ptr, ptr %43, align 8, !tbaa !49
  %45 = icmp eq ptr %44, null
  br i1 %45, label %177, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %48 = tail call ptr %47(i64 noundef 88, ptr noundef nonnull @.str.10) #23
  %49 = icmp eq ptr %48, null
  br i1 %49, label %180, label %50

50:                                               ; preds = %46
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %48, ptr noundef nonnull align 8 dereferenceable(88) %42, i64 88, i1 false)
  %51 = load i16, ptr %26, align 4, !tbaa !171
  %52 = getelementptr inbounds %struct.Nurb, ptr %48, i64 0, i32 9
  store i16 %51, ptr %52, align 4, !tbaa !172
  %53 = getelementptr inbounds %struct.Nurb, ptr %48, i64 0, i32 15
  %54 = getelementptr inbounds %struct.Nurb, ptr %48, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false)
  store i16 1, ptr %54, align 2, !tbaa !173
  %55 = getelementptr inbounds %struct.Nurb, ptr %48, i64 0, i32 21
  store i32 %8, ptr %55, align 4, !tbaa !174
  %56 = load i16, ptr %27, align 2, !tbaa !146
  %57 = icmp sgt i16 %56, 0
  %58 = add nsw i16 %56, -1
  %59 = select i1 %57, i16 %58, i16 0
  %60 = getelementptr inbounds %struct.Nurb, ptr %48, i64 0, i32 3
  store i16 %59, ptr %60, align 2
  %61 = getelementptr inbounds %struct.Nurb, ptr %48, i64 0, i32 6
  %62 = load i32, ptr %61, align 8, !tbaa !175
  %63 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %64 = sext i32 %62 to i64
  %65 = mul nsw i64 %64, 72
  %66 = tail call ptr %63(i64 noundef %65, ptr noundef nonnull @.str.11) #23
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %50
  %69 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %69(ptr noundef nonnull %48) #23
  br label %180

70:                                               ; preds = %50
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %66, ptr nonnull align 4 %44, i64 %65, i1 false)
  %71 = getelementptr inbounds %struct.Nurb, ptr %48, i64 0, i32 18
  store ptr %66, ptr %71, align 8, !tbaa !49
  %72 = load i32, ptr %61, align 8, !tbaa !175
  %73 = icmp sgt i32 %72, 0
  %74 = select i1 %28, i1 %73, i1 false
  br i1 %74, label %75, label %95

75:                                               ; preds = %70, %75
  %76 = phi ptr [ %92, %75 ], [ %66, %70 ]
  %77 = phi i32 [ %93, %75 ], [ %72, %70 ]
  %78 = getelementptr inbounds [3 x float], ptr %76, i64 0, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !84
  %80 = load float, ptr %76, align 4, !tbaa !84
  %81 = tail call float @llvm.fmuladd.f32(float %17, float %79, float %80)
  store float %81, ptr %76, align 4, !tbaa !84
  %82 = getelementptr inbounds [3 x [3 x float]], ptr %76, i64 0, i64 1
  %83 = getelementptr inbounds [3 x [3 x float]], ptr %76, i64 0, i64 1, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !84
  %85 = load float, ptr %82, align 4, !tbaa !84
  %86 = tail call float @llvm.fmuladd.f32(float %17, float %84, float %85)
  store float %86, ptr %82, align 4, !tbaa !84
  %87 = getelementptr inbounds [3 x [3 x float]], ptr %76, i64 0, i64 2
  %88 = getelementptr inbounds [3 x [3 x float]], ptr %76, i64 0, i64 2, i64 1
  %89 = load float, ptr %88, align 4, !tbaa !84
  %90 = load float, ptr %87, align 4, !tbaa !84
  %91 = tail call float @llvm.fmuladd.f32(float %17, float %89, float %90)
  store float %91, ptr %87, align 4, !tbaa !84
  %92 = getelementptr inbounds %struct.BezTriple, ptr %76, i64 1
  %93 = add nsw i32 %77, -1
  %94 = icmp ugt i32 %77, 1
  br i1 %94, label %75, label %95, !llvm.loop !176

95:                                               ; preds = %75, %70
  %96 = icmp sgt i32 %72, 0
  %97 = select i1 %29, i1 %96, i1 false
  br i1 %97, label %98, label %133

98:                                               ; preds = %95, %98
  %99 = phi ptr [ %130, %98 ], [ %66, %95 ]
  %100 = phi i32 [ %131, %98 ], [ %72, %95 ]
  %101 = load float, ptr %99, align 4, !tbaa !84
  %102 = getelementptr inbounds float, ptr %99, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !84
  %104 = insertelement <2 x float> poison, float %103, i64 0
  %105 = shufflevector <2 x float> %104, <2 x float> poison, <2 x i32> zeroinitializer
  %106 = fmul <2 x float> %34, %105
  %107 = insertelement <2 x float> poison, float %101, i64 0
  %108 = shufflevector <2 x float> %107, <2 x float> poison, <2 x i32> zeroinitializer
  %109 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %36, <2 x float> %108, <2 x float> %106)
  store <2 x float> %109, ptr %99, align 4, !tbaa !84
  %110 = getelementptr inbounds float, ptr %99, i64 3
  %111 = load float, ptr %110, align 4, !tbaa !84
  %112 = getelementptr inbounds float, ptr %99, i64 4
  %113 = load float, ptr %112, align 4, !tbaa !84
  %114 = insertelement <2 x float> poison, float %113, i64 0
  %115 = shufflevector <2 x float> %114, <2 x float> poison, <2 x i32> zeroinitializer
  %116 = fmul <2 x float> %34, %115
  %117 = insertelement <2 x float> poison, float %111, i64 0
  %118 = shufflevector <2 x float> %117, <2 x float> poison, <2 x i32> zeroinitializer
  %119 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %36, <2 x float> %118, <2 x float> %116)
  store <2 x float> %119, ptr %110, align 4, !tbaa !84
  %120 = getelementptr inbounds float, ptr %99, i64 6
  %121 = load float, ptr %120, align 4, !tbaa !84
  %122 = getelementptr inbounds float, ptr %99, i64 7
  %123 = load float, ptr %122, align 4, !tbaa !84
  %124 = insertelement <2 x float> poison, float %123, i64 0
  %125 = shufflevector <2 x float> %124, <2 x float> poison, <2 x i32> zeroinitializer
  %126 = fmul <2 x float> %34, %125
  %127 = insertelement <2 x float> poison, float %121, i64 0
  %128 = shufflevector <2 x float> %127, <2 x float> poison, <2 x i32> zeroinitializer
  %129 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %36, <2 x float> %128, <2 x float> %126)
  store <2 x float> %129, ptr %120, align 4, !tbaa !84
  %130 = getelementptr inbounds %struct.BezTriple, ptr %99, i64 1
  %131 = add nsw i32 %100, -1
  %132 = icmp ugt i32 %100, 1
  br i1 %132, label %98, label %133, !llvm.loop !177

133:                                              ; preds = %98, %95
  %134 = load i8, ptr %31, align 2, !tbaa !98
  %135 = and i8 %134, 32
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %157, label %137

137:                                              ; preds = %133
  %138 = load float, ptr %32, align 8, !tbaa !166
  %139 = icmp sgt i32 %72, 0
  br i1 %139, label %140, label %176

140:                                              ; preds = %137
  %141 = insertelement <2 x float> poison, float %138, i64 0
  %142 = shufflevector <2 x float> %141, <2 x float> poison, <2 x i32> zeroinitializer
  br label %143

143:                                              ; preds = %140, %143
  %144 = phi ptr [ %154, %143 ], [ %66, %140 ]
  %145 = phi i32 [ %155, %143 ], [ %72, %140 ]
  %146 = load <2 x float>, ptr %144, align 4, !tbaa !84
  %147 = fmul <2 x float> %142, %146
  store <2 x float> %147, ptr %144, align 4, !tbaa !84
  %148 = getelementptr inbounds float, ptr %144, i64 3
  %149 = load <2 x float>, ptr %148, align 4, !tbaa !84
  %150 = fmul <2 x float> %142, %149
  store <2 x float> %150, ptr %148, align 4, !tbaa !84
  %151 = getelementptr inbounds float, ptr %144, i64 6
  %152 = load <2 x float>, ptr %151, align 4, !tbaa !84
  %153 = fmul <2 x float> %142, %152
  store <2 x float> %153, ptr %151, align 4, !tbaa !84
  %154 = getelementptr inbounds %struct.BezTriple, ptr %144, i64 1
  %155 = add nsw i32 %145, -1
  %156 = icmp ugt i32 %145, 1
  br i1 %156, label %143, label %157, !llvm.loop !178

157:                                              ; preds = %143, %133
  %158 = icmp sgt i32 %72, 0
  br i1 %158, label %159, label %176

159:                                              ; preds = %157, %159
  %160 = phi ptr [ %173, %159 ], [ %66, %157 ]
  %161 = phi i32 [ %174, %159 ], [ %72, %157 ]
  %162 = load <2 x float>, ptr %160, align 4, !tbaa !84
  %163 = fadd <2 x float> %162, %38
  %164 = fmul <2 x float> %40, %163
  store <2 x float> %164, ptr %160, align 4, !tbaa !84
  %165 = getelementptr inbounds float, ptr %160, i64 3
  %166 = load <2 x float>, ptr %165, align 4, !tbaa !84
  %167 = fadd <2 x float> %166, %38
  %168 = fmul <2 x float> %40, %167
  store <2 x float> %168, ptr %165, align 4, !tbaa !84
  %169 = getelementptr inbounds float, ptr %160, i64 6
  %170 = load <2 x float>, ptr %169, align 4, !tbaa !84
  %171 = fadd <2 x float> %170, %38
  %172 = fmul <2 x float> %40, %171
  store <2 x float> %172, ptr %169, align 4, !tbaa !84
  %173 = getelementptr inbounds %struct.BezTriple, ptr %160, i64 1
  %174 = add nsw i32 %161, -1
  %175 = icmp ugt i32 %161, 1
  br i1 %175, label %159, label %176, !llvm.loop !179

176:                                              ; preds = %159, %137, %157
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef nonnull %48) #23
  br label %177

177:                                              ; preds = %176, %41
  %178 = load ptr, ptr %42, align 8, !tbaa !180
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %41, !llvm.loop !181

180:                                              ; preds = %46, %177, %13, %22, %68, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_underline(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, i32 noundef %5, i16 noundef signext %6) unnamed_addr #0 !PGOFuncName !182 {
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %9 = tail call ptr %8(i64 noundef 88, ptr noundef nonnull @.str.12) #23
  %10 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 27
  %11 = load i16, ptr %10, align 4, !tbaa !171
  %12 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 9
  store i16 %11, ptr %12, align 4, !tbaa !172
  %13 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 18
  store ptr null, ptr %13, align 8, !tbaa !49
  %14 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 15
  %15 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  store i16 8, ptr %15, align 2, !tbaa !173
  %16 = add nsw i32 %5, 1000
  %17 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 21
  store i32 %16, ptr %17, align 4, !tbaa !174
  %18 = icmp sgt i16 %6, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %7
  %20 = add nsw i16 %6, -1
  %21 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 3
  store i16 %20, ptr %21, align 2, !tbaa !183
  br label %22

22:                                               ; preds = %19, %7
  %23 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 6
  store i32 4, ptr %23, align 8, !tbaa !175
  %24 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 7
  store i32 1, ptr %24, align 4, !tbaa !184
  %25 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 11
  store i16 4, ptr %25, align 8, !tbaa !185
  %26 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 12
  store i16 1, ptr %26, align 2, !tbaa !186
  %27 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 13
  store i16 1, ptr %27, align 4, !tbaa !187
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %29 = tail call ptr %28(i64 noundef 144, ptr noundef nonnull @.str.13) #23
  %30 = load float, ptr %2, align 4, !tbaa !148
  %31 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 3
  %32 = load float, ptr %31, align 4, !tbaa !153
  %33 = fadd float %32, %3
  tail call fastcc void @copy_v4_fl4(ptr noundef %29, float noundef %30, float noundef %33) #24
  %34 = getelementptr inbounds %struct.BPoint, ptr %29, i64 1
  %35 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 1
  %36 = load float, ptr %35, align 4, !tbaa !150
  %37 = load float, ptr %31, align 4, !tbaa !153
  %38 = fadd float %37, %3
  tail call fastcc void @copy_v4_fl4(ptr noundef nonnull %34, float noundef %36, float noundef %38) #24
  %39 = getelementptr inbounds %struct.BPoint, ptr %29, i64 2
  %40 = load float, ptr %35, align 4, !tbaa !150
  %41 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 2
  %42 = load float, ptr %41, align 4, !tbaa !151
  %43 = fadd float %42, %3
  tail call fastcc void @copy_v4_fl4(ptr noundef nonnull %39, float noundef %40, float noundef %43) #24
  %44 = getelementptr inbounds %struct.BPoint, ptr %29, i64 3
  %45 = load float, ptr %2, align 4, !tbaa !148
  %46 = load float, ptr %41, align 4, !tbaa !151
  %47 = fadd float %46, %3
  tail call fastcc void @copy_v4_fl4(ptr noundef nonnull %44, float noundef %45, float noundef %47) #24
  %48 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 17
  store ptr %29, ptr %48, align 8, !tbaa !188
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %9) #23
  %49 = fcmp une float %4, 0.000000e+00
  br i1 %49, label %50, label %79

50:                                               ; preds = %22
  %51 = tail call float @sinf(float noundef %4) #23
  %52 = tail call float @cosf(float noundef %4) #23
  %53 = load i32, ptr %23, align 8, !tbaa !175
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %50
  %56 = fneg float %51
  br label %57

57:                                               ; preds = %55, %57
  %58 = phi ptr [ %29, %55 ], [ %74, %57 ]
  %59 = phi i32 [ %53, %55 ], [ %75, %57 ]
  %60 = load float, ptr %58, align 4, !tbaa !84
  %61 = load float, ptr %2, align 4, !tbaa !148
  %62 = fsub float %60, %61
  %63 = getelementptr inbounds float, ptr %58, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !84
  %65 = load float, ptr %41, align 4, !tbaa !151
  %66 = fsub float %64, %65
  %67 = fmul float %51, %66
  %68 = tail call float @llvm.fmuladd.f32(float %52, float %62, float %67)
  %69 = fadd float %61, %68
  store float %69, ptr %58, align 4, !tbaa !84
  %70 = fmul float %52, %66
  %71 = tail call float @llvm.fmuladd.f32(float %56, float %62, float %70)
  %72 = load float, ptr %41, align 4, !tbaa !151
  %73 = fadd float %72, %71
  store float %73, ptr %63, align 4, !tbaa !84
  %74 = getelementptr inbounds %struct.BPoint, ptr %58, i64 1
  %75 = add nsw i32 %59, -1
  %76 = icmp ugt i32 %59, 1
  br i1 %76, label %57, label %77, !llvm.loop !189

77:                                               ; preds = %57, %50
  %78 = load ptr, ptr %48, align 8, !tbaa !188
  br label %79

79:                                               ; preds = %77, %22
  %80 = phi ptr [ %78, %77 ], [ %29, %22 ]
  %81 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 40
  %82 = load float, ptr %81, align 8, !tbaa !83
  tail call fastcc void @mul_v2_fl(ptr noundef %80, float noundef %82) #24
  %83 = getelementptr inbounds %struct.BPoint, ptr %80, i64 1
  %84 = load float, ptr %81, align 8, !tbaa !83
  tail call fastcc void @mul_v2_fl(ptr noundef nonnull %83, float noundef %84) #24
  %85 = getelementptr inbounds %struct.BPoint, ptr %80, i64 2
  %86 = load float, ptr %81, align 8, !tbaa !83
  tail call fastcc void @mul_v2_fl(ptr noundef nonnull %85, float noundef %86) #24
  %87 = getelementptr inbounds %struct.BPoint, ptr %80, i64 3
  %88 = load float, ptr %81, align 8, !tbaa !83
  tail call fastcc void @mul_v2_fl(ptr noundef nonnull %87, float noundef %88) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_vfont_to_curve_nubase(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call zeroext i8 @BKE_vfont_to_curve_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #24, !range !45
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_vfont_to_curve(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 3
  %7 = tail call zeroext i8 @BKE_vfont_to_curve_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #24, !range !45
  ret i8 %7
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: optsize
declare ptr @newPackedFileMemory(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @dupPackedFile(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !190 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #24
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #23
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #24
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #24
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !191 {
  %3 = load float, ptr %0, align 4, !tbaa !84
  %4 = load float, ptr %1, align 4, !tbaa !84
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !84
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !84
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !84
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !84
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #10 !PGOFuncName !192 {
  %4 = load float, ptr %1, align 4, !tbaa !84
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !84
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !84
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !84
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !84
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #17 !PGOFuncName !193 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !84
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !84
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v4_fl4(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2) unnamed_addr #17 !PGOFuncName !194 {
  store float %1, ptr %0, align 4, !tbaa !84
  %4 = getelementptr inbounds float, ptr %0, i64 1
  store float %2, ptr %4, align 4, !tbaa !84
  %5 = getelementptr inbounds float, ptr %0, i64 2
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %5, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #10 !PGOFuncName !195 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !84
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !84
  ret void
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #21

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind willreturn memory(argmem: read) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { nounwind optsize }
attributes #24 = { optsize }
attributes #25 = { nounwind optsize willreturn memory(read) }

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
!45 = !{i8 0, i8 2}
!46 = !{!47, !37, i64 0}
!47 = !{!"VChar", !48, i64 0, !41, i64 16, !44, i64 20}
!48 = !{!"ListBase", !37, i64 0, !37, i64 8}
!49 = !{!50, !37, i64 72}
!50 = !{!"Nurb", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !41, i64 24, !41, i64 28, !38, i64 32, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !40, i64 80, !40, i64 82, !41, i64 84}
!51 = !{!37, !37, i64 0}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = distinct !{!54, !53}
!55 = !{!35, !37, i64 1160}
!56 = !{!"font.c:BLI_ghashIterator_done"}
!57 = !{!58, !37, i64 8}
!58 = !{!"GHashIterator", !37, i64 0, !37, i64 8, !41, i64 16}
!59 = !{!"font.c:BLI_ghashIterator_getValue"}
!60 = !{!61, !37, i64 16}
!61 = !{!"_gh_Entry", !37, i64 0, !37, i64 8, !37, i64 16}
!62 = !{!35, !37, i64 1152}
!63 = !{!41, !41, i64 0}
!64 = !{!38, !38, i64 0}
!65 = !{!66, !41, i64 2108}
!66 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !48, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!67 = !{!"font.c:get_builtin_packedfile"}
!68 = !{!66, !37, i64 0}
!69 = distinct !{!69, !53}
!70 = !{!71, !37, i64 296}
!71 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !72, i64 312, !37, i64 360, !48, i64 368, !48, i64 384, !48, i64 400, !48, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !44, i64 616, !44, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !44, i64 1048, !44, i64 1052, !48, i64 1056, !48, i64 1072, !48, i64 1088, !48, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !48, i64 1176, !48, i64 1192, !48, i64 1208, !48, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !44, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !73, i64 1304, !73, i64 1312, !41, i64 1320, !41, i64 1324, !48, i64 1328, !48, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !48, i64 1400, !37, i64 1416}
!72 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!73 = !{!"long", !38, i64 0}
!74 = !{!75, !37, i64 376}
!75 = !{!"Curve", !36, i64 0, !37, i64 120, !37, i64 128, !48, i64 136, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !38, i64 220, !38, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !44, i64 252, !44, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !41, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !41, i64 292, !41, i64 296, !38, i64 300, !40, i64 304, !38, i64 306, !38, i64 307, !44, i64 308, !44, i64 312, !44, i64 316, !44, i64 320, !44, i64 324, !44, i64 328, !44, i64 332, !44, i64 336, !44, i64 340, !44, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !37, i64 368, !37, i64 376, !38, i64 384, !37, i64 448, !37, i64 456, !37, i64 464, !37, i64 472, !37, i64 480, !41, i64 488, !41, i64 492, !37, i64 496, !76, i64 504, !44, i64 512, !44, i64 516, !44, i64 520, !38, i64 524, !38, i64 525, !38, i64 526}
!76 = !{!"CharInfo", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !40, i64 6}
!77 = !{!71, !40, i64 136}
!78 = !{!79, !41, i64 80}
!79 = !{!"EditFont", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84}
!80 = !{!79, !41, i64 84}
!81 = !{!79, !41, i64 76}
!82 = !{!79, !41, i64 72}
!83 = !{!75, !44, i64 320}
!84 = !{!44, !44, i64 0}
!85 = !{!75, !37, i64 448}
!86 = !{!75, !37, i64 368}
!87 = !{!79, !37, i64 16}
!88 = !{!75, !41, i64 360}
!89 = !{!75, !37, i64 496}
!90 = !{!75, !37, i64 480}
!91 = !{!79, !37, i64 32}
!92 = !{i32 -1, i32 2}
!93 = !{!75, !44, i64 312}
!94 = !{!95, !44, i64 8}
!95 = !{!"TextBox", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!96 = !{!75, !44, i64 308}
!97 = !{!75, !40, i64 304}
!98 = !{!76, !38, i64 4}
!99 = distinct !{!99, !53}
!100 = !{!101, !38, i64 16}
!101 = !{!"CharTrans", !44, i64 0, !44, i64 4, !44, i64 8, !40, i64 12, !40, i64 14, !38, i64 16}
!102 = !{!101, !44, i64 0}
!103 = distinct !{!103, !53}
!104 = !{!101, !44, i64 4}
!105 = !{!101, !40, i64 12}
!106 = !{!101, !40, i64 14}
!107 = !{!95, !44, i64 0}
!108 = !{!109, !44, i64 0}
!109 = !{!"TempLineInfo", !44, i64 0, !44, i64 4, !41, i64 8, !41, i64 12}
!110 = !{!109, !44, i64 4}
!111 = !{!109, !41, i64 8}
!112 = !{!109, !41, i64 12}
!113 = !{!95, !44, i64 12}
!114 = !{!75, !41, i64 488}
!115 = !{!95, !44, i64 4}
!116 = !{!117, !44, i64 4}
!117 = !{!"EditFontSelBox", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16}
!118 = !{!117, !44, i64 12}
!119 = !{!117, !44, i64 8}
!120 = !{!75, !44, i64 324}
!121 = !{!76, !40, i64 0}
!122 = distinct !{!122, !53}
!123 = distinct !{!123, !53}
!124 = !{!75, !38, i64 306}
!125 = distinct !{!125, !53}
!126 = distinct !{!126, !53}
!127 = distinct !{!127, !53}
!128 = distinct !{!128, !53}
!129 = distinct !{!129, !53}
!130 = distinct !{!130, !53}
!131 = distinct !{!131, !53}
!132 = distinct !{!132, !53}
!133 = !{!75, !37, i64 176}
!134 = !{!71, !37, i64 1280}
!135 = !{!136, !37, i64 48}
!136 = !{!"CurveCache", !48, i64 0, !48, i64 16, !48, i64 32, !37, i64 48}
!137 = distinct !{!137, !53}
!138 = !{!139, !44, i64 12}
!139 = !{!"Path", !37, i64 0, !41, i64 8, !44, i64 12}
!140 = !{!75, !44, i64 336}
!141 = !{!101, !44, i64 8}
!142 = !{!117, !44, i64 16}
!143 = distinct !{!143, !53}
!144 = distinct !{!144, !53}
!145 = distinct !{!145, !53}
!146 = !{!76, !40, i64 2}
!147 = !{!71, !41, i64 456}
!148 = !{!149, !44, i64 0}
!149 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!150 = !{!149, !44, i64 4}
!151 = !{!149, !44, i64 8}
!152 = !{!75, !44, i64 332}
!153 = !{!149, !44, i64 12}
!154 = !{!75, !44, i64 328}
!155 = distinct !{!155, !53}
!156 = !{!"font.c:vfont_get_data"}
!157 = !{!35, !37, i64 24}
!158 = !{!"font.c:textbox_scale"}
!159 = !{!"font.c:which_vfont"}
!160 = !{!75, !37, i64 456}
!161 = !{!75, !37, i64 464}
!162 = !{!75, !37, i64 472}
!163 = !{!"font.c:find_vfont_char"}
!164 = !{!"font.c:char_width"}
!165 = !{!47, !44, i64 20}
!166 = !{!75, !44, i64 256}
!167 = !{!"font.c:normalize_v3"}
!168 = !{!"font.c:mul_v3_fl"}
!169 = !{!"font.c:buildchar"}
!170 = !{!75, !44, i64 316}
!171 = !{!75, !40, i64 284}
!172 = !{!50, !40, i64 36}
!173 = !{!50, !40, i64 22}
!174 = !{!50, !41, i64 84}
!175 = !{!50, !41, i64 24}
!176 = distinct !{!176, !53}
!177 = distinct !{!177, !53}
!178 = distinct !{!178, !53}
!179 = distinct !{!179, !53}
!180 = !{!50, !37, i64 0}
!181 = distinct !{!181, !53}
!182 = !{!"font.c:build_underline"}
!183 = !{!50, !40, i64 18}
!184 = !{!50, !41, i64 28}
!185 = !{!50, !40, i64 40}
!186 = !{!50, !40, i64 42}
!187 = !{!50, !40, i64 44}
!188 = !{!50, !37, i64 64}
!189 = distinct !{!189, !53}
!190 = !{!"font.c:normalize_v3_v3"}
!191 = !{!"font.c:dot_v3v3"}
!192 = !{!"font.c:mul_v3_v3fl"}
!193 = !{!"font.c:zero_v3"}
!194 = !{!"font.c:copy_v4_fl4"}
!195 = !{!"font.c:mul_v2_fl"}

; ModuleID = 'blender/source/blender/blenfont/intern/blf_glyph.c'
source_filename = "blender/source/blender/blenfont/intern/blf_glyph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.FontBLF = type { ptr, ptr, [3 x float], [3 x float], float, i32, i32, i32, i32, [4 x float], [4 x float], [16 x double], %struct.rctf, i32, i32, i32, i32, i32, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.FontBufInfoBLF }
%struct.rctf = type { float, float, float, float }
%struct.FontBufInfoBLF = type { ptr, ptr, i32, i32, i32, ptr, [4 x float] }
%struct.GlyphCacheBLF = type { ptr, ptr, i32, i32, [257 x %struct.ListBase], [256 x ptr], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float }
%struct.FT_FaceRec_ = type { i64, i64, i64, i64, i64, ptr, ptr, i32, ptr, i32, ptr, %struct.FT_Generic_, %struct.FT_BBox_, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, %struct.FT_ListRec_, %struct.FT_Generic_, ptr, ptr }
%struct.FT_BBox_ = type { i64, i64, i64, i64 }
%struct.FT_ListRec_ = type { ptr, ptr }
%struct.FT_Generic_ = type { ptr, ptr }
%struct.FT_SizeRec_ = type { ptr, %struct.FT_Generic_, %struct.FT_Size_Metrics_, ptr }
%struct.FT_Size_Metrics_ = type { i16, i16, i64, i64, i64, i64, i64, i64 }
%struct.GlyphBLF = type { ptr, ptr, i32, i32, %struct.rctf, float, i32, i32, i32, i32, ptr, i32, i32, i32, [2 x [2 x float]], float, float, i16 }
%struct.FT_Bitmap_ = type { i32, i32, i32, ptr, i16, i8, i8, ptr }
%struct.FT_GlyphSlotRec_ = type { ptr, ptr, ptr, i32, %struct.FT_Generic_, %struct.FT_Glyph_Metrics_, i64, i64, %struct.FT_Vector_, i32, %struct.FT_Bitmap_, i32, i32, %struct.FT_Outline_, i32, ptr, ptr, i64, i64, i64, ptr, ptr }
%struct.FT_Glyph_Metrics_ = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.FT_Vector_ = type { i64, i64 }
%struct.FT_Outline_ = type { i16, i16, ptr, ptr, ptr, i32 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [20 x i8] c"blf_glyph_cache_new\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"blf_glyph_add\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"glyph bitmap\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.blf_glyph_cache_texture = private unnamed_addr constant [24 x i8] c"blf_glyph_cache_texture\00", align 1
@__const.blf_texture3_draw.soft = private unnamed_addr constant [9 x float] [float 6.250000e-02, float 1.250000e-01, float 6.250000e-02, float 1.250000e-01, float 2.500000e-01, float 1.250000e-01, float 6.250000e-02, float 1.250000e-01, float 6.250000e-02], align 16
@__const.blf_texture5_draw.soft = private unnamed_addr constant [25 x float] [float 0x3F91111120000000, float 0x3F91111120000000, float 0x3FA1111120000000, float 0x3F91111120000000, float 0x3F91111120000000, float 0x3F91111120000000, float 0x3FA99999A0000000, float 0x3FB5555560000000, float 0x3FA99999A0000000, float 0x3F91111120000000, float 0x3FA1111120000000, float 0x3FB5555560000000, float 0x3FC1111120000000, float 0x3FB5555560000000, float 0x3FA1111120000000, float 0x3F91111120000000, float 0x3FA99999A0000000, float 0x3FB5555560000000, float 0x3FA99999A0000000, float 0x3F91111120000000, float 0x3F91111120000000, float 0x3F91111120000000, float 0x3FA1111120000000, float 0x3F91111120000000, float 0x3F91111120000000], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @blf_glyph_cache_find(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3, %16
  %8 = phi ptr [ %17, %16 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !38
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %8, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !42
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %19, label %16

16:                                               ; preds = %12, %7
  %17 = load ptr, ptr %8, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %7, !llvm.loop !43

19:                                               ; preds = %12, %16, %3
  %20 = phi ptr [ null, %3 ], [ null, %16 ], [ %8, %12 ]
  ret ptr %20
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @blf_glyph_cache_new(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 6248, ptr noundef nonnull @.str) #10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 2
  %5 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 13
  %6 = load <2 x i32>, ptr %5, align 8, !tbaa !45
  %7 = shufflevector <2 x i32> %6, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %7, ptr %4, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6160) %8, i8 0, i64 6160, i1 false)
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 1024, ptr noundef nonnull @.str) #10
  %11 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 6
  store ptr %10, ptr %11, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 7
  store <4 x i32> <i32 256, i32 -1, i32 0, i32 0>, ptr %12, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 11
  store i32 3, ptr %13, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = getelementptr inbounds %struct.FT_FaceRec_, ptr %15, i64 0, i32 4
  %17 = load i64, ptr %16, align 8, !tbaa !53
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 16
  store i32 %18, ptr %19, align 4, !tbaa !60
  %20 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 17
  store i32 %18, ptr %20, align 8, !tbaa !61
  %21 = getelementptr inbounds %struct.FT_FaceRec_, ptr %15, i64 0, i32 22
  %22 = load ptr, ptr %21, align 8, !tbaa !62
  %23 = getelementptr inbounds %struct.FT_SizeRec_, ptr %22, i64 0, i32 2, i32 4
  %24 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 18
  %25 = load <2 x i64>, ptr %23, align 8, !tbaa !63
  %26 = sitofp <2 x i64> %25 to <2 x float>
  %27 = fmul <2 x float> %26, <float 1.562500e-02, float 1.562500e-02>
  store <2 x float> %27, ptr %24, align 4, !tbaa !64
  %28 = getelementptr inbounds %struct.FT_FaceRec_, ptr %15, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !65
  %30 = and i64 %29, 1
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.FT_FaceRec_, ptr %15, i64 0, i32 12
  %34 = getelementptr inbounds %struct.FT_FaceRec_, ptr %15, i64 0, i32 12, i32 2
  %35 = getelementptr inbounds %struct.FT_SizeRec_, ptr %22, i64 0, i32 2
  %36 = getelementptr inbounds %struct.FT_FaceRec_, ptr %15, i64 0, i32 13
  %37 = load i16, ptr %36, align 8, !tbaa !66
  %38 = uitofp i16 %37 to float
  %39 = load <2 x i64>, ptr %34, align 8, !tbaa !63
  %40 = load <2 x i64>, ptr %33, align 8, !tbaa !63
  %41 = sub nsw <2 x i64> %39, %40
  %42 = sitofp <2 x i64> %41 to <2 x float>
  %43 = load <2 x i16>, ptr %35, align 8, !tbaa !67
  %44 = uitofp <2 x i16> %43 to <2 x float>
  %45 = insertelement <2 x float> poison, float %38, i64 0
  %46 = shufflevector <2 x float> %45, <2 x float> poison, <2 x i32> zeroinitializer
  %47 = fdiv <2 x float> %44, %46
  %48 = fmul <2 x float> %47, %42
  br label %55

49:                                               ; preds = %1
  %50 = getelementptr inbounds %struct.FT_SizeRec_, ptr %22, i64 0, i32 2, i32 6
  %51 = load <2 x i64>, ptr %50, align 8, !tbaa !63
  %52 = sitofp <2 x i64> %51 to <2 x float>
  %53 = fmul <2 x float> %52, <float 1.562500e-02, float 1.562500e-02>
  %54 = shufflevector <2 x float> %53, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %55

55:                                               ; preds = %49, %32
  %56 = phi <2 x float> [ %54, %49 ], [ %48, %32 ]
  %57 = fptosi <2 x float> %56 to <2 x i32>
  %58 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 12
  store <2 x i32> %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 14
  store i32 0, ptr %59, align 4, !tbaa !68
  %60 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 15
  store i32 0, ptr %60, align 8, !tbaa !69
  %61 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 18
  tail call void @BLI_addhead(ptr noundef nonnull %61, ptr noundef nonnull %3) #10
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @blf_glyph_cache_clear(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 18
  %3 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call void @blf_glyph_cache_free(ptr noundef nonnull %6) #11
  %7 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !70

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @blf_glyph_cache_free(ptr noundef %0) local_unnamed_addr #2 {
  br label %2

2:                                                ; preds = %1, %11
  %3 = phi i64 [ 0, %1 ], [ %12, %11 ]
  %4 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %0, i64 0, i32 4, i64 %3
  %5 = tail call ptr @BLI_pophead(ptr noundef nonnull %4) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %2 ]
  tail call void @blf_glyph_free(ptr noundef nonnull %8) #11
  %9 = tail call ptr @BLI_pophead(ptr noundef nonnull %4) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !71

11:                                               ; preds = %7, %2
  %12 = add nuw nsw i64 %3, 1
  %13 = icmp eq i64 %12, 257
  br i1 %13, label %14, label %2, !llvm.loop !72

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %0, i64 0, i32 8
  %16 = load i32, ptr %15, align 4, !tbaa !73
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = add nuw nsw i32 %16, 1
  %20 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %0, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  tail call void @glDeleteTextures(i32 noundef %19, ptr noundef %21) #10
  br label %22

22:                                               ; preds = %18, %14
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  tail call void %23(ptr noundef %25) #10
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %26(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @blf_glyph_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.GlyphBLF, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %3) #10
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %8(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare void @glDeleteTextures(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @blf_glyph_search(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call i32 @blf_hash(i32 noundef %1) #10
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %0, i64 0, i32 4, i64 %4
  br label %6

6:                                                ; preds = %10, %2
  %7 = phi ptr [ %5, %2 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.GlyphBLF, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !76
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %6, !llvm.loop !77

14:                                               ; preds = %6, %10
  ret ptr %8
}

; Function Attrs: optsize
declare i32 @blf_hash(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @blf_glyph_add(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.FT_Bitmap_, align 8
  %5 = alloca %struct.FT_BBox_, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #12
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 93), align 4, !tbaa !78
  %7 = and i16 %6, 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  %8 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  %10 = tail call ptr @blf_glyph_search(ptr noundef %9, i32 noundef %2) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %141

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !83
  tail call void @BLI_spin_lock(ptr noundef %14) #10
  %15 = load ptr, ptr %8, align 8, !tbaa !82
  %16 = tail call ptr @blf_glyph_search(ptr noundef %15, i32 noundef %2) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %13, align 8, !tbaa !83
  tail call void @BLI_spin_unlock(ptr noundef %19) #10
  br label %141

20:                                               ; preds = %12
  %21 = icmp ne i16 %7, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 17
  %24 = load i32, ptr %23, align 8, !tbaa !84
  %25 = and i32 %24, 64
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 10, i32 8
  %28 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %29 = load ptr, ptr %28, align 8, !tbaa !48
  %30 = tail call i32 @FT_Load_Glyph(ptr noundef %29, i32 noundef %1, i32 noundef %27) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %55, label %37

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = tail call i32 @FT_Load_Glyph(ptr noundef %34, i32 noundef %1, i32 noundef 131072) #10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32, %22
  %38 = load ptr, ptr %13, align 8, !tbaa !83
  tail call void @BLI_spin_unlock(ptr noundef %38) #10
  br label %141

39:                                               ; preds = %32
  %40 = load ptr, ptr %33, align 8, !tbaa !48
  %41 = getelementptr inbounds %struct.FT_FaceRec_, ptr %40, i64 0, i32 21
  %42 = load ptr, ptr %41, align 8, !tbaa !85
  %43 = tail call i32 @FT_Render_Glyph(ptr noundef %42, i32 noundef 2) #10
  call void @FT_Bitmap_New(ptr noundef nonnull %4) #10
  %44 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 20
  %45 = load ptr, ptr %44, align 8, !tbaa !86
  %46 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %42, i64 0, i32 10
  %47 = call i32 @FT_Bitmap_Convert(ptr noundef %45, ptr noundef nonnull %46, ptr noundef nonnull %4, i32 noundef 1) #10
  %48 = add nsw i32 %47, %43
  %49 = load ptr, ptr %44, align 8, !tbaa !86
  %50 = call i32 @FT_Bitmap_Copy(ptr noundef %49, ptr noundef nonnull %4, ptr noundef nonnull %46) #10
  %51 = add nsw i32 %48, %50
  %52 = load ptr, ptr %44, align 8, !tbaa !86
  %53 = call i32 @FT_Bitmap_Done(ptr noundef %52, ptr noundef nonnull %4) #10
  %54 = add nsw i32 %51, %53
  br label %60

55:                                               ; preds = %22
  %56 = load ptr, ptr %28, align 8, !tbaa !48
  %57 = getelementptr inbounds %struct.FT_FaceRec_, ptr %56, i64 0, i32 21
  %58 = load ptr, ptr %57, align 8, !tbaa !85
  %59 = tail call i32 @FT_Render_Glyph(ptr noundef %58, i32 noundef 0) #10
  br label %60

60:                                               ; preds = %55, %39
  %61 = phi ptr [ %42, %39 ], [ %58, %55 ]
  %62 = phi i32 [ %54, %39 ], [ %59, %55 ]
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %61, i64 0, i32 9
  %66 = load i32, ptr %65, align 8, !tbaa !87
  %67 = icmp eq i32 %66, 1651078259
  br i1 %67, label %70, label %68

68:                                               ; preds = %64, %60
  %69 = load ptr, ptr %13, align 8, !tbaa !83
  call void @BLI_spin_unlock(ptr noundef %69) #10
  br label %141

70:                                               ; preds = %64
  %71 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %72 = call ptr %71(i64 noundef 112, ptr noundef nonnull @.str.1) #10
  %73 = getelementptr inbounds %struct.GlyphBLF, ptr %72, i64 0, i32 2
  store i32 %2, ptr %73, align 8, !tbaa !76
  %74 = getelementptr inbounds %struct.GlyphBLF, ptr %72, i64 0, i32 3
  store i32 %1, ptr %74, align 4, !tbaa !93
  %75 = getelementptr inbounds %struct.GlyphBLF, ptr %72, i64 0, i32 8
  store i32 -1, ptr %75, align 4, !tbaa !94
  %76 = getelementptr inbounds %struct.GlyphBLF, ptr %72, i64 0, i32 9
  store i32 -1, ptr %76, align 8, !tbaa !95
  %77 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %61, i64 0, i32 10
  %78 = load i32, ptr %77, align 8, !tbaa.struct !96
  %79 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %61, i64 0, i32 10, i32 1
  %80 = load i32, ptr %79, align 4, !tbaa.struct !98
  %81 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %61, i64 0, i32 10, i32 2
  %82 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %61, i64 0, i32 10, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa.struct !99
  %84 = getelementptr inbounds %struct.GlyphBLF, ptr %72, i64 0, i32 11
  store i32 %80, ptr %84, align 8, !tbaa !100
  %85 = getelementptr inbounds %struct.GlyphBLF, ptr %72, i64 0, i32 12
  store i32 %78, ptr %85, align 4, !tbaa !101
  %86 = icmp eq i32 %80, 0
  %87 = icmp eq i32 %78, 0
  %88 = select i1 %86, i1 true, i1 %87
  br i1 %88, label %115, label %89

89:                                               ; preds = %70
  %90 = mul nsw i32 %78, %80
  %91 = icmp sgt i32 %90, 0
  %92 = select i1 %21, i1 %91, i1 false
  br i1 %92, label %93, label %105

93:                                               ; preds = %89, %93
  %94 = phi i64 [ %99, %93 ], [ 0, %89 ]
  %95 = getelementptr inbounds i8, ptr %83, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !97
  %97 = icmp ne i8 %96, 0
  %98 = sext i1 %97 to i8
  store i8 %98, ptr %95, align 1, !tbaa !97
  %99 = add nuw nsw i64 %94, 1
  %100 = load i32, ptr %84, align 8, !tbaa !100
  %101 = load i32, ptr %85, align 4, !tbaa !101
  %102 = mul nsw i32 %101, %100
  %103 = sext i32 %102 to i64
  %104 = icmp slt i64 %99, %103
  br i1 %104, label %93, label %105, !llvm.loop !102

105:                                              ; preds = %93, %89
  %106 = phi i32 [ %90, %89 ], [ %102, %93 ]
  %107 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %108 = sext i32 %106 to i64
  %109 = call ptr %107(i64 noundef %108, ptr noundef nonnull @.str.2) #10
  %110 = getelementptr inbounds %struct.GlyphBLF, ptr %72, i64 0, i32 10
  store ptr %109, ptr %110, align 8, !tbaa !74
  %111 = load i32, ptr %84, align 8, !tbaa !100
  %112 = load i32, ptr %85, align 4, !tbaa !101
  %113 = mul nsw i32 %112, %111
  %114 = sext i32 %113 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %109, ptr align 1 %83, i64 %114, i1 false)
  br label %115

115:                                              ; preds = %105, %70
  %116 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %61, i64 0, i32 8
  %117 = load i64, ptr %116, align 8, !tbaa !103
  %118 = sitofp i64 %117 to float
  %119 = fmul float %118, 1.562500e-02
  %120 = getelementptr inbounds %struct.GlyphBLF, ptr %72, i64 0, i32 5
  store float %119, ptr %120, align 8, !tbaa !104
  %121 = fptosi float %119 to i32
  %122 = getelementptr inbounds %struct.GlyphBLF, ptr %72, i64 0, i32 6
  store i32 %121, ptr %122, align 4, !tbaa !105
  %123 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %61, i64 0, i32 11
  %124 = getelementptr inbounds %struct.GlyphBLF, ptr %72, i64 0, i32 15
  %125 = load <2 x i32>, ptr %123, align 8, !tbaa !45
  %126 = sitofp <2 x i32> %125 to <2 x float>
  store <2 x float> %126, ptr %124, align 4, !tbaa !64
  %127 = load i32, ptr %81, align 8, !tbaa !106
  %128 = getelementptr inbounds %struct.GlyphBLF, ptr %72, i64 0, i32 13
  store i32 %127, ptr %128, align 8, !tbaa !107
  %129 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %61, i64 0, i32 13
  call void @FT_Outline_Get_CBox(ptr noundef nonnull %129, ptr noundef nonnull %5) #10
  %130 = getelementptr inbounds %struct.GlyphBLF, ptr %72, i64 0, i32 4
  %131 = load <4 x i64>, ptr %5, align 8, !tbaa !63
  %132 = sitofp <4 x i64> %131 to <4 x float>
  %133 = fmul <4 x float> %132, <float 1.562500e-02, float 1.562500e-02, float 1.562500e-02, float 1.562500e-02>
  %134 = shufflevector <4 x float> %133, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %134, ptr %130, align 8, !tbaa !64
  %135 = load i32, ptr %73, align 8, !tbaa !76
  %136 = call i32 @blf_hash(i32 noundef %135) #10
  %137 = load ptr, ptr %8, align 8, !tbaa !82
  %138 = zext i32 %136 to i64
  %139 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %137, i64 0, i32 4, i64 %138
  call void @BLI_addhead(ptr noundef nonnull %139, ptr noundef nonnull %72) #10
  %140 = load ptr, ptr %13, align 8, !tbaa !83
  call void @BLI_spin_unlock(ptr noundef %140) #10
  br label %141

141:                                              ; preds = %3, %115, %68, %37, %18
  %142 = phi ptr [ %16, %18 ], [ null, %37 ], [ null, %68 ], [ %72, %115 ], [ %10, %3 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #12
  ret ptr %142
}

; Function Attrs: optsize
declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @FT_Load_Glyph(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @FT_Render_Glyph(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @FT_Bitmap_New(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @FT_Bitmap_Convert(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @FT_Bitmap_Copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @FT_Bitmap_Done(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @FT_Outline_Get_CBox(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @blf_glyph_render(ptr noundef %0, ptr nocapture noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.rctf, align 4
  %6 = alloca %struct.rctf, align 4
  %7 = alloca %struct.rctf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %8 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 11
  %9 = load i32, ptr %8, align 8, !tbaa !100
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %215, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 12
  %13 = load i32, ptr %12, align 4, !tbaa !101
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %215, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 17
  %17 = load i16, ptr %16, align 4, !tbaa !108
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %118

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !82
  %22 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 15
  %23 = load i32, ptr %22, align 8, !tbaa !109
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  tail call void @glGetIntegerv(i32 noundef 3379, ptr noundef nonnull %22) #10
  br label %26

26:                                               ; preds = %25, %19
  %27 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %21, i64 0, i32 8
  %28 = load i32, ptr %27, align 4, !tbaa !73
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %21, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !110
  br label %38

33:                                               ; preds = %26
  tail call fastcc void @blf_glyph_cache_texture(ptr noundef nonnull %0, ptr noundef nonnull %21) #11
  %34 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %21, i64 0, i32 11
  %35 = load i32, ptr %34, align 8, !tbaa !47
  %36 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %21, i64 0, i32 9
  store i32 %35, ptr %36, align 8, !tbaa !110
  %37 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %21, i64 0, i32 10
  store i32 0, ptr %37, align 4, !tbaa !111
  br label %38

38:                                               ; preds = %30, %33
  %39 = phi i32 [ %32, %30 ], [ %35, %33 ]
  %40 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %21, i64 0, i32 9
  %41 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %21, i64 0, i32 14
  %42 = load i32, ptr %41, align 4, !tbaa !68
  %43 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %21, i64 0, i32 12
  %44 = load i32, ptr %43, align 4, !tbaa !112
  %45 = sub nsw i32 %42, %44
  %46 = icmp sgt i32 %39, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %21, i64 0, i32 11
  %49 = load i32, ptr %48, align 8, !tbaa !47
  store i32 %49, ptr %40, align 8, !tbaa !110
  %50 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %21, i64 0, i32 13
  %51 = load i32, ptr %50, align 8, !tbaa !113
  %52 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %21, i64 0, i32 10
  %53 = load i32, ptr %52, align 4, !tbaa !111
  %54 = add nsw i32 %53, %51
  store i32 %54, ptr %52, align 4, !tbaa !111
  %55 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %21, i64 0, i32 15
  %56 = load i32, ptr %55, align 8, !tbaa !69
  %57 = sub nsw i32 %56, %51
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  store i32 0, ptr %52, align 4, !tbaa !111
  tail call fastcc void @blf_glyph_cache_texture(ptr noundef nonnull %0, ptr noundef nonnull %21) #11
  %60 = load i32, ptr %40, align 8, !tbaa !110
  %61 = load i32, ptr %41, align 4, !tbaa !68
  br label %62

62:                                               ; preds = %47, %59, %38
  %63 = phi i32 [ %42, %47 ], [ %61, %59 ], [ %42, %38 ]
  %64 = phi i32 [ %49, %47 ], [ %60, %59 ], [ %39, %38 ]
  %65 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %21, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !46
  %67 = load i32, ptr %27, align 4, !tbaa !73
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, ptr %66, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !45
  %71 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 7
  store i32 %70, ptr %71, align 8, !tbaa !114
  %72 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 8
  store i32 %64, ptr %72, align 4, !tbaa !94
  %73 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %21, i64 0, i32 10
  %74 = load i32, ptr %73, align 4, !tbaa !111
  %75 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 9
  store i32 %74, ptr %75, align 8, !tbaa !95
  %76 = load i32, ptr %8, align 8, !tbaa !100
  %77 = add nsw i32 %76, %64
  %78 = icmp sgt i32 %77, %63
  br i1 %78, label %79, label %81

79:                                               ; preds = %62
  %80 = sub i32 %63, %64
  store i32 %80, ptr %8, align 8, !tbaa !100
  br label %81

81:                                               ; preds = %79, %62
  %82 = load i32, ptr %12, align 4, !tbaa !101
  %83 = add nsw i32 %82, %74
  %84 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %21, i64 0, i32 15
  %85 = load i32, ptr %84, align 8, !tbaa !69
  %86 = icmp sgt i32 %83, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = sub i32 %85, %74
  store i32 %88, ptr %12, align 4, !tbaa !101
  br label %89

89:                                               ; preds = %87, %81
  tail call void @glPushClientAttrib(i32 noundef 1) #10
  tail call void @glPixelStorei(i32 noundef 3313, i32 noundef 0) #10
  tail call void @glPixelStorei(i32 noundef 3314, i32 noundef 0) #10
  tail call void @glPixelStorei(i32 noundef 3317, i32 noundef 1) #10
  %90 = load i32, ptr %71, align 8, !tbaa !114
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %90) #10
  %91 = load i32, ptr %72, align 4, !tbaa !94
  %92 = load i32, ptr %75, align 8, !tbaa !95
  %93 = load i32, ptr %8, align 8, !tbaa !100
  %94 = load i32, ptr %12, align 4, !tbaa !101
  %95 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 10
  %96 = load ptr, ptr %95, align 8, !tbaa !74
  tail call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef %91, i32 noundef %92, i32 noundef %93, i32 noundef %94, i32 noundef 6406, i32 noundef 5121, ptr noundef %96) #10
  tail call void @glPopClientAttrib() #10
  %97 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 14
  %98 = load <2 x i32>, ptr %72, align 4, !tbaa !45
  %99 = load <2 x i32>, ptr %8, align 8, !tbaa !45
  %100 = add nsw <2 x i32> %99, %98
  %101 = load <2 x i32>, ptr %41, align 4, !tbaa !45
  %102 = sitofp <2 x i32> %101 to <2 x float>
  %103 = shufflevector <2 x float> %102, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %104 = shufflevector <2 x i32> %98, <2 x i32> %100, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %105 = sitofp <4 x i32> %104 to <4 x float>
  %106 = fdiv <4 x float> %105, %103
  store <4 x float> %106, ptr %97, align 4, !tbaa !64
  %107 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 4
  %108 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %107) #11
  %109 = fptosi float %108 to i32
  %110 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %21, i64 0, i32 11
  %111 = load i32, ptr %110, align 8, !tbaa !47
  %112 = add nsw i32 %111, %109
  %113 = load i32, ptr %40, align 8, !tbaa !110
  %114 = add nsw i32 %112, %113
  store i32 %114, ptr %40, align 8, !tbaa !110
  %115 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %21, i64 0, i32 17
  %116 = load i32, ptr %115, align 8, !tbaa !61
  %117 = add nsw i32 %116, -1
  store i32 %117, ptr %115, align 8, !tbaa !61
  store i16 1, ptr %16, align 4, !tbaa !108
  br label %118

118:                                              ; preds = %89, %15
  call fastcc void @blf_glyph_calc_rect(ptr noundef nonnull %5, ptr noundef nonnull %1, float noundef %2, float noundef %3) #11
  %119 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 17
  %120 = load i32, ptr %119, align 8, !tbaa !84
  %121 = and i32 %120, 2
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !115
  %124 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 3
  %125 = load float, ptr %124, align 4, !tbaa !64
  %126 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 3, i64 1
  %127 = load float, ptr %126, align 4, !tbaa !64
  call void @BLI_rctf_translate(ptr noundef nonnull %6, float noundef %125, float noundef %127) #10
  %128 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 12
  %129 = call zeroext i8 @BLI_rctf_inside_rctf(ptr noundef nonnull %128, ptr noundef nonnull %6) #10
  %130 = icmp eq i8 %129, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  br i1 %130, label %215, label %131

131:                                              ; preds = %123, %118
  %132 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 16
  %133 = load i32, ptr %132, align 4, !tbaa !116
  %134 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 7
  %135 = load i32, ptr %134, align 8, !tbaa !114
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %138, label %137

137:                                              ; preds = %131
  store i32 %135, ptr %132, align 4, !tbaa !116
  call void @glBindTexture(i32 noundef 3553, i32 noundef %135) #10
  br label %138

138:                                              ; preds = %137, %131
  %139 = load i32, ptr %119, align 8, !tbaa !84
  %140 = and i32 %139, 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %183, label %142

142:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  %143 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 7
  %144 = load i32, ptr %143, align 4, !tbaa !117
  %145 = sitofp i32 %144 to float
  %146 = fadd float %145, %2
  %147 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 8
  %148 = load i32, ptr %147, align 8, !tbaa !118
  %149 = sitofp i32 %148 to float
  %150 = fadd float %149, %3
  call fastcc void @blf_glyph_calc_rect(ptr noundef nonnull %7, ptr noundef nonnull %1, float noundef %146, float noundef %150) #11
  %151 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 6
  %152 = load i32, ptr %151, align 8, !tbaa !119
  %153 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 9
  switch i32 %152, label %172 [
    i32 3, label %154
    i32 5, label %163
  ]

154:                                              ; preds = %142
  %155 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 14
  %156 = load float, ptr %7, align 4, !tbaa !120
  %157 = getelementptr inbounds %struct.rctf, ptr %7, i64 0, i32 2
  %158 = load float, ptr %157, align 4, !tbaa !121
  %159 = getelementptr inbounds %struct.rctf, ptr %7, i64 0, i32 1
  %160 = load float, ptr %159, align 4, !tbaa !122
  %161 = getelementptr inbounds %struct.rctf, ptr %7, i64 0, i32 3
  %162 = load float, ptr %161, align 4, !tbaa !123
  call fastcc void @blf_texture3_draw(ptr noundef nonnull %153, ptr noundef nonnull %155, float noundef %156, float noundef %158, float noundef %160, float noundef %162) #11
  br label %181

163:                                              ; preds = %142
  %164 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 14
  %165 = load float, ptr %7, align 4, !tbaa !120
  %166 = getelementptr inbounds %struct.rctf, ptr %7, i64 0, i32 2
  %167 = load float, ptr %166, align 4, !tbaa !121
  %168 = getelementptr inbounds %struct.rctf, ptr %7, i64 0, i32 1
  %169 = load float, ptr %168, align 4, !tbaa !122
  %170 = getelementptr inbounds %struct.rctf, ptr %7, i64 0, i32 3
  %171 = load float, ptr %170, align 4, !tbaa !123
  call fastcc void @blf_texture5_draw(ptr noundef nonnull %153, ptr noundef nonnull %164, float noundef %165, float noundef %167, float noundef %169, float noundef %171) #11
  br label %181

172:                                              ; preds = %142
  call void @glColor4fv(ptr noundef nonnull %153) #10
  %173 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 14
  %174 = load float, ptr %7, align 4, !tbaa !120
  %175 = getelementptr inbounds %struct.rctf, ptr %7, i64 0, i32 2
  %176 = load float, ptr %175, align 4, !tbaa !121
  %177 = getelementptr inbounds %struct.rctf, ptr %7, i64 0, i32 1
  %178 = load float, ptr %177, align 4, !tbaa !122
  %179 = getelementptr inbounds %struct.rctf, ptr %7, i64 0, i32 3
  %180 = load float, ptr %179, align 4, !tbaa !123
  call fastcc void @blf_texture_draw(ptr noundef nonnull %173, float noundef %174, float noundef %176, float noundef %178, float noundef %180) #11
  br label %181

181:                                              ; preds = %172, %163, %154
  %182 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 10
  call void @glColor4fv(ptr noundef nonnull %182) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  br label %183

183:                                              ; preds = %181, %138
  %184 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 5
  %185 = load i32, ptr %184, align 4, !tbaa !124
  switch i32 %185, label %206 [
    i32 3, label %186
    i32 5, label %196
  ]

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 10
  %188 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 14
  %189 = load float, ptr %5, align 4, !tbaa !120
  %190 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 2
  %191 = load float, ptr %190, align 4, !tbaa !121
  %192 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 1
  %193 = load float, ptr %192, align 4, !tbaa !122
  %194 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 3
  %195 = load float, ptr %194, align 4, !tbaa !123
  call fastcc void @blf_texture3_draw(ptr noundef nonnull %187, ptr noundef nonnull %188, float noundef %189, float noundef %191, float noundef %193, float noundef %195) #11
  br label %215

196:                                              ; preds = %183
  %197 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 10
  %198 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 14
  %199 = load float, ptr %5, align 4, !tbaa !120
  %200 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 2
  %201 = load float, ptr %200, align 4, !tbaa !121
  %202 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 1
  %203 = load float, ptr %202, align 4, !tbaa !122
  %204 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 3
  %205 = load float, ptr %204, align 4, !tbaa !123
  call fastcc void @blf_texture5_draw(ptr noundef nonnull %197, ptr noundef nonnull %198, float noundef %199, float noundef %201, float noundef %203, float noundef %205) #11
  br label %215

206:                                              ; preds = %183
  %207 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 14
  %208 = load float, ptr %5, align 4, !tbaa !120
  %209 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 2
  %210 = load float, ptr %209, align 4, !tbaa !121
  %211 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 1
  %212 = load float, ptr %211, align 4, !tbaa !122
  %213 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 3
  %214 = load float, ptr %213, align 4, !tbaa !123
  call fastcc void @blf_texture_draw(ptr noundef nonnull %207, float noundef %208, float noundef %210, float noundef %212, float noundef %214) #11
  br label %215

215:                                              ; preds = %186, %196, %206, %4, %11, %123
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  ret void
}

; Function Attrs: optsize
declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @blf_glyph_cache_texture(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #2 !PGOFuncName !125 {
  %3 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %1, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !73
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 4, !tbaa !73
  %6 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %1, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !126
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = shl i32 %7, 1
  store i32 %10, ptr %6, align 8, !tbaa !126
  %11 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %1, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = zext i32 %10 to i64
  %15 = shl nuw nsw i64 %14, 2
  %16 = tail call ptr %11(ptr noundef %13, i64 noundef %15, ptr noundef nonnull @__func__.blf_glyph_cache_texture) #10
  store ptr %16, ptr %12, align 8, !tbaa !46
  br label %17

17:                                               ; preds = %9, %2
  %18 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %1, i64 0, i32 17
  %19 = load i32, ptr %18, align 8, !tbaa !61
  %20 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %1, i64 0, i32 12
  %21 = load i32, ptr %20, align 4, !tbaa !112
  %22 = mul nsw i32 %21, %19
  %23 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %1, i64 0, i32 11
  %24 = load i32, ptr %23, align 8, !tbaa !47
  %25 = shl nsw i32 %24, 1
  %26 = add nsw i32 %25, %22
  %27 = tail call i32 @blf_next_p2(i32 noundef %26) #10
  %28 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %1, i64 0, i32 14
  %29 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 15
  %30 = load i32, ptr %29, align 8, !tbaa !109
  %31 = tail call i32 @llvm.smin.i32(i32 %27, i32 %30)
  store i32 %31, ptr %28, align 4
  %32 = load i32, ptr %23, align 8, !tbaa !47
  %33 = shl nsw i32 %32, 1
  %34 = sub nsw i32 %31, %33
  %35 = load i32, ptr %20, align 4, !tbaa !112
  %36 = sdiv i32 %34, %35
  %37 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %1, i64 0, i32 16
  %38 = load i32, ptr %37, align 4, !tbaa !60
  %39 = sdiv i32 %38, %36
  %40 = add nsw i32 %39, 1
  %41 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %1, i64 0, i32 13
  %42 = load i32, ptr %41, align 8, !tbaa !113
  %43 = mul nsw i32 %40, %42
  %44 = tail call i32 @blf_next_p2(i32 noundef %43) #10
  %45 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %1, i64 0, i32 15
  %46 = load i32, ptr %29, align 8, !tbaa !109
  %47 = tail call i32 @llvm.smin.i32(i32 %44, i32 %46)
  store i32 %47, ptr %45, align 8
  %48 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %1, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  %50 = load i32, ptr %3, align 4, !tbaa !73
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %49, i64 %51
  tail call void @glGenTextures(i32 noundef 1, ptr noundef %52) #10
  %53 = load ptr, ptr %48, align 8, !tbaa !46
  %54 = load i32, ptr %3, align 4, !tbaa !73
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %53, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !45
  %58 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 16
  store i32 %57, ptr %58, align 4, !tbaa !116
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %57) #10
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10242, i32 noundef 10496) #10
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10243, i32 noundef 10496) #10
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10240, i32 noundef 9728) #10
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10241, i32 noundef 9728) #10
  %59 = load i32, ptr %28, align 4, !tbaa !68
  %60 = load i32, ptr %45, align 8, !tbaa !69
  tail call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 6406, i32 noundef %59, i32 noundef %60, i32 noundef 0, i32 noundef 6406, i32 noundef 5121, ptr noundef null) #10
  ret void
}

; Function Attrs: optsize
declare void @glPushClientAttrib(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glPixelStorei(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glBindTexture(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glTexSubImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glPopClientAttrib() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !127 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !122
  %4 = load float, ptr %0, align 4, !tbaa !120
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @blf_glyph_calc_rect(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3) unnamed_addr #7 !PGOFuncName !128 {
  %5 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 15
  %6 = load float, ptr %5, align 4, !tbaa !129
  %7 = fadd float %6, %2
  %8 = tail call float @llvm.floor.f32(float %7)
  store float %8, ptr %0, align 4, !tbaa !120
  %9 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 11
  %10 = load i32, ptr %9, align 8, !tbaa !100
  %11 = sitofp i32 %10 to float
  %12 = fadd float %8, %11
  %13 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  store float %12, ptr %13, align 4, !tbaa !122
  %14 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 16
  %15 = load float, ptr %14, align 8, !tbaa !130
  %16 = fadd float %15, %3
  %17 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  store float %16, ptr %17, align 4, !tbaa !121
  %18 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 12
  %19 = load i32, ptr %18, align 4, !tbaa !101
  %20 = sitofp i32 %19 to float
  %21 = fsub float %16, %20
  %22 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  store float %21, ptr %22, align 4, !tbaa !123
  ret void
}

; Function Attrs: optsize
declare void @BLI_rctf_translate(ptr noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_inside_rctf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @blf_texture3_draw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) unnamed_addr #2 !PGOFuncName !131 {
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  %8 = load <2 x float>, ptr %0, align 4, !tbaa !64
  store <2 x float> %8, ptr %7, align 16, !tbaa !64
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !64
  %11 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  store float %10, ptr %11, align 8, !tbaa !64
  %12 = getelementptr inbounds float, ptr %0, i64 3
  %13 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  br label %14

14:                                               ; preds = %6, %32
  %15 = phi i32 [ -1, %6 ], [ %33, %32 ]
  %16 = phi ptr [ @__const.blf_texture3_draw.soft, %6 ], [ %30, %32 ]
  %17 = sitofp i32 %15 to float
  %18 = fadd float %17, %2
  %19 = fadd float %17, %4
  br label %20

20:                                               ; preds = %14, %20
  %21 = phi i32 [ -1, %14 ], [ %29, %20 ]
  %22 = phi ptr [ %16, %14 ], [ %30, %20 ]
  %23 = sitofp i32 %21 to float
  %24 = load float, ptr %22, align 4, !tbaa !64
  %25 = load float, ptr %12, align 4, !tbaa !64
  %26 = fmul float %24, %25
  store float %26, ptr %13, align 4, !tbaa !64
  call void @glColor4fv(ptr noundef nonnull %7) #10
  %27 = fadd float %23, %3
  %28 = fadd float %23, %5
  call fastcc void @blf_texture_draw(ptr noundef %1, float noundef %18, float noundef %27, float noundef %19, float noundef %28) #11
  %29 = add nsw i32 %21, 1
  %30 = getelementptr inbounds float, ptr %22, i64 1
  %31 = icmp eq i32 %29, 2
  br i1 %31, label %32, label %20, !llvm.loop !132

32:                                               ; preds = %20
  %33 = add nsw i32 %15, 1
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %14, !llvm.loop !133

35:                                               ; preds = %32
  call void @glColor4fv(ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @blf_texture5_draw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) unnamed_addr #2 !PGOFuncName !134 {
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  %8 = load <2 x float>, ptr %0, align 4, !tbaa !64
  store <2 x float> %8, ptr %7, align 16, !tbaa !64
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !64
  %11 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  store float %10, ptr %11, align 8, !tbaa !64
  %12 = getelementptr inbounds float, ptr %0, i64 3
  %13 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  br label %14

14:                                               ; preds = %6, %32
  %15 = phi i32 [ -2, %6 ], [ %33, %32 ]
  %16 = phi ptr [ @__const.blf_texture5_draw.soft, %6 ], [ %30, %32 ]
  %17 = sitofp i32 %15 to float
  %18 = fadd float %17, %2
  %19 = fadd float %17, %4
  br label %20

20:                                               ; preds = %14, %20
  %21 = phi i32 [ -2, %14 ], [ %29, %20 ]
  %22 = phi ptr [ %16, %14 ], [ %30, %20 ]
  %23 = sitofp i32 %21 to float
  %24 = load float, ptr %22, align 4, !tbaa !64
  %25 = load float, ptr %12, align 4, !tbaa !64
  %26 = fmul float %24, %25
  store float %26, ptr %13, align 4, !tbaa !64
  call void @glColor4fv(ptr noundef nonnull %7) #10
  %27 = fadd float %23, %3
  %28 = fadd float %23, %5
  call fastcc void @blf_texture_draw(ptr noundef %1, float noundef %18, float noundef %27, float noundef %19, float noundef %28) #11
  %29 = add nsw i32 %21, 1
  %30 = getelementptr inbounds float, ptr %22, i64 1
  %31 = icmp eq i32 %29, 3
  br i1 %31, label %32, label %20, !llvm.loop !135

32:                                               ; preds = %20
  %33 = add nsw i32 %15, 1
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %35, label %14, !llvm.loop !136

35:                                               ; preds = %32
  call void @glColor4fv(ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  ret void
}

; Function Attrs: optsize
declare void @glColor4fv(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @blf_texture_draw(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #2 !PGOFuncName !137 {
  tail call void @glBegin(i32 noundef 7) #10
  %6 = load float, ptr %0, align 4, !tbaa !64
  %7 = getelementptr inbounds [2 x float], ptr %0, i64 0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !64
  tail call void @glTexCoord2f(float noundef %6, float noundef %8) #10
  tail call void @glVertex2f(float noundef %1, float noundef %2) #10
  %9 = load float, ptr %0, align 4, !tbaa !64
  %10 = getelementptr inbounds [2 x float], ptr %0, i64 1
  %11 = getelementptr inbounds [2 x float], ptr %0, i64 1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !64
  tail call void @glTexCoord2f(float noundef %9, float noundef %12) #10
  tail call void @glVertex2f(float noundef %1, float noundef %4) #10
  %13 = load float, ptr %10, align 4, !tbaa !64
  %14 = load float, ptr %11, align 4, !tbaa !64
  tail call void @glTexCoord2f(float noundef %13, float noundef %14) #10
  tail call void @glVertex2f(float noundef %3, float noundef %4) #10
  %15 = load float, ptr %10, align 4, !tbaa !64
  %16 = load float, ptr %7, align 4, !tbaa !64
  tail call void @glTexCoord2f(float noundef %15, float noundef %16) #10
  tail call void @glVertex2f(float noundef %3, float noundef %2) #10
  tail call void @glEnd() #10
  ret void
}

; Function Attrs: optsize
declare i32 @blf_next_p2(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glGenTextures(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glTexParameteri(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glTexImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #8

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glTexCoord2f(float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }

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
!38 = !{!39, !40, i64 16}
!39 = !{!"GlyphCacheBLF", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !36, i64 4136, !35, i64 6184, !40, i64 6192, !40, i64 6196, !40, i64 6200, !40, i64 6204, !40, i64 6208, !40, i64 6212, !40, i64 6216, !40, i64 6220, !40, i64 6224, !40, i64 6228, !40, i64 6232, !41, i64 6236, !41, i64 6240}
!40 = !{!"int", !36, i64 0}
!41 = !{!"float", !36, i64 0}
!42 = !{!39, !40, i64 20}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!40, !40, i64 0}
!46 = !{!39, !35, i64 6184}
!47 = !{!39, !40, i64 6208}
!48 = !{!49, !35, i64 304}
!49 = !{!"FontBLF", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 28, !41, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !36, i64 60, !36, i64 76, !36, i64 96, !50, i64 224, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !51, i64 264, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !52, i64 312}
!50 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!51 = !{!"ListBase", !35, i64 0, !35, i64 8}
!52 = !{!"FontBufInfoBLF", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !35, i64 32, !36, i64 40}
!53 = !{!54, !55, i64 32}
!54 = !{!"FT_FaceRec_", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !35, i64 40, !35, i64 48, !40, i64 56, !35, i64 64, !40, i64 72, !35, i64 80, !56, i64 88, !57, i64 104, !58, i64 136, !58, i64 138, !58, i64 140, !58, i64 142, !58, i64 144, !58, i64 146, !58, i64 148, !58, i64 150, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !59, i64 200, !56, i64 216, !35, i64 232, !35, i64 240}
!55 = !{!"long", !36, i64 0}
!56 = !{!"FT_Generic_", !35, i64 0, !35, i64 8}
!57 = !{!"FT_BBox_", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24}
!58 = !{!"short", !36, i64 0}
!59 = !{!"FT_ListRec_", !35, i64 0, !35, i64 8}
!60 = !{!39, !40, i64 6228}
!61 = !{!39, !40, i64 6232}
!62 = !{!54, !35, i64 160}
!63 = !{!55, !55, i64 0}
!64 = !{!41, !41, i64 0}
!65 = !{!54, !55, i64 16}
!66 = !{!54, !58, i64 136}
!67 = !{!58, !58, i64 0}
!68 = !{!39, !40, i64 6220}
!69 = !{!39, !40, i64 6224}
!70 = distinct !{!70, !44}
!71 = distinct !{!71, !44}
!72 = distinct !{!72, !44}
!73 = !{!39, !40, i64 6196}
!74 = !{!75, !35, i64 64}
!75 = !{!"GlyphBLF", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !50, i64 24, !41, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !35, i64 64, !40, i64 72, !40, i64 76, !40, i64 80, !36, i64 84, !41, i64 100, !41, i64 104, !58, i64 108}
!76 = !{!75, !40, i64 16}
!77 = distinct !{!77, !44}
!78 = !{!79, !58, i64 8980}
!79 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !40, i64 8468, !58, i64 8472, !58, i64 8474, !58, i64 8476, !58, i64 8478, !58, i64 8480, !58, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !58, i64 8496, !58, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !58, i64 8528, !58, i64 8530, !58, i64 8532, !58, i64 8534, !51, i64 8536, !51, i64 8552, !51, i64 8568, !51, i64 8584, !51, i64 8600, !51, i64 8616, !51, i64 8632, !36, i64 8648, !58, i64 8712, !58, i64 8714, !58, i64 8716, !58, i64 8718, !58, i64 8720, !58, i64 8722, !58, i64 8724, !58, i64 8726, !36, i64 8728, !58, i64 8896, !58, i64 8898, !58, i64 8900, !58, i64 8902, !58, i64 8904, !58, i64 8906, !58, i64 8908, !58, i64 8910, !40, i64 8912, !40, i64 8916, !58, i64 8920, !58, i64 8922, !58, i64 8924, !58, i64 8926, !58, i64 8928, !58, i64 8930, !58, i64 8932, !58, i64 8934, !58, i64 8936, !58, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !58, i64 8944, !58, i64 8946, !58, i64 8948, !58, i64 8950, !58, i64 8952, !58, i64 8954, !41, i64 8956, !41, i64 8960, !40, i64 8964, !58, i64 8968, !58, i64 8970, !41, i64 8972, !58, i64 8976, !58, i64 8978, !58, i64 8980, !58, i64 8982, !80, i64 8984, !36, i64 9760, !36, i64 9772, !58, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !40, i64 10896, !40, i64 10900, !41, i64 10904, !41, i64 10908, !40, i64 10912, !58, i64 10916, !58, i64 10918, !58, i64 10920, !58, i64 10922, !58, i64 10924, !58, i64 10926, !81, i64 10928}
!80 = !{!"ColorBand", !58, i64 0, !58, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!81 = !{!"WalkNavigation", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !58, i64 24, !36, i64 26}
!82 = !{!49, !35, i64 280}
!83 = !{!49, !35, i64 296}
!84 = !{!49, !40, i64 256}
!85 = !{!54, !35, i64 152}
!86 = !{!49, !35, i64 288}
!87 = !{!88, !40, i64 144}
!88 = !{!"FT_GlyphSlotRec_", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24, !56, i64 32, !89, i64 48, !55, i64 112, !55, i64 120, !90, i64 128, !40, i64 144, !91, i64 152, !40, i64 192, !40, i64 196, !92, i64 200, !40, i64 240, !35, i64 248, !35, i64 256, !55, i64 264, !55, i64 272, !55, i64 280, !35, i64 288, !35, i64 296}
!89 = !{!"FT_Glyph_Metrics_", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56}
!90 = !{!"FT_Vector_", !55, i64 0, !55, i64 8}
!91 = !{!"FT_Bitmap_", !40, i64 0, !40, i64 4, !40, i64 8, !35, i64 16, !58, i64 24, !36, i64 26, !36, i64 27, !35, i64 32}
!92 = !{!"FT_Outline_", !58, i64 0, !58, i64 2, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32}
!93 = !{!75, !40, i64 20}
!94 = !{!75, !40, i64 52}
!95 = !{!75, !40, i64 56}
!96 = !{i64 0, i64 4, !45, i64 4, i64 4, !45, i64 8, i64 4, !45, i64 16, i64 8, !34, i64 24, i64 2, !67, i64 26, i64 1, !97, i64 27, i64 1, !97, i64 32, i64 8, !34}
!97 = !{!36, !36, i64 0}
!98 = !{i64 0, i64 4, !45, i64 4, i64 4, !45, i64 12, i64 8, !34, i64 20, i64 2, !67, i64 22, i64 1, !97, i64 23, i64 1, !97, i64 28, i64 8, !34}
!99 = !{i64 0, i64 8, !34, i64 8, i64 2, !67, i64 10, i64 1, !97, i64 11, i64 1, !97, i64 16, i64 8, !34}
!100 = !{!75, !40, i64 72}
!101 = !{!75, !40, i64 76}
!102 = distinct !{!102, !44}
!103 = !{!88, !55, i64 128}
!104 = !{!75, !41, i64 40}
!105 = !{!75, !40, i64 44}
!106 = !{!88, !40, i64 160}
!107 = !{!75, !40, i64 80}
!108 = !{!75, !58, i64 108}
!109 = !{!49, !40, i64 248}
!110 = !{!39, !40, i64 6200}
!111 = !{!39, !40, i64 6204}
!112 = !{!39, !40, i64 6212}
!113 = !{!39, !40, i64 6216}
!114 = !{!75, !40, i64 48}
!115 = !{i64 0, i64 4, !64, i64 4, i64 4, !64, i64 8, i64 4, !64, i64 12, i64 4, !64}
!116 = !{!49, !40, i64 252}
!117 = !{!49, !40, i64 52}
!118 = !{!49, !40, i64 56}
!119 = !{!49, !40, i64 48}
!120 = !{!50, !41, i64 0}
!121 = !{!50, !41, i64 8}
!122 = !{!50, !41, i64 4}
!123 = !{!50, !41, i64 12}
!124 = !{!49, !40, i64 44}
!125 = !{!"blf_glyph.c:blf_glyph_cache_texture"}
!126 = !{!39, !40, i64 6192}
!127 = !{!"blf_glyph.c:BLI_rctf_size_x"}
!128 = !{!"blf_glyph.c:blf_glyph_calc_rect"}
!129 = !{!75, !41, i64 100}
!130 = !{!75, !41, i64 104}
!131 = !{!"blf_glyph.c:blf_texture3_draw"}
!132 = distinct !{!132, !44}
!133 = distinct !{!133, !44}
!134 = !{!"blf_glyph.c:blf_texture5_draw"}
!135 = distinct !{!135, !44}
!136 = distinct !{!136, !44}
!137 = !{!"blf_glyph.c:blf_texture_draw"}

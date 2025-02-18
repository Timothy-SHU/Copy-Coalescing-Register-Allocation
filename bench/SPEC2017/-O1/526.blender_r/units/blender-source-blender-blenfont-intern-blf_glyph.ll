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

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
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
  %20 = phi ptr [ null, %3 ], [ %8, %12 ], [ null, %16 ]
  ret ptr %20
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @blf_glyph_cache_new(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 6248, ptr noundef nonnull @.str) #8
  %4 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 2
  store i32 %5, ptr %6, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 13
  %8 = load i32, ptr %7, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 3
  store i32 %8, ptr %9, align 4, !tbaa !42
  %10 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6160) %10, i8 0, i64 6160, i1 false)
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 1024, ptr noundef nonnull @.str) #8
  %13 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 6
  store ptr %12, ptr %13, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 7
  store i32 256, ptr %14, align 8, !tbaa !53
  %15 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 8
  store i32 -1, ptr %15, align 4, !tbaa !54
  %16 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 9
  store i32 0, ptr %16, align 8, !tbaa !55
  %17 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 10
  store i32 0, ptr %17, align 4, !tbaa !56
  %18 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 11
  store i32 3, ptr %18, align 8, !tbaa !57
  %19 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %20 = load ptr, ptr %19, align 8, !tbaa !58
  %21 = getelementptr inbounds %struct.FT_FaceRec_, ptr %20, i64 0, i32 4
  %22 = load i64, ptr %21, align 8, !tbaa !59
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 16
  store i32 %23, ptr %24, align 4, !tbaa !66
  %25 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 17
  store i32 %23, ptr %25, align 8, !tbaa !67
  %26 = getelementptr inbounds %struct.FT_FaceRec_, ptr %20, i64 0, i32 22
  %27 = load ptr, ptr %26, align 8, !tbaa !68
  %28 = getelementptr inbounds %struct.FT_SizeRec_, ptr %27, i64 0, i32 2, i32 4
  %29 = load i64, ptr %28, align 8, !tbaa !69
  %30 = sitofp i64 %29 to float
  %31 = fmul float %30, 1.562500e-02
  %32 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 18
  store float %31, ptr %32, align 4, !tbaa !72
  %33 = getelementptr inbounds %struct.FT_SizeRec_, ptr %27, i64 0, i32 2, i32 5
  %34 = load i64, ptr %33, align 8, !tbaa !73
  %35 = sitofp i64 %34 to float
  %36 = fmul float %35, 1.562500e-02
  %37 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 19
  store float %36, ptr %37, align 8, !tbaa !74
  %38 = getelementptr inbounds %struct.FT_FaceRec_, ptr %20, i64 0, i32 2
  %39 = load i64, ptr %38, align 8, !tbaa !75
  %40 = and i64 %39, 1
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %70, label %42

42:                                               ; preds = %1
  %43 = getelementptr inbounds %struct.FT_FaceRec_, ptr %20, i64 0, i32 12
  %44 = getelementptr inbounds %struct.FT_FaceRec_, ptr %20, i64 0, i32 12, i32 2
  %45 = load i64, ptr %44, align 8, !tbaa !76
  %46 = load i64, ptr %43, align 8, !tbaa !77
  %47 = sub nsw i64 %45, %46
  %48 = sitofp i64 %47 to float
  %49 = getelementptr inbounds %struct.FT_SizeRec_, ptr %27, i64 0, i32 2
  %50 = load i16, ptr %49, align 8, !tbaa !78
  %51 = uitofp i16 %50 to float
  %52 = getelementptr inbounds %struct.FT_FaceRec_, ptr %20, i64 0, i32 13
  %53 = load i16, ptr %52, align 8, !tbaa !79
  %54 = uitofp i16 %53 to float
  %55 = fdiv float %51, %54
  %56 = fmul float %55, %48
  %57 = fptosi float %56 to i32
  %58 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 12
  store i32 %57, ptr %58, align 4, !tbaa !80
  %59 = getelementptr inbounds %struct.FT_FaceRec_, ptr %20, i64 0, i32 12, i32 3
  %60 = load i64, ptr %59, align 8, !tbaa !81
  %61 = getelementptr inbounds %struct.FT_FaceRec_, ptr %20, i64 0, i32 12, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !82
  %63 = sub nsw i64 %60, %62
  %64 = sitofp i64 %63 to float
  %65 = getelementptr inbounds %struct.FT_SizeRec_, ptr %27, i64 0, i32 2, i32 1
  %66 = load i16, ptr %65, align 2, !tbaa !83
  %67 = uitofp i16 %66 to float
  %68 = fdiv float %67, %54
  %69 = fmul float %68, %64
  br label %81

70:                                               ; preds = %1
  %71 = getelementptr inbounds %struct.FT_SizeRec_, ptr %27, i64 0, i32 2, i32 7
  %72 = load i64, ptr %71, align 8, !tbaa !84
  %73 = sitofp i64 %72 to float
  %74 = fmul float %73, 1.562500e-02
  %75 = fptosi float %74 to i32
  %76 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 12
  store i32 %75, ptr %76, align 4, !tbaa !80
  %77 = getelementptr inbounds %struct.FT_SizeRec_, ptr %27, i64 0, i32 2, i32 6
  %78 = load i64, ptr %77, align 8, !tbaa !85
  %79 = sitofp i64 %78 to float
  %80 = fmul float %79, 1.562500e-02
  br label %81

81:                                               ; preds = %70, %42
  %82 = phi float [ %80, %70 ], [ %69, %42 ]
  %83 = fptosi float %82 to i32
  %84 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 13
  store i32 %83, ptr %84, align 8, !tbaa !86
  %85 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 14
  store i32 0, ptr %85, align 4, !tbaa !87
  %86 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 15
  store i32 0, ptr %86, align 8, !tbaa !88
  %87 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 18
  tail call void @BLI_addhead(ptr noundef nonnull %87, ptr noundef nonnull %3) #8
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @blf_glyph_cache_clear(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 18
  %3 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %1, %34
  %6 = phi ptr [ %39, %34 ], [ %3, %1 ]
  br label %7

7:                                                ; preds = %5, %23
  %8 = phi i64 [ %24, %23 ], [ 0, %5 ]
  %9 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %6, i64 0, i32 4, i64 %8
  %10 = tail call ptr @BLI_pophead(ptr noundef nonnull %9) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %7, %19
  %13 = phi ptr [ %21, %19 ], [ %10, %7 ]
  %14 = getelementptr inbounds %struct.GlyphBLF, ptr %13, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !89
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %18(ptr noundef nonnull %15) #8
  br label %19

19:                                               ; preds = %17, %12
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %13) #8
  %21 = tail call ptr @BLI_pophead(ptr noundef nonnull %9) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %12, !llvm.loop !91

23:                                               ; preds = %19, %7
  %24 = add nuw nsw i64 %8, 1
  %25 = icmp eq i64 %24, 257
  br i1 %25, label %26, label %7, !llvm.loop !92

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %6, i64 0, i32 8
  %28 = load i32, ptr %27, align 4, !tbaa !54
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = add nuw nsw i32 %28, 1
  %32 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %6, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !52
  tail call void @glDeleteTextures(i32 noundef %31, ptr noundef %33) #8
  br label %34

34:                                               ; preds = %26, %30
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %36 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %6, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !52
  tail call void %35(ptr noundef %37) #8
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %38(ptr noundef nonnull %6) #8
  %39 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %5, !llvm.loop !93

41:                                               ; preds = %34, %1
  ret void
}

declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @blf_glyph_cache_free(ptr noundef %0) local_unnamed_addr #2 {
  br label %2

2:                                                ; preds = %1, %18
  %3 = phi i64 [ 0, %1 ], [ %19, %18 ]
  %4 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %0, i64 0, i32 4, i64 %3
  %5 = tail call ptr @BLI_pophead(ptr noundef nonnull %4) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %2, %14
  %8 = phi ptr [ %16, %14 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.GlyphBLF, ptr %8, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !89
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %13(ptr noundef nonnull %10) #8
  br label %14

14:                                               ; preds = %7, %12
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %15(ptr noundef nonnull %8) #8
  %16 = tail call ptr @BLI_pophead(ptr noundef nonnull %4) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %7, !llvm.loop !91

18:                                               ; preds = %14, %2
  %19 = add nuw nsw i64 %3, 1
  %20 = icmp eq i64 %19, 257
  br i1 %20, label %21, label %2, !llvm.loop !92

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %0, i64 0, i32 8
  %23 = load i32, ptr %22, align 4, !tbaa !54
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = add nuw nsw i32 %23, 1
  %27 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %0, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !52
  tail call void @glDeleteTextures(i32 noundef %26, ptr noundef %28) #8
  br label %29

29:                                               ; preds = %25, %21
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %0, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !52
  tail call void %30(ptr noundef %32) #8
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %33(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @blf_glyph_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.GlyphBLF, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %3) #8
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %8(ptr noundef %0) #8
  ret void
}

declare void @glDeleteTextures(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @blf_glyph_search(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call i32 @blf_hash(i32 noundef %1) #8
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
  %12 = load i32, ptr %11, align 8, !tbaa !94
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %6, !llvm.loop !95

14:                                               ; preds = %6, %10
  %15 = phi ptr [ %8, %10 ], [ null, %6 ]
  ret ptr %15
}

declare i32 @blf_hash(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @blf_glyph_add(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.FT_Bitmap_, align 8
  %5 = alloca %struct.FT_BBox_, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #8
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 93), align 4, !tbaa !96
  %7 = and i16 %6, 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  %8 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  %10 = tail call i32 @blf_hash(i32 noundef %2) #8
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %9, i64 0, i32 4, i64 %11
  br label %13

13:                                               ; preds = %17, %3
  %14 = phi ptr [ %12, %3 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.GlyphBLF, ptr %15, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !94
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %21, label %13, !llvm.loop !95

21:                                               ; preds = %13, %17
  %22 = phi ptr [ %15, %17 ], [ null, %13 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %178

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 21
  %26 = load ptr, ptr %25, align 8, !tbaa !101
  tail call void @BLI_spin_lock(ptr noundef %26) #8
  %27 = load ptr, ptr %8, align 8, !tbaa !100
  %28 = tail call i32 @blf_hash(i32 noundef %2) #8
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %27, i64 0, i32 4, i64 %29
  br label %31

31:                                               ; preds = %35, %24
  %32 = phi ptr [ %30, %24 ], [ %33, %35 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.GlyphBLF, ptr %33, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !94
  %38 = icmp eq i32 %37, %2
  br i1 %38, label %39, label %31, !llvm.loop !95

39:                                               ; preds = %31, %35
  %40 = phi ptr [ %33, %35 ], [ null, %31 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %175

42:                                               ; preds = %39
  %43 = icmp eq i16 %7, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 17
  %46 = load i32, ptr %45, align 8, !tbaa !102
  %47 = and i32 %46, 64
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 10, i32 8
  br label %50

50:                                               ; preds = %42, %44
  %51 = phi i32 [ %49, %44 ], [ 131072, %42 ]
  %52 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %53 = load ptr, ptr %52, align 8, !tbaa !58
  %54 = tail call i32 @FT_Load_Glyph(ptr noundef %53, i32 noundef %1, i32 noundef %51) #8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %175

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %58 = load ptr, ptr %57, align 8, !tbaa !58
  %59 = getelementptr inbounds %struct.FT_FaceRec_, ptr %58, i64 0, i32 21
  %60 = load ptr, ptr %59, align 8, !tbaa !103
  br i1 %43, label %74, label %61

61:                                               ; preds = %56
  %62 = tail call i32 @FT_Render_Glyph(ptr noundef %60, i32 noundef 2) #8
  call void @FT_Bitmap_New(ptr noundef nonnull %4) #8
  %63 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 20
  %64 = load ptr, ptr %63, align 8, !tbaa !104
  %65 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %60, i64 0, i32 10
  %66 = call i32 @FT_Bitmap_Convert(ptr noundef %64, ptr noundef nonnull %65, ptr noundef nonnull %4, i32 noundef 1) #8
  %67 = add nsw i32 %66, %62
  %68 = load ptr, ptr %63, align 8, !tbaa !104
  %69 = call i32 @FT_Bitmap_Copy(ptr noundef %68, ptr noundef nonnull %4, ptr noundef nonnull %65) #8
  %70 = add nsw i32 %67, %69
  %71 = load ptr, ptr %63, align 8, !tbaa !104
  %72 = call i32 @FT_Bitmap_Done(ptr noundef %71, ptr noundef nonnull %4) #8
  %73 = add nsw i32 %70, %72
  br label %76

74:                                               ; preds = %56
  %75 = tail call i32 @FT_Render_Glyph(ptr noundef %60, i32 noundef 0) #8
  br label %76

76:                                               ; preds = %74, %61
  %77 = phi i32 [ %73, %61 ], [ %75, %74 ]
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %175

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %60, i64 0, i32 9
  %81 = load i32, ptr %80, align 8, !tbaa !105
  %82 = icmp eq i32 %81, 1651078259
  br i1 %82, label %83, label %175

83:                                               ; preds = %79
  %84 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %85 = call ptr %84(i64 noundef 112, ptr noundef nonnull @.str.1) #8
  %86 = getelementptr inbounds %struct.GlyphBLF, ptr %85, i64 0, i32 2
  store i32 %2, ptr %86, align 8, !tbaa !94
  %87 = getelementptr inbounds %struct.GlyphBLF, ptr %85, i64 0, i32 3
  store i32 %1, ptr %87, align 4, !tbaa !111
  %88 = getelementptr inbounds %struct.GlyphBLF, ptr %85, i64 0, i32 8
  store i32 -1, ptr %88, align 4, !tbaa !112
  %89 = getelementptr inbounds %struct.GlyphBLF, ptr %85, i64 0, i32 9
  store i32 -1, ptr %89, align 8, !tbaa !113
  %90 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %60, i64 0, i32 10
  %91 = load i32, ptr %90, align 8, !tbaa.struct !114
  %92 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %60, i64 0, i32 10, i32 1
  %93 = load i32, ptr %92, align 4, !tbaa.struct !118
  %94 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %60, i64 0, i32 10, i32 2
  %95 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %60, i64 0, i32 10, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa.struct !119
  %97 = getelementptr inbounds %struct.GlyphBLF, ptr %85, i64 0, i32 11
  store i32 %93, ptr %97, align 8, !tbaa !120
  %98 = getelementptr inbounds %struct.GlyphBLF, ptr %85, i64 0, i32 12
  store i32 %91, ptr %98, align 4, !tbaa !121
  %99 = icmp eq i32 %93, 0
  %100 = icmp eq i32 %91, 0
  %101 = select i1 %99, i1 true, i1 %100
  br i1 %101, label %132, label %102

102:                                              ; preds = %83
  br i1 %43, label %120, label %103

103:                                              ; preds = %102
  %104 = load i32, ptr %97, align 8, !tbaa !120
  %105 = load i32, ptr %98, align 4, !tbaa !121
  %106 = mul nsw i32 %105, %104
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %103, %108
  %109 = phi i64 [ %114, %108 ], [ 0, %103 ]
  %110 = getelementptr inbounds i8, ptr %96, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !117
  %112 = icmp ne i8 %111, 0
  %113 = sext i1 %112 to i8
  store i8 %113, ptr %110, align 1, !tbaa !117
  %114 = add nuw nsw i64 %109, 1
  %115 = load i32, ptr %97, align 8, !tbaa !120
  %116 = load i32, ptr %98, align 4, !tbaa !121
  %117 = mul nsw i32 %116, %115
  %118 = sext i32 %117 to i64
  %119 = icmp slt i64 %114, %118
  br i1 %119, label %108, label %120, !llvm.loop !122

120:                                              ; preds = %108, %103, %102
  %121 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %122 = load i32, ptr %97, align 8, !tbaa !120
  %123 = load i32, ptr %98, align 4, !tbaa !121
  %124 = mul nsw i32 %123, %122
  %125 = sext i32 %124 to i64
  %126 = call ptr %121(i64 noundef %125, ptr noundef nonnull @.str.2) #8
  %127 = getelementptr inbounds %struct.GlyphBLF, ptr %85, i64 0, i32 10
  store ptr %126, ptr %127, align 8, !tbaa !89
  %128 = load i32, ptr %97, align 8, !tbaa !120
  %129 = load i32, ptr %98, align 4, !tbaa !121
  %130 = mul nsw i32 %129, %128
  %131 = sext i32 %130 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %126, ptr align 1 %96, i64 %131, i1 false)
  br label %132

132:                                              ; preds = %120, %83
  %133 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %60, i64 0, i32 8
  %134 = load i64, ptr %133, align 8, !tbaa !123
  %135 = sitofp i64 %134 to float
  %136 = fmul float %135, 1.562500e-02
  %137 = getelementptr inbounds %struct.GlyphBLF, ptr %85, i64 0, i32 5
  store float %136, ptr %137, align 8, !tbaa !124
  %138 = fptosi float %136 to i32
  %139 = getelementptr inbounds %struct.GlyphBLF, ptr %85, i64 0, i32 6
  store i32 %138, ptr %139, align 4, !tbaa !125
  %140 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %60, i64 0, i32 11
  %141 = load i32, ptr %140, align 8, !tbaa !126
  %142 = sitofp i32 %141 to float
  %143 = getelementptr inbounds %struct.GlyphBLF, ptr %85, i64 0, i32 15
  store float %142, ptr %143, align 4, !tbaa !127
  %144 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %60, i64 0, i32 12
  %145 = load i32, ptr %144, align 4, !tbaa !128
  %146 = sitofp i32 %145 to float
  %147 = getelementptr inbounds %struct.GlyphBLF, ptr %85, i64 0, i32 16
  store float %146, ptr %147, align 8, !tbaa !129
  %148 = load i32, ptr %94, align 8, !tbaa !130
  %149 = getelementptr inbounds %struct.GlyphBLF, ptr %85, i64 0, i32 13
  store i32 %148, ptr %149, align 8, !tbaa !131
  %150 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %60, i64 0, i32 13
  call void @FT_Outline_Get_CBox(ptr noundef nonnull %150, ptr noundef nonnull %5) #8
  %151 = load i64, ptr %5, align 8, !tbaa !132
  %152 = sitofp i64 %151 to float
  %153 = fmul float %152, 1.562500e-02
  %154 = getelementptr inbounds %struct.GlyphBLF, ptr %85, i64 0, i32 4
  store float %153, ptr %154, align 8, !tbaa !133
  %155 = getelementptr inbounds %struct.FT_BBox_, ptr %5, i64 0, i32 2
  %156 = load i64, ptr %155, align 8, !tbaa !134
  %157 = sitofp i64 %156 to float
  %158 = fmul float %157, 1.562500e-02
  %159 = getelementptr inbounds %struct.GlyphBLF, ptr %85, i64 0, i32 4, i32 1
  store float %158, ptr %159, align 4, !tbaa !135
  %160 = getelementptr inbounds %struct.FT_BBox_, ptr %5, i64 0, i32 1
  %161 = load i64, ptr %160, align 8, !tbaa !136
  %162 = sitofp i64 %161 to float
  %163 = fmul float %162, 1.562500e-02
  %164 = getelementptr inbounds %struct.GlyphBLF, ptr %85, i64 0, i32 4, i32 2
  store float %163, ptr %164, align 8, !tbaa !137
  %165 = getelementptr inbounds %struct.FT_BBox_, ptr %5, i64 0, i32 3
  %166 = load i64, ptr %165, align 8, !tbaa !138
  %167 = sitofp i64 %166 to float
  %168 = fmul float %167, 1.562500e-02
  %169 = getelementptr inbounds %struct.GlyphBLF, ptr %85, i64 0, i32 4, i32 3
  store float %168, ptr %169, align 4, !tbaa !139
  %170 = load i32, ptr %86, align 8, !tbaa !94
  %171 = call i32 @blf_hash(i32 noundef %170) #8
  %172 = load ptr, ptr %8, align 8, !tbaa !100
  %173 = zext i32 %171 to i64
  %174 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %172, i64 0, i32 4, i64 %173
  call void @BLI_addhead(ptr noundef nonnull %174, ptr noundef %85) #8
  br label %175

175:                                              ; preds = %76, %79, %50, %39, %132
  %176 = phi ptr [ %85, %132 ], [ %40, %39 ], [ null, %50 ], [ null, %79 ], [ null, %76 ]
  %177 = load ptr, ptr %25, align 8, !tbaa !101
  call void @BLI_spin_unlock(ptr noundef %177) #8
  br label %178

178:                                              ; preds = %175, %21
  %179 = phi ptr [ %22, %21 ], [ %176, %175 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #8
  ret ptr %179
}

declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #4

declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #4

declare i32 @FT_Load_Glyph(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @FT_Render_Glyph(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @FT_Bitmap_New(ptr noundef) local_unnamed_addr #4

declare i32 @FT_Bitmap_Convert(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @FT_Bitmap_Copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @FT_Bitmap_Done(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @FT_Outline_Get_CBox(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @blf_glyph_render(ptr noundef %0, ptr nocapture noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  %9 = alloca %struct.rctf, align 4
  %10 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !120
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %336, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 12
  %15 = load i32, ptr %14, align 4, !tbaa !121
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %336, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 17
  %19 = load i16, ptr %18, align 4, !tbaa !140
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %130

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !100
  %24 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 15
  %25 = load i32, ptr %24, align 8, !tbaa !141
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  tail call void @glGetIntegerv(i32 noundef 3379, ptr noundef nonnull %24) #8
  br label %28

28:                                               ; preds = %27, %21
  %29 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %23, i64 0, i32 8
  %30 = load i32, ptr %29, align 4, !tbaa !54
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  tail call fastcc void @blf_glyph_cache_texture(ptr noundef %0, ptr noundef %23)
  %33 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %23, i64 0, i32 11
  %34 = load i32, ptr %33, align 8, !tbaa !57
  %35 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %23, i64 0, i32 9
  store i32 %34, ptr %35, align 8, !tbaa !55
  %36 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %23, i64 0, i32 10
  store i32 0, ptr %36, align 4, !tbaa !56
  br label %37

37:                                               ; preds = %32, %28
  %38 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %23, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !55
  %40 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %23, i64 0, i32 14
  %41 = load i32, ptr %40, align 4, !tbaa !87
  %42 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %23, i64 0, i32 12
  %43 = load i32, ptr %42, align 4, !tbaa !80
  %44 = sub nsw i32 %41, %43
  %45 = icmp sgt i32 %39, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %23, i64 0, i32 11
  %48 = load i32, ptr %47, align 8, !tbaa !57
  store i32 %48, ptr %38, align 8, !tbaa !55
  %49 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %23, i64 0, i32 13
  %50 = load i32, ptr %49, align 8, !tbaa !86
  %51 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %23, i64 0, i32 10
  %52 = load i32, ptr %51, align 4, !tbaa !56
  %53 = add nsw i32 %52, %50
  store i32 %53, ptr %51, align 4, !tbaa !56
  %54 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %23, i64 0, i32 15
  %55 = load i32, ptr %54, align 8, !tbaa !88
  %56 = sub nsw i32 %55, %50
  %57 = icmp sgt i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  store i32 0, ptr %51, align 4, !tbaa !56
  tail call fastcc void @blf_glyph_cache_texture(ptr noundef %0, ptr noundef %23)
  br label %59

59:                                               ; preds = %46, %58, %37
  %60 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %23, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !52
  %62 = load i32, ptr %29, align 4, !tbaa !54
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, ptr %61, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !115
  %66 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 7
  store i32 %65, ptr %66, align 8, !tbaa !142
  %67 = load i32, ptr %38, align 8, !tbaa !55
  %68 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 8
  store i32 %67, ptr %68, align 4, !tbaa !112
  %69 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %23, i64 0, i32 10
  %70 = load i32, ptr %69, align 4, !tbaa !56
  %71 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 9
  store i32 %70, ptr %71, align 8, !tbaa !113
  %72 = load i32, ptr %10, align 8, !tbaa !120
  %73 = add nsw i32 %72, %67
  %74 = load i32, ptr %40, align 4, !tbaa !87
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %59
  %77 = sub i32 %74, %67
  store i32 %77, ptr %10, align 8, !tbaa !120
  br label %78

78:                                               ; preds = %76, %59
  %79 = load i32, ptr %14, align 4, !tbaa !121
  %80 = add nsw i32 %79, %70
  %81 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %23, i64 0, i32 15
  %82 = load i32, ptr %81, align 8, !tbaa !88
  %83 = icmp sgt i32 %80, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = sub i32 %82, %70
  store i32 %85, ptr %14, align 4, !tbaa !121
  br label %86

86:                                               ; preds = %84, %78
  tail call void @glPushClientAttrib(i32 noundef 1) #8
  tail call void @glPixelStorei(i32 noundef 3313, i32 noundef 0) #8
  tail call void @glPixelStorei(i32 noundef 3314, i32 noundef 0) #8
  tail call void @glPixelStorei(i32 noundef 3317, i32 noundef 1) #8
  %87 = load i32, ptr %66, align 8, !tbaa !142
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %87) #8
  %88 = load i32, ptr %68, align 4, !tbaa !112
  %89 = load i32, ptr %71, align 8, !tbaa !113
  %90 = load i32, ptr %10, align 8, !tbaa !120
  %91 = load i32, ptr %14, align 4, !tbaa !121
  %92 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 10
  %93 = load ptr, ptr %92, align 8, !tbaa !89
  tail call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef %88, i32 noundef %89, i32 noundef %90, i32 noundef %91, i32 noundef 6406, i32 noundef 5121, ptr noundef %93) #8
  tail call void @glPopClientAttrib() #8
  %94 = load i32, ptr %68, align 4, !tbaa !112
  %95 = sitofp i32 %94 to float
  %96 = load i32, ptr %40, align 4, !tbaa !87
  %97 = sitofp i32 %96 to float
  %98 = fdiv float %95, %97
  %99 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 14
  store float %98, ptr %99, align 4, !tbaa !143
  %100 = load i32, ptr %71, align 8, !tbaa !113
  %101 = sitofp i32 %100 to float
  %102 = load i32, ptr %81, align 8, !tbaa !88
  %103 = sitofp i32 %102 to float
  %104 = fdiv float %101, %103
  %105 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 14, i64 0, i64 1
  store float %104, ptr %105, align 4, !tbaa !143
  %106 = load i32, ptr %10, align 8, !tbaa !120
  %107 = add nsw i32 %106, %94
  %108 = sitofp i32 %107 to float
  %109 = fdiv float %108, %97
  %110 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 14, i64 1
  store float %109, ptr %110, align 4, !tbaa !143
  %111 = load i32, ptr %14, align 4, !tbaa !121
  %112 = add nsw i32 %111, %100
  %113 = sitofp i32 %112 to float
  %114 = fdiv float %113, %103
  %115 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 14, i64 1, i64 1
  store float %114, ptr %115, align 4, !tbaa !143
  %116 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 4
  %117 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 4, i32 1
  %118 = load float, ptr %117, align 4, !tbaa !144
  %119 = load float, ptr %116, align 4, !tbaa !145
  %120 = fsub float %118, %119
  %121 = fptosi float %120 to i32
  %122 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %23, i64 0, i32 11
  %123 = load i32, ptr %122, align 8, !tbaa !57
  %124 = add nsw i32 %123, %121
  %125 = load i32, ptr %38, align 8, !tbaa !55
  %126 = add nsw i32 %124, %125
  store i32 %126, ptr %38, align 8, !tbaa !55
  %127 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %23, i64 0, i32 17
  %128 = load i32, ptr %127, align 8, !tbaa !67
  %129 = add nsw i32 %128, -1
  store i32 %129, ptr %127, align 8, !tbaa !67
  store i16 1, ptr %18, align 4, !tbaa !140
  br label %130

130:                                              ; preds = %86, %17
  %131 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 15
  %132 = load float, ptr %131, align 4, !tbaa !127
  %133 = fadd float %132, %2
  %134 = tail call float @llvm.floor.f32(float %133)
  %135 = load i32, ptr %10, align 8, !tbaa !120
  %136 = sitofp i32 %135 to float
  %137 = fadd float %134, %136
  %138 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 16
  %139 = load float, ptr %138, align 8, !tbaa !129
  %140 = fadd float %139, %3
  %141 = load i32, ptr %14, align 4, !tbaa !121
  %142 = sitofp i32 %141 to float
  %143 = fsub float %140, %142
  %144 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 17
  %145 = load i32, ptr %144, align 8, !tbaa !102
  %146 = and i32 %145, 2
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %159, label %148

148:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  store float %134, ptr %9, align 4, !tbaa.struct !146
  %149 = getelementptr inbounds i8, ptr %9, i64 4
  store float %137, ptr %149, align 4, !tbaa.struct !147
  %150 = getelementptr inbounds i8, ptr %9, i64 8
  store float %140, ptr %150, align 4, !tbaa.struct !148
  %151 = getelementptr inbounds i8, ptr %9, i64 12
  store float %143, ptr %151, align 4, !tbaa.struct !149
  %152 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 3
  %153 = load float, ptr %152, align 4, !tbaa !143
  %154 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 3, i64 1
  %155 = load float, ptr %154, align 4, !tbaa !143
  call void @BLI_rctf_translate(ptr noundef nonnull %9, float noundef %153, float noundef %155) #8
  %156 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 12
  %157 = call zeroext i8 @BLI_rctf_inside_rctf(ptr noundef nonnull %156, ptr noundef nonnull %9) #8
  %158 = icmp eq i8 %157, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  br i1 %158, label %336, label %159

159:                                              ; preds = %148, %130
  %160 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 16
  %161 = load i32, ptr %160, align 4, !tbaa !150
  %162 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 7
  %163 = load i32, ptr %162, align 8, !tbaa !142
  %164 = icmp eq i32 %161, %163
  br i1 %164, label %166, label %165

165:                                              ; preds = %159
  store i32 %163, ptr %160, align 4, !tbaa !150
  call void @glBindTexture(i32 noundef 3553, i32 noundef %163) #8
  br label %166

166:                                              ; preds = %165, %159
  %167 = load i32, ptr %144, align 8, !tbaa !102
  %168 = and i32 %167, 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %263, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 7
  %172 = load i32, ptr %171, align 4, !tbaa !151
  %173 = sitofp i32 %172 to float
  %174 = fadd float %173, %2
  %175 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 8
  %176 = load i32, ptr %175, align 8, !tbaa !152
  %177 = sitofp i32 %176 to float
  %178 = fadd float %177, %3
  %179 = load float, ptr %131, align 4, !tbaa !127
  %180 = fadd float %179, %174
  %181 = call float @llvm.floor.f32(float %180)
  %182 = load i32, ptr %10, align 8, !tbaa !120
  %183 = sitofp i32 %182 to float
  %184 = fadd float %181, %183
  %185 = load float, ptr %138, align 8, !tbaa !129
  %186 = fadd float %178, %185
  %187 = load i32, ptr %14, align 4, !tbaa !121
  %188 = sitofp i32 %187 to float
  %189 = fsub float %186, %188
  %190 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 6
  %191 = load i32, ptr %190, align 8, !tbaa !153
  %192 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 9
  switch i32 %191, label %259 [
    i32 3, label %193
    i32 5, label %226
  ]

193:                                              ; preds = %170
  %194 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  %195 = load float, ptr %192, align 4, !tbaa !143
  store float %195, ptr %8, align 16, !tbaa !143
  %196 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 9, i64 1
  %197 = load float, ptr %196, align 4, !tbaa !143
  %198 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  store float %197, ptr %198, align 4, !tbaa !143
  %199 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 9, i64 2
  %200 = load float, ptr %199, align 4, !tbaa !143
  %201 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  store float %200, ptr %201, align 8, !tbaa !143
  %202 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 9, i64 3
  %203 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  br label %204

204:                                              ; preds = %222, %193
  %205 = phi i32 [ -1, %193 ], [ %223, %222 ]
  %206 = phi ptr [ @__const.blf_texture3_draw.soft, %193 ], [ %220, %222 ]
  %207 = sitofp i32 %205 to float
  %208 = fadd float %181, %207
  %209 = fadd float %184, %207
  br label %210

210:                                              ; preds = %210, %204
  %211 = phi i32 [ -1, %204 ], [ %219, %210 ]
  %212 = phi ptr [ %206, %204 ], [ %220, %210 ]
  %213 = sitofp i32 %211 to float
  %214 = load float, ptr %212, align 4, !tbaa !143
  %215 = load float, ptr %202, align 4, !tbaa !143
  %216 = fmul float %214, %215
  store float %216, ptr %203, align 4, !tbaa !143
  call void @glColor4fv(ptr noundef nonnull %8) #8
  %217 = fadd float %186, %213
  %218 = fadd float %189, %213
  call fastcc void @blf_texture_draw(ptr noundef nonnull %194, float noundef %208, float noundef %217, float noundef %209, float noundef %218)
  %219 = add nsw i32 %211, 1
  %220 = getelementptr inbounds float, ptr %212, i64 1
  %221 = icmp eq i32 %219, 2
  br i1 %221, label %222, label %210, !llvm.loop !154

222:                                              ; preds = %210
  %223 = add nsw i32 %205, 1
  %224 = icmp eq i32 %223, 2
  br i1 %224, label %225, label %204, !llvm.loop !155

225:                                              ; preds = %222
  call void @glColor4fv(ptr noundef nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  br label %261

226:                                              ; preds = %170
  %227 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  %228 = load float, ptr %192, align 4, !tbaa !143
  store float %228, ptr %7, align 16, !tbaa !143
  %229 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 9, i64 1
  %230 = load float, ptr %229, align 4, !tbaa !143
  %231 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  store float %230, ptr %231, align 4, !tbaa !143
  %232 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 9, i64 2
  %233 = load float, ptr %232, align 4, !tbaa !143
  %234 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  store float %233, ptr %234, align 8, !tbaa !143
  %235 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 9, i64 3
  %236 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  br label %237

237:                                              ; preds = %255, %226
  %238 = phi i32 [ -2, %226 ], [ %256, %255 ]
  %239 = phi ptr [ @__const.blf_texture5_draw.soft, %226 ], [ %253, %255 ]
  %240 = sitofp i32 %238 to float
  %241 = fadd float %181, %240
  %242 = fadd float %184, %240
  br label %243

243:                                              ; preds = %243, %237
  %244 = phi i32 [ -2, %237 ], [ %252, %243 ]
  %245 = phi ptr [ %239, %237 ], [ %253, %243 ]
  %246 = sitofp i32 %244 to float
  %247 = load float, ptr %245, align 4, !tbaa !143
  %248 = load float, ptr %235, align 4, !tbaa !143
  %249 = fmul float %247, %248
  store float %249, ptr %236, align 4, !tbaa !143
  call void @glColor4fv(ptr noundef nonnull %7) #8
  %250 = fadd float %186, %246
  %251 = fadd float %189, %246
  call fastcc void @blf_texture_draw(ptr noundef nonnull %227, float noundef %241, float noundef %250, float noundef %242, float noundef %251)
  %252 = add nsw i32 %244, 1
  %253 = getelementptr inbounds float, ptr %245, i64 1
  %254 = icmp eq i32 %252, 3
  br i1 %254, label %255, label %243, !llvm.loop !156

255:                                              ; preds = %243
  %256 = add nsw i32 %238, 1
  %257 = icmp eq i32 %256, 3
  br i1 %257, label %258, label %237, !llvm.loop !157

258:                                              ; preds = %255
  call void @glColor4fv(ptr noundef nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  br label %261

259:                                              ; preds = %170
  call void @glColor4fv(ptr noundef nonnull %192) #8
  %260 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 14
  call fastcc void @blf_texture_draw(ptr noundef nonnull %260, float noundef %181, float noundef %186, float noundef %184, float noundef %189)
  br label %261

261:                                              ; preds = %259, %258, %225
  %262 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 10
  call void @glColor4fv(ptr noundef nonnull %262) #8
  br label %263

263:                                              ; preds = %261, %166
  %264 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 5
  %265 = load i32, ptr %264, align 4, !tbaa !158
  switch i32 %265, label %334 [
    i32 3, label %266
    i32 5, label %300
  ]

266:                                              ; preds = %263
  %267 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 10
  %268 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  %269 = load float, ptr %267, align 4, !tbaa !143
  store float %269, ptr %6, align 16, !tbaa !143
  %270 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 10, i64 1
  %271 = load float, ptr %270, align 4, !tbaa !143
  %272 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  store float %271, ptr %272, align 4, !tbaa !143
  %273 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 10, i64 2
  %274 = load float, ptr %273, align 4, !tbaa !143
  %275 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  store float %274, ptr %275, align 8, !tbaa !143
  %276 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 10, i64 3
  %277 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  br label %278

278:                                              ; preds = %296, %266
  %279 = phi i32 [ -1, %266 ], [ %297, %296 ]
  %280 = phi ptr [ @__const.blf_texture3_draw.soft, %266 ], [ %294, %296 ]
  %281 = sitofp i32 %279 to float
  %282 = fadd float %134, %281
  %283 = fadd float %137, %281
  br label %284

284:                                              ; preds = %284, %278
  %285 = phi i32 [ -1, %278 ], [ %293, %284 ]
  %286 = phi ptr [ %280, %278 ], [ %294, %284 ]
  %287 = sitofp i32 %285 to float
  %288 = load float, ptr %286, align 4, !tbaa !143
  %289 = load float, ptr %276, align 4, !tbaa !143
  %290 = fmul float %288, %289
  store float %290, ptr %277, align 4, !tbaa !143
  call void @glColor4fv(ptr noundef nonnull %6) #8
  %291 = fadd float %140, %287
  %292 = fadd float %143, %287
  call fastcc void @blf_texture_draw(ptr noundef nonnull %268, float noundef %282, float noundef %291, float noundef %283, float noundef %292)
  %293 = add nsw i32 %285, 1
  %294 = getelementptr inbounds float, ptr %286, i64 1
  %295 = icmp eq i32 %293, 2
  br i1 %295, label %296, label %284, !llvm.loop !154

296:                                              ; preds = %284
  %297 = add nsw i32 %279, 1
  %298 = icmp eq i32 %297, 2
  br i1 %298, label %299, label %278, !llvm.loop !155

299:                                              ; preds = %296
  call void @glColor4fv(ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  br label %336

300:                                              ; preds = %263
  %301 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 10
  %302 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  %303 = load float, ptr %301, align 4, !tbaa !143
  store float %303, ptr %5, align 16, !tbaa !143
  %304 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 10, i64 1
  %305 = load float, ptr %304, align 4, !tbaa !143
  %306 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  store float %305, ptr %306, align 4, !tbaa !143
  %307 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 10, i64 2
  %308 = load float, ptr %307, align 4, !tbaa !143
  %309 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  store float %308, ptr %309, align 8, !tbaa !143
  %310 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 10, i64 3
  %311 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  br label %312

312:                                              ; preds = %330, %300
  %313 = phi i32 [ -2, %300 ], [ %331, %330 ]
  %314 = phi ptr [ @__const.blf_texture5_draw.soft, %300 ], [ %328, %330 ]
  %315 = sitofp i32 %313 to float
  %316 = fadd float %134, %315
  %317 = fadd float %137, %315
  br label %318

318:                                              ; preds = %318, %312
  %319 = phi i32 [ -2, %312 ], [ %327, %318 ]
  %320 = phi ptr [ %314, %312 ], [ %328, %318 ]
  %321 = sitofp i32 %319 to float
  %322 = load float, ptr %320, align 4, !tbaa !143
  %323 = load float, ptr %310, align 4, !tbaa !143
  %324 = fmul float %322, %323
  store float %324, ptr %311, align 4, !tbaa !143
  call void @glColor4fv(ptr noundef nonnull %5) #8
  %325 = fadd float %140, %321
  %326 = fadd float %143, %321
  call fastcc void @blf_texture_draw(ptr noundef nonnull %302, float noundef %316, float noundef %325, float noundef %317, float noundef %326)
  %327 = add nsw i32 %319, 1
  %328 = getelementptr inbounds float, ptr %320, i64 1
  %329 = icmp eq i32 %327, 3
  br i1 %329, label %330, label %318, !llvm.loop !156

330:                                              ; preds = %318
  %331 = add nsw i32 %313, 1
  %332 = icmp eq i32 %331, 3
  br i1 %332, label %333, label %312, !llvm.loop !157

333:                                              ; preds = %330
  call void @glColor4fv(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  br label %336

334:                                              ; preds = %263
  %335 = getelementptr inbounds %struct.GlyphBLF, ptr %1, i64 0, i32 14
  call fastcc void @blf_texture_draw(ptr noundef nonnull %335, float noundef %134, float noundef %140, float noundef %137, float noundef %143)
  br label %336

336:                                              ; preds = %299, %333, %334, %4, %13, %148
  ret void
}

declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @blf_glyph_cache_texture(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %1, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !54
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 4, !tbaa !54
  %6 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %1, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !53
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = shl i32 %7, 1
  store i32 %10, ptr %6, align 8, !tbaa !53
  %11 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %1, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = zext i32 %10 to i64
  %15 = shl nuw nsw i64 %14, 2
  %16 = tail call ptr %11(ptr noundef %13, i64 noundef %15, ptr noundef nonnull @__func__.blf_glyph_cache_texture) #8
  store ptr %16, ptr %12, align 8, !tbaa !52
  br label %17

17:                                               ; preds = %9, %2
  %18 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %1, i64 0, i32 17
  %19 = load i32, ptr %18, align 8, !tbaa !67
  %20 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %1, i64 0, i32 12
  %21 = load i32, ptr %20, align 4, !tbaa !80
  %22 = mul nsw i32 %21, %19
  %23 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %1, i64 0, i32 11
  %24 = load i32, ptr %23, align 8, !tbaa !57
  %25 = shl nsw i32 %24, 1
  %26 = add nsw i32 %25, %22
  %27 = tail call i32 @blf_next_p2(i32 noundef %26) #8
  %28 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %1, i64 0, i32 14
  store i32 %27, ptr %28, align 4, !tbaa !87
  %29 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 15
  %30 = load i32, ptr %29, align 8, !tbaa !141
  %31 = tail call i32 @llvm.smin.i32(i32 %27, i32 %30)
  store i32 %31, ptr %28, align 4
  %32 = load i32, ptr %23, align 8, !tbaa !57
  %33 = shl nsw i32 %32, 1
  %34 = sub nsw i32 %31, %33
  %35 = load i32, ptr %20, align 4, !tbaa !80
  %36 = sdiv i32 %34, %35
  %37 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %1, i64 0, i32 16
  %38 = load i32, ptr %37, align 4, !tbaa !66
  %39 = sdiv i32 %38, %36
  %40 = add nsw i32 %39, 1
  %41 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %1, i64 0, i32 13
  %42 = load i32, ptr %41, align 8, !tbaa !86
  %43 = mul nsw i32 %40, %42
  %44 = tail call i32 @blf_next_p2(i32 noundef %43) #8
  %45 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %1, i64 0, i32 15
  store i32 %44, ptr %45, align 8, !tbaa !88
  %46 = load i32, ptr %29, align 8, !tbaa !141
  %47 = tail call i32 @llvm.smin.i32(i32 %44, i32 %46)
  store i32 %47, ptr %45, align 8
  %48 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %1, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !52
  %50 = load i32, ptr %3, align 4, !tbaa !54
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %49, i64 %51
  tail call void @glGenTextures(i32 noundef 1, ptr noundef %52) #8
  %53 = load ptr, ptr %48, align 8, !tbaa !52
  %54 = load i32, ptr %3, align 4, !tbaa !54
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %53, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !115
  %58 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 16
  store i32 %57, ptr %58, align 4, !tbaa !150
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %57) #8
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10242, i32 noundef 10496) #8
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10243, i32 noundef 10496) #8
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10240, i32 noundef 9728) #8
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10241, i32 noundef 9728) #8
  %59 = load i32, ptr %28, align 4, !tbaa !87
  %60 = load i32, ptr %45, align 8, !tbaa !88
  tail call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 6406, i32 noundef %59, i32 noundef %60, i32 noundef 0, i32 noundef 6406, i32 noundef 5121, ptr noundef null) #8
  ret void
}

declare void @glPushClientAttrib(i32 noundef) local_unnamed_addr #4

declare void @glPixelStorei(i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @glBindTexture(i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @glTexSubImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @glPopClientAttrib() local_unnamed_addr #4

declare void @BLI_rctf_translate(ptr noundef, float noundef, float noundef) local_unnamed_addr #4

declare zeroext i8 @BLI_rctf_inside_rctf(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @glColor4fv(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @blf_texture_draw(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #2 {
  tail call void @glBegin(i32 noundef 7) #8
  %6 = load float, ptr %0, align 4, !tbaa !143
  %7 = getelementptr inbounds [2 x float], ptr %0, i64 0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !143
  tail call void @glTexCoord2f(float noundef %6, float noundef %8) #8
  tail call void @glVertex2f(float noundef %1, float noundef %2) #8
  %9 = load float, ptr %0, align 4, !tbaa !143
  %10 = getelementptr inbounds [2 x float], ptr %0, i64 1
  %11 = getelementptr inbounds [2 x float], ptr %0, i64 1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !143
  tail call void @glTexCoord2f(float noundef %9, float noundef %12) #8
  tail call void @glVertex2f(float noundef %1, float noundef %4) #8
  %13 = load float, ptr %10, align 4, !tbaa !143
  %14 = load float, ptr %11, align 4, !tbaa !143
  tail call void @glTexCoord2f(float noundef %13, float noundef %14) #8
  tail call void @glVertex2f(float noundef %3, float noundef %4) #8
  %15 = load float, ptr %10, align 4, !tbaa !143
  %16 = load float, ptr %7, align 4, !tbaa !143
  tail call void @glTexCoord2f(float noundef %15, float noundef %16) #8
  tail call void @glVertex2f(float noundef %3, float noundef %2) #8
  tail call void @glEnd() #8
  ret void
}

declare i32 @blf_next_p2(i32 noundef) local_unnamed_addr #4

declare void @glGenTextures(i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @glTexParameteri(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @glTexImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #6

declare void @glBegin(i32 noundef) local_unnamed_addr #4

declare void @glTexCoord2f(float noundef, float noundef) local_unnamed_addr #4

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #4

declare void @glEnd() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!38 = !{!39, !40, i64 16}
!39 = !{!"GlyphCacheBLF", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !36, i64 4136, !35, i64 6184, !40, i64 6192, !40, i64 6196, !40, i64 6200, !40, i64 6204, !40, i64 6208, !40, i64 6212, !40, i64 6216, !40, i64 6220, !40, i64 6224, !40, i64 6228, !40, i64 6232, !41, i64 6236, !41, i64 6240}
!40 = !{!"int", !36, i64 0}
!41 = !{!"float", !36, i64 0}
!42 = !{!39, !40, i64 20}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!47, !40, i64 244}
!47 = !{!"FontBLF", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 28, !41, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !36, i64 60, !36, i64 76, !36, i64 96, !48, i64 224, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !49, i64 264, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !50, i64 312}
!48 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!49 = !{!"ListBase", !35, i64 0, !35, i64 8}
!50 = !{!"FontBufInfoBLF", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !35, i64 32, !36, i64 40}
!51 = !{!47, !40, i64 240}
!52 = !{!39, !35, i64 6184}
!53 = !{!39, !40, i64 6192}
!54 = !{!39, !40, i64 6196}
!55 = !{!39, !40, i64 6200}
!56 = !{!39, !40, i64 6204}
!57 = !{!39, !40, i64 6208}
!58 = !{!47, !35, i64 304}
!59 = !{!60, !61, i64 32}
!60 = !{!"FT_FaceRec_", !61, i64 0, !61, i64 8, !61, i64 16, !61, i64 24, !61, i64 32, !35, i64 40, !35, i64 48, !40, i64 56, !35, i64 64, !40, i64 72, !35, i64 80, !62, i64 88, !63, i64 104, !64, i64 136, !64, i64 138, !64, i64 140, !64, i64 142, !64, i64 144, !64, i64 146, !64, i64 148, !64, i64 150, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !65, i64 200, !62, i64 216, !35, i64 232, !35, i64 240}
!61 = !{!"long", !36, i64 0}
!62 = !{!"FT_Generic_", !35, i64 0, !35, i64 8}
!63 = !{!"FT_BBox_", !61, i64 0, !61, i64 8, !61, i64 16, !61, i64 24}
!64 = !{!"short", !36, i64 0}
!65 = !{!"FT_ListRec_", !35, i64 0, !35, i64 8}
!66 = !{!39, !40, i64 6228}
!67 = !{!39, !40, i64 6232}
!68 = !{!60, !35, i64 160}
!69 = !{!70, !61, i64 48}
!70 = !{!"FT_SizeRec_", !35, i64 0, !62, i64 8, !71, i64 24, !35, i64 80}
!71 = !{!"FT_Size_Metrics_", !64, i64 0, !64, i64 2, !61, i64 8, !61, i64 16, !61, i64 24, !61, i64 32, !61, i64 40, !61, i64 48}
!72 = !{!39, !41, i64 6236}
!73 = !{!70, !61, i64 56}
!74 = !{!39, !41, i64 6240}
!75 = !{!60, !61, i64 16}
!76 = !{!60, !61, i64 120}
!77 = !{!60, !61, i64 104}
!78 = !{!70, !64, i64 24}
!79 = !{!60, !64, i64 136}
!80 = !{!39, !40, i64 6212}
!81 = !{!60, !61, i64 128}
!82 = !{!60, !61, i64 112}
!83 = !{!70, !64, i64 26}
!84 = !{!70, !61, i64 72}
!85 = !{!70, !61, i64 64}
!86 = !{!39, !40, i64 6216}
!87 = !{!39, !40, i64 6220}
!88 = !{!39, !40, i64 6224}
!89 = !{!90, !35, i64 64}
!90 = !{!"GlyphBLF", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !48, i64 24, !41, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !35, i64 64, !40, i64 72, !40, i64 76, !40, i64 80, !36, i64 84, !41, i64 100, !41, i64 104, !64, i64 108}
!91 = distinct !{!91, !44, !45}
!92 = distinct !{!92, !44, !45}
!93 = distinct !{!93, !44, !45}
!94 = !{!90, !40, i64 16}
!95 = distinct !{!95, !44, !45}
!96 = !{!97, !64, i64 8980}
!97 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !40, i64 8468, !64, i64 8472, !64, i64 8474, !64, i64 8476, !64, i64 8478, !64, i64 8480, !64, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !64, i64 8496, !64, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !64, i64 8528, !64, i64 8530, !64, i64 8532, !64, i64 8534, !49, i64 8536, !49, i64 8552, !49, i64 8568, !49, i64 8584, !49, i64 8600, !49, i64 8616, !49, i64 8632, !36, i64 8648, !64, i64 8712, !64, i64 8714, !64, i64 8716, !64, i64 8718, !64, i64 8720, !64, i64 8722, !64, i64 8724, !64, i64 8726, !36, i64 8728, !64, i64 8896, !64, i64 8898, !64, i64 8900, !64, i64 8902, !64, i64 8904, !64, i64 8906, !64, i64 8908, !64, i64 8910, !40, i64 8912, !40, i64 8916, !64, i64 8920, !64, i64 8922, !64, i64 8924, !64, i64 8926, !64, i64 8928, !64, i64 8930, !64, i64 8932, !64, i64 8934, !64, i64 8936, !64, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !64, i64 8944, !64, i64 8946, !64, i64 8948, !64, i64 8950, !64, i64 8952, !64, i64 8954, !41, i64 8956, !41, i64 8960, !40, i64 8964, !64, i64 8968, !64, i64 8970, !41, i64 8972, !64, i64 8976, !64, i64 8978, !64, i64 8980, !64, i64 8982, !98, i64 8984, !36, i64 9760, !36, i64 9772, !64, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !40, i64 10896, !40, i64 10900, !41, i64 10904, !41, i64 10908, !40, i64 10912, !64, i64 10916, !64, i64 10918, !64, i64 10920, !64, i64 10922, !64, i64 10924, !64, i64 10926, !99, i64 10928}
!98 = !{!"ColorBand", !64, i64 0, !64, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!99 = !{!"WalkNavigation", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !64, i64 24, !36, i64 26}
!100 = !{!47, !35, i64 280}
!101 = !{!47, !35, i64 296}
!102 = !{!47, !40, i64 256}
!103 = !{!60, !35, i64 152}
!104 = !{!47, !35, i64 288}
!105 = !{!106, !40, i64 144}
!106 = !{!"FT_GlyphSlotRec_", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24, !62, i64 32, !107, i64 48, !61, i64 112, !61, i64 120, !108, i64 128, !40, i64 144, !109, i64 152, !40, i64 192, !40, i64 196, !110, i64 200, !40, i64 240, !35, i64 248, !35, i64 256, !61, i64 264, !61, i64 272, !61, i64 280, !35, i64 288, !35, i64 296}
!107 = !{!"FT_Glyph_Metrics_", !61, i64 0, !61, i64 8, !61, i64 16, !61, i64 24, !61, i64 32, !61, i64 40, !61, i64 48, !61, i64 56}
!108 = !{!"FT_Vector_", !61, i64 0, !61, i64 8}
!109 = !{!"FT_Bitmap_", !40, i64 0, !40, i64 4, !40, i64 8, !35, i64 16, !64, i64 24, !36, i64 26, !36, i64 27, !35, i64 32}
!110 = !{!"FT_Outline_", !64, i64 0, !64, i64 2, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32}
!111 = !{!90, !40, i64 20}
!112 = !{!90, !40, i64 52}
!113 = !{!90, !40, i64 56}
!114 = !{i64 0, i64 4, !115, i64 4, i64 4, !115, i64 8, i64 4, !115, i64 16, i64 8, !34, i64 24, i64 2, !116, i64 26, i64 1, !117, i64 27, i64 1, !117, i64 32, i64 8, !34}
!115 = !{!40, !40, i64 0}
!116 = !{!64, !64, i64 0}
!117 = !{!36, !36, i64 0}
!118 = !{i64 0, i64 4, !115, i64 4, i64 4, !115, i64 12, i64 8, !34, i64 20, i64 2, !116, i64 22, i64 1, !117, i64 23, i64 1, !117, i64 28, i64 8, !34}
!119 = !{i64 0, i64 8, !34, i64 8, i64 2, !116, i64 10, i64 1, !117, i64 11, i64 1, !117, i64 16, i64 8, !34}
!120 = !{!90, !40, i64 72}
!121 = !{!90, !40, i64 76}
!122 = distinct !{!122, !44, !45}
!123 = !{!106, !61, i64 128}
!124 = !{!90, !41, i64 40}
!125 = !{!90, !40, i64 44}
!126 = !{!106, !40, i64 192}
!127 = !{!90, !41, i64 100}
!128 = !{!106, !40, i64 196}
!129 = !{!90, !41, i64 104}
!130 = !{!106, !40, i64 160}
!131 = !{!90, !40, i64 80}
!132 = !{!63, !61, i64 0}
!133 = !{!90, !41, i64 24}
!134 = !{!63, !61, i64 16}
!135 = !{!90, !41, i64 28}
!136 = !{!63, !61, i64 8}
!137 = !{!90, !41, i64 32}
!138 = !{!63, !61, i64 24}
!139 = !{!90, !41, i64 36}
!140 = !{!90, !64, i64 108}
!141 = !{!47, !40, i64 248}
!142 = !{!90, !40, i64 48}
!143 = !{!41, !41, i64 0}
!144 = !{!48, !41, i64 4}
!145 = !{!48, !41, i64 0}
!146 = !{i64 0, i64 4, !143, i64 4, i64 4, !143, i64 8, i64 4, !143, i64 12, i64 4, !143}
!147 = !{i64 0, i64 4, !143, i64 4, i64 4, !143, i64 8, i64 4, !143}
!148 = !{i64 0, i64 4, !143, i64 4, i64 4, !143}
!149 = !{i64 0, i64 4, !143}
!150 = !{!47, !40, i64 252}
!151 = !{!47, !40, i64 52}
!152 = !{!47, !40, i64 56}
!153 = !{!47, !40, i64 48}
!154 = distinct !{!154, !44, !45}
!155 = distinct !{!155, !44, !45}
!156 = distinct !{!156, !44, !45}
!157 = distinct !{!157, !44, !45}
!158 = !{!47, !40, i64 44}

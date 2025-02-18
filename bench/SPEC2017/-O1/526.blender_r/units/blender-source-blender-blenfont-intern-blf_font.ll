; ModuleID = 'blender/source/blender/blenfont/intern/blf_font.c'
source_filename = "blender/source/blender/blenfont/intern/blf_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FontBLF = type { ptr, ptr, [3 x float], [3 x float], float, i32, i32, i32, i32, [4 x float], [4 x float], [16 x double], %struct.rctf, i32, i32, i32, i32, i32, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.FontBufInfoBLF }
%struct.rctf = type { float, float, float, float }
%struct.ListBase = type { ptr, ptr }
%struct.FontBufInfoBLF = type { ptr, ptr, i32, i32, i32, ptr, [4 x float] }
%struct.FT_Vector_ = type { i64, i64 }
%struct.GlyphCacheBLF = type { ptr, ptr, i32, i32, [257 x %struct.ListBase], [256 x ptr], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float }
%struct.FT_FaceRec_ = type { i64, i64, i64, i64, i64, ptr, ptr, i32, ptr, i32, ptr, %struct.FT_Generic_, %struct.FT_BBox_, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, %struct.FT_ListRec_, %struct.FT_Generic_, ptr, ptr }
%struct.FT_BBox_ = type { i64, i64, i64, i64 }
%struct.FT_ListRec_ = type { ptr, ptr }
%struct.FT_Generic_ = type { ptr, ptr }
%struct.GlyphBLF = type { ptr, ptr, i32, i32, %struct.rctf, float, i32, i32, i32, i32, ptr, i32, i32, i32, [2 x [2 x float]], float, float, i16 }
%struct.FT_Open_Args_ = type { i32, ptr, i64, ptr, ptr, ptr, i32, ptr }

@ft_lib_mutex = internal global i32 0, align 4
@ft_lib = internal global ptr null, align 8
@.str = private unnamed_addr constant [57 x i8] c"The current font don't support the size, %u and dpi, %u\0A\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.blf_font_width_to_rstrlen = private unnamed_addr constant [26 x i8] c"blf_font_width_to_rstrlen\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"blf_font_new\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"FT_Attach_File failed to load '%s' with error %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"blf_font_new_from_mem\00", align 1
@str.5 = private unnamed_addr constant [37 x i8] c"Can't set the unicode character map!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @blf_font_init() local_unnamed_addr #0 {
  tail call void @BLI_spin_init(ptr noundef nonnull @ft_lib_mutex) #8
  %1 = tail call i32 @FT_Init_FreeType(ptr noundef nonnull @ft_lib) #8
  ret i32 %1
}

declare void @BLI_spin_init(ptr noundef) local_unnamed_addr #1

declare i32 @FT_Init_FreeType(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @blf_font_exit() local_unnamed_addr #0 {
  %1 = load ptr, ptr @ft_lib, align 8, !tbaa !34
  %2 = tail call i32 @FT_Done_FreeType(ptr noundef %1) #8
  tail call void @BLI_spin_end(ptr noundef nonnull @ft_lib_mutex) #8
  ret void
}

declare i32 @FT_Done_FreeType(ptr noundef) local_unnamed_addr #1

declare void @BLI_spin_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @blf_font_size(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = shl i32 %1, 6
  %7 = zext i32 %6 to i64
  %8 = tail call i32 @FT_Set_Char_Size(ptr noundef %5, i64 noundef 0, i64 noundef %7, i32 noundef %2, i32 noundef %2) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %1, i32 noundef %2)
  br label %25

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 14
  store i32 %1, ptr %13, align 4, !tbaa !45
  %14 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 13
  store i32 %2, ptr %14, align 8, !tbaa !46
  %15 = tail call ptr @blf_glyph_cache_find(ptr noundef %0, i32 noundef %1, i32 noundef %2) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  store ptr %15, ptr %18, align 8, !tbaa !47
  br label %25

19:                                               ; preds = %12
  %20 = tail call ptr @blf_glyph_cache_new(ptr noundef %0) #8
  %21 = icmp eq ptr %20, null
  %22 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  br i1 %21, label %24, label %23

23:                                               ; preds = %19
  store ptr %20, ptr %22, align 8, !tbaa !47
  br label %25

24:                                               ; preds = %19
  store ptr null, ptr %22, align 8, !tbaa !47
  br label %25

25:                                               ; preds = %17, %24, %23, %10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @FT_Set_Char_Size(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare ptr @blf_glyph_cache_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @blf_glyph_cache_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @blf_font_draw(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.FT_Vector_, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store i64 0, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %7, i64 0, i32 5
  %9 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.FT_FaceRec_, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !50
  %13 = trunc i64 %12 to i8
  %14 = and i8 %13, 64
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 17
  %18 = load i32, ptr %17, align 8, !tbaa !56
  %19 = lshr i32 %18, 3
  %20 = and i32 %19, 1
  %21 = xor i32 %20, 1
  br label %22

22:                                               ; preds = %3, %16
  %23 = phi i32 [ %21, %16 ], [ 0, %3 ]
  %24 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %7, i64 0, i32 5, i64 48
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %22, %37
  %28 = phi i64 [ %40, %37 ], [ 0, %22 ]
  %29 = load ptr, ptr %6, align 8, !tbaa !47
  %30 = trunc i64 %28 to i32
  %31 = tail call ptr @blf_glyph_search(ptr noundef %29, i32 noundef %30) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load ptr, ptr %9, align 8, !tbaa !38
  %35 = tail call i32 @FT_Get_Char_Index(ptr noundef %34, i64 noundef %28) #8
  %36 = tail call ptr @blf_glyph_add(ptr noundef %0, i32 noundef %35, i32 noundef %30) #8
  br label %37

37:                                               ; preds = %33, %27
  %38 = phi ptr [ %31, %27 ], [ %36, %33 ]
  %39 = getelementptr inbounds ptr, ptr %8, i64 %28
  store ptr %38, ptr %39, align 8, !tbaa !34
  %40 = add nuw nsw i64 %28, 1
  %41 = icmp eq i64 %40, 256
  br i1 %41, label %42, label %27, !llvm.loop !57

42:                                               ; preds = %37, %22
  %43 = icmp ne i8 %14, 0
  br label %44

44:                                               ; preds = %98, %42
  %45 = phi i32 [ %103, %98 ], [ 0, %42 ]
  %46 = phi ptr [ %77, %98 ], [ null, %42 ]
  %47 = phi ptr [ %77, %98 ], [ undef, %42 ]
  br label %48

48:                                               ; preds = %44, %80
  %49 = phi ptr [ null, %80 ], [ %47, %44 ]
  %50 = load i64, ptr %5, align 8, !tbaa !48
  %51 = icmp ult i64 %50, %2
  br i1 %51, label %52, label %104

52:                                               ; preds = %48
  %53 = getelementptr inbounds i8, ptr %1, i64 %50
  %54 = load i8, ptr %53, align 1, !tbaa !60
  %55 = zext i8 %54 to i32
  %56 = icmp eq i8 %54, 0
  br i1 %56, label %104, label %57

57:                                               ; preds = %52
  %58 = icmp sgt i8 %54, -1
  br i1 %58, label %59, label %64

59:                                               ; preds = %57
  %60 = zext nneg i8 %54 to i64
  %61 = getelementptr inbounds ptr, ptr %8, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !34
  %63 = add i64 %50, 1
  store i64 %63, ptr %5, align 8, !tbaa !48
  br label %76

64:                                               ; preds = %57
  %65 = call i32 @BLI_str_utf8_as_unicode_step(ptr noundef %1, ptr noundef nonnull %5) #8
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %76, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %6, align 8, !tbaa !47
  %69 = call ptr @blf_glyph_search(ptr noundef %68, i32 noundef %65) #8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load ptr, ptr %9, align 8, !tbaa !38
  %73 = zext i32 %65 to i64
  %74 = call i32 @FT_Get_Char_Index(ptr noundef %72, i64 noundef %73) #8
  %75 = call ptr @blf_glyph_add(ptr noundef %0, i32 noundef %74, i32 noundef %65) #8
  br label %76

76:                                               ; preds = %64, %71, %67, %59
  %77 = phi ptr [ %62, %59 ], [ %75, %71 ], [ %69, %67 ], [ %49, %64 ]
  %78 = phi i32 [ %55, %59 ], [ %65, %71 ], [ %65, %67 ], [ -1, %64 ]
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %104, label %80

80:                                               ; preds = %76
  %81 = icmp eq ptr %77, null
  br i1 %81, label %48, label %82, !llvm.loop !61

82:                                               ; preds = %80
  %83 = icmp ne ptr %46, null
  %84 = select i1 %43, i1 %83, i1 false
  br i1 %84, label %85, label %98

85:                                               ; preds = %82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %86 = load ptr, ptr %9, align 8, !tbaa !38
  %87 = getelementptr inbounds %struct.GlyphBLF, ptr %46, i64 0, i32 3
  %88 = load i32, ptr %87, align 4, !tbaa !62
  %89 = getelementptr inbounds %struct.GlyphBLF, ptr %77, i64 0, i32 3
  %90 = load i32, ptr %89, align 4, !tbaa !62
  %91 = call i32 @FT_Get_Kerning(ptr noundef %86, i32 noundef %88, i32 noundef %90, i32 noundef %23, ptr noundef nonnull %4) #8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load i64, ptr %4, align 8, !tbaa !64
  %95 = trunc i64 %94 to i32
  %96 = ashr i32 %95, 6
  %97 = add nsw i32 %96, %45
  br label %98

98:                                               ; preds = %93, %85, %82
  %99 = phi i32 [ %97, %93 ], [ %45, %85 ], [ %45, %82 ]
  %100 = sitofp i32 %99 to float
  call void @blf_glyph_render(ptr noundef %0, ptr noundef nonnull %77, float noundef %100, float noundef 0.000000e+00) #8
  %101 = getelementptr inbounds %struct.GlyphBLF, ptr %77, i64 0, i32 6
  %102 = load i32, ptr %101, align 4, !tbaa !66
  %103 = add nsw i32 %102, %99
  br label %44, !llvm.loop !61

104:                                              ; preds = %48, %76, %52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret void
}

declare i32 @BLI_str_utf8_as_unicode_step(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @blf_glyph_search(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @blf_glyph_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @FT_Get_Char_Index(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @FT_Get_Kerning(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @blf_glyph_render(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @blf_font_draw_ascii(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.FT_Vector_, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %6, i64 0, i32 5
  %8 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.FT_FaceRec_, ptr %9, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !50
  %12 = trunc i64 %11 to i8
  %13 = and i8 %12, 64
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 17
  %17 = load i32, ptr %16, align 8, !tbaa !56
  %18 = lshr i32 %17, 3
  %19 = and i32 %18, 1
  %20 = xor i32 %19, 1
  br label %21

21:                                               ; preds = %3, %15
  %22 = phi i32 [ %20, %15 ], [ 0, %3 ]
  %23 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %6, i64 0, i32 5, i64 48
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %21, %36
  %27 = phi i64 [ %39, %36 ], [ 0, %21 ]
  %28 = load ptr, ptr %5, align 8, !tbaa !47
  %29 = trunc i64 %27 to i32
  %30 = tail call ptr @blf_glyph_search(ptr noundef %28, i32 noundef %29) #8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load ptr, ptr %8, align 8, !tbaa !38
  %34 = tail call i32 @FT_Get_Char_Index(ptr noundef %33, i64 noundef %27) #8
  %35 = tail call ptr @blf_glyph_add(ptr noundef %0, i32 noundef %34, i32 noundef %29) #8
  br label %36

36:                                               ; preds = %32, %26
  %37 = phi ptr [ %30, %26 ], [ %35, %32 ]
  %38 = getelementptr inbounds ptr, ptr %7, i64 %27
  store ptr %37, ptr %38, align 8, !tbaa !34
  %39 = add nuw nsw i64 %27, 1
  %40 = icmp eq i64 %39, 256
  br i1 %40, label %41, label %26, !llvm.loop !57

41:                                               ; preds = %36, %21
  %42 = icmp ne i8 %13, 0
  br label %43

43:                                               ; preds = %78, %41
  %44 = phi i32 [ %83, %78 ], [ 0, %41 ]
  %45 = phi ptr [ %60, %78 ], [ null, %41 ]
  %46 = phi i64 [ %57, %78 ], [ %2, %41 ]
  %47 = phi ptr [ %56, %78 ], [ %1, %41 ]
  br label %48

48:                                               ; preds = %43, %55
  %49 = phi i64 [ %57, %55 ], [ %46, %43 ]
  %50 = phi ptr [ %56, %55 ], [ %47, %43 ]
  %51 = load i8, ptr %50, align 1, !tbaa !60
  %52 = icmp eq i8 %51, 0
  %53 = icmp eq i64 %49, 0
  %54 = select i1 %52, i1 true, i1 %53
  br i1 %54, label %84, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds i8, ptr %50, i64 1
  %57 = add i64 %49, -1
  %58 = zext i8 %51 to i64
  %59 = getelementptr inbounds ptr, ptr %7, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !34
  %61 = icmp eq ptr %60, null
  br i1 %61, label %48, label %62, !llvm.loop !67

62:                                               ; preds = %55
  %63 = icmp ne ptr %45, null
  %64 = and i1 %42, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %66 = load ptr, ptr %8, align 8, !tbaa !38
  %67 = getelementptr inbounds %struct.GlyphBLF, ptr %45, i64 0, i32 3
  %68 = load i32, ptr %67, align 4, !tbaa !62
  %69 = getelementptr inbounds %struct.GlyphBLF, ptr %60, i64 0, i32 3
  %70 = load i32, ptr %69, align 4, !tbaa !62
  %71 = call i32 @FT_Get_Kerning(ptr noundef %66, i32 noundef %68, i32 noundef %70, i32 noundef %22, ptr noundef nonnull %4) #8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load i64, ptr %4, align 8, !tbaa !64
  %75 = trunc i64 %74 to i32
  %76 = ashr i32 %75, 6
  %77 = add nsw i32 %76, %44
  br label %78

78:                                               ; preds = %73, %65, %62
  %79 = phi i32 [ %77, %73 ], [ %44, %65 ], [ %44, %62 ]
  %80 = sitofp i32 %79 to float
  call void @blf_glyph_render(ptr noundef %0, ptr noundef nonnull %60, float noundef %80, float noundef 0.000000e+00) #8
  %81 = getelementptr inbounds %struct.GlyphBLF, ptr %60, i64 0, i32 6
  %82 = load i32, ptr %81, align 4, !tbaa !66
  %83 = add nsw i32 %82, %79
  br label %43, !llvm.loop !67

84:                                               ; preds = %48
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @blf_font_draw_mono(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store i64 0, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %7, i64 0, i32 5
  %9 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %7, i64 0, i32 5, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  br label %14

14:                                               ; preds = %24, %12
  %15 = phi i64 [ 0, %12 ], [ %27, %24 ]
  %16 = load ptr, ptr %6, align 8, !tbaa !47
  %17 = trunc i64 %15 to i32
  %18 = tail call ptr @blf_glyph_search(ptr noundef %16, i32 noundef %17) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load ptr, ptr %13, align 8, !tbaa !38
  %22 = tail call i32 @FT_Get_Char_Index(ptr noundef %21, i64 noundef %15) #8
  %23 = tail call ptr @blf_glyph_add(ptr noundef %0, i32 noundef %22, i32 noundef %17) #8
  br label %24

24:                                               ; preds = %20, %14
  %25 = phi ptr [ %18, %14 ], [ %23, %20 ]
  %26 = getelementptr inbounds ptr, ptr %8, i64 %15
  store ptr %25, ptr %26, align 8, !tbaa !34
  %27 = add nuw nsw i64 %15, 1
  %28 = icmp eq i64 %27, 256
  br i1 %28, label %29, label %14, !llvm.loop !57

29:                                               ; preds = %24, %4
  %30 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  br label %31

31:                                               ; preds = %69, %29
  %32 = phi i32 [ %74, %69 ], [ 0, %29 ]
  %33 = phi i32 [ %76, %69 ], [ 0, %29 ]
  %34 = phi ptr [ %64, %69 ], [ undef, %29 ]
  br label %35

35:                                               ; preds = %31, %67
  %36 = phi ptr [ null, %67 ], [ %34, %31 ]
  %37 = load i64, ptr %5, align 8, !tbaa !48
  %38 = icmp ult i64 %37, %2
  br i1 %38, label %39, label %77

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, ptr %1, i64 %37
  %41 = load i8, ptr %40, align 1, !tbaa !60
  %42 = zext i8 %41 to i32
  %43 = icmp eq i8 %41, 0
  br i1 %43, label %77, label %44

44:                                               ; preds = %39
  %45 = icmp sgt i8 %41, -1
  br i1 %45, label %46, label %51

46:                                               ; preds = %44
  %47 = zext nneg i8 %41 to i64
  %48 = getelementptr inbounds ptr, ptr %8, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  %50 = add i64 %37, 1
  store i64 %50, ptr %5, align 8, !tbaa !48
  br label %63

51:                                               ; preds = %44
  %52 = call i32 @BLI_str_utf8_as_unicode_step(ptr noundef %1, ptr noundef nonnull %5) #8
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %63, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %6, align 8, !tbaa !47
  %56 = call ptr @blf_glyph_search(ptr noundef %55, i32 noundef %52) #8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load ptr, ptr %30, align 8, !tbaa !38
  %60 = zext i32 %52 to i64
  %61 = call i32 @FT_Get_Char_Index(ptr noundef %59, i64 noundef %60) #8
  %62 = call ptr @blf_glyph_add(ptr noundef %0, i32 noundef %61, i32 noundef %52) #8
  br label %63

63:                                               ; preds = %51, %58, %54, %46
  %64 = phi ptr [ %49, %46 ], [ %62, %58 ], [ %56, %54 ], [ %36, %51 ]
  %65 = phi i32 [ %42, %46 ], [ %52, %58 ], [ %52, %54 ], [ -1, %51 ]
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %77, label %67

67:                                               ; preds = %63
  %68 = icmp eq ptr %64, null
  br i1 %68, label %35, label %69, !llvm.loop !68

69:                                               ; preds = %67
  %70 = sitofp i32 %33 to float
  call void @blf_glyph_render(ptr noundef %0, ptr noundef nonnull %64, float noundef %70, float noundef 0.000000e+00) #8
  %71 = call i32 @BLI_wcwidth(i32 noundef %65) #8
  %72 = icmp slt i32 %71, 0
  %73 = select i1 %72, i32 1, i32 %71
  %74 = add nsw i32 %73, %32
  %75 = mul nsw i32 %73, %3
  %76 = add nsw i32 %75, %33
  br label %31, !llvm.loop !68

77:                                               ; preds = %35, %63, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret i32 %32
}

declare i32 @BLI_wcwidth(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @blf_font_buffer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.FT_Vector_, align 8
  %4 = alloca i64, align 8
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %6 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 3
  %7 = load float, ptr %6, align 4, !tbaa !69
  %8 = fptosi float %7 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %10, i64 0, i32 5
  %12 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  %13 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 23, i32 6
  %14 = load float, ptr %13, align 8, !tbaa !69
  %15 = fmul float %14, 2.550000e+02
  %16 = fptoui float %15 to i8
  %17 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 23, i32 6, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !69
  %19 = fmul float %18, 2.550000e+02
  %20 = fptoui float %19 to i8
  %21 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 23, i32 6, i64 2
  %22 = load float, ptr %21, align 8, !tbaa !69
  %23 = fmul float %22, 2.550000e+02
  %24 = fptoui float %23 to i8
  %25 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 23, i32 6, i64 3
  %26 = load float, ptr %25, align 4, !tbaa !69
  %27 = fmul float %26, 2.550000e+02
  %28 = fptoui float %27 to i8
  %29 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %30 = load ptr, ptr %29, align 8, !tbaa !38
  %31 = getelementptr inbounds %struct.FT_FaceRec_, ptr %30, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !50
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 64
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 17
  %38 = load i32, ptr %37, align 8, !tbaa !56
  %39 = lshr i32 %38, 3
  %40 = and i32 %39, 1
  %41 = xor i32 %40, 1
  br label %42

42:                                               ; preds = %2, %36
  %43 = phi i32 [ %41, %36 ], [ 0, %2 ]
  %44 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %10, i64 0, i32 5, i64 48
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %62

47:                                               ; preds = %42, %57
  %48 = phi i64 [ %60, %57 ], [ 0, %42 ]
  %49 = load ptr, ptr %9, align 8, !tbaa !47
  %50 = trunc i64 %48 to i32
  %51 = tail call ptr @blf_glyph_search(ptr noundef %49, i32 noundef %50) #8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load ptr, ptr %29, align 8, !tbaa !38
  %55 = tail call i32 @FT_Get_Char_Index(ptr noundef %54, i64 noundef %48) #8
  %56 = tail call ptr @blf_glyph_add(ptr noundef %0, i32 noundef %55, i32 noundef %50) #8
  br label %57

57:                                               ; preds = %53, %47
  %58 = phi ptr [ %51, %47 ], [ %56, %53 ]
  %59 = getelementptr inbounds ptr, ptr %11, i64 %48
  store ptr %58, ptr %59, align 8, !tbaa !34
  %60 = add nuw nsw i64 %48, 1
  %61 = icmp eq i64 %60, 256
  br i1 %61, label %62, label %47, !llvm.loop !57

62:                                               ; preds = %57, %42
  %63 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 23, i32 5
  %64 = load ptr, ptr %63, align 8, !tbaa !70
  %65 = icmp eq ptr %64, null
  %66 = load float, ptr %13, align 4, !tbaa !69
  br i1 %65, label %74, label %67

67:                                               ; preds = %62
  store float %66, ptr %5, align 16, !tbaa !69
  %68 = load float, ptr %17, align 4, !tbaa !69
  %69 = getelementptr inbounds float, ptr %5, i64 1
  store float %68, ptr %69, align 4, !tbaa !69
  %70 = load float, ptr %21, align 4, !tbaa !69
  %71 = getelementptr inbounds float, ptr %5, i64 2
  store float %70, ptr %71, align 8, !tbaa !69
  %72 = load float, ptr %25, align 4, !tbaa !69
  %73 = getelementptr inbounds float, ptr %5, i64 3
  store float %72, ptr %73, align 4, !tbaa !69
  call void @IMB_colormanagement_display_to_scene_linear_v3(ptr noundef nonnull %5, ptr noundef nonnull %64) #8
  br label %84

74:                                               ; preds = %62
  %75 = tail call float @srgb_to_linearrgb(float noundef %66) #8
  store float %75, ptr %5, align 16, !tbaa !69
  %76 = load float, ptr %17, align 4, !tbaa !69
  %77 = tail call float @srgb_to_linearrgb(float noundef %76) #8
  %78 = getelementptr inbounds float, ptr %5, i64 1
  store float %77, ptr %78, align 4, !tbaa !69
  %79 = load float, ptr %21, align 4, !tbaa !69
  %80 = tail call float @srgb_to_linearrgb(float noundef %79) #8
  %81 = getelementptr inbounds float, ptr %5, i64 2
  store float %80, ptr %81, align 8, !tbaa !69
  %82 = load float, ptr %25, align 4, !tbaa !69
  %83 = getelementptr inbounds float, ptr %5, i64 3
  store float %82, ptr %83, align 4, !tbaa !69
  br label %84

84:                                               ; preds = %74, %67
  %85 = icmp ne i8 %34, 0
  %86 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 3, i64 1
  %87 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 23, i32 2
  %88 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 23, i32 3
  %89 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 23, i32 4
  %90 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %91 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %92 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  %93 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %94 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %95 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  %96 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 23, i32 1
  %97 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 23, i32 4
  %98 = zext i8 %28 to i32
  %99 = uitofp i8 %16 to float
  %100 = uitofp i8 %20 to float
  %101 = uitofp i8 %24 to float
  %102 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  br label %103

103:                                              ; preds = %383, %84
  %104 = phi i32 [ %386, %383 ], [ %8, %84 ]
  %105 = phi ptr [ %134, %383 ], [ null, %84 ]
  %106 = phi ptr [ %134, %383 ], [ undef, %84 ]
  br label %107

107:                                              ; preds = %103, %137
  %108 = phi ptr [ null, %137 ], [ %106, %103 ]
  %109 = load i64, ptr %4, align 8, !tbaa !48
  %110 = getelementptr inbounds i8, ptr %1, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !60
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %387, label %113

113:                                              ; preds = %107
  %114 = icmp sgt i8 %111, -1
  br i1 %114, label %115, label %121

115:                                              ; preds = %113
  %116 = zext nneg i8 %111 to i32
  %117 = zext nneg i8 %111 to i64
  %118 = getelementptr inbounds ptr, ptr %11, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !34
  %120 = add i64 %109, 1
  store i64 %120, ptr %4, align 8, !tbaa !48
  br label %133

121:                                              ; preds = %113
  %122 = call i32 @BLI_str_utf8_as_unicode_step(ptr noundef %1, ptr noundef nonnull %4) #8
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %133, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr %9, align 8, !tbaa !47
  %126 = call ptr @blf_glyph_search(ptr noundef %125, i32 noundef %122) #8
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = load ptr, ptr %29, align 8, !tbaa !38
  %130 = zext i32 %122 to i64
  %131 = call i32 @FT_Get_Char_Index(ptr noundef %129, i64 noundef %130) #8
  %132 = call ptr @blf_glyph_add(ptr noundef %0, i32 noundef %131, i32 noundef %122) #8
  br label %133

133:                                              ; preds = %121, %128, %124, %115
  %134 = phi ptr [ %119, %115 ], [ %132, %128 ], [ %126, %124 ], [ %108, %121 ]
  %135 = phi i32 [ %116, %115 ], [ %122, %128 ], [ %122, %124 ], [ -1, %121 ]
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %387, label %137

137:                                              ; preds = %133
  %138 = icmp eq ptr %134, null
  br i1 %138, label %107, label %139, !llvm.loop !71

139:                                              ; preds = %137
  %140 = icmp ne ptr %105, null
  %141 = select i1 %85, i1 %140, i1 false
  br i1 %141, label %142, label %155

142:                                              ; preds = %139
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %143 = load ptr, ptr %29, align 8, !tbaa !38
  %144 = getelementptr inbounds %struct.GlyphBLF, ptr %105, i64 0, i32 3
  %145 = load i32, ptr %144, align 4, !tbaa !62
  %146 = getelementptr inbounds %struct.GlyphBLF, ptr %134, i64 0, i32 3
  %147 = load i32, ptr %146, align 4, !tbaa !62
  %148 = call i32 @FT_Get_Kerning(ptr noundef %143, i32 noundef %145, i32 noundef %147, i32 noundef %43, ptr noundef nonnull %3) #8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %142
  %151 = load i64, ptr %3, align 8, !tbaa !64
  %152 = trunc i64 %151 to i32
  %153 = ashr i32 %152, 6
  %154 = add nsw i32 %153, %104
  br label %155

155:                                              ; preds = %150, %142, %139
  %156 = phi i32 [ %154, %150 ], [ %104, %142 ], [ %104, %139 ]
  %157 = getelementptr inbounds %struct.GlyphBLF, ptr %134, i64 0, i32 15
  %158 = load float, ptr %157, align 4, !tbaa !72
  %159 = fptosi float %158 to i32
  %160 = add nsw i32 %156, %159
  %161 = load float, ptr %86, align 4, !tbaa !69
  %162 = fptosi float %161 to i32
  %163 = getelementptr inbounds %struct.GlyphBLF, ptr %134, i64 0, i32 12
  %164 = load i32, ptr %163, align 4, !tbaa !73
  %165 = add nsw i32 %164, %162
  %166 = getelementptr inbounds %struct.GlyphBLF, ptr %134, i64 0, i32 13
  %167 = load i32, ptr %166, align 8, !tbaa !74
  %168 = icmp slt i32 %167, 0
  %169 = getelementptr inbounds %struct.GlyphBLF, ptr %134, i64 0, i32 16
  %170 = load float, ptr %169, align 8, !tbaa !75
  %171 = fptosi float %170 to i32
  %172 = sub nsw i32 %164, %171
  %173 = sub i32 %171, %164
  %174 = select i1 %168, i32 %172, i32 %173
  %175 = add i32 %174, %162
  %176 = getelementptr inbounds %struct.GlyphBLF, ptr %134, i64 0, i32 11
  %177 = load i32, ptr %176, align 8, !tbaa !76
  %178 = add nsw i32 %177, %160
  %179 = icmp sgt i32 %178, -1
  br i1 %179, label %180, label %383

180:                                              ; preds = %155
  %181 = load i32, ptr %87, align 8, !tbaa !77
  %182 = icmp slt i32 %160, %181
  br i1 %182, label %183, label %383

183:                                              ; preds = %180
  %184 = add nsw i32 %175, %164
  %185 = icmp sgt i32 %184, -1
  br i1 %185, label %186, label %383

186:                                              ; preds = %183
  %187 = load i32, ptr %88, align 4, !tbaa !78
  %188 = icmp slt i32 %175, %187
  br i1 %188, label %189, label %383

189:                                              ; preds = %186
  %190 = add nsw i32 %164, -1
  %191 = select i1 %168, i32 0, i32 %190
  %192 = icmp sgt i32 %178, %181
  %193 = sub i32 %181, %178
  %194 = select i1 %192, i32 %193, i32 0
  %195 = add i32 %194, %177
  %196 = icmp sgt i32 %184, %187
  %197 = sub i32 %187, %184
  %198 = select i1 %196, i32 %197, i32 0
  %199 = icmp slt i32 %175, 0
  %200 = sub nsw i32 0, %175
  %201 = select i1 %168, i32 %200, i32 %175
  %202 = call i32 @llvm.smax.i32(i32 %175, i32 0)
  %203 = call i32 @llvm.smin.i32(i32 %175, i32 0)
  %204 = add i32 %203, %164
  %205 = add i32 %204, %198
  %206 = select i1 %199, i32 %201, i32 0
  %207 = add i32 %206, %191
  %208 = load ptr, ptr %12, align 8, !tbaa !79
  %209 = icmp eq ptr %208, null
  br i1 %209, label %293, label %210

210:                                              ; preds = %189
  %211 = sub nsw i32 0, %165
  %212 = icmp slt i32 %165, 0
  %213 = select i1 %212, i32 %211, i32 0
  %214 = icmp slt i32 %213, %205
  br i1 %214, label %215, label %293

215:                                              ; preds = %210
  %216 = sub nsw i32 0, %160
  %217 = icmp slt i32 %160, 0
  %218 = select i1 %217, i32 %216, i32 0
  %219 = icmp slt i32 %218, %195
  %220 = getelementptr inbounds %struct.GlyphBLF, ptr %134, i64 0, i32 10
  %221 = icmp sgt i32 %167, -1
  %222 = select i1 %221, i64 -1, i64 1
  %223 = sext i32 %218 to i64
  %224 = sext i32 %195 to i64
  %225 = sext i32 %207 to i64
  %226 = sext i32 %167 to i64
  br label %227

227:                                              ; preds = %215, %289
  %228 = phi i64 [ %225, %215 ], [ %290, %289 ]
  %229 = phi i32 [ %213, %215 ], [ %291, %289 ]
  br i1 %219, label %230, label %289

230:                                              ; preds = %227
  %231 = load ptr, ptr %220, align 8, !tbaa !80
  %232 = mul nsw i64 %228, %226
  %233 = getelementptr i8, ptr %231, i64 %232
  %234 = add nsw i32 %229, %202
  %235 = mul nsw i32 %234, %181
  %236 = add i32 %235, %160
  br label %237

237:                                              ; preds = %230, %286
  %238 = phi i64 [ %223, %230 ], [ %287, %286 ]
  %239 = getelementptr i8, ptr %233, i64 %238
  %240 = load i8, ptr %239, align 1, !tbaa !60
  %241 = uitofp i8 %240 to float
  %242 = fdiv float %241, 2.550000e+02
  %243 = fcmp ogt float %242, 0.000000e+00
  br i1 %243, label %244, label %286

244:                                              ; preds = %237
  %245 = load i32, ptr %89, align 8, !tbaa !81
  %246 = trunc i64 %238 to i32
  %247 = add i32 %236, %246
  %248 = mul nsw i32 %245, %247
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds float, ptr %208, i64 %249
  %251 = fcmp ult float %242, 1.000000e+00
  %252 = load float, ptr %5, align 16, !tbaa !69
  br i1 %251, label %262, label %253

253:                                              ; preds = %244
  store float %252, ptr %250, align 4, !tbaa !69
  %254 = load float, ptr %90, align 4, !tbaa !69
  %255 = getelementptr inbounds float, ptr %250, i64 1
  store float %254, ptr %255, align 4, !tbaa !69
  %256 = load float, ptr %91, align 8, !tbaa !69
  %257 = getelementptr inbounds float, ptr %250, i64 2
  store float %256, ptr %257, align 4, !tbaa !69
  %258 = getelementptr inbounds float, ptr %250, i64 3
  %259 = load float, ptr %258, align 4, !tbaa !69
  %260 = load float, ptr %92, align 4, !tbaa !69
  %261 = fadd float %259, %260
  br label %281

262:                                              ; preds = %244
  %263 = load float, ptr %250, align 4, !tbaa !69
  %264 = fsub float 1.000000e+00, %242
  %265 = fmul float %264, %263
  %266 = call float @llvm.fmuladd.f32(float %252, float %242, float %265)
  store float %266, ptr %250, align 4, !tbaa !69
  %267 = load float, ptr %93, align 4, !tbaa !69
  %268 = getelementptr inbounds float, ptr %250, i64 1
  %269 = load float, ptr %268, align 4, !tbaa !69
  %270 = fmul float %264, %269
  %271 = call float @llvm.fmuladd.f32(float %267, float %242, float %270)
  store float %271, ptr %268, align 4, !tbaa !69
  %272 = load float, ptr %94, align 8, !tbaa !69
  %273 = getelementptr inbounds float, ptr %250, i64 2
  %274 = load float, ptr %273, align 4, !tbaa !69
  %275 = fmul float %264, %274
  %276 = call float @llvm.fmuladd.f32(float %272, float %242, float %275)
  store float %276, ptr %273, align 4, !tbaa !69
  %277 = getelementptr inbounds float, ptr %250, i64 3
  %278 = load float, ptr %277, align 4, !tbaa !69
  %279 = load float, ptr %95, align 4, !tbaa !69
  %280 = call float @llvm.fmuladd.f32(float %279, float %242, float %278)
  br label %281

281:                                              ; preds = %262, %253
  %282 = phi float [ %261, %253 ], [ %280, %262 ]
  %283 = phi ptr [ %258, %253 ], [ %277, %262 ]
  %284 = fcmp olt float %282, 1.000000e+00
  %285 = select i1 %284, float %282, float 1.000000e+00
  store float %285, ptr %283, align 4, !tbaa !69
  br label %286

286:                                              ; preds = %281, %237
  %287 = add nsw i64 %238, 1
  %288 = icmp slt i64 %287, %224
  br i1 %288, label %237, label %289, !llvm.loop !82

289:                                              ; preds = %286, %227
  %290 = add i64 %228, %222
  %291 = add nsw i32 %229, 1
  %292 = icmp slt i32 %291, %205
  br i1 %292, label %227, label %293, !llvm.loop !83

293:                                              ; preds = %289, %210, %189
  %294 = load ptr, ptr %96, align 8, !tbaa !84
  %295 = icmp ne ptr %294, null
  %296 = icmp sgt i32 %205, 0
  %297 = select i1 %295, i1 %296, i1 false
  br i1 %297, label %298, label %383

298:                                              ; preds = %293
  %299 = icmp sgt i32 %195, 0
  %300 = getelementptr inbounds %struct.GlyphBLF, ptr %134, i64 0, i32 10
  %301 = sext i32 %195 to i64
  br label %302

302:                                              ; preds = %298, %376
  %303 = phi i32 [ %207, %298 ], [ %380, %376 ]
  %304 = phi i32 [ 0, %298 ], [ %381, %376 ]
  br i1 %299, label %305, label %376

305:                                              ; preds = %302
  %306 = add nuw nsw i32 %304, %202
  br label %307

307:                                              ; preds = %305, %373
  %308 = phi i64 [ 0, %305 ], [ %374, %373 ]
  %309 = load ptr, ptr %300, align 8, !tbaa !80
  %310 = getelementptr inbounds i8, ptr %309, i64 %308
  %311 = load i32, ptr %166, align 8, !tbaa !74
  %312 = mul nsw i32 %311, %303
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8, ptr %310, i64 %313
  %315 = load i8, ptr %314, align 1, !tbaa !60
  %316 = uitofp i8 %315 to float
  %317 = fdiv float %316, 2.550000e+02
  %318 = fcmp ogt float %317, 0.000000e+00
  br i1 %318, label %319, label %373

319:                                              ; preds = %307
  %320 = load ptr, ptr %96, align 8, !tbaa !84
  %321 = load i32, ptr %97, align 8, !tbaa !81
  %322 = load i32, ptr %87, align 8, !tbaa !77
  %323 = mul nsw i32 %322, %306
  %324 = trunc i64 %308 to i32
  %325 = add i32 %160, %324
  %326 = add nsw i32 %325, %323
  %327 = mul nsw i32 %326, %321
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i8, ptr %320, i64 %328
  %330 = fcmp ult float %317, 1.000000e+00
  br i1 %330, label %342, label %331

331:                                              ; preds = %319
  store i8 %16, ptr %329, align 1, !tbaa !60
  %332 = getelementptr inbounds i8, ptr %329, i64 1
  store i8 %20, ptr %332, align 1, !tbaa !60
  %333 = getelementptr inbounds i8, ptr %329, i64 2
  store i8 %24, ptr %333, align 1, !tbaa !60
  %334 = getelementptr inbounds i8, ptr %329, i64 3
  %335 = load i8, ptr %334, align 1, !tbaa !60
  %336 = zext i8 %335 to i32
  %337 = add nuw nsw i32 %336, %98
  %338 = icmp ult i32 %337, 255
  br i1 %338, label %339, label %341

339:                                              ; preds = %331
  %340 = trunc i32 %337 to i8
  store i8 %340, ptr %334, align 1, !tbaa !60
  br label %373

341:                                              ; preds = %331
  store i8 -1, ptr %334, align 1, !tbaa !60
  br label %373

342:                                              ; preds = %319
  %343 = load i8, ptr %329, align 1, !tbaa !60
  %344 = uitofp i8 %343 to float
  %345 = fsub float 1.000000e+00, %317
  %346 = fmul float %345, %344
  %347 = call float @llvm.fmuladd.f32(float %99, float %317, float %346)
  %348 = fptoui float %347 to i8
  store i8 %348, ptr %329, align 1, !tbaa !60
  %349 = getelementptr inbounds i8, ptr %329, i64 1
  %350 = load i8, ptr %349, align 1, !tbaa !60
  %351 = uitofp i8 %350 to float
  %352 = fmul float %345, %351
  %353 = call float @llvm.fmuladd.f32(float %100, float %317, float %352)
  %354 = fptoui float %353 to i8
  store i8 %354, ptr %349, align 1, !tbaa !60
  %355 = getelementptr inbounds i8, ptr %329, i64 2
  %356 = load i8, ptr %355, align 1, !tbaa !60
  %357 = uitofp i8 %356 to float
  %358 = fmul float %345, %357
  %359 = call float @llvm.fmuladd.f32(float %101, float %317, float %358)
  %360 = fptoui float %359 to i8
  store i8 %360, ptr %355, align 1, !tbaa !60
  %361 = getelementptr inbounds i8, ptr %329, i64 3
  %362 = load i8, ptr %361, align 1, !tbaa !60
  %363 = zext i8 %362 to i32
  %364 = load float, ptr %102, align 4, !tbaa !69
  %365 = fmul float %317, %364
  %366 = fmul float %365, 2.550000e+02
  %367 = fptosi float %366 to i32
  %368 = add nsw i32 %367, %363
  %369 = icmp slt i32 %368, 255
  br i1 %369, label %370, label %372

370:                                              ; preds = %342
  %371 = trunc i32 %368 to i8
  store i8 %371, ptr %361, align 1, !tbaa !60
  br label %373

372:                                              ; preds = %342
  store i8 -1, ptr %361, align 1, !tbaa !60
  br label %373

373:                                              ; preds = %341, %339, %372, %370, %307
  %374 = add nuw nsw i64 %308, 1
  %375 = icmp slt i64 %374, %301
  br i1 %375, label %307, label %376, !llvm.loop !85

376:                                              ; preds = %373, %302
  %377 = load i32, ptr %166, align 8, !tbaa !74
  %378 = icmp sgt i32 %377, -1
  %379 = select i1 %378, i32 -1, i32 1
  %380 = add nsw i32 %379, %303
  %381 = add nuw nsw i32 %304, 1
  %382 = icmp slt i32 %381, %205
  br i1 %382, label %302, label %383, !llvm.loop !86

383:                                              ; preds = %376, %293, %186, %183, %180, %155
  %384 = getelementptr inbounds %struct.GlyphBLF, ptr %134, i64 0, i32 6
  %385 = load i32, ptr %384, align 4, !tbaa !66
  %386 = add nsw i32 %385, %156
  br label %103, !llvm.loop !71

387:                                              ; preds = %133, %107
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret void
}

declare void @IMB_colormanagement_display_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nounwind uwtable
define dso_local i64 @blf_font_width_to_strlen(ptr noundef %0, ptr noundef %1, i64 noundef %2, float noundef %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.FT_Vector_, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  store i64 0, ptr %7, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %9, i64 0, i32 5
  %11 = fptosi float %3 to i32
  %12 = add nsw i32 %11, 1
  %13 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.FT_FaceRec_, ptr %14, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !50
  %17 = trunc i64 %16 to i8
  %18 = and i8 %17, 64
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 17
  %22 = load i32, ptr %21, align 8, !tbaa !56
  %23 = lshr i32 %22, 3
  %24 = and i32 %23, 1
  %25 = xor i32 %24, 1
  br label %26

26:                                               ; preds = %5, %20
  %27 = phi i32 [ %25, %20 ], [ 0, %5 ]
  %28 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %9, i64 0, i32 5, i64 48
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %26, %41
  %32 = phi i64 [ %44, %41 ], [ 0, %26 ]
  %33 = load ptr, ptr %8, align 8, !tbaa !47
  %34 = trunc i64 %32 to i32
  %35 = tail call ptr @blf_glyph_search(ptr noundef %33, i32 noundef %34) #8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load ptr, ptr %13, align 8, !tbaa !38
  %39 = tail call i32 @FT_Get_Char_Index(ptr noundef %38, i64 noundef %32) #8
  %40 = tail call ptr @blf_glyph_add(ptr noundef %0, i32 noundef %39, i32 noundef %34) #8
  br label %41

41:                                               ; preds = %37, %31
  %42 = phi ptr [ %35, %31 ], [ %40, %37 ]
  %43 = getelementptr inbounds ptr, ptr %10, i64 %32
  store ptr %42, ptr %43, align 8, !tbaa !34
  %44 = add nuw nsw i64 %32, 1
  %45 = icmp eq i64 %44, 256
  br i1 %45, label %46, label %31, !llvm.loop !57

46:                                               ; preds = %41, %26
  %47 = icmp ne i8 %18, 0
  br label %48

48:                                               ; preds = %102, %46
  %49 = phi i32 [ %106, %102 ], [ 0, %46 ]
  %50 = phi ptr [ %81, %102 ], [ null, %46 ]
  %51 = phi ptr [ %81, %102 ], [ undef, %46 ]
  br label %52

52:                                               ; preds = %48, %84
  %53 = phi ptr [ null, %84 ], [ %51, %48 ]
  %54 = load i64, ptr %7, align 8, !tbaa !48
  %55 = icmp ult i64 %54, %2
  br i1 %55, label %56, label %108

56:                                               ; preds = %52
  %57 = getelementptr inbounds i8, ptr %1, i64 %54
  %58 = load i8, ptr %57, align 1, !tbaa !60
  %59 = zext i8 %58 to i32
  %60 = icmp eq i8 %58, 0
  br i1 %60, label %108, label %61

61:                                               ; preds = %56
  %62 = icmp sgt i8 %58, -1
  br i1 %62, label %63, label %68

63:                                               ; preds = %61
  %64 = zext nneg i8 %58 to i64
  %65 = getelementptr inbounds ptr, ptr %10, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !34
  %67 = add i64 %54, 1
  store i64 %67, ptr %7, align 8, !tbaa !48
  br label %80

68:                                               ; preds = %61
  %69 = call i32 @BLI_str_utf8_as_unicode_step(ptr noundef %1, ptr noundef nonnull %7) #8
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %80, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %8, align 8, !tbaa !47
  %73 = call ptr @blf_glyph_search(ptr noundef %72, i32 noundef %69) #8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load ptr, ptr %13, align 8, !tbaa !38
  %77 = zext i32 %69 to i64
  %78 = call i32 @FT_Get_Char_Index(ptr noundef %76, i64 noundef %77) #8
  %79 = call ptr @blf_glyph_add(ptr noundef %0, i32 noundef %78, i32 noundef %69) #8
  br label %80

80:                                               ; preds = %68, %75, %71, %63
  %81 = phi ptr [ %66, %63 ], [ %79, %75 ], [ %73, %71 ], [ %53, %68 ]
  %82 = phi i32 [ %59, %63 ], [ %69, %75 ], [ %69, %71 ], [ -1, %68 ]
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %108, label %84

84:                                               ; preds = %80
  %85 = icmp eq ptr %81, null
  br i1 %85, label %52, label %86, !llvm.loop !87

86:                                               ; preds = %84
  %87 = icmp ne ptr %50, null
  %88 = select i1 %47, i1 %87, i1 false
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %90 = load ptr, ptr %13, align 8, !tbaa !38
  %91 = getelementptr inbounds %struct.GlyphBLF, ptr %50, i64 0, i32 3
  %92 = load i32, ptr %91, align 4, !tbaa !62
  %93 = getelementptr inbounds %struct.GlyphBLF, ptr %81, i64 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !62
  %95 = call i32 @FT_Get_Kerning(ptr noundef %90, i32 noundef %92, i32 noundef %94, i32 noundef %27, ptr noundef nonnull %6) #8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %89
  %98 = load i64, ptr %6, align 8, !tbaa !64
  %99 = trunc i64 %98 to i32
  %100 = ashr i32 %99, 6
  %101 = add nsw i32 %100, %49
  br label %102

102:                                              ; preds = %97, %89, %86
  %103 = phi i32 [ %101, %97 ], [ %49, %89 ], [ %49, %86 ]
  %104 = getelementptr inbounds %struct.GlyphBLF, ptr %81, i64 0, i32 6
  %105 = load i32, ptr %104, align 4, !tbaa !66
  %106 = add nsw i32 %105, %103
  %107 = icmp slt i32 %12, %106
  br i1 %107, label %108, label %48, !llvm.loop !87

108:                                              ; preds = %102, %52, %80, %56
  %109 = icmp eq ptr %4, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %108
  %111 = sitofp i32 %49 to float
  store float %111, ptr %4, align 4, !tbaa !69
  br label %112

112:                                              ; preds = %110, %108
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  ret i64 %54
}

; Function Attrs: nounwind uwtable
define dso_local i64 @blf_font_width_to_rstrlen(ptr noundef %0, ptr noundef %1, i64 noundef %2, float noundef %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.FT_Vector_, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  store i64 0, ptr %7, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %9, i64 0, i32 5
  %11 = fptosi float %3 to i32
  %12 = add nsw i32 %11, 1
  %13 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.FT_FaceRec_, ptr %14, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !50
  %17 = trunc i64 %16 to i8
  %18 = and i8 %17, 64
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 17
  %22 = load i32, ptr %21, align 8, !tbaa !56
  %23 = lshr i32 %22, 3
  %24 = and i32 %23, 1
  %25 = xor i32 %24, 1
  br label %26

26:                                               ; preds = %5, %20
  %27 = phi i32 [ %25, %20 ], [ 0, %5 ]
  %28 = tail call i64 @BLI_strnlen(ptr noundef %1, i64 noundef %2) #8
  %29 = icmp slt i32 %11, 1
  %30 = icmp eq i64 %28, 0
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = icmp eq ptr %4, null
  br i1 %33, label %169, label %166

34:                                               ; preds = %26
  %35 = icmp ult i64 %28, 2048
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = shl nuw nsw i64 %28, 3
  %38 = alloca i8, i64 %37, align 16
  br label %43

39:                                               ; preds = %34
  %40 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %41 = shl i64 %28, 3
  %42 = tail call ptr %40(i64 noundef %41, ptr noundef nonnull @__func__.blf_font_width_to_rstrlen) #8
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi ptr [ %38, %36 ], [ %42, %39 ]
  %45 = load ptr, ptr %8, align 8, !tbaa !47
  %46 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %45, i64 0, i32 5
  %47 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %45, i64 0, i32 5, i64 48
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %65

50:                                               ; preds = %43, %60
  %51 = phi i64 [ %63, %60 ], [ 0, %43 ]
  %52 = load ptr, ptr %8, align 8, !tbaa !47
  %53 = trunc i64 %51 to i32
  %54 = tail call ptr @blf_glyph_search(ptr noundef %52, i32 noundef %53) #8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load ptr, ptr %13, align 8, !tbaa !38
  %58 = tail call i32 @FT_Get_Char_Index(ptr noundef %57, i64 noundef %51) #8
  %59 = tail call ptr @blf_glyph_add(ptr noundef %0, i32 noundef %58, i32 noundef %53) #8
  br label %60

60:                                               ; preds = %56, %50
  %61 = phi ptr [ %54, %50 ], [ %59, %56 ]
  %62 = getelementptr inbounds ptr, ptr %46, i64 %51
  store ptr %61, ptr %62, align 8, !tbaa !34
  %63 = add nuw nsw i64 %51, 1
  %64 = icmp eq i64 %63, 256
  br i1 %64, label %65, label %50, !llvm.loop !57

65:                                               ; preds = %60, %43
  %66 = icmp ne i8 %18, 0
  br label %67

67:                                               ; preds = %122, %65
  %68 = phi i64 [ %131, %122 ], [ 0, %65 ]
  %69 = phi i32 [ %126, %122 ], [ 0, %65 ]
  %70 = phi ptr [ %101, %122 ], [ null, %65 ]
  %71 = phi ptr [ %101, %122 ], [ undef, %65 ]
  br label %72

72:                                               ; preds = %67, %104
  %73 = phi ptr [ null, %104 ], [ %71, %67 ]
  %74 = load i64, ptr %7, align 8, !tbaa !48
  %75 = icmp ult i64 %74, %28
  br i1 %75, label %76, label %132

76:                                               ; preds = %72
  %77 = getelementptr inbounds i8, ptr %1, i64 %74
  %78 = load i8, ptr %77, align 1, !tbaa !60
  %79 = zext i8 %78 to i32
  %80 = icmp eq i8 %78, 0
  br i1 %80, label %132, label %81

81:                                               ; preds = %76
  %82 = icmp sgt i8 %78, -1
  br i1 %82, label %83, label %88

83:                                               ; preds = %81
  %84 = zext nneg i8 %78 to i64
  %85 = getelementptr inbounds ptr, ptr %10, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !34
  %87 = add nuw i64 %74, 1
  store i64 %87, ptr %7, align 8, !tbaa !48
  br label %100

88:                                               ; preds = %81
  %89 = call i32 @BLI_str_utf8_as_unicode_step(ptr noundef %1, ptr noundef nonnull %7) #8
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %100, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %8, align 8, !tbaa !47
  %93 = call ptr @blf_glyph_search(ptr noundef %92, i32 noundef %89) #8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load ptr, ptr %13, align 8, !tbaa !38
  %97 = zext i32 %89 to i64
  %98 = call i32 @FT_Get_Char_Index(ptr noundef %96, i64 noundef %97) #8
  %99 = call ptr @blf_glyph_add(ptr noundef %0, i32 noundef %98, i32 noundef %89) #8
  br label %100

100:                                              ; preds = %88, %95, %91, %83
  %101 = phi ptr [ %86, %83 ], [ %99, %95 ], [ %93, %91 ], [ %73, %88 ]
  %102 = phi i32 [ %79, %83 ], [ %89, %95 ], [ %89, %91 ], [ -1, %88 ]
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %132, label %104

104:                                              ; preds = %100
  %105 = icmp eq ptr %101, null
  br i1 %105, label %72, label %106, !llvm.loop !88

106:                                              ; preds = %104
  %107 = icmp ne ptr %70, null
  %108 = select i1 %66, i1 %107, i1 false
  br i1 %108, label %109, label %122

109:                                              ; preds = %106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %110 = load ptr, ptr %13, align 8, !tbaa !38
  %111 = getelementptr inbounds %struct.GlyphBLF, ptr %70, i64 0, i32 3
  %112 = load i32, ptr %111, align 4, !tbaa !62
  %113 = getelementptr inbounds %struct.GlyphBLF, ptr %101, i64 0, i32 3
  %114 = load i32, ptr %113, align 4, !tbaa !62
  %115 = call i32 @FT_Get_Kerning(ptr noundef %110, i32 noundef %112, i32 noundef %114, i32 noundef %27, ptr noundef nonnull %6) #8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %109
  %118 = load i64, ptr %6, align 8, !tbaa !64
  %119 = trunc i64 %118 to i32
  %120 = ashr i32 %119, 6
  %121 = add nsw i32 %120, %69
  br label %122

122:                                              ; preds = %117, %109, %106
  %123 = phi i32 [ %121, %117 ], [ %69, %109 ], [ %69, %106 ]
  %124 = getelementptr inbounds %struct.GlyphBLF, ptr %101, i64 0, i32 6
  %125 = load i32, ptr %124, align 4, !tbaa !66
  %126 = add nsw i32 %125, %123
  %127 = load i64, ptr %7, align 8, !tbaa !48
  %128 = trunc i64 %127 to i32
  %129 = getelementptr inbounds [2 x i32], ptr %44, i64 %68
  store i32 %128, ptr %129, align 4, !tbaa !89
  %130 = getelementptr inbounds [2 x i32], ptr %44, i64 %68, i64 1
  store i32 %126, ptr %130, align 4, !tbaa !89
  %131 = add nuw i64 %68, 1
  br label %67, !llvm.loop !88

132:                                              ; preds = %72, %100, %76
  %133 = icmp sgt i32 %69, %12
  %134 = and i64 %68, 4294967295
  %135 = icmp ne i64 %134, 0
  %136 = select i1 %133, i1 %135, i1 false
  br i1 %136, label %137, label %157

137:                                              ; preds = %132
  %138 = sub nsw i32 %69, %12
  br label %139

139:                                              ; preds = %142, %137
  %140 = phi i64 [ %143, %142 ], [ %68, %137 ]
  %141 = icmp sgt i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = add nsw i64 %140, -1
  %144 = getelementptr inbounds [2 x i32], ptr %44, i64 %143, i64 1
  %145 = load i32, ptr %144, align 4, !tbaa !89
  %146 = icmp sgt i32 %138, %145
  br i1 %146, label %147, label %139, !llvm.loop !90

147:                                              ; preds = %142, %139
  %148 = phi i64 [ %140, %142 ], [ 0, %139 ]
  %149 = shl i64 %148, 32
  %150 = ashr exact i64 %149, 32
  %151 = getelementptr inbounds [2 x i32], ptr %44, i64 %150
  %152 = getelementptr inbounds [2 x i32], ptr %44, i64 %150, i64 1
  %153 = load i32, ptr %152, align 4, !tbaa !89
  %154 = sub nsw i32 %69, %153
  %155 = load i32, ptr %151, align 4, !tbaa !89
  %156 = sext i32 %155 to i64
  br label %157

157:                                              ; preds = %132, %147
  %158 = phi i64 [ %156, %147 ], [ 0, %132 ]
  %159 = phi i32 [ %154, %147 ], [ %69, %132 ]
  br i1 %35, label %162, label %160

160:                                              ; preds = %157
  %161 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %161(ptr noundef %44) #8
  br label %162

162:                                              ; preds = %160, %157
  %163 = icmp eq ptr %4, null
  br i1 %163, label %169, label %164

164:                                              ; preds = %162
  %165 = sitofp i32 %159 to float
  br label %166

166:                                              ; preds = %32, %164
  %167 = phi float [ %165, %164 ], [ 0.000000e+00, %32 ]
  %168 = phi i64 [ %158, %164 ], [ %28, %32 ]
  store float %167, ptr %4, align 4, !tbaa !69
  br label %169

169:                                              ; preds = %166, %162, %32
  %170 = phi i64 [ %28, %32 ], [ %158, %162 ], [ %168, %166 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  ret i64 %170
}

declare i64 @BLI_strnlen(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @blf_font_boundbox(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.FT_Vector_, align 8
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store i64 0, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %8, i64 0, i32 5
  %10 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  %12 = getelementptr inbounds %struct.FT_FaceRec_, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !50
  %14 = trunc i64 %13 to i8
  %15 = and i8 %14, 64
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 17
  %19 = load i32, ptr %18, align 8, !tbaa !56
  %20 = lshr i32 %19, 3
  %21 = and i32 %20, 1
  %22 = xor i32 %21, 1
  br label %23

23:                                               ; preds = %4, %17
  %24 = phi i32 [ %22, %17 ], [ 0, %4 ]
  store float 3.200000e+04, ptr %3, align 4, !tbaa !91
  %25 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 1
  store float -3.200000e+04, ptr %25, align 4, !tbaa !92
  %26 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 2
  store float 3.200000e+04, ptr %26, align 4, !tbaa !93
  %27 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 3
  store float -3.200000e+04, ptr %27, align 4, !tbaa !94
  %28 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %8, i64 0, i32 5, i64 48
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %23, %41
  %32 = phi i64 [ %44, %41 ], [ 0, %23 ]
  %33 = load ptr, ptr %7, align 8, !tbaa !47
  %34 = trunc i64 %32 to i32
  %35 = tail call ptr @blf_glyph_search(ptr noundef %33, i32 noundef %34) #8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load ptr, ptr %10, align 8, !tbaa !38
  %39 = tail call i32 @FT_Get_Char_Index(ptr noundef %38, i64 noundef %32) #8
  %40 = tail call ptr @blf_glyph_add(ptr noundef %0, i32 noundef %39, i32 noundef %34) #8
  br label %41

41:                                               ; preds = %37, %31
  %42 = phi ptr [ %35, %31 ], [ %40, %37 ]
  %43 = getelementptr inbounds ptr, ptr %9, i64 %32
  store ptr %42, ptr %43, align 8, !tbaa !34
  %44 = add nuw nsw i64 %32, 1
  %45 = icmp eq i64 %44, 256
  br i1 %45, label %46, label %31, !llvm.loop !57

46:                                               ; preds = %41, %23
  %47 = icmp ne i8 %15, 0
  br label %48

48:                                               ; preds = %129, %46
  %49 = phi i32 [ %132, %129 ], [ 0, %46 ]
  %50 = phi ptr [ %81, %129 ], [ null, %46 ]
  %51 = phi ptr [ %81, %129 ], [ undef, %46 ]
  br label %52

52:                                               ; preds = %48, %84
  %53 = phi ptr [ null, %84 ], [ %51, %48 ]
  %54 = load i64, ptr %6, align 8, !tbaa !48
  %55 = icmp ult i64 %54, %2
  br i1 %55, label %56, label %133

56:                                               ; preds = %52
  %57 = getelementptr inbounds i8, ptr %1, i64 %54
  %58 = load i8, ptr %57, align 1, !tbaa !60
  %59 = zext i8 %58 to i32
  %60 = icmp eq i8 %58, 0
  br i1 %60, label %133, label %61

61:                                               ; preds = %56
  %62 = icmp sgt i8 %58, -1
  br i1 %62, label %63, label %68

63:                                               ; preds = %61
  %64 = zext nneg i8 %58 to i64
  %65 = getelementptr inbounds ptr, ptr %9, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !34
  %67 = add i64 %54, 1
  store i64 %67, ptr %6, align 8, !tbaa !48
  br label %80

68:                                               ; preds = %61
  %69 = call i32 @BLI_str_utf8_as_unicode_step(ptr noundef %1, ptr noundef nonnull %6) #8
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %80, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %7, align 8, !tbaa !47
  %73 = call ptr @blf_glyph_search(ptr noundef %72, i32 noundef %69) #8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load ptr, ptr %10, align 8, !tbaa !38
  %77 = zext i32 %69 to i64
  %78 = call i32 @FT_Get_Char_Index(ptr noundef %76, i64 noundef %77) #8
  %79 = call ptr @blf_glyph_add(ptr noundef %0, i32 noundef %78, i32 noundef %69) #8
  br label %80

80:                                               ; preds = %68, %75, %71, %63
  %81 = phi ptr [ %66, %63 ], [ %79, %75 ], [ %73, %71 ], [ %53, %68 ]
  %82 = phi i32 [ %59, %63 ], [ %69, %75 ], [ %69, %71 ], [ -1, %68 ]
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %133, label %84

84:                                               ; preds = %80
  %85 = icmp eq ptr %81, null
  br i1 %85, label %52, label %86, !llvm.loop !95

86:                                               ; preds = %84
  %87 = icmp ne ptr %50, null
  %88 = select i1 %47, i1 %87, i1 false
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %90 = load ptr, ptr %10, align 8, !tbaa !38
  %91 = getelementptr inbounds %struct.GlyphBLF, ptr %50, i64 0, i32 3
  %92 = load i32, ptr %91, align 4, !tbaa !62
  %93 = getelementptr inbounds %struct.GlyphBLF, ptr %81, i64 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !62
  %95 = call i32 @FT_Get_Kerning(ptr noundef %90, i32 noundef %92, i32 noundef %94, i32 noundef %24, ptr noundef nonnull %5) #8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %89
  %98 = load i64, ptr %5, align 8, !tbaa !64
  %99 = trunc i64 %98 to i32
  %100 = ashr i32 %99, 6
  %101 = add nsw i32 %100, %49
  br label %102

102:                                              ; preds = %97, %89, %86
  %103 = phi i32 [ %101, %97 ], [ %49, %89 ], [ %49, %86 ]
  %104 = sitofp i32 %103 to float
  %105 = getelementptr inbounds %struct.GlyphBLF, ptr %81, i64 0, i32 5
  %106 = load float, ptr %105, align 8, !tbaa !96
  %107 = fadd float %106, %104
  %108 = getelementptr inbounds %struct.GlyphBLF, ptr %81, i64 0, i32 4, i32 2
  %109 = load float, ptr %108, align 8, !tbaa !97
  %110 = fadd float %109, 0.000000e+00
  %111 = getelementptr inbounds %struct.GlyphBLF, ptr %81, i64 0, i32 4, i32 3
  %112 = load float, ptr %111, align 4, !tbaa !98
  %113 = fadd float %112, 0.000000e+00
  %114 = load float, ptr %3, align 4, !tbaa !91
  %115 = fcmp ogt float %114, %104
  br i1 %115, label %116, label %117

116:                                              ; preds = %102
  store float %104, ptr %3, align 4, !tbaa !91
  br label %117

117:                                              ; preds = %116, %102
  %118 = load float, ptr %26, align 4, !tbaa !93
  %119 = fcmp olt float %110, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store float %110, ptr %26, align 4, !tbaa !93
  br label %121

121:                                              ; preds = %120, %117
  %122 = load float, ptr %25, align 4, !tbaa !92
  %123 = fcmp ogt float %107, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store float %107, ptr %25, align 4, !tbaa !92
  br label %125

125:                                              ; preds = %124, %121
  %126 = load float, ptr %27, align 4, !tbaa !94
  %127 = fcmp ogt float %113, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store float %113, ptr %27, align 4, !tbaa !94
  br label %129

129:                                              ; preds = %128, %125
  %130 = getelementptr inbounds %struct.GlyphBLF, ptr %81, i64 0, i32 6
  %131 = load i32, ptr %130, align 4, !tbaa !66
  %132 = add nsw i32 %131, %103
  br label %48, !llvm.loop !95

133:                                              ; preds = %52, %80, %56
  %134 = load float, ptr %3, align 4, !tbaa !91
  %135 = load float, ptr %25, align 4, !tbaa !92
  %136 = fcmp ogt float %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %138

138:                                              ; preds = %137, %133
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @blf_font_width_and_height(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.rctf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  %7 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 17
  %8 = load i32, ptr %7, align 8, !tbaa !56
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 2
  %13 = load float, ptr %12, align 8, !tbaa !69
  %14 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !69
  br label %16

16:                                               ; preds = %5, %11
  %17 = phi float [ %13, %11 ], [ 1.000000e+00, %5 ]
  %18 = phi float [ %15, %11 ], [ 1.000000e+00, %5 ]
  call void @blf_font_boundbox(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %6)
  %19 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 1
  %20 = load float, ptr %19, align 4, !tbaa !92
  %21 = load float, ptr %6, align 4, !tbaa !91
  %22 = fsub float %20, %21
  %23 = fmul float %17, %22
  store float %23, ptr %3, align 4, !tbaa !69
  %24 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 3
  %25 = load float, ptr %24, align 4, !tbaa !94
  %26 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 2
  %27 = load float, ptr %26, align 4, !tbaa !93
  %28 = fsub float %25, %27
  %29 = fmul float %18, %28
  store float %29, ptr %4, align 4, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local float @blf_font_width(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.rctf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 17
  %6 = load i32, ptr %5, align 8, !tbaa !56
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 2
  %11 = load float, ptr %10, align 8, !tbaa !69
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi float [ %11, %9 ], [ 1.000000e+00, %3 ]
  call void @blf_font_boundbox(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4)
  %14 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  %15 = load float, ptr %14, align 4, !tbaa !92
  %16 = load float, ptr %4, align 4, !tbaa !91
  %17 = fsub float %15, %16
  %18 = fmul float %13, %17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret float %18
}

; Function Attrs: nounwind uwtable
define dso_local float @blf_font_height(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.rctf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 17
  %6 = load i32, ptr %5, align 8, !tbaa !56
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !69
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi float [ %11, %9 ], [ 1.000000e+00, %3 ]
  call void @blf_font_boundbox(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4)
  %14 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  %15 = load float, ptr %14, align 4, !tbaa !94
  %16 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  %17 = load float, ptr %16, align 4, !tbaa !93
  %18 = fsub float %15, %17
  %19 = fmul float %13, %18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret float %19
}

; Function Attrs: nounwind uwtable
define dso_local float @blf_font_fixed_width(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = tail call ptr @blf_glyph_search(ptr noundef %3, i32 noundef 32) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = tail call i32 @FT_Get_Char_Index(ptr noundef %8, i64 noundef 32) #8
  %10 = tail call ptr @blf_glyph_add(ptr noundef %0, i32 noundef %9, i32 noundef 32) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %6, %1
  %13 = phi ptr [ %4, %1 ], [ %10, %6 ]
  %14 = getelementptr inbounds %struct.GlyphBLF, ptr %13, i64 0, i32 5
  %15 = load float, ptr %14, align 8, !tbaa !96
  br label %16

16:                                               ; preds = %6, %12
  %17 = phi float [ %15, %12 ], [ 0.000000e+00, %6 ]
  ret float %17
}

; Function Attrs: nounwind uwtable
define dso_local void @blf_font_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  store ptr null, ptr %2, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 18
  %4 = tail call ptr @BLI_pophead(ptr noundef nonnull %3) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %1 ]
  tail call void @blf_glyph_cache_free(ptr noundef nonnull %7) #8
  %8 = tail call ptr @BLI_pophead(ptr noundef nonnull %3) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6, !llvm.loop !99

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = tail call i32 @FT_Done_Face(ptr noundef %12) #8
  %14 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !100
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %18(ptr noundef nonnull %15) #8
  br label %19

19:                                               ; preds = %17, %10
  %20 = load ptr, ptr %0, align 8, !tbaa !101
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %23(ptr noundef nonnull %20) #8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %25(ptr noundef nonnull %0) #8
  ret void
}

declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #1

declare void @blf_glyph_cache_free(ptr noundef) local_unnamed_addr #1

declare i32 @FT_Done_Face(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @blf_font_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 368, ptr noundef nonnull @.str.1) #8
  %5 = load ptr, ptr @ft_lib, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.FontBLF, ptr %4, i64 0, i32 22
  %7 = tail call i32 @FT_New_Face(ptr noundef %5, ptr noundef %1, i64 noundef 0, ptr noundef nonnull %6) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %10(ptr noundef %4) #8
  br label %52

11:                                               ; preds = %2
  %12 = load ptr, ptr %6, align 8, !tbaa !38
  %13 = tail call i32 @FT_Select_Charmap(ptr noundef %12, i32 noundef 1970170211) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5)
  %17 = load ptr, ptr %6, align 8, !tbaa !38
  %18 = tail call i32 @FT_Done_Face(ptr noundef %17) #8
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef %4) #8
  br label %52

20:                                               ; preds = %11
  %21 = tail call ptr @blf_dir_metrics_search(ptr noundef %1) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %6, align 8, !tbaa !38
  %25 = tail call i32 @FT_Attach_File(ptr noundef %24, ptr noundef nonnull %21) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !tbaa !34
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.3, ptr noundef %1, i32 noundef %25) #9
  br label %30

30:                                               ; preds = %27, %23
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %31(ptr noundef nonnull %21) #8
  br label %32

32:                                               ; preds = %30, %20
  %33 = tail call ptr @BLI_strdup(ptr noundef %0) #8
  store ptr %33, ptr %4, align 8, !tbaa !101
  %34 = tail call ptr @BLI_strdup(ptr noundef %1) #8
  %35 = getelementptr inbounds %struct.FontBLF, ptr %4, i64 0, i32 1
  store ptr %34, ptr %35, align 8, !tbaa !100
  %36 = getelementptr inbounds %struct.FontBLF, ptr %4, i64 0, i32 2
  store float 1.000000e+00, ptr %36, align 8, !tbaa !69
  %37 = getelementptr inbounds %struct.FontBLF, ptr %4, i64 0, i32 2, i64 1
  store float 1.000000e+00, ptr %37, align 4, !tbaa !69
  %38 = getelementptr inbounds %struct.FontBLF, ptr %4, i64 0, i32 2, i64 2
  store float 1.000000e+00, ptr %38, align 8, !tbaa !69
  %39 = getelementptr inbounds %struct.FontBLF, ptr %4, i64 0, i32 3
  store float 0.000000e+00, ptr %39, align 4, !tbaa !69
  %40 = getelementptr inbounds %struct.FontBLF, ptr %4, i64 0, i32 3, i64 1
  store float 0.000000e+00, ptr %40, align 4, !tbaa !69
  %41 = getelementptr inbounds %struct.FontBLF, ptr %4, i64 0, i32 4
  store float 0.000000e+00, ptr %41, align 8, !tbaa !102
  %42 = getelementptr i8, ptr %4, i64 96
  %43 = getelementptr inbounds %struct.FontBLF, ptr %4, i64 0, i32 17
  store i32 0, ptr %43, align 8, !tbaa !56
  %44 = getelementptr inbounds %struct.FontBLF, ptr %4, i64 0, i32 18
  %45 = getelementptr inbounds %struct.FontBLF, ptr %4, i64 0, i32 5
  store i32 0, ptr %45, align 4, !tbaa !103
  %46 = getelementptr inbounds %struct.FontBLF, ptr %4, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %44, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %42, i8 0, i64 152, i1 false)
  store i32 -1, ptr %46, align 8, !tbaa !104
  %47 = getelementptr inbounds %struct.FontBLF, ptr %4, i64 0, i32 23
  %48 = getelementptr inbounds %struct.FontBLF, ptr %4, i64 0, i32 23, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %47, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %48, i8 0, i64 16, i1 false)
  %49 = load ptr, ptr @ft_lib, align 8, !tbaa !34
  %50 = getelementptr inbounds %struct.FontBLF, ptr %4, i64 0, i32 20
  store ptr %49, ptr %50, align 8, !tbaa !105
  %51 = getelementptr inbounds %struct.FontBLF, ptr %4, i64 0, i32 21
  store ptr @ft_lib_mutex, ptr %51, align 8, !tbaa !106
  br label %52

52:                                               ; preds = %32, %15, %9
  %53 = phi ptr [ null, %9 ], [ null, %15 ], [ %4, %32 ]
  ret ptr %53
}

declare i32 @FT_New_Face(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @FT_Select_Charmap(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @blf_dir_metrics_search(ptr noundef) local_unnamed_addr #1

declare i32 @FT_Attach_File(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @blf_font_attach_from_mem(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.FT_Open_Args_, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  store i32 1, ptr %4, align 8, !tbaa !107
  %5 = getelementptr inbounds %struct.FT_Open_Args_, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !109
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds %struct.FT_Open_Args_, ptr %4, i64 0, i32 2
  store i64 %6, ptr %7, align 8, !tbaa !110
  %8 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = call i32 @FT_Attach_Stream(ptr noundef %9, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  ret void
}

declare i32 @FT_Attach_Stream(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @blf_font_new_from_mem(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 368, ptr noundef nonnull @.str.4) #8
  %6 = load ptr, ptr @ft_lib, align 8, !tbaa !34
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 22
  %9 = tail call i32 @FT_New_Memory_Face(ptr noundef %6, ptr noundef %1, i64 noundef %7, i64 noundef 0, ptr noundef nonnull %8) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %12(ptr noundef %5) #8
  br label %41

13:                                               ; preds = %3
  %14 = load ptr, ptr %8, align 8, !tbaa !38
  %15 = tail call i32 @FT_Select_Charmap(ptr noundef %14, i32 noundef 1970170211) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5)
  %19 = load ptr, ptr %8, align 8, !tbaa !38
  %20 = tail call i32 @FT_Done_Face(ptr noundef %19) #8
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %21(ptr noundef %5) #8
  br label %41

22:                                               ; preds = %13
  %23 = tail call ptr @BLI_strdup(ptr noundef %0) #8
  store ptr %23, ptr %5, align 8, !tbaa !101
  %24 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 1
  store ptr null, ptr %24, align 8, !tbaa !100
  %25 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 2
  store float 1.000000e+00, ptr %25, align 8, !tbaa !69
  %26 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 2, i64 1
  store float 1.000000e+00, ptr %26, align 4, !tbaa !69
  %27 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 2, i64 2
  store float 1.000000e+00, ptr %27, align 8, !tbaa !69
  %28 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 3
  store float 0.000000e+00, ptr %28, align 4, !tbaa !69
  %29 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 3, i64 1
  store float 0.000000e+00, ptr %29, align 4, !tbaa !69
  %30 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 4
  store float 0.000000e+00, ptr %30, align 8, !tbaa !102
  %31 = getelementptr i8, ptr %5, i64 96
  %32 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 17
  store i32 0, ptr %32, align 8, !tbaa !56
  %33 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 18
  %34 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 5
  store i32 0, ptr %34, align 4, !tbaa !103
  %35 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %31, i8 0, i64 152, i1 false)
  store i32 -1, ptr %35, align 8, !tbaa !104
  %36 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 23
  %37 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 23, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %36, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  %38 = load ptr, ptr @ft_lib, align 8, !tbaa !34
  %39 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 20
  store ptr %38, ptr %39, align 8, !tbaa !105
  %40 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 21
  store ptr @ft_lib_mutex, ptr %40, align 8, !tbaa !106
  br label %41

41:                                               ; preds = %22, %17, %11
  %42 = phi ptr [ null, %11 ], [ null, %17 ], [ %5, %22 ]
  ret ptr %42
}

declare i32 @FT_New_Memory_Face(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare float @srgb_to_linearrgb(float noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { cold }

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
!38 = !{!39, !35, i64 304}
!39 = !{!"FontBLF", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 28, !40, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !36, i64 60, !36, i64 76, !36, i64 96, !42, i64 224, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !43, i64 264, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !44, i64 312}
!40 = !{!"float", !36, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!43 = !{!"ListBase", !35, i64 0, !35, i64 8}
!44 = !{!"FontBufInfoBLF", !35, i64 0, !35, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !35, i64 32, !36, i64 40}
!45 = !{!39, !41, i64 244}
!46 = !{!39, !41, i64 240}
!47 = !{!39, !35, i64 280}
!48 = !{!49, !49, i64 0}
!49 = !{!"long", !36, i64 0}
!50 = !{!51, !49, i64 16}
!51 = !{!"FT_FaceRec_", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !35, i64 40, !35, i64 48, !41, i64 56, !35, i64 64, !41, i64 72, !35, i64 80, !52, i64 88, !53, i64 104, !54, i64 136, !54, i64 138, !54, i64 140, !54, i64 142, !54, i64 144, !54, i64 146, !54, i64 148, !54, i64 150, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !55, i64 200, !52, i64 216, !35, i64 232, !35, i64 240}
!52 = !{!"FT_Generic_", !35, i64 0, !35, i64 8}
!53 = !{!"FT_BBox_", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24}
!54 = !{!"short", !36, i64 0}
!55 = !{!"FT_ListRec_", !35, i64 0, !35, i64 8}
!56 = !{!39, !41, i64 256}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!36, !36, i64 0}
!61 = distinct !{!61, !58, !59}
!62 = !{!63, !41, i64 20}
!63 = !{!"GlyphBLF", !35, i64 0, !35, i64 8, !41, i64 16, !41, i64 20, !42, i64 24, !40, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !35, i64 64, !41, i64 72, !41, i64 76, !41, i64 80, !36, i64 84, !40, i64 100, !40, i64 104, !54, i64 108}
!64 = !{!65, !49, i64 0}
!65 = !{!"FT_Vector_", !49, i64 0, !49, i64 8}
!66 = !{!63, !41, i64 44}
!67 = distinct !{!67, !58, !59}
!68 = distinct !{!68, !58, !59}
!69 = !{!40, !40, i64 0}
!70 = !{!44, !35, i64 32}
!71 = distinct !{!71, !58, !59}
!72 = !{!63, !40, i64 100}
!73 = !{!63, !41, i64 76}
!74 = !{!63, !41, i64 80}
!75 = !{!63, !40, i64 104}
!76 = !{!63, !41, i64 72}
!77 = !{!44, !41, i64 16}
!78 = !{!44, !41, i64 20}
!79 = !{!44, !35, i64 0}
!80 = !{!63, !35, i64 64}
!81 = !{!44, !41, i64 24}
!82 = distinct !{!82, !58, !59}
!83 = distinct !{!83, !58, !59}
!84 = !{!44, !35, i64 8}
!85 = distinct !{!85, !58, !59}
!86 = distinct !{!86, !58, !59}
!87 = distinct !{!87, !58, !59}
!88 = distinct !{!88, !58, !59}
!89 = !{!41, !41, i64 0}
!90 = distinct !{!90, !58, !59}
!91 = !{!42, !40, i64 0}
!92 = !{!42, !40, i64 4}
!93 = !{!42, !40, i64 8}
!94 = !{!42, !40, i64 12}
!95 = distinct !{!95, !58, !59}
!96 = !{!63, !40, i64 40}
!97 = !{!63, !40, i64 32}
!98 = !{!63, !40, i64 36}
!99 = distinct !{!99, !58, !59}
!100 = !{!39, !35, i64 8}
!101 = !{!39, !35, i64 0}
!102 = !{!39, !40, i64 40}
!103 = !{!39, !41, i64 44}
!104 = !{!39, !41, i64 248}
!105 = !{!39, !35, i64 288}
!106 = !{!39, !35, i64 296}
!107 = !{!108, !41, i64 0}
!108 = !{!"FT_Open_Args_", !41, i64 0, !35, i64 8, !49, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !41, i64 48, !35, i64 56}
!109 = !{!108, !35, i64 8}
!110 = !{!108, !49, i64 16}
